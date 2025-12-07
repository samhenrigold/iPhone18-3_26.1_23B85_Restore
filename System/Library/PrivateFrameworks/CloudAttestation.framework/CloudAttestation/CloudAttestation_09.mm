uint64_t sub_22FF65A84(uint64_t a1)
{
  v2 = *(v1 + 304);
  v3 = *(v1 + 296);
  swift_willThrow();

  v4 = *(v1 + 312);
  *(v1 + 152) = v4;
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DAF1D90, &qword_22FFB4410);
  sub_22FF66298(0, &qword_27DAF37E0, 0x277CCA9B8);
  if (!swift_dynamicCast())
  {
    goto LABEL_26;
  }

  v6 = *(v1 + 160);
  v7 = [v6 domain];
  v8 = sub_22FFB1498();
  v10 = v9;

  if (v8 == 0xD00000000000001CLL && 0x800000022FFCB530 == v10)
  {
  }

  else
  {
    v12 = sub_22FFB1BC8();

    if ((v12 & 1) == 0)
    {

      goto LABEL_15;
    }
  }

  v13 = [v6 code];

  if (v13 == 5)
  {

    if (qword_28148F8D8 != -1)
    {
      swift_once();
    }

    v14 = sub_22FFB12F8();
    __swift_project_value_buffer(v14, qword_281491388);
    v15 = v6;
    v16 = sub_22FFB12D8();
    v17 = sub_22FFB1838();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138543362;
      *(v18 + 4) = v15;
      *v19 = v15;
      v20 = v15;
      _os_log_impl(&dword_22FE99000, v16, v17, "Inclusion proof has expired: %{public}@", v18, 0xCu);
      sub_22FEAA1C8(v19);
      MEMORY[0x23190EFF0](v19, -1, -1);
      MEMORY[0x23190EFF0](v18, -1, -1);
    }

    goto LABEL_24;
  }

LABEL_15:
  v21 = [v6 domain];
  v22 = sub_22FFB1498();
  v24 = v23;

  if (v22 == 0xD00000000000001DLL && 0x800000022FFCB550 == v24)
  {

    goto LABEL_19;
  }

  v25 = sub_22FFB1BC8();

  if (v25)
  {
LABEL_19:
    if ([v6 code] == 7)
    {

      if (qword_28148F8D8 != -1)
      {
        swift_once();
      }

      v26 = sub_22FFB12F8();
      __swift_project_value_buffer(v26, qword_281491388);
      v15 = v6;
      v16 = sub_22FFB12D8();
      v27 = sub_22FFB1838();

      if (os_log_type_enabled(v16, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        *v28 = 138543362;
        *(v28 + 4) = v15;
        *v29 = v15;
        v30 = v15;
        _os_log_impl(&dword_22FE99000, v16, v27, "Inclusion proof verification failed: %{public}@", v28, 0xCu);
        sub_22FEAA1C8(v29);
        MEMORY[0x23190EFF0](v29, -1, -1);
        MEMORY[0x23190EFF0](v28, -1, -1);
      }

LABEL_24:
      v31 = *(v1 + 288);

      type metadata accessor for TransparencyLogError(0);
      sub_22FF662F8(&qword_27DAF21C0, type metadata accessor for TransparencyLogError, &protocol conformance descriptor for TransparencyLogError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      goto LABEL_27;
    }
  }

LABEL_26:
  v32 = *(v1 + 288);

  type metadata accessor for TransparencyLogError(0);
  sub_22FF662F8(&qword_27DAF21C0, type metadata accessor for TransparencyLogError, &protocol conformance descriptor for TransparencyLogError);
  swift_allocError();
  *v33 = v4;
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

LABEL_27:

  v34 = *(v1 + 8);

  return v34();
}

uint64_t sub_22FF6605C()
{
  v0 = sub_22FFB12F8();
  __swift_allocate_value_buffer(v0, qword_281491388);
  __swift_project_value_buffer(v0, qword_281491388);
  return sub_22FFB12E8();
}

void sub_22FF660DC(uint64_t a1, void *a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF37E8, &qword_22FFBEA78);
    sub_22FFB1788();
  }

  else
  {
    v6 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF37E8, &qword_22FFBEA78);
    sub_22FFB1798();
  }
}

uint64_t sub_22FF66184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_22FEAA0D4;

  return SWTransparencyVerifier.verifyExpiringInclusion(of:proofs:)(a1, a2, a3, a4);
}

unint64_t sub_22FF66244()
{
  result = qword_27DAF37D8;
  if (!qword_27DAF37D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF37D8);
  }

  return result;
}

uint64_t sub_22FF66298(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_22FF662F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22FF66340(uint64_t *a1, unsigned int a2)
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

uint64_t sub_22FF6639C(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_22FF66430()
{
  result = qword_27DAF37F0;
  if (!qword_27DAF37F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF37F0);
  }

  return result;
}

uint64_t NopTransparencyLog.proveInclusion(of:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  v3 = type metadata accessor for TransparencyLogProofs(0);
  *(v2 + 24) = v3;
  *(v2 + 32) = *(v3 - 8);
  *(v2 + 40) = swift_task_alloc();
  *(v2 + 48) = swift_task_alloc();
  *(v2 + 56) = *v1;

  return MEMORY[0x2822009F8](sub_22FF66568, 0, 0);
}

uint64_t sub_22FF66568()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v4 = *(v0 + 24);
    v27 = *(v0 + 32);
    v28 = MEMORY[0x277D84F90];
    sub_22FECDA70(0, v2, 0);
    v3 = v28;
    v5 = (v1 + 40);
    v26 = v4;
    do
    {
      v6 = *(v0 + 56);
      v7 = *(v0 + 40);
      v8 = *(v5 - 1);
      v9 = *v5;
      v10 = *(v4 + 20);
      sub_22FEA5608(v8, *v5);
      sub_22FFB0848();
      v11 = sub_22FFB0908();
      (*(*(v11 - 8) + 56))(v7 + v10, 0, 1, v11);
      v12 = *(v0 + 40);
      if (v6 == 1)
      {
        type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs(0);
        sub_22FF66C78();
        sub_22FFB11B8();
      }

      else
      {
        _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
        v13 = type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs(0);
        v14 = *(v13 + 20);
        v15 = type metadata accessor for LogEntry(0);
        (*(*(v15 - 8) + 56))(v12 + v14, 1, 1, v15);
        v16 = *(v13 + 24);
        v17 = type metadata accessor for PrivateCloudCompute_TransparencyLog_LogConsistency(0);
        (*(*(v17 - 8) + 56))(v12 + v16, 1, 1, v17);
      }

      v18 = *(v0 + 40);
      v19 = *(v0 + 48);
      v4 = v26;
      v20 = (v18 + *(v26 + 24));
      *v20 = v8;
      v20[1] = v9;
      sub_22FF66CE0(v18, v19, type metadata accessor for TransparencyLogProofs);
      v22 = *(v28 + 16);
      v21 = *(v28 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_22FECDA70((v21 > 1), v22 + 1, 1);
      }

      v5 += 2;
      v23 = *(v0 + 48);
      *(v28 + 16) = v22 + 1;
      sub_22FF66CE0(v23, v28 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v22, type metadata accessor for TransparencyLogProofs);
      --v2;
    }

    while (v2);
  }

  v24 = *(v0 + 8);

  return v24(v3);
}

uint64_t sub_22FF66850()
{
  sub_22FFB1D28();
  sub_22FFB1D28();
  sub_22FFB0898();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FF668FC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22FEABC3C;

  return NopTransparencyLog.proveInclusion(of:)(a1);
}

uint64_t sub_22FF669B0(uint64_t a1)
{
  v2 = type metadata accessor for PrivateCloudCompute_TransparencyLog_LogConsistency(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LogEntry(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v9 = 0;
  v9[8] = 1;
  *(v9 + 2) = MEMORY[0x277D84F90];
  *(v9 + 24) = xmmword_22FFB33B0;
  *(v9 + 5) = 0;
  *(v9 + 6) = 0;
  v9[56] = 1;
  _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
  v10 = *(v6 + 40);
  v11 = type metadata accessor for SignedObject(0);
  (*(*(v11 - 8) + 56))(&v9[v10], 1, 1, v11);
  v12 = type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs(0);
  v13 = *(v12 + 20);
  sub_22FEAEA34(a1 + v13, &qword_27DAF2150, &qword_22FFB5CA0);
  sub_22FF66CE0(v9, a1 + v13, type metadata accessor for LogEntry);
  (*(v7 + 56))(a1 + v13, 0, 1, v6);
  _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
  v14 = *(v2 + 20);
  if (qword_281490E10 != -1)
  {
    swift_once();
  }

  *&v5[v14] = qword_281490E18;
  v15 = *(v12 + 24);

  sub_22FEAEA34(a1 + v15, &qword_27DAF2140, &qword_22FFB5C90);
  sub_22FF66CE0(v5, a1 + v15, type metadata accessor for PrivateCloudCompute_TransparencyLog_LogConsistency);
  return (*(v3 + 56))(a1 + v15, 0, 1, v2);
}

unint64_t sub_22FF66C78()
{
  result = qword_281490ED0[0];
  if (!qword_281490ED0[0])
  {
    type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_281490ED0);
  }

  return result;
}

uint64_t sub_22FF66CE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22FF66D6C(uint64_t a1)
{
  v35 = sub_22FFB0C28();
  v3 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v5)
  {
    v27 = v1;
    v39 = MEMORY[0x277D84F90];
    sub_22FECDAB4(0, v5, 0);
    v38 = v39;
    v7 = a1 + 56;
    result = sub_22FFB1948();
    v8 = result;
    v9 = 0;
    v32 = v3 + 8;
    v33 = v3 + 16;
    v28 = a1 + 64;
    v29 = v5;
    v30 = v3;
    v31 = a1 + 56;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(a1 + 32))
    {
      v11 = v8 >> 6;
      if ((*(v7 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_22;
      }

      v36 = *(a1 + 36);
      v12 = v34;
      v13 = v35;
      (*(v3 + 16))(v34, *(a1 + 48) + *(v3 + 72) * v8, v35);
      v37 = sub_22FF69F84();
      v15 = v14;
      result = (*(v3 + 8))(v12, v13);
      v16 = v38;
      v39 = v38;
      v18 = *(v38 + 16);
      v17 = *(v38 + 24);
      if (v18 >= v17 >> 1)
      {
        result = sub_22FECDAB4((v17 > 1), v18 + 1, 1);
        v16 = v39;
      }

      *(v16 + 16) = v18 + 1;
      v19 = v16 + 16 * v18;
      *(v19 + 32) = v37;
      *(v19 + 40) = v15;
      v10 = 1 << *(a1 + 32);
      if (v8 >= v10)
      {
        goto LABEL_23;
      }

      v7 = v31;
      v20 = *(v31 + 8 * v11);
      if ((v20 & (1 << v8)) == 0)
      {
        goto LABEL_24;
      }

      v38 = v16;
      if (v36 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v21 = v20 & (-2 << (v8 & 0x3F));
      if (v21)
      {
        v10 = __clz(__rbit64(v21)) | v8 & 0x7FFFFFFFFFFFFFC0;
        v3 = v30;
      }

      else
      {
        v22 = v11 << 6;
        v23 = v11 + 1;
        v24 = (v28 + 8 * v11);
        v3 = v30;
        while (v23 < (v10 + 63) >> 6)
        {
          v26 = *v24++;
          v25 = v26;
          v22 += 64;
          ++v23;
          if (v26)
          {
            result = sub_22FED2064(v8, v36, 0);
            v10 = __clz(__rbit64(v25)) + v22;
            goto LABEL_4;
          }
        }

        result = sub_22FED2064(v8, v36, 0);
      }

LABEL_4:
      ++v9;
      v8 = v10;
      if (v9 == v29)
      {
        return v38;
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
  }

  return result;
}

uint64_t Release.init(bundle:evaluateTrust:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v6 = type metadata accessor for Proto_AttestationBundle(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FF6D130(a1, v8, type metadata accessor for Proto_AttestationBundle);
  sub_22FF68C5C(v8, v3, 0, a3);
  return sub_22FF6D5BC(a1, type metadata accessor for AttestationBundle);
}

uint64_t Release.digest<A>(using:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_22FFB0E58();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FFB0E48();
  type metadata accessor for Release(0);
  sub_22FF6D574(&qword_28148F578, type metadata accessor for Release, &protocol conformance descriptor for Release);
  sub_22FFB0E38();
  sub_22FFB0E18();
  v7 = sub_22FF9F990();
  v9 = v8;

  (*(v4 + 8))(v6, v3);
  v12 = v7;
  v13 = v9;
  sub_22FEB0E54();
  sub_22FFB1378();
  return sub_22FEA55AC(v12, v13);
}

uint64_t Release.init(bundle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Proto_AttestationBundle(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FF6D130(a1, v6, type metadata accessor for Proto_AttestationBundle);
  sub_22FF68C5C(v6, 1, 0, a2);
  return sub_22FF6D5BC(a1, type metadata accessor for AttestationBundle);
}

uint64_t Release.jsonString.getter()
{
  v0 = sub_22FFB0508();
  MEMORY[0x28223BE20](v0);
  sub_22FFB0548();
  swift_allocObject();
  sub_22FFB0538();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF37F8, &qword_22FFBEC50);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_22FFB2D20;
  sub_22FFB04F8();
  sub_22FFB04E8();
  v13[0] = v1;
  sub_22FF6D574(&qword_281491368, MEMORY[0x277CC8718], MEMORY[0x277CC8730]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF3800, &qword_22FFBEC58);
  sub_22FEBF78C(&qword_28148F160, &qword_27DAF3800, &qword_22FFBEC58, MEMORY[0x277D83970]);
  sub_22FFB1938();
  sub_22FFB0518();
  type metadata accessor for Release(0);
  sub_22FF6D574(&qword_28148F568, type metadata accessor for Release, &protocol conformance descriptor for Release);
  v2 = sub_22FFB0528();
  v4 = v3;
  v5 = sub_22FF6CADC(v2, v3);
  if (v6)
  {
    goto LABEL_8;
  }

  v11 = v2;
  v12 = v4;
  sub_22FEA5608(v2, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF3808, &qword_22FFBEC60);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v10 = 0;
    memset(v9, 0, sizeof(v9));
    sub_22FEAEA34(v9, &qword_27DAF3810, &qword_22FFBEC68);
LABEL_7:
    v5 = sub_22FF6BE80(v2, v4);
LABEL_8:
    v7 = v5;

    sub_22FEA55AC(v2, v4);
    return v7;
  }

  sub_22FE9B84C(v9, v13);
  __swift_project_boxed_opaque_existential_1(v13, v14);
  if ((sub_22FFB1B08() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1(v13);
    goto LABEL_7;
  }

  sub_22FEA55AC(v2, v4);
  __swift_project_boxed_opaque_existential_1(v13, v14);
  sub_22FFB1AF8();

  v7 = *&v9[0];
  __swift_destroy_boxed_opaque_existential_1(v13);
  return v7;
}

uint64_t sub_22FF67790(uint64_t a1)
{
  v56 = sub_22FFB0818();
  v2 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v55 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_22FFB0C28();
  v4 = *(v54 - 8);
  v5 = MEMORY[0x28223BE20](v54);
  v7 = (&v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v52 = &v50 - v8;
  v9 = *(a1 + 16);
  v65 = MEMORY[0x277D84F90];
  sub_22FECD9B8(0, v9, 0);
  v10 = a1 + 56;
  v11 = v65;
  v12 = -1;
  v13 = -1 << *(a1 + 32);
  if (-v13 < 64)
  {
    v12 = ~(-1 << -v13);
  }

  v14 = v12 & *(a1 + 56);
  v15 = (63 - v13) >> 6;
  v62 = a1 + 56;
  v63 = a1;
  v60 = v4;
  v61 = v15;
  v59 = v9;
  v51 = v2;
  if (v9)
  {
    v53 = (v2 + 8);
    v57 = v4 + 32;
    v58 = v7;

    v17 = 0;
    v9 = 0;
    v18 = v54;
    while (1)
    {
      v64 = v11;
      if (!v14)
      {
        do
        {
          v19 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            __break(1u);
LABEL_58:
            __break(1u);
            goto LABEL_59;
          }

          if (v19 >= v15)
          {
            goto LABEL_58;
          }

          v14 = *(v10 + 8 * v19);
          ++v9;
        }

        while (!v14);
        v9 = v19;
      }

      v20 = (*(result + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v14)))));
      v22 = *v20;
      v21 = v20[1];
      v23 = v21 >> 62;
      if ((v21 >> 62) > 1)
      {
        if (v23 != 2)
        {
          goto LABEL_25;
        }

        v26 = *(v22 + 16);
        v25 = *(v22 + 24);
        v24 = v25 - v26;
        if (__OFSUB__(v25, v26))
        {
          goto LABEL_62;
        }
      }

      else
      {
        if (!v23)
        {
          v24 = BYTE6(v21);
          if (BYTE6(v21))
          {
            goto LABEL_21;
          }

          goto LABEL_25;
        }

        if (__OFSUB__(HIDWORD(v22), v22))
        {
          goto LABEL_61;
        }

        v24 = HIDWORD(v22) - v22;
      }

      sub_22FEA5608(v22, v21);
      if (v24)
      {
LABEL_21:
        if (v24 >= 1)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF36C8, &unk_22FFC0160);
          v27 = swift_allocObject();
          v28 = _swift_stdlib_malloc_size(v27);
          v27[2] = v24;
          v27[3] = 2 * v28 - 64;
        }

        v29 = v55;
        v30 = sub_22FFB0718();
        result = (*v53)(v29, v56);
        v18 = v54;
        if (v30 != v24)
        {
          goto LABEL_60;
        }
      }

LABEL_25:
      v31 = v58;
      sub_22FFB0BF8();
      sub_22FEA55AC(v22, v21);
      v11 = v64;
      v65 = v64;
      v33 = *(v64 + 16);
      v32 = *(v64 + 24);
      if (v33 >= v32 >> 1)
      {
        sub_22FECD9B8((v32 > 1), v33 + 1, 1);
        v18 = v54;
        v11 = v65;
      }

      ++v17;
      v14 &= v14 - 1;
      *(v11 + 16) = v33 + 1;
      v4 = v60;
      (*(v60 + 32))(v11 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v33, v31, v18);
      v15 = v61;
      v10 = v62;
      result = v63;
      if (v17 == v59)
      {
        goto LABEL_30;
      }
    }
  }

  v18 = v54;
LABEL_30:
  v34 = v52;
  v58 = (v51 + 8);
  v59 = v4 + 32;
  if (!v14)
  {
    goto LABEL_32;
  }

  do
  {
    v64 = v11;
LABEL_36:
    v36 = (*(result + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v14)))));
    v37 = *v36;
    v38 = v36[1];
    v39 = v38 >> 62;
    if ((v38 >> 62) > 1)
    {
      if (v39 != 2)
      {
        goto LABEL_52;
      }

      v42 = *(v37 + 16);
      v41 = *(v37 + 24);
      v40 = v41 - v42;
      if (__OFSUB__(v41, v42))
      {
        goto LABEL_64;
      }

LABEL_46:
      sub_22FEA5608(v37, v38);
      if (!v40)
      {
        goto LABEL_52;
      }

      goto LABEL_47;
    }

    if (v39)
    {
      if (__OFSUB__(HIDWORD(v37), v37))
      {
        goto LABEL_65;
      }

      v40 = HIDWORD(v37) - v37;
      goto LABEL_46;
    }

    v40 = BYTE6(v38);
    if (!BYTE6(v38))
    {
      goto LABEL_52;
    }

LABEL_47:
    if (v40 >= 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF36C8, &unk_22FFC0160);
      v43 = swift_allocObject();
      v44 = _swift_stdlib_malloc_size(v43);
      v43[2] = v40;
      v43[3] = 2 * v44 - 64;
    }

    v45 = v55;
    v46 = sub_22FFB0718();
    result = (*v58)(v45, v56);
    v47 = v46 == v40;
    v4 = v60;
    v34 = v52;
    if (!v47)
    {
      goto LABEL_63;
    }

LABEL_52:
    sub_22FFB0BF8();
    sub_22FEA55AC(v37, v38);
    v11 = v64;
    v65 = v64;
    v49 = *(v64 + 16);
    v48 = *(v64 + 24);
    if (v49 >= v48 >> 1)
    {
      sub_22FECD9B8((v48 > 1), v49 + 1, 1);
      v18 = v54;
      v11 = v65;
    }

    v14 &= v14 - 1;
    *(v11 + 16) = v49 + 1;
    (*(v4 + 32))(v11 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v49, v34, v18);
    v10 = v62;
    result = v63;
    v15 = v61;
  }

  while (v14);
LABEL_32:
  while (1)
  {
    v35 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v35 >= v15)
    {

      return v11;
    }

    v14 = *(v10 + 8 * v35);
    ++v9;
    if (v14)
    {
      v64 = v11;
      v9 = v35;
      goto LABEL_36;
    }
  }

LABEL_59:
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
  return result;
}

void *sub_22FF67DCC(uint64_t a1)
{
  v31 = sub_22FFB0818();
  v2 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v30 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22FFB0C28();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v32 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v34 = MEMORY[0x277D84F90];
  result = sub_22FECD9B8(0, v7, 0);
  v9 = v34;
  if (!v7)
  {
    return v9;
  }

  v27 = (v2 + 8);
  v28 = v5;
  v33 = v5 + 32;
  v10 = (a1 + 40);
  v29 = v4;
  v11 = v32;
  while (1)
  {
    v13 = *(v10 - 1);
    v12 = *v10;
    v14 = *v10 >> 62;
    if (v14 > 1)
    {
      if (v14 != 2)
      {
        goto LABEL_19;
      }

      v17 = *(v13 + 16);
      v16 = *(v13 + 24);
      v15 = v16 - v17;
      if (__OFSUB__(v16, v17))
      {
        goto LABEL_24;
      }
    }

    else
    {
      if (!v14)
      {
        v15 = BYTE6(v12);
        if (BYTE6(v12))
        {
          break;
        }

        goto LABEL_6;
      }

      if (__OFSUB__(HIDWORD(v13), v13))
      {
        goto LABEL_23;
      }

      v15 = HIDWORD(v13) - v13;
    }

    sub_22FEA5608(*(v10 - 1), *v10);
    if (v15)
    {
      break;
    }

LABEL_6:
    v11 = v32;
LABEL_19:
    sub_22FFB0BF8();
    sub_22FEA55AC(v13, v12);
    v34 = v9;
    v23 = v11;
    v25 = *(v9 + 16);
    v24 = *(v9 + 24);
    if (v25 >= v24 >> 1)
    {
      sub_22FECD9B8((v24 > 1), v25 + 1, 1);
      v9 = v34;
    }

    v10 += 2;
    *(v9 + 16) = v25 + 1;
    result = (*(v5 + 32))(v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v25, v23, v4);
    --v7;
    v11 = v23;
    if (!v7)
    {
      return v9;
    }
  }

  if (v15 >= 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF36C8, &unk_22FFC0160);
    v18 = swift_allocObject();
    v19 = _swift_stdlib_malloc_size(v18);
    v18[2] = v15;
    v18[3] = 2 * v19 - 64;
  }

  v20 = v30;
  v21 = sub_22FFB0718();
  result = (*v27)(v20, v31);
  v22 = v21 == v15;
  v5 = v28;
  v4 = v29;
  v11 = v32;
  if (v22)
  {
    goto LABEL_19;
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_22FF68120(uint64_t a1)
{
  v2 = *(a1 + 16);
  v11 = MEMORY[0x277D84F90];
  sub_22FECD9FC(0, v2, 0);
  if (!v2)
  {
    return v11;
  }

  v3 = (a1 + 48);
  while (1)
  {
    v4 = *v3;
    v6 = *(v3 - 2);
    v5 = *(v3 - 1);
    result = sub_22FEA5608(v6, v5);
    if (v4 == 4)
    {
      break;
    }

    sub_22FEA5608(v6, v5);
    sub_22FEA55AC(v6, v5);
    v9 = *(v11 + 16);
    v8 = *(v11 + 24);
    if (v9 >= v8 >> 1)
    {
      sub_22FECD9FC((v8 > 1), v9 + 1, 1);
    }

    v3 += 24;
    *(v11 + 16) = v9 + 1;
    v10 = v11 + 16 * v9;
    *(v10 + 32) = v6;
    *(v10 + 40) = v5;
    if (!--v2)
    {
      return v11;
    }
  }

  __break(1u);
  return result;
}

uint64_t Release.apTicket.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22FFB0C28();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Release.cryptexTickets.getter()
{
  type metadata accessor for Release(0);
}

uint64_t Release.unknownFields.getter()
{
  type metadata accessor for Release(0);
}

uint64_t Release.init<A>(apTicket:cryptexTickets:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unsigned int (*a4)(char *, uint64_t, uint64_t)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  sub_22FEA5608(a1, a2);
  sub_22FEC623C(a1, a2);
  sub_22FFB0BF8();
  v12 = sub_22FFB0C28();
  v14 = sub_22FF5EA44(sub_22FF68434, 0, a4, v12, MEMORY[0x277D84A98], a5, MEMORY[0x277D84AC0], v13);
  v15 = sub_22FEBE804(v14);

  v16 = type metadata accessor for Release(0);
  *(a6 + *(v16 + 20)) = v15;
  sub_22FEA55AC(a1, a2);
  result = (*(*(a4 - 1) + 8))(a3, a4);
  *(a6 + *(v16 + 24)) = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_22FF68434(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_22FEA5608(*a1, v2);
  sub_22FEC623C(v1, v2);
  return sub_22FFB0BF8();
}

uint64_t Release.init<A>(apTicket:cryptexTickets:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  v9 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22FFB0C28();
  v13 = *(v12 - 8);
  (*(v13 + 16))(a5, a1, v12);
  (*(v9 + 16))(v11, a2, a3);
  sub_22FF6D574(&qword_28148F1F0, MEMORY[0x277D6A8E8], MEMORY[0x277D6A8F0]);
  v14 = sub_22FFB17E8();
  v15 = type metadata accessor for Release(0);
  *(a5 + *(v15 + 20)) = v14;
  (*(v9 + 8))(a2, a3);
  result = (*(v13 + 8))(a1, v12);
  *(a5 + *(v15 + 24)) = MEMORY[0x277D84F90];
  return result;
}

uint64_t Release.init<A>(apTicket:cryptexTickets:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, unsigned int (*a3)(char *, uint64_t, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X7>, uint64_t a6@<X8>)
{
  v9 = *a1;
  v10 = a1[1];
  v11 = sub_22FF5EA44(sub_22FF5EA10, 0, a3, MEMORY[0x277CC9318], MEMORY[0x277D84A98], a4, MEMORY[0x277D84AC0], a5);
  v12 = sub_22FEBE724(v11);

  sub_22FEA5608(v9, v10);
  sub_22FEC623C(v9, v10);
  sub_22FFB0BF8();
  v13 = sub_22FF67790(v12);

  v14 = sub_22FEBE804(v13);

  v15 = type metadata accessor for Release(0);
  *(a6 + *(v15 + 20)) = v14;
  sub_22FEA55AC(v9, v10);
  *(a6 + *(v15 + 24)) = MEMORY[0x277D84F90];
  v16 = *(*(a3 - 1) + 8);

  return v16(a2, a3);
}

uint64_t Release.init(tickets:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = sub_22FF6CEB4(a1);

  if (!v3[2] || (v4 = sub_22FFA6500(0), (v5 & 1) == 0) || (v6 = *(v3[7] + 8 * v4), !v6[2]))
  {

    sub_22FF6D0DC();
    swift_allocError();
    return swift_willThrow();
  }

  v7 = v6[4];
  v8 = v6[5];
  if (v3[2])
  {
    v9 = sub_22FFA6500(1);
    if (v10)
    {
      v11 = *(v3[7] + 8 * v9);

      if (!v3[2])
      {
        goto LABEL_13;
      }
    }

    else
    {
      v11 = MEMORY[0x277D84F90];
      if (!v3[2])
      {
        goto LABEL_13;
      }
    }

    v14 = sub_22FFA6500(2);
    if (v15)
    {
      v13 = *(v3[7] + 8 * v14);

      goto LABEL_14;
    }

LABEL_13:
    v13 = MEMORY[0x277D84F90];
    goto LABEL_14;
  }

  v11 = MEMORY[0x277D84F90];
  v13 = MEMORY[0x277D84F90];
LABEL_14:
  sub_22FEA5608(v7, v8);
  sub_22FECB4EC(v13);
  v16 = v11;
  v17 = MEMORY[0x277D84F90];
  if (v3[2])
  {
    v18 = sub_22FFA6500(3);
    if (v19)
    {
      v20 = *(v3[7] + 8 * v18);
    }

    else
    {
      v20 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v20 = MEMORY[0x277D84F90];
  }

  sub_22FECB4EC(v20);
  sub_22FEA5608(v7, v8);
  v21 = sub_22FF68120(v16);

  v22 = sub_22FEBE724(v21);

  sub_22FEA5608(v7, v8);
  sub_22FEC623C(v7, v8);
  sub_22FFB0BF8();
  v23 = sub_22FF67790(v22);

  v24 = sub_22FEBE804(v23);

  v25 = type metadata accessor for Release(0);
  *(a2 + *(v25 + 20)) = v24;
  sub_22FEA55AC(v7, v8);
  result = sub_22FEA55AC(v7, v8);
  *(a2 + *(v25 + 24)) = v17;
  return result;
}

uint64_t Release.init<A>(serializedData:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = a1;
  v5 = sub_22FFB0BE8();
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v7 = *(a2 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Release(0);
  (*(v7 + 16))(v9, a1, a2);
  sub_22FFB18E8();
  _s16CloudAttestation7ReleaseV17defaultIdentifier17SwiftASN1Internal0gE0VvgZ_0();
  sub_22FF6D574(&qword_28148F570, type metadata accessor for Release, &protocol conformance descriptor for Release);
  sub_22FFB0DD8();
  return (*(v7 + 8))(v12, a2);
}

uint64_t sub_22FF68C5C@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v6 = a1;
  v76 = *MEMORY[0x277D85DE8];
  v8 = *(a1 + *(type metadata accessor for Proto_AttestationBundle(0) + 20));
  swift_beginAccess();
  v10 = *(v8 + 32);
  v9 = *(v8 + 40);
  v71 = MEMORY[0x277CC9318];
  v72 = MEMORY[0x277CC9300];
  *&v69 = v10;
  *(&v69 + 1) = v9;
  v11 = __swift_project_boxed_opaque_existential_1(&v69, MEMORY[0x277CC9318]);
  v12 = *v11;
  v13 = v11[1];
  v14 = v13 >> 62;
  if ((v13 >> 62) <= 1)
  {
    if (v14)
    {
      v29 = a4;
      v30 = v12;
      v31 = v12 >> 32;
      v32 = v31 - v30;
      if (v31 < v30)
      {
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

      sub_22FEA5608(v10, v9);
      v33 = sub_22FFB0588();
      if (v33)
      {
        v34 = sub_22FFB05B8();
        if (__OFSUB__(v30, v34))
        {
          goto LABEL_46;
        }

        v33 += v30 - v34;
      }

      a4 = v29;
      v35 = sub_22FFB05A8();
      if (v35 >= v32)
      {
        v36 = v32;
      }

      else
      {
        v36 = v35;
      }

      v37 = (v36 + v33);
      if (v33)
      {
        v16 = v37;
      }

      else
      {
        v16 = 0;
      }

      v15 = v33;
    }

    else
    {
      v66[0] = *v11;
      LOWORD(v66[1]) = v13;
      BYTE2(v66[1]) = BYTE2(v13);
      BYTE3(v66[1]) = BYTE3(v13);
      BYTE4(v66[1]) = BYTE4(v13);
      BYTE5(v66[1]) = BYTE5(v13);
      sub_22FEA5608(v10, v9);
      v15 = v66;
      v16 = v66 + BYTE6(v13);
    }

    goto LABEL_28;
  }

  if (v14 != 2)
  {
    memset(v66, 0, 14);
    sub_22FEA5608(v10, v9);
    v15 = v66;
    v16 = v66;
LABEL_28:
    sub_22FF9E9E4(v15, v16, &v67);
    v28 = v4;
    goto LABEL_29;
  }

  v17 = a4;
  v18 = *(v12 + 16);
  v19 = *(v12 + 24);
  sub_22FEA5608(v10, v9);
  v20 = sub_22FFB0588();
  if (v20)
  {
    v21 = sub_22FFB05B8();
    if (__OFSUB__(v18, v21))
    {
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
    }

    v20 += v18 - v21;
  }

  v22 = __OFSUB__(v19, v18);
  v23 = v19 - v18;
  if (v22)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v24 = sub_22FFB05A8();
  if (v24 >= v23)
  {
    v25 = v23;
  }

  else
  {
    v25 = v24;
  }

  v26 = &v20[v25];
  if (v20)
  {
    v27 = v26;
  }

  else
  {
    v27 = 0;
  }

  sub_22FF9E9E4(v20, v27, &v67);
  v28 = v4;
  a4 = v17;
LABEL_29:
  v38 = v67;
  v39 = v68;
  __swift_destroy_boxed_opaque_existential_1(&v69);
  *&v69 = v38;
  *(&v69 + 1) = v39;
  v70 = 0;
  sub_22FEC1A38(a2 & 1, &v73);
  sub_22FEA55AC(v38, v39);
  if (!v28)
  {
    v40 = v73;
    v63 = v74;
    sub_22FF933EC(a3 & 1, &v67);
    v41 = v68;
    if (v68 == 255)
    {
      v46 = MEMORY[0x277D84F90];
    }

    else
    {
      v62 = v6;
      v42 = v67;
      v66[0] = v67;
      LOBYTE(v66[1]) = v68 & 1;
      v43 = sub_22FF936C4();
      sub_22FED8150(v42, v41);
      v44 = *(v43 + 16);
      if (v44)
      {
        v60 = a4;
        v61 = v40;
        v65 = MEMORY[0x277D84F90];
        sub_22FECD9FC(0, v44, 0);
        v45 = 0;
        v46 = v65;
        v47 = (v43 + 48);
        while (v45 < *(v43 + 16))
        {
          v48 = *(v47 - 2);
          v49 = *(v47 - 1);
          v50 = *v47;
          v73 = v48;
          v74 = v49;
          v75 = v50;
          sub_22FEA5608(v48, v49);
          sub_22FEC1A38(a2 & 1, &v69);
          sub_22FEA55AC(v48, v49);
          v51 = v69;
          v53 = *(v65 + 16);
          v52 = *(v65 + 24);
          if (v53 >= v52 >> 1)
          {
            v59 = v69;
            sub_22FECD9FC((v52 > 1), v53 + 1, 1);
            v51 = v59;
          }

          ++v45;
          *(v65 + 16) = v53 + 1;
          *(v65 + 16 * v53 + 32) = v51;
          v47 += 24;
          if (v44 == v45)
          {

            v40 = v61;
            v6 = v62;
            a4 = v60;
            goto LABEL_40;
          }
        }

        __break(1u);
        goto LABEL_43;
      }

      v46 = MEMORY[0x277D84F90];
      v6 = v62;
    }

LABEL_40:
    v54 = sub_22FEBE724(v46);

    sub_22FEA5608(v40, v63);
    sub_22FEC623C(v40, v63);
    sub_22FFB0BF8();
    v55 = sub_22FF67790(v54);

    v56 = sub_22FEBE804(v55);

    v57 = type metadata accessor for Release(0);
    *(a4 + *(v57 + 20)) = v56;
    sub_22FEA55AC(v40, v63);
    *(a4 + *(v57 + 24)) = MEMORY[0x277D84F90];
  }

  return sub_22FF6D5BC(v6, type metadata accessor for Proto_AttestationBundle);
}

uint64_t Release.init(bundle:evaluateTrust:requireCryptex1:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for Proto_AttestationBundle(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FF6D130(a1, v10, type metadata accessor for Proto_AttestationBundle);
  sub_22FF68C5C(v10, a2, a3, a4);
  return sub_22FF6D5BC(a1, type metadata accessor for AttestationBundle);
}

uint64_t Release.serializedData.getter()
{
  v0 = sub_22FFB0E58();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FFB0E48();
  type metadata accessor for Release(0);
  sub_22FF6D574(&qword_28148F578, type metadata accessor for Release, &protocol conformance descriptor for Release);
  sub_22FFB0E38();
  sub_22FFB0E18();
  v4 = sub_22FF9F990();

  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t static Release.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_22FFB0C08() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for Release(0);
  if ((sub_22FEE72BC(*(a1 + *(v4 + 20)), *(a2 + *(v4 + 20))) & 1) == 0)
  {
    return 0;
  }

  v5 = *(v4 + 24);
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);

  return sub_22FEE800C(v6, v7);
}

uint64_t Release.hash(into:)(__int128 *a1)
{
  v3 = sub_22FFB0CC8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FFB0C28();
  sub_22FF6D574(&qword_28148F1F0, MEMORY[0x277D6A8E8], MEMORY[0x277D6A8F0]);
  sub_22FFB1438();
  v7 = type metadata accessor for Release(0);
  sub_22FF6CC88(a1, *(v1 + *(v7 + 20)));
  v8 = *(v1 + *(v7 + 24));
  result = MEMORY[0x23190E460](*(v8 + 16));
  v10 = *(v8 + 16);
  if (v10)
  {
    v13 = *(v4 + 16);
    v11 = v4 + 16;
    v12 = v13;
    v14 = v8 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v15 = *(v11 + 56);
    do
    {
      v12(v6, v14, v3);
      sub_22FF6D574(&qword_27DAF3820, MEMORY[0x277D6A988], MEMORY[0x277D6A990]);
      sub_22FFB1438();
      result = (*(v11 - 8))(v6, v3);
      v14 += v15;
      --v10;
    }

    while (v10);
  }

  return result;
}

uint64_t Release.hashValue.getter()
{
  sub_22FFB1CA8();
  Release.hash(into:)(v1);
  return sub_22FFB1CF8();
}

uint64_t sub_22FF696BC()
{
  sub_22FFB1CA8();
  Release.hash(into:)(v1);
  return sub_22FFB1CF8();
}

uint64_t sub_22FF69700()
{
  sub_22FFB1CA8();
  Release.hash(into:)(v1);
  return sub_22FFB1CF8();
}

uint64_t sub_22FF6973C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_22FFB0C08() & 1) == 0 || (sub_22FEE72BC(*(a1 + *(a3 + 20)), *(a2 + *(a3 + 20))) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 24);
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);

  return sub_22FEE800C(v7, v8);
}

char *Release.sha256.getter()
{
  v0 = sub_22FFB13C8();
  v16 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v2 = &v14 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22FFB0E58();
  v3 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22FFB1398();
  v6 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FFB0E48();
  type metadata accessor for Release(0);
  sub_22FF6D574(&qword_28148F578, type metadata accessor for Release, &protocol conformance descriptor for Release);
  sub_22FFB0E38();
  sub_22FFB0E18();
  v9 = sub_22FF9F990();
  v11 = v10;

  (*(v3 + 8))(v5, v14);
  sub_22FF6D574(&qword_28148F198, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
  sub_22FFB1388();
  sub_22FEA5608(v9, v11);
  sub_22FF9EA78(v9, v11, v2);
  sub_22FEA55AC(v9, v11);
  sub_22FFB1368();
  sub_22FEA55AC(v9, v11);
  (*(v16 + 8))(v2, v0);
  v12 = sub_22FF95DBC();
  (*(v6 + 8))(v8, v15);
  return v12;
}

unint64_t Release.description.getter()
{
  sub_22FFB19B8();

  v0 = Release.sha256.getter();
  MEMORY[0x23190DD10](v0);

  MEMORY[0x23190DD10](41, 0xE100000000000000);
  return 0xD000000000000010;
}

unint64_t sub_22FF69B8C()
{
  sub_22FFB19B8();

  v0 = Release.sha256.getter();
  MEMORY[0x23190DD10](v0);

  MEMORY[0x23190DD10](41, 0xE100000000000000);
  return 0xD000000000000010;
}

uint64_t Release.encode(to:)(void *a1)
{
  v4 = type metadata accessor for Release(0);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FF6D130(v1, v7, type metadata accessor for Release);
  v8 = sub_22FF69F84();
  v10 = v9;
  v13 = sub_22FF66D6C(*&v7[*(v5 + 28)]);

  sub_22FF6BF28(&v13);
  if (v2)
  {

    __break(1u);
  }

  else
  {

    sub_22FF6D5BC(v7, type metadata accessor for Release);
    sub_22FF69D6C(a1, 1, v8, v10, v13);
  }

  return result;
}

uint64_t sub_22FF69D6C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13[1] = a3;
  v13[2] = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF3848, &unk_22FFBEEB0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v13 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22FF6D4A4();
  sub_22FFB1D18();
  v16 = 0;
  sub_22FFB1B78();
  if (!v5)
  {
    v15 = 1;
    sub_22FFB1B68();
    v13[3] = a5;
    v14 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAF3740, &unk_22FFB4290);
    sub_22FF6D4F8();
    sub_22FFB1B88();
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_22FF69F84()
{
  v0 = sub_22FFB13C8();
  v34 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v2 = &v29 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_22FFB1398();
  v29 = *(v3 - 8);
  v30 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v29 - v7;
  sub_22FFB0C18();
  sub_22FF6D574(&qword_28148F198, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
  sub_22FFB1388();
  result = sub_22FFB18D8();
  if (!__OFSUB__(v10 >> 1, v11))
  {
    sub_22FFB1358();
    swift_unknownObjectRelease();
    sub_22FFB1368();
    swift_unknownObjectRelease();
    (*(v34 + 8))(v2, v0);
    v12 = v29;
    v13 = v30;
    (*(v29 + 16))(v6, v8, v30);
    sub_22FF6D574(&qword_28148F1B8, MEMORY[0x277CC5290], MEMORY[0x277CC52A8]);
    result = sub_22FFB1608();
    v15 = v35;
    v14 = v36;
    v34 = *(v35 + 16);
    v16 = v12;
    v17 = MEMORY[0x277D84F90];
    if (v36 == v34)
    {
LABEL_3:
      (*(v16 + 8))(v8, v13);

      v35 = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAF3740, &unk_22FFB4290);
      sub_22FEBF78C(&qword_28148F130, &unk_27DAF3740, &unk_22FFB4290, MEMORY[0x277D83958]);
      v18 = sub_22FFB1458();

      return v18;
    }

    v32 = v35 + 32;
    v31 = xmmword_22FFB2D10;
    v19 = v36;
    v33 = v8;
    while ((v14 & 0x8000000000000000) == 0)
    {
      if (v19 >= *(v15 + 16))
      {
        goto LABEL_14;
      }

      v20 = v14;
      v21 = *(v32 + v19);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAF3750, &qword_22FFB35F0);
      v22 = swift_allocObject();
      *(v22 + 16) = v31;
      *(v22 + 56) = MEMORY[0x277D84B78];
      *(v22 + 64) = MEMORY[0x277D84BC0];
      *(v22 + 32) = v21;
      v23 = sub_22FFB14D8();
      v25 = v24;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_22FEC2E8C(0, *(v17 + 16) + 1, 1, v17);
        v17 = result;
      }

      v27 = *(v17 + 16);
      v26 = *(v17 + 24);
      if (v27 >= v26 >> 1)
      {
        result = sub_22FEC2E8C((v26 > 1), v27 + 1, 1, v17);
        v17 = result;
      }

      ++v19;
      *(v17 + 16) = v27 + 1;
      v28 = v17 + 16 * v27;
      *(v28 + 32) = v23;
      *(v28 + 40) = v25;
      v8 = v33;
      v14 = v20;
      if (v34 == v19)
      {
        goto LABEL_3;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22FF6A3F8()
{
  v1 = 0x74656B6369547061;
  if (*v0 != 1)
  {
    v1 = 0x5478657470797263;
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

uint64_t sub_22FF6A460@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_22FF6D7CC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_22FF6A488(uint64_t a1)
{
  v2 = sub_22FF6D4A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22FF6A4C4(uint64_t a1)
{
  v2 = sub_22FF6D4A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22FF6A570(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FFB0CC8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22FFB0BE8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = 1;
  result = sub_22FFB0E38();
  if (!v2)
  {
    sub_22FFB0C28();
    sub_22FFB0E38();
    v19 = 0;
    v18 = type metadata accessor for Release(0);
    v21 = *(a2 + *(v18 + 20));
    v20 = v21;

    sub_22FFB0B58();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF3840, &qword_22FFBEEA8);
    sub_22FEBF78C(&qword_28148F100, &qword_27DAF3840, &qword_22FFBEEA8, MEMORY[0x277D83B68]);
    v13 = v19;
    sub_22FFB0E08();
    if (v13)
    {
      (*(v9 + 8))(v11, v8);
    }

    (*(v9 + 8))(v11, v8);

    v14 = *(a2 + *(v18 + 24));
    v15 = *(v14 + 16);

    v20 = v15;
    if (!v15)
    {
    }

    v16 = 0;
    while (v16 < *(v14 + 16))
    {
      (*(v5 + 16))(v7, v14 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v16, v4);
      sub_22FFB0E38();
      ++v16;
      result = (*(v5 + 8))(v7, v4);
      if (v20 == v16)
      {
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t Release.init(derEncoded:withIdentifier:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Release(0);
  sub_22FFB0EA8();
  v4 = sub_22FFB0BE8();
  (*(*(v4 - 8) + 8))(a2, v4);
  v5 = sub_22FFB0D08();
  return (*(*(v5 - 8) + 8))(a1, v5);
}

uint64_t sub_22FF6A9A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v50 = sub_22FFB0CC8();
  v46 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v53 = v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1CC8, &qword_22FFBEEA0);
  MEMORY[0x28223BE20](v4 - 8);
  v56 = v40 - v5;
  v47 = sub_22FFB0D08();
  v55 = *(v47 - 8);
  v6 = MEMORY[0x28223BE20](v47);
  v51 = v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v52 = v40 - v8;
  v9 = sub_22FFB0C28();
  v49 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22FFB0BE8();
  v48 = *(v12 - 8);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v16);
  sub_22FFB0DB8();
  v17 = v57;
  result = sub_22FFB0DC8();
  if (!v17)
  {
    v43 = v12;
    v44 = v11;
    v45 = v9;
    v57 = a1;
    v19 = v58;
    if (v58 == 1)
    {
      sub_22FFB0DB8();
      sub_22FFB0DC8();
      sub_22FFB0B58();
      v40[0] = sub_22FFB0E68();
      (*(v48 + 8))(v15, v43);
      v21 = v56;
      sub_22FFB0C48();
      v22 = v55;
      v23 = *(v55 + 48);
      v24 = v47;
      v48 = v55 + 48;
      v43 = v23;
      if (v23(v21, 1, v47) == 1)
      {
        v25 = MEMORY[0x277D84F90];
        v26 = v54;
        v27 = v56;
      }

      else
      {
        v33 = *(v22 + 32);
        v32 = v22 + 32;
        v41 = (v32 - 16);
        v42 = v33;
        v55 = v32;
        v34 = (v32 - 24);
        v35 = v46;
        v40[1] = v46 + 32;
        v25 = MEMORY[0x277D84F90];
        v36 = v52;
        v27 = v56;
        do
        {
          v42(v36, v27, v24);
          (*v41)(v51, v36, v24);
          sub_22FFB0CB8();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v25 = sub_22FEC369C(0, v25[2] + 1, 1, v25);
          }

          v38 = v25[2];
          v37 = v25[3];
          v36 = v52;
          if (v38 >= v37 >> 1)
          {
            v25 = sub_22FEC369C((v37 > 1), v38 + 1, 1, v25);
          }

          (*v34)(v36, v24);
          v25[2] = v38 + 1;
          (*(v35 + 32))(v25 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v38, v53, v50);
          v27 = v56;
          sub_22FFB0C48();
          v39 = v43(v27, 1, v24);
          v26 = v54;
        }

        while (v39 != 1);
      }

      sub_22FEAEA34(v27, &qword_27DAF1CC8, &qword_22FFBEEA0);
      v28 = v49;
      v30 = v44;
      v29 = v45;
      (*(v49 + 16))(v26, v44, v45);
      v31 = sub_22FEBE804(v40[0]);

      (*(v28 + 8))(v30, v29);
      result = type metadata accessor for Release(0);
      *(v26 + *(result + 20)) = v31;
      *(v26 + *(result + 24)) = v25;
    }

    else
    {
      v58 = 0;
      v59 = 0xE000000000000000;
      sub_22FFB19B8();

      v58 = 0xD000000000000015;
      v59 = 0x800000022FFCB610;
      v60 = v19;
      v20 = sub_22FFB1BA8();
      MEMORY[0x23190DD10](v20);

      sub_22FFB0D38();
      sub_22FF6D574(&qword_27DAF1CA0, MEMORY[0x277D6A9C0], MEMORY[0x277D6A9C8]);
      swift_allocError();
      sub_22FFB0D18();

      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_22FF6B118(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22FFB0EA8();
  v5 = sub_22FFB0BE8();
  (*(*(v5 - 8) + 8))(a2, v5);
  v6 = sub_22FFB0D08();
  return (*(*(v6 - 8) + 8))(a1, v6);
}

uint64_t static Release.local<A>(assetProvider:requireCryptex1:)@<X0>(char a1@<W1>, uint64_t a2@<X2>, unint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v6 = a3;
  v110 = *MEMORY[0x277D85DE8];
  result = (*(a3 + 8))(a2, a3);
  if (!v4)
  {
    v12 = result;
    v13 = v11;
    v14 = (*(v6 + 24))(a2, v6);
    v95 = a4;
    if (qword_281490280 != -1)
    {
      swift_once();
    }

    v15 = sub_22FFB0958();
    v16 = __swift_project_value_buffer(v15, qword_281491418);
    v17 = MEMORY[0x277CC9318];
    v18 = MEMORY[0x277CC9300];
    if (!*(v14 + 16) || (v19 = sub_22FFA6214(v16), (v20 & 1) == 0))
    {

      v96 = 0;
      goto LABEL_64;
    }

    v21 = *(*(v14 + 56) + 8 * v19);

    v22 = *(v21 + 16);
    if (!v22)
    {
      v96 = MEMORY[0x277D84F90];
      goto LABEL_63;
    }

    v23 = 0;
    if (a1)
    {
      v24 = 1;
    }

    else
    {
      v24 = 3;
    }

    v94 = v24;
    v25 = v22 - 1;
    v96 = MEMORY[0x277D84F90];
    do
    {
      v26 = (v23 << 6) | 0x20;
      v27 = v23;
      while (1)
      {
        if (v27 >= *(v21 + 16))
        {
          __break(1u);

          sub_22FEBF960(&v106);
          sub_22FEA55AC(v12, v13);
          sub_22FEA56EC(v92, v5);
          sub_22FEA55AC(v89, v6);
        }

        v28 = *(v21 + v26 + 48);
        v29 = *(v21 + v26);
        v30 = *(v21 + v26 + 16);
        v108 = *(v21 + v26 + 32);
        v109 = v28;
        v106 = v29;
        v107 = v30;
        v5 = *(&v30 + 1);
        if (*(&v30 + 1) >> 60 != 15 && v108 != 4)
        {
          break;
        }

        ++v27;
        v26 += 64;
        if (v22 == v27)
        {
          goto LABEL_63;
        }
      }

      v103 = MEMORY[0x277CC9318];
      v104 = MEMORY[0x277CC9300];
      v93 = v107;
      v102 = __PAIR128__(*(&v30 + 1), v107);
      v31 = __swift_project_boxed_opaque_existential_1(&v102, MEMORY[0x277CC9318]);
      v32 = *v31;
      v88 = v25;
      v90 = v31[1];
      v33 = v90 >> 62;
      if ((v90 >> 62) <= 1)
      {
        if (!v33)
        {
          __src = *v31;
          v98 = v90;
          v99 = WORD2(v90);
          if (BYTE6(v90))
          {
            if (BYTE6(v90) <= 0xEuLL)
            {
              *(&__dst + 6) = 0;
              *&__dst = 0;
              BYTE14(__dst) = BYTE6(v90);
              memcpy(&__dst, &__src, BYTE6(v90));
              v91 = __dst;
              v6 = v79 & 0xF00000000000000 | DWORD2(__dst) | ((WORD6(__dst) | (BYTE14(__dst) << 16)) << 32);
              sub_22FEBF8F0(v93, v5);
              v34 = v91;
              sub_22FEBF8F0(v93, v5);
              sub_22FEBF904(&v106, &__dst);
              v79 = v6;
            }

            else
            {
              sub_22FFB05D8();
              swift_allocObject();
              sub_22FEBF8F0(v93, v5);
              sub_22FEBF8F0(v93, v5);
              sub_22FEBF904(&v106, &__dst);
              v34 = BYTE6(v90) << 32;
              v6 = sub_22FFB0578() | 0x4000000000000000;
            }
          }

          else
          {
            sub_22FEBF8F0(v93, v5);
            sub_22FEBF8F0(v93, v5);
            sub_22FEBF904(&v106, &__dst);
            v34 = 0;
            v6 = 0xC000000000000000;
          }

          goto LABEL_55;
        }

        v83 = (v32 >> 32) - v32;
        v86 = v32;
        if (v32 >> 32 >= v32)
        {
          sub_22FEBF8F0(v93, v5);
          sub_22FEBF8F0(v93, v5);
          sub_22FEBF904(&v106, &__dst);
          v38 = sub_22FFB0588();
          if (v38)
          {
            v81 = v38;
            v39 = sub_22FFB05B8();
            if (!__OFSUB__(v86, v39))
            {
              v87 = v86 + v81 - v39;
              goto LABEL_41;
            }

LABEL_98:
            __break(1u);
          }

          v87 = 0;
LABEL_41:
          v45 = sub_22FFB05A8();
          if (v45 >= v83)
          {
            v46 = v83;
          }

          else
          {
            v46 = v45;
          }

          v6 = 0xC000000000000000;
          if (v87 && v46)
          {
            if (v46 < 15)
            {
              *(&__dst + 6) = 0;
              *&__dst = 0;
              BYTE14(__dst) = v46;
              memcpy(&__dst, v87, v46);
              v34 = __dst;
              v6 = v77 & 0xF00000000000000 | DWORD2(__dst) | ((WORD6(__dst) | (BYTE14(__dst) << 16)) << 32);
              v77 = v6;
              goto LABEL_55;
            }

            v44 = v46;
            goto LABEL_48;
          }

LABEL_50:
          v34 = 0;
          goto LABEL_55;
        }

LABEL_95:
        __break(1u);
LABEL_96:
        __break(1u);
LABEL_97:
        __break(1u);
        goto LABEL_98;
      }

      if (v33 != 2)
      {
        v40 = *v31;
        sub_22FEBF8F0(v93, v5);
        v34 = v40;
        sub_22FEBF8F0(v93, v5);
        sub_22FEBF904(&v106, &__dst);
        v6 = v90;
        goto LABEL_55;
      }

      v80 = *(v32 + 24);
      v82 = *(v32 + 16);
      sub_22FEBF8F0(v93, v5);
      sub_22FEBF8F0(v93, v5);
      sub_22FEBF904(&v106, &__dst);
      v35 = sub_22FFB0588();
      if (v35)
      {
        v84 = v35;
        v36 = sub_22FFB05B8();
        v37 = v82;
        if (__OFSUB__(v82, v36))
        {
          goto LABEL_97;
        }

        v85 = &v84[v82 - v36];
      }

      else
      {
        v85 = 0;
        v37 = v82;
      }

      v41 = v80 - v37;
      if (__OFSUB__(v80, v37))
      {
        goto LABEL_96;
      }

      v42 = sub_22FFB05A8();
      if (v42 >= v41)
      {
        v43 = v41;
      }

      else
      {
        v43 = v42;
      }

      v6 = 0xC000000000000000;
      if (!v85 || !v43)
      {
        goto LABEL_50;
      }

      if (v43 < 15)
      {
        *(&__dst + 6) = 0;
        *&__dst = 0;
        BYTE14(__dst) = v43;
        memcpy(&__dst, v85, v43);
        v34 = __dst;
        v6 = v78 & 0xF00000000000000 | DWORD2(__dst) | ((WORD6(__dst) | (BYTE14(__dst) << 16)) << 32);
        v78 = v6;
        goto LABEL_55;
      }

      v44 = v43;
LABEL_48:
      sub_22FFB05D8();
      swift_allocObject();
      v47 = sub_22FFB0578();
      v48 = v47;
      if (v44 >= 0x7FFFFFFF)
      {
        sub_22FFB0738();
        v50 = swift_allocObject();
        *(v50 + 16) = 0;
        *(v50 + 24) = v44;
        v6 = v48 | 0x8000000000000000;
        v34 = v50;
      }

      else
      {
        v49 = v44 << 32;
        v6 = v47 | 0x4000000000000000;
        v34 = v49;
      }

LABEL_55:
      __swift_destroy_boxed_opaque_existential_1(&v102);
      v89 = v34;
      *&__dst = v34;
      *(&__dst + 1) = v6;
      v101 = v94;
      sub_22FEC1A38(1, v105);
      sub_22FEBF960(&v106);
      sub_22FEA56EC(v93, v5);
      sub_22FEA55AC(v34, v6);
      v92 = v105[0];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v96 = sub_22FEC334C(0, *(v96 + 2) + 1, 1, v96);
      }

      v5 = *(v96 + 2);
      v51 = *(v96 + 3);
      if (v5 >= v51 >> 1)
      {
        v96 = sub_22FEC334C((v51 > 1), v5 + 1, 1, v96);
      }

      v23 = v27 + 1;
      *(v96 + 2) = v5 + 1;
      *&v96[16 * v5 + 32] = v92;
      v25 = v88;
    }

    while (v88 != v27);
LABEL_63:

    v17 = MEMORY[0x277CC9318];
    v18 = MEMORY[0x277CC9300];
LABEL_64:
    *(&v107 + 1) = v17;
    *&v108 = v18;
    *&v106 = v12;
    *(&v106 + 1) = v13;
    v52 = __swift_project_boxed_opaque_existential_1(&v106, v17);
    v53 = *v52;
    v54 = v52[1];
    v55 = v54 >> 62;
    if ((v54 >> 62) <= 1)
    {
      if (!v55)
      {
        *&v105[0] = *v52;
        WORD4(v105[0]) = v54;
        BYTE10(v105[0]) = BYTE2(v54);
        BYTE11(v105[0]) = BYTE3(v54);
        BYTE12(v105[0]) = BYTE4(v54);
        BYTE13(v105[0]) = BYTE5(v54);
        sub_22FEA5608(v12, v13);
        v56 = v105;
        v57 = v105 + BYTE6(v54);
        goto LABEL_86;
      }

LABEL_74:
      v64 = v53;
      v65 = v53 >> 32;
      v63 = v65 - v64;
      if (v65 >= v64)
      {
        sub_22FEA5608(v12, v13);
        v60 = sub_22FFB0588();
        if (!v60)
        {
          goto LABEL_78;
        }

        v66 = sub_22FFB05B8();
        if (!__OFSUB__(v64, v66))
        {
          v60 += v64 - v66;
          goto LABEL_78;
        }

LABEL_94:
        __break(1u);
        goto LABEL_95;
      }

      __break(1u);
LABEL_93:
      __break(1u);
      goto LABEL_94;
    }

    if (v55 == 2)
    {
      v58 = *(v53 + 16);
      v59 = *(v53 + 24);
      sub_22FEA5608(v12, v13);
      v60 = sub_22FFB0588();
      if (v60)
      {
        v61 = sub_22FFB05B8();
        v53 = v58 - v61;
        if (__OFSUB__(v58, v61))
        {
          goto LABEL_93;
        }

        v60 += v53;
      }

      v62 = __OFSUB__(v59, v58);
      v63 = v59 - v58;
      if (v62)
      {
        __break(1u);
        goto LABEL_74;
      }

LABEL_78:
      v67 = sub_22FFB05A8();
      if (v67 >= v63)
      {
        v68 = v63;
      }

      else
      {
        v68 = v67;
      }

      v69 = (v68 + v60);
      if (v60)
      {
        v57 = v69;
      }

      else
      {
        v57 = 0;
      }

      v56 = v60;
    }

    else
    {
      *(v105 + 6) = 0;
      *&v105[0] = 0;
      sub_22FEA5608(v12, v13);
      v56 = v105;
      v57 = v105;
    }

LABEL_86:
    sub_22FF9E9E4(v56, v57, &v102);
    v70 = v102;
    __swift_destroy_boxed_opaque_existential_1(&v106);
    v106 = v70;
    LOBYTE(v107) = 0;
    sub_22FEC1A38(1, &__dst);
    sub_22FEA55AC(v70, *(&v70 + 1));
    v71 = __dst;
    v72 = MEMORY[0x277D84F90];
    if (v96)
    {
      v73 = v96;
    }

    else
    {
      v73 = MEMORY[0x277D84F90];
    }

    sub_22FEA5608(__dst, *(&__dst + 1));
    sub_22FEC623C(v71, *(&v71 + 1));
    sub_22FFB0BF8();
    v74 = sub_22FF67DCC(v73);

    v75 = sub_22FEBE804(v74);

    v76 = type metadata accessor for Release(0);
    *(v95 + *(v76 + 20)) = v75;
    sub_22FEA55AC(v71, *(&v71 + 1));
    result = sub_22FEA55AC(v12, v13);
    *(v95 + *(v76 + 24)) = v72;
  }

  return result;
}

uint64_t type metadata accessor for Release(uint64_t a1)
{
  result = qword_28148F558;
  if (!qword_28148F558)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_22FF6BE0C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF36C8, &unk_22FFC0160);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_22FF6BE80(uint64_t a1, unint64_t a2)
{
  sub_22FEA5608(a1, a2);
  sub_22FF6C960(a1, a2);
  v4 = sub_22FFB1528();

  return v4;
}

uint64_t sub_22FF6BEEC@<X0>(uint64_t *a3@<X8>)
{
  result = sub_22FFB1528();
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_22FF6BF28(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_22FF9021C(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_22FF6BF94(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_22FF6BF94(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_22FFB1B98();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_22FFB1718();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_22FF6C15C(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_22FF6C08C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_22FF6C08C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_22FFB1BC8(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22FF6C15C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_22FF8FB54(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_22FF6C738((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_22FFB1BC8();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_22FFB1BC8();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_22FEC2F98(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_22FEC2F98((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
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
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_22FF6C738((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_22FF8FB54(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_22FF8FAC8(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = v9 + a4;
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_22FFB1BC8(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_22FF6C738(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_22FFB1BC8() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_22FFB1BC8() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

void *sub_22FF6C960(uint64_t a1, unint64_t a2)
{
  v4 = sub_22FFB0818();
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v9 != 2)
    {
LABEL_12:
      sub_22FEA55AC(a1, a2);
      return MEMORY[0x277D84F90];
    }

    v12 = *(a1 + 16);
    v11 = *(a1 + 24);
    v10 = v11 - v12;
    if (!__OFSUB__(v11, v12))
    {
      if (v10)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
    if (v9)
    {
      goto LABEL_10;
    }

    v10 = BYTE6(a2);
    if (!BYTE6(a2))
    {
      goto LABEL_12;
    }

LABEL_8:
    while (1)
    {
      v13 = sub_22FF6BE0C(v10, 0);
      v14 = sub_22FFB0718();
      sub_22FEA55AC(a1, a2);
      v15 = *(v5 + 8);
      v5 += 8;
      v15(v8, v4);
      result = v13;
      if (v14 == v10)
      {
        break;
      }

      __break(1u);
LABEL_10:
      v16 = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_15;
      }

      v10 = v16;
      if (!v16)
      {
        goto LABEL_12;
      }
    }
  }

  return result;
}

uint64_t sub_22FF6CADC(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      return sub_22FFB1528();
    }

    goto LABEL_10;
  }

  if (v2 != 2)
  {
    return sub_22FFB1528();
  }

  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  a1 = sub_22FFB0588();
  if (a1)
  {
    a1 = sub_22FFB05B8();
    if (__OFSUB__(v3, a1))
    {
      goto LABEL_18;
    }
  }

  if (__OFSUB__(v4, v3))
  {
    __break(1u);
LABEL_10:
    v5 = a1;
    if (a1 >> 32 >= a1)
    {
      if (!sub_22FFB0588() || !__OFSUB__(v5, sub_22FFB05B8()))
      {
        goto LABEL_15;
      }

LABEL_19:
      __break(1u);
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_15:
  sub_22FFB05A8();
  return sub_22FFB1528();
}

uint64_t sub_22FF6CC88(__int128 *a1, uint64_t a2)
{
  v4 = sub_22FFB0C28();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1[3];
  v25 = a1[2];
  v26 = v8;
  v27 = *(a1 + 8);
  v10 = *a1;
  v9 = a1[1];
  v22[0] = a1;
  v23 = v10;
  v24 = v9;
  v11 = sub_22FFB1CF8();
  v12 = 1 << *(a2 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a2 + 56);
  v15 = (v12 + 63) >> 6;
  v22[2] = v5 + 16;
  v22[3] = v11;
  v22[1] = v5 + 8;

  v17 = 0;
  for (i = 0; v14; v17 ^= v21)
  {
    v19 = i;
LABEL_9:
    v20 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    (*(v5 + 16))(v7, *(a2 + 48) + *(v5 + 72) * (v20 | (v19 << 6)), v4);
    sub_22FF6D574(&qword_28148F1F0, MEMORY[0x277D6A8E8], MEMORY[0x277D6A8F0]);
    v21 = sub_22FFB1428();
    result = (*(v5 + 8))(v7, v4);
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

      return MEMORY[0x23190E460](v17);
    }

    v14 = *(a2 + 56 + 8 * v19);
    ++i;
    if (v14)
    {
      i = v19;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void *sub_22FF6CEB4(uint64_t a1)
{
  v1 = MEMORY[0x277D84F98];
  v34 = MEMORY[0x277D84F98];
  v2 = *(a1 + 16);
  if (!v2)
  {
    return v1;
  }

  for (i = (a1 + 48); ; i += 24)
  {
    v6 = *(i - 2);
    v5 = *(i - 1);
    v7 = *i;
    v8 = sub_22FFA6500(v7);
    v10 = v1[2];
    v11 = (v9 & 1) == 0;
    v12 = v10 + v11;
    if (__OFADD__(v10, v11))
    {
      break;
    }

    v13 = v8;
    v14 = v9;
    v15 = v5;
    v16 = v2;
    v17 = v1[3];
    v33 = v15;
    sub_22FEA5608(v6, v15);
    if (v17 < v12)
    {
      sub_22FF8BC3C(v12, 1);
      v1 = v34;
      v18 = sub_22FFA6500(v7);
      if ((v14 & 1) != (v19 & 1))
      {
        goto LABEL_19;
      }

      v13 = v18;
    }

    if (v14)
    {
      v20 = v1[7];
      v21 = *(v20 + 8 * v13);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v20 + 8 * v13) = v21;
      v32 = v20;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v21 = sub_22FEC3564(0, *(v21 + 2) + 1, 1, v21);
        *(v20 + 8 * v13) = v21;
      }

      v24 = *(v21 + 2);
      v23 = *(v21 + 3);
      v25 = v24 + 1;
      if (v24 >= v23 >> 1)
      {
        v26 = sub_22FEC3564((v23 > 1), v24 + 1, 1, v21);
        v25 = v24 + 1;
        v21 = v26;
        *(v32 + 8 * v13) = v26;
      }

      *(v21 + 2) = v25;
      v4 = &v21[24 * v24];
      *(v4 + 4) = v6;
      *(v4 + 5) = v33;
      v4[48] = v7;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1C48, &qword_22FFB43E0);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_22FFB2D10;
      *(v27 + 32) = v6;
      *(v27 + 40) = v33;
      *(v27 + 48) = v7;
      v1[(v13 >> 6) + 8] |= 1 << v13;
      *(v1[6] + v13) = v7;
      *(v1[7] + 8 * v13) = v27;
      v28 = v1[2];
      v29 = __OFADD__(v28, 1);
      v30 = v28 + 1;
      if (v29)
      {
        goto LABEL_18;
      }

      v1[2] = v30;
    }

    v2 = v16 - 1;
    if (v16 == 1)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_22FFB1C18();
  __break(1u);
  return result;
}

unint64_t sub_22FF6D0DC()
{
  result = qword_27DAF3818;
  if (!qword_27DAF3818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF3818);
  }

  return result;
}

uint64_t sub_22FF6D130(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_22FF6D2B4(uint64_t a1)
{
  sub_22FFB0C28();
  if (v1 <= 0x3F)
  {
    sub_22FF6D350(319);
    if (v2 <= 0x3F)
    {
      sub_22FF6D3E4(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22FF6D350(uint64_t a1)
{
  if (!qword_28148F108)
  {
    sub_22FFB0C28();
    sub_22FF6D574(&qword_28148F1F0, MEMORY[0x277D6A8E8], MEMORY[0x277D6A8F0]);
    v1 = sub_22FFB17D8();
    if (!v2)
    {
      atomic_store(v1, &qword_28148F108);
    }
  }
}

void sub_22FF6D3E4(uint64_t a1)
{
  if (!qword_27DAF3830)
  {
    sub_22FFB0CC8();
    v1 = sub_22FFB1738();
    if (!v2)
    {
      atomic_store(v1, &qword_27DAF3830);
    }
  }
}

unint64_t sub_22FF6D450()
{
  result = qword_27DAF3838;
  if (!qword_27DAF3838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF3838);
  }

  return result;
}

unint64_t sub_22FF6D4A4()
{
  result = qword_281490268;
  if (!qword_281490268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281490268);
  }

  return result;
}

unint64_t sub_22FF6D4F8()
{
  result = qword_28148F138;
  if (!qword_28148F138)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DAF3740, &unk_22FFB4290);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28148F138);
  }

  return result;
}

uint64_t sub_22FF6D574(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22FF6D5BC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22FF6D61C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_22FF6D664(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t sub_22FF6D6C8()
{
  result = qword_27DAF3850;
  if (!qword_27DAF3850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF3850);
  }

  return result;
}

unint64_t sub_22FF6D720()
{
  result = qword_281490258;
  if (!qword_281490258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281490258);
  }

  return result;
}

unint64_t sub_22FF6D778()
{
  result = qword_281490260;
  if (!qword_281490260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281490260);
  }

  return result;
}

uint64_t sub_22FF6D7CC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v4 || (sub_22FFB1BC8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74656B6369547061 && a2 == 0xE800000000000000 || (sub_22FFB1BC8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x5478657470797263 && a2 == 0xEE007374656B6369)
  {

    return 2;
  }

  else
  {
    v6 = sub_22FFB1BC8();

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

uint64_t sub_22FF6D964(uint64_t a1, unint64_t a2)
{
  v4 = v3;
  v7 = sub_22FFB0C28();
  v69 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v68 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = 0x3A6E6F6973726556;
  v72 = 0xE900000000000020;
  v75 = 1;
  v9 = sub_22FFB1BA8();
  MEMORY[0x23190DD10](v9);

  MEMORY[0x23190DD10](10, 0xE100000000000000);
  v10 = v71;
  v11 = v72;
  v71 = a1;
  v72 = a2;

  MEMORY[0x23190DD10](v10, v11);

  v77 = v71;
  v78 = v72;
  v71 = a1;
  v72 = a2;

  MEMORY[0x23190DD10](0x656B636954205041, 0xEB000000000A3A74);
  MEMORY[0x23190DD10](v71, v72);

  v79 = v2;
  v12 = sub_22FFB0C18();
  sub_22FF960FC(v12, v13, v14, v15);
  v17 = v16;
  v19 = v18;
  v71 = v16;
  v72 = v18;
  LOBYTE(v73) = 0;
  v20 = a1;
  v75 = a1;
  v76 = a2;
  v21 = a2;

  MEMORY[0x23190DD10](538976288, 0xE400000000000000);
  v22 = sub_22FEC4DE8(v75, v76);
  if (v4)
  {

    return sub_22FEA55AC(v17, v19);
  }

  v66 = v17;
  v67 = v19;
  v25 = v22;
  v26 = v23;

  MEMORY[0x23190DD10](v25, v26);

  v27 = *&v79[*(type metadata accessor for Release(0) + 20)];
  v28 = *(v27 + 16);
  if (v28)
  {
    v79 = 0;
    v29 = sub_22FF8A288(v28, 0);
    v70 = sub_22FF8FF48(&v71, &v29[(*(v69 + 80) + 32) & ~*(v69 + 80)], v28, v27);
    v30 = v71;
    v65 = v74;

    sub_22FF6F7A8(v30);
    if (v70 != v28)
    {
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    v4 = v79;
  }

  else
  {
    v29 = MEMORY[0x277D84F90];
  }

  v71 = v29;
  v31 = v4;
  sub_22FF6E0CC(&v71);
  v32 = v69;
  v79 = v31;
  if (!v31)
  {
    v33 = v71;
    v34 = v67;
    v35 = v68;
    v36 = v66;
    v65 = *(v71 + 16);
    if (!v65)
    {
LABEL_13:

      sub_22FEA55AC(v36, v34);
      return v77;
    }

    v37 = 0;
    v62 = "Unsupported version: ";
    v63 = v69 + 16;
    v60 = v7;
    v61 = v69 + 8;
    v64 = v71;
    while (v37 < *(v33 + 16))
    {
      v38 = v33 + ((*(v32 + 80) + 32) & ~*(v32 + 80));
      v39 = *(v32 + 72);
      v70 = v37;
      (*(v32 + 16))(v35, v38 + v39 * v37, v7);
      v40 = v20;
      v71 = v20;
      v72 = v21;
      v41 = v21;

      MEMORY[0x23190DD10](0xD000000000000010, v62 | 0x8000000000000000);
      MEMORY[0x23190DD10](v71, v72);

      v42 = sub_22FFB0C18();
      v44 = v43;
      v46 = v45;
      v48 = v47;
      (*(v32 + 8))(v35, v7);
      sub_22FF960FC(v42, v44, v46, v48);
      v50 = v49;
      v52 = v51;
      v71 = v49;
      v72 = v51;
      LOBYTE(v73) = 3;
      v53 = v40;
      v75 = v40;
      v76 = v41;
      v54 = v41;

      MEMORY[0x23190DD10](538976288, 0xE400000000000000);
      v55 = v79;
      v56 = sub_22FEC4DE8(v75, v76);
      v58 = v57;

      v79 = v55;
      if (v55)
      {

        sub_22FEA55AC(v66, v67);

        return sub_22FEA55AC(v50, v52);
      }

      v37 = v70 + 1;
      MEMORY[0x23190DD10](v56, v58);

      sub_22FEA55AC(v50, v52);
      v36 = v66;
      v20 = v53;
      v21 = v54;
      v7 = v60;
      v35 = v68;
      v32 = v69;
      v34 = v67;
      v33 = v64;
      if (v65 == v37)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_16;
  }

LABEL_17:

  __break(1u);
  return result;
}

uint64_t sub_22FF6DE9C(uint64_t a1)
{
  v1 = sub_22FFB0C18();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  result = sub_22FFB0C18();
  v12 = 0;
  v13 = v7 >> 1;
  v14 = v11 >> 1;
  v15 = v10 + (v7 >> 1) - v5;
  if (v5 <= (v7 >> 1))
  {
    v16 = v7 >> 1;
  }

  else
  {
    v16 = v5;
  }

  v17 = v16 - v5;
  while (1)
  {
    if (!(v5 - (v7 >> 1) + v12))
    {
      goto LABEL_13;
    }

    if (v17 == v12)
    {
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    if (!(v10 - v14 + v12))
    {
      break;
    }

    if (v10 + v12 >= v14)
    {
      goto LABEL_18;
    }

    v18 = *(v3 + v5 + v12);
    v19 = *(v9 + v10 + v12);
    if (v18 < v19)
    {
      v30 = v1;
      v31 = v3;
      v32 = v5;
      v33 = v7;
      v34 = v5 + v12 + 1;
      v35 = result;
      v36 = v9;
      v37 = v10;
      v38 = v11;
      v39 = v10 + v12 + 1;
      v40 = 0;
      sub_22FF6F7B0(&v30);
      return 1;
    }

    ++v12;
    if (v19 < v18)
    {
      v30 = v1;
      v31 = v3;
      v32 = v5;
      v33 = v7;
      v34 = v5 + v12;
      v35 = result;
      v36 = v9;
      v37 = v10;
      v38 = v11;
      v39 = v10 + v12;
      v40 = 0;
      sub_22FF6F7B0(&v30);
      return 0;
    }
  }

  v15 = v11 >> 1;
  v13 = v5 + (v11 >> 1) - v10 + 1;
LABEL_13:
  v30 = v1;
  v31 = v3;
  v32 = v5;
  v33 = v7;
  v34 = v13;
  v35 = result;
  v36 = v9;
  v37 = v10;
  v38 = v11;
  v39 = v15;
  v40 = 1;
  sub_22FF6F7B0(&v30);
  sub_22FFB0C18();
  v21 = v20;
  v23 = v22;
  result = swift_unknownObjectRelease();
  v24 = __OFSUB__(v23 >> 1, v21);
  v25 = (v23 >> 1) - v21;
  if (v24)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  sub_22FFB0C18();
  v27 = v26;
  v29 = v28;
  result = swift_unknownObjectRelease();
  if (!__OFSUB__(v29 >> 1, v27))
  {
    return v25 < ((v29 >> 1) - v27);
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_22FF6E0CC(uint64_t *a1)
{
  v2 = *(sub_22FFB0C28() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_22FF90230(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_22FF6E174(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_22FF6E174(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_22FFB1B98();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_22FFB0C28();
        v6 = sub_22FFB1718();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_22FFB0C28() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_22FF6E580(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_22FF6E2A0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_22FF6E2A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v42 = sub_22FFB0C28();
  v9 = *(v42 - 8);
  v10 = MEMORY[0x28223BE20](v42);
  v47 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v35 - v13;
  result = MEMORY[0x28223BE20](v12);
  v37 = a2;
  if (a3 != a2)
  {
    v50 = &v35 - v16;
    v17 = *a4;
    v19 = *(v9 + 16);
    v18 = v9 + 16;
    v20 = *(v18 + 56);
    v48 = v19;
    v49 = (v18 - 8);
    v21 = (v17 + v20 * (a3 - 1));
    v43 = -v20;
    v44 = (v18 + 16);
    v22 = a1 - a3;
    v45 = v17;
    v46 = v18;
    v36 = v20;
    v23 = v17 + v20 * a3;
    v24 = v4;
    while (2)
    {
      v40 = v21;
      v41 = a3;
      v38 = v23;
      v39 = v22;
      v25 = v42;
      while (1)
      {
        v26 = v50;
        v27 = v48;
        v48(v50, v23, v25);
        v27(v14, v21, v25);
        v28 = sub_22FF6DE9C(v26);
        v51 = v24;
        if (v24)
        {
          v34 = *v49;
          (*v49)(v14, v25);
          return (v34)(v26, v25);
        }

        v29 = v28;
        v30 = *v49;
        (*v49)(v14, v25);
        result = (v30)(v26, v25);
        if ((v29 & 1) == 0)
        {
          break;
        }

        if (!v45)
        {
          __break(1u);
          return result;
        }

        v31 = *v44;
        v32 = v47;
        (*v44)(v47, v23, v25);
        swift_arrayInitWithTakeFrontToBack();
        result = v31(v21, v32, v25);
        v21 += v43;
        v23 += v43;
        v33 = __CFADD__(v22++, 1);
        v24 = v51;
        if (v33)
        {
          goto LABEL_11;
        }
      }

      v24 = v51;
LABEL_11:
      a3 = v41 + 1;
      v21 = &v40[v36];
      v22 = v39 - 1;
      v23 = v38 + v36;
      if (v41 + 1 != v37)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_22FF6E580(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = v4;
  v144 = a1;
  v9 = sub_22FFB0C28();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v147 = &v133 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v148 = &v133 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v150 = &v133 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v149 = &v133 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v20 = MEMORY[0x28223BE20](v19);
  v143 = &v133 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v133 - v23;
  result = MEMORY[0x28223BE20](v22);
  v28 = a3[1];
  if (v28 < 1)
  {
    v30 = MEMORY[0x277D84F90];
LABEL_104:
    v5 = *v144;
    if (*v144)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_137;
      }

      goto LABEL_106;
    }

    goto LABEL_146;
  }

  v140 = &v133 - v26;
  v138 = a4;
  v29 = 0;
  v158 = (v10 + 8);
  v159 = v10 + 16;
  v155 = (v10 + 32);
  v30 = MEMORY[0x277D84F90];
  v160 = v9;
  v152 = v27;
  v141 = v24;
  v145 = a3;
  v137 = v10;
  while (1)
  {
    v31 = v29;
    if ((v29 + 1) >= v28)
    {
      v54 = v29 + 1;
    }

    else
    {
      v156 = v28;
      v161 = v6;
      v32 = *a3;
      v33 = *(v10 + 72);
      v5 = *a3 + v33 * (v29 + 1);
      v34 = *(v10 + 16);
      v35 = v140;
      v36 = v29;
      v34(v140, v5, v9);
      v139 = v32;
      v157 = v33;
      v37 = &v32[v33 * v36];
      v38 = v141;
      v153 = v34;
      v34(v141, v37, v9);
      v39 = v38;
      v40 = v161;
      LODWORD(v154) = sub_22FF6DE9C(v35);
      v161 = v40;
      if (v40)
      {
        v132 = *v158;
        (*v158)(v38, v9);
        v132(v35, v9);
      }

      v41 = *v158;
      (*v158)(v39, v9);
      v151 = v41;
      result = (v41)(v35, v9);
      v142 = v36;
      v42 = v36 + 2;
      v43 = v157;
      v44 = &v139[v157 * (v36 + 2)];
      v45 = v143;
      while (v156 != v42)
      {
        v46 = v30;
        v47 = v160;
        v48 = v153;
        (v153)(v45, v44, v160);
        v49 = v152;
        v48(v152, v5, v47);
        v50 = v161;
        v51 = sub_22FF6DE9C(v45);
        v161 = v50;
        if (v50)
        {
          v130 = v151;
          (v151)(v49, v47);
          (v130)(v45, v47);
        }

        v52 = v51;
        v53 = v151;
        (v151)(v49, v47);
        result = (v53)(v45, v47);
        ++v42;
        v43 = v157;
        v44 += v157;
        v5 += v157;
        v30 = v46;
        if ((v154 ^ v52))
        {
          v54 = (v42 - 1);
          goto LABEL_12;
        }
      }

      v54 = v156;
LABEL_12:
      v10 = v137;
      v9 = v160;
      v6 = v161;
      v31 = v142;
      if ((v154 & 1) == 0)
      {
        goto LABEL_25;
      }

      if (v54 < v142)
      {
        goto LABEL_140;
      }

      if (v142 < v54)
      {
        v55 = v54;
        v56 = v43 * (v54 - 1);
        v57 = v55 * v43;
        v156 = v55;
        v58 = v142;
        v59 = v142 * v43;
        do
        {
          if (v58 != --v55)
          {
            v161 = v6;
            v61 = *v145;
            if (!*v145)
            {
              goto LABEL_144;
            }

            v5 = v61 + v59;
            v154 = *v155;
            v154(v147, v61 + v59, v160);
            if (v59 < v56 || v5 >= v61 + v57)
            {
              v60 = v160;
              swift_arrayInitWithTakeFrontToBack();
            }

            else
            {
              v60 = v160;
              if (v59 != v56)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            result = (v154)(v61 + v56, v147, v60);
            v6 = v161;
            v43 = v157;
          }

          ++v58;
          v56 -= v43;
          v57 -= v43;
          v59 += v43;
        }

        while (v58 < v55);
        a3 = v145;
        v10 = v137;
        v9 = v160;
        v31 = v142;
        v54 = v156;
      }

      else
      {
LABEL_25:
        a3 = v145;
      }
    }

    v62 = a3[1];
    if (v54 >= v62)
    {
      goto LABEL_37;
    }

    if (__OFSUB__(v54, v31))
    {
      goto LABEL_136;
    }

    if (v54 - v31 >= v138)
    {
      goto LABEL_37;
    }

    if (__OFADD__(v31, v138))
    {
      __break(1u);
LABEL_139:
      __break(1u);
LABEL_140:
      __break(1u);
LABEL_141:
      __break(1u);
LABEL_142:
      __break(1u);
      goto LABEL_143;
    }

    v156 = v54;
    if (&v31[v138] >= v62)
    {
      v63 = v62;
    }

    else
    {
      v63 = &v31[v138];
    }

    if (v63 < v31)
    {
      goto LABEL_139;
    }

    if (v156 == v63)
    {
      v54 = v156;
LABEL_37:
      if (v54 < v31)
      {
        goto LABEL_135;
      }

      goto LABEL_38;
    }

    v110 = *a3;
    v111 = *(v10 + 72);
    v157 = *(v10 + 16);
    v112 = v110 + v111 * (v156 - 1);
    v153 = -v111;
    v154 = v110;
    v142 = v31;
    v113 = &v31[-v156];
    v134 = v111;
    v5 = v110 + v156 * v111;
    v115 = v149;
    v114 = v150;
    v151 = v63;
    v146 = v30;
    do
    {
      v135 = v5;
      v136 = v113;
      v139 = v112;
      v116 = v112;
      while (1)
      {
        v117 = v6;
        v118 = v157;
        (v157)(v115, v5, v9);
        v118(v114, v116, v9);
        v119 = sub_22FF6DE9C(v115);
        v120 = v114;
        v161 = v117;
        if (v117)
        {
          v131 = *v158;
          (*v158)(v114, v9);
          v131(v115, v9);
        }

        v121 = v119;
        v122 = *v158;
        (*v158)(v120, v9);
        result = (v122)(v115, v9);
        if ((v121 & 1) == 0)
        {
          break;
        }

        v30 = v146;
        if (!v154)
        {
          goto LABEL_142;
        }

        v123 = *v155;
        v124 = v148;
        v9 = v160;
        (*v155)(v148, v5, v160);
        swift_arrayInitWithTakeFrontToBack();
        v123(v116, v124, v9);
        v116 += v153;
        v5 += v153;
        v125 = __CFADD__(v113++, 1);
        v6 = v161;
        v115 = v149;
        v114 = v150;
        if (v125)
        {
          goto LABEL_100;
        }
      }

      v9 = v160;
      v6 = v161;
      v115 = v149;
      v114 = v150;
      v30 = v146;
LABEL_100:
      v112 = &v139[v134];
      v113 = v136 - 1;
      v5 = v135 + v134;
      v54 = v151;
      ++v156;
    }

    while (v156 != v151);
    a3 = v145;
    v10 = v137;
    v31 = v142;
    if (v151 < v142)
    {
      goto LABEL_135;
    }

LABEL_38:
    result = swift_isUniquelyReferenced_nonNull_native();
    v5 = v6;
    if ((result & 1) == 0)
    {
      result = sub_22FEC2F98(0, *(v30 + 2) + 1, 1, v30);
      v30 = result;
    }

    v65 = *(v30 + 2);
    v64 = *(v30 + 3);
    v66 = v65 + 1;
    if (v65 >= v64 >> 1)
    {
      result = sub_22FEC2F98((v64 > 1), v65 + 1, 1, v30);
      v30 = result;
    }

    *(v30 + 2) = v66;
    v67 = &v30[16 * v65];
    *(v67 + 4) = v31;
    *(v67 + 5) = v54;
    v151 = v54;
    v68 = *v144;
    if (!*v144)
    {
      goto LABEL_145;
    }

    if (v65)
    {
      break;
    }

    v6 = v5;
LABEL_89:
    v28 = a3[1];
    v29 = v151;
    v9 = v160;
    if (v151 >= v28)
    {
      goto LABEL_104;
    }
  }

  v6 = v5;
  while (1)
  {
    v5 = v66 - 1;
    if (v66 >= 4)
    {
      v73 = &v30[16 * v66 + 32];
      v74 = *(v73 - 64);
      v75 = *(v73 - 56);
      v79 = __OFSUB__(v75, v74);
      v76 = v75 - v74;
      if (v79)
      {
        goto LABEL_122;
      }

      v78 = *(v73 - 48);
      v77 = *(v73 - 40);
      v79 = __OFSUB__(v77, v78);
      v71 = v77 - v78;
      v72 = v79;
      if (v79)
      {
        goto LABEL_123;
      }

      v80 = &v30[16 * v66];
      v82 = *v80;
      v81 = *(v80 + 1);
      v79 = __OFSUB__(v81, v82);
      v83 = v81 - v82;
      if (v79)
      {
        goto LABEL_125;
      }

      v79 = __OFADD__(v71, v83);
      v84 = v71 + v83;
      if (v79)
      {
        goto LABEL_128;
      }

      if (v84 >= v76)
      {
        v102 = &v30[16 * v5 + 32];
        v104 = *v102;
        v103 = *(v102 + 1);
        v79 = __OFSUB__(v103, v104);
        v105 = v103 - v104;
        if (v79)
        {
          goto LABEL_134;
        }

        if (v71 < v105)
        {
          v5 = v66 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_58;
    }

    if (v66 == 3)
    {
      v69 = *(v30 + 4);
      v70 = *(v30 + 5);
      v79 = __OFSUB__(v70, v69);
      v71 = v70 - v69;
      v72 = v79;
LABEL_58:
      if (v72)
      {
        goto LABEL_124;
      }

      v85 = &v30[16 * v66];
      v87 = *v85;
      v86 = *(v85 + 1);
      v88 = __OFSUB__(v86, v87);
      v89 = v86 - v87;
      v90 = v88;
      if (v88)
      {
        goto LABEL_127;
      }

      v91 = &v30[16 * v5 + 32];
      v93 = *v91;
      v92 = *(v91 + 1);
      v79 = __OFSUB__(v92, v93);
      v94 = v92 - v93;
      if (v79)
      {
        goto LABEL_130;
      }

      if (__OFADD__(v89, v94))
      {
        goto LABEL_131;
      }

      if (v89 + v94 >= v71)
      {
        if (v71 < v94)
        {
          v5 = v66 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_72;
    }

    v95 = &v30[16 * v66];
    v97 = *v95;
    v96 = *(v95 + 1);
    v79 = __OFSUB__(v96, v97);
    v89 = v96 - v97;
    v90 = v79;
LABEL_72:
    if (v90)
    {
      goto LABEL_126;
    }

    v98 = &v30[16 * v5];
    v100 = *(v98 + 4);
    v99 = *(v98 + 5);
    v79 = __OFSUB__(v99, v100);
    v101 = v99 - v100;
    if (v79)
    {
      goto LABEL_129;
    }

    if (v101 < v89)
    {
      goto LABEL_89;
    }

LABEL_79:
    v106 = v5 - 1;
    if (v5 - 1 >= v66)
    {
      break;
    }

    if (!*a3)
    {
      goto LABEL_141;
    }

    v107 = *&v30[16 * v106 + 32];
    v108 = *&v30[16 * v5 + 40];
    sub_22FF6F10C(*a3 + *(v10 + 72) * v107, *a3 + *(v10 + 72) * *&v30[16 * v5 + 32], *a3 + *(v10 + 72) * v108, v68);
    if (v6)
    {
    }

    if (v108 < v107)
    {
      goto LABEL_120;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v30 = sub_22FF8FB54(v30);
    }

    if (v106 >= *(v30 + 2))
    {
      goto LABEL_121;
    }

    v109 = &v30[16 * v106];
    *(v109 + 4) = v107;
    *(v109 + 5) = v108;
    v162 = v30;
    result = sub_22FF8FAC8(v5);
    v30 = v162;
    v66 = *(v162 + 2);
    if (v66 <= 1)
    {
      goto LABEL_89;
    }
  }

  __break(1u);
LABEL_120:
  __break(1u);
LABEL_121:
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
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  result = sub_22FF8FB54(v30);
  v30 = result;
LABEL_106:
  v162 = v30;
  v126 = *(v30 + 2);
  if (v126 < 2)
  {
  }

  while (*a3)
  {
    v127 = *&v30[16 * v126];
    v128 = *&v30[16 * v126 + 24];
    sub_22FF6F10C(*a3 + *(v10 + 72) * v127, *a3 + *(v10 + 72) * *&v30[16 * v126 + 16], *a3 + *(v10 + 72) * v128, v5);
    if (v6)
    {
    }

    if (v128 < v127)
    {
      goto LABEL_132;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v30 = sub_22FF8FB54(v30);
    }

    if (v126 - 2 >= *(v30 + 2))
    {
      goto LABEL_133;
    }

    v129 = &v30[16 * v126];
    *v129 = v127;
    *(v129 + 1) = v128;
    v162 = v30;
    result = sub_22FF8FAC8(v126 - 1);
    v30 = v162;
    v126 = *(v162 + 2);
    if (v126 <= 1)
    {
    }
  }

LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
  return result;
}

uint64_t sub_22FF6F10C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v5 = v4;
  v76 = a3;
  v9 = sub_22FFB0C28();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v61 - v13;
  MEMORY[0x28223BE20](v12);
  result = MEMORY[0x28223BE20](&v61 - v15);
  v19 = &v61 - v18;
  v72 = *(v20 + 72);
  if (!v72)
  {
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v72 == -1)
  {
    goto LABEL_66;
  }

  v21 = v76 - a2;
  if (v76 - a2 == 0x8000000000000000 && v72 == -1)
  {
    goto LABEL_67;
  }

  v22 = (a2 - a1) / v72;
  v79 = a1;
  v78 = a4;
  v74 = v9;
  if (v22 >= v21 / v72)
  {
    v70 = v17;
    v71 = v14;
    v24 = v21 / v72 * v72;
    if (a4 < a2 || a2 + v24 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v36 = a4 + v24;
    if (v24 >= 1)
    {
      v37 = v71;
      v38 = -v72;
      v67 = (v10 + 16);
      v68 = (v10 + 8);
      v39 = v36;
      v73 = a4;
      v64 = a1;
      v65 = -v72;
      do
      {
        v75 = v5;
        v62 = v36;
        v40 = a2;
        v41 = a2 + v38;
        v66 = v41;
        v69 = v40;
        while (1)
        {
          v44 = v76;
          if (v40 <= a1)
          {
            v79 = v40;
            v59 = v62;
LABEL_62:
            v77 = v59;
            goto LABEL_64;
          }

          v63 = v36;
          v72 = v39;
          v45 = v39 + v38;
          v46 = *v67;
          v47 = v74;
          (*v67)(v37, v39 + v38, v74);
          v48 = v41;
          v49 = v38;
          v50 = v70;
          v46(v70, v48, v47);
          v51 = v75;
          v52 = sub_22FF6DE9C(v37);
          v75 = v51;
          if (v51)
          {
            v60 = *v68;
            (*v68)(v50, v47);
            v60(v37, v47);
            v79 = v69;
            v59 = v63;
            goto LABEL_62;
          }

          v53 = v52;
          v76 = v44 + v49;
          v54 = *v68;
          (*v68)(v50, v47);
          v54(v37, v47);
          if (v53)
          {
            break;
          }

          v36 = v45;
          v55 = v64;
          if (v44 < v72 || v76 >= v72)
          {
            swift_arrayInitWithTakeFrontToBack();
            v38 = v65;
            v41 = v66;
            v42 = v73;
          }

          else
          {
            v38 = v65;
            v41 = v66;
            v42 = v73;
            if (v44 != v72)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v39 = v45;
          v43 = v45 > v42;
          v37 = v71;
          a1 = v55;
          v40 = v69;
          if (!v43)
          {
            a2 = v69;
            goto LABEL_63;
          }
        }

        a1 = v64;
        if (v44 < v69 || v76 >= v69)
        {
          a2 = v66;
          swift_arrayInitWithTakeFrontToBack();
          v57 = v73;
          v5 = v75;
          v36 = v63;
          v38 = v65;
        }

        else
        {
          v56 = v44 == v69;
          v38 = v65;
          a2 = v66;
          v57 = v73;
          v5 = v75;
          v36 = v63;
          if (!v56)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v37 = v71;
        v39 = v72;
      }

      while (v72 > v57);
    }

LABEL_63:
    v79 = a2;
    v77 = v36;
  }

  else
  {
    v23 = v22 * v72;
    v71 = result;
    if (a4 < a1 || a1 + v23 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v70 = a4 + v23;
    v77 = a4 + v23;
    if (v23 >= 1 && a2 < v76)
    {
      v26 = *(v10 + 16);
      v69 = v10 + 16;
      v67 = v26;
      v68 = (v10 + 8);
      while (1)
      {
        v27 = a2;
        v28 = a4;
        v29 = v67;
        (v67)(v19, a2, v9);
        v30 = v19;
        v31 = v71;
        v73 = v28;
        (v29)(v71, v28, v9);
        v32 = sub_22FF6DE9C(v30);
        if (v5)
        {
          break;
        }

        v33 = v32;
        v75 = 0;
        v34 = *v68;
        (*v68)(v31, v9);
        v34(v30, v9);
        v19 = v30;
        if (v33)
        {
          v35 = v72;
          a2 = v27 + v72;
          if (a1 < v27 || a1 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != v27)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a4 = v73;
        }

        else
        {
          v35 = v72;
          a4 = v73 + v72;
          a2 = v27;
          if (a1 < v73 || a1 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != v73)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v78 = a4;
        }

        a1 += v35;
        v79 = a1;
        v5 = v75;
        if (a4 < v70)
        {
          v9 = v74;
          if (a2 < v76)
          {
            continue;
          }
        }

        goto LABEL_64;
      }

      v58 = *v68;
      (*v68)(v31, v9);
      v58(v30, v9);
    }
  }

LABEL_64:
  sub_22FF8FB68(&v79, &v78, &v77);
  return 1;
}

uint64_t sub_22FF6F7B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF3858, &qword_22FFBF070);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22FF6F818@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v78 = a2;
  v3 = type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs(0);
  v74 = *(v3 - 8);
  v75 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v70 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v71 = &v65 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF37C0, &unk_22FFB5C60);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v69 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v73 = &v65 - v10;
  v11 = type metadata accessor for Proto_TransparencyProofs(0);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v68 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v72 = &v65 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2118, &unk_22FFB5C70);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v67 = &v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v65 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v65 - v22;
  v24 = type metadata accessor for TransparencyLogProofs(0);
  v76 = *(v24 - 8);
  v77 = v24;
  MEMORY[0x28223BE20](v24);
  v66 = &v65 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(type metadata accessor for PrivateCloudCompute_ProxyNodeMetadata.ProxiedRelease(0) + 24);
  v27 = a1;
  sub_22FEBF3A4(a1 + v26, v23, &qword_27DAF2118, &unk_22FFB5C70);
  v28 = *(v12 + 48);
  LODWORD(a1) = v28(v23, 1, v11);
  sub_22FEAEA34(v23, &qword_27DAF2118, &unk_22FFB5C70);
  if (a1 == 1)
  {
    v29 = type metadata accessor for PrivateCloudCompute_ProxyNodeMetadata.ProxiedRelease;
    v30 = v27;
  }

  else
  {
    sub_22FEBF3A4(v27 + v26, v21, &qword_27DAF2118, &unk_22FFB5C70);
    v31 = v28(v21, 1, v11);
    v32 = v28;
    v65 = v26;
    if (v31 == 1)
    {
      v33 = v72;
      _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
      (*(v74 + 56))(v33 + *(v11 + 20), 1, 1, v75);
      v34 = v32;
      if (v32(v21, 1, v11) != 1)
      {
        sub_22FEAEA34(v21, &qword_27DAF2118, &unk_22FFB5C70);
      }
    }

    else
    {
      v34 = v28;
      v33 = v72;
      sub_22FF72A5C(v21, v72, type metadata accessor for Proto_TransparencyProofs);
    }

    v35 = v73;
    sub_22FEBF3A4(v33 + *(v11 + 20), v73, &qword_27DAF37C0, &unk_22FFB5C60);
    sub_22FF70D60(v33, type metadata accessor for Proto_TransparencyProofs);
    v36 = *(v74 + 48);
    v37 = v36(v35, 1, v75);
    sub_22FEAEA34(v35, &qword_27DAF37C0, &unk_22FFB5C60);
    if (v37 == 1)
    {
      v29 = type metadata accessor for PrivateCloudCompute_ProxyNodeMetadata.ProxiedRelease;
      v30 = v27;
    }

    else
    {
      v38 = v67;
      sub_22FEBF3A4(v27 + v65, v67, &qword_27DAF2118, &unk_22FFB5C70);
      v39 = v34;
      if (v34(v38, 1, v11) == 1)
      {
        v40 = v68;
        _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
        v41 = v75;
        (*(v74 + 56))(v40 + *(v11 + 20), 1, 1, v75);
        v42 = v39(v38, 1, v11) == 1;
        v43 = v38;
        v44 = v71;
        v45 = v69;
        v46 = v36;
        if (!v42)
        {
          sub_22FEAEA34(v43, &qword_27DAF2118, &unk_22FFB5C70);
        }
      }

      else
      {
        v40 = v68;
        sub_22FF72A5C(v38, v68, type metadata accessor for Proto_TransparencyProofs);
        v44 = v71;
        v41 = v75;
        v45 = v69;
        v46 = v36;
      }

      sub_22FEBF3A4(v40 + *(v11 + 20), v45, &qword_27DAF37C0, &unk_22FFB5C60);
      if (v46(v45, 1, v41) == 1)
      {
        _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
        sub_22FF70D60(v40, type metadata accessor for Proto_TransparencyProofs);
        v47 = *(v41 + 20);
        v48 = type metadata accessor for LogEntry(0);
        (*(*(v48 - 8) + 56))(v44 + v47, 1, 1, v48);
        v49 = *(v41 + 24);
        v50 = type metadata accessor for PrivateCloudCompute_TransparencyLog_LogConsistency(0);
        (*(*(v50 - 8) + 56))(v44 + v49, 1, 1, v50);
        if (v46(v45, 1, v41) != 1)
        {
          sub_22FEAEA34(v45, &qword_27DAF37C0, &unk_22FFB5C60);
        }
      }

      else
      {
        sub_22FF70D60(v40, type metadata accessor for Proto_TransparencyProofs);
        sub_22FF72A5C(v45, v44, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs);
      }

      v51 = v70;
      _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
      v52 = *(v41 + 20);
      v53 = type metadata accessor for LogEntry(0);
      (*(*(v53 - 8) + 56))(v51 + v52, 1, 1, v53);
      v54 = *(v41 + 24);
      v55 = type metadata accessor for PrivateCloudCompute_TransparencyLog_LogConsistency(0);
      (*(*(v55 - 8) + 56))(v51 + v54, 1, 1, v55);
      LOBYTE(v54) = _s16CloudAttestation07PrivateA35Compute_TransparencyLog_ATLogProofsV2eeoiySbAC_ACtFZ_0(v44, v51);
      sub_22FF70D60(v27, type metadata accessor for PrivateCloudCompute_ProxyNodeMetadata.ProxiedRelease);
      sub_22FF70D60(v51, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs);
      if ((v54 & 1) == 0)
      {
        v60 = v66;
        sub_22FF72A5C(v44, v66, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs);
        v61 = v77;
        v62 = *(v77 + 20);
        v63 = sub_22FFB0908();
        (*(*(v63 - 8) + 56))(v60 + v62, 1, 1, v63);
        *(v60 + *(v61 + 24)) = xmmword_22FFB2D00;
        v64 = v78;
        sub_22FF72A5C(v60, v78, type metadata accessor for TransparencyLogProofs);
        v58 = v61;
        v57 = v64;
        v56 = 0;
        return (*(v76 + 56))(v57, v56, 1, v58);
      }

      v29 = type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs;
      v30 = v44;
    }
  }

  sub_22FF70D60(v30, v29);
  v56 = 1;
  v58 = v77;
  v57 = v78;
  return (*(v76 + 56))(v57, v56, 1, v58);
}

uint64_t TransparencyLogProofs.init(bundle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v84 = a2;
  v3 = type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs(0);
  v4 = *(v3 - 8);
  v80 = v3;
  v81 = v4;
  v5 = MEMORY[0x28223BE20](v3);
  v75 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v76 = &v69 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF37C0, &unk_22FFB5C60);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v74 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v79 = &v69 - v11;
  v12 = type metadata accessor for Proto_TransparencyProofs(0);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v73 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v78 = &v69 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2118, &unk_22FFB5C70);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v72 = &v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v77 = &v69 - v21;
  MEMORY[0x28223BE20](v20);
  v23 = &v69 - v22;
  v24 = type metadata accessor for TransparencyLogProofs(0);
  v82 = *(v24 - 8);
  v83 = v24;
  MEMORY[0x28223BE20](v24);
  v71 = &v69 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = a1;
  v27 = *(a1 + *(type metadata accessor for Proto_AttestationBundle(0) + 20));
  v28 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__transparencyProofs;
  swift_beginAccess();
  sub_22FEBF3A4(v27 + v28, v23, &qword_27DAF2118, &unk_22FFB5C70);
  v29 = *(v13 + 48);
  LODWORD(a1) = v29(v23, 1, v12);
  sub_22FEAEA34(v23, &qword_27DAF2118, &unk_22FFB5C70);
  if (a1 == 1)
  {
    v30 = type metadata accessor for AttestationBundle;
  }

  else
  {
    v70 = v26;
    v33 = v77;
    sub_22FEBF3A4(v27 + v28, v77, &qword_27DAF2118, &unk_22FFB5C70);
    v34 = v29(v33, 1, v12);
    v69 = v29;
    if (v34 == 1)
    {
      v35 = v29;
      v36 = v78;
      _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
      v37 = v80;
      (*(v81 + 56))(v36 + *(v12 + 20), 1, 1, v80);
      if (v35(v33, 1, v12) != 1)
      {
        sub_22FEAEA34(v33, &qword_27DAF2118, &unk_22FFB5C70);
      }
    }

    else
    {
      v36 = v78;
      sub_22FF72A5C(v33, v78, type metadata accessor for Proto_TransparencyProofs);
      v37 = v80;
    }

    v38 = v79;
    sub_22FEBF3A4(v36 + *(v12 + 20), v79, &qword_27DAF37C0, &unk_22FFB5C60);
    sub_22FF70D60(v36, type metadata accessor for Proto_TransparencyProofs);
    v39 = *(v81 + 48);
    v40 = v39(v38, 1, v37);
    sub_22FEAEA34(v38, &qword_27DAF37C0, &unk_22FFB5C60);
    if (v40 == 1)
    {
      v31 = type metadata accessor for AttestationBundle;
      v32 = v70;
      goto LABEL_10;
    }

    v45 = v72;
    sub_22FEBF3A4(v27 + v28, v72, &qword_27DAF2118, &unk_22FFB5C70);
    v46 = v69;
    if (v69(v45, 1, v12) == 1)
    {
      v47 = v73;
      _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
      v48 = v80;
      (*(v81 + 56))(v47 + *(v12 + 20), 1, 1, v80);
      v49 = v12;
      v50 = v46(v45, 1, v12) == 1;
      v51 = v45;
      v26 = v76;
      v52 = v74;
      if (!v50)
      {
        sub_22FEAEA34(v51, &qword_27DAF2118, &unk_22FFB5C70);
      }
    }

    else
    {
      v49 = v12;
      v47 = v73;
      sub_22FF72A5C(v45, v73, type metadata accessor for Proto_TransparencyProofs);
      v26 = v76;
      v48 = v80;
      v52 = v74;
    }

    sub_22FEBF3A4(v47 + *(v49 + 20), v52, &qword_27DAF37C0, &unk_22FFB5C60);
    v53 = v39(v52, 1, v48);
    v54 = v70;
    if (v53 == 1)
    {
      _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
      sub_22FF70D60(v47, type metadata accessor for Proto_TransparencyProofs);
      v55 = *(v48 + 20);
      v56 = type metadata accessor for LogEntry(0);
      (*(*(v56 - 8) + 56))(v26 + v55, 1, 1, v56);
      v57 = *(v48 + 24);
      v58 = type metadata accessor for PrivateCloudCompute_TransparencyLog_LogConsistency(0);
      (*(*(v58 - 8) + 56))(v26 + v57, 1, 1, v58);
      if (v39(v52, 1, v48) != 1)
      {
        sub_22FEAEA34(v52, &qword_27DAF37C0, &unk_22FFB5C60);
      }
    }

    else
    {
      sub_22FF70D60(v47, type metadata accessor for Proto_TransparencyProofs);
      sub_22FF72A5C(v52, v26, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs);
    }

    v59 = v75;
    _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
    v60 = *(v48 + 20);
    v61 = type metadata accessor for LogEntry(0);
    (*(*(v61 - 8) + 56))(v59 + v60, 1, 1, v61);
    v62 = *(v48 + 24);
    v63 = type metadata accessor for PrivateCloudCompute_TransparencyLog_LogConsistency(0);
    (*(*(v63 - 8) + 56))(v59 + v62, 1, 1, v63);
    LOBYTE(v62) = _s16CloudAttestation07PrivateA35Compute_TransparencyLog_ATLogProofsV2eeoiySbAC_ACtFZ_0(v26, v59);
    sub_22FF70D60(v59, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs);
    sub_22FF70D60(v54, type metadata accessor for AttestationBundle);
    if ((v62 & 1) == 0)
    {
      v64 = v71;
      sub_22FF72A5C(v26, v71, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs);
      v65 = v83;
      v66 = *(v83 + 20);
      v67 = sub_22FFB0908();
      (*(*(v67 - 8) + 56))(v64 + v66, 1, 1, v67);
      *(v64 + *(v65 + 24)) = xmmword_22FFB2D00;
      v68 = v84;
      sub_22FF72A5C(v64, v84, type metadata accessor for TransparencyLogProofs);
      v43 = v65;
      v42 = v68;
      v41 = 0;
      return (*(v82 + 56))(v42, v41, 1, v43);
    }

    v30 = type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs;
  }

  v31 = v30;
  v32 = v26;
LABEL_10:
  sub_22FF70D60(v32, v31);
  v41 = 1;
  v43 = v83;
  v42 = v84;
  return (*(v82 + 56))(v42, v41, 1, v43);
}

uint64_t TransparencyLogProofs.verify(expiration:)(char *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1510, &qword_22FFB3800);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v16 - v4;
  v6 = sub_22FFB0908();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TransparencyLogProofs(0);
  sub_22FEBF3A4(v1 + *(v10 + 20), v5, &qword_27DAF1510, &qword_22FFB3800);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_22FEAEA34(v5, &qword_27DAF1510, &qword_22FFB3800);
  }

  (*(v7 + 32))(v9, v5, v6);
  if (sub_22FFB0888())
  {
    v16[1] = type metadata accessor for TransparencyLogError(0);
    sub_22FF72AE4(&qword_27DAF21C0, type metadata accessor for TransparencyLogError, &protocol conformance descriptor for TransparencyLogError);
    swift_allocError();
    v13 = v12;
    v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF3860, &qword_22FFBF078) + 48);
    v15 = *(v7 + 16);
    v15(v13, v9, v6);
    v15(v13 + v14, a1, v6);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_22FF70D60(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22FF70DC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 8);
  v9 = *v3;
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_22FEAA0D4;

  return sub_22FF70E9C(a1, a2, a3, v9, v8);
}

uint64_t sub_22FF70E9C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 40) = a2;
  *(v5 + 48) = a3;
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  *(v5 + 32) = a1;
  return MEMORY[0x2822009F8](sub_22FF70EC4, 0, 0);
}

uint64_t sub_22FF70EC4()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1C58, &qword_22FFB3FC8);
  v3 = swift_allocObject();
  v0[7] = v3;
  *(v3 + 16) = xmmword_22FFB2D10;
  *(v3 + 32) = v1;
  *(v3 + 40) = v2;
  sub_22FEA5608(v1, v2);
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_22FF70FAC;

  return SWTransparencyLog.proveInclusion(of:)(v3);
}

uint64_t sub_22FF70FAC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 72) = a1;
  *(v3 + 80) = v1;

  if (v1)
  {
    v4 = sub_22FF71244;
  }

  else
  {
    v4 = sub_22FF710E8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22FF710E8()
{
  v1 = v0[9];
  if (*(v1 + 16))
  {
    v2 = v0[4];
    v3 = *(type metadata accessor for TransparencyLogProofs(0) - 8);
    sub_22FF72B2C(v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)), v2, type metadata accessor for TransparencyLogProofs);
  }

  else
  {

    type metadata accessor for TransparencyLogError(0);
    sub_22FF72AE4(&qword_27DAF21C0, type metadata accessor for TransparencyLogError, &protocol conformance descriptor for TransparencyLogError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  v4 = v0[1];

  return v4();
}

uint64_t sub_22FF7125C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 72) = a2;
  *(v4 + 80) = a3;
  *(v4 + 64) = a1;
  *(v4 + 120) = a4;
  return MEMORY[0x2822009F8](sub_22FF71284, 0, 0);
}

uint64_t sub_22FF71284()
{
  v1 = v0[9];
  v2 = v0[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1C58, &qword_22FFB3FC8);
  inited = swift_initStackObject();
  v0[11] = inited;
  *(inited + 16) = xmmword_22FFB2D10;
  *(inited + 32) = v1;
  *(inited + 40) = v2;
  sub_22FEA5608(v1, v2);
  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_22FF71368;

  return NopTransparencyLog.proveInclusion(of:)(inited);
}

uint64_t sub_22FF71368(uint64_t a1)
{
  v3 = *v2;
  v3[13] = a1;
  v3[14] = v1;

  if (v1)
  {
    v4 = sub_22FF715EC;
  }

  else
  {
    v5 = v3[11];
    swift_setDeallocating();
    sub_22FF733A0(v5 + 32);
    v4 = sub_22FF71490;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22FF71490()
{
  v1 = v0[13];
  if (*(v1 + 16))
  {
    v2 = v0[8];
    v3 = *(type metadata accessor for TransparencyLogProofs(0) - 8);
    sub_22FF72B2C(v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)), v2, type metadata accessor for TransparencyLogProofs);
  }

  else
  {

    type metadata accessor for TransparencyLogError(0);
    sub_22FF72AE4(&qword_27DAF21C0, type metadata accessor for TransparencyLogError, &protocol conformance descriptor for TransparencyLogError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  v4 = v0[1];

  return v4();
}

uint64_t sub_22FF715EC()
{
  v1 = *(v0 + 88);
  swift_setDeallocating();
  sub_22FF733A0(v1 + 32);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t TransparencyProver.proveInclusion(of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x2822009F8](sub_22FF71684, 0, 0);
}

uint64_t sub_22FF71684()
{
  v10 = v0[6];
  v1 = v0[3];
  v2 = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1C58, &qword_22FFB3FC8);
  v3 = swift_allocObject();
  v0[8] = v3;
  *(v3 + 16) = xmmword_22FFB2D10;
  *(v3 + 32) = v1;
  *(v3 + 40) = v2;
  v4 = *(v10 + 16);
  sub_22FEA5608(v1, v2);
  v9 = (v4 + *v4);
  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = sub_22FF717F4;
  v6 = v0[6];
  v7 = v0[5];

  return v9(v3, v7, v6);
}

uint64_t sub_22FF717F4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 80) = a1;
  *(v3 + 88) = v1;

  if (v1)
  {
    v4 = sub_22FF71A6C;
  }

  else
  {

    v4 = sub_22FF71910;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22FF71910()
{
  v1 = v0[10];
  if (*(v1 + 16))
  {
    v2 = v0[2];
    v3 = *(type metadata accessor for TransparencyLogProofs(0) - 8);
    sub_22FF72B2C(v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)), v2, type metadata accessor for TransparencyLogProofs);
  }

  else
  {

    type metadata accessor for TransparencyLogError(0);
    sub_22FF72AE4(&qword_27DAF21C0, type metadata accessor for TransparencyLogError, &protocol conformance descriptor for TransparencyLogError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  v4 = v0[1];

  return v4();
}

uint64_t sub_22FF71A6C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FF71AD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_22FEAA538;

  return sub_22FF7125C(a1, a2, a3, v8);
}

uint64_t sub_22FF71BA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_22FEAA538;

  return TransparencyProver.proveInclusion(of:)(a1, a2, a3, a4, a5);
}

uint64_t TransparencyLogProofs.hash(into:)(uint64_t a1)
{
  v2 = sub_22FFB0908();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1510, &qword_22FFB3800);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v11 - v7;
  type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs(0);
  sub_22FF72AE4(&qword_27DAF2398, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs, &protocol conformance descriptor for PrivateCloudCompute_TransparencyLog_ATLogProofs);
  sub_22FFB1438();
  v9 = type metadata accessor for TransparencyLogProofs(0);
  sub_22FEBF3A4(v1 + *(v9 + 20), v8, &qword_27DAF1510, &qword_22FFB3800);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    sub_22FFB1CC8();
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    sub_22FFB1CC8();
    sub_22FF72AE4(&qword_27DAF3868, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
    sub_22FFB1438();
    (*(v3 + 8))(v5, v2);
  }

  if (*(v1 + *(v9 + 24) + 8) >> 60 == 15)
  {
    return sub_22FFB1CC8();
  }

  sub_22FFB1CC8();
  return sub_22FFB07F8();
}

uint64_t TransparencyLogProofs.hashValue.getter()
{
  sub_22FFB1CA8();
  TransparencyLogProofs.hash(into:)(v1);
  return sub_22FFB1CF8();
}

uint64_t sub_22FF71F40()
{
  sub_22FFB1CA8();
  TransparencyLogProofs.hash(into:)(v1);
  return sub_22FFB1CF8();
}

uint64_t sub_22FF71F84()
{
  sub_22FFB1CA8();
  TransparencyLogProofs.hash(into:)(v1);
  return sub_22FFB1CF8();
}

uint64_t sub_22FF71FC4(uint64_t a1)
{
  v2 = sub_22FF72AE4(&qword_27DAF3880, type metadata accessor for TransparencyLogError, &protocol conformance descriptor for TransparencyLogError);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_22FF72030(uint64_t a1)
{
  v2 = sub_22FF72AE4(&qword_27DAF3880, type metadata accessor for TransparencyLogError, &protocol conformance descriptor for TransparencyLogError);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t TransparencyLogError.errorCode.getter()
{
  v1 = type metadata accessor for TransparencyLogError(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FF72B2C(v0, v3, type metadata accessor for TransparencyLogError);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 1;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      result = 8;
      break;
    case 2:
      sub_22FF70D60(v3, type metadata accessor for TransparencyLogError);
      result = 9;
      break;
    case 3:
      sub_22FF70D60(v3, type metadata accessor for TransparencyLogError);
      result = 11;
      break;
    case 4:
      v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF3860, &qword_22FFBF078) + 48);
      v7 = sub_22FFB0908();
      v8 = *(*(v7 - 8) + 8);
      v8(&v3[v6], v7);
      v8(v3, v7);
      result = 13;
      break;
    case 5:
      result = 14;
      break;
    case 6:
      result = 2;
      break;
    case 7:
      result = 3;
      break;
    case 8:
      result = 4;
      break;
    case 9:
      result = 5;
      break;
    case 10:
      result = 6;
      break;
    case 11:
      result = 7;
      break;
    case 12:
      result = 10;
      break;
    case 13:
      result = 12;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t TransparencyLogError.errorUserInfo.getter()
{
  v1 = v0;
  v2 = type metadata accessor for TransparencyLogError(0);
  MEMORY[0x28223BE20](v2);
  v4 = (v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22FF72B2C(v1, v4, type metadata accessor for TransparencyLogError);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    v14 = *v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1B50, &unk_22FFB3B80);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22FFB2D10;
    *(inited + 32) = sub_22FFB1498();
    v16 = inited + 32;
    *(inited + 40) = v20;
    swift_getErrorValue();
    v18 = v23[24];
    v19 = v23[25];
    goto LABEL_7;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v14 = *v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1B50, &unk_22FFB3B80);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22FFB2D10;
    *(inited + 32) = sub_22FFB1498();
    v16 = inited + 32;
    *(inited + 40) = v17;
    swift_getErrorValue();
    v18 = v23[10];
    v19 = v23[11];
LABEL_7:
    *(inited + 72) = v19;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
    (*(*(v19 - 8) + 16))(boxed_opaque_existential_1, v18, v19);
    v13 = sub_22FFA6C20(inited);
    swift_setDeallocating();
    sub_22FEAEA34(v16, &qword_27DAF1B58, &qword_22FFC02B0);

    return v13;
  }

  if (EnumCaseMultiPayload)
  {
    v13 = sub_22FFA6C20(MEMORY[0x277D84F90]);
    sub_22FF70D60(v4, type metadata accessor for TransparencyLogError);
  }

  else
  {
    v6 = *v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1B50, &unk_22FFB3B80);
    v7 = swift_initStackObject();
    *(v7 + 16) = xmmword_22FFB2D10;
    *(v7 + 32) = sub_22FFB1498();
    *(v7 + 40) = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1ED0, &qword_22FFBF090);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_22FFB45C0;
    v10 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v11 = sub_22FFB1488();
    v12 = [v10 initWithDomain:v11 code:v6 userInfo:0];

    *(v9 + 32) = v12;
    *(v7 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF3870, &qword_22FFBF098);
    *(v7 + 48) = v9;
    v13 = sub_22FFA6C20(v7);
    swift_setDeallocating();
    sub_22FEAEA34(v7 + 32, &qword_27DAF1B58, &qword_22FFC02B0);
  }

  return v13;
}

BOOL _s16CloudAttestation21TransparencyLogProofsV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FFB0908();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1510, &qword_22FFB3800);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v33 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF3888, &unk_22FFBF270);
  MEMORY[0x28223BE20](v11);
  v13 = &v33 - v12;
  if ((static PrivateCloudCompute_TransparencyLog_ATLogProofs.== infix(_:_:)(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v14 = type metadata accessor for TransparencyLogProofs(0);
  v15 = a1;
  v16 = a2;
  v33 = v14;
  v34 = v15;
  v17 = *(v14 + 20);
  v18 = *(v11 + 48);
  sub_22FEBF3A4(v15 + v17, v13, &qword_27DAF1510, &qword_22FFB3800);
  v19 = v16 + v17;
  v20 = v16;
  sub_22FEBF3A4(v19, &v13[v18], &qword_27DAF1510, &qword_22FFB3800);
  v21 = *(v5 + 48);
  if (v21(v13, 1, v4) == 1)
  {
    if (v21(&v13[v18], 1, v4) == 1)
    {
      sub_22FEAEA34(v13, &qword_27DAF1510, &qword_22FFB3800);
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  sub_22FEBF3A4(v13, v10, &qword_27DAF1510, &qword_22FFB3800);
  if (v21(&v13[v18], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_7:
    sub_22FEAEA34(v13, &qword_27DAF3888, &unk_22FFBF270);
    return 0;
  }

  (*(v5 + 32))(v7, &v13[v18], v4);
  sub_22FF72AE4(&qword_27DAF3890, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
  v22 = sub_22FFB1478();
  v23 = *(v5 + 8);
  v23(v7, v4);
  v23(v10, v4);
  v20 = v16;
  sub_22FEAEA34(v13, &qword_27DAF1510, &qword_22FFB3800);
  if ((v22 & 1) == 0)
  {
    return 0;
  }

LABEL_9:
  v24 = *(v33 + 24);
  v25 = v34 + v24;
  v27 = *(v34 + v24);
  v26 = *(v34 + v24 + 8);
  v28 = (v20 + v24);
  v30 = *v28;
  v29 = v28[1];
  if (v26 >> 60 == 15)
  {
    if (v29 >> 60 == 15)
    {
      sub_22FEBF8F0(*v25, *(v25 + 8));
      sub_22FEBF8F0(v30, v29);
      sub_22FEA56EC(v27, v26);
      return 1;
    }

    goto LABEL_13;
  }

  if (v29 >> 60 == 15)
  {
LABEL_13:
    sub_22FEBF8F0(*v25, *(v25 + 8));
    sub_22FEBF8F0(v30, v29);
    sub_22FEA56EC(v27, v26);
    sub_22FEA56EC(v30, v29);
    return 0;
  }

  sub_22FEBF8F0(*v25, *(v25 + 8));
  sub_22FEBF8F0(v30, v29);
  v32 = sub_22FEC3DC8(v27, v26, v30, v29);
  sub_22FEA56EC(v30, v29);
  sub_22FEA56EC(v27, v26);
  return v32;
}

uint64_t sub_22FF72A5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22FF72AE4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22FF72B2C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t dispatch thunk of TransparencyProver.proveInclusion(of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 8) + **(a5 + 8));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_22FEAA0D4;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of TransparencyProver.proveInclusion(of:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22FF72E90;

  return v9(a1, a2, a3);
}

uint64_t sub_22FF72E90(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t dispatch thunk of TransparencyVerifier.verifyExpiringInclusion(of:proofs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 8) + **(a6 + 8));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_22FEAA538;

  return v15(a1, a2, a3, a4, a5, a6);
}

void sub_22FF73100(uint64_t a1)
{
  type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs(319);
  if (v1 <= 0x3F)
  {
    sub_22FED4954(319);
    if (v2 <= 0x3F)
    {
      sub_22FF34194();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22FF7319C(uint64_t a1)
{
  sub_22FF73260();
  if (v1 <= 0x3F)
  {
    sub_22FF73290();
    if (v2 <= 0x3F)
    {
      sub_22FF732C0();
      if (v3 <= 0x3F)
      {
        sub_22FED85D4();
        if (v4 <= 0x3F)
        {
          sub_22FF73308(319);
          if (v5 <= 0x3F)
          {
            sub_22FF73370();
            if (v6 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_22FF73260()
{
  result = qword_28148F0F8;
  if (!qword_28148F0F8)
  {
    result = MEMORY[0x277D83B88];
    atomic_store(MEMORY[0x277D83B88], &qword_28148F0F8);
  }

  return result;
}

uint64_t sub_22FF73290()
{
  result = qword_28148F0F0;
  if (!qword_28148F0F0)
  {
    result = MEMORY[0x277D83B88];
    atomic_store(MEMORY[0x277D83B88], &qword_28148F0F0);
  }

  return result;
}

void sub_22FF732C0()
{
  if (!qword_28148F0A0)
  {
    v0 = sub_22FED85D4();
    if (!v1)
    {
      atomic_store(v0, &qword_28148F0A0);
    }
  }
}

void sub_22FF73308(uint64_t a1)
{
  if (!qword_281491338)
  {
    sub_22FFB0908();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_281491338);
    }
  }
}

uint64_t sub_22FF73370()
{
  result = qword_28148F0E8;
  if (!qword_28148F0E8)
  {
    result = MEMORY[0x277D83B88];
    atomic_store(MEMORY[0x277D83B88], &qword_28148F0E8);
  }

  return result;
}

id sub_22FF733F4()
{
  v14[1] = *MEMORY[0x277D85DE8];
  v1 = sub_22FFB06B8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_opt_self() sharedDataAccessor];
  v14[0] = 0;
  v6 = [v5 copyPathForPersonalizedData:2 error:v14];

  v7 = v14[0];
  if (v6)
  {
    sub_22FFB1498();
    v8 = v7;

    sub_22FFB0668();

    v9 = sub_22FFB06D8();
    if (!v0)
    {
      v6 = v9;
      (*(v2 + 8))(v4, v1);
      return v6;
    }

    (*(v2 + 8))(v4, v1);
    v10 = v0;
  }

  else
  {
    v11 = v14[0];
    v10 = sub_22FFB0648();

    swift_willThrow();
  }

  sub_22FEBF89C();
  swift_allocError();
  *v12 = v10;
  *(v12 + 8) = 0;
  *(v12 + 16) = 1;
  swift_willThrow();
  return v6;
}

unint64_t sub_22FF73628()
{
  v1 = v0;
  if (MEMORY[0x277CDBC78])
  {
    v2 = MEMORY[0x277CDBC68] == 0;
  }

  else
  {
    v2 = 1;
  }

  if (v2 || MEMORY[0x277CDBC70] == 0 || MEMORY[0x277CDBC80] == 0)
  {
    return sub_22FFA78A0(MEMORY[0x277D84F90]);
  }

  sub_22FFB0AA8();
  v33 = sub_22FFB0A98();
  v5 = sub_22FFB0A88();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF3898, &unk_22FFBF3C0);
  result = sub_22FFB1AC8();
  v7 = result;
  v8 = 0;
  v38 = result;
  v39 = v5;
  v9 = 1 << *(v5 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = *(v5 + 64);
  v34 = v5 + 64;
  v12 = v10 & v11;
  v13 = (v9 + 63) >> 6;
  v36 = v13;
  v37 = result + 64;
  if ((v10 & v11) != 0)
  {
    while (1)
    {
      v43 = v1;
      v14 = __clz(__rbit64(v12));
      v40 = (v12 - 1) & v12;
LABEL_20:
      v17 = v14 | (v8 << 6);
      v18 = sub_22FFB0958();
      v42 = &v33;
      v19 = *(v18 - 8);
      v20 = *(v19 + 64);
      MEMORY[0x28223BE20](v18);
      v21 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
      v22 = v39;
      v24 = *(v23 + 72) * v17;
      v25 = (*(v19 + 16))(v21, *(v39 + 48) + v24, v18);
      v41 = &v33;
      v26 = *(*(v22 + 56) + 8 * v17);
      v45 = v26;
      MEMORY[0x28223BE20](v25);
      v27 = v21;
      v35 = v19;
      v28 = *(v19 + 32);
      v28(v21, v21, v18);
      v7 = v26;
      v29 = v43;
      sub_22FF739CC(&v45, &v44);
      v1 = v29;
      if (v29)
      {
        break;
      }

      v7 = v38;
      *(v37 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      result = (v28)(v7[6] + v24, v27, v18);
      *(v7[7] + 8 * v17) = v44;
      v30 = v7[2];
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      if (v31)
      {
        goto LABEL_29;
      }

      v7[2] = v32;
      v12 = v40;
      v13 = v36;
      if (!v40)
      {
        goto LABEL_15;
      }
    }

    (*(v35 + 8))(v27, v18);
    return v7;
  }

  else
  {
LABEL_15:
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

        return v7;
      }

      v16 = *(v34 + 8 * v8);
      ++v15;
      if (v16)
      {
        v43 = v1;
        v14 = __clz(__rbit64(v16));
        v40 = (v16 - 1) & v16;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }

  return result;
}

uint64_t sub_22FF739CC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = 0x363532616873;
  v6 = sub_22FFB14F8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v57 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_22FFB0958();
  v9 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v11 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = *a1;
  v12 = sub_22FFB0AE8();
  v14 = v13;
  v15 = v12 == 0x363532616873 && v13 == 0xE600000000000000;
  v61 = a2;
  v59 = v6;
  v58 = v7;
  if (v15 || (v16 = v12, (sub_22FFB1BC8() & 1) != 0))
  {

    v17 = sub_22FFB13C8();
    v18 = &qword_28148F198;
    v19 = MEMORY[0x277CC5540];
    v20 = MEMORY[0x277CC5538];
  }

  else
  {
    if (v16 == 0x343833616873 && v14 == 0xE600000000000000)
    {
    }

    else
    {
      v5 = sub_22FFB1BC8();

      if ((v5 & 1) == 0)
      {
        v53 = sub_22FFB0AE8();
        v55 = v54;
        sub_22FEBF89C();
        swift_allocError();
        *v56 = v53;
        *(v56 + 8) = v55;
        *(v56 + 16) = 0;
        return swift_willThrow();
      }
    }

    v17 = sub_22FFB13F8();
    v18 = &qword_28148F188;
    v19 = MEMORY[0x277CC5550];
    v20 = MEMORY[0x277CC5548];
  }

  v65 = sub_22FF74244(v18, v19, v20);
  v21 = sub_22FFB0AD8();
  v22 = v21;
  if (v21 >> 62)
  {
    v23 = sub_22FFB1AB8();
  }

  else
  {
    v23 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v60 = v2;
  if (v23)
  {
    v75 = MEMORY[0x277D84F90];
    sub_22FECDB38(0, v23 & ~(v23 >> 63), 0);
    if (v23 < 0)
    {
      __break(1u);
      goto LABEL_41;
    }

    v24 = 0;
    v63 = v22 & 0xC000000000000001;
    v5 = v75;
    v25 = (v9 + 8);
    v62 = v23 - 1;
    if ((v22 & 0xC000000000000001) == 0)
    {
      goto LABEL_13;
    }

LABEL_12:
    for (i = MEMORY[0x23190E180](v24, v22); ; i = *(v22 + 8 * v24 + 32))
    {
      v27 = i;
      v28 = sub_22FFB0AF8();
      LOBYTE(v67) = 2;
      SEP.SealedHash.Entry.init<A>(data:flags:algorithm:)(v28, v29, &v67, v17, v65, &v71);
      sub_22FFB0AC8();
      if (qword_281490280 != -1)
      {
        swift_once();
      }

      v30 = v22;
      v31 = v64;
      __swift_project_value_buffer(v64, qword_281491418);
      v32 = sub_22FFB0938();
      (*v25)(v11, v31);
      if (v32)
      {
        LOBYTE(v73) = v73 | 8;
      }

      v33 = sub_22FFB0B08();

      *(&v74 + 1) = v33;
      v69 = v73;
      v70 = v74;
      v67 = v71;
      v68 = v72;
      v75 = v5;
      v35 = *(v5 + 16);
      v34 = *(v5 + 24);
      if (v35 >= v34 >> 1)
      {
        sub_22FECDB38((v34 > 1), v35 + 1, 1);
        v5 = v75;
      }

      *(v5 + 16) = v35 + 1;
      v36 = (v5 + (v35 << 6));
      v37 = v67;
      v38 = v68;
      v39 = v70;
      v36[4] = v69;
      v36[5] = v39;
      v36[2] = v37;
      v36[3] = v38;
      if (v62 == v24)
      {
        break;
      }

      ++v24;
      v22 = v30;
      if (v63)
      {
        goto LABEL_12;
      }

LABEL_13:
      ;
    }
  }

  else
  {

    v5 = MEMORY[0x277D84F90];
  }

  result = sub_22FFB0AB8();
  if (!v41)
  {
    v46 = v61;
LABEL_32:
    *v46 = v5;
    return result;
  }

  v42 = v57;
  sub_22FFB14E8();
  v43 = sub_22FFB14A8();
  v45 = v44;
  result = (*(v58 + 8))(v42, v59);
  if (v45 >> 60 != 15)
  {

    LOBYTE(v67) = 4;
    SEP.SealedHash.Entry.init<A>(digest:flags:algorithm:)(v43, v45, &v67, v17, v65, &v71);
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_28:
      v46 = v61;
      v48 = *(v5 + 16);
      v47 = *(v5 + 24);
      if (v48 >= v47 >> 1)
      {
        result = sub_22FEC3874((v47 > 1), v48 + 1, 1, v5);
        v5 = result;
      }

      *(v5 + 16) = v48 + 1;
      v49 = (v5 + (v48 << 6));
      v50 = v71;
      v51 = v72;
      v52 = v74;
      v49[4] = v73;
      v49[5] = v52;
      v49[2] = v50;
      v49[3] = v51;
      goto LABEL_32;
    }

LABEL_41:
    result = sub_22FEC3874(0, *(v5 + 16) + 1, 1, v5);
    v5 = result;
    goto LABEL_28;
  }

  __break(1u);
  return result;
}

uint64_t dispatch thunk of AttestationAssetProvider.provisioningCertificateChain.getter(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 16) + **(a2 + 16));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22FF72E90;

  return v7(a1, a2);
}

uint64_t get_enum_tag_for_layout_string_16CloudAttestation0B18AssetProviderErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_22FF74190(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_22FF741D8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t sub_22FF7421C(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_22FF74244(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t Attestor.attest(key:expiration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x2822009F8](sub_22FF742E4, 0, 0);
}

uint64_t sub_22FF742E4()
{
  v1 = (*(v0[6] + 16))(v0[5]);
  v0[8] = v1;
  v2 = v1;
  v10 = (*(v0[6] + 56) + **(v0[6] + 56));
  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = sub_22FF7446C;
  v4 = v0[6];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[2];
  v8 = v0[3];

  return v10(v7, v8, v2, v5, 0, 0xF000000000000000, v6, v4);
}

uint64_t sub_22FF7446C()
{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22FF91BB0, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t PublicKeyData.raw.getter()
{
  v1 = *v0;
  sub_22FEA5600(*v0, v0[1]);
  return v1;
}

uint64_t AttestationBundle.init(data:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_22FFB0FE8();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = type metadata accessor for Proto_AttestationBundle(0);
  MEMORY[0x28223BE20](v8);
  v10 = v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1;
  v15 = a2;
  v13 = 0;
  memset(v12, 0, sizeof(v12));
  sub_22FEA5608(a1, a2);
  sub_22FFB0FD8();
  sub_22FF7BE88(&qword_2814910C0, type metadata accessor for Proto_AttestationBundle, &protocol conformance descriptor for Proto_AttestationBundle);
  sub_22FFB1188();
  result = sub_22FEA55AC(a1, a2);
  if (!v3)
  {
    return sub_22FF90754(v10, a3, type metadata accessor for Proto_AttestationBundle);
  }

  return result;
}

uint64_t AttestationBundle.serializedData()()
{
  type metadata accessor for Proto_AttestationBundle(0);
  sub_22FF7BE88(&qword_2814910C0, type metadata accessor for Proto_AttestationBundle, &protocol conformance descriptor for Proto_AttestationBundle);
  return sub_22FFB1178();
}

uint64_t sub_22FF74830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_22FEAA538;

  return sub_22FF74910(a1, a2, a3, a4, a5);
}

uint64_t sub_22FF74910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[16] = a5;
  v6[17] = v5;
  v6[14] = a3;
  v6[15] = a4;
  v6[12] = a1;
  v6[13] = a2;
  v7 = sub_22FFB13C8();
  v6[18] = v7;
  v6[19] = *(v7 - 8);
  v6[20] = swift_task_alloc();
  v8 = sub_22FFB1398();
  v6[21] = v8;
  v6[22] = *(v8 - 8);
  v6[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FF74A34, 0, 0);
}

uint64_t sub_22FF74A34()
{
  type metadata accessor for Proto_AppData(0);
  sub_22FF7BE88(qword_2814906B0, type metadata accessor for Proto_AppData, &protocol conformance descriptor for Proto_AppData);
  v1 = sub_22FFB1178();
  v0[24] = v1;
  v0[25] = v2;
  v18 = v0[23];
  v19 = v0[22];
  v4 = v0[20];
  v3 = v0[21];
  v6 = v0[18];
  v5 = v0[19];
  v7 = v1;
  v8 = v2;
  sub_22FF7BE88(&qword_28148F198, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
  sub_22FFB1388();
  sub_22FEA5608(v7, v8);
  sub_22FF9EA78(v7, v8, v4);
  sub_22FEA55AC(v7, v8);
  sub_22FFB1368();
  (*(v5 + 8))(v4, v6);
  v0[5] = v3;
  v0[6] = sub_22FF7BE88(&qword_28148F1C0, MEMORY[0x277CC5290], MEMORY[0x277CC5280]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  (*(v19 + 16))(boxed_opaque_existential_1, v18, v3);
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  sub_22FFB0618();
  (*(v19 + 8))(v18, v3);
  v11 = v0[10];
  v10 = v0[11];
  v0[26] = v11;
  v0[27] = v10;
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v12 = swift_task_alloc();
  v0[28] = v12;
  *v12 = v0;
  v12[1] = sub_22FF74D4C;
  v13 = v0[14];
  v14 = v0[15];
  v15 = v0[12];
  v16 = v0[13];

  return NodeAttestor.attest(key:using:expiration:nonce:)(v15, v16, v13, v14, v11, v10);
}

uint64_t sub_22FF74D4C()
{
  v2 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v3 = sub_22FF74E68;
  }

  else
  {
    sub_22FEA55AC(*(v2 + 208), *(v2 + 216));
    v3 = sub_22FF91B64;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22FF74E68()
{
  v1 = v0[24];
  v2 = v0[25];
  sub_22FEA55AC(v0[26], v0[27]);
  sub_22FEA55AC(v1, v2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_22FF74EF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[16] = a5;
  v6[17] = v5;
  v6[14] = a3;
  v6[15] = a4;
  v6[12] = a1;
  v6[13] = a2;
  v7 = sub_22FFB13C8();
  v6[18] = v7;
  v6[19] = *(v7 - 8);
  v6[20] = swift_task_alloc();
  v8 = sub_22FFB1398();
  v6[21] = v8;
  v6[22] = *(v8 - 8);
  v6[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FF75014, 0, 0);
}

uint64_t sub_22FF75014()
{
  type metadata accessor for Proto_AppData(0);
  sub_22FF7BE88(qword_2814906B0, type metadata accessor for Proto_AppData, &protocol conformance descriptor for Proto_AppData);
  v1 = sub_22FFB1178();
  v0[24] = v1;
  v0[25] = v2;
  v18 = v0[23];
  v19 = v0[22];
  v4 = v0[20];
  v3 = v0[21];
  v6 = v0[18];
  v5 = v0[19];
  v7 = v1;
  v8 = v2;
  sub_22FF7BE88(&qword_28148F198, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
  sub_22FFB1388();
  sub_22FEA5608(v7, v8);
  sub_22FF9EA78(v7, v8, v4);
  sub_22FEA55AC(v7, v8);
  sub_22FFB1368();
  (*(v5 + 8))(v4, v6);
  v0[5] = v3;
  v0[6] = sub_22FF7BE88(&qword_28148F1C0, MEMORY[0x277CC5290], MEMORY[0x277CC5280]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  (*(v19 + 16))(boxed_opaque_existential_1, v18, v3);
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  sub_22FFB0618();
  (*(v19 + 8))(v18, v3);
  v11 = v0[10];
  v10 = v0[11];
  v0[26] = v11;
  v0[27] = v10;
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v12 = swift_task_alloc();
  v0[28] = v12;
  *v12 = v0;
  v12[1] = sub_22FF7532C;
  v13 = v0[14];
  v14 = v0[15];
  v15 = v0[12];
  v16 = v0[13];

  return NodeAttestor.attest(key:using:expiration:nonce:)(v15, v16, v13, v14, v11, v10);
}

uint64_t sub_22FF7532C()
{
  v2 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v3 = sub_22FF91BB4;
  }

  else
  {
    sub_22FEA55AC(*(v2 + 208), *(v2 + 216));
    v3 = sub_22FF91B64;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22FF75448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[16] = a5;
  v6[17] = v5;
  v6[14] = a3;
  v6[15] = a4;
  v6[12] = a1;
  v6[13] = a2;
  v7 = sub_22FFB13C8();
  v6[18] = v7;
  v6[19] = *(v7 - 8);
  v6[20] = swift_task_alloc();
  v8 = sub_22FFB1398();
  v6[21] = v8;
  v6[22] = *(v8 - 8);
  v6[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FF7556C, 0, 0);
}

uint64_t sub_22FF7556C()
{
  type metadata accessor for Proto_AppData(0);
  sub_22FF7BE88(qword_2814906B0, type metadata accessor for Proto_AppData, &protocol conformance descriptor for Proto_AppData);
  v1 = sub_22FFB1178();
  v0[24] = v1;
  v0[25] = v2;
  v18 = v0[23];
  v19 = v0[22];
  v4 = v0[20];
  v3 = v0[21];
  v6 = v0[18];
  v5 = v0[19];
  v7 = v1;
  v8 = v2;
  sub_22FF7BE88(&qword_28148F198, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
  sub_22FFB1388();
  sub_22FEA5608(v7, v8);
  sub_22FF9EA78(v7, v8, v4);
  sub_22FEA55AC(v7, v8);
  sub_22FFB1368();
  (*(v5 + 8))(v4, v6);
  v0[5] = v3;
  v0[6] = sub_22FF7BE88(&qword_28148F1C0, MEMORY[0x277CC5290], MEMORY[0x277CC5280]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  (*(v19 + 16))(boxed_opaque_existential_1, v18, v3);
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  sub_22FFB0618();
  (*(v19 + 8))(v18, v3);
  v11 = v0[10];
  v10 = v0[11];
  v0[26] = v11;
  v0[27] = v10;
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v12 = swift_task_alloc();
  v0[28] = v12;
  *v12 = v0;
  v12[1] = sub_22FF75894;
  v13 = v0[14];
  v14 = v0[15];
  v15 = v0[12];
  v16 = v0[13];

  return sub_22FF7C5BC(v15, v16, v13, v14, v11, v10);
}

uint64_t sub_22FF75894()
{
  v2 = *v1;
  *(*v1 + 232) = v0;

  sub_22FEA55AC(*(v2 + 208), *(v2 + 216));
  if (v0)
  {
    v3 = sub_22FF91BB8;
  }

  else
  {
    v3 = sub_22FF91B64;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22FF759DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a5;
  v6 = sub_22FFB13C8();
  v5[10] = v6;
  v5[11] = *(v6 - 8);
  v5[12] = swift_task_alloc();
  v7 = sub_22FFB1398();
  v5[13] = v7;
  v5[14] = *(v7 - 8);
  v5[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FF75AF8, 0, 0);
}

uint64_t sub_22FF75AF8()
{
  type metadata accessor for Proto_AppData(0);
  sub_22FF7BE88(qword_2814906B0, type metadata accessor for Proto_AppData, &protocol conformance descriptor for Proto_AppData);
  v1 = sub_22FFB1178();
  v19 = v0[15];
  v20 = v0[14];
  v3 = v0[12];
  v2 = v0[13];
  v5 = v0[10];
  v4 = v0[11];
  v6 = v1;
  v8 = v7;
  sub_22FF7BE88(&qword_28148F198, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
  sub_22FFB1388();
  v9 = v8;
  sub_22FEA5608(v6, v8);
  v21 = v8;
  sub_22FF9EA78(v6, v8, v3);
  v10 = v6;
  sub_22FEA55AC(v6, v9);
  sub_22FFB1368();
  (*(v4 + 8))(v3, v5);
  v0[5] = v2;
  v0[6] = sub_22FF7BE88(&qword_28148F1C0, MEMORY[0x277CC5290], MEMORY[0x277CC5280]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  (*(v20 + 16))(boxed_opaque_existential_1, v19, v2);
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  sub_22FFB0618();
  (*(v20 + 8))(v19, v2);
  v12 = v0[7];
  v13 = v0[8];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  type metadata accessor for NodeAttestor.Error(0);
  sub_22FF7BE88(&qword_27DAF1810, type metadata accessor for NodeAttestor.Error, &protocol conformance descriptor for NodeAttestor.Error);
  swift_allocError();
  v15 = v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1818, &qword_22FFB3130);
  (*(*(v16 - 8) + 56))(v15, 7, 7, v16);
  swift_willThrow();
  sub_22FEA55AC(v12, v13);
  sub_22FEA55AC(v10, v21);

  v17 = v0[1];

  return v17();
}

uint64_t sub_22FF75E50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[16] = a5;
  v6[17] = v5;
  v6[14] = a3;
  v6[15] = a4;
  v6[12] = a1;
  v6[13] = a2;
  v7 = sub_22FFB13C8();
  v6[18] = v7;
  v6[19] = *(v7 - 8);
  v6[20] = swift_task_alloc();
  v8 = sub_22FFB1398();
  v6[21] = v8;
  v6[22] = *(v8 - 8);
  v6[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FF75F74, 0, 0);
}

uint64_t sub_22FF75F74()
{
  type metadata accessor for Proto_AppData(0);
  sub_22FF7BE88(qword_2814906B0, type metadata accessor for Proto_AppData, &protocol conformance descriptor for Proto_AppData);
  v1 = sub_22FFB1178();
  v0[24] = v1;
  v0[25] = v2;
  v18 = v0[23];
  v19 = v0[22];
  v4 = v0[20];
  v3 = v0[21];
  v6 = v0[18];
  v5 = v0[19];
  v7 = v1;
  v8 = v2;
  sub_22FF7BE88(&qword_28148F198, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
  sub_22FFB1388();
  sub_22FEA5608(v7, v8);
  sub_22FF9EA78(v7, v8, v4);
  sub_22FEA55AC(v7, v8);
  sub_22FFB1368();
  (*(v5 + 8))(v4, v6);
  v0[5] = v3;
  v0[6] = sub_22FF7BE88(&qword_28148F1C0, MEMORY[0x277CC5290], MEMORY[0x277CC5280]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  (*(v19 + 16))(boxed_opaque_existential_1, v18, v3);
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  sub_22FFB0618();
  (*(v19 + 8))(v18, v3);
  v11 = v0[10];
  v10 = v0[11];
  v0[26] = v11;
  v0[27] = v10;
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v12 = swift_task_alloc();
  v0[28] = v12;
  *v12 = v0;
  v12[1] = sub_22FF7628C;
  v13 = v0[14];
  v14 = v0[15];
  v15 = v0[12];
  v16 = v0[13];

  return NodeAttestor.attest(key:using:expiration:nonce:)(v15, v16, v13, v14, v11, v10);
}

uint64_t sub_22FF7628C()
{
  v2 = *v1;
  *(*v1 + 232) = v0;

  sub_22FEA55AC(*(v2 + 208), *(v2 + 216));
  if (v0)
  {
    v3 = sub_22FF764D4;
  }

  else
  {
    v3 = sub_22FF763D4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22FF763D4()
{
  v1 = v0[12];
  v2 = *(type metadata accessor for Proto_AttestationBundle(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v1 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_AttestationBundle._StorageClass(0);
    swift_allocObject();
    v4 = sub_22FF10520(v4);
    *(v1 + v2) = v4;
  }

  v6 = v0[24];
  v5 = v0[25];
  v7 = (v4 + OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__appData);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_22FEA55AC(v8, v9);

  v10 = v0[1];

  return v10();
}

uint64_t sub_22FF764D4()
{
  sub_22FEA55AC(v0[24], v0[25]);

  v1 = v0[1];

  return v1();
}

uint64_t Attestor.attest(key:using:expiration:appData:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[18] = a7;
  v8[19] = v7;
  v8[16] = a5;
  v8[17] = a6;
  v8[14] = a3;
  v8[15] = a4;
  v8[12] = a1;
  v8[13] = a2;
  v9 = sub_22FFB13C8();
  v8[20] = v9;
  v8[21] = *(v9 - 8);
  v8[22] = swift_task_alloc();
  v10 = sub_22FFB1398();
  v8[23] = v10;
  v8[24] = *(v10 - 8);
  v8[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FF76674, 0, 0);
}

uint64_t sub_22FF76674()
{
  type metadata accessor for Proto_AppData(0);
  sub_22FF7BE88(qword_2814906B0, type metadata accessor for Proto_AppData, &protocol conformance descriptor for Proto_AppData);
  v1 = sub_22FFB1178();
  v0[26] = v1;
  v0[27] = v2;
  v20 = v0[25];
  v21 = v0[24];
  v4 = v0[22];
  v3 = v0[23];
  v6 = v0[20];
  v5 = v0[21];
  v23 = v0[18];
  v7 = v1;
  v8 = v2;
  sub_22FF7BE88(&qword_28148F198, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
  sub_22FFB1388();
  sub_22FEA5608(v7, v8);
  sub_22FF9EA78(v7, v8, v4);
  sub_22FEA55AC(v7, v8);
  sub_22FFB1368();
  (*(v5 + 8))(v4, v6);
  v0[5] = v3;
  v0[6] = sub_22FF7BE88(&qword_28148F1C0, MEMORY[0x277CC5290], MEMORY[0x277CC5280]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  (*(v21 + 16))(boxed_opaque_existential_1, v20, v3);
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  sub_22FFB0618();
  (*(v21 + 8))(v20, v3);
  v11 = v0[10];
  v10 = v0[11];
  v0[28] = v11;
  v0[29] = v10;
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v22 = (*(v23 + 56) + **(v23 + 56));
  v12 = swift_task_alloc();
  v0[30] = v12;
  *v12 = v0;
  v12[1] = sub_22FF76A08;
  v13 = v0[18];
  v14 = v0[17];
  v15 = v0[14];
  v16 = v0[15];
  v17 = v0[12];
  v18 = v0[13];

  return v22(v17, v18, v15, v16, v11, v10, v14, v13);
}

uint64_t sub_22FF76A08()
{
  v2 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v3 = sub_22FF76C24;
  }

  else
  {
    sub_22FEA55AC(*(v2 + 224), *(v2 + 232));
    v3 = sub_22FF76B24;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22FF76B24()
{
  v1 = v0[12];
  v2 = *(type metadata accessor for Proto_AttestationBundle(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v1 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_AttestationBundle._StorageClass(0);
    swift_allocObject();
    v4 = sub_22FF10520(v4);
    *(v1 + v2) = v4;
  }

  v6 = v0[26];
  v5 = v0[27];
  v7 = (v4 + OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__appData);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_22FEA55AC(v8, v9);

  v10 = v0[1];

  return v10();
}

uint64_t sub_22FF76C24()
{
  v1 = v0[28];
  v2 = v0[29];
  sub_22FEA55AC(v0[26], v0[27]);
  sub_22FEA55AC(v1, v2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_22FF76CAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x2822009F8](sub_22FF76CD4, 0, 0);
}

uint64_t sub_22FF76CD4()
{
  v1 = NodeAttestor.attestingKey.getter();
  v0[8] = v1;
  v2 = v1;
  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = sub_22FF76DD0;
  v4 = v0[6];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[2];
  v8 = v0[3];

  return NodeAttestor.attest(key:using:expiration:nonce:)(v7, v8, v2, v5, v6, v4);
}

uint64_t sub_22FF76DD0()
{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22FF76F0C, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_22FF76F0C()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t Attestor.attest(key:expiration:nonce:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[8] = a7;
  v8[9] = v7;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  return MEMORY[0x2822009F8](sub_22FF76F9C, 0, 0);
}

uint64_t sub_22FF76F9C()
{
  v1 = (*(v0[8] + 16))(v0[7]);
  v0[10] = v1;
  v2 = v1;
  v12 = (*(v0[8] + 56) + **(v0[8] + 56));
  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_22FF77120;
  v4 = v0[8];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[4];
  v8 = v0[5];
  v9 = v0[2];
  v10 = v0[3];

  return v12(v9, v10, v2, v7, v8, v5, v6, v4);
}

uint64_t sub_22FF77120()
{
  v2 = *v1;
  *(v2 + 96) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22FF7725C, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_22FF7725C()
{
  v1 = *(v0 + 8);

  return v1();
}

double Attestor.defaultKeyLifetime.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 8))(a1);
  v2 = sub_22FFB1D28();
  sub_22FFB1D28();
  return v3 * 1.0e-18 + v2;
}

uint64_t _s16CloudAttestation8AttestorPAAE15sealedHashSlotsShy10Foundation4UUIDVGvg_0()
{
  if (qword_27DAF1498 != -1)
  {
    swift_once();
  }

  v0 = sub_22FFB12F8();
  __swift_project_value_buffer(v0, qword_27DAF38A0);
  v1 = sub_22FFB12D8();
  v2 = sub_22FFB1838();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_22FE99000, v1, v2, "property sealedHashSlots is unused", v3, 2u);
    MEMORY[0x23190EFF0](v3, -1, -1);
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_22FF7740C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v18 = swift_task_alloc();
  *(v10 + 16) = v18;
  *v18 = v10;
  v18[1] = sub_22FEAA538;

  return Validator.validate<A>(bundle:nonce:policy:)(a1, a2, a3, a4, a5, a6, v17, a10);
}

uint64_t Validator.validate<A>(bundle:nonce:policy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v18 = (*(v20 + 64) + **(v20 + 64));
  v16 = swift_task_alloc();
  *(v8 + 16) = v16;
  *v16 = v8;
  v16[1] = sub_22FEAA538;

  return v18(a1, a2, a3, a4, a5, a6, a8);
}

uint64_t sub_22FF77660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_22FEAA538;

  return NodeValidator.validate(bundle:nonce:)(a1, a2, a3, a4, 0, 0xF000000000000000);
}

uint64_t sub_22FF7772C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v5[7] = type metadata accessor for EnsembleValidator(0);
  v5[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FF777C8, 0, 0);
}

uint64_t sub_22FF777C8()
{
  v1 = (v0[6] + *(v0[7] + 48));
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v6 = (*(v3 + 16) + **(v3 + 16));
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_22FF778F4;

  return v6(v2, v3);
}

uint64_t sub_22FF778F4(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = sub_22FF77A20;
  }

  else
  {
    *(v4 + 80) = a1;
    v5 = sub_22FF77B18;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22FF77A20()
{
  sub_22FF9064C(v0[6], v0[8], type metadata accessor for EnsembleValidator);
  v2 = v0[7];
  v1 = v0[8];
  *(v1 + *(v2 + 68)) = 0;
  *(v1 + *(v2 + 60)) = 0;
  *(v0[8] + *(v0[7] + 64)) = 0;
  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_22FF77C6C;
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[2];
  v7 = v0[3];

  return sub_22FEB7794(v6, v7, v4, v5, 0, 0xF000000000000000);
}

uint64_t sub_22FF77B18()
{
  v1 = v0[10];
  sub_22FF9064C(v0[6], v0[8], type metadata accessor for EnsembleValidator);
  if (v1)
  {
    v2 = v0[10];
    v4 = v0[7];
    v3 = v0[8];
    *(v3 + *(v4 + 68)) = *(v2 + 16) != 0;
    v5 = sub_22FEBE9A0(v2);

    *(v3 + *(v4 + 60)) = v5 & 1;
    v6 = 1;
  }

  else
  {
    v6 = 0;
    v8 = v0[7];
    v7 = v0[8];
    *(v7 + *(v8 + 68)) = 0;
    *(v7 + *(v8 + 60)) = 0;
  }

  *(v0[8] + *(v0[7] + 64)) = v6;
  v9 = swift_task_alloc();
  v0[11] = v9;
  *v9 = v0;
  v9[1] = sub_22FF77C6C;
  v10 = v0[4];
  v11 = v0[5];
  v12 = v0[2];
  v13 = v0[3];

  return sub_22FEB7794(v12, v13, v10, v11, 0, 0xF000000000000000);
}

uint64_t sub_22FF77C6C()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_22FF77E04;
  }

  else
  {
    v2 = sub_22FF77D80;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22FF77D80()
{
  sub_22FF906D4(*(v0 + 64), type metadata accessor for EnsembleValidator);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FF77E04()
{
  sub_22FF906D4(*(v0 + 64), type metadata accessor for EnsembleValidator);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FF77E88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[22] = a4;
  v5[23] = v4;
  v5[20] = a2;
  v5[21] = a3;
  v5[19] = a1;
  v5[24] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF21C8, &qword_22FFB6308);
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();
  v6 = sub_22FFB13C8();
  v5[27] = v6;
  v5[28] = *(v6 - 8);
  v5[29] = swift_task_alloc();
  v7 = sub_22FFB1398();
  v5[30] = v7;
  v5[31] = *(v7 - 8);
  v5[32] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FF77FF4, 0, 0);
}

uint64_t sub_22FF77FF4()
{
  v1 = v0[32];
  v2 = v0[29];
  v18 = v0[30];
  v19 = v0[31];
  v4 = v0[27];
  v3 = v0[28];
  v20 = v0[24];
  v21 = v0[26];
  v5 = v0[22];
  v6 = (*(v5 + *(type metadata accessor for Proto_AttestationBundle(0) + 20)) + OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__appData);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  sub_22FEA5608(*v6, v8);
  sub_22FF7BE88(&qword_28148F198, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
  sub_22FFB1388();
  sub_22FEA5608(v7, v8);
  sub_22FF9EA78(v7, v8, v2);
  sub_22FEA55AC(v7, v8);
  sub_22FFB1368();
  sub_22FEA55AC(v7, v8);
  (*(v3 + 8))(v2, v4);
  v0[11] = v18;
  v0[12] = sub_22FF7BE88(&qword_28148F1C0, MEMORY[0x277CC5290], MEMORY[0x277CC5280]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 8);
  (*(v19 + 16))(boxed_opaque_existential_1, v1, v18);
  __swift_project_boxed_opaque_existential_1(v0 + 8, v0[11]);
  sub_22FFB0618();
  (*(v19 + 8))(v1, v18);
  v11 = v0[16];
  v10 = v0[17];
  v0[33] = v11;
  v0[34] = v10;
  __swift_destroy_boxed_opaque_existential_1(v0 + 8);
  v12 = *(v20 + 48);
  v13 = *(v20 + 64);
  sub_22FEA5608(v11, v10);
  v14 = swift_task_alloc();
  v0[35] = v14;
  *v14 = v0;
  v14[1] = sub_22FF782C4;
  v15 = v0[26];
  v16 = v0[22];

  return NodeValidator.validate(bundle:nonce:)(v15, v21 + v12, v21 + v13, v16, v11, v10);
}

uint64_t sub_22FF782C4()
{
  v2 = *v1;
  *(*v1 + 288) = v0;

  if (v0)
  {
    v3 = sub_22FEF4A28;
  }

  else
  {
    sub_22FEA55AC(*(v2 + 264), *(v2 + 272));
    v3 = sub_22FF783E0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22FF783E0()
{
  PCC.ProxyNodeValidator.policy.getter((v0 + 16));
  *(v0 + 144) = sub_22FFA7050(MEMORY[0x277D84F90]);
  v1 = swift_task_alloc();
  *(v0 + 296) = v1;
  *v1 = v0;
  v1[1] = sub_22FF784B4;
  v2 = *(v0 + 176);

  return sub_22FFA3BB0(v2, v0 + 144);
}

uint64_t sub_22FF784B4()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_22FEF4958;
  }

  else
  {
    v2 = sub_22FF785E8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22FF785E8()
{
  v2 = v0[33];
  v1 = v0[34];
  v4 = v0[25];
  v3 = v0[26];
  v5 = v0[24];
  v7 = v0[20];
  v6 = v0[21];
  v8 = v0[19];
  sub_22FEAEA34((v0 + 2), &qword_27DAF21D0, &unk_22FFB6310);
  sub_22FEA55AC(v2, v1);
  sub_22FEF4B94(v3, v4);
  v9 = *(v5 + 48);
  v10 = *(v5 + 64);
  *v8 = *v4;
  v11 = sub_22FFB0908();
  (*(*(v11 - 8) + 32))(v7, &v4[v9], v11);
  sub_22FF90754(&v4[v10], v6, type metadata accessor for Validated.AttestationBundle);

  v12 = v0[1];

  return v12();
}

uint64_t Validator.validate(bundle:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 64) + **(a6 + 64));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_22FEAA538;

  return v15(a1, a2, a3, a4, 0, 0xF000000000000000, a5, a6);
}

uint64_t sub_22FF788C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_22FEAA538;

  return sub_22FF74EF0(a1, a2, a3, a4, a5);
}

uint64_t sub_22FF789A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x2822009F8](sub_22FF789CC, 0, 0);
}

uint64_t sub_22FF789CC()
{
  v1 = NodeAttestor.attestingKey.getter();
  v0[8] = v1;
  v2 = v1;
  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = sub_22FF7446C;
  v4 = v0[6];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[2];
  v8 = v0[3];

  return NodeAttestor.attest(key:using:expiration:nonce:)(v7, v8, v2, v5, v6, v4);
}

double sub_22FF78AC8()
{
  v0 = sub_22FFB1D28();
  sub_22FFB1D28();
  return v1 * 1.0e-18 + v0;
}

uint64_t sub_22FF78B28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[37] = a8;
  v9[38] = v8;
  v9[35] = a6;
  v9[36] = a7;
  v9[33] = a4;
  v9[34] = a5;
  v9[31] = a2;
  v9[32] = a3;
  v9[30] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1520, &qword_22FFB3A30);
  v9[39] = swift_task_alloc();
  v10 = sub_22FFB0EE8();
  v9[40] = v10;
  v9[41] = *(v10 - 8);
  v9[42] = swift_task_alloc();
  v11 = sub_22FFB0908();
  v9[43] = v11;
  v9[44] = *(v11 - 8);
  v9[45] = swift_task_alloc();
  v9[46] = swift_task_alloc();
  type metadata accessor for AttestationBundle(0);
  v9[47] = swift_task_alloc();
  v9[48] = swift_task_alloc();
  v12 = sub_22FFB13C8();
  v9[49] = v12;
  v9[50] = *(v12 - 8);
  v9[51] = swift_task_alloc();
  v13 = sub_22FFB1398();
  v9[52] = v13;
  v9[53] = *(v13 - 8);
  v9[54] = swift_task_alloc();
  v9[55] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9[56] = AssociatedTypeWitness;
  v9[57] = *(AssociatedTypeWitness - 8);
  v9[58] = swift_task_alloc();
  v15 = sub_22FFB12F8();
  v9[59] = v15;
  v9[60] = *(v15 - 8);
  v9[61] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FF78EA0, 0, 0);
}

uint64_t sub_22FF78EA0()
{
  v1 = v0[37];
  v2 = v0[36];
  v0[22] = v2;
  swift_getMetatypeMetadata();
  sub_22FFB1508();
  sub_22FFB12E8();
  v0[23] = sub_22FFA7050(MEMORY[0x277D84F90]);
  (*(v1 + 56))(v2, v1);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = (*(AssociatedConformanceWitness + 8) + **(AssociatedConformanceWitness + 8));
  v4 = swift_task_alloc();
  v0[62] = v4;
  *v4 = v0;
  v4[1] = sub_22FF790AC;
  v5 = v0[56];
  v6 = v0[33];

  return v8(v6, v0 + 23, v5, AssociatedConformanceWitness);
}

uint64_t sub_22FF790AC()
{
  v2 = *v1;
  *(*v1 + 504) = v0;

  (*(v2[57] + 8))(v2[58], v2[56]);
  if (v0)
  {
    v3 = sub_22FF7A584;
  }

  else
  {
    v3 = sub_22FF79240;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22FF79240()
{
  v173 = v0;
  v172 = *MEMORY[0x277D85DE8];
  v1 = v0[23];
  if (*(v1 + 16) && (v2 = sub_22FFA62AC(&type metadata for SEPAttestationPolicy, &protocol witness table for SEPAttestationPolicy, 0xD000000000000014, 0x800000022FFC9B50), (v3 & 1) != 0))
  {
    sub_22FEBF2A4(*(v1 + 56) + 32 * v2, (v0 + 2));
  }

  else
  {
    *(v0 + 1) = 0u;
    *(v0 + 2) = 0u;
  }

  if (v0[5])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1A88, &qword_22FFB3A60);
    if (swift_dynamicCast())
    {
      v166 = *(v0 + 4);
      v165 = *(v0 + 3);
      v4 = v0[63];
      goto LABEL_12;
    }
  }

  else
  {
    sub_22FEAEA34((v0 + 2), &qword_27DAF1A78, &unk_22FFB3A50);
  }

  v4 = v0[63];
  v5 = v0[33];
  v6 = *(v5 + *(type metadata accessor for Proto_AttestationBundle(0) + 20));
  swift_beginAccess();
  v8 = *(v6 + 16);
  v7 = *(v6 + 24);
  sub_22FEA5608(v8, v7);
  SEP.Attestation.init(from:)(v8, v7, &v168);
  if (v4)
  {
    v9 = v4;

LABEL_43:
    v105 = v9;
    v106 = sub_22FFB12D8();
    v107 = sub_22FFB1838();

    if (os_log_type_enabled(v106, v107))
    {
      v108 = swift_slowAlloc();
      v109 = swift_slowAlloc();
      *v108 = 138412290;
      v110 = v9;
      v111 = _swift_stdlib_bridgeErrorToNSError();
      *(v108 + 4) = v111;
      *v109 = v111;
      _os_log_impl(&dword_22FE99000, v106, v107, "AttestationBundle validation failed: %@", v108, 0xCu);
      sub_22FEAEA34(v109, &qword_27DAF1680, &unk_22FFB4B10);
      MEMORY[0x23190EFF0](v109, -1, -1);
      MEMORY[0x23190EFF0](v108, -1, -1);
    }

    v112 = v106;
    v114 = v0[60];
    v113 = v0[61];
    v115 = v0[59];

    swift_willThrow();
    (*(v114 + 8))(v113, v115);

    v100 = v0[1];
    goto LABEL_46;
  }

  v166 = v169;
  v165 = v168;
LABEL_12:
  v162 = v0[61];
  v11 = v0[34];
  v10 = v0[35];
  v12 = v0[33];
  v0[24] = 0;
  v0[25] = 0;
  v13 = swift_task_alloc();
  *(v13 + 16) = v0 + 24;
  *(v13 + 24) = v0 + 25;
  sub_22FED55F8(v166, *(&v166 + 1), sub_22FEBF260);

  v14 = v168;
  sub_22FF85468(v11, v10, v168, *(&v168 + 1), v12, v162);
  v9 = v4;
  sub_22FEA56EC(v14, *(&v14 + 1));
  if (v4)
  {
    sub_22FEA55AC(v165, *(&v165 + 1));
    sub_22FEA55AC(v166, *(&v166 + 1));

    goto LABEL_43;
  }

  v163 = v0 + 23;
  v160 = v166;
  v168 = v165;
  v169 = v166;
  SEP.Attestation.publicKeyData.getter(&v170);
  v161 = v171;
  if ((~v171 & 0x3000000000000000) == 0)
  {

    type metadata accessor for CloudAttestationError(0);
    sub_22FF7BE88(&qword_27DAF1A80, type metadata accessor for CloudAttestationError, &protocol conformance descriptor for CloudAttestationError);
    v9 = swift_allocError();
    *v15 = 0xD000000000000017;
    v15[1] = 0x800000022FFC9B70;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_22FEA55AC(v165, *(&v165 + 1));
    v17 = *(&v166 + 1);
    v16 = v166;
LABEL_16:
    sub_22FEA55AC(v16, v17);
    goto LABEL_43;
  }

  v18 = v0 + 23;
  v19 = v170;
  sub_22FEA5600(v170, v171);
  v20 = sub_22FFB12D8();
  v21 = sub_22FFB1848();
  sub_22FEBF27C(v19, v161);
  v159 = v19;
  if (os_log_type_enabled(v20, v21))
  {
    v145 = v0[55];
    v155 = v0[53];
    v150 = v0[52];
    v22 = v0[51];
    v148 = v0[50];
    v23 = v0[49];
    buf = swift_slowAlloc();
    v157 = swift_slowAlloc();
    *&v168 = v157;
    *buf = 136315138;
    sub_22FEA5600(v19, v161);
    sub_22FF7BE88(&qword_28148F198, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
    log = v20;
    sub_22FFB1388();
    sub_22FEA5600(v19, v161);
    sub_22FF9EA78(v19, v161 & 0xDFFFFFFFFFFFFFFFLL, v22);
    sub_22FEBF27C(v19, v161);
    sub_22FFB1368();
    v18 = v0 + 23;
    sub_22FEBF27C(v19, v161);
    (*(v148 + 8))(v22, v23);
    sub_22FF7BE88(&qword_28148F1B0, MEMORY[0x277CC5290], MEMORY[0x277CC52B0]);
    v24 = sub_22FFB1BA8();
    v26 = v25;
    (*(v155 + 8))(v145, v150);
    v27 = sub_22FF9E448(v24, v26, &v168);

    *(buf + 4) = v27;
    _os_log_impl(&dword_22FE99000, log, v21, "AttestationBundle passed validation for public key: %s", buf, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v157);
    MEMORY[0x23190EFF0](v157, -1, -1);
    MEMORY[0x23190EFF0](buf, -1, -1);
  }

  else
  {
  }

  v28 = v0[33];
  v29 = type metadata accessor for Proto_AttestationBundle(0);
  v30 = *(v28 + *(v29 + 20));
  v31 = (v30 + OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__appData);
  swift_beginAccess();
  v32 = *v31;
  v33 = v31[1];
  v34 = v33 >> 62;
  if ((v33 >> 62) > 1)
  {
    if (v34 != 2)
    {
      goto LABEL_34;
    }

    v36 = *(v32 + 16);
    v35 = *(v32 + 24);
  }

  else
  {
    if (!v34)
    {
      if ((v33 & 0xFF000000000000) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_28;
    }

    v36 = v32;
    v35 = v32 >> 32;
  }

  if (v36 == v35)
  {
    goto LABEL_34;
  }

LABEL_28:
  v18[3] = 0;
  v18[4] = 0;
  v37 = swift_task_alloc();
  *(v37 + 16) = v18 + 3;
  *(v37 + 24) = v18 + 4;
  sub_22FED55F8(v166, *(&v166 + 1), sub_22FEBFA3C);

  if (*(&v168 + 1) >> 60 == 15)
  {

    v38 = sub_22FFB12D8();
    v39 = sub_22FFB1838();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_22FE99000, v38, v39, "Bundle AppData is non-empty, but attestation contains no nonce", v40, 2u);
      MEMORY[0x23190EFF0](v40, -1, -1);
    }

    type metadata accessor for CloudAttestationError(0);
    sub_22FF7BE88(&qword_27DAF1A80, type metadata accessor for CloudAttestationError, &protocol conformance descriptor for CloudAttestationError);
    v41 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_22FEBF27C(v159, v161);
    sub_22FEA55AC(v165, *(&v165 + 1));
    v16 = v166;
    v9 = v41;
    v17 = *(&v166 + 1);
    goto LABEL_16;
  }

  v156 = v168;
  v42 = v0[54];
  v167 = v0[53];
  v43 = v0[51];
  bufa = v0[52];
  v44 = v0[49];
  v45 = v0[50];
  v138 = v0;
  v46 = *v31;
  v47 = v31[1];
  sub_22FEA5608(*v31, v47);
  sub_22FF7BE88(&qword_28148F198, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
  sub_22FFB1388();
  sub_22FEA5608(v46, v47);
  sub_22FF9EA78(v46, v47, v43);
  sub_22FEA55AC(v46, v47);
  sub_22FFB1368();
  v48 = v47;
  v49 = v156;
  sub_22FEA55AC(v46, v48);
  v50 = *(v45 + 8);
  v51 = v44;
  v52 = *(&v156 + 1);
  v50(v43, v51);
  v53 = sub_22FECAD68(v156, *(&v156 + 1));
  v54 = *(v167 + 8);
  v54(v42, bufa);
  if ((v53 & 1) == 0)
  {
    v117 = v138[48];
    v118 = v138[33];

    sub_22FF9064C(v118, v117, type metadata accessor for AttestationBundle);
    sub_22FEA5608(v156, *(&v156 + 1));
    v119 = sub_22FFB12D8();
    v120 = sub_22FFB1838();
    sub_22FEA56EC(v156, *(&v156 + 1));
    if (os_log_type_enabled(v119, v120))
    {
      bufb = v120;
      v121 = v138[54];
      v122 = v138[51];
      v147 = v138[52];
      v123 = v138[48];
      v124 = v138[49];
      v144 = v123;
      v146 = swift_slowAlloc();
      v164 = swift_slowAlloc();
      *&v168 = v164;
      *v146 = 136446466;
      v125 = (*(v123 + *(v29 + 20)) + OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__appData);
      swift_beginAccess();
      v151 = v119;
      v127 = *v125;
      v126 = v125[1];
      sub_22FEA5608(v127, v126);
      sub_22FFB1388();
      sub_22FEA5608(v127, v126);
      sub_22FF9EA78(v127, v126, v122);
      sub_22FEA55AC(v127, v126);
      sub_22FFB1368();
      v128 = v127;
      v49 = v156;
      sub_22FEA55AC(v128, v126);
      v129 = v124;
      v52 = *(&v156 + 1);
      v50(v122, v129);
      v130 = sub_22FF95DBC();
      v132 = v131;
      v54(v121, v147);
      sub_22FF906D4(v144, type metadata accessor for AttestationBundle);
      v133 = sub_22FF9E448(v130, v132, &v168);

      *(v146 + 4) = v133;
      *(v146 + 12) = 2082;
      v134 = sub_22FEB0B54(v156, *(&v156 + 1));
      v136 = sub_22FF9E448(v134, v135, &v168);

      *(v146 + 14) = v136;
      _os_log_impl(&dword_22FE99000, v151, bufb, "Bundle AppData failed integrity check: (digest:%{public}s != nonce:%{public}s", v146, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23190EFF0](v164, -1, -1);
      MEMORY[0x23190EFF0](v146, -1, -1);

      v0 = v138;
    }

    else
    {
      v0 = v138;
      v137 = v138[48];

      sub_22FF906D4(v137, type metadata accessor for AttestationBundle);
    }

    type metadata accessor for CloudAttestationError(0);
    sub_22FF7BE88(&qword_27DAF1A80, type metadata accessor for CloudAttestationError, &protocol conformance descriptor for CloudAttestationError);
    v9 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_22FEBF27C(v159, v161);
    sub_22FEA56EC(v49, v52);
    sub_22FEA55AC(v165, *(&v165 + 1));
    v17 = *(&v166 + 1);
    v16 = v160;
    goto LABEL_16;
  }

  sub_22FEA56EC(v156, *(&v156 + 1));
  v0 = v138;
LABEL_34:
  v55 = v0[40];
  v56 = v0[41];
  v57 = v0[39];
  v58 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__keyExpiration;
  swift_beginAccess();
  sub_22FEBF3A4(v30 + v58, v57, &qword_27DAF1520, &qword_22FFB3A30);
  v59 = *(v56 + 48);
  if (v59(v57, 1, v55) == 1)
  {
    v60 = v0[39];
    v61 = v0[40];
    sub_22FFB0ED8();
    if (v59(v60, 1, v61) != 1)
    {
      sub_22FEAEA34(v0[39], &qword_27DAF1520, &qword_22FFB3A30);
    }
  }

  else
  {
    (*(v0[41] + 32))(v0[42], v0[39], v0[40]);
  }

  v62 = v0[45];
  v63 = v0;
  v64 = v0[44];
  v65 = v63[42];
  v66 = v63[43];
  v67 = v63[40];
  v68 = v63[41];
  sub_22FFB0EB8();
  (*(v68 + 8))(v65, v67);
  sub_22FFB08E8();
  LOBYTE(v65) = sub_22FFB0888();
  v69 = *(v64 + 8);
  v69(v62, v66);
  if ((v65 & 1) == 0)
  {
    v101 = v63[46];
    v102 = v63[43];
    v103 = v63[44];

    type metadata accessor for CloudAttestationError(0);
    sub_22FF7BE88(&qword_27DAF1A80, type metadata accessor for CloudAttestationError, &protocol conformance descriptor for CloudAttestationError);
    v9 = swift_allocError();
    (*(v103 + 16))(v104, v101, v102);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_22FEA55AC(v165, *(&v165 + 1));
    sub_22FEA55AC(v160, *(&v166 + 1));
    sub_22FEBF27C(v19, v161);
    v69(v101, v102);
    v0 = v63;
    goto LABEL_43;
  }

  v158 = v69;
  v70 = v63[46];
  v71 = v63[47];
  v72 = v63[43];
  v73 = v63[44];
  v74 = v63[33];
  v76 = v63[30];
  v75 = v63[31];
  *v76 = v19;
  v76[1] = v161;
  (*(v73 + 16))(v75, v70, v72);
  sub_22FF9064C(v74, v71, type metadata accessor for AttestationBundle);
  v63[28] = 0;
  v63[29] = 0;
  v77 = swift_task_alloc();
  *(v77 + 16) = v163 + 5;
  *(v77 + 24) = v163 + 6;
  sub_22FEBF290(v19, v161);
  sub_22FED55F8(v160, *(&v166 + 1), sub_22FEBFA54);

  v78 = 0;
  v79 = 0;
  if (v169 != 2)
  {
    v80 = v168;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAF3750, &qword_22FFB35F0);
    v81 = swift_allocObject();
    *(v81 + 16) = xmmword_22FFB2D20;
    v82 = MEMORY[0x277D84D30];
    *(v81 + 56) = MEMORY[0x277D84CC0];
    *(v81 + 64) = v82;
    v83 = MEMORY[0x277D84D38];
    *(v81 + 32) = v80;
    v84 = MEMORY[0x277D84D90];
    *(v81 + 96) = v83;
    *(v81 + 104) = v84;
    *(v81 + 72) = *(&v80 + 1);
    v78 = sub_22FFB14D8();
  }

  v139 = v78;
  v140 = v79;
  v85 = v63[61];
  v86 = v63[59];
  v87 = v63[60];
  v143 = v63[47];
  v88 = v63[46];
  v89 = v63[43];
  v90 = v63[32];
  v170 = v63[23];
  v91 = sub_22FEE2580();
  v141 = v92;
  v142 = v91;
  *&v168 = v63[23];
  v93 = AttestationPolicyContext.releaseDigest.getter();
  v95 = v94;
  sub_22FEA55AC(v165, *(&v165 + 1));
  sub_22FEA55AC(v160, *(&v166 + 1));
  sub_22FEBF27C(v159, v161);
  v158(v88, v89);
  (*(v87 + 8))(v85, v86);

  v96 = type metadata accessor for Validated.AttestationBundle(0);
  *(v90 + v96[8]) = 0;
  sub_22FF90754(v143, v90, type metadata accessor for AttestationBundle);
  v97 = (v90 + v96[5]);
  *v97 = v139;
  v97[1] = v140;
  v98 = (v90 + v96[6]);
  *v98 = v142;
  v98[1] = v141;
  v99 = (v90 + v96[7]);
  *v99 = v93;
  v99[1] = v95;

  v100 = v63[1];
LABEL_46:

  return v100();
}

uint64_t sub_22FF7A584()
{

  v1 = v0[63];
  v2 = v1;
  v3 = sub_22FFB12D8();
  v4 = sub_22FFB1838();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_22FE99000, v3, v4, "AttestationBundle validation failed: %@", v5, 0xCu);
    sub_22FEAEA34(v6, &qword_27DAF1680, &unk_22FFB4B10);
    MEMORY[0x23190EFF0](v6, -1, -1);
    MEMORY[0x23190EFF0](v5, -1, -1);
  }

  v9 = v0[60];
  v10 = v0[61];
  v11 = v0[59];

  swift_willThrow();
  (*(v9 + 8))(v10, v11);

  v12 = v0[1];

  return v12();
}

uint64_t sub_22FF7A7C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_22FEAA538;

  return sub_22FF7772C(a1, a2, a3, a4);
}

uint64_t sub_22FF7A894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_22FEAA538;

  return sub_22FF7C5BC(a1, a2, a3, a4, a5, a6);
}

uint64_t Attestor.attest(key:using:expiration:nonce:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_22FEAA538;

  return Attestor.defaultAttest(key:using:expiration:nonce:)(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_22FF7AA70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_22FEAA538;

  return sub_22FF75448(a1, a2, a3, a4, a5);
}

uint64_t sub_22FF7AB50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x2822009F8](sub_22FF7AB78, 0, 0);
}

uint64_t sub_22FF7AB78()
{
  v1 = GenericAttestor.attestingKey.getter();
  v0[8] = v1;
  v2 = v1;
  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = sub_22FF91BBC;
  v4 = v0[6];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[2];
  v8 = v0[3];

  return sub_22FF7C5BC(v7, v8, v2, v5, v6, v4);
}

double sub_22FF7AC84()
{
  v0 = sub_22FFB1D28();
  sub_22FFB1D28();
  return v1 * 1.0e-18 + v0;
}

uint64_t sub_22FF7ACE0(void (*a1)(uint64_t, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v18 = a1;
  v19 = a2;
  v6 = type metadata accessor for PrivateCloudCompute_ProxyNodeMetadata.ProxiedRelease(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    v21 = MEMORY[0x277D84F90];
    sub_22FECDAF4(0, v10, 0);
    v11 = v21;
    v12 = *(type metadata accessor for TransparencyLogProofs(0) - 8);
    v13 = a3 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v17 = *(v12 + 72);
    while (1)
    {
      v18(v13, &v20);
      if (v4)
      {
        break;
      }

      v4 = 0;
      v21 = v11;
      v15 = *(v11 + 16);
      v14 = *(v11 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_22FECDAF4((v14 > 1), v15 + 1, 1);
        v11 = v21;
      }

      *(v11 + 16) = v15 + 1;
      sub_22FF90754(v9, v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v15, type metadata accessor for PrivateCloudCompute_ProxyNodeMetadata.ProxiedRelease);
      v13 += v17;
      if (!--v10)
      {
        return v11;
      }
    }
  }

  return v11;
}

uint64_t sub_22FF7AEE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v22[1] = a2;
  v22[0] = a1;
  v6 = type metadata accessor for Proto_SealedHash.Entry(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  v11 = MEMORY[0x277D84F90];
  if (!v10)
  {
    return v11;
  }

  v32 = MEMORY[0x277D84F90];
  sub_22FECDB58(0, v10, 0);
  v11 = v32;
  v12 = (a3 + 32);
  for (i = v10 - 1; ; --i)
  {
    v14 = v12[1];
    v31[0] = *v12;
    v31[1] = v14;
    v15 = v12[3];
    v17 = *v12;
    v16 = v12[1];
    v31[2] = v12[2];
    v31[3] = v15;
    v27 = v17;
    v28 = v16;
    v18 = v12[3];
    v29 = v12[2];
    v30 = v18;
    sub_22FEBF904(v31, &v23);
    (v22[0])(&v27);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v23 = v27;
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_22FEBF960(&v23);
    v32 = v11;
    v20 = *(v11 + 16);
    v19 = *(v11 + 24);
    if (v20 >= v19 >> 1)
    {
      sub_22FECDB58((v19 > 1), v20 + 1, 1);
      v11 = v32;
    }

    *(v11 + 16) = v20 + 1;
    sub_22FF90754(v9, v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v20, type metadata accessor for Proto_SealedHash.Entry);
    if (!i)
    {
      return v11;
    }

    v12 += 4;
  }

  v23 = v27;
  v24 = v28;
  v25 = v29;
  v26 = v30;
  sub_22FEBF960(&v23);

  __break(1u);
  return result;
}

uint64_t sub_22FF7B110(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v22[1] = a2;
  v22[0] = a1;
  v6 = type metadata accessor for Proto_SealedHash.Entry(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    v33 = MEMORY[0x277D84F90];
    sub_22FECDB58(0, v10, 0);
    v11 = v33;
    v12 = (a3 + 32);
    for (i = v10 - 1; ; --i)
    {
      v14 = v12[1];
      v32[0] = *v12;
      v32[1] = v14;
      v15 = v12[3];
      v17 = *v12;
      v16 = v12[1];
      v32[2] = v12[2];
      v32[3] = v15;
      v28 = v17;
      v29 = v16;
      v18 = v12[3];
      v30 = v12[2];
      v31 = v18;
      sub_22FEBF904(v32, &v23);
      (v22[0])(&v28, &v27);
      if (v4)
      {
        break;
      }

      v4 = 0;
      v23 = v28;
      v24 = v29;
      v25 = v30;
      v26 = v31;
      sub_22FEBF960(&v23);
      v33 = v11;
      v20 = *(v11 + 16);
      v19 = *(v11 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_22FECDB58((v19 > 1), v20 + 1, 1);
        v11 = v33;
      }

      *(v11 + 16) = v20 + 1;
      sub_22FF90754(v9, v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v20, type metadata accessor for Proto_SealedHash.Entry);
      if (!i)
      {
        return v11;
      }

      v12 += 4;
    }

    v23 = v28;
    v24 = v29;
    v25 = v30;
    v26 = v31;
    sub_22FEBF960(&v23);
  }

  return v11;
}

uint64_t sub_22FF7B36C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_22FEAA538;

  return Validator.validate(bundle:nonce:)(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t Validator.validate(bundle:nonce:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_22FEAA538;

  return sub_22FF78B28(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_22FF7B54C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_22FEAA538;

  return Validator.validate(bundle:)(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_22FF7B668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v18 = swift_task_alloc();
  *(v10 + 16) = v18;
  *v18 = v10;
  v18[1] = sub_22FEAA0D4;

  return Validator.validate<A>(bundle:nonce:policy:)(a1, a2, a3, a4, a5, a6, v17, a10);
}

uint64_t sub_22FF7B754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(v4 + 16);
  *(v5 + 16) = *v4;
  v11 = *(v4 + 17);
  *(v5 + 32) = v10;
  *(v5 + 33) = v11;
  v12 = swift_task_alloc();
  *(v5 + 40) = v12;
  *v12 = v5;
  v12[1] = sub_22FF7B840;

  return MuxValidator.validate(bundle:nonce:)(a1, a2, a3, a4, 0, 0xF000000000000000);
}

uint64_t sub_22FF7B840()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t Validated.AttestationBundle.appData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22FFB0FE8();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = type metadata accessor for AttestationBundle(0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v23[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v23[-v8];
  sub_22FF9064C(v1, &v23[-v8], type metadata accessor for AttestationBundle);
  v10 = type metadata accessor for Proto_AttestationBundle(0);
  v11 = (*&v9[*(v10 + 20)] + OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__appData);
  swift_beginAccess();
  v12 = *v11;
  v13 = v11[1];
  sub_22FEA5608(v12, v13);
  sub_22FF906D4(v9, type metadata accessor for Proto_AttestationBundle);
  v14 = v13 >> 62;
  if ((v13 >> 62) > 1)
  {
    if (v14 == 2)
    {
      v15 = *(v12 + 16);
      v16 = *(v12 + 24);
      sub_22FEA55AC(v12, v13);
      if (v15 == v16)
      {
        goto LABEL_11;
      }

      goto LABEL_9;
    }

    sub_22FEA55AC(v12, v13);
  }

  else
  {
    if (!v14)
    {
      sub_22FEA55AC(v12, v13);
      if ((v13 & 0xFF000000000000) == 0)
      {
        goto LABEL_11;
      }

LABEL_9:
      v17 = type metadata accessor for Proto_AppData(0);
      sub_22FF9064C(v1, v7, type metadata accessor for AttestationBundle);
      v18 = (*&v7[*(v10 + 20)] + OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__appData);
      swift_beginAccess();
      v20 = *v18;
      v19 = v18[1];
      sub_22FEA5608(v20, v19);
      sub_22FF906D4(v7, type metadata accessor for Proto_AttestationBundle);
      v25 = v20;
      v26 = v19;
      v24 = 0;
      memset(&v23[16], 0, 32);
      sub_22FFB0FD8();
      sub_22FF7BE88(qword_2814906B0, type metadata accessor for Proto_AppData, &protocol conformance descriptor for Proto_AppData);
      sub_22FFB1188();
      return (*(*(v17 - 8) + 56))(a1, 0, 1, v17);
    }

    sub_22FEA55AC(v12, v13);
    if (v12 != v12 >> 32)
    {
      goto LABEL_9;
    }
  }

LABEL_11:
  v21 = type metadata accessor for Proto_AppData(0);
  return (*(*(v21 - 8) + 56))(a1, 1, 1, v21);
}

uint64_t sub_22FF7BCC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_22FEAA538;

  return sub_22FEB9308(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_22FF7BDAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_22FEAA538;

  return sub_22FEB9308(a1, a2, a3, a4, 0, 0xF000000000000000);
}

uint64_t sub_22FF7BE88(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22FF7BED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_22FEAA538;

  return sub_22FF759DC(a1, a2, a3, a4, a5);
}

uint64_t sub_22FF7BFB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x2822009F8](sub_22FF7BFD8, 0, 0);
}

uint64_t sub_22FF7BFD8()
{
  v1 = NodeAttestor.attestingKey.getter();
  v0[8] = v1;
  v2 = v1;
  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = sub_22FF91BBC;
  v4 = v0[6];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[2];
  v8 = v0[3];

  return PCC.ProxyNodeAttestor.attest(key:using:expiration:nonce:)(v7, v8, v2, v5, v6, v4);
}

uint64_t sub_22FF7C0D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_22FEAA538;

  return sub_22FF77E88(a1, a2, a3, a4);
}

uint64_t sub_22FF7C1AC()
{
  v0 = sub_22FFB12F8();
  __swift_allocate_value_buffer(v0, qword_27DAF38A0);
  __swift_project_value_buffer(v0, qword_27DAF38A0);
  return sub_22FFB12E8();
}

uint64_t sub_22FF7C2A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_22FEAA538;

  return Attestor.attest(key:using:expiration:nonce:)(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_22FF7C398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_22FEAA538;

  return Attestor.attest(key:using:expiration:appData:)(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_22FF7C478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_22FEAA538;

  return Attestor.attest(key:expiration:nonce:)(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_22FF7C5BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[11] = a6;
  v7[12] = v6;
  v7[9] = a4;
  v7[10] = a5;
  v7[7] = a2;
  v7[8] = a3;
  v7[6] = a1;
  v8 = sub_22FFB13C8();
  v7[13] = v8;
  v7[14] = *(v8 - 8);
  v7[15] = swift_task_alloc();
  v9 = sub_22FFB1398();
  v7[16] = v9;
  v7[17] = *(v9 - 8);
  v7[18] = swift_task_alloc();
  v7[19] = type metadata accessor for Proto_AttestationBundle(0);
  v7[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FF7C714, 0, 0);
}

uint64_t sub_22FF7C714()
{
  v17 = v0;
  v1 = *(v0 + 88);
  if (v1 >> 60 != 15)
  {
    v2 = *(v0 + 80);
    sub_22FEA5608(v2, *(v0 + 88));
    v3 = sub_22FFB07B8();
    SecKeySetParameter();

    sub_22FEA56EC(v2, v1);
  }

  v4 = *(v0 + 96);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  v7 = v4[3];
  v8 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v7);
  (*(v8 + 8))(v16, v5, v6, v7, v8);
  v9 = *(v0 + 96);
  v10 = v16[1];
  *(v0 + 168) = v16[0];
  *(v0 + 184) = v10;
  v11 = v9[8];
  v12 = v9[9];
  __swift_project_boxed_opaque_existential_1(v9 + 5, v11);
  v15 = (*(v12 + 16) + **(v12 + 16));
  v13 = swift_task_alloc();
  *(v0 + 200) = v13;
  *v13 = v0;
  v13[1] = sub_22FF7CA94;

  return v15(v11, v12);
}

uint64_t sub_22FF7CA94(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 208) = v1;

  if (v1)
  {
    v5 = sub_22FF7D1F8;
  }

  else
  {
    *(v4 + 216) = a1;
    v5 = sub_22FF7CBBC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

__SecKey *sub_22FF7CBBC()
{
  v65 = v0;
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);
  v3 = *(v0 + 96);
  v4 = *(v0 + 72);
  v5 = swift_task_alloc();
  v6 = *(v0 + 184);
  v7 = *(v0 + 168);
  *(v5 + 16) = v7;
  *(v5 + 32) = v4;
  *(v5 + 40) = v3;
  *(v5 + 48) = v2;
  *(v5 + 72) = v6;
  *(v5 + 56) = v7;
  sub_22FF7BE88(&qword_2814910C0, type metadata accessor for Proto_AttestationBundle, &protocol conformance descriptor for Proto_AttestationBundle);
  sub_22FFB11B8();
  if (!v1)
  {
    v22 = *(v0 + 160);
    v24 = *(v0 + 48);
    v23 = *(v0 + 56);

    sub_22FF9064C(v22, v24, type metadata accessor for Proto_AttestationBundle);
    result = SecKeyCopyPublicKey(v23);
    if (result)
    {
      v26 = result;
      result = SecKeyCopyExternalRepresentation(result, 0);
      if (result)
      {
        v27 = result;
        if (qword_27DAF1498 != -1)
        {
          swift_once();
        }

        v28 = sub_22FFB12F8();
        __swift_project_value_buffer(v28, qword_27DAF38A0);
        v29 = v27;
        v30 = sub_22FFB12D8();
        v31 = sub_22FFB1848();

        v63 = v31;
        v32 = os_log_type_enabled(v30, v31);
        v34 = *(v0 + 184);
        v33 = *(v0 + 192);
        v36 = *(v0 + 168);
        v35 = *(v0 + 176);
        v37 = *(v0 + 160);
        if (v32)
        {
          v54 = *(v0 + 136);
          v51 = *(v0 + 144);
          v52 = *(v0 + 128);
          v61 = *(v0 + 160);
          v62 = *(v0 + 168);
          v60 = v29;
          v38 = *(v0 + 112);
          v39 = *(v0 + 120);
          v40 = *(v0 + 104);
          log = v30;
          buf = swift_slowAlloc();
          v56 = swift_slowAlloc();
          v64 = v56;
          *buf = 136446210;
          v58 = v35;
          v59 = v34;
          v41 = sub_22FFB07E8();
          v43 = v42;
          sub_22FF7BE88(&qword_28148F198, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
          v44 = v26;
          v57 = v33;
          sub_22FFB1388();
          sub_22FEA5608(v41, v43);
          sub_22FF9EA78(v41, v43, v39);
          sub_22FEA55AC(v41, v43);
          sub_22FFB1368();
          sub_22FEA55AC(v41, v43);
          (*(v38 + 8))(v39, v40);
          sub_22FF7BE88(&qword_28148F1B0, MEMORY[0x277CC5290], MEMORY[0x277CC52B0]);
          v45 = sub_22FFB1BA8();
          v47 = v46;
          (*(v54 + 8))(v51, v52);
          v48 = sub_22FF9E448(v45, v47, &v64);

          *(buf + 4) = v48;
          _os_log_impl(&dword_22FE99000, log, v63, "Successfully created attestation for key: %{public}s", buf, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v56);
          MEMORY[0x23190EFF0](v56, -1, -1);
          MEMORY[0x23190EFF0](buf, -1, -1);

          sub_22FF906D4(v61, type metadata accessor for Proto_AttestationBundle);
          sub_22FEA55AC(v62, v58);
          v49 = v59;
          v50 = v57;
        }

        else
        {

          sub_22FF906D4(v37, type metadata accessor for Proto_AttestationBundle);
          sub_22FEA55AC(v36, v35);
          v49 = v34;
          v50 = v33;
        }

        sub_22FEA55AC(v49, v50);

        v21 = *(v0 + 8);
        goto LABEL_15;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return result;
  }

  v8 = v1;
  v10 = *(v0 + 184);
  v9 = *(v0 + 192);
  v12 = *(v0 + 168);
  v11 = *(v0 + 176);

  sub_22FEA55AC(v12, v11);
  sub_22FEA55AC(v10, v9);

  if (qword_27DAF1498 != -1)
  {
    swift_once();
  }

  v13 = sub_22FFB12F8();
  __swift_project_value_buffer(v13, qword_27DAF38A0);
  v14 = v8;
  v15 = sub_22FFB12D8();
  v16 = sub_22FFB1838();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 138412290;
    v19 = v8;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 4) = v20;
    *v18 = v20;
    _os_log_impl(&dword_22FE99000, v15, v16, "attestation creation failed: %@", v17, 0xCu);
    sub_22FEAEA34(v18, &qword_27DAF1680, &unk_22FFB4B10);
    MEMORY[0x23190EFF0](v18, -1, -1);
    MEMORY[0x23190EFF0](v17, -1, -1);
  }

  swift_willThrow();

  v21 = *(v0 + 8);
LABEL_15:

  return v21();
}