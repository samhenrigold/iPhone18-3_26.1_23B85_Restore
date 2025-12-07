void *initializeBufferWithCopyOfBuffer for EncoreEngine.EngineEvent(void *a1, void *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) == 0)
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      *a1 = *a2;

LABEL_35:
      swift_storeEnumTagMultiPayload();
      return a1;
    }

    v7 = type metadata accessor for EncoreEngineEvent(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      switch(EnumCaseMultiPayload)
      {
        case 3:
          v15 = a2[1];
          *a1 = *a2;
          a1[1] = v15;

          goto LABEL_34;
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
          v66 = *(v45 - 8);
          v46 = *(v66 + 48);

          v47 = v44;
          if (v46(v44, 1, v45))
          {
            v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A17RequestIdentitiesVSgMd, &_s14SiriKitRuntime0A17RequestIdentitiesVSgMR);
            memcpy(__dst, v44, *(*(v48 - 8) + 64));
          }

          else
          {
            v65 = v45;
            v49 = type metadata accessor for IdentifiedUser();
            v50 = *(v49 - 8);
            v51 = *(v50 + 48);
            v64 = v50;
            if (v51(v47, 1, v49))
            {
              v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
              memcpy(__dst, v47, *(*(v52 - 8) + 64));
            }

            else
            {
              (*(v50 + 16))(__dst, v47, v49);
              (*(v50 + 56))(__dst, 0, 1, v49);
            }

            v53 = *(v65 + 20);
            if (v51(&v47[v53], 1, v49))
            {
              v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
              memcpy(&__dst[v53], &v47[v53], *(*(v54 - 8) + 64));
            }

            else
            {
              (*(v64 + 16))(&__dst[v53], &v47[v53], v49);
              (*(v64 + 56))(&__dst[v53], 0, 1, v49);
            }

            *&__dst[*(v65 + 24)] = *&v47[*(v65 + 24)];
            v55 = *(v66 + 56);

            v55(__dst, 0, 1, v65);
          }

          v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A7RequestV7request_0aB4Flow19ConversationContextV7contextyyc10completiontMd, &_s14SiriKitRuntime0A7RequestV7request_0aB4Flow19ConversationContextV7contextyyc10completiontMR);
          v57 = *(v56 + 48);
          v58 = type metadata accessor for ConversationContext();
          (*(*(v58 - 8) + 16))(a1 + v57, a2 + v57, v58);
          v59 = *(v56 + 64);
          v60 = (a1 + v59);
          v61 = (a2 + v59);
          v62 = v61[1];
          *v60 = *v61;
          v60[1] = v62;

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

          goto LABEL_34;
        case 2:
          v9 = *(a2 + 3);
          *(a1 + 3) = v9;
          (**(v9 - 8))(a1, a2);
          v10 = a2[6];
          a1[5] = a2[5];
          a1[6] = v10;

LABEL_34:
          swift_storeEnumTagMultiPayload();
          goto LABEL_35;
      }
    }

    memcpy(a1, a2, *(*(v7 - 8) + 64));
    goto LABEL_35;
  }

  v6 = *a2;
  *a1 = *a2;
  a1 = (v6 + ((v5 + 16) & ~v5));

  return a1;
}

void destroy for EncoreEngine.EngineEvent(id *a1, uint64_t a2)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
LABEL_29:

    return;
  }

  type metadata accessor for EncoreEngineEvent(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    switch(EnumCaseMultiPayload)
    {
      case 3:
        goto LABEL_29;
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

    goto LABEL_28;
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
      goto LABEL_29;
    }

    v5 = &_s16EncoreXPCService0A5EventC5event_11SiriKitFlow19ConversationContextV7contextyyc10completiontMd;
    v6 = &_s16EncoreXPCService0A5EventC5event_11SiriKitFlow19ConversationContextV7contextyyc10completiontMR;
LABEL_28:
    v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v5, v6) + 48);
    v20 = type metadata accessor for ConversationContext();
    (*(*(v20 - 8) + 8))(a1 + v19, v20);
    goto LABEL_29;
  }

  v7 = *a1;
}

void *initializeWithCopy for EncoreEngine.EngineEvent(void *a1, void *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v5 = type metadata accessor for EncoreEngineEvent(0);
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
          v23 = a2[1];
          *a1 = *a2;
          a1[1] = v23;
          v24 = type metadata accessor for SiriRequest(0);
          v25 = v24[5];
          v26 = type metadata accessor for Input();
          v27 = *(*(v26 - 8) + 16);

          v27(a1 + v25, a2 + v25, v26);
          *(a1 + v24[6]) = *(a2 + v24[6]);
          *(a1 + v24[7]) = *(a2 + v24[7]);
          v28 = v24[8];
          v29 = a1 + v28;
          v30 = (a2 + v28);
          v31 = *(a2 + v28 + 8);

          if (v31 >> 60 == 15)
          {
            *v29 = *v30;
          }

          else
          {
            v40 = *v30;
            outlined copy of Data._Representation(*v30, v31);
            *v29 = v40;
            *(v29 + 1) = v31;
          }

          *(a1 + v24[9]) = *(a2 + v24[9]);
          *(a1 + v24[10]) = *(a2 + v24[10]);
          *(a1 + v24[11]) = *(a2 + v24[11]);
          v41 = v24[12];
          __dst = a1 + v41;
          v42 = a2 + v41;
          v43 = type metadata accessor for SiriRequestIdentities(0);
          v64 = *(v43 - 8);
          v44 = *(v64 + 48);

          v45 = v42;
          if (v44(v42, 1, v43))
          {
            v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A17RequestIdentitiesVSgMd, &_s14SiriKitRuntime0A17RequestIdentitiesVSgMR);
            memcpy(__dst, v42, *(*(v46 - 8) + 64));
          }

          else
          {
            v63 = v43;
            v47 = type metadata accessor for IdentifiedUser();
            v48 = *(v47 - 8);
            v49 = *(v48 + 48);
            v62 = v48;
            if (v49(v45, 1, v47))
            {
              v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
              memcpy(__dst, v45, *(*(v50 - 8) + 64));
            }

            else
            {
              (*(v48 + 16))(__dst, v45, v47);
              (*(v48 + 56))(__dst, 0, 1, v47);
            }

            v51 = *(v63 + 20);
            if (v49(&v45[v51], 1, v47))
            {
              v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
              memcpy(&__dst[v51], &v45[v51], *(*(v52 - 8) + 64));
            }

            else
            {
              (*(v62 + 16))(&__dst[v51], &v45[v51], v47);
              (*(v62 + 56))(&__dst[v51], 0, 1, v47);
            }

            *&__dst[*(v63 + 24)] = *&v45[*(v63 + 24)];
            v53 = *(v64 + 56);

            v53(__dst, 0, 1, v63);
          }

          v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A7RequestV7request_0aB4Flow19ConversationContextV7contextyyc10completiontMd, &_s14SiriKitRuntime0A7RequestV7request_0aB4Flow19ConversationContextV7contextyyc10completiontMR);
          v55 = *(v54 + 48);
          v56 = type metadata accessor for ConversationContext();
          (*(*(v56 - 8) + 16))(a1 + v55, a2 + v55, v56);
          v57 = *(v54 + 64);
          v58 = (a1 + v57);
          v59 = (a2 + v57);
          v60 = v59[1];
          *v58 = *v59;
          v58[1] = v60;

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

          v32 = type metadata accessor for RequestContinuation(0);
          *(a1 + *(v32 + 20)) = *(a2 + *(v32 + 20));

          v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime19RequestContinuationV12continuation_0aB4Flow19ConversationContextV7contextyyc10completiontMd, &_s14SiriKitRuntime19RequestContinuationV12continuation_0aB4Flow19ConversationContextV7contextyyc10completiontMR);
          v34 = *(v33 + 48);
          v35 = type metadata accessor for ConversationContext();
          (*(*(v35 - 8) + 16))(a1 + v34, a2 + v34, v35);
          v36 = *(v33 + 64);
          v37 = (a1 + v36);
          v38 = (a2 + v36);
          v39 = v38[1];
          *v37 = *v38;
          v37[1] = v39;

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
          v14 = *a2;
          *a1 = *a2;
          v15 = v14;
          v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16EncoreXPCService0A5EventC5event_11SiriKitFlow19ConversationContextV7contextyyc10completiontMd, &_s16EncoreXPCService0A5EventC5event_11SiriKitFlow19ConversationContextV7contextyyc10completiontMR);
          v17 = *(v16 + 48);
          v18 = type metadata accessor for ConversationContext();
          (*(*(v18 - 8) + 16))(a1 + v17, a2 + v17, v18);
          v19 = *(v16 + 64);
          v20 = (a1 + v19);
          v21 = (a2 + v19);
          v22 = v21[1];
          *v20 = *v21;
          v20[1] = v22;

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
          goto LABEL_33;
      }
    }

    memcpy(a1, a2, *(*(v5 - 8) + 64));
    goto LABEL_33;
  }

  *a1 = *a2;

LABEL_33:
  swift_storeEnumTagMultiPayload();
  return a1;
}

char *assignWithCopy for EncoreEngine.EngineEvent(char *a1, char *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    outlined destroy of EncoreEngine.EngineEvent(a1, type metadata accessor for EncoreEngine.EngineEvent);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      *a1 = *a2;

LABEL_34:
      swift_storeEnumTagMultiPayload();
      return a1;
    }

    v5 = type metadata accessor for EncoreEngineEvent(0);
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
          v23 = type metadata accessor for SiriRequest(0);
          v24 = v23[5];
          v25 = type metadata accessor for Input();
          v26 = *(*(v25 - 8) + 16);

          v26(&a1[v24], &a2[v24], v25);
          *&a1[v23[6]] = *&a2[v23[6]];
          *&a1[v23[7]] = *&a2[v23[7]];
          v27 = v23[8];
          v28 = &a1[v27];
          v29 = &a2[v27];
          v30 = *&a2[v27 + 8];

          if (v30 >> 60 == 15)
          {
            *v28 = *v29;
          }

          else
          {
            v39 = *v29;
            outlined copy of Data._Representation(*v29, v30);
            *v28 = v39;
            *(v28 + 1) = v30;
          }

          *&a1[v23[9]] = *&a2[v23[9]];
          *&a1[v23[10]] = *&a2[v23[10]];
          *&a1[v23[11]] = *&a2[v23[11]];
          v40 = v23[12];
          __dst = &a1[v40];
          v41 = &a2[v40];
          v42 = type metadata accessor for SiriRequestIdentities(0);
          v63 = *(v42 - 8);
          v43 = *(v63 + 48);

          v44 = v41;
          if (v43(v41, 1, v42))
          {
            v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A17RequestIdentitiesVSgMd, &_s14SiriKitRuntime0A17RequestIdentitiesVSgMR);
            memcpy(__dst, v41, *(*(v45 - 8) + 64));
          }

          else
          {
            v62 = v42;
            v46 = type metadata accessor for IdentifiedUser();
            v47 = *(v46 - 8);
            v48 = *(v47 + 48);
            v61 = v47;
            if (v48(v44, 1, v46))
            {
              v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
              memcpy(__dst, v44, *(*(v49 - 8) + 64));
            }

            else
            {
              (*(v47 + 16))(__dst, v44, v46);
              (*(v47 + 56))(__dst, 0, 1, v46);
            }

            v50 = *(v62 + 20);
            if (v48(&v44[v50], 1, v46))
            {
              v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
              memcpy(&__dst[v50], &v44[v50], *(*(v51 - 8) + 64));
            }

            else
            {
              (*(v61 + 16))(&__dst[v50], &v44[v50], v46);
              (*(v61 + 56))(&__dst[v50], 0, 1, v46);
            }

            *&__dst[*(v62 + 24)] = *&v44[*(v62 + 24)];
            v52 = *(v63 + 56);

            v52(__dst, 0, 1, v62);
          }

          v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A7RequestV7request_0aB4Flow19ConversationContextV7contextyyc10completiontMd, &_s14SiriKitRuntime0A7RequestV7request_0aB4Flow19ConversationContextV7contextyyc10completiontMR);
          v54 = *(v53 + 48);
          v55 = type metadata accessor for ConversationContext();
          (*(*(v55 - 8) + 16))(&a1[v54], &a2[v54], v55);
          v56 = *(v53 + 64);
          v57 = &a1[v56];
          v58 = &a2[v56];
          v59 = *(v58 + 1);
          *v57 = *v58;
          *(v57 + 1) = v59;

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

          v31 = type metadata accessor for RequestContinuation(0);
          *&a1[*(v31 + 20)] = *&a2[*(v31 + 20)];

          v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime19RequestContinuationV12continuation_0aB4Flow19ConversationContextV7contextyyc10completiontMd, &_s14SiriKitRuntime19RequestContinuationV12continuation_0aB4Flow19ConversationContextV7contextyyc10completiontMR);
          v33 = *(v32 + 48);
          v34 = type metadata accessor for ConversationContext();
          (*(*(v34 - 8) + 16))(&a1[v33], &a2[v33], v34);
          v35 = *(v32 + 64);
          v36 = &a1[v35];
          v37 = &a2[v35];
          v38 = *(v37 + 1);
          *v36 = *v37;
          *(v36 + 1) = v38;

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
          v14 = *a2;
          *a1 = *a2;
          v15 = v14;
          v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16EncoreXPCService0A5EventC5event_11SiriKitFlow19ConversationContextV7contextyyc10completiontMd, &_s16EncoreXPCService0A5EventC5event_11SiriKitFlow19ConversationContextV7contextyyc10completiontMR);
          v17 = *(v16 + 48);
          v18 = type metadata accessor for ConversationContext();
          (*(*(v18 - 8) + 16))(&a1[v17], &a2[v17], v18);
          v19 = *(v16 + 64);
          v20 = &a1[v19];
          v21 = &a2[v19];
          v22 = *(v21 + 1);
          *v20 = *v21;
          *(v20 + 1) = v22;

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
          goto LABEL_34;
      }
    }

    memcpy(a1, a2, *(*(v5 - 8) + 64));
    goto LABEL_34;
  }

  return a1;
}

_OWORD *initializeWithTake for EncoreEngine.EngineEvent(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  if (!swift_getEnumCaseMultiPayload())
  {
    v8 = type metadata accessor for EncoreEngineEvent(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 5:
        v22 = type metadata accessor for UserInputResult(0);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v23 = type metadata accessor for Input();
          (*(*(v23 - 8) + 32))(a1, a2, v23);
          swift_storeEnumTagMultiPayload();
        }

        else
        {
          memcpy(a1, a2, *(*(v22 - 8) + 64));
        }

        v24 = type metadata accessor for RequestContinuation(0);
        *(a1 + *(v24 + 20)) = *(a2 + *(v24 + 20));
        v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime19RequestContinuationV12continuation_0aB4Flow19ConversationContextV7contextyyc10completiontMd, &_s14SiriKitRuntime19RequestContinuationV12continuation_0aB4Flow19ConversationContextV7contextyyc10completiontMR);
        v26 = *(v25 + 48);
        v27 = type metadata accessor for ConversationContext();
        (*(*(v27 - 8) + 32))(a1 + v26, a2 + v26, v27);
        *(a1 + *(v25 + 64)) = *(a2 + *(v25 + 64));
        break;
      case 4:
        *a1 = *a2;
        v13 = type metadata accessor for SiriRequest(0);
        v14 = v13[5];
        v15 = type metadata accessor for Input();
        (*(*(v15 - 8) + 32))(a1 + v14, a2 + v14, v15);
        *(a1 + v13[6]) = *(a2 + v13[6]);
        *(a1 + v13[7]) = *(a2 + v13[7]);
        *(a1 + v13[8]) = *(a2 + v13[8]);
        *(a1 + v13[9]) = *(a2 + v13[9]);
        *(a1 + v13[10]) = *(a2 + v13[10]);
        *(a1 + v13[11]) = *(a2 + v13[11]);
        v16 = v13[12];
        v17 = a1 + v16;
        v18 = a2 + v16;
        v19 = type metadata accessor for SiriRequestIdentities(0);
        v20 = *(v19 - 8);
        if ((*(v20 + 48))(v18, 1, v19))
        {
          v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A17RequestIdentitiesVSgMd, &_s14SiriKitRuntime0A17RequestIdentitiesVSgMR);
          memcpy(v17, v18, *(*(v21 - 8) + 64));
        }

        else
        {
          v28 = type metadata accessor for IdentifiedUser();
          v29 = *(v28 - 8);
          v37 = *(v29 + 48);
          v36 = v29;
          if (v37(v18, 1, v28))
          {
            v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
            memcpy(v17, v18, *(*(v30 - 8) + 64));
          }

          else
          {
            (*(v29 + 32))(v17, v18, v28);
            (*(v29 + 56))(v17, 0, 1, v28);
          }

          v31 = *(v19 + 20);
          if (v37(&v18[v31], 1, v28))
          {
            v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
            memcpy(&v17[v31], &v18[v31], *(*(v32 - 8) + 64));
          }

          else
          {
            (*(v36 + 32))(&v17[v31], &v18[v31], v28);
            (*(v36 + 56))(&v17[v31], 0, 1, v28);
          }

          *&v17[*(v19 + 24)] = *&v18[*(v19 + 24)];
          (*(v20 + 56))(v17, 0, 1, v19);
        }

        v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A7RequestV7request_0aB4Flow19ConversationContextV7contextyyc10completiontMd, &_s14SiriKitRuntime0A7RequestV7request_0aB4Flow19ConversationContextV7contextyyc10completiontMR);
        v34 = *(v33 + 48);
        v35 = type metadata accessor for ConversationContext();
        (*(*(v35 - 8) + 32))(a1 + v34, a2 + v34, v35);
        *(a1 + *(v33 + 64)) = *(a2 + *(v33 + 64));
        break;
      case 1:
        *a1 = *a2;
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16EncoreXPCService0A5EventC5event_11SiriKitFlow19ConversationContextV7contextyyc10completiontMd, &_s16EncoreXPCService0A5EventC5event_11SiriKitFlow19ConversationContextV7contextyyc10completiontMR);
        v11 = *(v10 + 48);
        v12 = type metadata accessor for ConversationContext();
        (*(*(v12 - 8) + 32))(a1 + v11, a2 + v11, v12);
        *(a1 + *(v10 + 64)) = *(a2 + *(v10 + 64));
        break;
      default:
        memcpy(a1, a2, *(*(v8 - 8) + 64));
LABEL_25:
        swift_storeEnumTagMultiPayload();
        return a1;
    }

    swift_storeEnumTagMultiPayload();
    goto LABEL_25;
  }

  v6 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v6);
}

_OWORD *assignWithTake for EncoreEngine.EngineEvent(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  outlined destroy of EncoreEngine.EngineEvent(a1, type metadata accessor for EncoreEngine.EngineEvent);
  if (!swift_getEnumCaseMultiPayload())
  {
    v8 = type metadata accessor for EncoreEngineEvent(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 5:
        v22 = type metadata accessor for UserInputResult(0);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v23 = type metadata accessor for Input();
          (*(*(v23 - 8) + 32))(a1, a2, v23);
          swift_storeEnumTagMultiPayload();
        }

        else
        {
          memcpy(a1, a2, *(*(v22 - 8) + 64));
        }

        v24 = type metadata accessor for RequestContinuation(0);
        *(a1 + *(v24 + 20)) = *(a2 + *(v24 + 20));
        v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime19RequestContinuationV12continuation_0aB4Flow19ConversationContextV7contextyyc10completiontMd, &_s14SiriKitRuntime19RequestContinuationV12continuation_0aB4Flow19ConversationContextV7contextyyc10completiontMR);
        v26 = *(v25 + 48);
        v27 = type metadata accessor for ConversationContext();
        (*(*(v27 - 8) + 32))(a1 + v26, a2 + v26, v27);
        *(a1 + *(v25 + 64)) = *(a2 + *(v25 + 64));
        break;
      case 4:
        *a1 = *a2;
        v13 = type metadata accessor for SiriRequest(0);
        v14 = v13[5];
        v15 = type metadata accessor for Input();
        (*(*(v15 - 8) + 32))(a1 + v14, a2 + v14, v15);
        *(a1 + v13[6]) = *(a2 + v13[6]);
        *(a1 + v13[7]) = *(a2 + v13[7]);
        *(a1 + v13[8]) = *(a2 + v13[8]);
        *(a1 + v13[9]) = *(a2 + v13[9]);
        *(a1 + v13[10]) = *(a2 + v13[10]);
        *(a1 + v13[11]) = *(a2 + v13[11]);
        v16 = v13[12];
        v17 = a1 + v16;
        v18 = a2 + v16;
        v19 = type metadata accessor for SiriRequestIdentities(0);
        v20 = *(v19 - 8);
        if ((*(v20 + 48))(v18, 1, v19))
        {
          v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A17RequestIdentitiesVSgMd, &_s14SiriKitRuntime0A17RequestIdentitiesVSgMR);
          memcpy(v17, v18, *(*(v21 - 8) + 64));
        }

        else
        {
          v28 = type metadata accessor for IdentifiedUser();
          v29 = *(v28 - 8);
          v37 = *(v29 + 48);
          v36 = v29;
          if (v37(v18, 1, v28))
          {
            v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
            memcpy(v17, v18, *(*(v30 - 8) + 64));
          }

          else
          {
            (*(v29 + 32))(v17, v18, v28);
            (*(v29 + 56))(v17, 0, 1, v28);
          }

          v31 = *(v19 + 20);
          if (v37(&v18[v31], 1, v28))
          {
            v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
            memcpy(&v17[v31], &v18[v31], *(*(v32 - 8) + 64));
          }

          else
          {
            (*(v36 + 32))(&v17[v31], &v18[v31], v28);
            (*(v36 + 56))(&v17[v31], 0, 1, v28);
          }

          *&v17[*(v19 + 24)] = *&v18[*(v19 + 24)];
          (*(v20 + 56))(v17, 0, 1, v19);
        }

        v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A7RequestV7request_0aB4Flow19ConversationContextV7contextyyc10completiontMd, &_s14SiriKitRuntime0A7RequestV7request_0aB4Flow19ConversationContextV7contextyyc10completiontMR);
        v34 = *(v33 + 48);
        v35 = type metadata accessor for ConversationContext();
        (*(*(v35 - 8) + 32))(a1 + v34, a2 + v34, v35);
        *(a1 + *(v33 + 64)) = *(a2 + *(v33 + 64));
        break;
      case 1:
        *a1 = *a2;
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16EncoreXPCService0A5EventC5event_11SiriKitFlow19ConversationContextV7contextyyc10completiontMd, &_s16EncoreXPCService0A5EventC5event_11SiriKitFlow19ConversationContextV7contextyyc10completiontMR);
        v11 = *(v10 + 48);
        v12 = type metadata accessor for ConversationContext();
        (*(*(v12 - 8) + 32))(a1 + v11, a2 + v11, v12);
        *(a1 + *(v10 + 64)) = *(a2 + *(v10 + 64));
        break;
      default:
        memcpy(a1, a2, *(*(v8 - 8) + 64));
LABEL_26:
        swift_storeEnumTagMultiPayload();
        return a1;
    }

    swift_storeEnumTagMultiPayload();
    goto LABEL_26;
  }

  v6 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v6);
}

uint64_t type metadata completion function for EncoreEngine.EngineEvent(uint64_t a1)
{
  result = type metadata accessor for EncoreEngineEvent(319);
  if (v2 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

char *initializeBufferWithCopyOfBuffer for EncoreEngine.ActionOutcome(char *a1, char **a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v9 = *a2;
    *a1 = *a2;
    a1 = &v9[(v5 + 16) & ~v5];

    return a1;
  }

  v6 = *(a3 - 8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v15 = a2[1];
      *a1 = *a2;
      *(a1 + 1) = v15;
      v16 = a2[2];
      v17 = a2[3];
      *(a1 + 2) = v16;
      *(a1 + 3) = v17;

      goto LABEL_15;
    }

    if (EnumCaseMultiPayload == 3)
    {
      v10 = *a2;
      v11 = v10;
      *a1 = v10;
      goto LABEL_15;
    }
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      v14 = type metadata accessor for FlowUnhandledReason();
      (*(*(v14 - 8) + 16))(a1, a2, v14);
      goto LABEL_15;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v8 = type metadata accessor for PluginAction();
      (*(*(v8 - 8) + 16))(a1, a2, v8);
LABEL_15:
      swift_storeEnumTagMultiPayload();
      return a1;
    }
  }

  v12 = *(v6 + 64);

  return memcpy(a1, a2, v12);
}

void destroy for EncoreEngine.ActionOutcome(void **a1, uint64_t a2)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
    }

    else if (EnumCaseMultiPayload == 3)
    {
      v5 = *a1;
    }
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        return;
      }

      v4 = type metadata accessor for PluginAction();
    }

    else
    {
      v4 = type metadata accessor for FlowUnhandledReason();
    }

    v6 = *(*(v4 - 8) + 8);

    v6(a1, v4);
  }
}

void *initializeWithCopy for EncoreEngine.ActionOutcome(void *a1, void *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v13 = a2[1];
      *a1 = *a2;
      a1[1] = v13;
      v14 = a2[2];
      v15 = a2[3];
      a1[2] = v14;
      a1[3] = v15;

      goto LABEL_13;
    }

    if (EnumCaseMultiPayload == 3)
    {
      v8 = *a2;
      v9 = v8;
      *a1 = v8;
      goto LABEL_13;
    }
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      v12 = type metadata accessor for FlowUnhandledReason();
      (*(*(v12 - 8) + 16))(a1, a2, v12);
      goto LABEL_13;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v7 = type metadata accessor for PluginAction();
      (*(*(v7 - 8) + 16))(a1, a2, v7);
LABEL_13:
      swift_storeEnumTagMultiPayload();
      return a1;
    }
  }

  v10 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v10);
}

void *assignWithCopy for EncoreEngine.ActionOutcome(void *a1, void *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  outlined destroy of EncoreEngine.EngineEvent(a1, type metadata accessor for EncoreEngine.ActionOutcome);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      *a1 = *a2;
      a1[1] = a2[1];
      a1[2] = a2[2];
      a1[3] = a2[3];

      goto LABEL_14;
    }

    if (EnumCaseMultiPayload == 3)
    {
      v8 = *a2;
      v9 = v8;
      *a1 = v8;
      goto LABEL_14;
    }
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      v12 = type metadata accessor for FlowUnhandledReason();
      (*(*(v12 - 8) + 16))(a1, a2, v12);
      goto LABEL_14;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v7 = type metadata accessor for PluginAction();
      (*(*(v7 - 8) + 16))(a1, a2, v7);
LABEL_14:
      swift_storeEnumTagMultiPayload();
      return a1;
    }
  }

  v10 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v10);
}

void *initializeWithTake for EncoreEngine.ActionOutcome(void *a1, const void *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v8 = type metadata accessor for PluginAction();
    (*(*(v8 - 8) + 32))(a1, a2, v8);
    goto LABEL_5;
  }

  if (!EnumCaseMultiPayload)
  {
    v7 = type metadata accessor for FlowUnhandledReason();
    (*(*(v7 - 8) + 32))(a1, a2, v7);
LABEL_5:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v10 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v10);
}

void *assignWithTake for EncoreEngine.ActionOutcome(void *a1, const void *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  outlined destroy of EncoreEngine.EngineEvent(a1, type metadata accessor for EncoreEngine.ActionOutcome);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v8 = type metadata accessor for PluginAction();
    (*(*(v8 - 8) + 32))(a1, a2, v8);
    goto LABEL_6;
  }

  if (!EnumCaseMultiPayload)
  {
    v7 = type metadata accessor for FlowUnhandledReason();
    (*(*(v7 - 8) + 32))(a1, a2, v7);
LABEL_6:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v10 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v10);
}

uint64_t type metadata completion function for EncoreEngine.ActionOutcome(uint64_t a1)
{
  result = type metadata accessor for FlowUnhandledReason();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for PluginAction();
    if (v3 <= 0x3F)
    {
      swift_initEnumMetadataMultiPayload();
      return 0;
    }
  }

  return result;
}

uint64_t type metadata completion function for EventQueue(uint64_t a1)
{
  result = type metadata accessor for AsyncStream();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for AsyncStream.Continuation();
    if (v3 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t partial apply for closure #6 in EncoreEngine.handleExternal(event:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #6 in EncoreEngine.handleExternal(event:)(a1, v4, v5, v7, v6);
}

uint64_t partial apply for closure #4 in EncoreEngine.handleExternal(event:)(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for SiriRequest(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(type metadata accessor for RequestContinuation(0) - 8);
  v9 = (v7 + *(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = v1 + v7;
  v13 = *(v1 + v7);
  v14 = *(v12 + 8);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #4 in EncoreEngine.handleExternal(event:)(a1, v10, v11, v1 + v6, v13, v14, v1 + v9);
}

uint64_t partial apply for closure #3 in EncoreEngine.handleExternal(event:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #3 in EncoreEngine.handleExternal(event:)(a1, v4, v5, v7, v6);
}

uint64_t partial apply for closure #2 in EncoreEngine.handleExternal(event:)(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy14SiriKitRuntime19RequestContinuationVs5Error_pGMd, &_ss6ResultOy14SiriKitRuntime19RequestContinuationVs5Error_pGMR) - 8);
  v5 = (*(v4 + 80) + 88) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[9];
  v9 = v1[10];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #2 in EncoreEngine.handleExternal(event:)(a1, v6, v7, (v1 + 4), v8, v9, v1 + v5);
}

uint64_t partial apply for closure #1 in EncoreEngine.handleExternal(event:)(uint64_t a1)
{
  v4 = *(type metadata accessor for RequestContinuation(0) - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in EncoreEngine.handleExternal(event:)(a1, v6, v7, v8, v9, v10, v1 + v5);
}

uint64_t partial apply for closure #1 in EncoreEngine.push(parentNode:flow:insideEncoreEnvironment:)@<X0>(uint64_t *a1@<X8>)
{
  result = EncoreEngine.push(parentNode:flowAgent:)(*(v1 + 24), *(v1 + 32));
  *a1 = result;
  return result;
}

uint64_t partial apply for closure #1 in EncoreEngine.action(mode:starting:context:completion:)(uint64_t a1)
{
  v4 = *(type metadata accessor for ConversationContext() - 8);
  v5 = (*(v4 + 80) + 80) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[9];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in EncoreEngine.action(mode:starting:context:completion:)(a1, v6, v7, (v1 + 4), v8, v1 + v5, v9);
}

uint64_t partial apply for closure #1 in closure #1 in EncoreEngine.action(mode:starting:context:completion:)(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return closure #1 in closure #1 in EncoreEngine.action(mode:starting:context:completion:)(a1, v5, v4);
}

uint64_t partial apply for specialized closure #1 in static EncoreEnvironment.withTaskLocalEnvironment<A>(flowContext:_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return specialized closure #1 in static EncoreEnvironment.withTaskLocalEnvironment<A>(flowContext:_:)(a1, v4, v5, v6);
}

uint64_t partial apply for closure #1 in closure #5 in EncoreEngine.handleExternal(event:)(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for EncoreEngine.ActionOutcome(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy14SiriKitRuntime018ConversationCommitA0Os5Error_pGMd, &_ss6ResultOy14SiriKitRuntime018ConversationCommitA0Os5Error_pGMR) - 8);
  v9 = (v7 + *(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = v1 + v7;
  v13 = *(v1 + v7);
  v14 = *(v12 + 8);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return closure #1 in closure #5 in EncoreEngine.handleExternal(event:)(a1, v10, v11, v1 + v6, v13, v14, v1 + v9);
}

uint64_t partial apply for closure #2 in EncoreEngine.action(mode:starting:context:completion:)(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  swift_beginAccess();
  *(v3 + 16) = 1;
  return v4(a1);
}

uint64_t objectdestroy_73Tm()
{
  v1 = type metadata accessor for ConversationContext();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 80) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t lazy protocol witness table accessor for type FlowActor and conformance FlowActor(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t static EncoreEnvironment.withTaskLocalEnvironment<A>(flowContext:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = one-time initialization token for $conversationContext;

  if (v4 != -1)
  {
    v5 = swift_once();
  }

  MEMORY[0x1EEE9AC00](v5);

  TaskLocal.withValue<A>(_:operation:file:line:)();
}

uint64_t static EncoreEnvironment.withTaskLocalEnvironment<A>(flowContext:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  return MEMORY[0x1EEE6DFA0](static EncoreEnvironment.withTaskLocalEnvironment<A>(flowContext:_:), 0, 0);
}

uint64_t static EncoreEnvironment.withTaskLocalEnvironment<A>(flowContext:_:)()
{
  v1 = *(v0 + 32);
  v2 = one-time initialization token for $conversationContext;

  if (v2 != -1)
  {
    swift_once();
    v1 = *(v0 + 32);
  }

  v3 = *(v0 + 56);
  *(v0 + 16) = v1;
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  v5 = *(v0 + 40);
  *(v4 + 16) = v3;
  *(v4 + 24) = v1;
  *(v4 + 32) = v5;

  v6 = swift_task_alloc();
  *(v0 + 72) = v6;
  *v6 = v0;
  v6[1] = static EncoreEnvironment.withTaskLocalEnvironment<A>(flowContext:_:);
  v7 = *(v0 + 24);

  return MEMORY[0x1EEE6DE98](v7, v0 + 16, &async function pointer to partial apply for closure #1 in static EncoreEnvironment.withTaskLocalEnvironment<A>(flowContext:_:), v4, 0, 0, 0xD000000000000026, 0x80000001DCA82BF0);
}

{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = static EncoreEnvironment.withTaskLocalEnvironment<A>(flowContext:_:);
  }

  else
  {
    v2 = static EncoreEnvironment.withTaskLocalEnvironment<A>(flowContext:_:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t one-time initialization function for $conversationContext()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss9TaskLocalCy14SiriKitRuntime25EncoreConversationContextVSgGMd, &_ss9TaskLocalCy14SiriKitRuntime25EncoreConversationContextVSgGMR);
  swift_allocObject();
  result = TaskLocal.init(wrappedValue:)();
  static EncoreEnvironment.$conversationContext = result;
  return result;
}

uint64_t *EncoreEnvironment.$conversationContext.unsafeMutableAddressor()
{
  if (one-time initialization token for $conversationContext != -1)
  {
    swift_once();
  }

  return &static EncoreEnvironment.$conversationContext;
}

uint64_t static EncoreEnvironment.$conversationContext.getter()
{
  if (one-time initialization token for $conversationContext != -1)
  {
    swift_once();
  }
}

uint64_t static EncoreEnvironment.conversationContext.getter()
{
  if (one-time initialization token for $conversationContext != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  return v1;
}

uint64_t closure #1 in static EncoreEnvironment.withTaskLocalEnvironment<A>(flowContext:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for SiriEnvironment();
  ActingFlowAgent.environment.getter();
  static SiriEnvironment.withTaskLocalEnvironment<A>(_:_:)();
}

uint64_t closure #1 in static EncoreEnvironment.withTaskLocalEnvironment<A>(flowContext:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](closure #1 in static EncoreEnvironment.withTaskLocalEnvironment<A>(flowContext:_:), 0, 0);
}

uint64_t closure #1 in static EncoreEnvironment.withTaskLocalEnvironment<A>(flowContext:_:)()
{
  type metadata accessor for SiriEnvironment();
  v1 = ActingFlowAgent.environment.getter();
  v0[7] = v1;
  v2 = swift_task_alloc();
  v0[8] = v2;
  *v2 = v0;
  v2[1] = closure #1 in static EncoreEnvironment.withTaskLocalEnvironment<A>(flowContext:_:);
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[4];
  v6 = v0[2];

  return MEMORY[0x1EEE40DC8](v6, v1, v5, v3, v4);
}

{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](AceServiceInvokerImpl.submitToRemote<A>(_:_:setRefId:), 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t partial apply for closure #1 in static EncoreEnvironment.withTaskLocalEnvironment<A>(flowContext:_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return closure #1 in static EncoreEnvironment.withTaskLocalEnvironment<A>(flowContext:_:)(a1, v5, v7, v6, v4);
}

uint64_t EndpointInfoProvider.__allocating_init(endpointInfo:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

void *EndpointInfoProvider.endpointInfo.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

Swift::String_optional __swiftcall EndpointInfoProvider.getIdentifier()()
{
  v0 = EndpointInfoProvider.getIdentifier()(&selRef_identifier);
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

Swift::String_optional __swiftcall EndpointInfoProvider.getMediaRouteIdentifier()()
{
  v0 = EndpointInfoProvider.getIdentifier()(&selRef_mediaRouteIdentifier);
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

id ExecuteNLOnServerMessage.toSARDExecuteNLOnServer(rcState:requestType:refId:)(uint64_t a1, uint64_t a2, char *a3, void (**a4)(char *, char *, char *))
{
  v8 = [objc_allocWithZone(MEMORY[0x1E69C7978]) init];
  v10 = v8;
  specialized ExecuteNLOnServerMessage.populateExecuteNLOnServer<A>(executeNLOnServer:rcState:requestType:refId:)(&v10, a1, a2, a3, a4);
  return v8;
}

void specialized ExecuteNLOnServerMessage.populateExecuteNLOnServer<A>(executeNLOnServer:rcState:requestType:refId:)(unint64_t *a1, uint64_t a2, int64_t a3, char *a4, void (**a5)(char *, char *, char *))
{
  v6 = v5;
  v179 = a4;
  v180 = a5;
  v173 = a3;
  *&v167 = a2;
  v183 = 0;
  v8 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
  v168 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v181 = &v163 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v177 = type metadata accessor for UserID();
  v171 = *(v177 - 8);
  MEMORY[0x1EEE9AC00](v177);
  v175 = &v163 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v176 = &v163 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v169 = &v163 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDV3key_So15AFSpeechPackageC5valuetSgMd, &_s16SiriMessageTypes6UserIDV3key_So15AFSpeechPackageC5valuetSgMR);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v163 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v174 = &v163 - v19;
  v20 = type metadata accessor for RequestType();
  v172 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v166 = &v163 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v163 = &v163 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v170 = &v163 - v25;
  v26 = type metadata accessor for UUID();
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v163 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *a1;
  UUID.init()();
  v31 = UUID.uuidString.getter();
  v33 = v32;
  (*(v27 + 8))(v29, v26);
  v34 = MEMORY[0x1E12A1410](v31, v33);
  v35 = v6;

  [v30 setAceId_];

  v36 = MEMORY[0x1E12A1410](v179, v180);
  [v30 setRefId_];

  v37 = ResultCandidateRequestMessageBase.resultCandidateId.getter();
  v38 = MEMORY[0x1E12A1410](v37);

  [v30 setResultCandidateId_];

  v39 = ExecuteNLOnServerMessageBase.delegatedUserDialogActs.getter();
  v40 = *(v39 + 16);
  v182 = v6;
  v178 = v17;
  v165 = v30;
  if (!v40)
  {

LABEL_8:
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SARDAceDelegatedUserDialogAct, 0x1E69C7968);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v30 setAceDelegatedUserDialogActList_];

    v49 = v172;
    v50 = v172[2];
    v51 = v170;
    v50(v170, v173, v20);
    v52 = (v49[11])(v51, v20);
    v53 = v177;
    if (v52 == *MEMORY[0x1E69D0548])
    {
      v54 = MEMORY[0x1E69E7CC0];
      v163 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So14SASRecognitionCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      v164 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So14SASRecognitionCTt0g5Tf4g_n(v54);
      v55 = *(ExecuteNLOnServerMessage.sharedUserIdToSpeechPackage.getter() + 16);

      if (v55)
      {
        v56 = ExecuteNLOnServerMessage.sharedUserIdToSpeechPackage.getter();
        v58 = 0;
        v59 = *(v56 + 64);
        v166 = (v56 + 64);
        v168 = v56;
        v60 = 1 << *(v56 + 32);
        v61 = -1;
        if (v60 < 64)
        {
          v61 = ~(-1 << v60);
        }

        v30 = v61 & v59;
        v62 = (v60 + 63) >> 6;
        v179 = (v171 + 16);
        v180 = (v171 + 32);
        v172 = (v171 + 8);
        *&v57 = 136315394;
        v167 = v57;
        v63 = v176;
        v173 = v62;
        v64 = v53;
        v65 = v17;
        while (1)
        {
          if (!v30)
          {
            if (v62 <= (v58 + 1))
            {
              v79 = (v58 + 1);
            }

            else
            {
              v79 = v62;
            }

            v80 = (v79 - 1);
            while (1)
            {
              v78 = (v58 + 1);
              if (__OFADD__(v58, 1))
              {
                break;
              }

              if (v78 >= v62)
              {
                v90 = v64;
                v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDV3key_So15AFSpeechPackageC5valuetMd, &_s16SiriMessageTypes6UserIDV3key_So15AFSpeechPackageC5valuetMR);
                (*(*(v106 - 8) + 56))(v65, 1, 1, v106);
                v30 = 0;
                goto LABEL_25;
              }

              v30 = *&v166[8 * v78];
              ++v58;
              if (v30)
              {
                goto LABEL_24;
              }
            }

            __break(1u);
LABEL_84:
            v161.super.isa = 0;
            goto LABEL_85;
          }

          v78 = v58;
LABEL_24:
          v81 = __clz(__rbit64(v30));
          v30 &= v30 - 1;
          v82 = v81 | (v78 << 6);
          v83 = v168;
          v84 = v169;
          v85 = v171;
          (*(v171 + 16))(v169, *(v168 + 48) + *(v171 + 72) * v82, v64);
          v86 = *(*(v83 + 56) + 8 * v82);
          v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDV3key_So15AFSpeechPackageC5valuetMd, &_s16SiriMessageTypes6UserIDV3key_So15AFSpeechPackageC5valuetMR);
          v88 = *(v87 + 48);
          v89 = *(v85 + 32);
          v65 = v178;
          v90 = v64;
          v89(v178, v84);
          *(v65 + v88) = v86;
          (*(*(v87 - 8) + 56))(v65, 0, 1, v87);
          v91 = v86;
          v80 = v78;
          v63 = v176;
          v35 = v182;
LABEL_25:
          v92 = v174;
          outlined init with take of (key: UserID, value: AFSpeechPackage)?(v65, v174);
          v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDV3key_So15AFSpeechPackageC5valuetMd, &_s16SiriMessageTypes6UserIDV3key_So15AFSpeechPackageC5valuetMR);
          v94 = (*(*(v93 - 8) + 48))(v92, 1, v93);
          v95 = v175;
          if (v94 == 1)
          {

            v30 = v165;
            goto LABEL_63;
          }

          v53 = *(v92 + *(v93 + 48));
          v64 = v90;
          (*v180)(v63, v92, v90);
          v96 = [v53 recognition];
          v181 = v80;
          if (v96)
          {
            v97 = v96;
            v98 = [v53 rawRecognition];
            if (v98)
            {
              v107 = v98;
              v108 = v35;
              UserID.sharedUserId.getter();
              v109 = String.lowercased()();

              v110 = [v97 aceRecognition];
              if (v110)
              {
                v111 = v110;
                v112 = v163;
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v185[0] = v112;
                specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v111, v109._countAndFlagsBits, v109._object, isUniquelyReferenced_nonNull_native);

                v163 = v185[0];
                v114 = v164;
              }

              else
              {
                v115 = v163;
                v116 = specialized __RawDictionaryStorage.find<A>(_:)(v109._countAndFlagsBits, v109._object);
                v118 = v117;

                v114 = v164;
                if (v118)
                {
                  v119 = swift_isUniquelyReferenced_nonNull_native();
                  v185[0] = v115;
                  if (!v119)
                  {
                    specialized _NativeDictionary.copy()();
                    v114 = v164;
                    v115 = v185[0];
                  }

                  v163 = v115;
                  specialized _NativeDictionary._delete(at:)(v116, v115);
                }
              }

              UserID.sharedUserId.getter();
              v120 = String.lowercased()();

              v121 = [v107 aceRecognition];
              if (v121)
              {
                v122 = v121;
                v123 = swift_isUniquelyReferenced_nonNull_native();
                v185[0] = v114;
                specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v122, v120._countAndFlagsBits, v120._object, v123);

                v164 = v185[0];
                goto LABEL_47;
              }

              v124 = specialized __RawDictionaryStorage.find<A>(_:)(v120._countAndFlagsBits, v120._object);
              v126 = v125;

              if (v126)
              {
                v127 = swift_isUniquelyReferenced_nonNull_native();
                v185[0] = v114;
                v63 = v176;
                v35 = v108;
                if ((v127 & 1) == 0)
                {
                  specialized _NativeDictionary.copy()();
                  v114 = v185[0];
                }

                v164 = v114;
                specialized _NativeDictionary._delete(at:)(v124, v114);
              }

              else
              {

LABEL_47:
                v63 = v176;
                v35 = v108;
              }

              v128 = v181;
              v64 = v177;
              (*v172)(v63, v177);
              v58 = v128;
              goto LABEL_14;
            }
          }

          if (one-time initialization token for conversationBridge != -1)
          {
            swift_once();
          }

          v99 = type metadata accessor for Logger();
          __swift_project_value_buffer(v99, static Logger.conversationBridge);
          (*v179)(v95, v63, v90);
          v100 = v35;
          v101 = Logger.logObject.getter();
          v102 = v63;
          v103 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v101, v103))
          {
            v66 = swift_slowAlloc();
            v67 = swift_slowAlloc();
            v185[0] = v67;
            *v66 = v167;
            lazy protocol witness table accessor for type UserID and conformance UserID();
            v68 = dispatch thunk of CustomStringConvertible.description.getter();
            v69 = v95;
            v71 = v70;
            v170 = v53;
            v53 = v172;
            v72 = *v172;
            (*v172)(v69, v177);
            v73 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v68, v71, v185);

            *(v66 + 4) = v73;
            *(v66 + 12) = 2080;
            v74 = RequestMessageBase.requestId.getter();
            v76 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v74, v75, v185);

            *(v66 + 14) = v76;
            _os_log_impl(&dword_1DC659000, v101, v103, "Since MultiUserAFSpeechPackage does not contain a pre-itn and post-itn recognitions for user : %s, hence SARDExecuteNLOnServer will not contain them either for requestId : %s", v66, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x1E12A2F50](v67, -1, -1);
            v77 = v66;
            v64 = v177;
            MEMORY[0x1E12A2F50](v77, -1, -1);

            v63 = v176;
            v72(v176, v64);
            v58 = v181;
            v35 = v182;
          }

          else
          {

            v104 = v95;
            v105 = *v172;
            (*v172)(v104, v64);
            v105(v102, v64);
            v58 = v181;
            v63 = v102;
          }

LABEL_14:
          v65 = v178;
          v62 = v173;
        }
      }

      if (one-time initialization token for conversationBridge != -1)
      {
LABEL_90:
        swift_once();
      }

      v144 = type metadata accessor for Logger();
      __swift_project_value_buffer(v144, static Logger.conversationBridge);
      v145 = Logger.logObject.getter();
      v146 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v145, v146))
      {
        v147 = swift_slowAlloc();
        *v147 = 0;
        _os_log_impl(&dword_1DC659000, v145, v146, "SharedUserIdToSpeechPackage property on ENOSMessage is empty for a speech request. Sending empty dictionary to server.", v147, 2u);
        MEMORY[0x1E12A2F50](v147, -1, -1);
      }

LABEL_63:
      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SASRecognition, 0x1E69C79F0);
      v148 = Dictionary._bridgeToObjectiveC()().super.isa;

      [v30 setRecognitionSausageMap_];

      v149 = Dictionary._bridgeToObjectiveC()().super.isa;

      [v30 setPreITNRecognitionSausageMap_];

      v150 = MEMORY[0x1E69C8118];
LABEL_73:
      [v30 setRequestType_];
      return;
    }

    if (v52 == *MEMORY[0x1E69D0530])
    {
LABEL_50:
      v129 = (*(*v167 + 888))();
      if (v130)
      {
        v131 = MEMORY[0x1E12A1410](v129);
      }

      else
      {
        v131 = 0;
      }

      [v30 setUtterance_];

      v150 = MEMORY[0x1E69C8120];
      goto LABEL_73;
    }

    v132 = v166;
    if (v52 != *MEMORY[0x1E69D0510])
    {
      if (v52 == *MEMORY[0x1E69D0508])
      {
        v151 = [v30 setRequestType_];
        v152 = (*(*v167 + 912))(v151);
        if (v153 != 1)
        {
          v65 = v153;
          v53 = v152;
          if (!v154)
          {
            goto LABEL_84;
          }

          v161.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

LABEL_85:
          [v30 setRequestExecutionParameters_];

          if (v65)
          {

            v162 = MEMORY[0x1E12A1410](v53, v65);
            swift_bridgeObjectRelease_n();
          }

          else
          {
            v162 = 0;
          }

          [v30 setDirectAction_];

          return;
        }

        if (one-time initialization token for conversationBridge != -1)
        {
          swift_once();
        }

        v155 = type metadata accessor for Logger();
        __swift_project_value_buffer(v155, static Logger.conversationBridge);
        v132 = v163;
        v50(v163, v173, v20);
        v134 = Logger.logObject.getter();
        v135 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v134, v135))
        {
          v136 = swift_slowAlloc();
          v156 = v20;
          v138 = swift_slowAlloc();
          v185[0] = v138;
          *v136 = 136315138;
          v157 = RequestType.rawValue.getter();
          v159 = v158;
          (v49[1])(v132, v156);
          v160 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v157, v159, v185);

          *(v136 + 4) = v160;
          v143 = "Could not cast ResultCandidateState to DirectActionResultCandidateState even though requestType: %s";
          goto LABEL_58;
        }

LABEL_70:

        (v49[1])(v132, v20);
        return;
      }

      if (v52 != *MEMORY[0x1E69D0538] && v52 != *MEMORY[0x1E69D0528])
      {
        if (v52 == *MEMORY[0x1E69D0558])
        {
          goto LABEL_50;
        }

        v132 = v166;
        if (v52 != *MEMORY[0x1E69D0540] && v52 != *MEMORY[0x1E69D0560] && v52 != *MEMORY[0x1E69D0518])
        {
          (v49[1])(v51, v20);
        }
      }
    }

    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v133 = type metadata accessor for Logger();
    __swift_project_value_buffer(v133, static Logger.conversationBridge);
    v50(v132, v173, v20);
    v134 = Logger.logObject.getter();
    v135 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v134, v135))
    {
      v136 = swift_slowAlloc();
      v137 = v20;
      v138 = swift_slowAlloc();
      v185[0] = v138;
      *v136 = 136315138;
      v139 = RequestType.rawValue.getter();
      v141 = v140;
      (v49[1])(v132, v137);
      v142 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v139, v141, v185);

      *(v136 + 4) = v142;
      v143 = "Should not have received requestType: %s for server fallback";
LABEL_58:
      _os_log_impl(&dword_1DC659000, v134, v135, v143, v136, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v138);
      MEMORY[0x1E12A2F50](v138, -1, -1);
      MEMORY[0x1E12A2F50](v136, -1, -1);

      return;
    }

    goto LABEL_70;
  }

  v164 = v20;
  v185[0] = MEMORY[0x1E69E7CC0];
  v180 = v40;
  specialized ContiguousArray.reserveCapacity(_:)();
  v30 = 0;
  v179 = (v39 + ((*(v168 + 80) + 32) & ~*(v168 + 80)));
  v41 = (v168 + 8);
  v42 = v168;
  while (1)
  {
    if (v30 >= *(v39 + 16))
    {
      __break(1u);
      goto LABEL_90;
    }

    v43 = v39;
    v44 = v42;
    v45 = v181;
    (*(v42 + 16))(v181, &v179[*(v42 + 72) * v30], v8);
    v46 = v8;
    v47 = v183;
    closure #1 in ExecuteNLOnServerMessage.populateExecuteNLOnServer<A>(executeNLOnServer:rcState:requestType:refId:)(&v184);
    v183 = v47;
    if (v47)
    {
      break;
    }

    ++v30;
    (*v41)(v45, v46);
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    v8 = v46;
    v42 = v44;
    v39 = v43;
    if (v180 == v30)
    {

      v30 = v165;
      v35 = v182;
      v17 = v178;
      v20 = v164;
      goto LABEL_8;
    }
  }

  (*v41)(v45, v46);

  __break(1u);
}

id ExecuteNLOnServerMessage.toSARDMUXExecuteNLOnServer(rcState:requestType:refId:)(uint64_t a1, int64_t a2, char *a3, void (**a4)(char *, char *, char *))
{
  v8 = type metadata accessor for SelectedUserAttributes();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes22SelectedUserAttributesVSgMd, &_s16SiriMessageTypes22SelectedUserAttributesVSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v24 - v13;
  v25 = [objc_allocWithZone(MEMORY[0x1E69C7988]) init];
  v15 = v25;
  specialized ExecuteNLOnServerMessage.populateExecuteNLOnServer<A>(executeNLOnServer:rcState:requestType:refId:)(&v25, a1, a2, a3, a4);
  [v15 setMuxStateRollback_];
  v16 = ExecuteNLOnServerMessage.mostRecentVoiceIdScoreCard.getter();
  if (v16)
  {
    v17 = v16;
    v18 = AFVoiceIdScoreCard.toSAConfidenceScores()();
  }

  else
  {
    v18 = 0;
  }

  [v15 setVoiceIDConfidenceScores_];

  [v15 setMarkedForHandOff_];
  v19 = UserID.sharedUserId.getter();
  v20 = MEMORY[0x1E12A1410](v19);

  [v15 setSelectedUserId_];

  (*(*a1 + 792))();
  if ((*(v9 + 48))(v14, 1, v8))
  {
    outlined destroy of SelectedUserAttributes?(v14);
    v21 = 0;
  }

  else
  {
    (*(v9 + 16))(v11, v14, v8);
    outlined destroy of SelectedUserAttributes?(v14);
    SelectedUserAttributes.classification.getter();
    (*(v9 + 8))(v11, v8);
    countAndFlagsBits = AFUserIdentityClassfication.toAceUserIdentityClassification()()._countAndFlagsBits;
    v21 = MEMORY[0x1E12A1410](countAndFlagsBits);
  }

  [v15 setSelectedUserIdentityClassification_];

  return v15;
}

void closure #1 in ExecuteNLOnServerMessage.populateExecuteNLOnServer<A>(executeNLOnServer:rcState:requestType:refId:)(void *a1@<X8>)
{
  v18 = a1;
  v17 = type metadata accessor for Siri_Nlu_External_RewriteMessage();
  v1 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Google_Protobuf_StringValue();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_allocWithZone(MEMORY[0x1E69C7968]) init];
  [v8 setAsrHypothesisIndex_];
  v9 = Siri_Nlu_External_DelegatedUserDialogAct.externalParserID.getter();
  v10 = MEMORY[0x1E12A1410](v9);

  [v8 setExternalParserId_];

  Siri_Nlu_External_DelegatedUserDialogAct.rewrittenUtterance.getter();
  v11 = Google_Protobuf_StringValue.value.getter();
  v13 = v12;
  (*(v5 + 8))(v7, v4);
  v14 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v14 = v11 & 0xFFFFFFFFFFFFLL;
  }

  if (v14)
  {
    v15 = MEMORY[0x1E12A1410](v11, v13);
  }

  else
  {
    v15 = 0;
  }

  [v8 setRewrittenUtterance_];

  if (Siri_Nlu_External_DelegatedUserDialogAct.hasRewrite.getter())
  {
    Siri_Nlu_External_DelegatedUserDialogAct.rewrite.getter();
    v16 = specialized ExecuteNLOnServerMessage.convert(rewriteMessage:)();
    (*(v1 + 8))(v3, v17);
  }

  else
  {
    v16 = 0;
  }

  [v8 setRewriteMessage_];

  *v18 = v8;
}

uint64_t outlined init with take of (key: UserID, value: AFSpeechPackage)?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDV3key_So15AFSpeechPackageC5valuetSgMd, &_s16SiriMessageTypes6UserIDV3key_So15AFSpeechPackageC5valuetSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id specialized ExecuteNLOnServerMessage.convert(rewriteMessage:)()
{
  v0 = type metadata accessor for Siri_Nlu_External_RewriteMessage.RewriteType();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = Siri_Nlu_External_RewriteMessage.rewrittenUtterance.getter();
  v6 = v5;
  v7 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v7 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (v7)
  {
    v8 = v4;
    v9 = [objc_allocWithZone(MEMORY[0x1E69C7970]) init];
    v10 = MEMORY[0x1E12A1410](v8, v6);

    [v9 setRewrittenUtterance_];

    Siri_Nlu_External_RewriteMessage.rewriteType.getter();
    v11 = (*(v1 + 88))(v3, v0);
    if (v11 == *MEMORY[0x1E69D0AC0])
    {
      [v9 setRewriteType_];
    }

    else if (v11 == *MEMORY[0x1E69D0AC8])
    {
      [v9 setRewriteType_];
    }

    else
    {
      [v9 setRewriteType_];
      (*(v1 + 8))(v3, v0);
    }
  }

  else
  {

    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Logger.conversationBridge);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1DC659000, v13, v14, "Recevied empty rewrittenUtterance inside RewriteMessage", v15, 2u);
      MEMORY[0x1E12A2F50](v15, -1, -1);
    }

    return 0;
  }

  return v9;
}

uint64_t ExecuteOnRemoteCmds.cmdType.getter(char a1)
{
  switch(a1)
  {
    case 1:
      v1 = &lazy cache variable for type metadata for SACFProvideContext;
      v2 = 0x1E69C7748;
      break;
    case 2:
      v1 = &lazy cache variable for type metadata for SAInitiateHandoffOnCompanion;
      v2 = 0x1E69C7828;
      break;
    case 3:
      v1 = &lazy cache variable for type metadata for SAPhoneClientCoordinationPhoneCall;
      v2 = 0x1E69C7948;
      break;
    case 4:
      v1 = &lazy cache variable for type metadata for SASendCommands;
      v2 = 0x1E69C7A48;
      break;
    case 5:
      v1 = &lazy cache variable for type metadata for SAUIAddViews;
      v2 = 0x1E69C7AF8;
      break;
    case 6:
      v1 = &lazy cache variable for type metadata for SAUISayIt;
      v2 = 0x1E69C7BB0;
      break;
    case 7:
      v1 = &lazy cache variable for type metadata for SAUpdateReadingState;
      v2 = 0x1E69C7BF8;
      break;
    case 8:
      v1 = &lazy cache variable for type metadata for SALogStringEvent;
      v2 = 0x1E69C78C8;
      break;
    case 9:
      v1 = &lazy cache variable for type metadata for SARDRemoteExecutionContextUpdate;
      v2 = 0x1E69C7998;
      break;
    case 10:
      v1 = &lazy cache variable for type metadata for SAUIShowRequestHandlingStatus;
      v2 = 0x1E69C7BB8;
      break;
    case 11:
      v1 = &lazy cache variable for type metadata for SAUIUpdateVisualResponseSnippet;
      v2 = 0x1E69C7BE8;
      break;
    case 12:
      v1 = &lazy cache variable for type metadata for SAUIHideSiriOverlay;
      v2 = 0x1E69C7B68;
      break;
    case 13:
      v1 = &lazy cache variable for type metadata for SAUISnippetDisplayConfigurationRequest;
      v2 = 0x1E69C7BC8;
      break;
    default:
      v1 = &lazy cache variable for type metadata for SAAceView;
      v2 = 0x1E69C7708;
      break;
  }

  return type metadata accessor for OS_dispatch_queue(0, v1, v2);
}

id ExecuteOnRemoteCmds.isSameType(_:)(void *a1, char a2)
{
  switch(a2)
  {
    case 1:
      v3 = &lazy cache variable for type metadata for SACFProvideContext;
      v4 = 0x1E69C7748;
      break;
    case 2:
      v3 = &lazy cache variable for type metadata for SAInitiateHandoffOnCompanion;
      v4 = 0x1E69C7828;
      break;
    case 3:
      v3 = &lazy cache variable for type metadata for SAPhoneClientCoordinationPhoneCall;
      v4 = 0x1E69C7948;
      break;
    case 4:
      v3 = &lazy cache variable for type metadata for SASendCommands;
      v4 = 0x1E69C7A48;
      break;
    case 5:
      v3 = &lazy cache variable for type metadata for SAUIAddViews;
      v4 = 0x1E69C7AF8;
      break;
    case 6:
      v3 = &lazy cache variable for type metadata for SAUISayIt;
      v4 = 0x1E69C7BB0;
      break;
    case 7:
      v3 = &lazy cache variable for type metadata for SAUpdateReadingState;
      v4 = 0x1E69C7BF8;
      break;
    case 8:
      v3 = &lazy cache variable for type metadata for SALogStringEvent;
      v4 = 0x1E69C78C8;
      break;
    case 9:
      v3 = &lazy cache variable for type metadata for SARDRemoteExecutionContextUpdate;
      v4 = 0x1E69C7998;
      break;
    case 10:
      v3 = &lazy cache variable for type metadata for SAUIShowRequestHandlingStatus;
      v4 = 0x1E69C7BB8;
      break;
    case 11:
      v3 = &lazy cache variable for type metadata for SAUIUpdateVisualResponseSnippet;
      v4 = 0x1E69C7BE8;
      break;
    case 12:
      v3 = &lazy cache variable for type metadata for SAUIHideSiriOverlay;
      v4 = 0x1E69C7B68;
      break;
    case 13:
      v3 = &lazy cache variable for type metadata for SAUISnippetDisplayConfigurationRequest;
      v4 = 0x1E69C7BC8;
      break;
    default:
      v3 = &lazy cache variable for type metadata for SAAceView;
      v4 = 0x1E69C7708;
      break;
  }

  type metadata accessor for OS_dispatch_queue(0, v3, v4);
  return [a1 isKindOfClass_];
}

unint64_t ExecuteOnRemoteCmds.rawValue.getter(char a1)
{
  result = 0x6569566563414153;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      result = 0xD00000000000001CLL;
      break;
    case 3:
      result = 0xD000000000000022;
      break;
    case 4:
      result = 0x6F43646E65534153;
      break;
    case 5:
      result = 0x5664644149554153;
      break;
    case 6:
      result = 0x4979615349554153;
      break;
    case 7:
      result = 0xD000000000000014;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    case 9:
      result = 0xD000000000000020;
      break;
    case 10:
      result = 0xD00000000000001DLL;
      break;
    case 11:
      result = 0xD00000000000001FLL;
      break;
    case 12:
      result = 0xD000000000000013;
      break;
    case 13:
      result = 0xD000000000000026;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ExecuteOnRemoteCmds(char *a1, char *a2)
{
  v2 = *a2;
  v3 = ExecuteOnRemoteCmds.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == ExecuteOnRemoteCmds.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ExecuteOnRemoteCmds()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  ExecuteOnRemoteCmds.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ExecuteOnRemoteCmds(uint64_t a1)
{
  ExecuteOnRemoteCmds.rawValue.getter(*v1);
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ExecuteOnRemoteCmds(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  ExecuteOnRemoteCmds.rawValue.getter(v2);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance ExecuteOnRemoteCmds@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized ExecuteOnRemoteCmds.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance ExecuteOnRemoteCmds@<X0>(unint64_t *a1@<X8>)
{
  result = ExecuteOnRemoteCmds.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t specialized ExecuteOnRemoteCmds.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ExecuteOnRemoteCmds.init(rawValue:), v2);

  if (v3 >= 0xE)
  {
    return 14;
  }

  else
  {
    return v3;
  }
}

unint64_t lazy protocol witness table accessor for type ExecuteOnRemoteCmds and conformance ExecuteOnRemoteCmds()
{
  result = lazy protocol witness table cache variable for type ExecuteOnRemoteCmds and conformance ExecuteOnRemoteCmds;
  if (!lazy protocol witness table cache variable for type ExecuteOnRemoteCmds and conformance ExecuteOnRemoteCmds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExecuteOnRemoteCmds and conformance ExecuteOnRemoteCmds);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [ExecuteOnRemoteCmds] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [ExecuteOnRemoteCmds] and conformance [A];
  if (!lazy protocol witness table cache variable for type [ExecuteOnRemoteCmds] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay14SiriKitRuntime19ExecuteOnRemoteCmdsOGMd, &_sSay14SiriKitRuntime19ExecuteOnRemoteCmdsOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [ExecuteOnRemoteCmds] and conformance [A]);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ExecuteOnRemoteCmds(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ExecuteOnRemoteCmds(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t static ServiceBridgeDelegate.defaultSubmitExternalActivationRequest(withRequestInfo:serviceHelper:completion:)(uint64_t a1, id a2, uint64_t a3, uint64_t a4)
{
  result = [a2 respondsToSelector_];
  if (result)
  {
    v10[4] = a3;
    v10[5] = a4;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 1107296256;
    v10[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
    v10[3] = &block_descriptor_10;
    v9 = _Block_copy(v10);
    swift_unknownObjectRetain();

    [a2 submitExternalActivationRequest:a1 completion:v9];
    _Block_release(v9);
    return swift_unknownObjectRelease();
  }

  return result;
}

void static ServiceBridgeDelegate.prepareForAudioHandoffDefault(_:completion:)(void *a1, uint64_t a2, uint64_t a3)
{
  v5[4] = a2;
  v5[5] = a3;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 1107296256;
  v5[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool) -> ();
  v5[3] = &block_descriptor_3_0;
  v4 = _Block_copy(v5);

  [a1 prepareForAudioHandoffWithCompletion_];
  _Block_release(v4);
}

void static ServiceBridgeDelegate.prepareForAudioHandoffFailedDefault(_:completion:)(void *a1, uint64_t a2, uint64_t a3)
{
  v5[4] = a2;
  v5[5] = a3;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 1107296256;
  v5[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v5[3] = &block_descriptor_6_0;
  v4 = _Block_copy(v5);

  [a1 prepareForAudioHandoffFailedWithCompletion_];
  _Block_release(v4);
}

uint64_t static ExecutionContextUpdate.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  static ExecutionContextUpdate.supportsSecureCoding = a1;
  return result;
}

void *ExecutionContextUpdate.provideContextCommand.getter()
{
  v1 = *(v0 + OBJC_IVAR___SKRExecutionContextUpdate_provideContextCommand);
  v2 = v1;
  return v1;
}

void *ExecutionContextUpdate.nativeFlowContextCommand.getter()
{
  v1 = *(v0 + OBJC_IVAR___SKRExecutionContextUpdate_nativeFlowContextCommand);
  v2 = v1;
  return v1;
}

uint64_t ExecutionContextUpdate.contextUpdateScope.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___SKRExecutionContextUpdate_contextUpdateScope;
  updated = type metadata accessor for ContextUpdateScope();
  v5 = *(*(updated - 8) + 16);

  return v5(a1, v1 + v3, updated);
}

uint64_t ExecutionContextUpdate.restoreSessionForRequestId.getter()
{
  v1 = *(v0 + OBJC_IVAR___SKRExecutionContextUpdate_restoreSessionForRequestId);

  return v1;
}

id ExecutionContextUpdate.init(provideContextCommand:nativeFlowContextCommand:nluSystemDialogActs:nluActiveTasks:nluCompletedTasks:undoDirectInvocation:rrEntities:pommesContext:contextUpdateScope:restoreSessionForRequestId:executedOnRemoteDevice:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned __int8 a12)
{
  v38 = a12;
  v36 = a11;
  v37 = a8;
  v35 = a10;
  v33 = a7;
  v34 = a9;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v33 - v21;
  outlined init with copy of ReferenceResolutionClientProtocol?(a8, &v33 - v21, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  specialized static ExecutionContextUpdate.synchronizePromptContexts(pommesContext:nativeFlowContextCommand:)(v22, a2);
  *&v12[OBJC_IVAR___SKRExecutionContextUpdate_provideContextCommand] = a1;
  *&v12[OBJC_IVAR___SKRExecutionContextUpdate_nativeFlowContextCommand] = a2;
  *&v12[OBJC_IVAR___SKRExecutionContextUpdate_nluSystemDialogActs] = a3;
  *&v12[OBJC_IVAR___SKRExecutionContextUpdate_nluActiveTasks] = a4;
  *&v12[OBJC_IVAR___SKRExecutionContextUpdate_nluCompletedTasks] = a5;
  outlined init with copy of ReferenceResolutionClientProtocol?(a6, &v12[OBJC_IVAR___SKRExecutionContextUpdate_undoDirectInvocation], &_s11SiriKitFlow5ParseO16DirectInvocationVSgMd, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMR);
  *&v12[OBJC_IVAR___SKRExecutionContextUpdate_rrEntities] = v33;
  outlined init with copy of ReferenceResolutionClientProtocol?(v22, &v12[OBJC_IVAR___SKRExecutionContextUpdate_pommesContext], &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  v23 = OBJC_IVAR___SKRExecutionContextUpdate_contextUpdateScope;
  updated = type metadata accessor for ContextUpdateScope();
  v25 = *(updated - 8);
  v26 = &v12[v23];
  v27 = v34;
  (*(v25 + 16))(v26, v34, updated);
  v28 = &v12[OBJC_IVAR___SKRExecutionContextUpdate_restoreSessionForRequestId];
  v29 = v36;
  *v28 = v35;
  v28[1] = v29;
  v12[OBJC_IVAR___SKRExecutionContextUpdate_executedOnRemoteDevice] = v38;
  v30 = type metadata accessor for ExecutionContextUpdate(0);
  v39.receiver = v12;
  v39.super_class = v30;
  v31 = objc_msgSendSuper2(&v39, sel_init);
  (*(v25 + 8))(v27, updated);
  outlined destroy of ReferenceResolutionClientProtocol?(v37, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(a6, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMd, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v22, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  return v31;
}

unint64_t ExecutionContextUpdate.CodingKeys.rawValue.getter(char a1)
{
  result = 0x697469746E457272;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0xD000000000000018;
      break;
    case 3:
      return result;
    case 4:
      result = 0x6154657669746361;
      break;
    case 5:
      result = 0x6574656C706D6F63;
      break;
    case 6:
      result = 0x6F4373656D6D6F70;
      break;
    case 7:
      result = 0xD000000000000013;
      break;
    case 8:
      result = 0x7669746341756C6ELL;
      break;
    case 9:
      result = 0xD000000000000011;
      break;
    case 10:
      result = 0xD000000000000014;
      break;
    case 11:
      result = 0xD000000000000012;
      break;
    case 12:
      v3 = 10;
      goto LABEL_6;
    case 13:
      result = 0xD000000000000016;
      break;
    default:
      v3 = 5;
LABEL_6:
      result = v3 | 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ExecutionContextUpdate.CodingKeys(char *a1, char *a2)
{
  v2 = *a2;
  v3 = ExecutionContextUpdate.CodingKeys.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == ExecutionContextUpdate.CodingKeys.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ExecutionContextUpdate.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  ExecutionContextUpdate.CodingKeys.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ExecutionContextUpdate.CodingKeys(uint64_t a1)
{
  ExecutionContextUpdate.CodingKeys.rawValue.getter(*v1);
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ExecutionContextUpdate.CodingKeys(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  ExecutionContextUpdate.CodingKeys.rawValue.getter(v2);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance ExecutionContextUpdate.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized ExecutionContextUpdate.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance ExecutionContextUpdate.CodingKeys@<X0>(unint64_t *a1@<X8>)
{
  result = ExecutionContextUpdate.CodingKeys.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

id ExecutionContextUpdate.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ExecutionContextUpdate.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ExecutionContextUpdate(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void type metadata completion function for ExecutionContextUpdate(uint64_t a1)
{
  type metadata accessor for Parse.DirectInvocation?(319, &lazy cache variable for type metadata for Parse.DirectInvocation?, MEMORY[0x1E69D0140]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Parse.DirectInvocation?(319, &lazy cache variable for type metadata for PommesContext?, MEMORY[0x1E69CE670]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for ContextUpdateScope();
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void type metadata accessor for Parse.DirectInvocation?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ExecutionContextUpdate.CodingKeys and conformance ExecutionContextUpdate.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ExecutionContextUpdate.CodingKeys and conformance ExecutionContextUpdate.CodingKeys;
  if (!lazy protocol witness table cache variable for type ExecutionContextUpdate.CodingKeys and conformance ExecutionContextUpdate.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExecutionContextUpdate.CodingKeys and conformance ExecutionContextUpdate.CodingKeys);
  }

  return result;
}

unint64_t specialized ExecutionContextUpdate.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ExecutionContextUpdate.CodingKeys.init(rawValue:), v2);

  if (v3 >= 0xE)
  {
    return 14;
  }

  else
  {
    return v3;
  }
}

unint64_t lazy protocol witness table accessor for type [NLContextUpdateSerializationOptions] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [NLContextUpdateSerializationOptions] and conformance [A];
  if (!lazy protocol witness table cache variable for type [NLContextUpdateSerializationOptions] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay11SiriKitFlow35NLContextUpdateSerializationOptionsVGMd, &_sSay11SiriKitFlow35NLContextUpdateSerializationOptionsVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [NLContextUpdateSerializationOptions] and conformance [A]);
  }

  return result;
}

id ExecutionInputInfo.__allocating_init(parseId:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v17 - v5;
  v7 = objc_allocWithZone(v2);
  static ConversionUtils.convertProtoToUuid(protoUuid:)();
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) == 1)
  {
    outlined destroy of UUID?(v6);
    v10 = 0;
    v11 = 0;
  }

  else
  {
    v10 = UUID.uuidString.getter();
    v11 = v12;
    (*(v9 + 8))(v6, v8);
  }

  v13 = &v7[OBJC_IVAR____TtC14SiriKitRuntime18ExecutionInputInfo_parseId];
  *v13 = v10;
  v13[1] = v11;
  v7[OBJC_IVAR____TtC14SiriKitRuntime18ExecutionInputInfo_executePommes] = 0;
  v17.receiver = v7;
  v17.super_class = v2;
  v14 = objc_msgSendSuper2(&v17, sel_init);
  v15 = type metadata accessor for Siri_Nlu_External_UUID();
  (*(*(v15 - 8) + 8))(a1, v15);
  return v14;
}

id ExecutionInputInfo.__allocating_init(executePommes:)(char a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = &v3[OBJC_IVAR____TtC14SiriKitRuntime18ExecutionInputInfo_parseId];
  *v4 = 0;
  v4[1] = 0;
  v3[OBJC_IVAR____TtC14SiriKitRuntime18ExecutionInputInfo_executePommes] = a1;
  v6.receiver = v3;
  v6.super_class = v1;
  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t static ExecutionInputInfo.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  static ExecutionInputInfo.supportsSecureCoding = a1;
  return result;
}

uint64_t ExecutionInputInfo.parseId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime18ExecutionInputInfo_parseId);

  return v1;
}

unint64_t ExecutionInputInfo.description.getter()
{
  _StringGuts.grow(_:)(48);

  if (*(v0 + OBJC_IVAR____TtC14SiriKitRuntime18ExecutionInputInfo_parseId + 8))
  {
    v1 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime18ExecutionInputInfo_parseId);
    v2 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime18ExecutionInputInfo_parseId + 8);
  }

  else
  {
    v2 = 0xE300000000000000;
    v1 = 7104878;
  }

  MEMORY[0x1E12A1580](v1, v2);

  MEMORY[0x1E12A1580](0xD000000000000010, 0x80000001DCA82DC0);
  if (*(v0 + OBJC_IVAR____TtC14SiriKitRuntime18ExecutionInputInfo_executePommes))
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR____TtC14SiriKitRuntime18ExecutionInputInfo_executePommes))
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  MEMORY[0x1E12A1580](v3, v4);

  MEMORY[0x1E12A1580](41, 0xE100000000000000);
  return 0xD00000000000001BLL;
}

id ExecutionInputInfo.init(parseId:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v17 - v5;
  static ConversionUtils.convertProtoToUuid(protoUuid:)();
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of UUID?(v6);
    v9 = 0;
    v10 = 0;
  }

  else
  {
    v9 = UUID.uuidString.getter();
    v10 = v11;
    (*(v8 + 8))(v6, v7);
  }

  v12 = &v2[OBJC_IVAR____TtC14SiriKitRuntime18ExecutionInputInfo_parseId];
  *v12 = v9;
  v12[1] = v10;
  v2[OBJC_IVAR____TtC14SiriKitRuntime18ExecutionInputInfo_executePommes] = 0;
  v13 = type metadata accessor for ExecutionInputInfo();
  v17.receiver = v2;
  v17.super_class = v13;
  v14 = objc_msgSendSuper2(&v17, sel_init);
  v15 = type metadata accessor for Siri_Nlu_External_UUID();
  (*(*(v15 - 8) + 8))(a1, v15);
  return v14;
}

id ExecutionInputInfo.init(executePommes:)(uint64_t a1)
{
  v2 = &v1[OBJC_IVAR____TtC14SiriKitRuntime18ExecutionInputInfo_parseId];
  *v2 = 0;
  v2[1] = 0;
  v1[OBJC_IVAR____TtC14SiriKitRuntime18ExecutionInputInfo_executePommes] = a1;
  v4.receiver = v1;
  v4.super_class = type metadata accessor for ExecutionInputInfo();
  return objc_msgSendSuper2(&v4, sel_init);
}

id ExecutionInputInfo.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = specialized ExecutionInputInfo.init(coder:)(a1);

  return v4;
}

id ExecutionInputInfo.init(coder:)(void *a1)
{
  v2 = specialized ExecutionInputInfo.init(coder:)(a1);

  return v2;
}

Swift::Void __swiftcall ExecutionInputInfo.encode(with:)(NSCoder with)
{
  if (*(v1 + OBJC_IVAR____TtC14SiriKitRuntime18ExecutionInputInfo_parseId + 8))
  {
    v3 = MEMORY[0x1E12A1410](*(v1 + OBJC_IVAR____TtC14SiriKitRuntime18ExecutionInputInfo_parseId));
    v4 = MEMORY[0x1E12A1410](0x64496573726170, 0xE700000000000000);
    [(objc_class *)with.super.isa encodeObject:v3 forKey:v4];
  }

  v5 = *(v1 + OBJC_IVAR____TtC14SiriKitRuntime18ExecutionInputInfo_executePommes);
  v6 = MEMORY[0x1E12A1410](0x5065747563657865, 0xED000073656D6D6FLL);
  [(objc_class *)with.super.isa encodeBool:v5 forKey:v6];
}

id ExecutionInputInfo.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ExecutionInputInfo.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ExecutionInputInfo();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id specialized ExecutionInputInfo.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E12A1410](0x64496573726170, 0xE700000000000000);
  v5 = [a1 containsValueForKey_];

  if (v5)
  {
    type metadata accessor for NSString();
    v6 = NSCoder.decodeObject<A>(of:forKey:)();
    if (v6)
    {
      v7 = v6;
      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = v9;
    }

    else
    {
      v8 = 0;
      v10 = 0;
    }

    v12 = &v2[OBJC_IVAR____TtC14SiriKitRuntime18ExecutionInputInfo_parseId];
    *v12 = v8;
    v12[1] = v10;
  }

  else
  {
    v11 = &v2[OBJC_IVAR____TtC14SiriKitRuntime18ExecutionInputInfo_parseId];
    *v11 = 0;
    v11[1] = 0;
  }

  v13 = MEMORY[0x1E12A1410](0x5065747563657865, 0xED000073656D6D6FLL);
  v14 = [a1 decodeBoolForKey_];

  v2[OBJC_IVAR____TtC14SiriKitRuntime18ExecutionInputInfo_executePommes] = v14;
  v16.receiver = v2;
  v16.super_class = type metadata accessor for ExecutionInputInfo();
  return objc_msgSendSuper2(&v16, sel_init);
}

unint64_t type metadata accessor for NSString()
{
  result = lazy cache variable for type metadata for NSString;
  if (!lazy cache variable for type metadata for NSString)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSString);
  }

  return result;
}

uint64_t ExecutionOutput.__allocating_init(command:contextUpdate:fullPrint:fullSpeak:executionRequestId:executionSource:inAppResponse:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v25 = a8;
  v26 = a7;
  v28 = a5;
  v29 = a6;
  v27 = a4;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v24 - v15;
  v17 = type metadata accessor for RequestSummary.ExecutionSource();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v24 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v21, a9, v17, v19);
  outlined init with copy of ReferenceResolutionClientProtocol?(a10, v16, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
  v22 = (*(v10 + 152))(a1, a2, a3, v27, v28, v29, 0, 0, 0, 0, v26, v25, v21, v16);
  outlined destroy of ReferenceResolutionClientProtocol?(a10, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
  (*(v18 + 8))(a9, v17);
  return v22;
}

uint64_t specialized RawRepresentable<>.hash(into:)(uint64_t a1, unsigned __int8 a2)
{
  String.hash(into:)();
}

{
  String.hash(into:)();
}

uint64_t static ExecutionOutput.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  static ExecutionOutput.supportsSecureCoding = a1;
  return result;
}

uint64_t ExecutionOutput.executionRequestId.getter()
{
  v1 = *(v0 + OBJC_IVAR___SKRExecutionOutput_executionRequestId);

  return v1;
}

void *ExecutionOutput.command.getter()
{
  v1 = *(v0 + OBJC_IVAR___SKRExecutionOutput_command);
  v2 = v1;
  return v1;
}

void *ExecutionOutput.contextUpdate.getter()
{
  v1 = *(v0 + OBJC_IVAR___SKRExecutionOutput_contextUpdate);
  v2 = v1;
  return v1;
}

uint64_t ExecutionOutput.executionSource.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___SKRExecutionOutput_executionSource;
  v4 = type metadata accessor for RequestSummary.ExecutionSource();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ExecutionOutput.fullPrint.getter()
{
  v1 = *(v0 + OBJC_IVAR___SKRExecutionOutput_fullPrint);

  return v1;
}

uint64_t ExecutionOutput.fullSpeak.getter()
{
  v1 = *(v0 + OBJC_IVAR___SKRExecutionOutput_fullSpeak);

  return v1;
}

uint64_t ExecutionOutput.redactedFullPrint.getter()
{
  v1 = *(v0 + OBJC_IVAR___SKRExecutionOutput_redactedFullPrint);

  return v1;
}

uint64_t ExecutionOutput.redactedFullSpeak.getter()
{
  v1 = *(v0 + OBJC_IVAR___SKRExecutionOutput_redactedFullSpeak);

  return v1;
}

id ExecutionOutput.init(command:contextUpdate:fullPrint:fullSpeak:redactedFullPrint:redactedFullSpeak:executionRequestId:executionSource:inAppResponse:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v16 = specialized ExecutionOutput.init(command:contextUpdate:fullPrint:fullSpeak:redactedFullPrint:redactedFullSpeak:executionRequestId:executionSource:inAppResponse:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14);

  return v16;
}

uint64_t ExecutionOutput.CodingKeys.rawValue.getter(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x646E616D6D6F63;
    v6 = 0x55747865746E6F63;
    if (a1 != 2)
    {
      v6 = 0x6E6972506C6C7566;
    }

    if (!a1)
    {
      v5 = 0xD000000000000012;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0xD000000000000011;
    v2 = 0x6F69747563657865;
    if (a1 != 7)
    {
      v2 = 0x7365527070416E69;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x616570536C6C7566;
    if (a1 != 4)
    {
      v3 = 0xD000000000000011;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ExecutionOutput.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  specialized RawRepresentable<>.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ExecutionOutput.CodingKeys(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  specialized RawRepresentable<>.hash(into:)(v4, v2);
  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance ExecutionOutput.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized ExecutionOutput.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance ExecutionOutput.CodingKeys@<X0>(uint64_t *a1@<X8>)
{
  result = ExecutionOutput.CodingKeys.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t ExecutionOutput.sensitiveDebugDescription.getter()
{
  v1 = v0;
  v2 = 0x3E6C696E3CLL;
  v24 = 0;
  v25 = 0xE000000000000000;
  _StringGuts.grow(_:)(84);
  MEMORY[0x1E12A1580](538976288, 0xE400000000000000);
  v23.receiver = v0;
  v23.super_class = type metadata accessor for ExecutionOutput(0);
  v3 = objc_msgSendSuper2(&v23, sel_debugDescription);
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  MEMORY[0x1E12A1580](v4, v6);

  MEMORY[0x1E12A1580](0x20202020207B20, 0xE700000000000000);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1E12A1580](8250, 0xE200000000000000);
  MEMORY[0x1E12A1580](*&v1[OBJC_IVAR___SKRExecutionOutput_executionRequestId], *&v1[OBJC_IVAR___SKRExecutionOutput_executionRequestId + 8]);
  MEMORY[0x1E12A1580](0x20202020202CLL, 0xE600000000000000);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1E12A1580](8250, 0xE200000000000000);
  v7 = *&v1[OBJC_IVAR___SKRExecutionOutput_command];
  if (v7)
  {
    v8 = [v7 debugDescription];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
  }

  else
  {
    v11 = 0xE500000000000000;
    v9 = 0x3E6C696E3CLL;
  }

  MEMORY[0x1E12A1580](v9, v11);

  MEMORY[0x1E12A1580](0x20202020202CLL, 0xE600000000000000);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1E12A1580](8250, 0xE200000000000000);
  v12 = *&v1[OBJC_IVAR___SKRExecutionOutput_contextUpdate];
  if (v12)
  {
    v13 = [v12 debugDescription];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;
  }

  else
  {
    v16 = 0xE500000000000000;
    v14 = 0x3E6C696E3CLL;
  }

  MEMORY[0x1E12A1580](v14, v16);

  MEMORY[0x1E12A1580](0x20202020202CLL, 0xE600000000000000);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1E12A1580](8250, 0xE200000000000000);
  if (*&v1[OBJC_IVAR___SKRExecutionOutput_redactedFullPrint + 8])
  {
    v17 = String.debugDescription.getter();
    v19 = v18;
  }

  else
  {
    v19 = 0xE500000000000000;
    v17 = 0x3E6C696E3CLL;
  }

  MEMORY[0x1E12A1580](v17, v19);

  MEMORY[0x1E12A1580](0x20202020202CLL, 0xE600000000000000);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1E12A1580](8250, 0xE200000000000000);
  if (*&v1[OBJC_IVAR___SKRExecutionOutput_redactedFullSpeak + 8])
  {
    v2 = String.debugDescription.getter();
    v21 = v20;
  }

  else
  {
    v21 = 0xE500000000000000;
  }

  MEMORY[0x1E12A1580](v2, v21);

  MEMORY[0x1E12A1580](0x20202020202CLL, 0xE600000000000000);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1E12A1580](8250, 0xE200000000000000);
  type metadata accessor for RequestSummary.ExecutionSource();
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1E12A1580](0x7D20202020, 0xE500000000000000);
  return v24;
}

id ExecutionOutput.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ExecutionOutput.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ExecutionOutput(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id specialized ExecutionOutput.init(command:contextUpdate:fullPrint:fullSpeak:redactedFullPrint:redactedFullSpeak:executionRequestId:executionSource:inAppResponse:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v127 = a7;
  v128 = a8;
  v129 = a2;
  v130 = a14;
  v126 = a10;
  updated = type metadata accessor for ContextUpdateScope();
  v124 = *(updated - 8);
  v125 = updated;
  MEMORY[0x1EEE9AC00](updated);
  v123 = &v112 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v122 = &v112 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v121 = &v112 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5ParseO16DirectInvocationVSgMd, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMR);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v120 = &v112 - v27;
  v28 = type metadata accessor for BinaryDecodingOptions();
  MEMORY[0x1EEE9AC00](v28 - 8);
  v116 = &v112 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMd, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMR);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v118 = &v112 - v31;
  v119 = type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext();
  v117 = *(v119 - 8);
  MEMORY[0x1EEE9AC00](v119);
  v114 = &v112 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v115 = &v112 - v34;
  v35 = &v14[OBJC_IVAR___SKRExecutionOutput_executionRequestId];
  *v35 = a11;
  *(v35 + 1) = a12;
  v36 = &v14[OBJC_IVAR___SKRExecutionOutput_fullPrint];
  *v36 = a3;
  *(v36 + 1) = a4;
  v37 = v14;
  v38 = &v14[OBJC_IVAR___SKRExecutionOutput_fullSpeak];
  *v38 = a5;
  *(v38 + 1) = a6;
  v39 = &v14[OBJC_IVAR___SKRExecutionOutput_redactedFullPrint];
  v40 = v128;
  *v39 = v127;
  v39[1] = v40;
  v41 = &v14[OBJC_IVAR___SKRExecutionOutput_redactedFullSpeak];
  *v41 = a9;
  v42 = v130;
  *(v41 + 1) = v126;
  v43 = OBJC_IVAR___SKRExecutionOutput_executionSource;
  v44 = type metadata accessor for RequestSummary.ExecutionSource();
  v127 = *(v44 - 8);
  v128 = a13;
  (*(v127 + 16))(&v14[v43], a13, v44);
  outlined init with copy of ReferenceResolutionClientProtocol?(v42, &v14[OBJC_IVAR___SKRExecutionOutput_inAppResponse], &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
  if (a1 && (objc_opt_self(), (v45 = swift_dynamicCastObjCClass()) != 0) && !v129)
  {
    v46 = v45;
    v126 = v14;
    v47 = one-time initialization token for executor;
    v48 = a1;
    if (v47 != -1)
    {
      swift_once();
    }

    v49 = type metadata accessor for Logger();
    __swift_project_value_buffer(v49, static Logger.executor);
    v50 = v48;
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.debug.getter();

    v53 = os_log_type_enabled(v51, v52);
    v54 = v119;
    v55 = v118;
    v113 = v44;
    if (v53)
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      *&v131[0] = v58;
      *v56 = 136315394;
      *(v56 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000085, 0x80000001DCA7C240, v131);
      *(v56 + 12) = 2112;
      *(v56 + 14) = v46;
      *v57 = v46;
      v59 = v50;
      _os_log_impl(&dword_1DC659000, v51, v52, "ExecutionOutput: %s: converting SARDNativeFlowContextUpdate=%@ to ExecutionOutput", v56, 0x16u);
      outlined destroy of ReferenceResolutionClientProtocol?(v57, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1E12A2F50](v57, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v58);
      MEMORY[0x1E12A2F50](v58, -1, -1);
      MEMORY[0x1E12A2F50](v56, -1, -1);
    }

    v60 = [v46 promptContextProto];
    v112 = v46;
    if (v60)
    {
      v61 = v60;
      v62 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v64 = v63;

      v132 = 0;
      memset(v131, 0, sizeof(v131));
      outlined copy of Data._Representation(v62, v64);
      BinaryDecodingOptions.init()();
      _s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVAC0aB8Protobuf7MessageAAWlTm_0(&lazy protocol witness table cache variable for type Com_Apple_Siri_Product_Proto_PromptContext and conformance Com_Apple_Siri_Product_Proto_PromptContext, MEMORY[0x1E69D1500], MEMORY[0x1E69D14F8]);
      Message.init(serializedData:extensions:partial:options:)();
      v129 = v64;
      v100 = v117;
      (*(v117 + 56))(v55, 0, 1, v54);
      v101 = v115;
      (*(v100 + 32))(v115, v55, v54);
      v102 = v114;
      (*(v100 + 16))(v114, v101, v54);
      v103 = Logger.logObject.getter();
      v104 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v103, v104))
      {
        v106 = swift_slowAlloc();
        v118 = swift_slowAlloc();
        *&v131[0] = v118;
        *v106 = 136315394;
        *(v106 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000085, 0x80000001DCA7C240, v131);
        *(v106 + 12) = 2080;
        v107 = Message.textFormatString()();
        v108 = *(v100 + 8);
        v108(v102, v54);
        v109 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v107._countAndFlagsBits, v107._object, v131);

        *(v106 + 14) = v109;
        _os_log_impl(&dword_1DC659000, v103, v104, "ExecutionOutput: %s: NFCU has prompt context %s", v106, 0x16u);
        v110 = v118;
        swift_arrayDestroy();
        MEMORY[0x1E12A2F50](v110, -1, -1);
        MEMORY[0x1E12A2F50](v106, -1, -1);

        outlined consume of Data._Representation(v62, v129);
        v108(v115, v54);
      }

      else
      {

        outlined consume of Data._Representation(v62, v129);
        v111 = *(v100 + 8);
        v111(v102, v54);
        v111(v101, v54);
      }
    }

    else
    {
      v65 = Logger.logObject.getter();
      v66 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        *&v131[0] = v68;
        *v67 = 136315138;
        *(v67 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000085, 0x80000001DCA7C240, v131);
        _os_log_impl(&dword_1DC659000, v65, v66, "ExecutionOutput: %s: NFCU has no (or invalid) prompt context", v67, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v68);
        MEMORY[0x1E12A2F50](v68, -1, -1);
        MEMORY[0x1E12A2F50](v67, -1, -1);
      }
    }

    v69 = type metadata accessor for Parse.DirectInvocation();
    v70 = v120;
    (*(*(v69 - 8) + 56))(v120, 1, 1, v69);
    v71 = type metadata accessor for PommesContext();
    v72 = v121;
    (*(*(v71 - 8) + 56))(v121, 1, 1, v71);
    v73 = v123;
    v74 = v124;
    v75 = v125;
    (*(v124 + 104))(v123, *MEMORY[0x1E69CFF08], v125);
    v76 = type metadata accessor for ExecutionContextUpdate(0);
    v77 = objc_allocWithZone(v76);
    v78 = v122;
    outlined init with copy of ReferenceResolutionClientProtocol?(v72, v122, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
    v79 = v112;
    specialized static ExecutionContextUpdate.synchronizePromptContexts(pommesContext:nativeFlowContextCommand:)(v78, v112);
    *&v77[OBJC_IVAR___SKRExecutionContextUpdate_provideContextCommand] = 0;
    *&v77[OBJC_IVAR___SKRExecutionContextUpdate_nativeFlowContextCommand] = v79;
    *&v77[OBJC_IVAR___SKRExecutionContextUpdate_nluSystemDialogActs] = 0;
    *&v77[OBJC_IVAR___SKRExecutionContextUpdate_nluActiveTasks] = 0;
    *&v77[OBJC_IVAR___SKRExecutionContextUpdate_nluCompletedTasks] = 0;
    outlined init with copy of ReferenceResolutionClientProtocol?(v70, &v77[OBJC_IVAR___SKRExecutionContextUpdate_undoDirectInvocation], &_s11SiriKitFlow5ParseO16DirectInvocationVSgMd, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMR);
    *&v77[OBJC_IVAR___SKRExecutionContextUpdate_rrEntities] = 0;
    outlined init with copy of ReferenceResolutionClientProtocol?(v78, &v77[OBJC_IVAR___SKRExecutionContextUpdate_pommesContext], &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
    (*(v74 + 16))(&v77[OBJC_IVAR___SKRExecutionContextUpdate_contextUpdateScope], v73, v75);
    v80 = &v77[OBJC_IVAR___SKRExecutionContextUpdate_restoreSessionForRequestId];
    *v80 = 0;
    v80[1] = 0;
    v77[OBJC_IVAR___SKRExecutionContextUpdate_executedOnRemoteDevice] = 0;
    v133.receiver = v77;
    v133.super_class = v76;
    v81 = objc_msgSendSuper2(&v133, sel_init);
    (*(v74 + 8))(v73, v75);
    outlined destroy of ReferenceResolutionClientProtocol?(v72, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
    outlined destroy of ReferenceResolutionClientProtocol?(v70, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMd, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMR);
    outlined destroy of ReferenceResolutionClientProtocol?(v78, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
    v37 = v126;
    *&v126[OBJC_IVAR___SKRExecutionOutput_contextUpdate] = v81;
    *&v37[OBJC_IVAR___SKRExecutionOutput_command] = 0;
    v42 = v130;
    v44 = v113;
  }

  else
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v82 = type metadata accessor for Logger();
    __swift_project_value_buffer(v82, static Logger.executor);
    v83 = a1;
    v84 = Logger.logObject.getter();
    v85 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      v126 = v37;
      v87 = v86;
      v88 = swift_slowAlloc();
      v89 = v44;
      v90 = swift_slowAlloc();
      *&v131[0] = v90;
      *v87 = 136315394;
      *(v87 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000085, 0x80000001DCA7C240, v131);
      *(v87 + 12) = 2112;
      *(v87 + 14) = v83;
      *v88 = a1;
      v91 = v83;
      _os_log_impl(&dword_1DC659000, v84, v85, "ExecutionOutput: %s: converting non-context ACE command=%@ to ExecutionOutput", v87, 0x16u);
      outlined destroy of ReferenceResolutionClientProtocol?(v88, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1E12A2F50](v88, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v90);
      v92 = v90;
      v44 = v89;
      MEMORY[0x1E12A2F50](v92, -1, -1);
      v93 = v87;
      v37 = v126;
      MEMORY[0x1E12A2F50](v93, -1, -1);
    }

    *&v37[OBJC_IVAR___SKRExecutionOutput_command] = a1;
    v94 = v129;
    *&v37[OBJC_IVAR___SKRExecutionOutput_contextUpdate] = v129;
    v95 = v94;
    v96 = v83;
  }

  v97 = type metadata accessor for ExecutionOutput(0);
  v134.receiver = v37;
  v134.super_class = v97;
  v98 = objc_msgSendSuper2(&v134, sel_init);
  outlined destroy of ReferenceResolutionClientProtocol?(v42, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
  (*(v127 + 8))(v128, v44);
  return v98;
}

uint64_t outlined init with take of FlowOutputMessage.InAppResponse?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void type metadata completion function for ExecutionOutput(uint64_t a1)
{
  type metadata accessor for RequestSummary.ExecutionSource();
  if (v1 <= 0x3F)
  {
    type metadata accessor for FlowOutputMessage.InAppResponse?(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void type metadata accessor for FlowOutputMessage.InAppResponse?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for FlowOutputMessage.InAppResponse?)
  {
    type metadata accessor for FlowOutputMessage.InAppResponse();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for FlowOutputMessage.InAppResponse?);
    }
  }
}

uint64_t getEnumTagSinglePayload for ExecutionOutput.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ExecutionOutput.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t lazy protocol witness table accessor for type ExecutionOutput.CodingKeys and conformance ExecutionOutput.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ExecutionOutput.CodingKeys and conformance ExecutionOutput.CodingKeys;
  if (!lazy protocol witness table cache variable for type ExecutionOutput.CodingKeys and conformance ExecutionOutput.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExecutionOutput.CodingKeys and conformance ExecutionOutput.CodingKeys);
  }

  return result;
}

unint64_t specialized ExecutionOutput.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ExecutionOutput.CodingKeys.init(rawValue:), v2);

  if (v3 >= 9)
  {
    return 9;
  }

  else
  {
    return v3;
  }
}

uint64_t dispatch thunk of ExecutionOverride.evaluate()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return v9(a1, a2, a3);
}

uint64_t ExecutionOverrideContext.__allocating_init(activeTasks:executedTasks:isTriggerlessFollowup:isMitigated:endpointMode:isMedocSupported:)(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5, char a6)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = a3;
  *(result + 33) = a4;
  *(result + 40) = a5;
  *(result + 48) = a6;
  return result;
}

uint64_t ExecutionOverrideContext.init(activeTasks:executedTasks:isTriggerlessFollowup:isMitigated:endpointMode:isMedocSupported:)(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5, char a6)
{
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 33) = a4;
  *(v6 + 40) = a5;
  *(v6 + 48) = a6;
  return v6;
}

uint64_t ExecutionOverrideContext.debugDescription.getter()
{
  v1 = v0;
  _StringGuts.grow(_:)(88);
  v2 = _typeName(_:qualified:)();
  MEMORY[0x1E12A1580](v2);

  MEMORY[0x1E12A1580](0x6576697463617B20, 0xEF203A736B736154);
  v3 = *(v0 + 16);
  v4 = type metadata accessor for Siri_Nlu_External_Task();
  v5 = MEMORY[0x1E12A16D0](v3, v4);
  MEMORY[0x1E12A1580](v5);

  MEMORY[0x1E12A1580](0xD000000000000011, 0x80000001DCA82EA0);
  v6 = MEMORY[0x1E12A16D0](*(v1 + 24), v4);
  MEMORY[0x1E12A1580](v6);

  MEMORY[0x1E12A1580](0xD000000000000019, 0x80000001DCA82EC0);
  if (*(v1 + 32))
  {
    v7 = 1702195828;
  }

  else
  {
    v7 = 0x65736C6166;
  }

  if (*(v1 + 32))
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  MEMORY[0x1E12A1580](v7, v8);

  MEMORY[0x1E12A1580](0xD000000000000014, 0x80000001DCA82EE0);
  if (*(v1 + 48))
  {
    v9 = 1702195828;
  }

  else
  {
    v9 = 0x65736C6166;
  }

  if (*(v1 + 48))
  {
    v10 = 0xE400000000000000;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  MEMORY[0x1E12A1580](v9, v10);

  MEMORY[0x1E12A1580](125, 0xE100000000000000);
  return 0;
}

uint64_t ExecutionOverrideContext.deinit()
{

  return v0;
}

uint64_t ExecutionOverrideContext.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

SiriKitRuntime::ExecutionOverrideDecision_optional __swiftcall ExecutionOverrideDecision.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ExecutionOverrideDecision.init(rawValue:), v3);

  v7 = 12;
  if (v5 < 0xC)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

uint64_t ExecutionOverrideDecision.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 5)
  {
    v5 = 0x757165526C696166;
    v6 = 0xD000000000000015;
    if (v1 != 10)
    {
      v6 = 0x747065636361;
    }

    if (v1 != 9)
    {
      v5 = v6;
    }

    v7 = 0xD000000000000024;
    v8 = 0xD000000000000010;
    if (v1 != 7)
    {
      v8 = 0xD000000000000017;
    }

    if (v1 != 6)
    {
      v7 = v8;
    }

    if (*v0 <= 8u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0xD000000000000019;
    if (v1 != 3)
    {
      v2 = 0xD000000000000024;
    }

    v3 = 0xD000000000000021;
    if (v1 != 1)
    {
      v3 = 0xD000000000000024;
    }

    if (!*v0)
    {
      v3 = 0xD000000000000017;
    }

    if (*v0 <= 2u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ExecutionOverrideDecision()
{
  v0 = ExecutionOverrideDecision.rawValue.getter();
  v2 = v1;
  if (v0 == ExecutionOverrideDecision.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5 & 1;
}

unint64_t lazy protocol witness table accessor for type ExecutionOverrideDecision and conformance ExecutionOverrideDecision()
{
  result = lazy protocol witness table cache variable for type ExecutionOverrideDecision and conformance ExecutionOverrideDecision;
  if (!lazy protocol witness table cache variable for type ExecutionOverrideDecision and conformance ExecutionOverrideDecision)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExecutionOverrideDecision and conformance ExecutionOverrideDecision);
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ExecutionOverrideDecision()
{
  Hasher.init(_seed:)();
  ExecutionOverrideDecision.rawValue.getter();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ExecutionOverrideDecision(uint64_t a1)
{
  ExecutionOverrideDecision.rawValue.getter();
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ExecutionOverrideDecision(uint64_t a1)
{
  Hasher.init(_seed:)();
  ExecutionOverrideDecision.rawValue.getter();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance ExecutionOverrideDecision@<X0>(uint64_t *a1@<X8>)
{
  result = ExecutionOverrideDecision.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void ExecutionOverrideDecisionMaker.evaluate(rules:)()
{
  v28 = v0;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 176) = __swift_project_value_buffer(v1, static Logger.executor);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1DC659000, v2, v3, "Evaluating Pre-Execution Decision..", v4, 2u);
    MEMORY[0x1E12A2F50](v4, -1, -1);
  }

  v5 = *(v0 + 168);

  *(v0 + 216) = 2059;
  v6 = *(v5 + 16);
  *(v0 + 184) = v6;
  v7 = *(v6 + 16);
  *(v0 + 192) = v7;
  if (v7)
  {
    *(v0 + 200) = 0;
    if (*(v6 + 16))
    {
      outlined init with copy of ReferenceResolutionClientProtocol(v6 + 32, v0 + 16);
      v8 = *(v0 + 40);
      v9 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_1((v0 + 16), v8);
      v25 = (*(v9 + 16) + **(v9 + 16));
      v10 = swift_task_alloc();
      *(v0 + 208) = v10;
      *v10 = v0;
      v10[1] = ExecutionOverrideDecisionMaker.evaluate(rules:);

      v25(v0 + 218, v8, v9);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v26 = v14;
      *v13 = 136315394;
      v27 = 11;
      v15 = ExecutionOverrideDecision.rawValue.getter();
      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v26);

      *(v13 + 4) = v17;
      *(v13 + 12) = 2080;
      v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(1701736302, 0xE400000000000000, &v26);

      *(v13 + 14) = v18;
      _os_log_impl(&dword_1DC659000, v11, v12, "[ExecutionOverride] Final ExecutionOverride Decision was evaluated as: %s from %s", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v14, -1, -1);
      MEMORY[0x1E12A2F50](v13, -1, -1);
    }

    swift_beginAccess();
    v19 = *(v0 + 217);
    swift_beginAccess();
    v20 = *(v0 + 216);
    v21 = type metadata accessor for ExecutionOverrideResult();
    v22 = objc_allocWithZone(v21);
    v22[OBJC_IVAR____TtC14SiriKitRuntime23ExecutionOverrideResult_type] = v19;
    v22[OBJC_IVAR____TtC14SiriKitRuntime23ExecutionOverrideResult_decision] = v20;
    *(v0 + 144) = v22;
    *(v0 + 152) = v21;
    v23 = objc_msgSendSuper2((v0 + 144), sel_init);
    v24 = *(v0 + 8);

    v24(v23);
  }
}

uint64_t ExecutionOverrideDecisionMaker.evaluate(rules:)()
{

  return MEMORY[0x1EEE6DFA0](ExecutionOverrideDecisionMaker.evaluate(rules:), 0, 0);
}

{
  v78 = v0;
  v1 = *(v0 + 218);
  v2 = (v0 + 16);
  v3 = (v0 + 216);
  v4 = (v0 + 217);
  outlined init with copy of ReferenceResolutionClientProtocol(v0 + 16, v0 + 56);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v72 = v6;
    v7 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    v73 = (v0 + 160);
    *(v0 + 160) = v71;
    *v7 = 136315394;
    if (v1 > 5)
    {
      v8 = 0x80000001DCA7B0C0;
      v17 = 0xD000000000000015;
      if (v1 != 10)
      {
        v17 = 0x747065636361;
        v8 = 0xE600000000000000;
      }

      if (v1 == 9)
      {
        v17 = 0x757165526C696166;
        v8 = 0xEB00000000747365;
      }

      v11 = 0x80000001DCA7B040;
      v18 = 0x80000001DCA7B070;
      v19 = 0xD000000000000010;
      if (v1 != 7)
      {
        v19 = 0xD000000000000017;
        v18 = 0x80000001DCA7B090;
      }

      if (v1 == 6)
      {
        v19 = 0xD000000000000024;
      }

      else
      {
        v11 = v18;
      }

      v15 = v1 <= 8;
      if (v1 <= 8)
      {
        v16 = v19;
      }

      else
      {
        v16 = v17;
      }
    }

    else
    {
      v8 = 0x80000001DCA7AFC0;
      v9 = 0xD000000000000019;
      v10 = 0x80000001DCA7AFE0;
      if (v1 != 4)
      {
        v10 = 0x80000001DCA7B010;
      }

      if (v1 != 3)
      {
        v9 = 0xD000000000000024;
        v8 = v10;
      }

      v11 = 0x80000001DCA7AF40;
      v12 = 0xD000000000000017;
      v13 = 0x80000001DCA7AF60;
      v14 = 0xD000000000000021;
      if (v1 != 1)
      {
        v14 = 0xD000000000000024;
        v13 = 0x80000001DCA7AF90;
      }

      if (v1)
      {
        v12 = v14;
        v11 = v13;
      }

      v15 = v1 <= 2;
      if (v1 <= 2)
      {
        v16 = v12;
      }

      else
      {
        v16 = v9;
      }
    }

    if (v15)
    {
      v20 = v11;
    }

    else
    {
      v20 = v8;
    }

    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v20, v73);

    *(v7 + 4) = v21;
    *(v7 + 12) = 2080;
    v23 = *(v0 + 80);
    v22 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_1((v0 + 56), v23);
    (*(v22 + 8))(v23, v22);
    v24 = *(v0 + 219);
    if (v24 <= 3)
    {
      v27 = 0x80000001DCA7B130;
      v28 = 0xD000000000000023;
      if (v24 != 2)
      {
        v28 = 0xD000000000000022;
        v27 = 0x80000001DCA7B160;
      }

      v29 = 0x80000001DCA7B0E0;
      v30 = 0xD000000000000016;
      if (*(v0 + 219))
      {
        v30 = 0xD000000000000021;
        v29 = 0x80000001DCA7B100;
      }

      if (*(v0 + 219) <= 1u)
      {
        v26 = v30;
      }

      else
      {
        v26 = v28;
      }

      if (*(v0 + 219) <= 1u)
      {
        v25 = v29;
      }

      else
      {
        v25 = v27;
      }

      v4 = (v0 + 217);
    }

    else
    {
      v4 = (v0 + 217);
      if (*(v0 + 219) <= 5u)
      {
        if (v24 == 4)
        {
          v26 = 0xD000000000000022;
        }

        else
        {
          v26 = 0xD000000000000017;
        }

        if (v24 == 4)
        {
          v25 = 0x80000001DCA7B190;
        }

        else
        {
          v25 = 0x80000001DCA7B1C0;
        }
      }

      else if (v24 == 6)
      {
        v26 = 0x5253417974706D65;
        v25 = 0xEC000000656C7552;
      }

      else if (v24 == 7)
      {
        v25 = 0x80000001DCA7B1F0;
        v26 = 0xD00000000000001BLL;
      }

      else
      {
        v25 = 0xE400000000000000;
        v26 = 1701736302;
      }
    }

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v25, v73);

    *(v7 + 14) = v31;
    _os_log_impl(&dword_1DC659000, v5, v72, "[ExecutionOverride] Evaluating.. Intermediate Decision was evaluated as: %s from %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v71, -1, -1);
    MEMORY[0x1E12A2F50](v7, -1, -1);

    v3 = (v0 + 216);
    v2 = (v0 + 16);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  }

  if (v1 > 10)
  {
  }

  else
  {
    v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v32 & 1) == 0)
    {
      *(v0 + 216) = v1;
      v37 = *(v0 + 40);
      v38 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_1(v2, v37);
      (*(v38 + 8))(&v75, v37, v38);
      v39 = v2;
      v36 = v75;
      *(v0 + 217) = v75;
      __swift_destroy_boxed_opaque_existential_1Tm(v39);
      goto LABEL_60;
    }
  }

  v33 = *(v0 + 192);
  v34 = *(v0 + 200) + 1;
  result = __swift_destroy_boxed_opaque_existential_1Tm(v2);
  if (v34 == v33)
  {
    LOBYTE(v1) = *v3;
    v36 = *v4;
LABEL_60:
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v76 = v43;
      *v42 = 136315394;
      v77 = v1;
      v44 = ExecutionOverrideDecision.rawValue.getter();
      v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v45, &v76);

      *(v42 + 4) = v46;
      *(v42 + 12) = 2080;
      if (v36 <= 3)
      {
        v60 = 0x80000001DCA7B130;
        v61 = 0xD000000000000023;
        if (v36 != 2)
        {
          v61 = 0xD000000000000022;
          v60 = 0x80000001DCA7B160;
        }

        v62 = 0x80000001DCA7B0E0;
        v63 = 0xD000000000000016;
        if (v36)
        {
          v63 = 0xD000000000000021;
          v62 = 0x80000001DCA7B100;
        }

        if (v36 <= 1)
        {
          v53 = v63;
        }

        else
        {
          v53 = v61;
        }

        if (v36 <= 1)
        {
          v54 = v62;
        }

        else
        {
          v54 = v60;
        }
      }

      else
      {
        v47 = 0x5253417974706D65;
        v48 = 0xEC000000656C7552;
        v49 = 0x80000001DCA7B1F0;
        v50 = 0xD00000000000001BLL;
        if (v36 != 7)
        {
          v50 = 1701736302;
          v49 = 0xE400000000000000;
        }

        if (v36 != 6)
        {
          v47 = v50;
          v48 = v49;
        }

        v51 = 0x80000001DCA7B190;
        v52 = 0xD000000000000022;
        if (v36 != 4)
        {
          v52 = 0xD000000000000017;
          v51 = 0x80000001DCA7B1C0;
        }

        if (v36 <= 5)
        {
          v53 = v52;
        }

        else
        {
          v53 = v47;
        }

        if (v36 <= 5)
        {
          v54 = v51;
        }

        else
        {
          v54 = v48;
        }
      }

      v64 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v54, &v76);

      *(v42 + 14) = v64;
      _os_log_impl(&dword_1DC659000, v40, v41, "[ExecutionOverride] Final ExecutionOverride Decision was evaluated as: %s from %s", v42, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v43, -1, -1);
      MEMORY[0x1E12A2F50](v42, -1, -1);
    }

    else
    {
    }

    swift_beginAccess();
    v65 = *(v0 + 217);
    swift_beginAccess();
    v66 = *(v0 + 216);
    v67 = type metadata accessor for ExecutionOverrideResult();
    v68 = objc_allocWithZone(v67);
    v68[OBJC_IVAR____TtC14SiriKitRuntime23ExecutionOverrideResult_type] = v65;
    v68[OBJC_IVAR____TtC14SiriKitRuntime23ExecutionOverrideResult_decision] = v66;
    *(v0 + 144) = v68;
    *(v0 + 152) = v67;
    v69 = objc_msgSendSuper2((v0 + 144), sel_init);
    v70 = *(v0 + 8);

    return v70(v69);
  }

  v55 = *(v0 + 200) + 1;
  *(v0 + 200) = v55;
  v56 = *(v0 + 184);
  if (v55 >= *(v56 + 16))
  {
    __break(1u);
  }

  else
  {
    outlined init with copy of ReferenceResolutionClientProtocol(v56 + 40 * v55 + 32, v2);
    v57 = *(v0 + 40);
    v58 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1(v2, v57);
    v74 = (*(v58 + 16) + **(v58 + 16));
    v59 = swift_task_alloc();
    *(v0 + 208) = v59;
    *v59 = v0;
    v59[1] = ExecutionOverrideDecisionMaker.evaluate(rules:);

    return v74(v0 + 218, v57, v58);
  }

  return result;
}

uint64_t dispatch thunk of ExecutionOverrideDecisionMaker.evaluate(rules:)(uint64_t a1)
{
  v6 = (*(*v1 + 88) + **(*v1 + 88));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = AppShortcutStateProvider.intentsStates(appShortcutTargets:conditionalIntentMetadata:);

  return v6(a1);
}

uint64_t static ExecutionOverrideHandler.runExecutionOverridesAfterRCSelection(rcId:aceInputOrigin:input:isNlEmpty:isFirstRequestInSession:isFlowAwaitingInput:consecutiveEmptyInputs:endpointMode:executionOverrideContext:didPreviouslyFallbackToServer:isSpeechRequest:bridge:skipEmptyAsr:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7, char a8)
{
  *(v8 + 493) = v19;
  *(v8 + 352) = v17;
  *(v8 + 360) = v18;
  *(v8 + 492) = v16;
  *(v8 + 491) = v15;
  *(v8 + 344) = v14;
  *(v8 + 328) = v13;
  *(v8 + 490) = a8;
  *(v8 + 489) = a7;
  *(v8 + 488) = a6;
  *(v8 + 312) = a4;
  *(v8 + 320) = a5;
  *(v8 + 296) = a2;
  *(v8 + 304) = a3;
  *(v8 + 288) = a1;
  v9 = type metadata accessor for Parse();
  *(v8 + 368) = v9;
  *(v8 + 376) = *(v9 - 8);
  *(v8 + 384) = swift_task_alloc();
  v10 = type metadata accessor for USOParse();
  *(v8 + 392) = v10;
  *(v8 + 400) = *(v10 - 8);
  *(v8 + 408) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  *(v8 + 416) = swift_task_alloc();
  *(v8 + 424) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
  *(v8 + 432) = swift_task_alloc();
  *(v8 + 440) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](static ExecutionOverrideHandler.runExecutionOverridesAfterRCSelection(rcId:aceInputOrigin:input:isNlEmpty:isFirstRequestInSession:isFlowAwaitingInput:consecutiveEmptyInputs:endpointMode:executionOverrideContext:didPreviouslyFallbackToServer:isSpeechRequest:bridge:skipEmptyAsr:), 0, 0);
}

uint64_t static ExecutionOverrideHandler.runExecutionOverridesAfterRCSelection(rcId:aceInputOrigin:input:isNlEmpty:isFirstRequestInSession:isFlowAwaitingInput:consecutiveEmptyInputs:endpointMode:executionOverrideContext:didPreviouslyFallbackToServer:isSpeechRequest:bridge:skipEmptyAsr:)()
{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 424);
  v2 = *(v0 + 320);
  v3 = type metadata accessor for Logger();
  *(v0 + 448) = __swift_project_value_buffer(v3, static Logger.executor);
  specialized Logger.debugF(_:_:_:_:)("SiriKitRuntime/ExecutionOverrideHandler.swift", 45, 2, "runExecutionOverridesAfterRCSelection(rcId:aceInputOrigin:input:isNlEmpty:isFirstRequestInSession:isFlowAwaitingInput:consecutiveEmptyInputs:endpointMode:executionOverrideContext:didPreviouslyFallbackToServer:isSpeechRequest:bridge:skipEmptyAsr:)", 246, 2);
  outlined init with copy of ReferenceResolutionClientProtocol?(v2, v1, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  v4 = type metadata accessor for Input();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v1, 1, v4) == 1)
  {
    v6 = *(v0 + 440);
    outlined destroy of ReferenceResolutionClientProtocol?(*(v0 + 424), &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
    v7 = type metadata accessor for Siri_Nlu_External_UserParse();
    (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  }

  else
  {
    v9 = *(v0 + 376);
    v8 = *(v0 + 384);
    v10 = *(v0 + 368);
    Input.parse.getter();
    if ((*(v9 + 88))(v8, v10) == *MEMORY[0x1E69D0168])
    {
      v12 = *(v0 + 400);
      v11 = *(v0 + 408);
      v14 = *(v0 + 384);
      v13 = *(v0 + 392);
      (*(*(v0 + 376) + 96))(v14, *(v0 + 368));
      (*(v12 + 32))(v11, v14, v13);
      USOParse.userParse.getter();
      (*(v12 + 8))(v11, v13);
      v15 = 0;
    }

    else
    {
      (*(*(v0 + 376) + 8))(*(v0 + 384), *(v0 + 368));
      v15 = 1;
    }

    v16 = *(v0 + 440);
    v17 = *(v0 + 424);
    v18 = type metadata accessor for Siri_Nlu_External_UserParse();
    (*(*(v18 - 8) + 56))(v16, v15, 1, v18);
    (*(v5 + 8))(v17, v4);
  }

  v19 = MEMORY[0x1E69E7CC0];
  *(v0 + 232) = MEMORY[0x1E69E7CC0];
  v20 = *(v0 + 432);
  v22 = *(v0 + 352);
  v21 = *(v0 + 360);
  v23 = *(v0 + 492);
  v24 = *(v0 + 488);
  outlined init with copy of ReferenceResolutionClientProtocol?(*(v0 + 440), v20, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
  v25 = type metadata accessor for HangUpOverride(0);
  swift_allocObject();
  swift_unknownObjectRetain();
  v26 = HangUpOverride.init(topRankedParse:bridge:isSpeechRequest:isNlEmpty:)(v20, v22, v21, v23, v24);
  swift_beginAccess();
  v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, v19);
  v29 = v27[2];
  v28 = v27[3];
  if (v29 >= v28 >> 1)
  {
    v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1, v27);
  }

  v30 = *(v0 + 416);
  v31 = *(v0 + 489);
  v32 = *(v0 + 312);
  v33 = *(v0 + 320);
  v71 = *(v0 + 304);
  *(v0 + 40) = v25;
  *(v0 + 48) = &protocol witness table for HangUpOverride;
  *(v0 + 16) = v26;
  v27[2] = v29 + 1;
  outlined init with take of ReferenceResolutionClientProtocol((v0 + 16), &v27[5 * v29 + 4]);
  *(v0 + 232) = v27;
  outlined init with copy of ReferenceResolutionClientProtocol?(v33, v30, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  v34 = type metadata accessor for WaitUniversalActionOverride(0);
  v35 = swift_allocObject();
  *(v35 + 16) = 7;
  outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v30, v35 + OBJC_IVAR____TtC14SiriKitRuntime27WaitUniversalActionOverride_input, &_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  v70 = v31;
  *(v35 + OBJC_IVAR____TtC14SiriKitRuntime27WaitUniversalActionOverride_isFirstRequestInSession) = v31;
  v36 = (v35 + OBJC_IVAR____TtC14SiriKitRuntime27WaitUniversalActionOverride_aceInputOrigin);
  *v36 = v71;
  v36[1] = v32;
  v38 = v27[2];
  v37 = v27[3];

  if (v38 >= v37 >> 1)
  {
    v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v37 > 1), v38 + 1, 1, v27);
  }

  v40 = *(v0 + 432);
  v39 = *(v0 + 440);
  *(v0 + 80) = v34;
  *(v0 + 88) = &protocol witness table for WaitUniversalActionOverride;
  *(v0 + 56) = v35;
  v27[2] = v38 + 1;
  outlined init with take of ReferenceResolutionClientProtocol((v0 + 56), &v27[5 * v38 + 4]);
  *(v0 + 232) = v27;
  outlined init with copy of ReferenceResolutionClientProtocol?(v39, v40, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
  v41 = type metadata accessor for EmergencyCallMitigatorOverride(0);
  v42 = swift_allocObject();
  *(v42 + 16) = 1;
  outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v40, v42 + OBJC_IVAR____TtC14SiriKitRuntime30EmergencyCallMitigatorOverride_topRankedParse, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
  v44 = v27[2];
  v43 = v27[3];
  if (v44 >= v43 >> 1)
  {
    v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v43 > 1), v44 + 1, 1, v27);
  }

  v45 = *(v0 + 432);
  v46 = *(v0 + 440);
  v47 = *(v0 + 344);
  *(v0 + 120) = v41;
  *(v0 + 128) = &protocol witness table for EmergencyCallMitigatorOverride;
  *(v0 + 96) = v42;
  v27[2] = v44 + 1;
  outlined init with take of ReferenceResolutionClientProtocol((v0 + 96), &v27[5 * v44 + 4]);
  *(v0 + 232) = v27;
  v49 = *(v47 + 16);
  v48 = *(v47 + 24);
  outlined init with copy of ReferenceResolutionClientProtocol?(v46, v45, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
  LOBYTE(v46) = *(v47 + 32);
  *(v0 + 494) = v46;
  v50 = *(v47 + 33);
  LOBYTE(v47) = *(v47 + 48);
  v51 = type metadata accessor for AnnounceExecutionOverride(0);
  v52 = swift_allocObject();
  *(v52 + 16) = 1028;
  *(v52 + 24) = v49;
  *(v52 + 32) = v48;
  outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v45, v52 + OBJC_IVAR____TtC14SiriKitRuntime25AnnounceExecutionOverride_topNlParse, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
  *(v52 + OBJC_IVAR____TtC14SiriKitRuntime25AnnounceExecutionOverride_isTriggerlessFollowup) = v46;
  *(v52 + OBJC_IVAR____TtC14SiriKitRuntime25AnnounceExecutionOverride_isMitigated) = v50;
  *(v52 + OBJC_IVAR____TtC14SiriKitRuntime25AnnounceExecutionOverride_isMedocSupported) = v47;
  v53 = v27[2];
  v54 = v27[3];

  if (v53 >= v54 >> 1)
  {
    v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v54 > 1), v53 + 1, 1, v27);
  }

  v55 = *(v0 + 493);
  *(v0 + 160) = v51;
  *(v0 + 168) = &protocol witness table for AnnounceExecutionOverride;
  *(v0 + 136) = v52;
  v27[2] = v53 + 1;
  outlined init with take of ReferenceResolutionClientProtocol((v0 + 136), &v27[5 * v53 + 4]);
  *(v0 + 232) = v27;
  swift_endAccess();
  if ((v55 & 1) == 0)
  {
    v68 = *(v0 + 491);
    v69 = *(v0 + 492);
    v57 = *(v0 + 328);
    v56 = *(v0 + 336);
    v58 = *(v0 + 490);
    v59 = *(v0 + 488);
    v61 = *(v0 + 304);
    v60 = *(v0 + 312);
    v72 = type metadata accessor for EmptyAsrOverride();
    v62 = swift_allocObject();
    *(v62 + 16) = 6;
    *(v62 + 40) = v70;
    *(v62 + 41) = v58;
    *(v62 + 24) = v56;
    *(v62 + 32) = v57;
    *(v62 + 42) = v68;
    *(v62 + 44) = v59;
    *(v62 + 43) = v69;
    *(v62 + 48) = v61;
    *(v62 + 56) = v60;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v53 + 2, 1, v27);
    }

    v64 = v27[2];
    v63 = v27[3];
    if (v64 >= v63 >> 1)
    {
      v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v63 > 1), v64 + 1, 1, v27);
    }

    *(v0 + 200) = v72;
    *(v0 + 208) = &protocol witness table for EmptyAsrOverride;
    *(v0 + 176) = v62;
    v27[2] = v64 + 1;
    outlined init with take of ReferenceResolutionClientProtocol((v0 + 176), &v27[5 * v64 + 4]);
  }

  *(v0 + 456) = v27;
  type metadata accessor for ExecutionOverrideDecisionMaker();
  swift_initStaticObject();
  type metadata accessor for CompositeExecutionOverrides();
  inited = swift_initStackObject();
  *(v0 + 464) = inited;
  *(inited + 16) = v27;

  v66 = swift_task_alloc();
  *(v0 + 472) = v66;
  *v66 = v0;
  v66[1] = static ExecutionOverrideHandler.runExecutionOverridesAfterRCSelection(rcId:aceInputOrigin:input:isNlEmpty:isFirstRequestInSession:isFlowAwaitingInput:consecutiveEmptyInputs:endpointMode:executionOverrideContext:didPreviouslyFallbackToServer:isSpeechRequest:bridge:skipEmptyAsr:);

  return ExecutionOverrideDecisionMaker.evaluate(rules:)(inited);
}

{
  v1 = *(v0 + 480);
  v2 = *(v0 + 448);
  v3 = *(v0 + 344);

  v4 = v1;
  specialized Logger.debugF(_:_:_:_:)("SiriKitRuntime/ExecutionOverrideHandler.swift", 45, 2, "runExecutionOverridesAfterRCSelection(rcId:aceInputOrigin:input:isNlEmpty:isFirstRequestInSession:isFlowAwaitingInput:consecutiveEmptyInputs:endpointMode:executionOverrideContext:didPreviouslyFallbackToServer:isSpeechRequest:bridge:skipEmptyAsr:)", 246, 2, v2, v3, v4);

  v5 = v4[OBJC_IVAR____TtC14SiriKitRuntime23ExecutionOverrideResult_type];
  if (v5 > 3)
  {
    switch(v5)
    {
      case 4u:
        v6 = 1;
        break;
      case 6u:
        v6 = 6;
        break;
      case 8u:
        if (*(v0 + 494))
        {
          v6 = 3;
        }

        else
        {
          v6 = 2;
        }

        break;
      default:
LABEL_14:
        v6 = 0;
        break;
    }
  }

  else
  {
    if (!v4[OBJC_IVAR____TtC14SiriKitRuntime23ExecutionOverrideResult_type])
    {
      v6 = 5;
      goto LABEL_17;
    }

    if (v5 != 1)
    {
      if (v5 == 2)
      {
        v6 = 7;
        goto LABEL_17;
      }

      goto LABEL_14;
    }

    v6 = 4;
  }

LABEL_17:
  v7 = *(v0 + 440);
  specialized Logger.debugF(_:_:_:_:)("SiriKitRuntime/ExecutionOverrideHandler.swift", 45, 2, "runExecutionOverridesAfterRCSelection(rcId:aceInputOrigin:input:isNlEmpty:isFirstRequestInSession:isFlowAwaitingInput:consecutiveEmptyInputs:endpointMode:executionOverrideContext:didPreviouslyFallbackToServer:isSpeechRequest:bridge:skipEmptyAsr:)", 246, 2, *(v0 + 448), v6);
  type metadata accessor for ConversationSELFHelper();
  static ConversationSELFHelper.shared.getter();
  dispatch thunk of ConversationSELFHelper.emitExecutionOverrideInfo(rcId:executionOverrideDecision:)();

  outlined destroy of ReferenceResolutionClientProtocol?(v7, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);

  v8 = *(v0 + 8);
  v9 = *(v0 + 480);

  return v8(v9);
}

uint64_t static ExecutionOverrideHandler.runExecutionOverridesAfterRCSelection(rcId:aceInputOrigin:input:isNlEmpty:isFirstRequestInSession:isFlowAwaitingInput:consecutiveEmptyInputs:endpointMode:executionOverrideContext:didPreviouslyFallbackToServer:isSpeechRequest:bridge:skipEmptyAsr:)(uint64_t a1)
{
  *(*v1 + 480) = a1;

  return MEMORY[0x1EEE6DFA0](static ExecutionOverrideHandler.runExecutionOverridesAfterRCSelection(rcId:aceInputOrigin:input:isNlEmpty:isFirstRequestInSession:isFlowAwaitingInput:consecutiveEmptyInputs:endpointMode:executionOverrideContext:didPreviouslyFallbackToServer:isSpeechRequest:bridge:skipEmptyAsr:), 0, 0);
}

id ExecutionOverrideResult.__allocating_init(type:decision:)(_BYTE *a1, char *a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = *a2;
  v5[OBJC_IVAR____TtC14SiriKitRuntime23ExecutionOverrideResult_type] = *a1;
  v5[OBJC_IVAR____TtC14SiriKitRuntime23ExecutionOverrideResult_decision] = v6;
  v8.receiver = v5;
  v8.super_class = v2;
  return objc_msgSendSuper2(&v8, sel_init);
}

id ExecutionOverrideResult.init(type:decision:)(_BYTE *a1, char *a2)
{
  ObjectType = swift_getObjectType();
  v6 = *a2;
  v2[OBJC_IVAR____TtC14SiriKitRuntime23ExecutionOverrideResult_type] = *a1;
  v2[OBJC_IVAR____TtC14SiriKitRuntime23ExecutionOverrideResult_decision] = v6;
  v8.receiver = v2;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_init);
}

id ExecutionOverrideResult.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ExecutionOverrideResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t ExecutionOverrideType.rawValue.getter()
{
  v1 = *v0;
  if (v1 <= 3)
  {
    v2 = 0xD000000000000023;
    if (v1 != 2)
    {
      v2 = 0xD000000000000022;
    }

    v4 = 0xD000000000000021;
    if (!*v0)
    {
      v4 = 0xD000000000000016;
    }

    v5 = *v0 <= 1u;
  }

  else
  {
    v2 = 0x5253417974706D65;
    v3 = 0xD00000000000001BLL;
    if (v1 != 7)
    {
      v3 = 1701736302;
    }

    if (v1 != 6)
    {
      v2 = v3;
    }

    v4 = 0xD000000000000022;
    if (v1 != 4)
    {
      v4 = 0xD000000000000017;
    }

    v5 = *v0 <= 5u;
  }

  if (v5)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

uint64_t ExecutionOverrideType.asCNVSchemaType(isTriggerlessFollowUp:)(char a1)
{
  v2 = *v1;
  if (v2 > 3)
  {
    switch(v2)
    {
      case 4u:
        return 1;
      case 6u:
        return 6;
      case 8u:
        if (a1)
        {
          return 3;
        }

        else
        {
          return 2;
        }

      default:
        return 0;
    }
  }

  else
  {
    if (!*v1)
    {
      return 5;
    }

    if (v2 != 1)
    {
      if (v2 == 2)
      {
        return 7;
      }

      return 0;
    }

    return 4;
  }
}

SiriKitRuntime::ExecutionOverrideType_optional __swiftcall ExecutionOverrideType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ExecutionOverrideType.init(rawValue:), v3);

  v7 = 9;
  if (v5 < 9)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

unint64_t lazy protocol witness table accessor for type ExecutionOverrideType and conformance ExecutionOverrideType()
{
  result = lazy protocol witness table cache variable for type ExecutionOverrideType and conformance ExecutionOverrideType;
  if (!lazy protocol witness table cache variable for type ExecutionOverrideType and conformance ExecutionOverrideType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExecutionOverrideType and conformance ExecutionOverrideType);
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ExecutionOverrideType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  specialized RawRepresentable<>.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ExecutionOverrideType(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  specialized RawRepresentable<>.hash(into:)(v4, v2);
  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance ExecutionOverrideType@<X0>(unint64_t *a1@<X8>)
{
  result = ExecutionOverrideType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t FeatureChecker.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = AFDeviceSupportsSAEByDeviceCapabilityAndFeatureFlags();
  v3[3] = &type metadata for IntelligenceFlowFeatureFlag;
  v3[4] = lazy protocol witness table accessor for type IntelligenceFlowFeatureFlag and conformance IntelligenceFlowFeatureFlag();
  v1 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_1Tm(v3);
  *(v0 + 17) = v1 & 1;
  return v0;
}

uint64_t FeatureChecker.init()(uint64_t a1)
{
  *(v1 + 16) = AFDeviceSupportsSAEByDeviceCapabilityAndFeatureFlags();
  v4[3] = &type metadata for IntelligenceFlowFeatureFlag;
  v4[4] = lazy protocol witness table accessor for type IntelligenceFlowFeatureFlag and conformance IntelligenceFlowFeatureFlag();
  v2 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_1Tm(v4);
  *(v1 + 17) = v2 & 1;
  return v1;
}

SiriKitRuntime::FindMyAffinityScorer __swiftcall FindMyAffinityScorer.init()()
{
  v0 = 0x80000001DCA7CAD0;
  v1 = 0xD000000000000026;
  result.bundleIdentifier._object = v0;
  result.bundleIdentifier._countAndFlagsBits = v1;
  return result;
}

uint64_t specialized FindMyAffinityScorer.findMyDeviceNameIdentifiers(from:)(uint64_t a1)
{
  if (a1)
  {

    v1 = dispatch thunk of CodeGenGlobalArgs.getUsoIdentifiersFor(attributeName:)();
    if (v1)
    {
      v2 = v1;

      return v2;
    }

    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static Logger.executor);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1DC659000, v9, v10, "FindMyAffinityScorer findMyDeviceNameIdentifiers | unable to obtain device name identifiers", v11, 2u);
      MEMORY[0x1E12A2F50](v11, -1, -1);
    }
  }

  else
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static Logger.executor);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1DC659000, v5, v6, "FindMyAffinityScorer findMyDeviceNameIdentifiers | missing reference", v7, 2u);
      MEMORY[0x1E12A2F50](v7, -1, -1);
    }
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t specialized FindMyAffinityScorer.containsDeviceNameIdentifier(reference:)(uint64_t a1, double a2)
{
  v3 = type metadata accessor for UsoIdentifier();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = specialized FindMyAffinityScorer.findMyDeviceNameIdentifiers(from:)(a1);
  v8 = v7;
  v23 = *(v7 + 16);
  if (!v23)
  {

    return 0;
  }

  v9 = 0;
  v10 = v7 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v11 = (v4 + 8);
  do
  {
    if (v9 >= *(v8 + 16))
    {
      __break(1u);
      goto LABEL_24;
    }

    (*(v4 + 16))(v6, v10 + *(v4 + 72) * v9, v3);
    v12 = UsoIdentifier.namespace.getter();
    if (!v13)
    {
LABEL_3:
      (*v11)(v6, v3);
      goto LABEL_4;
    }

    if (v12 == 0x6369746E616D6573 && v13 == 0xEE0065756C61765FLL)
    {
    }

    else
    {
      v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v14 & 1) == 0)
      {
        goto LABEL_3;
      }
    }

    if (UsoIdentifier.appBundleId.getter() == 0x794D646E6946 && v15 == 0xE600000000000000)
    {

      (*v11)(v6, v3);
LABEL_22:

      return 1;
    }

    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

    (*v11)(v6, v3);
    if (v16)
    {
      goto LABEL_22;
    }

LABEL_4:
    ++v9;
  }

  while (v23 != v9);

  if (one-time initialization token for executor == -1)
  {
    goto LABEL_17;
  }

LABEL_24:
  swift_once();
LABEL_17:
  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static Logger.executor);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_1DC659000, v18, v19, "FindMyAffinityScorer containsDeviceNameIdentifier | unable to obtain identifier", v20, 2u);
    MEMORY[0x1E12A2F50](v20, -1, -1);
  }

  return 0;
}

uint64_t specialized FindMyAffinityScorer.containsDeviceTypeIdentifier(reference:)(uint64_t a1, double a2)
{
  v3 = type metadata accessor for UsoIdentifier();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = specialized FindMyAffinityScorer.findMyDeviceNameIdentifiers(from:)(a1);
  v8 = v7;
  v21 = *(v7 + 16);
  if (v21)
  {
    v9 = 0;
    v20 = 0x80000001DCA830B0;
    v10 = v7 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = (v4 + 8);
    do
    {
      if (v9 >= *(v8 + 16))
      {
        __break(1u);
        goto LABEL_19;
      }

      (*(v4 + 16))(v6, v10 + *(v4 + 72) * v9, v3);
      v12 = UsoIdentifier.namespace.getter();
      if (v13)
      {
        if (v12 == 0xD000000000000010 && v13 == v20)
        {

          (*v11)(v6, v3);
LABEL_17:

          return 1;
        }

        v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

        (*v11)(v6, v3);
        if (v14)
        {
          goto LABEL_17;
        }
      }

      else
      {
        (*v11)(v6, v3);
      }

      ++v9;
    }

    while (v21 != v9);

    if (one-time initialization token for executor == -1)
    {
      goto LABEL_13;
    }

LABEL_19:
    swift_once();
LABEL_13:
    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static Logger.executor);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1DC659000, v17, v18, "FindMyAffinityScorer containsDeviceTypeIdentifier | No findMyDeviceType", v19, 2u);
      MEMORY[0x1E12A2F50](v19, -1, -1);
    }

    return 0;
  }

  else
  {

    return 0;
  }
}

uint64_t specialized FindMyAffinityScorer.isSupported(usoTask:)(uint64_t a1)
{
  static UsoTask_CodegenConverter.convert(task:)();
  if (!v9)
  {
    goto LABEL_12;
  }

  outlined init with copy of Any?(v8, v7);
  type metadata accessor for UsoTask_getLocation_common_UserEntity();
  if (!swift_dynamicCast())
  {
    type metadata accessor for UsoTask_ping_common_UserEntity();
    if (!swift_dynamicCast())
    {
      type metadata accessor for UsoTask_request_common_UserEntity();
      if (swift_dynamicCast())
      {

        dispatch thunk of Uso_VerbTemplate_ReferenceSelect.reference.getter();

        goto LABEL_9;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v7);
LABEL_12:
      v3 = 0;
      goto LABEL_13;
    }
  }

  dispatch thunk of Uso_VerbTemplate_Reference.reference.getter();

  v2 = specialized FindMyAffinityScorer.containsDeviceNameIdentifier(reference:)(v6, v1);

  if ((v2 & 1) == 0)
  {
    dispatch thunk of Uso_VerbTemplate_Reference.reference.getter();
LABEL_9:
    v3 = specialized FindMyAffinityScorer.containsDeviceTypeIdentifier(reference:)(v6, v4);

    goto LABEL_10;
  }

  v3 = 1;
LABEL_10:
  __swift_destroy_boxed_opaque_existential_1Tm(v7);
LABEL_13:
  outlined destroy of Any?(v8);
  return v3 & 1;
}

uint64_t specialized FindMyAffinityScorer.score(input:environment:)()
{
  v0 = type metadata accessor for Parse();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for USOParse();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Input.parse.getter();
  if ((*(v1 + 88))(v3, v0) != *MEMORY[0x1E69D0168])
  {
    (*(v1 + 8))(v3, v0);
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Logger.executor);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1DC659000, v11, v12, "FindMyAffinityScorer score | unexpected parse", v13, 2u);
      MEMORY[0x1E12A2F50](v13, -1, -1);

      return 2;
    }

    return 2;
  }

  (*(v1 + 96))(v3, v0);
  (*(v5 + 32))(v7, v3, v4);
  v8 = specialized static AffinityScorerUtils.getTask(_:)();
  if (!v8)
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Logger.executor);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1DC659000, v15, v16, "FindMyAffinityScorer score | unable to obtain task from parse", v17, 2u);
      MEMORY[0x1E12A2F50](v17, -1, -1);

      (*(v5 + 8))(v7, v4);
      return 2;
    }

    goto LABEL_20;
  }

  if ((specialized FindMyAffinityScorer.isSupported(usoTask:)(v8) & 1) == 0)
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static Logger.executor);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v9 = 2;
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1DC659000, v19, v20, "FindMyAffinityScorer score | task is unsupported by FMD or doesn't contain device name identifier", v21, 2u);
      MEMORY[0x1E12A2F50](v21, -1, -1);

      (*(v5 + 8))(v7, v4);
      return v9;
    }

LABEL_20:
    (*(v5 + 8))(v7, v4);
    return 2;
  }

  (*(v5 + 8))(v7, v4);

  return 3;
}

uint64_t FlexibleAnnounceFeatureFlag.isEnabled.getter()
{
  if (one-time initialization token for forceEnabled != -1)
  {
    swift_once();
  }

  v0 = static FlexibleAnnounceFeatureFlag.forceEnabled;
  os_unfair_lock_lock((static FlexibleAnnounceFeatureFlag.forceEnabled + 20));
  v1 = *(v0 + 16);
  if (v1 == 2)
  {
    v3[3] = &type metadata for FlexibleAnnounceFeatureFlag;
    v3[4] = lazy protocol witness table accessor for type FlexibleAnnounceFeatureFlag and conformance FlexibleAnnounceFeatureFlag();
    LOBYTE(v1) = isFeatureEnabled(_:)();
    __swift_destroy_boxed_opaque_existential_1Tm(v3);
  }

  os_unfair_lock_unlock((v0 + 20));
  return v1 & 1;
}

uint64_t *FlexibleAnnounceFeatureFlag.forceEnabled.unsafeMutableAddressor()
{
  if (one-time initialization token for forceEnabled != -1)
  {
    swift_once();
  }

  return &static FlexibleAnnounceFeatureFlag.forceEnabled;
}

uint64_t static FlexibleAnnounceFeatureFlag.forceEnabled.getter()
{
  if (one-time initialization token for forceEnabled != -1)
  {
    swift_once();
  }
}

Swift::Int FlexibleAnnounceFeatureFlag.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x1E12A23F0](0);
  return Hasher._finalize()();
}

uint64_t FlowAgent.__allocating_init(flow:tasks:pluginInfo:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v8 + 130) = 0;
  *(v8 + 136) = 0;
  *(v8 + 144) = 0;
  *(v8 + 112) = a1;
  *(v8 + 120) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow010PreparableC0_pMd, &_s11SiriKitFlow010PreparableC0_pMR);

  dispatch thunk of AnyFlow.unbox<A>(as:)();

  v9 = v12 != 0;
  outlined destroy of ReferenceResolutionClientProtocol?(v11, &_s11SiriKitFlow010PreparableC0_pSgMd, &_s11SiriKitFlow010PreparableC0_pSgMR);
  *(v8 + 128) = v9;
  *(v8 + 129) = v9;
  *(v8 + 152) = a2;
  *(v8 + 160) = a3;
  return v8;
}

uint64_t FlowAgent.couldPrepareBeCalled.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 129) = a1;
  return result;
}

uint64_t FlowAgent.isCancelled.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 130) = a1;
  return result;
}

uint64_t FlowAgent.init(flow:tasks:pluginInfo:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  swift_defaultActor_initialize();
  *(v5 + 130) = 0;
  *(v5 + 136) = 0;
  *(v5 + 144) = 0;
  *(v5 + 112) = a1;
  *(v5 + 120) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow010PreparableC0_pMd, &_s11SiriKitFlow010PreparableC0_pMR);

  dispatch thunk of AnyFlow.unbox<A>(as:)();

  LOBYTE(a1) = v12 != 0;
  outlined destroy of ReferenceResolutionClientProtocol?(v11, &_s11SiriKitFlow010PreparableC0_pSgMd, &_s11SiriKitFlow010PreparableC0_pSgMR);
  *(v5 + 128) = a1;
  *(v5 + 129) = a1;
  *(v5 + 152) = a2;
  *(v5 + 160) = a3;
  return v5;
}

uint64_t FlowAgent.__allocating_init(loadedFlow:completion:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for FlowPluginInfo();
  LoadedFlowInfo.fromBundle.getter();
  v4 = FlowPluginInfo.__allocating_init(pluginBundle:)(v12);
  v5 = LoadedFlowInfo.flow.getter();
  v6 = LoadedFlowInfo.activeTasks.getter();
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  type metadata accessor for FlowAgent();
  v8 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v8 + 130) = 0;
  *(v8 + 136) = 0;
  *(v8 + 144) = 0;
  *(v8 + 112) = v5;
  *(v8 + 120) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow010PreparableC0_pMd, &_s11SiriKitFlow010PreparableC0_pMR);

  dispatch thunk of AnyFlow.unbox<A>(as:)();

  v9 = type metadata accessor for LoadedFlowInfo();
  (*(*(v9 - 8) + 8))(a1, v9);
  v10 = v12[3] != 0;
  outlined destroy of ReferenceResolutionClientProtocol?(v12, &_s11SiriKitFlow010PreparableC0_pSgMd, &_s11SiriKitFlow010PreparableC0_pSgMR);
  *(v8 + 128) = v10;
  *(v8 + 129) = v10;
  *(v8 + 152) = v7;
  *(v8 + 160) = v4;
  return v8;
}

uint64_t FlowAgent.paraphrase()(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  return MEMORY[0x1EEE6DFA0](FlowAgent.paraphrase(), v1, 0);
}

uint64_t FlowAgent.paraphrase()()
{
  v20 = v0;
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
    v4 = v0[5];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v19 = v6;
    *v5 = 136315138;
    v0[3] = *(v4 + 112);
    type metadata accessor for AnyFlow();
    lazy protocol witness table accessor for type AnyFlow and conformance AnyFlow(&lazy protocol witness table cache variable for type AnyFlow and conformance AnyFlow, 255, MEMORY[0x1E69CF990], MEMORY[0x1E69CF998]);
    v7 = dispatch thunk of CustomStringConvertible.description.getter();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v19);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_1DC659000, v2, v3, "%s paraphrase.", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x1E12A2F50](v6, -1, -1);
    MEMORY[0x1E12A2F50](v5, -1, -1);
  }

  v10 = v0[5];
  type metadata accessor for SiriEnvironment();
  v11 = *(v10 + 112);
  v0[6] = v11;
  v0[2] = v11;

  v12 = swift_task_alloc();
  v0[7] = v12;
  v13 = type metadata accessor for AnyFlow();
  v14 = type metadata accessor for ActionParaphrase();
  v15 = lazy protocol witness table accessor for type AnyFlow and conformance AnyFlow(&lazy protocol witness table cache variable for type AnyFlow and conformance AnyFlow, 255, MEMORY[0x1E69CF990], MEMORY[0x1E69CF978]);
  *v12 = v0;
  v12[1] = FlowAgent.paraphrase();
  v16 = v0[4];
  v17 = v0[5];

  return MEMORY[0x1EEE40DB8](v16, v0 + 2, &async function pointer to partial apply for closure #1 in FlowAgent.paraphrase(), v17, v13, v14, v15);
}

void FlowAgent.paraphrase()()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {

    v3 = *(v2 + 8);

    v3();
  }
}

uint64_t closure #1 in FlowAgent.paraphrase()(uint64_t a1, uint64_t a2)
{
  *(v2 + 104) = a1;
  *(v2 + 112) = a2;
  return MEMORY[0x1EEE6DFA0](closure #1 in FlowAgent.paraphrase(), 0, 0);
}

uint64_t closure #1 in FlowAgent.paraphrase()()
{
  v17 = v0;
  v1 = *(*(v0 + 112) + 112);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow013ParaphrasableC0_pMd, &_s11SiriKitFlow013ParaphrasableC0_pMR);
  dispatch thunk of AnyFlow.unbox<A>(as:)();
  if (*(v0 + 80))
  {
    outlined init with take of ReferenceResolutionClientProtocol((v0 + 56), v0 + 16);
    v2 = *(v0 + 40);
    v3 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v2);
    v4 = swift_task_alloc();
    *(v0 + 120) = v4;
    *v4 = v0;
    v4[1] = closure #1 in FlowAgent.paraphrase();
    v5 = *(v0 + 104);

    return MEMORY[0x1EEE39080](v5, v2, v3);
  }

  else
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v0 + 56, &_s11SiriKitFlow013ParaphrasableC0_pSgMd, &_s11SiriKitFlow013ParaphrasableC0_pSgMR);
    if (one-time initialization token for executor != -1)
    {
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
      v16 = v10;
      *v9 = 136315138;
      *(v0 + 96) = v1;
      type metadata accessor for AnyFlow();
      lazy protocol witness table accessor for type AnyFlow and conformance AnyFlow(&lazy protocol witness table cache variable for type AnyFlow and conformance AnyFlow, 255, MEMORY[0x1E69CF990], MEMORY[0x1E69CF998]);
      v11 = dispatch thunk of CustomStringConvertible.description.getter();
      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v16);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_1DC659000, v7, v8, "[Conversation] %s paraphrase called on non input paraphrasing flow", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      MEMORY[0x1E12A2F50](v10, -1, -1);
      MEMORY[0x1E12A2F50](v9, -1, -1);
    }

    static ActionParaphrase.noParaphrase()();
    v14 = *(v0 + 8);

    return v14();
  }
}

{

  return MEMORY[0x1EEE6DFA0](closure #1 in FlowAgent.paraphrase(), 0, 0);
}

{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

void $defer #1 () in FlowAgent.prepare()(uint64_t a1)
{
  static os_signpost_type_t.end.getter();
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  os_signpost(_:dso:log:name:signpostID:)();
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
    v4 = swift_slowAlloc();
    *v3 = 136315138;
    v9 = v4;
    type metadata accessor for AnyFlow();
    lazy protocol witness table accessor for type AnyFlow and conformance AnyFlow(&lazy protocol witness table cache variable for type AnyFlow and conformance AnyFlow, 255, MEMORY[0x1E69CF990], MEMORY[0x1E69CF998]);
    v5 = dispatch thunk of CustomStringConvertible.description.getter();
    v7 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v6, &v9);

    *(v3 + 4) = v7;
    _os_log_impl(&dword_1DC659000, oslog, v2, "%s prepare completed.", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
    MEMORY[0x1E12A2F50](v4, -1, -1);
    MEMORY[0x1E12A2F50](v3, -1, -1);
  }

  else
  {
  }
}

uint64_t closure #1 in FlowAgent.prepare()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v14 - v7;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  outlined init with copy of ReferenceResolutionClientProtocol(a2, v15);
  v11 = lazy protocol witness table accessor for type AnyFlow and conformance AnyFlow(&lazy protocol witness table cache variable for type FlowAgent and conformance FlowAgent, v10, type metadata accessor for FlowAgent, &protocol conformance descriptor for FlowAgent);
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = v11;
  v12[4] = a1;
  outlined init with take of ReferenceResolutionClientProtocol(v15, (v12 + 5));
  swift_retain_n();
  result = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC11SiriKitFlow15PrepareResponseV_Tt2g5(0, 0, v8, &async function pointer to partial apply for closure #1 in closure #1 in FlowAgent.prepare(), v12);
  *a3 = result;
  return result;
}

uint64_t closure #1 in closure #1 in FlowAgent.prepare()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[7] = a1;
  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in FlowAgent.prepare(), a4, 0);
}

uint64_t closure #1 in closure #1 in FlowAgent.prepare()()
{
  outlined init with copy of ReferenceResolutionClientProtocol(*(v0 + 72), v0 + 16);
  v1 = swift_allocObject();
  *(v0 + 80) = v1;
  outlined init with take of ReferenceResolutionClientProtocol((v0 + 16), v1 + 16);
  v2 = swift_task_alloc();
  *(v0 + 88) = v2;
  v3 = type metadata accessor for PrepareResponse();
  *v2 = v0;
  v2[1] = closure #1 in closure #1 in FlowAgent.prepare();
  v4 = *(v0 + 56);

  return MEMORY[0x1EEE412A8](v4, partial apply for closure #1 in closure #1 in closure #1 in FlowAgent.prepare(), v1, v3);
}

{
  v2 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = *(v2 + 64);
    v4 = closure #1 in closure #1 in FlowAgent.prepare();
  }

  else
  {
    v5 = *(v2 + 64);

    v4 = closure #1 in closure #1 in FlowAgent.prepare();
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

{
  *(*(v0 + 64) + 144) = 0;

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = *(v0 + 64);

  *(v1 + 144) = 0;

  v2 = *(v0 + 8);

  return v2();
}

uint64_t closure #1 in closure #1 in closure #1 in FlowAgent.prepare()(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);

  dispatch thunk of PreparableFlow.prepare(completion:)();
}

uint64_t FlowAgent.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t partial apply for closure #1 in FlowAgent.paraphrase()(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return closure #1 in FlowAgent.paraphrase()(a1, v1);
}

uint64_t dispatch thunk of FlowAgent.on(input:)(uint64_t a1)
{
  v6 = (*(*v1 + 272) + **(*v1 + 272));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = AppShortcutStateProvider.intentsStates(appShortcutTargets:conditionalIntentMetadata:);

  return v6(a1);
}

uint64_t dispatch thunk of FlowAgent.paraphrase()(uint64_t a1)
{
  v6 = (*(*v1 + 280) + **(*v1 + 280));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return v6(a1);
}

uint64_t dispatch thunk of FlowAgent.execute(timeout:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 288) + **(*v2 + 288));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return v8(a1, a2);
}

uint64_t dispatch thunk of FlowAgent.prepare()(uint64_t a1)
{
  v6 = (*(*v1 + 296) + **(*v1 + 296));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return v6(a1);
}

uint64_t partial apply for closure #1 in closure #1 in FlowAgent.prepare()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in closure #1 in FlowAgent.prepare()(a1, v4, v5, v6, (v1 + 5));
}

uint64_t FlowExtensionConnection.__allocating_init(nsExtension:onConnectionInterrupted:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  FlowExtensionConnection.init(nsExtension:onConnectionInterrupted:)(a1, a2, a3);
  return v6;
}

void *FlowExtensionConnection.init(nsExtension:onConnectionInterrupted:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v3 + 152) = 0;
  *(v3 + 136) = 0u;
  *(v3 + 120) = 0u;
  *(v3 + 104) = 0u;
  *(v3 + 88) = 0u;
  outlined init with copy of ReferenceResolutionClientProtocol(a1, v3 + 32);
  v12 = a1[3];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v12);
  v22 = (*(v13 + 8))(v12, v13);
  v23 = v14;
  MEMORY[0x1E12A1580](60, 0xE100000000000000);
  UUID.init()();
  v15 = UUID.uuidString.getter();
  v17 = v16;
  (*(v9 + 8))(v11, v8);
  MEMORY[0x1E12A1580](v15, v17);

  MEMORY[0x1E12A1580](62, 0xE100000000000000);
  v19 = v22;
  v18 = v23;
  v4[2] = v22;
  v4[3] = v18;
  v4[9] = a2;
  v4[10] = a3;
  type metadata accessor for InterruptibleTaskManager();
  v20 = swift_allocObject();
  v20[4] = MEMORY[0x1E69E7CC8];
  v20[5] = 0;
  v20[2] = v19;
  v20[3] = v18;
  v4[20] = v20;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v4;
}

uint64_t FlowExtensionConnection.withRemoteConversationConnection<A>(execute:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[8] = a4;
  v5[9] = v4;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  v7 = type metadata accessor for OSSignpostID();
  v5[10] = v7;
  v5[11] = *(v7 - 8);
  v5[12] = swift_task_alloc();
  v8 = type metadata accessor for OSSignposter();
  v5[13] = v8;
  v5[14] = *(v8 - 8);
  v5[15] = swift_task_alloc();
  v11 = type metadata accessor for InterruptibleTaskResult(0, a4, v9, v10);
  v5[16] = v11;
  v5[17] = *(v11 - 8);
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v12 = static MessageBusActor.shared;
  v5[20] = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](FlowExtensionConnection.withRemoteConversationConnection<A>(execute:), v12, 0);
}

uint64_t FlowExtensionConnection.withRemoteConversationConnection<A>(execute:)()
{
  v44 = v0;
  v1 = v0[9];
  v2 = *(v1 + 88);
  v0[21] = v2;
  if (v2)
  {
    v3 = v0[7];
    v4 = v0[8];
    v5 = v0[6];
    v6 = *(v1 + 96);
    v7 = swift_allocObject();
    v0[22] = v7;
    v7[2] = v4;
    v7[3] = v5;
    v7[4] = v3;
    v7[5] = v2;
    v7[6] = v6;
    swift_unknownObjectRetain_n();

    v8 = swift_task_alloc();
    v0[23] = v8;
    *v8 = v0;
    v8[1] = FlowExtensionConnection.withRemoteConversationConnection<A>(execute:);
    v9 = v0[19];
    v10 = v0[8];
    v11 = &async function pointer to partial apply for closure #1 in FlowExtensionConnection.withRemoteConversationConnection<A>(execute:);
    v12 = v7;
  }

  else
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Logger.executor);

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = v0[9];
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v43[0] = v19;
      *v18 = 136315138;
      *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v17 + 16), *(v17 + 24), v43);
      _os_log_impl(&dword_1DC659000, v15, v16, "Flow Extension %s is not active, beginning new request.", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      MEMORY[0x1E12A2F50](v19, -1, -1);
      MEMORY[0x1E12A2F50](v18, -1, -1);
    }

    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v21 = v0[14];
    v20 = v0[15];
    v22 = v0[13];
    v23 = v0[9];
    v24 = __swift_project_value_buffer(v22, static Signposter.executor);
    (*(v21 + 16))(v20, v24, v22);
    static OSSignpostID.exclusive.getter();
    v25 = swift_slowAlloc();
    *v25 = 0;
    v26 = OSSignposter.logHandle.getter();
    v27 = static os_signpost_type_t.begin.getter();
    v28 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_1DC659000, v26, v27, v28, "FlowExtensionBringup", "", v25, 2u);
    closure #2 in FlowExtensionConnection.withRemoteConversationConnection<A>(execute:)(v23, v43);
    v29 = v0[14];
    v30 = v0[12];
    v39 = v0[13];
    v40 = v0[15];
    v32 = v0[10];
    v31 = v0[11];
    v33 = v0[7];
    v41 = v0[6];
    v42 = v0[8];
    v34 = static os_signpost_type_t.end.getter();
    v35 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_1DC659000, v26, v34, v35, "FlowExtensionBringup", "", v25, 2u);

    v38 = *v43;
    v0[25] = v43[0];
    MEMORY[0x1E12A2F50](v25, -1, -1);
    (*(v31 + 8))(v30, v32);
    (*(v29 + 8))(v40, v39);
    v36 = swift_allocObject();
    v0[26] = v36;
    *(v36 + 16) = v42;
    *(v36 + 24) = v41;
    *(v36 + 32) = v33;
    *(v36 + 40) = v38;

    swift_unknownObjectRetain();
    v37 = swift_task_alloc();
    v0[27] = v37;
    *v37 = v0;
    v37[1] = FlowExtensionConnection.withRemoteConversationConnection<A>(execute:);
    v9 = v0[18];
    v10 = v0[8];
    v11 = &async function pointer to partial apply for closure #3 in FlowExtensionConnection.withRemoteConversationConnection<A>(execute:);
    v12 = v36;
  }

  return InterruptibleTaskManager.perform<A>(_:)(v9, v11, v12, v10);
}

{
  v2 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = *(v2 + 160);
    v4 = FlowExtensionConnection.withRemoteConversationConnection<A>(execute:);
  }

  else
  {
    v5 = *(v2 + 160);

    v4 = FlowExtensionConnection.withRemoteConversationConnection<A>(execute:);
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

{
  v1 = v0[16];
  v2 = v0[5];

  InterruptibleTaskResult.get()(v1, v2);
  (*(v0[17] + 8))(v0[19], v0[16]);
  swift_unknownObjectRelease();

  v3 = v0[1];

  return v3();
}

{
  v2 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v3 = *(v2 + 160);
    v4 = FlowExtensionConnection.withRemoteConversationConnection<A>(execute:);
  }

  else
  {
    v5 = *(v2 + 160);

    v4 = FlowExtensionConnection.withRemoteConversationConnection<A>(execute:);
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

{
  v1 = v0[16];
  v2 = v0[5];

  InterruptibleTaskResult.get()(v1, v2);
  (*(v0[17] + 8))(v0[18], v0[16]);
  swift_unknownObjectRelease();

  v3 = v0[1];

  return v3();
}

{

  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

void closure #2 in FlowExtensionConnection.withRemoteConversationConnection<A>(execute:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v38 - v9;
  v11 = a1[7];
  v12 = a1[8];
  __swift_project_boxed_opaque_existential_1(a1 + 4, v11);
  v13 = (*(v12 + 24))(0, 0, v11, v12);
  if (v2)
  {
    *&aBlock = 0;
    *(&aBlock + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(53);
    MEMORY[0x1E12A1580](0xD000000000000033, 0x80000001DCA833D0);
    v45[0] = v2;
    v14 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v15 = String.init<A>(describing:)();
    MEMORY[0x1E12A1580](v15);

    v16 = aBlock;
    lazy protocol witness table accessor for type FlowExtensionConnection.ExtensionError and conformance FlowExtensionConnection.ExtensionError();
    swift_allocError();
    *v17 = v16;
    swift_willThrow();

    return;
  }

  *&aBlock = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSCopying_pMd, &_sSo9NSCopying_pMR);
  v18 = type metadata accessor for UUID();
  v19 = swift_dynamicCast();
  (*(*(v18 - 8) + 56))(v7, v19 ^ 1u, 1, v18);
  outlined init with take of UUID?(v7, v10);
  v20 = a1[7];
  v21 = a1[8];
  __swift_project_boxed_opaque_existential_1(a1 + 4, v20);
  (*(v21 + 32))(&aBlock, v10, v20, v21);
  if (!v41)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(&aBlock, &_s14SiriKitRuntime26NSExtensionContextProtocol_pSgMd, &_s14SiriKitRuntime26NSExtensionContextProtocol_pSgMR);
    *&aBlock = 0;
    *(&aBlock + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(38);

    *&aBlock = 0xD000000000000024;
    *(&aBlock + 1) = 0x80000001DCA83410;
    MEMORY[0x1E12A1580](a1[2], a1[3]);
    v31 = aBlock;
    lazy protocol witness table accessor for type FlowExtensionConnection.ExtensionError and conformance FlowExtensionConnection.ExtensionError();
    swift_allocError();
    *v32 = v31;
    swift_willThrow();
    outlined destroy of ReferenceResolutionClientProtocol?(v10, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    return;
  }

  outlined init with take of ReferenceResolutionClientProtocol(&aBlock, v45);
  v22 = v46;
  v23 = v47;
  __swift_project_boxed_opaque_existential_1(v45, v46);
  v24 = (*(v23 + 8))(v22, v23);
  if (!v24)
  {
    *&aBlock = 0;
    *(&aBlock + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(40);

    *&aBlock = 0xD000000000000026;
    *(&aBlock + 1) = 0x80000001DCA83440;
    MEMORY[0x1E12A1580](a1[2], a1[3]);
    v33 = aBlock;
    lazy protocol witness table accessor for type FlowExtensionConnection.ExtensionError and conformance FlowExtensionConnection.ExtensionError();
    swift_allocError();
    *v34 = v33;
    swift_willThrow();
LABEL_10:
    outlined destroy of ReferenceResolutionClientProtocol?(v10, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    goto LABEL_11;
  }

  v25 = v24;
  v42 = partial apply for closure #1 in closure #2 in FlowExtensionConnection.withRemoteConversationConnection<A>(execute:);
  v43 = a1;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v40 = thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ();
  v41 = &block_descriptor_11;
  v26 = _Block_copy(&aBlock);

  v27 = [v25 remoteObjectProxyWithErrorHandler_];
  _Block_release(v26);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  outlined init with copy of Any(v44, &aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime21RemoteConversationXPC_pMd, &_s14SiriKitRuntime21RemoteConversationXPC_pMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *&aBlock = 0;
    *(&aBlock + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(82);
    MEMORY[0x1E12A1580](0xD000000000000020, 0x80000001DCA83470);
    MEMORY[0x1E12A1580](a1[2], a1[3]);
    MEMORY[0x1E12A1580](0xD00000000000002ELL, 0x80000001DCA834A0);
    __swift_project_boxed_opaque_existential_1(v44, v44[3]);
    v38[0] = swift_getDynamicType();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXpMd, &_sypXpMR);
    v35 = String.init<A>(describing:)();
    MEMORY[0x1E12A1580](v35);

    v36 = aBlock;
    lazy protocol witness table accessor for type FlowExtensionConnection.ExtensionError and conformance FlowExtensionConnection.ExtensionError();
    swift_allocError();
    *v37 = v36;
    swift_willThrow();

    __swift_destroy_boxed_opaque_existential_1Tm(v44);
    goto LABEL_10;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v44);
  outlined destroy of ReferenceResolutionClientProtocol?(v10, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  swift_getObjectType();
  v28 = RemoteConversationXPC.sendableWrapper.getter();
  v30 = v29;
  swift_unknownObjectRelease();
  a1[11] = v28;
  a1[12] = v30;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  outlined init with copy of ReferenceResolutionClientProtocol(v45, &aBlock);
  swift_beginAccess();
  outlined assign with take of NSExtensionContextProtocol?(&aBlock, (a1 + 13));
  swift_endAccess();
  *a2 = v28;
  a2[1] = v30;
LABEL_11:
  __swift_destroy_boxed_opaque_existential_1Tm(v45);
}

uint64_t closure #1 in closure #2 in FlowExtensionConnection.withRemoteConversationConnection<A>(execute:)(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v24[-1] - v5;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Logger.executor);

  v8 = a1;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v24[0] = v12;
    *v11 = 136315394;
    *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(a2 + 16), *(a2 + 24), v24);
    *(v11 + 12) = 2080;
    v23 = a1;
    v13 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v14 = String.init<A>(describing:)();
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, v24);

    *(v11 + 14) = v16;
    _os_log_impl(&dword_1DC659000, v9, v10, "Error communicating with Siri Flow Extension %s: %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v12, -1, -1);
    MEMORY[0x1E12A2F50](v11, -1, -1);
  }

  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v6, 1, 1, v17);

  v18 = a1;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v19 = static MessageBusActor.shared;
  v20 = lazy protocol witness table accessor for type MessageBusActor and conformance MessageBusActor();
  v21 = swift_allocObject();
  v21[2] = v19;
  v21[3] = v20;
  v21[4] = a2;
  v21[5] = a1;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v6, &async function pointer to partial apply for closure #1 in closure #1 in closure #2 in FlowExtensionConnection.withRemoteConversationConnection<A>(execute:), v21);
}

uint64_t closure #1 in closure #1 in closure #2 in FlowExtensionConnection.withRemoteConversationConnection<A>(execute:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in closure #2 in FlowExtensionConnection.withRemoteConversationConnection<A>(execute:), v6, 0);
}

uint64_t closure #1 in closure #1 in closure #2 in FlowExtensionConnection.withRemoteConversationConnection<A>(execute:)()
{
  (*(v0[5] + 72))(v0[6]);
  FlowExtensionConnection.invalidate()();
  v1 = v0[1];

  return v1();
}

SiriKitRuntime::RemoteConversationConnectionInvalidationResult __swiftcall FlowExtensionConnection.invalidate()()
{
  v1 = v0;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.executor);
  Logger.debugF(file:function:)("SiriKitRuntime/FlowExtensionConnection.swift", 44, 2, "invalidate()", 12, 2);
  v3 = *(v0 + 160);
  swift_beginAccess();
  v4 = *(*(v3 + 32) + 16) == 0;
  *(v1 + 88) = 0;
  *(v1 + 96) = 0;
  swift_unknownObjectRelease();
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  swift_beginAccess();
  outlined assign with take of NSExtensionContextProtocol?(v6, v1 + 104);
  swift_endAccess();
  InterruptibleTaskManager.invalidate()();
  return v4;
}

uint64_t closure #3 in FlowExtensionConnection.withRemoteConversationConnection<A>(execute:)(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = (a2 + *a2);
  v9 = swift_task_alloc();
  *(v5 + 16) = v9;
  *v9 = v5;
  v9[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return v11(a1, a4, a5);
}

uint64_t FlowExtensionConnection.withRemoteConversationConnectionIfValid<A>(execute:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[8] = a4;
  v5[9] = v4;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  v6 = type metadata accessor for InterruptibleTaskResult(0, a4, a3, a4);
  v5[10] = v6;
  v5[11] = *(v6 - 8);
  v5[12] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v7 = static MessageBusActor.shared;
  v5[13] = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](FlowExtensionConnection.withRemoteConversationConnectionIfValid<A>(execute:), v7, 0);
}

uint64_t FlowExtensionConnection.withRemoteConversationConnectionIfValid<A>(execute:)()
{
  v1 = v0[9];
  v2 = *(v1 + 88);
  v0[14] = v2;
  v3 = *(v1 + 96);
  if (v2)
  {
    v4 = v0[7];
    v5 = v0[8];
    v6 = v0[6];
    v7 = swift_allocObject();
    v0[15] = v7;
    v7[2] = v5;
    v7[3] = v6;
    v7[4] = v4;
    v7[5] = v2;
    v7[6] = v3;
    swift_unknownObjectRetain_n();

    v8 = swift_task_alloc();
    v0[16] = v8;
    *v8 = v0;
    v8[1] = FlowExtensionConnection.withRemoteConversationConnectionIfValid<A>(execute:);
    v9 = v0[12];
    v10 = v0[8];

    return InterruptibleTaskManager.perform<A>(_:)(v9, &async function pointer to partial apply for closure #1 in FlowExtensionConnection.withRemoteConversationConnectionIfValid<A>(execute:), v7, v10);
  }

  else
  {
    v14 = (v0[6] + *v0[6]);
    v12 = swift_task_alloc();
    v0[18] = v12;
    *v12 = v0;
    v12[1] = FlowExtensionConnection.withRemoteConversationConnectionIfValid<A>(execute:);
    v13 = v0[5];

    return v14(v13, 0, v3);
  }
}

{
  v2 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = *(v2 + 104);
    v4 = FlowExtensionConnection.withRemoteConversationConnectionIfValid<A>(execute:);
  }

  else
  {
    v5 = *(v2 + 104);

    v4 = FlowExtensionConnection.withRemoteConversationConnectionIfValid<A>(execute:);
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

{
  v1 = v0[17];
  v2 = v0[10];
  v3 = v0[5];

  InterruptibleTaskResult.get()(v2, v3);
  (*(v0[11] + 8))(v0[12], v0[10]);
  swift_unknownObjectRelease();
  if (!v1)
  {
    (*(*(v0[8] - 8) + 56))(v0[5], 0, 1);
  }

  v4 = v0[1];

  return v4();
}

{
  v2 = *v1;
  *(*v1 + 152) = v0;

  v3 = *(v2 + 104);
  if (v0)
  {
    v4 = FlowExtensionConnection.withRemoteConversationConnectionIfValid<A>(execute:);
  }

  else
  {
    v4 = FlowExtensionConnection.withRemoteConversationConnectionIfValid<A>(execute:);
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

{

  (*(*(v0[8] - 8) + 56))(v0[5], 0, 1);

  v1 = v0[1];

  return v1();
}

{

  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t FlowExtensionConnection.kill()()
{
  *(v1 + 40) = v0;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](FlowExtensionConnection.kill(), v2, 0);
}

{
  v13 = v0;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.executor);
  Logger.debugF(file:function:)("SiriKitRuntime/FlowExtensionConnection.swift", 44, 2, "kill()", 6, 2);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 40);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136315138;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v4 + 16), *(v4 + 24), &v12);
    _os_log_impl(&dword_1DC659000, v2, v3, "Killing process for %s with SIGKILL", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x1E12A2F50](v6, -1, -1);
    MEMORY[0x1E12A2F50](v5, -1, -1);
  }

  v7 = *(v0 + 40);
  v8 = v7[7];
  v9 = v7[8];
  __swift_project_boxed_opaque_existential_1(v7 + 4, v8);
  (*(v9 + 40))(9, v8, v9);
  FlowExtensionConnection.invalidate()();
  v10 = *(v0 + 8);

  return v10();
}

unint64_t FlowExtensionConnection.ExtensionError.errorDescription.getter(uint64_t a1, uint64_t a2)
{
  _StringGuts.grow(_:)(27);

  MEMORY[0x1E12A1580](a1, a2);
  return 0xD000000000000019;
}

void *FlowExtensionConnection.deinit()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));

  swift_unknownObjectRelease();
  outlined destroy of ReferenceResolutionClientProtocol?(v0 + 104, &_s14SiriKitRuntime26NSExtensionContextProtocol_pSgMd, &_s14SiriKitRuntime26NSExtensionContextProtocol_pSgMR);

  return v0;
}

uint64_t FlowExtensionConnection.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));

  swift_unknownObjectRelease();
  outlined destroy of ReferenceResolutionClientProtocol?(v0 + 104, &_s14SiriKitRuntime26NSExtensionContextProtocol_pSgMd, &_s14SiriKitRuntime26NSExtensionContextProtocol_pSgMR);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for RemoteConversationConnectionProviding.withRemoteConversationConnection<A>(execute:) in conformance FlowExtensionConnection(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return FlowExtensionConnection.withRemoteConversationConnection<A>(execute:)(a1, a2, a3, a4);
}

uint64_t protocol witness for RemoteConversationConnectionProviding.withRemoteConversationConnectionIfValid<A>(execute:) in conformance FlowExtensionConnection(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return FlowExtensionConnection.withRemoteConversationConnectionIfValid<A>(execute:)(a1, a2, a3, a4);
}

uint64_t partial apply for closure #3 in FlowExtensionConnection.withRemoteConversationConnection<A>(execute:)(uint64_t a1)
{
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return closure #3 in FlowExtensionConnection.withRemoteConversationConnection<A>(execute:)(a1, v4, v5, v6, v7);
}

uint64_t partial apply for closure #1 in FlowExtensionConnection.withRemoteConversationConnection<A>(execute:)(uint64_t a1)
{
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in FlowExtensionConnection.withRemoteConversationConnection<A>(execute:)(a1, v4, v5, v6, v7);
}

uint64_t outlined assign with take of NSExtensionContextProtocol?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime26NSExtensionContextProtocol_pSgMd, &_s14SiriKitRuntime26NSExtensionContextProtocol_pSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in FlowExtensionConnection.withRemoteConversationConnectionIfValid<A>(execute:)(uint64_t a1)
{
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in FlowExtensionConnection.withRemoteConversationConnectionIfValid<A>(execute:)(a1, v4, v5, v6, v7);
}

unint64_t lazy protocol witness table accessor for type FlowExtensionConnection.ExtensionError and conformance FlowExtensionConnection.ExtensionError()
{
  result = lazy protocol witness table cache variable for type FlowExtensionConnection.ExtensionError and conformance FlowExtensionConnection.ExtensionError;
  if (!lazy protocol witness table cache variable for type FlowExtensionConnection.ExtensionError and conformance FlowExtensionConnection.ExtensionError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FlowExtensionConnection.ExtensionError and conformance FlowExtensionConnection.ExtensionError);
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in closure #2 in FlowExtensionConnection.withRemoteConversationConnection<A>(execute:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return closure #1 in closure #1 in closure #2 in FlowExtensionConnection.withRemoteConversationConnection<A>(execute:)(a1, v4, v5, v7, v6);
}

void FlowExtensionContext.__allocating_init(inputItems:listenerEndpoint:contextUUID:overrideFlowExtension:overrideSiriKitRuntime:overrideExtensionId:overrideIntentTopics:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v70 = a8;
  v62 = a5;
  v63 = a7;
  v67 = a4;
  v68 = a6;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v13);
  v65 = v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v59 = v54 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = v54 - v18;
  v66 = v9;
  v20 = objc_allocWithZone(v9);
  v21 = &v20[OBJC_IVAR___SKRFlowExtensionContext_overrideFlowExtension];
  *v21 = 0;
  v21[1] = 0;
  v60 = OBJC_IVAR___SKRFlowExtensionContext_overrideSiriKitRuntime;
  *&v20[OBJC_IVAR___SKRFlowExtensionContext_overrideSiriKitRuntime] = 0;
  v22 = &v20[OBJC_IVAR___SKRFlowExtensionContext_overrideExtensionId];
  *v22 = 0;
  v22[1] = 0;
  v61 = OBJC_IVAR___SKRFlowExtensionContext_overrideIntentTopics;
  *&v20[OBJC_IVAR___SKRFlowExtensionContext_overrideIntentTopics] = 0;
  *&v20[OBJC_IVAR___SKRFlowExtensionContext____lazy_storage___remoteConversationService] = 0;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v71 = a9;
  v23 = type metadata accessor for Logger();
  __swift_project_value_buffer(v23, static Logger.executor);
  outlined init with copy of UUID?(a3, v19);
  v24 = a2;
  v57 = a2;
  v25 = v24;

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.debug.getter();

  v58 = v27;
  v28 = os_log_type_enabled(v26, v27);
  v29 = MEMORY[0x1E69E7CA0];
  v69 = a1;
  v64 = v25;
  if (v28)
  {
    v30 = swift_slowAlloc();
    v54[1] = v13;
    v31 = v30;
    v55 = swift_slowAlloc();
    v73 = v55;
    *v31 = 136315650;
    v32 = MEMORY[0x1E12A16D0](a1, v29 + 8);
    v56 = a3;
    v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, &v73);

    *(v31 + 4) = v34;
    *(v31 + 12) = 2080;
    v72 = v57;
    v35 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo21NSXPCListenerEndpointCSgMd, &_sSo21NSXPCListenerEndpointCSgMR);
    v36 = String.init<A>(describing:)();
    v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v37, &v73);

    *(v31 + 14) = v38;
    *(v31 + 22) = 2080;
    outlined init with copy of UUID?(v19, v59);
    v39 = String.init<A>(describing:)();
    v41 = v40;
    outlined destroy of UUID?(v19);
    v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v41, &v73);
    a3 = v56;

    *(v31 + 24) = v42;
    _os_log_impl(&dword_1DC659000, v26, v58, "FlowExtensionContext inputItems: %s, listenerEndpoint: %s, contextUUID: %s", v31, 0x20u);
    v43 = v55;
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v43, -1, -1);
    MEMORY[0x1E12A2F50](v31, -1, -1);
  }

  else
  {

    outlined destroy of UUID?(v19);
  }

  v44 = v62;
  *v21 = v67;
  v21[1] = v44;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *&v20[v60] = v68;

  v45 = v70;
  *v22 = v63;
  v22[1] = v45;

  *&v20[v61] = v71;

  v46.super.isa = Array._bridgeToObjectiveC()().super.isa;
  v47 = a3;
  v48 = v65;
  outlined init with copy of UUID?(a3, v65);
  v49 = type metadata accessor for UUID();
  v50 = *(v49 - 8);
  isa = 0;
  if ((*(v50 + 48))(v48, 1, v49) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v50 + 8))(v48, v49);
  }

  v74.receiver = v20;
  v74.super_class = v66;
  v52 = v64;
  v53 = objc_msgSendSuper2(&v74, sel_initWithInputItems_listenerEndpoint_contextUUID_, v46.super.isa, v64, isa);

  if (v53)
  {
    outlined destroy of UUID?(v47);

    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

void FlowExtensionContext.init(inputItems:listenerEndpoint:contextUUID:overrideFlowExtension:overrideSiriKitRuntime:overrideExtensionId:overrideIntentTopics:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v70 = a8;
  v63 = a5;
  v64 = a7;
  v67 = a4;
  v68 = a6;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v14);
  v66 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v60 = &v55 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v55 - v19;
  v21 = &v9[OBJC_IVAR___SKRFlowExtensionContext_overrideFlowExtension];
  *v21 = 0;
  v21[1] = 0;
  v61 = OBJC_IVAR___SKRFlowExtensionContext_overrideSiriKitRuntime;
  *&v9[OBJC_IVAR___SKRFlowExtensionContext_overrideSiriKitRuntime] = 0;
  v22 = &v9[OBJC_IVAR___SKRFlowExtensionContext_overrideExtensionId];
  *v22 = 0;
  v22[1] = 0;
  v62 = OBJC_IVAR___SKRFlowExtensionContext_overrideIntentTopics;
  *&v9[OBJC_IVAR___SKRFlowExtensionContext_overrideIntentTopics] = 0;
  *&v9[OBJC_IVAR___SKRFlowExtensionContext____lazy_storage___remoteConversationService] = 0;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v71 = a9;
  v23 = type metadata accessor for Logger();
  __swift_project_value_buffer(v23, static Logger.executor);
  outlined init with copy of UUID?(a3, v20);
  v24 = a2;
  v58 = a2;
  v25 = v24;

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.debug.getter();

  v59 = v27;
  v28 = os_log_type_enabled(v26, v27);
  v29 = MEMORY[0x1E69E7CA0];
  v69 = a1;
  v65 = v25;
  if (v28)
  {
    v30 = swift_slowAlloc();
    v55 = v14;
    v31 = v30;
    v56 = swift_slowAlloc();
    v73 = v56;
    *v31 = 136315650;
    v32 = MEMORY[0x1E12A16D0](a1, v29 + 8);
    v57 = a3;
    v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, &v73);

    *(v31 + 4) = v34;
    *(v31 + 12) = 2080;
    v72 = v58;
    v35 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo21NSXPCListenerEndpointCSgMd, &_sSo21NSXPCListenerEndpointCSgMR);
    v36 = String.init<A>(describing:)();
    v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v37, &v73);

    *(v31 + 14) = v38;
    *(v31 + 22) = 2080;
    outlined init with copy of UUID?(v20, v60);
    v39 = String.init<A>(describing:)();
    v41 = v40;
    outlined destroy of UUID?(v20);
    v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v41, &v73);
    a3 = v57;

    *(v31 + 24) = v42;
    _os_log_impl(&dword_1DC659000, v26, v59, "FlowExtensionContext inputItems: %s, listenerEndpoint: %s, contextUUID: %s", v31, 0x20u);
    v43 = v56;
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v43, -1, -1);
    MEMORY[0x1E12A2F50](v31, -1, -1);
  }

  else
  {

    outlined destroy of UUID?(v20);
  }

  v44 = v63;
  *v21 = v67;
  v21[1] = v44;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *&v10[v61] = v68;

  v45 = v70;
  *v22 = v64;
  v22[1] = v45;

  *&v10[v62] = v71;

  v46.super.isa = Array._bridgeToObjectiveC()().super.isa;
  v47 = a3;
  v48 = v66;
  outlined init with copy of UUID?(a3, v66);
  v49 = type metadata accessor for UUID();
  v50 = *(v49 - 8);
  isa = 0;
  if ((*(v50 + 48))(v48, 1, v49) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v50 + 8))(v48, v49);
  }

  v52 = type metadata accessor for FlowExtensionContext();
  v74.receiver = v10;
  v74.super_class = v52;
  v53 = v65;
  v54 = objc_msgSendSuper2(&v74, sel_initWithInputItems_listenerEndpoint_contextUUID_, v46.super.isa, v65, isa);

  if (v54)
  {
    outlined destroy of UUID?(v47);

    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

id FlowExtensionContext.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t FlowExtensionContext.init()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v7 - v1;
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v5 = (*(ObjectType + 216))(MEMORY[0x1E69E7CC0]);
  swift_deallocPartialClassInstance();
  return v5;
}

id FlowExtensionContext.__allocating_init(inputItems:)(uint64_t a1)
{
  v2 = objc_allocWithZone(v1);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v4 = [v2 initWithInputItems_];

  return v4;
}

uint64_t FlowExtensionContext.init(inputItems:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9 - v3;
  ObjectType = swift_getObjectType();
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = (*(ObjectType + 216))(a1, 0, v4, 0, 0, 0, 0, 0, MEMORY[0x1E69E7CC0]);
  swift_deallocPartialClassInstance();
  return v7;
}

id FlowExtensionContext.__allocating_init(inputItems:listenerEndpoint:contextUUID:)(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v7.super.isa = Array._bridgeToObjectiveC()().super.isa;

  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  isa = 0;
  if ((*(v9 + 48))(a3, 1, v8) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v9 + 8))(a3, v8);
  }

  v11 = [objc_allocWithZone(v4) initWithInputItems:v7.super.isa listenerEndpoint:a2 contextUUID:isa];

  return v11;
}

uint64_t FlowExtensionContext.init(inputItems:listenerEndpoint:contextUUID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v12 - v7;
  ObjectType = swift_getObjectType();
  outlined init with copy of UUID?(a3, v8);
  v10 = (*(ObjectType + 216))(a1, a2, v8, 0, 0, 0, 0, 0, MEMORY[0x1E69E7CC0]);
  outlined destroy of UUID?(a3);
  swift_deallocPartialClassInstance();
  return v10;
}

id @objc static FlowExtensionContext._extensionAuxiliaryVendorProtocol()(uint64_t a1, uint64_t a2, void *a3, void **a4, uint64_t a5)
{
  if (*a3 == -1)
  {
    v6 = *a4;
  }

  else
  {
    swift_once();
    v6 = *a4;
  }

  return v6;
}

void *FlowExtensionContext.remoteConversationService.getter()
{
  v1 = OBJC_IVAR___SKRFlowExtensionContext____lazy_storage___remoteConversationService;
  if (*&v0[OBJC_IVAR___SKRFlowExtensionContext____lazy_storage___remoteConversationService])
  {
    v2 = *&v0[OBJC_IVAR___SKRFlowExtensionContext____lazy_storage___remoteConversationService];
  }

  else
  {
    v2 = closure #1 in FlowExtensionContext.remoteConversationService.getter(v0);
    *&v0[v1] = v2;
  }

  return v2;
}

void *closure #1 in FlowExtensionContext.remoteConversationService.getter(char *a1)
{
  v2 = type metadata accessor for FlowPluginBundleImpl();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*&a1[OBJC_IVAR___SKRFlowExtensionContext_overrideFlowExtension])
  {
    v9 = [a1 _principalObject];
    if (v9)
    {
      v8 = v9;
      swift_getObjectType();
      v7 = swift_conformsToProtocol2();
      if (v7)
      {
        goto LABEL_5;
      }

      swift_unknownObjectRelease();
    }

    *&v39 = 0;
    *(&v39 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(55);
    MEMORY[0x1E12A1580](0xD000000000000035, 0x80000001DCA837E0);
    *&v37[0] = [a1 _principalObject];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_syXlSgMd, &_syXlSgMR);
    v32 = String.init<A>(describing:)();
    MEMORY[0x1E12A1580](v32);

    result = specialized static SiriKitRuntimeCrashHelper.logAndCrash(_:file:line:)(v39, *(&v39 + 1), "/Library/Caches/com.apple.xbs/Sources/SiriKitExecutor/SiriKitRuntime/RemoteConversation/FlowExtension/FlowExtensionContext.swift", 128, 2, 82);
    __break(1u);
    return result;
  }

  v7 = *&a1[OBJC_IVAR___SKRFlowExtensionContext_overrideFlowExtension + 8];
  v8 = *&a1[OBJC_IVAR___SKRFlowExtensionContext_overrideFlowExtension];
LABEL_5:
  v34 = v7;
  v35 = v6;
  v10 = *&a1[OBJC_IVAR___SKRFlowExtensionContext_overrideSiriKitRuntime];
  if (v10)
  {
    swift_unknownObjectRetain();
    v33 = v10;
  }

  else
  {
    v11 = type metadata accessor for NoopSiriKitEventSender();
    v12 = swift_allocObject();
    *(&v40 + 1) = v11;
    v41 = _s14SiriKitRuntime17ConversationActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type NoopSiriKitEventSender and conformance NoopSiriKitEventSender, v13, type metadata accessor for NoopSiriKitEventSender, &protocol conformance descriptor for NoopSiriKitEventSender);
    *&v39 = v12;
    type metadata accessor for SiriKitRuntimeState();
    memset(v37, 0, sizeof(v37));
    v38 = 0;
    swift_allocObject();
    swift_unknownObjectRetain();
    v33 = SiriKitRuntimeState.init(customEventSender:rrClient:)(&v39, v37);
  }

  v14 = *&a1[OBJC_IVAR___SKRFlowExtensionContext_overrideExtensionId + 8];
  v36 = v3;
  if (v14)
  {
    v15 = v2;
    v16 = *&a1[OBJC_IVAR___SKRFlowExtensionContext_overrideExtensionId];
    swift_retain_n();
    v17 = v14;
  }

  else
  {
    swift_getObjectType();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v19 = objc_opt_self();
    swift_retain_n();
    v20 = [v19 bundleForClass_];
    v16 = NSBundle.packageId.getter();
    v22 = v21;
    v23 = [v20 infoDictionary];
    if (v23)
    {
      v24 = v23;
      static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    }

    v15 = v2;
    static IntentTopic.makeFromBundleInfoPlist(dictionary:)();

    v17 = v22;
  }

  v25 = type metadata accessor for RemoteConversationService(0);
  ObjectType = swift_getObjectType();
  swift_bridgeObjectRetain_n();
  v27 = v35;
  FlowPluginBundleImpl.init(bundlePath:supportedTopics:)();
  type metadata accessor for SnippetManager();
  v39 = 0u;
  v40 = 0u;
  v41 = 0;
  v28 = static SnippetManager.sharedInstance.getter();
  *&v37[0] = v8;
  v29 = *(*(v34 + 8) + 8);
  swift_unknownObjectRetain();
  v30 = specialized RemoteConversationService.__allocating_init(flowPlugin:pluginId:flowPluginBundle:siriKitRuntime:turnDataProvider:snippetManager:overrideRRClient:)(v37, v16, v17, v27, v33, closure #1 in closure #1 in FlowExtensionContext.remoteConversationService.getter, 0, v28, &v39, v25, ObjectType, v15, v29, MEMORY[0x1E69CFB90]);
  swift_unknownObjectRelease_n();

  (*(v36 + 8))(v27, v15);
  return v30;
}

uint64_t (*FlowExtensionContext.remoteConversationService.modify(uint64_t *a1))()
{
  a1[1] = v1;
  *a1 = FlowExtensionContext.remoteConversationService.getter();
  return FlowExtensionContext.remoteConversationService.modify;
}

uint64_t FlowExtensionContext.warmup(refId:reply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v21 - v11;
  v13 = (*((*MEMORY[0x1E69E7D40] & *v4) + 0xE0))(v10);
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static Logger.executor);
  Logger.debugF(file:function:)("SiriKitRuntime/RemoteConversationService.swift", 46, 2, "warmup(refId:reply:)", 20, 2);
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = one-time initialization token for shared;

  if (v16 != -1)
  {
    swift_once();
  }

  v17 = static ConversationActor.shared;
  v18 = _s14SiriKitRuntime17ConversationActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type ConversationActor and conformance ConversationActor, 255, type metadata accessor for ConversationActor, &protocol conformance descriptor for ConversationActor);
  v19 = swift_allocObject();
  v19[2] = v17;
  v19[3] = v18;
  v19[4] = v13;
  v19[5] = a1;
  v19[6] = a2;
  v19[7] = a3;
  v19[8] = a4;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v12, &async function pointer to partial apply for closure #1 in RemoteConversationService.warmup(refId:reply:), v19);
}

uint64_t FlowExtensionContext.canHandle(inputData:rcId:reply:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26 = a3;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v25 - v14;
  v16 = (*((*MEMORY[0x1E69E7D40] & *v6) + 0xE0))(v13);
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static Logger.executor);
  Logger.debugF(file:function:)("SiriKitRuntime/RemoteConversationService.swift", 46, 2, "canHandle(inputData:rcId:reply:)", 32, 2);
  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
  outlined copy of Data._Representation(a1, a2);
  v19 = one-time initialization token for shared;

  if (v19 != -1)
  {
    swift_once();
  }

  v20 = static ConversationActor.shared;
  v21 = _s14SiriKitRuntime17ConversationActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type ConversationActor and conformance ConversationActor, 255, type metadata accessor for ConversationActor, &protocol conformance descriptor for ConversationActor);
  v22 = swift_allocObject();
  v22[2] = v20;
  v22[3] = v21;
  v22[4] = a1;
  v22[5] = a2;
  v22[6] = a5;
  v22[7] = a6;
  v23 = v26;
  v22[8] = v16;
  v22[9] = v23;
  v22[10] = a4;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v15, &async function pointer to partial apply for closure #1 in RemoteConversationService.canHandle(inputData:rcId:reply:), v22);
}

uint64_t FlowExtensionContext.cancel(cancellationReason:reply:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*((*MEMORY[0x1E69E7D40] & *v3) + 0xE0))();
  RemoteConversationService.cancel(cancellationReason:reply:)(a1, a2, a3);
}

uint64_t FlowExtensionContext.reset(reply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v24 - v14;
  v16 = (*((*MEMORY[0x1E69E7D40] & *v6) + 0xE0))(v13);
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static Logger.executor);
  Logger.debugF(file:function:)("SiriKitRuntime/RemoteConversationService.swift", 46, 2, a3, a4, 2);
  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
  v19 = one-time initialization token for shared;

  if (v19 != -1)
  {
    swift_once();
  }

  v20 = static ConversationActor.shared;
  v21 = _s14SiriKitRuntime17ConversationActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type ConversationActor and conformance ConversationActor, 255, type metadata accessor for ConversationActor, &protocol conformance descriptor for ConversationActor);
  v22 = swift_allocObject();
  v22[2] = v20;
  v22[3] = v21;
  v22[4] = v16;
  v22[5] = a1;
  v22[6] = a2;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v15, a6, v22);
}

uint64_t FlowExtensionContext.startTurn(turnData:bridge:reply:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*((*MEMORY[0x1E69E7D40] & *v4) + 0xE0))();
  RemoteConversationService.startTurn(turnData:bridge:reply:)(a1, a2, a3, a4);
}

uint64_t FlowExtensionContext.acceptInitialInput(inputIdentifier:speechData:reply:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  (*((*MEMORY[0x1E69E7D40] & *v4) + 0xE0))();
  RemoteConversationService.acceptInitialInput(inputIdentifier:speechData:reply:)(a1, a2, a3, a4);
}

uint64_t FlowExtensionContext.accept(inputData:speechData:reply:)(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v24 - v13;
  v15 = (*((*MEMORY[0x1E69E7D40] & *v5) + 0xE0))(v12);
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Logger.executor);
  Logger.debugF(file:function:)("SiriKitRuntime/RemoteConversationService.swift", 46, 2, "accept(inputData:speechData:reply:)", 35, 2);
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  outlined copy of Data._Representation(a1, a2);
  v18 = one-time initialization token for shared;

  v19 = a3;
  if (v18 != -1)
  {
    swift_once();
  }

  v20 = static ConversationActor.shared;
  v21 = _s14SiriKitRuntime17ConversationActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type ConversationActor and conformance ConversationActor, 255, type metadata accessor for ConversationActor, &protocol conformance descriptor for ConversationActor);
  v22 = swift_allocObject();
  v22[2] = v20;
  v22[3] = v21;
  v22[4] = a1;
  v22[5] = a2;
  v22[6] = a4;
  v22[7] = a5;
  v22[8] = v15;
  v22[9] = v19;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v14, &async function pointer to partial apply for closure #1 in RemoteConversationService.accept(inputData:speechData:reply:), v22);
}

uint64_t @objc FlowExtensionContext.reset(reply:)(void *a1, int a2, void *aBlock, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t))
{
  v9 = _Block_copy(aBlock);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = a1;
  a6(a5, v10);
}

uint64_t FlowExtensionContext.drainAsyncWork(reply:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v16 - v7;
  v9 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0xE0))(v6);
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  v11 = one-time initialization token for shared;

  if (v11 != -1)
  {
    swift_once();
  }

  v12 = static ConversationActor.shared;
  v13 = _s14SiriKitRuntime17ConversationActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type ConversationActor and conformance ConversationActor, 255, type metadata accessor for ConversationActor, &protocol conformance descriptor for ConversationActor);
  v14 = swift_allocObject();
  v14[2] = v12;
  v14[3] = v13;
  v14[4] = v9;
  v14[5] = a1;
  v14[6] = a2;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v8, &async function pointer to partial apply for closure #1 in RemoteConversationService.drainAsyncWork(reply:), v14);
}

id FlowExtensionContext.__allocating_init(inputItems:contextUUID:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v5.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  isa = 0;
  if ((*(v7 + 48))(a2, 1, v6) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v7 + 8))(a2, v6);
  }

  v9 = [objc_allocWithZone(v3) initWithInputItems:v5.super.isa contextUUID:isa];

  return v9;
}

id FlowExtensionContext.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for FlowExtensionContext();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t one-time initialization function for instance(uint64_t a1)
{
  type metadata accessor for NoopSiriKitEventSender();
  result = swift_initStaticObject();
  static NoopSiriKitEventSender.instance = result;
  return result;
}

{
  type metadata accessor for SiriKitCurareDonator();
  swift_allocObject();
  result = SiriKitCurareDonator.().init()();
  static SiriKitCurareDonator.instance = result;
  return result;
}

uint64_t *NoopSiriKitEventSender.instance.unsafeMutableAddressor()
{
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  return &static NoopSiriKitEventSender.instance;
}

uint64_t protocol witness for SiriKitEventSending.sendAsync(_:) in conformance NoopSiriKitEventSender(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return MEMORY[0x1EEE39340](a1, a2, a3);
}

uint64_t partial apply for closure #1 in RemoteConversationService.paraphrase(reply:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return closure #1 in RemoteConversationService.paraphrase(reply:)(a1, v4, v5, v6, v7, v8);
}

void specialized NoopSiriKitEventSender.send(_:)()
{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Logger.executor);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_1DC659000, oslog, v1, "Dropping SiriKitEvent since we're running in an external process. rdar://83367714 (Support event bus from flows running in external processes)", v2, 2u);
    MEMORY[0x1E12A2F50](v2, -1, -1);
  }
}

uint64_t partial apply for closure #1 in RemoteConversationService.isCorrectable(reply:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in RemoteConversationService.isCorrectable(reply:)(a1, v4, v5, v6, v7, v8);
}

uint64_t partial apply for closure #1 in RemoteConversationService.drainAsyncWork(reply:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in RemoteConversationService.drainAsyncWork(reply:)(a1, v4, v5, v6, v7, v8);
}

id FlowExtensionContextHost.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FlowExtensionContextHost.init()()
{
  isa = Array._bridgeToObjectiveC()().super.isa;
  v2 = [v0 initWithInputItems:isa listenerEndpoint:0 contextUUID:0];

  return v2;
}

id FlowExtensionContextHost.__allocating_init(inputItems:)(uint64_t a1)
{
  v2 = objc_allocWithZone(v1);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v4 = [v2 initWithInputItems_];

  return v4;
}

id FlowExtensionContextHost.init(inputItems:)(uint64_t a1)
{
  isa = Array._bridgeToObjectiveC()().super.isa;

  v3 = [v1 initWithInputItems:isa listenerEndpoint:0 contextUUID:0];

  return v3;
}

id FlowExtensionContextHost.__allocating_init(inputItems:listenerEndpoint:contextUUID:)(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v7.super.isa = Array._bridgeToObjectiveC()().super.isa;

  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  isa = 0;
  if ((*(v9 + 48))(a3, 1, v8) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v9 + 8))(a3, v8);
  }

  v11 = [objc_allocWithZone(v4) initWithInputItems:v7.super.isa listenerEndpoint:a2 contextUUID:isa];

  return v11;
}

uint64_t FlowExtensionContextHost.init(inputItems:listenerEndpoint:contextUUID:)(uint64_t a1, void *a2, uint64_t a3)
{
  specialized FlowExtensionContextHost.init(inputItems:listenerEndpoint:contextUUID:)(a1, a2, a3);
  v5 = v4;

  return v5;
}

id FlowExtensionContextHost.__allocating_init(inputItems:contextUUID:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v5.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  isa = 0;
  if ((*(v7 + 48))(a2, 1, v6) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v7 + 8))(a2, v6);
  }

  v9 = [objc_allocWithZone(v3) initWithInputItems:v5.super.isa contextUUID:isa];

  return v9;
}

id FlowExtensionContextHost.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FlowExtensionContextHost();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void specialized FlowExtensionContextHost.init(inputItems:listenerEndpoint:contextUUID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - v8;
  v10.super.isa = Array._bridgeToObjectiveC()().super.isa;
  outlined init with copy of UUID?(a3, v9);
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  isa = 0;
  if ((*(v12 + 48))(v9, 1, v11) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v12 + 8))(v9, v11);
  }

  v14 = type metadata accessor for FlowExtensionContextHost();
  v16.receiver = v4;
  v16.super_class = v14;
  v15 = objc_msgSendSuper2(&v16, sel_initWithInputItems_listenerEndpoint_contextUUID_, v10.super.isa, a2, isa);

  if (v15)
  {
    outlined destroy of UUID?(a3);
  }

  else
  {
    __break(1u);
  }
}

uint64_t FlowExtensionConversationHandler.warmup(refId:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return specialized FlowExtensionConversationHandler.warmup(refId:)(a1, a2, a3);
}

uint64_t FlowExtensionConversationHandler.startTurn(turnData:rcId:hypothesisId:bridge:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = swift_task_alloc();
  *(v6 + 16) = v10;
  *v10 = v6;
  v10[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return RemoteConversationClient.startTurn(turnData:bridge:)(a1, a5, a6);
}

uint64_t FlowExtensionConversationHandler.findConversation(for:rcId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a1;
  v5[3] = a5;
  v9 = swift_task_alloc();
  v5[4] = v9;
  *v9 = v5;
  v9[1] = FlowExtensionConversationHandler.findConversation(for:rcId:);

  return RemoteConversationClient.canHandle(input:rcId:)(a2, a3, a4);
}

uint64_t FlowExtensionConversationHandler.findConversation(for:rcId:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 40) = a1;

    return MEMORY[0x1EEE6DFA0](FlowExtensionConversationHandler.findConversation(for:rcId:), 0, 0);
  }
}

uint64_t FlowExtensionConversationHandler.findConversation(for:rcId:)()
{
  v1 = v0[5];
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x78))(v0[3]);

  v2 = v0[1];

  return v2();
}

uint64_t protocol witness for ConversationHandler.id.getter in conformance FlowExtensionConversationHandler()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t protocol witness for ConversationHandler.warmup(refId:) in conformance FlowExtensionConversationHandler(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return specialized FlowExtensionConversationHandler.warmup(refId:)(a1, a2, v6);
}

uint64_t protocol witness for ConversationHandler.startTurn(turnData:rcId:hypothesisId:bridge:) in conformance FlowExtensionConversationHandler(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = swift_task_alloc();
  *(v6 + 16) = v10;
  *v10 = v6;
  v10[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return RemoteConversationClient.startTurn(turnData:bridge:)(a1, a5, a6);
}

uint64_t protocol witness for ConversationHandler.findConversation(for:rcId:) in conformance FlowExtensionConversationHandler(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  v5[2] = a1;
  v5[3] = v9;
  v10 = swift_task_alloc();
  v5[4] = v10;
  *v10 = v5;
  v10[1] = FlowExtensionConversationHandler.findConversation(for:rcId:);

  return RemoteConversationClient.canHandle(input:rcId:)(a2, a3, a4);
}

double protocol witness for Identifiable.id.getter in conformance FlowExtensionConversationHandler@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  a1[1] = v2;

  return result;
}

uint64_t specialized FlowExtensionConversationHandler.warmup(refId:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](specialized FlowExtensionConversationHandler.warmup(refId:), a3, 0);
}

uint64_t specialized FlowExtensionConversationHandler.warmup(refId:)()
{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.executor);
  Logger.debugF(file:function:)("SiriKitRuntime/RemoteConversationClient.swift", 45, 2, "warmup(refId:)", 14, 2);
  v5 = v2[19];
  v6 = v2[20];
  __swift_project_boxed_opaque_existential_1(v2 + 16, v5);
  v7 = swift_allocObject();
  v0[5] = v7;
  *(v7 + 16) = v3;
  *(v7 + 24) = v1;
  v8 = *(v6 + 16);

  v12 = (v8 + *v8);
  v9 = swift_task_alloc();
  v0[6] = v9;
  *v9 = v0;
  v9[1] = specialized FlowExtensionConversationHandler.warmup(refId:);
  v10 = MEMORY[0x1E69E7CA8] + 8;

  return (v12)(v0 + 7, &async function pointer to partial apply for closure #1 in RemoteConversationClient.warmup(refId:), v7, v10, v5, v6);
}

{
  v2 = *v1;

  v3 = *(v2 + 32);
  if (v0)
  {

    v4 = AceServiceInvokerImpl.prepareForAudioHandoffFailed();
  }

  else
  {

    v4 = protocol witness for AceServiceInvokerAsync.prepareForAudioHandoffFailed() in conformance AceServiceInvokerImpl;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

unint64_t instantiation function for generic protocol witness table for FlowExtensionConversationHandler(uint64_t a1)
{
  result = lazy protocol witness table accessor for type FlowExtensionConversationHandler and conformance FlowExtensionConversationHandler();
  *(a1 + 8) = result;
  return result;
}

uint64_t destroy for FlowExtensionConversationHandler(uint64_t a1)
{
}

void *initializeBufferWithCopyOfBuffer for FlowExtensionConversationHandler(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  a1[2] = a2[2];

  return a1;
}

void *assignWithCopy for FlowExtensionConversationHandler(void *a1, void *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];
  a1[2] = a2[2];

  return a1;
}

void *assignWithTake for FlowExtensionConversationHandler(void *a1, void *a2)
{
  *a1 = *a2;

  v4 = a2[2];
  a1[1] = a2[1];
  a1[2] = v4;

  return a1;
}

uint64_t partial apply for closure #1 in RemoteConversationClient.warmup(refId:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v8 = *(v3 + 24);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return closure #1 in RemoteConversationClient.warmup(refId:)(a1, a2, a3, v9, v8);
}

uint64_t FlowExtensionDiscoverer.findConversationHandler(bundleId:onConnectionInterrupted:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v10 = swift_task_alloc();
  *(v5 + 24) = v10;
  *v10 = v5;
  v10[1] = FlowExtensionDiscoverer.findConversationHandler(bundleId:onConnectionInterrupted:);

  return FlowExtensionDiscoverer.findFlowExtension(bundleId:onConnectionInterrupted:)(a2, a3, a4, a5);
}

uint64_t FlowExtensionDiscoverer.findConversationHandler(bundleId:onConnectionInterrupted:)(uint64_t a1)
{
  *(*v1 + 32) = a1;

  return MEMORY[0x1EEE6DFA0](FlowExtensionDiscoverer.findConversationHandler(bundleId:onConnectionInterrupted:), 0, 0);
}

uint64_t FlowExtensionDiscoverer.findConversationHandler(bundleId:onConnectionInterrupted:)(__n128 a1)
{
  v2 = v1[4];
  if (v2)
  {
    v4 = *(v2 + 112);
    v3 = *(v2 + 120);
    v5 = lazy protocol witness table accessor for type FlowExtensionConversationHandler and conformance FlowExtensionConversationHandler();

    v6 = &type metadata for FlowExtensionConversationHandler;
  }

  else
  {
    v4 = 0;
    v3 = 0;
    v6 = 0;
    v5 = 0;
  }

  v7 = v1[2];
  *v7 = v2;
  v7[1] = v4;
  v7[2] = v3;
  v7[3] = v6;
  v7[4] = v5;
  v8 = v1[1];

  return v8();
}

uint64_t FlowExtensionDiscoverer.__allocating_init(observer:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t static FlowExtensionDiscoverer.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }
}

uint64_t FlowExtensionDiscoverer.findFlowExtension(topic:onConnectionInterrupted:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[42] = a3;
  v4[43] = v3;
  v4[40] = a1;
  v4[41] = a2;
  return MEMORY[0x1EEE6DFA0](FlowExtensionDiscoverer.findFlowExtension(topic:onConnectionInterrupted:), 0, 0);
}

uint64_t FlowExtensionDiscoverer.findFlowExtension(topic:onConnectionInterrupted:)()
{
  v39 = v0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  v1 = IntentTopic.makeCacheKeyAndWildcardFallbacks()();
  *(v0 + 352) = v1;
  v2 = v1[2];
  *(v0 + 360) = v2;
  if (v2)
  {
    *(v0 + 368) = *(*(v0 + 344) + 16);
    *(v0 + 376) = 0;
    if (v1[2])
    {
      *(v0 + 384) = v1[4];
      *(v0 + 392) = v1[5];
      v3 = one-time initialization token for shared;

      if (v3 == -1)
      {
LABEL_4:
        v4 = static ConversationActor.shared;
        *(v0 + 400) = static ConversationActor.shared;

        return MEMORY[0x1EEE6DFA0](FlowExtensionDiscoverer.findFlowExtension(topic:onConnectionInterrupted:), v4, 0);
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
    goto LABEL_4;
  }

  outlined init with copy of ReferenceResolutionClientProtocol?(v0 + 16, v0 + 136, &_s14SiriKitRuntime19NSExtensionProtocol_pSgMd, &_s14SiriKitRuntime19NSExtensionProtocol_pSgMR);
  if (*(v0 + 160))
  {
    outlined init with take of ReferenceResolutionClientProtocol((v0 + 136), v0 + 96);
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Logger.executor);
    outlined init with copy of ReferenceResolutionClientProtocol(v0 + 96, v0 + 176);
    v6 = static os_log_type_t.debug.getter();
    v7 = Logger.logObject.getter();
    if (os_log_type_enabled(v7, v6))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v36 = v9;
      *v8 = 136315650;
      v10 = StaticString.description.getter();
      v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v36);

      *(v8 + 4) = v12;
      *(v8 + 12) = 2080;
      v13 = StaticString.description.getter();
      v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v36);

      *(v8 + 14) = v15;
      *(v8 + 22) = 2080;
      v37 = 0;
      v38 = 0xE000000000000000;
      _StringGuts.grow(_:)(39);

      v37 = 0xD000000000000025;
      v38 = 0x80000001DCA839A0;
      v16 = *(v0 + 200);
      v17 = *(v0 + 208);
      __swift_project_boxed_opaque_existential_1((v0 + 176), v16);
      v18 = (*(v17 + 8))(v16, v17);
      MEMORY[0x1E12A1580](v18);

      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v38, &v36);

      *(v8 + 24) = v19;
      _os_log_impl(&dword_1DC659000, v7, v6, "%s:%s: %s", v8, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v9, -1, -1);
      MEMORY[0x1E12A2F50](v8, -1, -1);
    }

    v21 = *(v0 + 328);
    v20 = *(v0 + 336);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 176));
    outlined init with copy of ReferenceResolutionClientProtocol(v0 + 96, v0 + 216);
    v22 = type metadata accessor for FlowExtensionConnection();
    swift_allocObject();

    v23 = FlowExtensionConnection.init(nsExtension:onConnectionInterrupted:)((v0 + 216), v21, v20);
    v24 = *(v0 + 120);
    v25 = *(v0 + 128);
    __swift_project_boxed_opaque_existential_1((v0 + 96), v24);
    v26 = (*(v25 + 8))(v24, v25);
    v28 = v27;
    *(v0 + 280) = v22;
    *(v0 + 288) = &protocol witness table for FlowExtensionConnection;
    *(v0 + 256) = v23;
    type metadata accessor for RemoteConversationClient();
    v29 = swift_allocObject();
    swift_defaultActor_initialize();
    outlined destroy of ReferenceResolutionClientProtocol?(v0 + 16, &_s14SiriKitRuntime19NSExtensionProtocol_pSgMd, &_s14SiriKitRuntime19NSExtensionProtocol_pSgMR);
    *(v29 + 168) = 0;
    *(v29 + 176) = 0;
    *(v29 + 184) = 2;
    *(v29 + 112) = v26;
    *(v29 + 120) = v28;
    outlined init with take of ReferenceResolutionClientProtocol((v0 + 256), v29 + 128);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
  }

  else
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v0 + 136, &_s14SiriKitRuntime19NSExtensionProtocol_pSgMd, &_s14SiriKitRuntime19NSExtensionProtocol_pSgMR);
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    __swift_project_value_buffer(v30, static Logger.executor);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_1DC659000, v31, v32, "No extensions support input", v33, 2u);
      MEMORY[0x1E12A2F50](v33, -1, -1);
    }

    outlined destroy of ReferenceResolutionClientProtocol?(v0 + 16, &_s14SiriKitRuntime19NSExtensionProtocol_pSgMd, &_s14SiriKitRuntime19NSExtensionProtocol_pSgMR);
    v29 = 0;
  }

  v34 = *(v0 + 8);

  return v34(v29);
}

{
  v1 = *(v0 + 368);
  v2 = *(v1 + 48);
  *(v0 + 408) = v2;
  if (v2)
  {

    v3 = swift_task_alloc();
    *(v0 + 416) = v3;
    *v3 = v0;
    v3[1] = FlowExtensionDiscoverer.findFlowExtension(topic:onConnectionInterrupted:);
    v4 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DA40](v3, v2, v4);
  }

  else
  {
    swift_beginAccess();
    v5 = *(v1 + 64);
    if (v5)
    {
      if (*(v5 + 16) && (v6 = specialized __RawDictionaryStorage.find<A>(_:)(*(v0 + 384), *(v0 + 392)), (v7 & 1) != 0))
      {
        outlined init with copy of ReferenceResolutionClientProtocol(*(v5 + 56) + 40 * v6, v0 + 56);
      }

      else
      {
        *(v0 + 88) = 0;
        *(v0 + 72) = 0u;
        *(v0 + 56) = 0u;
      }

      swift_endAccess();
    }

    else
    {
      swift_endAccess();

      *(v0 + 88) = 0;
      *(v0 + 72) = 0u;
      *(v0 + 56) = 0u;
    }

    return MEMORY[0x1EEE6DFA0](FlowExtensionDiscoverer.findFlowExtension(topic:onConnectionInterrupted:), 0, 0);
  }
}

{
  v1 = *(*v0 + 400);

  return MEMORY[0x1EEE6DFA0](FlowExtensionDiscoverer.findFlowExtension(topic:onConnectionInterrupted:), v1, 0);
}

{
  v1 = *(v0 + 368);
  swift_beginAccess();
  v2 = *(v1 + 64);
  if (v2)
  {
    if (*(v2 + 16) && (v3 = specialized __RawDictionaryStorage.find<A>(_:)(*(v0 + 384), *(v0 + 392)), (v4 & 1) != 0))
    {
      outlined init with copy of ReferenceResolutionClientProtocol(*(v2 + 56) + 40 * v3, v0 + 56);
    }

    else
    {
      *(v0 + 88) = 0;
      *(v0 + 72) = 0u;
      *(v0 + 56) = 0u;
    }

    swift_endAccess();
  }

  else
  {
    swift_endAccess();

    *(v0 + 88) = 0;
    *(v0 + 72) = 0u;
    *(v0 + 56) = 0u;
  }

  return MEMORY[0x1EEE6DFA0](FlowExtensionDiscoverer.findFlowExtension(topic:onConnectionInterrupted:), 0, 0);
}

{
  v42 = v0;
  if (*(v0 + 80))
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v0 + 16, &_s14SiriKitRuntime19NSExtensionProtocol_pSgMd, &_s14SiriKitRuntime19NSExtensionProtocol_pSgMR);

    outlined init with take of ReferenceResolutionClientProtocol((v0 + 56), v0 + 16);
LABEL_5:
    outlined init with copy of ReferenceResolutionClientProtocol?(v0 + 16, v0 + 136, &_s14SiriKitRuntime19NSExtensionProtocol_pSgMd, &_s14SiriKitRuntime19NSExtensionProtocol_pSgMR);
    if (*(v0 + 160))
    {
      outlined init with take of ReferenceResolutionClientProtocol((v0 + 136), v0 + 96);
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v3 = type metadata accessor for Logger();
      __swift_project_value_buffer(v3, static Logger.executor);
      outlined init with copy of ReferenceResolutionClientProtocol(v0 + 96, v0 + 176);
      v4 = static os_log_type_t.debug.getter();
      v5 = Logger.logObject.getter();
      if (os_log_type_enabled(v5, v4))
      {
        v6 = swift_slowAlloc();
        v7 = swift_slowAlloc();
        v39 = v7;
        *v6 = 136315650;
        v8 = StaticString.description.getter();
        v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v39);

        *(v6 + 4) = v10;
        *(v6 + 12) = 2080;
        v11 = StaticString.description.getter();
        v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v39);

        *(v6 + 14) = v13;
        *(v6 + 22) = 2080;
        v40 = 0;
        v41 = 0xE000000000000000;
        _StringGuts.grow(_:)(39);

        v40 = 0xD000000000000025;
        v41 = 0x80000001DCA839A0;
        v14 = *(v0 + 200);
        v15 = *(v0 + 208);
        __swift_project_boxed_opaque_existential_1((v0 + 176), v14);
        v16 = (*(v15 + 8))(v14, v15);
        MEMORY[0x1E12A1580](v16);

        v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v41, &v39);

        *(v6 + 24) = v17;
        _os_log_impl(&dword_1DC659000, v5, v4, "%s:%s: %s", v6, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1E12A2F50](v7, -1, -1);
        MEMORY[0x1E12A2F50](v6, -1, -1);
      }

      v18 = *(v0 + 328);
      v19 = *(v0 + 336);
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 176));
      outlined init with copy of ReferenceResolutionClientProtocol(v0 + 96, v0 + 216);
      v20 = type metadata accessor for FlowExtensionConnection();
      swift_allocObject();

      v21 = FlowExtensionConnection.init(nsExtension:onConnectionInterrupted:)((v0 + 216), v18, v19);
      v22 = *(v0 + 120);
      v23 = *(v0 + 128);
      __swift_project_boxed_opaque_existential_1((v0 + 96), v22);
      v24 = (*(v23 + 8))(v22, v23);
      v26 = v25;
      *(v0 + 280) = v20;
      *(v0 + 288) = &protocol witness table for FlowExtensionConnection;
      *(v0 + 256) = v21;
      type metadata accessor for RemoteConversationClient();
      v27 = swift_allocObject();
      swift_defaultActor_initialize();
      outlined destroy of ReferenceResolutionClientProtocol?(v0 + 16, &_s14SiriKitRuntime19NSExtensionProtocol_pSgMd, &_s14SiriKitRuntime19NSExtensionProtocol_pSgMR);
      *(v27 + 168) = 0;
      *(v27 + 176) = 0;
      *(v27 + 184) = 2;
      *(v27 + 112) = v24;
      *(v27 + 120) = v26;
      outlined init with take of ReferenceResolutionClientProtocol((v0 + 256), v27 + 128);
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
    }

    else
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v0 + 136, &_s14SiriKitRuntime19NSExtensionProtocol_pSgMd, &_s14SiriKitRuntime19NSExtensionProtocol_pSgMR);
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v28 = type metadata accessor for Logger();
      __swift_project_value_buffer(v28, static Logger.executor);
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_1DC659000, v29, v30, "No extensions support input", v31, 2u);
        MEMORY[0x1E12A2F50](v31, -1, -1);
      }

      outlined destroy of ReferenceResolutionClientProtocol?(v0 + 16, &_s14SiriKitRuntime19NSExtensionProtocol_pSgMd, &_s14SiriKitRuntime19NSExtensionProtocol_pSgMR);
      v27 = 0;
    }

    v32 = *(v0 + 8);

    return v32(v27);
  }

  v1 = *(v0 + 360);
  v2 = *(v0 + 376) + 1;
  outlined destroy of ReferenceResolutionClientProtocol?(v0 + 56, &_s14SiriKitRuntime19NSExtensionProtocol_pSgMd, &_s14SiriKitRuntime19NSExtensionProtocol_pSgMR);
  if (v2 == v1)
  {

    goto LABEL_5;
  }

  v34 = *(v0 + 376) + 1;
  *(v0 + 376) = v34;
  v35 = *(v0 + 352);
  if (v34 >= *(v35 + 16))
  {
    __break(1u);
    goto LABEL_25;
  }

  v36 = v35 + 16 * v34;
  *(v0 + 384) = *(v36 + 32);
  *(v0 + 392) = *(v36 + 40);
  v37 = one-time initialization token for shared;

  if (v37 != -1)
  {
LABEL_25:
    swift_once();
  }

  v38 = static ConversationActor.shared;
  *(v0 + 400) = static ConversationActor.shared;

  return MEMORY[0x1EEE6DFA0](FlowExtensionDiscoverer.findFlowExtension(topic:onConnectionInterrupted:), v38, 0);
}

uint64_t FlowExtensionObserver.findExtension(matchingTopicKey:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v5 = static ConversationActor.shared;
  v4[9] = static ConversationActor.shared;

  return MEMORY[0x1EEE6DFA0](FlowExtensionObserver.findExtension(matchingTopicKey:), v5, 0);
}

uint64_t FlowExtensionObserver.findExtension(matchingTopicKey:)()
{
  v1 = v0[8];
  v2 = *(v1 + 48);
  v0[10] = v2;
  if (v2)
  {

    v3 = swift_task_alloc();
    v0[11] = v3;
    *v3 = v0;
    v3[1] = FlowExtensionObserver.findExtension(matchingTopicKey:);
    v4 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DA40](v3, v2, v4);
  }

  else
  {
    swift_beginAccess();
    v5 = *(v1 + 64);
    if (v5)
    {
      if (*(v5 + 16))
      {
        v6 = specialized __RawDictionaryStorage.find<A>(_:)(v0[6], v0[7]);
        v8 = v7;
        v9 = v0[5];
        if (v8)
        {
          outlined init with copy of ReferenceResolutionClientProtocol(*(v5 + 56) + 40 * v6, v9);
        }

        else
        {
          *(v9 + 32) = 0;
          *v9 = 0u;
          *(v9 + 16) = 0u;
        }
      }

      else
      {
        v11 = v0[5];
        *(v11 + 32) = 0;
        *v11 = 0u;
        *(v11 + 16) = 0u;
      }

      swift_endAccess();
    }

    else
    {
      v10 = v0[5];
      swift_endAccess();
      *(v10 + 32) = 0;
      *v10 = 0u;
      *(v10 + 16) = 0u;
    }

    v12 = v0[1];

    return v12();
  }
}

{
  v1 = *(*v0 + 72);

  return MEMORY[0x1EEE6DFA0](FlowExtensionObserver.findExtension(matchingTopicKey:), v1, 0);
}

{
  v1 = v0[8];
  swift_beginAccess();
  v2 = *(v1 + 64);
  if (v2)
  {
    if (*(v2 + 16))
    {
      v3 = specialized __RawDictionaryStorage.find<A>(_:)(v0[6], v0[7]);
      v5 = v4;
      v6 = v0[5];
      if (v5)
      {
        outlined init with copy of ReferenceResolutionClientProtocol(*(v2 + 56) + 40 * v3, v6);
      }

      else
      {
        *(v6 + 32) = 0;
        *v6 = 0u;
        *(v6 + 16) = 0u;
      }
    }

    else
    {
      v8 = v0[5];
      *(v8 + 32) = 0;
      *v8 = 0u;
      *(v8 + 16) = 0u;
    }

    swift_endAccess();
  }

  else
  {
    v7 = v0[5];
    swift_endAccess();
    *(v7 + 32) = 0;
    *v7 = 0u;
    *(v7 + 16) = 0u;
  }

  v9 = v0[1];

  return v9();
}

uint64_t FlowExtensionDiscoverer.findFlowExtension(bundleId:onConnectionInterrupted:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[25] = a4;
  v5[26] = v4;
  v5[23] = a2;
  v5[24] = a3;
  v5[22] = a1;
  return MEMORY[0x1EEE6DFA0](FlowExtensionDiscoverer.findFlowExtension(bundleId:onConnectionInterrupted:), 0, 0);
}

uint64_t FlowExtensionDiscoverer.findFlowExtension(bundleId:onConnectionInterrupted:)()
{
  v1 = swift_task_alloc();
  v0[27] = v1;
  *v1 = v0;
  v1[1] = FlowExtensionDiscoverer.findFlowExtension(bundleId:onConnectionInterrupted:);
  v2 = v0[22];
  v3 = v0[23];

  return FlowExtensionObserver.findExtension(withIdentifier:)((v0 + 7), v2, v3);
}

{

  return MEMORY[0x1EEE6DFA0](FlowExtensionDiscoverer.findFlowExtension(bundleId:onConnectionInterrupted:), 0, 0);
}

{
  if (*(v0 + 80))
  {
    v1 = *(v0 + 192);
    v2 = *(v0 + 200);
    outlined init with take of ReferenceResolutionClientProtocol((v0 + 56), v0 + 16);
    outlined init with copy of ReferenceResolutionClientProtocol(v0 + 16, v0 + 96);
    v3 = type metadata accessor for FlowExtensionConnection();
    swift_allocObject();

    v4 = FlowExtensionConnection.init(nsExtension:onConnectionInterrupted:)((v0 + 96), v1, v2);
    v5 = *(v0 + 40);
    v6 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v5);
    v7 = (*(v6 + 8))(v5, v6);
    v9 = v8;
    *(v0 + 136) = v4;
    *(v0 + 160) = v3;
    *(v0 + 168) = &protocol witness table for FlowExtensionConnection;
    type metadata accessor for RemoteConversationClient();
    v10 = swift_allocObject();
    swift_defaultActor_initialize();
    *(v10 + 168) = 0;
    *(v10 + 176) = 0;
    *(v10 + 184) = 2;
    *(v10 + 112) = v7;
    *(v10 + 120) = v9;
    outlined init with take of ReferenceResolutionClientProtocol((v0 + 136), v10 + 128);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  }

  else
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v0 + 56, &_s14SiriKitRuntime19NSExtensionProtocol_pSgMd, &_s14SiriKitRuntime19NSExtensionProtocol_pSgMR);
    v10 = 0;
  }

  v11 = *(v0 + 8);

  return v11(v10);
}

uint64_t FlowExtensionObserver.findExtension(withIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v5 = static ConversationActor.shared;
  v4[9] = static ConversationActor.shared;

  return MEMORY[0x1EEE6DFA0](FlowExtensionObserver.findExtension(withIdentifier:), v5, 0);
}

uint64_t FlowExtensionObserver.findExtension(withIdentifier:)()
{
  v1 = v0[8];
  v2 = *(v1 + 48);
  v0[10] = v2;
  if (v2)
  {

    v3 = swift_task_alloc();
    v0[11] = v3;
    *v3 = v0;
    v3[1] = FlowExtensionObserver.findExtension(withIdentifier:);
    v4 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DA40](v3, v2, v4);
  }

  else
  {
    swift_beginAccess();
    v5 = *(v1 + 56);
    if (v5)
    {
      if (*(v5 + 16))
      {
        v6 = specialized __RawDictionaryStorage.find<A>(_:)(v0[6], v0[7]);
        v8 = v7;
        v9 = v0[5];
        if (v8)
        {
          outlined init with copy of ReferenceResolutionClientProtocol(*(v5 + 56) + 40 * v6, v9);
        }

        else
        {
          *(v9 + 32) = 0;
          *v9 = 0u;
          *(v9 + 16) = 0u;
        }
      }

      else
      {
        v11 = v0[5];
        *(v11 + 32) = 0;
        *v11 = 0u;
        *(v11 + 16) = 0u;
      }

      swift_endAccess();
    }

    else
    {
      v10 = v0[5];
      swift_endAccess();
      *(v10 + 32) = 0;
      *v10 = 0u;
      *(v10 + 16) = 0u;
    }

    v12 = v0[1];

    return v12();
  }
}

{
  v1 = *(*v0 + 72);

  return MEMORY[0x1EEE6DFA0](FlowExtensionObserver.findExtension(withIdentifier:), v1, 0);
}

{
  v1 = v0[8];
  swift_beginAccess();
  v2 = *(v1 + 56);
  if (v2)
  {
    if (*(v2 + 16))
    {
      v3 = specialized __RawDictionaryStorage.find<A>(_:)(v0[6], v0[7]);
      v5 = v4;
      v6 = v0[5];
      if (v5)
      {
        outlined init with copy of ReferenceResolutionClientProtocol(*(v2 + 56) + 40 * v3, v6);
      }

      else
      {
        *(v6 + 32) = 0;
        *v6 = 0u;
        *(v6 + 16) = 0u;
      }
    }

    else
    {
      v8 = v0[5];
      *(v8 + 32) = 0;
      *v8 = 0u;
      *(v8 + 16) = 0u;
    }

    swift_endAccess();
  }

  else
  {
    v7 = v0[5];
    swift_endAccess();
    *(v7 + 32) = 0;
    *v7 = 0u;
    *(v7 + 16) = 0u;
  }

  v9 = v0[1];

  return v9();
}

uint64_t FlowExtensionDiscoverer.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t one-time initialization function for kSharedFlowExtensionObserver()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v10 - v1;
  type metadata accessor for FlowExtensionObserver();
  v3 = swift_allocObject();
  v4 = type metadata accessor for TaskPriority();
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0u;
  *(v3 + 64) = 0;
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v5 = one-time initialization token for shared;

  if (v5 != -1)
  {
    swift_once();
  }

  v6 = static ConversationActor.shared;
  v7 = lazy protocol witness table accessor for type ConversationActor and conformance ConversationActor();
  v8 = swift_allocObject();
  v8[2] = v6;
  v8[3] = v7;
  v8[4] = v3;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v2, &async function pointer to partial apply for closure #1 in closure #1 in variable initialization expression of kSharedFlowExtensionObserver, v8);

  kSharedFlowExtensionObserver = v3;
  return result;
}

uint64_t closure #1 in closure #1 in variable initialization expression of kSharedFlowExtensionObserver(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v5 = static ConversationActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in variable initialization expression of kSharedFlowExtensionObserver, v5, 0);
}

uint64_t closure #1 in closure #1 in variable initialization expression of kSharedFlowExtensionObserver()
{
  FlowExtensionObserver.begin()();
  v1 = *(v0 + 8);

  return v1();
}

void FlowExtensionObserver.begin()()
{
  v1 = v0;
  v2 = *v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = (&v40 - v4);
  v6 = type metadata accessor for OSSignpostID();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v40 - v11;
  if (v0[6])
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static Logger.executor);
    v40 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v40, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1DC659000, v40, v14, "FlowExtensionObserver.begin() called multiple times while still gathering initial extensions. Ignoring.", v15, 2u);
      MEMORY[0x1E12A2F50](v15, -1, -1);
    }

    v16 = v40;
  }

  else
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for OSSignposter();
    __swift_project_value_buffer(v17, static Signposter.executor);
    static OSSignpostID.exclusive.getter();
    v18 = OSSignposter.logHandle.getter();
    v19 = static os_signpost_type_t.begin.getter();
    if (OS_os_log.signpostsEnabled.getter())
    {
      v20 = swift_slowAlloc();
      v40 = v5;
      v21 = v2;
      v22 = v20;
      *v20 = 0;
      v23 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&dword_1DC659000, v18, v19, v23, "LoadAllFlowExtensions", "", v22, 2u);
      v24 = v22;
      v2 = v21;
      v5 = v40;
      MEMORY[0x1E12A2F50](v24, -1, -1);
    }

    (*(v7 + 16))(v9, v12, v6);
    type metadata accessor for OSSignpostIntervalState();
    swift_allocObject();
    v25 = OSSignpostIntervalState.init(id:isOpen:)();
    (*(v7 + 8))(v12, v6);
    v26 = objc_opt_self();
    if (one-time initialization token for extensionPointAttributes != -1)
    {
      swift_once();
    }

    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    v47 = partial apply for closure #1 in FlowExtensionObserver.begin();
    v48 = v1;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v46 = thunk for @escaping @callee_guaranteed (@guaranteed [Any]?, @guaranteed Error?) -> ();
    *(&v46 + 1) = &block_descriptor_12;
    v28 = _Block_copy(&aBlock);

    v29 = [v26 beginMatchingExtensionsWithAttributes:isa completion:v28];
    _Block_release(v28);

    if (v29)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v43 = 0u;
      v44 = 0u;
    }

    aBlock = v43;
    v46 = v44;
    v30 = type metadata accessor for TaskPriority();
    (*(*(v30 - 8) + 56))(v5, 1, 1, v30);
    v31 = one-time initialization token for shared;

    if (v31 != -1)
    {
      swift_once();
    }

    v32 = static ConversationActor.shared;
    v33 = lazy protocol witness table accessor for type ConversationActor and conformance ConversationActor();
    v34 = swift_allocObject();
    v34[2] = v32;
    v34[3] = v33;
    v34[4] = v25;
    v34[5] = v1;
    v34[6] = v2;

    v35 = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v5, &async function pointer to partial apply for closure #2 in FlowExtensionObserver.begin(), v34);
    outlined init with copy of ReferenceResolutionClientProtocol?(&aBlock, &v41, &_sypSgMd, &_sypSgMR);
    if (v42)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(&aBlock, &_sypSgMd, &_sypSgMR);

      outlined init with take of Any(&v41, &v43);
      outlined init with take of Any(&v43, &v41);
      swift_beginAccess();
      outlined assign with take of Any?(&v41, (v1 + 2));
      swift_endAccess();
    }

    else
    {
      outlined destroy of ReferenceResolutionClientProtocol?(&v41, &_sypSgMd, &_sypSgMR);
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v36 = type metadata accessor for Logger();
      __swift_project_value_buffer(v36, static Logger.executor);
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&dword_1DC659000, v37, v38, "Could not set up NSExtension observer, new extensions will not be discovered until assistantd is killed", v39, 2u);
        MEMORY[0x1E12A2F50](v39, -1, -1);
      }

      else
      {
      }

      outlined destroy of ReferenceResolutionClientProtocol?(&aBlock, &_sypSgMd, &_sypSgMR);
    }

    v1[6] = v35;
  }
}

uint64_t one-time initialization function for extensionPointAttributes()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMd, &_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DCA65720;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v1 = MEMORY[0x1E69E6158];
  AnyHashable.init<A>(_:)();
  *(inited + 96) = v1;
  *(inited + 72) = 0xD00000000000001DLL;
  *(inited + 80) = 0x80000001DCA7F880;
  AnyHashable.init<A>(_:)();
  *(inited + 168) = MEMORY[0x1E69E6370];
  *(inited + 144) = 1;
  v2 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11AnyHashableV_yptMd, &_ss11AnyHashableV_yptMR);
  result = swift_arrayDestroy();
  static FlowExtensionObserver.extensionPointAttributes = v2;
  return result;
}

uint64_t FlowExtensionObserver.__allocating_init(forceKnownExtensions:)(uint64_t a1)
{
  v2 = swift_allocObject();
  FlowExtensionObserver.init(forceKnownExtensions:)(a1);
  return v2;
}

uint64_t FlowExtensionObserver.init(forceKnownExtensions:)(uint64_t a1)
{
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 64) = 0;
  v3 = specialized static FlowExtensionObserver.reduceSeenExtensions(_:)(a1);
  swift_beginAccess();
  *(v1 + 56) = v3;

  v4 = specialized static FlowExtensionObserver.reduceSeenTopics(_:)(a1);

  swift_beginAccess();
  *(v1 + 64) = v4;

  return v1;
}

void closure #1 in FlowExtensionObserver.begin()(uint64_t a1, void *a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v20 - v7;
  if (v6 && (v9 = specialized _arrayConditionalCast<A, B>(_:)(v6)) != 0)
  {
    v10 = v9;
    v11 = type metadata accessor for TaskPriority();
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);

    v12 = a2;
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v13 = static ConversationActor.shared;
    v14 = lazy protocol witness table accessor for type ConversationActor and conformance ConversationActor();
    v15 = swift_allocObject();
    v15[2] = v13;
    v15[3] = v14;
    v15[4] = a3;
    v15[5] = v10;
    v15[6] = a2;

    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v8, &async function pointer to partial apply for closure #1 in closure #1 in FlowExtensionObserver.begin(), v15);
  }

  else
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static Logger.executor);
    v21 = Logger.logObject.getter();
    v17 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v21, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1DC659000, v21, v17, "Error when matching new NSExtensions: Could not cast as [NSExtensionProtocol]? Assuming no results.", v18, 2u);
      MEMORY[0x1E12A2F50](v18, -1, -1);
    }

    v19 = v21;
  }
}

uint64_t closure #1 in closure #1 in FlowExtensionObserver.begin()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v7 = static ConversationActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in FlowExtensionObserver.begin(), v7, 0);
}

uint64_t closure #1 in closure #1 in FlowExtensionObserver.begin()()
{
  FlowExtensionObserver.foundExtensions(_:error:)(*(v0 + 24), *(v0 + 32));
  v1 = *(v0 + 8);

  return v1();
}

void FlowExtensionObserver.foundExtensions(_:error:)(uint64_t a1, void *a2)
{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.executor);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    *(v8 + 4) = *(a1 + 16);

    _os_log_impl(&dword_1DC659000, v6, v7, "FlowExtensionObserver: %ld extensions found", v8, 0xCu);
    MEMORY[0x1E12A2F50](v8, -1, -1);

    if (a2)
    {
      goto LABEL_5;
    }

LABEL_8:
    v18 = specialized static FlowExtensionObserver.reduceSeenExtensions(_:)(a1);
    swift_beginAccess();
    *(v2 + 56) = v18;

    v19 = specialized static FlowExtensionObserver.reduceSeenTopics(_:)(a1);
    swift_beginAccess();
    *(v2 + 64) = v19;

    return;
  }

  if (!a2)
  {
    goto LABEL_8;
  }

LABEL_5:
  v9 = a2;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v20[0] = v13;
    *v12 = 136315138;
    v14 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v15 = String.init<A>(describing:)();
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, v20);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_1DC659000, v10, v11, "Error finding Flow Extensions: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x1E12A2F50](v13, -1, -1);
    MEMORY[0x1E12A2F50](v12, -1, -1);
  }

  else
  {
  }
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed [Any]?, @guaranteed Error?) -> ()(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = a3;
  v4(v5, a3);
}

uint64_t closure #2 in FlowExtensionObserver.begin()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 56) = a4;
  *(v5 + 64) = a5;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v6 = static ConversationActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #2 in FlowExtensionObserver.begin(), v6, 0);
}

uint64_t closure #2 in FlowExtensionObserver.begin()()
{
  v26 = v0;
  v25[1] = *MEMORY[0x1E69E9840];
  v1 = objc_opt_self();
  if (one-time initialization token for extensionPointAttributes != -1)
  {
    swift_once();
  }

  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v0[5] = 0;
  v3 = [v1 extensionsWithMatchingAttributes:isa error:v0 + 5];

  v4 = v0[5];
  if (v3)
  {
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v4;

    v7 = specialized _arrayConditionalCast<A, B>(_:)(v5);

    if (v7)
    {
      FlowExtensionObserver.foundExtensions(_:error:)(v7, 0);
    }

    else
    {
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      __swift_project_value_buffer(v19, static Logger.executor);
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_1DC659000, v20, v21, "Error initially finding NSExtensions: Could not cast as [NSExtensionProtocol]? Assuming no results.", v22, 2u);
        MEMORY[0x1E12A2F50](v22, -1, -1);
      }
    }
  }

  else
  {
    v8 = v4;
    v9 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Logger.executor);
    v11 = v9;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v25[0] = v15;
      *v14 = 136446210;
      swift_getErrorValue();
      v16 = Error.localizedDescription.getter();
      v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, v25);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_1DC659000, v12, v13, "Error initially finding NSExtensions: %{public}s? Assuming no results.", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
      MEMORY[0x1E12A2F50](v15, -1, -1);
      MEMORY[0x1E12A2F50](v14, -1, -1);
    }

    else
    {
    }
  }

  $defer #1 () in closure #2 in FlowExtensionObserver.begin()(v0[7], v0[8]);
  v23 = v0[1];

  return v23();
}