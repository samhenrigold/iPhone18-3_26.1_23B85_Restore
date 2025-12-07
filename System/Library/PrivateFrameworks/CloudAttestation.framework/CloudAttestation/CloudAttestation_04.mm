uint64_t sub_22FEEB6E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Asset(0) - 8;
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v16 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      do
      {
        sub_22FEEC130(v13, v10, type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Asset);
        sub_22FEEC130(v14, v7, type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Asset);
        v16 = static PrivateCloudCompute_ReleaseMetadata.Asset.== infix(_:_:)(v10, v7);
        sub_22FEEC198(v7, type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Asset);
        sub_22FEEC198(v10, type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Asset);
        if ((v16 & 1) == 0)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_22FEEB898(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrivateCloudCompute_ReleaseMetadata.ToolRequirement(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = (&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v10 = (&v20 - v9);
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
LABEL_20:
    v18 = 0;
    return v18 & 1;
  }

  if (v11 && a1 != a2)
  {
    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    while (1)
    {
      sub_22FEEC130(v13, v10, type metadata accessor for PrivateCloudCompute_ReleaseMetadata.ToolRequirement);
      sub_22FEEC130(v14, v7, type metadata accessor for PrivateCloudCompute_ReleaseMetadata.ToolRequirement);
      v16 = *v10 == *v7 && v10[1] == v7[1];
      if (!v16 && (sub_22FFB1BC8() & 1) == 0)
      {
        break;
      }

      v17 = v10[2] == v7[2] && v10[3] == v7[3];
      if (!v17 && (sub_22FFB1BC8() & 1) == 0)
      {
        break;
      }

      sub_22FFB0F88();
      sub_22FEEC260(&qword_27DAF2128, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v18 = sub_22FFB1478();
      sub_22FEEC198(v7, type metadata accessor for PrivateCloudCompute_ReleaseMetadata.ToolRequirement);
      sub_22FEEC198(v10, type metadata accessor for PrivateCloudCompute_ReleaseMetadata.ToolRequirement);
      if (v18)
      {
        v14 += v15;
        v13 += v15;
        if (--v11)
        {
          continue;
        }
      }

      return v18 & 1;
    }

    sub_22FEEC198(v7, type metadata accessor for PrivateCloudCompute_ReleaseMetadata.ToolRequirement);
    sub_22FEEC198(v10, type metadata accessor for PrivateCloudCompute_ReleaseMetadata.ToolRequirement);
    goto LABEL_20;
  }

  v18 = 1;
  return v18 & 1;
}

uint64_t type metadata accessor for SoftwareReleasePolicy(uint64_t a1)
{
  result = qword_27DAF2100;
  if (!qword_27DAF2100)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22FEEBB68@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_22FFB0588();
    if (v10)
    {
      v11 = sub_22FFB05B8();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_22FFB05A8();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_22FFB0588();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_22FFB05B8();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_22FFB05A8();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_22FEEBD98(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_22FEEC078(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_22FEA55AC(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_22FEEBB68(v13, a3, a4, &v12);
  v10 = v4;
  sub_22FEA55AC(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

unint64_t sub_22FEEBF28()
{
  result = qword_27DAF20F0;
  if (!qword_27DAF20F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF20F0);
  }

  return result;
}

unint64_t sub_22FEEBF80()
{
  result = qword_27DAF20F8;
  if (!qword_27DAF20F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF20F8);
  }

  return result;
}

uint64_t sub_22FEEBFFC(uint64_t a1)
{
  result = type metadata accessor for Release(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22FEEC078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_22FFB0588();
  v11 = result;
  if (result)
  {
    result = sub_22FFB05B8();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_22FFB05A8();
  sub_22FEEBB68(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_22FEEC130(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22FEEC198(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22FEEC1F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22FEEC260(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void static TransparencyPolicy.releaseDigestKey.getter(uint64_t a1@<X8>)
{
  *a1 = &type metadata for TransparencyPolicy;
  *(a1 + 8) = &protocol witness table for TransparencyPolicy;
  strcpy((a1 + 16), "releaseDigest");
  *(a1 + 30) = -4864;
}

uint64_t AttestationPolicyContext.proofExpiration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  if (*(v3 + 16) && (v4 = sub_22FFA62AC(&type metadata for TransparencyPolicy, &protocol witness table for TransparencyPolicy, 0x707845666F6F7270, 0xEF6E6F6974617269), (v5 & 1) != 0))
  {
    sub_22FEBF2A4(*(v3 + 56) + 32 * v4, &v10);

    if (*(&v11 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1A88, &qword_22FFB3A60);
      v6 = sub_22FFB0908();
      v7 = swift_dynamicCast();
      return (*(*(v6 - 8) + 56))(a1, v7 ^ 1u, 1, v6);
    }
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  sub_22FEAEA34(&v10, &qword_27DAF1A78, &unk_22FFB3A50);
  v9 = sub_22FFB0908();
  return (*(*(v9 - 8) + 56))(a1, 1, 1, v9);
}

void static TransparencyPolicy.proofExpirationKey.getter(void *a1@<X8>)
{
  *a1 = &type metadata for TransparencyPolicy;
  a1[1] = &protocol witness table for TransparencyPolicy;
  a1[2] = 0x707845666F6F7270;
  a1[3] = 0xEF6E6F6974617269;
}

uint64_t sub_22FEEC48C()
{
  v0 = sub_22FFB12F8();
  __swift_allocate_value_buffer(v0, qword_28148FB20);
  __swift_project_value_buffer(v0, qword_28148FB20);
  return sub_22FFB12E8();
}

uint64_t static TransparencyPolicy.logger.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_28148FB18 != -1)
  {
    swift_once();
  }

  v2 = sub_22FFB12F8();
  v3 = __swift_project_value_buffer(v2, qword_28148FB20);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t TransparencyPolicy.init(verifier:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_22FE9B84C(a1, a2);
  *(a2 + 40) = 1;
  return result;
}

uint64_t TransparencyPolicy.init(verifier:validateProofs:)@<X0>(__int128 *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  result = sub_22FE9B84C(a1, a3);
  *(a3 + 40) = a2;
  return result;
}

uint64_t TransparencyPolicy.evaluate(bundle:context:)(uint64_t a1, uint64_t a2)
{
  v3[27] = a2;
  v3[28] = v2;
  v3[26] = a1;
  v3[29] = type metadata accessor for TransparencyLogError(0);
  v3[30] = swift_task_alloc();
  v4 = sub_22FFB0908();
  v3[31] = v4;
  v3[32] = *(v4 - 8);
  v3[33] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1D80, &unk_22FFB4400);
  v3[34] = swift_task_alloc();
  v5 = type metadata accessor for TransparencyLogProofs(0);
  v3[35] = v5;
  v3[36] = *(v5 - 8);
  v3[37] = swift_task_alloc();
  v6 = sub_22FFB13C8();
  v3[38] = v6;
  v3[39] = *(v6 - 8);
  v3[40] = swift_task_alloc();
  v7 = sub_22FFB0E58();
  v3[41] = v7;
  v3[42] = *(v7 - 8);
  v3[43] = swift_task_alloc();
  v8 = sub_22FFB1398();
  v3[44] = v8;
  v3[45] = *(v8 - 8);
  v3[46] = swift_task_alloc();
  type metadata accessor for Proto_AttestationBundle(0);
  v3[47] = swift_task_alloc();
  type metadata accessor for AttestationBundle(0);
  v3[48] = swift_task_alloc();
  v3[49] = swift_task_alloc();
  v3[50] = type metadata accessor for Release(0);
  v3[51] = swift_task_alloc();
  v3[52] = swift_task_alloc();
  v3[53] = swift_task_alloc();
  v3[54] = swift_task_alloc();
  v3[55] = swift_task_alloc();
  v3[56] = swift_task_alloc();
  v3[57] = swift_task_alloc();
  v3[58] = swift_task_alloc();
  v3[59] = swift_task_alloc();
  v3[60] = swift_task_alloc();
  v3[61] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FEEC9D0, 0, 0);
}

uint64_t sub_22FEEC9D0()
{
  v76 = v0;
  v1 = v0[59];
  v2 = v0[49];
  v3 = v0[47];
  sub_22FEEF074(v0[26], v2, type metadata accessor for AttestationBundle);
  sub_22FEEF074(v2, v3, type metadata accessor for Proto_AttestationBundle);
  sub_22FF68C5C(v3, 0, 0, v1);
  sub_22FEEF144(v2, type metadata accessor for AttestationBundle);
  v5 = v0[60];
  v6 = v0[61];
  sub_22FEEF0DC(v0[59], v5, type metadata accessor for Release);
  sub_22FEEF0DC(v5, v6, type metadata accessor for Release);
  sub_22FFB0E48();
  sub_22FEEF02C(&qword_28148F578, type metadata accessor for Release, &protocol conformance descriptor for Release);
  sub_22FFB0E38();
  v12 = v0[43];
  v69 = v0[44];
  v71 = v0[45];
  v14 = v0[41];
  v13 = v0[42];
  v15 = v0[40];
  v66 = v0[46];
  v67 = v0[39];
  v16 = v0[38];
  sub_22FFB0E18();
  v17 = sub_22FF9F990();
  v19 = v18;

  (*(v13 + 8))(v12, v14);
  sub_22FEEF02C(&qword_28148F198, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
  sub_22FFB1388();
  sub_22FEA5608(v17, v19);
  sub_22FEEEE4C(v17, v19);
  sub_22FEA55AC(v17, v19);
  sub_22FFB1368();
  sub_22FEA55AC(v17, v19);
  (*(v67 + 8))(v15, v16);
  v0[5] = v69;
  v0[6] = sub_22FEEF02C(&qword_28148F1C0, MEMORY[0x277CC5290], MEMORY[0x277CC5280]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  (*(v71 + 16))(boxed_opaque_existential_1, v66, v69);
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  sub_22FFB0618();
  (*(v71 + 8))(v66, v69);
  v22 = v0[23];
  v21 = v0[24];
  v0[62] = v22;
  v0[63] = v21;
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v0[10] = MEMORY[0x277CC9318];
  v0[7] = v22;
  v0[8] = v21;
  sub_22FED6328((v0 + 7), (v0 + 11));
  v70 = v21;
  v72 = v22;
  sub_22FEA5608(v22, v21);
  sub_22FECBD14((v0 + 11), &type metadata for TransparencyPolicy, &protocol witness table for TransparencyPolicy, 0x44657361656C6572, 0xED00007473656769);
  sub_22FEAEA34((v0 + 7), &qword_27DAF1A78, &unk_22FFB3A50);
  if (qword_28148FB18 != -1)
  {
    swift_once();
  }

  v23 = v0[61];
  v25 = v0[57];
  v24 = v0[58];
  v26 = sub_22FFB12F8();
  v0[64] = __swift_project_value_buffer(v26, qword_28148FB20);
  sub_22FEEF074(v23, v24, type metadata accessor for Release);
  sub_22FEEF074(v23, v25, type metadata accessor for Release);
  v27 = sub_22FFB12D8();
  v28 = sub_22FFB1848();
  v29 = os_log_type_enabled(v27, v28);
  v31 = v0[57];
  v30 = v0[58];
  if (v29)
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v73 = v33;
    *v32 = 136446466;
    sub_22FFB19B8();

    v74 = 0xD000000000000010;
    v75 = 0x800000022FFC9F50;
    v34 = Release.sha256.getter();
    MEMORY[0x23190DD10](v34);

    MEMORY[0x23190DD10](41, 0xE100000000000000);
    sub_22FEEF144(v30, type metadata accessor for Release);
    v35 = sub_22FF9E448(0xD000000000000010, 0x800000022FFC9F50, &v73);

    *(v32 + 4) = v35;
    *(v32 + 12) = 2082;
    v36 = Release.jsonString.getter();
    v38 = v37;
    sub_22FEEF144(v31, type metadata accessor for Release);
    v39 = sub_22FF9E448(v36, v38, &v73);

    *(v32 + 14) = v39;
    _os_log_impl(&dword_22FE99000, v27, v28, "Attested device is running %{public}s:\n%{public}s", v32, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23190EFF0](v33, -1, -1);
    MEMORY[0x23190EFF0](v32, -1, -1);
  }

  else
  {

    sub_22FEEF144(v31, type metadata accessor for Release);
    sub_22FEEF144(v30, type metadata accessor for Release);
  }

  sub_22FEEF074(v0[61], v0[56], type metadata accessor for Release);
  v40 = sub_22FFB12D8();
  v41 = sub_22FFB1848();
  v42 = os_log_type_enabled(v40, v41);
  v43 = v0[56];
  if (v42)
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v73 = v45;
    v74 = 0;
    *v44 = 136446210;
    v75 = 0xE000000000000000;
    sub_22FFB19B8();

    v74 = 0xD000000000000010;
    v75 = 0x800000022FFC9F50;
    v46 = Release.sha256.getter();
    MEMORY[0x23190DD10](v46);

    MEMORY[0x23190DD10](41, 0xE100000000000000);
    v47 = v74;
    v48 = v75;
    sub_22FEEF144(v43, type metadata accessor for Release);
    v49 = sub_22FF9E448(v47, v48, &v73);

    *(v44 + 4) = v49;
    _os_log_impl(&dword_22FE99000, v40, v41, "Verifying inclusion of %{public}s in transparency log", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v45);
    MEMORY[0x23190EFF0](v45, -1, -1);
    MEMORY[0x23190EFF0](v44, -1, -1);
  }

  else
  {

    sub_22FEEF144(v43, type metadata accessor for Release);
  }

  v50 = v0[48];
  v51 = v0[35];
  v52 = v0[36];
  v53 = v0[34];
  sub_22FEEF074(v0[26], v50, type metadata accessor for AttestationBundle);
  TransparencyLogProofs.init(bundle:)(v50, v53);
  if ((*(v52 + 48))(v53, 1, v51) == 1)
  {
    sub_22FEAEA34(v0[34], &qword_27DAF1D80, &unk_22FFB4400);
    v54 = sub_22FFB12D8();
    v55 = sub_22FFB1838();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&dword_22FE99000, v54, v55, "Attestation bundle is missing transparency proofs", v56, 2u);
      MEMORY[0x23190EFF0](v56, -1, -1);
    }

    v57 = v0[61];

    sub_22FED0D14();
    v58 = swift_allocError();
    *v59 = 0x8000000000000000;
    swift_willThrow();
    sub_22FEA55AC(v72, v70);
    sub_22FEEF144(v57, type metadata accessor for Release);
    if (*(v0[28] + 40) == 1)
    {
      swift_willThrow();

      v4 = v0[1];
    }

    else
    {
      if (qword_28148FB18 != -1)
      {
        swift_once();
      }

      v7 = sub_22FFB12F8();
      __swift_project_value_buffer(v7, qword_28148FB20);
      v8 = sub_22FFB12D8();
      v9 = sub_22FFB1848();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&dword_22FE99000, v8, v9, "Failing transparency checks open since validateProofs is off", v10, 2u);
        MEMORY[0x23190EFF0](v10, -1, -1);
      }

      v4 = v0[1];
    }

    return v4();
  }

  else
  {
    v60 = v0[28];
    sub_22FEEF0DC(v0[34], v0[37], type metadata accessor for TransparencyLogProofs);
    v61 = v60[3];
    v62 = v60[4];
    __swift_project_boxed_opaque_existential_1(v60, v61);
    v68 = (*(v62 + 8) + **(v62 + 8));
    v63 = swift_task_alloc();
    v0[65] = v63;
    *v63 = v0;
    v63[1] = sub_22FEED774;
    v64 = v0[37];
    v65 = v0[33];

    return v68(v65, v72, v70, v64, v61, v62);
  }
}

uint64_t sub_22FEED774()
{
  *(*v1 + 528) = v0;

  if (v0)
  {
    v2 = sub_22FEEDCB0;
  }

  else
  {
    v2 = sub_22FEED888;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22FEED888()
{
  v22 = v0;
  v1 = v0[61];
  v2 = v0[55];
  v4 = v0[32];
  v3 = v0[33];
  v5 = v0[31];
  v0[18] = v5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 15);
  (*(v4 + 16))(boxed_opaque_existential_1, v3, v5);
  sub_22FED6328((v0 + 15), (v0 + 19));
  sub_22FECBD14((v0 + 19), &type metadata for TransparencyPolicy, &protocol witness table for TransparencyPolicy, 0x707845666F6F7270, 0xEF6E6F6974617269);
  sub_22FEAEA34((v0 + 15), &qword_27DAF1A78, &unk_22FFB3A50);
  (*(v4 + 8))(v3, v5);
  sub_22FEEF074(v1, v2, type metadata accessor for Release);
  v7 = sub_22FFB12D8();
  v8 = sub_22FFB1848();
  v9 = os_log_type_enabled(v7, v8);
  v11 = v0[62];
  v10 = v0[63];
  v12 = v0[61];
  v13 = v0[55];
  v14 = v0[37];
  if (v9)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 136446210;
    v21[0] = v16;
    sub_22FFB19B8();

    v21[1] = 0xD000000000000010;
    v21[2] = 0x800000022FFC9F50;
    v17 = Release.sha256.getter();
    MEMORY[0x23190DD10](v17);

    MEMORY[0x23190DD10](41, 0xE100000000000000);
    sub_22FEEF144(v13, type metadata accessor for Release);
    v18 = sub_22FF9E448(0xD000000000000010, 0x800000022FFC9F50, v21);

    *(v15 + 4) = v18;
    _os_log_impl(&dword_22FE99000, v7, v8, "AttestationBundle passed TransparencyPolicy: reported software %{public}s is included in transparency log", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x23190EFF0](v16, -1, -1);
    MEMORY[0x23190EFF0](v15, -1, -1);

    sub_22FEA55AC(v11, v10);
    sub_22FEEF144(v14, type metadata accessor for TransparencyLogProofs);
  }

  else
  {

    sub_22FEA55AC(v11, v10);
    sub_22FEEF144(v13, type metadata accessor for Release);
    sub_22FEEF144(v14, type metadata accessor for TransparencyLogProofs);
  }

  sub_22FEEF144(v12, type metadata accessor for Release);

  v19 = v0[1];

  return v19();
}

uint64_t sub_22FEEDCB0()
{
  v80 = v0;
  v1 = *(v0 + 528);
  *(v0 + 200) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DAF1D90, &qword_22FFB4410);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 240);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 2:
        v25 = *(v0 + 488);
        v26 = *(v0 + 416);

        v27 = *v3;
        sub_22FEEF074(v25, v26, type metadata accessor for Release);
        v28 = v27;
        v29 = sub_22FFB12D8();
        v30 = sub_22FFB1838();

        v31 = os_log_type_enabled(v29, v30);
        v32 = *(v0 + 416);
        if (v31)
        {
          v33 = swift_slowAlloc();
          v34 = swift_slowAlloc();
          v35 = swift_slowAlloc();
          v77 = v35;
          *v33 = 136446466;
          sub_22FFB19B8();

          v78 = 0xD000000000000010;
          v79 = 0x800000022FFC9F50;
          v36 = Release.sha256.getter();
          MEMORY[0x23190DD10](v36);

          MEMORY[0x23190DD10](41, 0xE100000000000000);
          sub_22FEEF144(v32, type metadata accessor for Release);
          v37 = sub_22FF9E448(0xD000000000000010, 0x800000022FFC9F50, &v77);

          *(v33 + 4) = v37;
          *(v33 + 12) = 2114;
          v38 = v27;
          v39 = _swift_stdlib_bridgeErrorToNSError();
          *(v33 + 14) = v39;
          *v34 = v39;
          _os_log_impl(&dword_22FE99000, v29, v30, "SWTransparency threw unknown error for %{public}s: %{public}@", v33, 0x16u);
          sub_22FEAEA34(v34, &qword_27DAF1680, &unk_22FFB4B10);
          MEMORY[0x23190EFF0](v34, -1, -1);
          __swift_destroy_boxed_opaque_existential_1(v35);
          MEMORY[0x23190EFF0](v35, -1, -1);
          MEMORY[0x23190EFF0](v33, -1, -1);
        }

        else
        {

          sub_22FEEF144(v32, type metadata accessor for Release);
        }

        v63 = *(v0 + 496);
        v64 = *(v0 + 504);
        v65 = *(v0 + 488);
        v66 = *(v0 + 296);
        sub_22FED0D14();
        v67 = swift_allocError();
        v69 = v27 | 0x4000000000000000;
        goto LABEL_22;
      case 13:
        v15 = *(v0 + 488);
        v16 = *(v0 + 424);

        sub_22FEEF074(v15, v16, type metadata accessor for Release);
        v17 = sub_22FFB12D8();
        v18 = sub_22FFB1838();
        v19 = os_log_type_enabled(v17, v18);
        v20 = *(v0 + 424);
        if (v19)
        {
          v21 = swift_slowAlloc();
          v22 = swift_slowAlloc();
          v77 = v22;
          *v21 = 136446210;
          sub_22FFB19B8();

          v78 = 0xD000000000000010;
          v79 = 0x800000022FFC9F50;
          v23 = Release.sha256.getter();
          MEMORY[0x23190DD10](v23);

          MEMORY[0x23190DD10](41, 0xE100000000000000);
          sub_22FEEF144(v20, type metadata accessor for Release);
          v24 = sub_22FF9E448(0xD000000000000010, 0x800000022FFC9F50, &v77);

          *(v21 + 4) = v24;
          _os_log_impl(&dword_22FE99000, v17, v18, "Software %{public}s has expired in transparency log", v21, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v22);
          MEMORY[0x23190EFF0](v22, -1, -1);
          MEMORY[0x23190EFF0](v21, -1, -1);
        }

        else
        {

          sub_22FEEF144(v20, type metadata accessor for Release);
        }

        v63 = *(v0 + 496);
        v64 = *(v0 + 504);
        v65 = *(v0 + 488);
        v66 = *(v0 + 296);
        sub_22FED0D14();
        v67 = swift_allocError();
        v69 = 0x8000000000000010;
        goto LABEL_22;
      case 10:
        v5 = *(v0 + 488);
        v6 = *(v0 + 432);

        sub_22FEEF074(v5, v6, type metadata accessor for Release);
        v7 = sub_22FFB12D8();
        v8 = sub_22FFB1838();
        v9 = os_log_type_enabled(v7, v8);
        v10 = *(v0 + 432);
        if (v9)
        {
          v11 = swift_slowAlloc();
          v12 = swift_slowAlloc();
          v77 = v12;
          *v11 = 136446210;
          sub_22FFB19B8();

          v78 = 0xD000000000000010;
          v79 = 0x800000022FFC9F50;
          v13 = Release.sha256.getter();
          MEMORY[0x23190DD10](v13);

          MEMORY[0x23190DD10](41, 0xE100000000000000);
          sub_22FEEF144(v10, type metadata accessor for Release);
          v14 = sub_22FF9E448(0xD000000000000010, 0x800000022FFC9F50, &v77);

          *(v11 + 4) = v14;
          _os_log_impl(&dword_22FE99000, v7, v8, "Software %{public}s is not included in transparency log, this is likely indicative of using the wrong transparency log", v11, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v12);
          MEMORY[0x23190EFF0](v12, -1, -1);
          MEMORY[0x23190EFF0](v11, -1, -1);
        }

        else
        {

          sub_22FEEF144(v10, type metadata accessor for Release);
        }

        v63 = *(v0 + 496);
        v64 = *(v0 + 504);
        v65 = *(v0 + 488);
        v66 = *(v0 + 296);
        sub_22FED0D14();
        v67 = swift_allocError();
        v69 = 0x8000000000000008;
LABEL_22:
        *v68 = v69;
        v76 = v67;
        swift_willThrow();
        sub_22FEA55AC(v63, v64);
        sub_22FEEF144(v66, type metadata accessor for TransparencyLogProofs);
        sub_22FEEF144(v65, type metadata accessor for Release);

        goto LABEL_23;
    }

    sub_22FEEF144(v3, type metadata accessor for TransparencyLogError);
  }

  v40 = *(v0 + 528);
  v41 = *(v0 + 488);
  v42 = *(v0 + 408);

  sub_22FEEF074(v41, v42, type metadata accessor for Release);
  v43 = v40;
  v44 = sub_22FFB12D8();
  v45 = sub_22FFB1838();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = *(v0 + 528);
    v47 = *(v0 + 408);
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v77 = v50;
    *v48 = 136446466;
    sub_22FFB19B8();

    v78 = 0xD000000000000010;
    v79 = 0x800000022FFC9F50;
    v51 = Release.sha256.getter();
    MEMORY[0x23190DD10](v51);

    MEMORY[0x23190DD10](41, 0xE100000000000000);
    sub_22FEEF144(v47, type metadata accessor for Release);
    v52 = sub_22FF9E448(0xD000000000000010, 0x800000022FFC9F50, &v77);

    *(v48 + 4) = v52;
    *(v48 + 12) = 2114;
    v53 = v46;
    v54 = _swift_stdlib_bridgeErrorToNSError();
    *(v48 + 14) = v54;
    *v49 = v54;
    _os_log_impl(&dword_22FE99000, v44, v45, "SWTransparency threw unknown error for %{public}s: %{public}@", v48, 0x16u);
    sub_22FEAEA34(v49, &qword_27DAF1680, &unk_22FFB4B10);
    MEMORY[0x23190EFF0](v49, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v50);
    MEMORY[0x23190EFF0](v50, -1, -1);
    MEMORY[0x23190EFF0](v48, -1, -1);
  }

  else
  {
    v55 = *(v0 + 408);

    sub_22FEEF144(v55, type metadata accessor for Release);
  }

  v56 = *(v0 + 528);
  v57 = *(v0 + 496);
  v58 = *(v0 + 504);
  v59 = *(v0 + 488);
  v60 = *(v0 + 296);
  sub_22FED0D14();
  v61 = swift_allocError();
  *v62 = v56 | 0x4000000000000000;
  v76 = v61;
  swift_willThrow();
  sub_22FEA55AC(v57, v58);
  sub_22FEEF144(v60, type metadata accessor for TransparencyLogProofs);
  sub_22FEEF144(v59, type metadata accessor for Release);
LABEL_23:
  if (*(*(v0 + 224) + 40) == 1)
  {
    swift_willThrow();

    v70 = *(v0 + 8);
  }

  else
  {
    if (qword_28148FB18 != -1)
    {
      swift_once();
    }

    v71 = sub_22FFB12F8();
    __swift_project_value_buffer(v71, qword_28148FB20);
    v72 = sub_22FFB12D8();
    v73 = sub_22FFB1848();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      *v74 = 0;
      _os_log_impl(&dword_22FE99000, v72, v73, "Failing transparency checks open since validateProofs is off", v74, 2u);
      MEMORY[0x23190EFF0](v74, -1, -1);
    }

    v70 = *(v0 + 8);
  }

  return v70();
}

uint64_t sub_22FEEE948(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22FEAA0D4;

  return TransparencyPolicy.evaluate(bundle:context:)(a1, a2);
}

uint64_t AttestationPolicyContext.releaseDigest.getter()
{
  v1 = *v0;
  if (!*(v1 + 16) || (v2 = sub_22FFA62AC(&type metadata for TransparencyPolicy, &protocol witness table for TransparencyPolicy, 0x44657361656C6572, 0xED00007473656769), (v3 & 1) == 0))
  {
    v6 = 0u;
    v7 = 0u;

    goto LABEL_9;
  }

  sub_22FEBF2A4(*(v1 + 56) + 32 * v2, &v6);

  if (!*(&v7 + 1))
  {
LABEL_9:
    sub_22FEAEA34(&v6, &qword_27DAF1A78, &unk_22FFB3A50);
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1A88, &qword_22FFB3A60);
  if (swift_dynamicCast())
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

unint64_t TransparencyPolicy.Error.errorCode.getter()
{
  v1 = *v0;
  result = *v0 >> 62;
  if (result)
  {
    if (result == 1)
    {
      return 4;
    }

    else
    {
      v3 = 2;
      if (v1 != 0x8000000000000008)
      {
        v3 = 3;
      }

      if (v1 == 0x8000000000000000)
      {
        return 1;
      }

      else
      {
        return v3;
      }
    }
  }

  return result;
}

unint64_t TransparencyPolicy.Error.errorUserInfo.getter()
{
  if ((*v0 >> 62) > 1)
  {
    v6 = MEMORY[0x277D84F90];

    return sub_22FFA6C20(v6);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1B50, &unk_22FFB3B80);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22FFB2D10;
    *(inited + 32) = sub_22FFB1498();
    *(inited + 40) = v2;
    swift_getErrorValue();
    *(inited + 72) = v7;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
    (*(*(v7 - 8) + 16))(boxed_opaque_existential_1);
    v4 = sub_22FFA6C20(inited);
    swift_setDeallocating();
    sub_22FEAEA34(inited + 32, &qword_27DAF1B58, &qword_22FFC02B0);
    return v4;
  }
}

uint64_t sub_22FEEEC8C(uint64_t a1)
{
  v2 = sub_22FEEF2BC();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_22FEEECC8(uint64_t a1)
{
  v2 = sub_22FEEF2BC();

  return MEMORY[0x28211F4A8](a1, v2);
}

unint64_t sub_22FEEED20()
{
  v1 = *v0;
  result = *v0 >> 62;
  if (result)
  {
    if (result == 1)
    {
      return 4;
    }

    else
    {
      v3 = 2;
      if (v1 != 0x8000000000000008)
      {
        v3 = 3;
      }

      if (v1 == 0x8000000000000000)
      {
        return 1;
      }

      else
      {
        return v3;
      }
    }
  }

  return result;
}

uint64_t sub_22FEEED6C(uint64_t a1, uint64_t a2)
{
  result = sub_22FFB0588();
  if (!result || (result = sub_22FFB05B8(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_22FFB05A8();
      sub_22FFB13C8();
      sub_22FEEF02C(&qword_28148F198, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
      return sub_22FFB1358();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22FEEEE4C(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      sub_22FFB13C8();
      sub_22FEEF02C(&qword_28148F198, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
      return sub_22FFB1358();
    }

    v4 = a1;
    v5 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_22FEEED6C(v4, v5);
  }

  if (v2 == 2)
  {
    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
    return sub_22FEEED6C(v4, v5);
  }

  sub_22FFB13C8();
  sub_22FEEF02C(&qword_28148F198, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
  return sub_22FFB1358();
}

uint64_t sub_22FEEF02C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22FEEF074(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22FEEF0DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22FEEF144(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t get_enum_tag_for_layout_string_16CloudAttestation18TransparencyPolicyV5ErrorO(unint64_t *a1)
{
  if ((*a1 & 0x8000000000000000) == 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

uint64_t sub_22FEEF1D4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 8))
  {
    return (*a1 + 126);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_22FEEF230(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_22FEEF280(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *result = (8 * (a2 - 2)) | 0x8000000000000000;
  }

  return result;
}

unint64_t sub_22FEEF2BC()
{
  result = qword_27DAF2168;
  if (!qword_27DAF2168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2168);
  }

  return result;
}

uint64_t PCC.AssetProvider.provisioningCertificateChain.getter()
{
  v1 = sub_22FFB1488();
  v2 = sub_22FFB1488();
  v3 = CFPreferencesCopyAppValue(v1, v2);

  if (v3)
  {
    swift_unknownObjectRetain();
    if (swift_dynamicCast() && (v0 = v10, v4 = sub_22FFB0728(), v6 = v5, , v6 >> 60 != 15))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1C58, &qword_22FFB3FC8);
      v0 = swift_allocObject();
      *(v0 + 16) = xmmword_22FFB2D10;
      *(v0 + 32) = v4;
      *(v0 + 40) = v6;
      swift_unknownObjectRelease();
    }

    else
    {
      sub_22FEBF89C();
      swift_allocError();
      *v7 = xmmword_22FFB3CE0;
      *(v7 + 16) = 3;
      swift_willThrow();
      swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_22FEBF89C();
    swift_allocError();
    *v8 = xmmword_22FFB3CC0;
    *(v8 + 16) = 3;
    swift_willThrow();
  }

  return v0;
}

uint64_t sub_22FEEF4E8()
{
  v1 = PCC.AssetProvider.provisioningCertificateChain.getter();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t PCC.AttestationType.init(from:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1CE8, &qword_22FFB4280);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v8[-v5];
  Validated.AttestationBundle.appData.getter(&v8[-v5]);
  PCC.AttestationType.init(from:)(v6, &v9);
  result = sub_22FEEF9A0(a1, type metadata accessor for Validated.AttestationBundle);
  *a2 = v9;
  return result;
}

uint64_t PCC.AttestationType.init(from:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1CE8, &qword_22FFB4280);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v20 - v5;
  sub_22FEEF8C8(a1, &v20 - v5);
  v7 = type metadata accessor for Proto_AppData(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) != 1)
  {
    v10 = *v6;
    v12 = *(v6 + 1);
    v11 = *(v6 + 2);
    v14 = *(v6 + 3);
    v13 = *(v6 + 4);

    sub_22FEEF9A0(v6, type metadata accessor for Proto_AppData);
    if (v10 != 1)
    {
      goto LABEL_26;
    }

    v15 = v12 == 0xD00000000000001DLL && 0x800000022FFC9FE0 == v11;
    v16 = v15;
    if (v15 || (sub_22FFB1BC8() & 1) != 0)
    {
      v17 = v14 == 0x6F4E2079786F7250 && v13 == 0xEA00000000006564;
      if (v17 || (sub_22FFB1BC8() & 1) != 0)
      {

        result = sub_22FEEF938(a1);
        v9 = 0x80;
        goto LABEL_28;
      }

      if (v16)
      {
        goto LABEL_20;
      }
    }

    if (sub_22FFB1BC8())
    {
LABEL_20:
      if (v14 == 0x20657475706D6F43 && v13 == 0xEC00000065646F4ELL)
      {

        result = sub_22FEEF938(a1);
        v9 = 1;
        goto LABEL_28;
      }

      v19 = sub_22FFB1BC8();

      result = sub_22FEEF938(a1);
      if (v19)
      {
        v9 = 1;
        goto LABEL_28;
      }
    }

    else
    {
LABEL_26:

      result = sub_22FEEF938(a1);
    }

    v9 = -2;
    goto LABEL_28;
  }

  sub_22FEEF938(v6);
  result = sub_22FEEF938(a1);
  v9 = 0;
LABEL_28:
  *a2 = v9;
  return result;
}

uint64_t sub_22FEEF8C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1CE8, &qword_22FFB4280);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22FEEF938(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1CE8, &qword_22FFB4280);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22FEEF9A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t PCC.AttestationType.ComputeNodeVersion.init(rawValue:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!result)
  {
    v2 = 0;
  }

  *a2 = v2;
  return result;
}

void *sub_22FEEFA24@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t sub_22FEEFA88()
{
  sub_22FFB1CA8();
  MEMORY[0x23190E460](1);
  return sub_22FFB1CF8();
}

uint64_t sub_22FEEFAF4()
{
  sub_22FFB1CA8();
  MEMORY[0x23190E460](1);
  return sub_22FFB1CF8();
}

BOOL static PCC.AttestationType.== infix(_:_:)(char *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  if ((*a1 & 0x80000000) == 0)
  {
    if ((v2 & 0x80) == 0)
    {
      return ((v2 ^ *a1) & 1) == 0;
    }

    return 0;
  }

  return (v2 & 0x80) != 0;
}

uint64_t PCC.AttestationType.hash(into:)()
{
  if (*v0 < 0)
  {
    v2 = 1;
    MEMORY[0x23190E460](1);
  }

  else
  {
    v1 = *v0;
    MEMORY[0x23190E460](0);
    v2 = v1 & 1;
  }

  return MEMORY[0x23190E460](v2);
}

uint64_t PCC.AttestationType.hashValue.getter()
{
  v1 = *v0;
  sub_22FFB1CA8();
  if (v1 < 0)
  {
    v2 = 1;
    MEMORY[0x23190E460](1);
  }

  else
  {
    MEMORY[0x23190E460](0);
    v2 = v1 & 1;
  }

  MEMORY[0x23190E460](v2);
  return sub_22FFB1CF8();
}

uint64_t sub_22FEEFC34()
{
  v1 = *v0;
  sub_22FFB1CA8();
  if (v1 < 0)
  {
    v2 = 1;
    MEMORY[0x23190E460](1);
  }

  else
  {
    MEMORY[0x23190E460](0);
    v2 = v1 & 1;
  }

  MEMORY[0x23190E460](v2);
  return sub_22FFB1CF8();
}

uint64_t sub_22FEEFCA8()
{
  if (*v0 < 0)
  {
    v2 = 1;
    MEMORY[0x23190E460](1);
  }

  else
  {
    v1 = *v0;
    MEMORY[0x23190E460](0);
    v2 = v1 & 1;
  }

  return MEMORY[0x23190E460](v2);
}

uint64_t sub_22FEEFCFC()
{
  v1 = *v0;
  sub_22FFB1CA8();
  if (v1 < 0)
  {
    v2 = 1;
    MEMORY[0x23190E460](1);
  }

  else
  {
    MEMORY[0x23190E460](0);
    v2 = v1 & 1;
  }

  MEMORY[0x23190E460](v2);
  return sub_22FFB1CF8();
}

unint64_t sub_22FEEFD70()
{
  result = qword_27DAF2170;
  if (!qword_27DAF2170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2170);
  }

  return result;
}

unint64_t sub_22FEEFDC8()
{
  result = qword_27DAF2178;
  if (!qword_27DAF2178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2178);
  }

  return result;
}

unint64_t sub_22FEEFE20()
{
  result = qword_27DAF2180;
  if (!qword_27DAF2180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2180);
  }

  return result;
}

BOOL sub_22FEEFE74(_BYTE *a1, _BYTE *a2)
{
  v2 = ((*a2 ^ *a1) & 1) == 0;
  if ((*a2 & 0x80) != 0)
  {
    v2 = 0;
  }

  if (*a1 >= 0)
  {
    return v2;
  }

  else
  {
    return *a2 < 0;
  }
}

uint64_t _s15AttestationTypeOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x7F)
  {
    goto LABEL_17;
  }

  if (a2 + 129 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 129) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 129;
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

      return (*a1 | (v4 << 8)) - 129;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 129;
    }
  }

LABEL_17:
  v6 = (*a1 & 0x7E | (*a1 >> 7)) ^ 0x7F;
  if (v6 >= 0x7E)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t _s15AttestationTypeOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 129 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 129) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x7F)
  {
    v4 = 0;
  }

  if (a2 > 0x7E)
  {
    v5 = ((a2 - 127) >> 8) + 1;
    *result = a2 - 127;
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
    *result = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t static PCC.AutoValidator(environment:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = type metadata accessor for NodeValidator(0);
  v4 = (v3 - 8);
  v35 = *(v3 - 8);
  v5 = *(v35 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v34 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v33 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v33 - v10;
  v12 = type metadata accessor for PCC.ProxyNodeValidator(0);
  v33 = *(v12 - 8);
  v13 = *(v33 + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v33 - v17;
  v19 = *a1;
  *(&v33 + *(v16 + 28) - v17) = 2;
  v39 = v19;
  NodeValidator.init(validity:environment:)(0xC0DDD92E56000000, 4683, &v39, &v33 - v17);
  v18[v4[21]] = 3;
  *(v11 + 8) = MEMORY[0x277D84F90];
  v20 = v4[10];
  v21 = sub_22FFB0908();
  (*(*(v21 - 8) + 56))(&v11[v20], 1, 1, v21);
  v11[v4[21]] = 2;
  *&v11[v4[23]] = 0;
  v36 = v19;
  v38 = v19;
  NodeValidator.init(validity:environment:)(0xC0DDD92E56000000, 4683, &v38, v9);
  sub_22FEAEA34(&v11[v20], &qword_27DAF1510, &qword_22FFB3800);
  sub_22FEF09F0(v9, v11, type metadata accessor for NodeValidator);
  v22 = v34;
  sub_22FEF0988(v11, v34, type metadata accessor for NodeValidator);
  sub_22FEF0988(v18, v15, type metadata accessor for PCC.ProxyNodeValidator);
  v23 = (*(v35 + 80) + 16) & ~*(v35 + 80);
  v24 = (v5 + *(v33 + 80) + v23) & ~*(v33 + 80);
  v25 = swift_allocObject();
  sub_22FEF09F0(v22, v25 + v23, type metadata accessor for NodeValidator);
  sub_22FEF09F0(v15, v25 + v24, type metadata accessor for PCC.ProxyNodeValidator);
  if (qword_281490938 != -1)
  {
    swift_once();
  }

  v26 = sub_22FF9A468(qword_2814914B0, unk_2814914B8, qword_2814914C0);
  v27 = v36;
  if (v26 == 2)
  {
    v28 = 0x3F8u >> v36;
  }

  else
  {
    v28 = v26;
  }

  v29 = v37;
  *(v37 + 16) = v28 & 1;
  v30 = sub_22FF9A468(qword_2814914D0, unk_2814914D8, qword_2814914E0);
  sub_22FEF0BF8(v18, type metadata accessor for PCC.ProxyNodeValidator);
  v31 = 0x3C0u >> v27;
  if (v30 != 2)
  {
    LOBYTE(v31) = v30;
  }

  *(v29 + 17) = v31 & 1;
  *v29 = &unk_22FFB6130;
  *(v29 + 8) = v25;
  return sub_22FEF0BF8(v11, type metadata accessor for NodeValidator);
}

uint64_t sub_22FEF046C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1CE8, &qword_22FFB4280);
  v4[6] = swift_task_alloc();
  v4[7] = swift_task_alloc();
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FEF0530, 0, 0);
}

uint64_t sub_22FEF0530()
{
  v26 = v0;
  v1 = v0[9];
  sub_22FEEF8C8(v0[3], v1);
  PCC.AttestationType.init(from:)(v1, v25);
  if (v25[0] <= 0xFDu)
  {
    v7 = v0[2];
    if (v25[0] < 0)
    {
      v8 = v0[5];
      v7[3] = type metadata accessor for PCC.ProxyNodeValidator(0);
      v7[4] = sub_22FEF0C58(&qword_28148F798, type metadata accessor for PCC.ProxyNodeValidator, &protocol conformance descriptor for PCC.ProxyNodeValidator);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v7);
      v10 = type metadata accessor for PCC.ProxyNodeValidator;
    }

    else
    {
      v8 = v0[4];
      v7[3] = type metadata accessor for NodeValidator(0);
      v7[4] = sub_22FEF0C58(&qword_27DAF2190, type metadata accessor for NodeValidator, &protocol conformance descriptor for NodeValidator);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v7);
      v10 = type metadata accessor for NodeValidator;
    }

    sub_22FEF0988(v8, boxed_opaque_existential_1, v10);

    v21 = v0[1];
  }

  else
  {
    v2 = v0[8];
    sub_22FEEF8C8(v0[3], v2);
    v3 = type metadata accessor for Proto_AppData(0);
    v4 = *(*(v3 - 8) + 48);
    v5 = v4(v2, 1, v3);
    v6 = v0[8];
    if (v5 == 1)
    {
      sub_22FEAEA34(v6, &qword_27DAF1CE8, &qword_22FFB4280);
      v24 = 0;
    }

    else
    {
      v24 = *v6;
      sub_22FEF0BF8(v6, type metadata accessor for Proto_AppData);
    }

    v11 = v0[7];
    sub_22FEEF8C8(v0[3], v11);
    v12 = v4(v11, 1, v3);
    v13 = v0[7];
    if (v12 == 1)
    {
      sub_22FEAEA34(v0[7], &qword_27DAF1CE8, &qword_22FFB4280);
      v23 = 0;
      v14 = 0xE000000000000000;
    }

    else
    {
      v14 = *(v13 + 16);
      v23 = *(v13 + 8);

      sub_22FEF0BF8(v13, type metadata accessor for Proto_AppData);
    }

    v15 = v0[6];
    sub_22FEEF8C8(v0[3], v15);
    v16 = v4(v15, 1, v3);
    v17 = v0[6];
    if (v16 == 1)
    {
      sub_22FEAEA34(v0[6], &qword_27DAF1CE8, &qword_22FFB4280);
      v18 = 0;
      v19 = 0xE000000000000000;
    }

    else
    {
      v18 = *(v17 + 24);
      v19 = *(v17 + 32);

      sub_22FEF0BF8(v17, type metadata accessor for Proto_AppData);
    }

    sub_22FEF0BA4();
    swift_allocError();
    *v20 = v24;
    *(v20 + 8) = v23;
    *(v20 + 16) = v14;
    *(v20 + 24) = v18;
    *(v20 + 32) = v19;
    swift_willThrow();

    v21 = v0[1];
  }

  return v21();
}

uint64_t sub_22FEF08EC(uint64_t a1)
{
  v2 = sub_22FEF0D58();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_22FEF0928(uint64_t a1)
{
  v2 = sub_22FEF0D58();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_22FEF0988(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22FEF09F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22FEF0A58(uint64_t a1, uint64_t a2)
{
  v5 = v3;
  v7 = *(type metadata accessor for NodeValidator(0) - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(type metadata accessor for PCC.ProxyNodeValidator(0) - 8);
  v11 = (v8 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_22FEAA0D4;

  return sub_22FEF046C(a1, a2, v2 + v8, v2 + v11);
}

unint64_t sub_22FEF0BA4()
{
  result = qword_27DAF2188;
  if (!qword_27DAF2188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2188);
  }

  return result;
}

uint64_t sub_22FEF0BF8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22FEF0C58(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_22FEF0CB4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_22FEF0CFC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_22FEF0D58()
{
  result = qword_27DAF2198;
  if (!qword_27DAF2198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2198);
  }

  return result;
}

uint64_t type metadata accessor for PCC.ComputeNodeValidator(uint64_t a1)
{
  result = qword_27DAF21B0;
  if (!qword_27DAF21B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22FEF0EA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t PCC.ComputeNodeValidator.init(proxyingAttestation:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for AttestationBundle(0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v12[-v8];
  sub_22FEF0EA0(a1, &v12[-v8], type metadata accessor for AttestationBundle);
  sub_22FEF0EA0(v9, v7, type metadata accessor for AttestationBundle);
  static Environment.default.getter(&v13);
  v10 = type metadata accessor for PCC.ComputeNodeValidator(0);
  sub_22FEF0EA0(v7, a2 + *(v10 + 20), type metadata accessor for AttestationBundle);
  NodeValidator.init()(a2);
  sub_22FEF12E4(v7);
  *(a2 + *(type metadata accessor for NodeValidator(0) + 36)) = 0;
  __swift_destroy_boxed_opaque_existential_1(a2 + 1);
  a2[4] = &type metadata for NopTransparencyLog;
  a2[5] = &protocol witness table for NopTransparencyLog;
  *(a2 + 8) = 0;
  sub_22FEF12E4(a1);
  return sub_22FEF12E4(v9);
}

uint64_t PCC.ComputeNodeValidator.init(proxyingAttestation:validity:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for AttestationBundle(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FEF0EA0(a1, v6, type metadata accessor for AttestationBundle);
  static Environment.default.getter(&v10);
  v7 = type metadata accessor for PCC.ComputeNodeValidator(0);
  sub_22FEF0EA0(v6, a2 + *(v7 + 20), type metadata accessor for AttestationBundle);
  NodeValidator.init()(a2);
  sub_22FEF12E4(v6);
  *(a2 + *(type metadata accessor for NodeValidator(0) + 36)) = 0;
  __swift_destroy_boxed_opaque_existential_1(a2 + 1);
  a2[4] = &type metadata for NopTransparencyLog;
  a2[5] = &protocol witness table for NopTransparencyLog;
  *(a2 + 8) = 0;
  return sub_22FEF12E4(a1);
}

uint64_t PCC.ComputeNodeValidator.init(proxyingAttestation:environment:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for AttestationBundle(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FEF0EA0(a1, v6, type metadata accessor for AttestationBundle);
  v7 = type metadata accessor for PCC.ComputeNodeValidator(0);
  sub_22FEF0EA0(v6, a2 + *(v7 + 20), type metadata accessor for AttestationBundle);
  NodeValidator.init()(a2);
  sub_22FEF12E4(v6);
  *(a2 + *(type metadata accessor for NodeValidator(0) + 36)) = 0;
  __swift_destroy_boxed_opaque_existential_1(a2 + 1);
  a2[4] = &type metadata for NopTransparencyLog;
  a2[5] = &protocol witness table for NopTransparencyLog;
  *(a2 + 8) = 0;
  return sub_22FEF12E4(a1);
}

uint64_t PCC.ComputeNodeValidator.init(proxyingAttestation:validity:environment:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for PCC.ComputeNodeValidator(0);
  sub_22FEF0EA0(a1, a2 + *(v4 + 20), type metadata accessor for AttestationBundle);
  NodeValidator.init()(a2);
  sub_22FEF12E4(a1);
  *(a2 + *(type metadata accessor for NodeValidator(0) + 36)) = 0;
  result = __swift_destroy_boxed_opaque_existential_1(a2 + 1);
  a2[4] = &type metadata for NopTransparencyLog;
  a2[5] = &protocol witness table for NopTransparencyLog;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_22FEF12E4(uint64_t a1)
{
  v2 = type metadata accessor for AttestationBundle(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t PCC.ComputeNodeValidator.policy.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF21A0, &unk_22FFB6210);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v20 - v5;
  v7 = type metadata accessor for AttestationBundle(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF21A8, &qword_22FFC01A0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v20 - v14;
  NodeValidator.policy.getter(&v20 - v14);
  v16 = type metadata accessor for PCC.ComputeNodeValidator(0);
  sub_22FEF0EA0(v1 + *(v16 + 20), v9, type metadata accessor for AttestationBundle);
  ProxiedReleasePolicy.init(proxyingAttestation:)(v9, &v21);
  v17 = v21;
  sub_22FEF1520(v15, v13);
  sub_22FEF1520(v13, v6);
  v18 = *(v4 + 56);
  *&v6[v18] = v17;
  sub_22FEF1590(v6, a1);
  *(a1 + *(v4 + 56)) = *&v6[v18];

  sub_22FEF1600(v15);

  return sub_22FEF1600(v13);
}

uint64_t sub_22FEF1520(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF21A8, &qword_22FFC01A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22FEF1590(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF21A8, &qword_22FFC01A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22FEF1600(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF21A8, &qword_22FFC01A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22FEF16CC(uint64_t a1)
{
  result = type metadata accessor for NodeValidator(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for AttestationBundle(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t PCC.ProxyNodeAttestor.attestingKey.getter()
{
  if (qword_27DAF14C8 != -1)
  {
    swift_once();
  }

  if (qword_27DB05B28)
  {
    v1 = qword_27DB05B28;
    Duplicate = SecKeyCreateDuplicate();
    if (Duplicate)
    {
      v0 = Duplicate;
    }

    else
    {
      type metadata accessor for NodeAttestor.Error(0);
      sub_22FEF39BC(&qword_27DAF1810, type metadata accessor for NodeAttestor.Error, &protocol conformance descriptor for NodeAttestor.Error);
      swift_allocError();
      v0 = v6;
      v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1818, &qword_22FFB3130);
      (*(*(v7 - 8) + 56))(v0, 1, 7, v7);
      swift_willThrow();
    }
  }

  else
  {
    type metadata accessor for NodeAttestor.Error(0);
    sub_22FEF39BC(&qword_27DAF1810, type metadata accessor for NodeAttestor.Error, &protocol conformance descriptor for NodeAttestor.Error);
    swift_allocError();
    v4 = v3;
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1818, &qword_22FFB3130);
    (*(*(v5 - 8) + 56))(v4, 1, 7, v5);
    swift_willThrow();
  }

  return v0;
}

uint64_t PCC.ProxyNodeAttestor.assetProvider.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 32));

  return sub_22FE9B84C(a1, v1 + 32);
}

void (*PCC.ProxyNodeAttestor.assetProvider.modify(uint64_t *a1))(__int128 **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  *a1 = v3;
  *(v3 + 40) = v1;
  sub_22FEAF43C(v1 + 32, v3);
  return sub_22FEF1A58;
}

void sub_22FEF1A58(__int128 **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 5);
  __swift_destroy_boxed_opaque_existential_1((v2 + 32));
  sub_22FE9B84C(v1, v2 + 32);

  free(v1);
}

uint64_t PCC.ProxyNodeAttestor.transparencyProver.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 112));

  return sub_22FE9B84C(a1, v1 + 112);
}

void (*PCC.ProxyNodeAttestor.transparencyProver.modify(uint64_t *a1))(__int128 **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  *a1 = v3;
  *(v3 + 40) = v1;
  sub_22FEAF43C(v1 + 112, v3);
  return sub_22FEF1B80;
}

void sub_22FEF1B80(__int128 **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 5);
  __swift_destroy_boxed_opaque_existential_1((v2 + 112));
  sub_22FE9B84C(v1, v2 + 112);

  free(v1);
}

uint64_t PCC.ProxyNodeAttestor.sepProtocol.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 72));

  return sub_22FE9B84C(a1, v1 + 72);
}

void (*PCC.ProxyNodeAttestor.sepProtocol.modify(uint64_t *a1))(__int128 **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  *a1 = v3;
  *(v3 + 40) = v1;
  sub_22FEAF43C(v1 + 72, v3);
  return sub_22FEF1CA8;
}

void sub_22FEF1CA8(__int128 **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 5);
  __swift_destroy_boxed_opaque_existential_1((v2 + 72));
  sub_22FE9B84C(v1, v2 + 72);

  free(v1);
}

uint64_t PCC.ProxyNodeAttestor.init<A>(proxiedReleases:transparencyProver:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v12);
  v13 = NodeAttestor.init<A>(transparencyProver:)(v12, a3, a4, (a5 + 1));
  result = (*(v10 + 8))(a2, a3, v13);
  *a5 = a1;
  return result;
}

uint64_t PCC.ProxyNodeAttestor.init<A, B>(proxiedReleases:transparencyProver:assetProvider:environment:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t *a8@<X8>)
{
  v24 = a6;
  v25 = a7;
  v26 = a1;
  v13 = *(a5 - 8);
  v14 = MEMORY[0x28223BE20](a1);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v14);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *v21;
  (*(v18 + 16))(v20);
  (*(v13 + 16))(v16, a3, a5);
  v27 = v22;
  NodeAttestor.init<A, B>(transparencyProver:assetProvider:environment:)(v20, v16, &v27, a4, a5, v24, v25, (a8 + 1));
  (*(v13 + 8))(a3, a5);
  result = (*(v18 + 8))(a2, a4);
  *a8 = v26;
  return result;
}

uint64_t PCC.ProxyNodeAttestor.attest(key:using:expiration:nonce:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[19] = a6;
  v7[20] = v6;
  v7[17] = a3;
  v7[18] = a4;
  v7[15] = a1;
  v7[16] = a2;
  v8 = sub_22FFB13C8();
  v7[21] = v8;
  v7[22] = *(v8 - 8);
  v7[23] = swift_task_alloc();
  v9 = sub_22FFB1398();
  v7[24] = v9;
  v7[25] = *(v9 - 8);
  v7[26] = swift_task_alloc();
  v7[27] = type metadata accessor for Proto_AppData(0);
  v7[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FEF214C, 0, 0);
}

uint64_t sub_22FEF214C()
{
  if (v0[19] >> 60 == 15)
  {
    v1 = v0[20];
    v2 = v1[17];
    v3 = v1[18];
    __swift_project_boxed_opaque_existential_1(v1 + 14, v2);
    v4 = *v1;
    v11 = (*(v3 + 16) + **(v3 + 16));
    v5 = swift_task_alloc();
    v0[29] = v5;
    *v5 = v0;
    v5[1] = sub_22FEF239C;

    return v11(v4, v2, v3);
  }

  else
  {
    type metadata accessor for NodeAttestor.Error(0);
    sub_22FEF39BC(&qword_27DAF1810, type metadata accessor for NodeAttestor.Error, &protocol conformance descriptor for NodeAttestor.Error);
    swift_allocError();
    v8 = v7;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1818, &qword_22FFB3130);
    (*(*(v9 - 8) + 56))(v8, 7, 7, v9);
    swift_willThrow();

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_22FEF239C(uint64_t a1)
{
  v3 = *v2;
  v3[30] = a1;
  v3[31] = v1;

  if (v1)
  {

    v4 = v3[1];

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_22FEF24FC, 0, 0);
  }
}

uint64_t sub_22FEF24FC()
{
  v2 = v0[30];
  v1 = v0[31];
  v3 = v0[18];
  v4 = swift_task_alloc();
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  sub_22FEF39BC(qword_2814906B0, type metadata accessor for Proto_AppData, &protocol conformance descriptor for Proto_AppData);
  sub_22FFB11B8();
  if (v1)
  {

    v7 = v0[1];

    return v7();
  }

  else
  {

    v5 = sub_22FFB1178();
    v0[32] = v5;
    v0[33] = v6;
    v23 = v0[26];
    v24 = v0[25];
    v10 = v0[23];
    v9 = v0[24];
    v12 = v0[21];
    v11 = v0[22];
    v13 = v5;
    v14 = v6;
    sub_22FEF39BC(&qword_28148F198, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
    sub_22FFB1388();
    sub_22FEA5608(v13, v14);
    sub_22FF9EA78(v13, v14, v10);
    sub_22FEA55AC(v13, v14);
    sub_22FFB1368();
    (*(v11 + 8))(v10, v12);
    v0[5] = v9;
    v0[6] = sub_22FEF39BC(&qword_28148F1C0, MEMORY[0x277CC5290], MEMORY[0x277CC5280]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
    (*(v24 + 16))(boxed_opaque_existential_1, v23, v9);
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    sub_22FFB0618();
    (*(v24 + 8))(v23, v9);
    v16 = v0[10];
    v17 = v0[11];
    v0[34] = v16;
    v0[35] = v17;
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
    sub_22FEA5608(v16, v17);
    v18 = swift_task_alloc();
    v0[36] = v18;
    *v18 = v0;
    v18[1] = sub_22FEF28B4;
    v19 = v0[17];
    v20 = v0[18];
    v21 = v0[15];
    v22 = v0[16];

    return NodeAttestor.attest(key:using:expiration:nonce:)(v21, v22, v19, v20, v16, v17);
  }
}

uint64_t sub_22FEF28B4()
{
  v2 = *v1;
  *(*v1 + 296) = v0;

  sub_22FEA55AC(*(v2 + 272), *(v2 + 280));
  if (v0)
  {
    v3 = sub_22FEF2E48;
  }

  else
  {
    v3 = sub_22FEF29FC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22FEF29FC()
{
  v1 = v0[32];
  v2 = v0[33];
  v3 = v0[15];
  v4 = *(type metadata accessor for Proto_AttestationBundle(0) + 20);
  sub_22FEA5608(v1, v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v3 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_AttestationBundle._StorageClass(0);
    swift_allocObject();
    v6 = sub_22FF10520(v6);
    *(v3 + v4) = v6;
  }

  v8 = v0[32];
  v7 = v0[33];
  v9 = (v6 + OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__appData);
  swift_beginAccess();
  v10 = *v9;
  v11 = v9[1];
  *v9 = v8;
  v9[1] = v7;
  sub_22FEA55AC(v10, v11);
  v0[12] = &unk_2844D83A8;
  v0[13] = &unk_2844D8380;
  v0[14] = sub_22FFA7050(MEMORY[0x277D84F90]);
  v12 = swift_task_alloc();
  v0[38] = v12;
  *v12 = v0;
  v12[1] = sub_22FEF2B5C;
  v13 = v0[15];

  return DarwinInitPolicy.evaluate(bundle:context:)(v13, (v0 + 14));
}

uint64_t sub_22FEF2B5C()
{
  *(*v1 + 312) = v0;

  if (v0)
  {
    v2 = sub_22FEF2D6C;
  }

  else
  {
    v2 = sub_22FEF2CA8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22FEF2CA8()
{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[28];
  sub_22FEA55AC(v0[32], v0[33]);
  sub_22FEA55AC(v1, v2);
  sub_22FEF379C(v3, type metadata accessor for Proto_AppData);

  v4 = v0[1];

  return v4();
}

uint64_t sub_22FEF2D6C()
{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[28];
  v4 = v0[15];
  sub_22FEA55AC(v0[32], v0[33]);
  sub_22FEA55AC(v1, v2);
  sub_22FEF379C(v3, type metadata accessor for Proto_AppData);
  sub_22FEF379C(v4, type metadata accessor for AttestationBundle);

  v5 = v0[1];

  return v5();
}

uint64_t sub_22FEF2E48()
{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[28];
  sub_22FEA55AC(v0[32], v0[33]);
  sub_22FEA55AC(v1, v2);
  sub_22FEF379C(v3, type metadata accessor for Proto_AppData);

  v4 = v0[1];

  return v4();
}

uint64_t sub_22FEF2F04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_22FFB0F18();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v14[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];

  *(a1 + 8) = 0xD00000000000001DLL;
  *(a1 + 16) = 0x800000022FFC9FE0;

  *(a1 + 24) = 0x6F4E2079786F7250;
  *(a1 + 32) = 0xEA00000000006564;
  *a1 = 1;
  v11 = type metadata accessor for PrivateCloudCompute_ProxyNodeMetadata(0);
  v15 = a2;
  v16 = a3;
  v17[3] = v11;
  v17[4] = sub_22FEF39BC(qword_281490F70, type metadata accessor for PrivateCloudCompute_ProxyNodeMetadata, &protocol conformance descriptor for PrivateCloudCompute_ProxyNodeMetadata);
  __swift_allocate_boxed_opaque_existential_1(v17);
  sub_22FFB11B8();
  if (v3)
  {
    return __swift_deallocate_boxed_opaque_existential_1(v17);
  }

  sub_22FFB0FF8();
  sub_22FFB0EF8();
  v13 = *(type metadata accessor for Proto_AppData(0) + 32);
  sub_22FEAEA34(a1 + v13, &qword_27DAF1D38, &qword_22FFB4270);
  (*(v8 + 32))(a1 + v13, v10, v7);
  return (*(v8 + 56))(a1 + v13, 0, 1, v7);
}

uint64_t sub_22FEF3144(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7[2] = a3;
  result = sub_22FF7ACE0(sub_22FEF3960, v7, a2);
  if (!v3)
  {
    v6 = result;

    *a1 = v6;
  }

  return result;
}

uint64_t sub_22FEF31B8(uint64_t a1, char *a2, uint64_t *a3)
{
  result = TransparencyLogProofs.verify(expiration:)(a2);
  v7 = v3;
  if (!v3)
  {
    v8 = (a1 + *(type metadata accessor for TransparencyLogProofs(0) + 24));
    v9 = v8[1];
    if (v9 >> 60 != 15)
    {
      v10 = *v8;
      v11 = type metadata accessor for PrivateCloudCompute_ProxyNodeMetadata.ProxiedRelease(0);
      MEMORY[0x28223BE20](v11);
      sub_22FEA5608(v10, v9);
      sub_22FEF39BC(&qword_281491018, type metadata accessor for PrivateCloudCompute_ProxyNodeMetadata.ProxiedRelease, &protocol conformance descriptor for PrivateCloudCompute_ProxyNodeMetadata.ProxiedRelease);
      sub_22FFB11B8();
      return sub_22FEA56EC(v10, v9);
    }

    type metadata accessor for TransparencyLogError(0);
    sub_22FEF39BC(&qword_27DAF21C0, type metadata accessor for TransparencyLogError, &protocol conformance descriptor for TransparencyLogError);
    v7 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    result = swift_willThrow();
  }

  *a3 = v7;
  return result;
}

uint64_t sub_22FEF336C(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for Proto_TransparencyProofs(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *a1;
  v13 = a1[1];
  sub_22FEA5608(a2, a3);
  sub_22FEA55AC(v12, v13);
  *a1 = a2;
  a1[1] = a3;
  v17 = a4;
  sub_22FEF39BC(&qword_28148F868, type metadata accessor for Proto_TransparencyProofs, &protocol conformance descriptor for Proto_TransparencyProofs);
  sub_22FFB11B8();
  v14 = *(type metadata accessor for PrivateCloudCompute_ProxyNodeMetadata.ProxiedRelease(0) + 24);
  sub_22FEAEA34(a1 + v14, &qword_27DAF2118, &unk_22FFB5C70);
  sub_22FEF3A68(v11, a1 + v14, type metadata accessor for Proto_TransparencyProofs);
  return (*(v9 + 56))(a1 + v14, 0, 1, v8);
}

uint64_t sub_22FEF352C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FEF3A04(a2, v7);
  v8 = *(type metadata accessor for Proto_TransparencyProofs(0) + 20);
  sub_22FEAEA34(a1 + v8, &qword_27DAF37C0, &unk_22FFB5C60);
  sub_22FEF3A68(v7, a1 + v8, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs);
  return (*(v5 + 56))(a1 + v8, 0, 1, v4);
}

uint64_t sub_22FEF36B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_22FEAA0D4;

  return PCC.ProxyNodeAttestor.attest(key:using:expiration:nonce:)(a1, a2, a3, a4, v12, a6);
}

uint64_t sub_22FEF379C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

__n128 __swift_memcpy157_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 141) = *(a2 + 141);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_22FEF3830(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 157))
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

uint64_t sub_22FEF3878(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 156) = 0;
    *(result + 152) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 157) = 1;
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

    *(result + 157) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t __swift_deallocate_boxed_opaque_existential_1(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x23190EFF0);
  }

  return result;
}

uint64_t sub_22FEF39BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22FEF3A04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22FEF3A68(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t PCC.ProxyNodeValidator.init(environment:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  *(a2 + *(type metadata accessor for PCC.ProxyNodeValidator(0) + 20)) = 2;
  v5 = v3;
  NodeValidator.init(validity:environment:)(0xC0DDD92E56000000, 4683, &v5, a2);
  result = type metadata accessor for NodeValidator(0);
  *(a2 + *(result + 76)) = 3;
  return result;
}

uint64_t type metadata accessor for PCC.ProxyNodeValidator(uint64_t a1)
{
  result = qword_28148F788;
  if (!qword_28148F788)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PCC.ProxyNodeValidator.transparencyVerifier.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 8));

  return sub_22FE9B84C(a1, v1 + 8);
}

void (*PCC.ProxyNodeValidator.transparencyVerifier.modify(uint64_t *a1))(__int128 **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  *a1 = v3;
  *(v3 + 40) = v1;
  sub_22FEAF43C(v1 + 8, v3);
  return sub_22FEAF988;
}

uint64_t PCC.ProxyNodeValidator.validateProxiedReleaseProofs.getter()
{
  v1 = *(v0 + *(type metadata accessor for PCC.ProxyNodeValidator(0) + 20));
  if (v1 == 2)
  {
    LOBYTE(v1) = *(v0 + *(type metadata accessor for NodeValidator(0) + 36));
  }

  return v1 & 1;
}

uint64_t sub_22FEF3CCC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = type metadata accessor for PCC.ProxyNodeValidator(0);
  v5 = *(a1 + *(result + 20));
  if (v5 == 2)
  {
    result = type metadata accessor for NodeValidator(0);
    LOBYTE(v5) = *(a1 + *(result + 36));
  }

  *a2 = v5 & 1;
  return result;
}

uint64_t PCC.ProxyNodeValidator.validateProxiedReleaseProofs.setter(char a1)
{
  result = type metadata accessor for PCC.ProxyNodeValidator(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t (*PCC.ProxyNodeValidator.validateProxiedReleaseProofs.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for PCC.ProxyNodeValidator(0) + 20);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 2)
  {
    LOBYTE(v4) = *(v1 + *(type metadata accessor for NodeValidator(0) + 36));
  }

  *(a1 + 12) = v4 & 1;
  return sub_22FEF3DC4;
}

uint64_t PCC.ProxyNodeValidator.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *(type metadata accessor for PCC.ProxyNodeValidator(0) + 20);
  static Environment.default.getter(&v4);
  *(a1 + v2) = 2;
  NodeValidator.init(validity:environment:)(0xC0DDD92E56000000, 4683, &v4, a1);
  result = type metadata accessor for NodeValidator(0);
  *(a1 + *(result + 76)) = 3;
  return result;
}

uint64_t PCC.ProxyNodeValidator.init(validity:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(type metadata accessor for PCC.ProxyNodeValidator(0) + 20);
  static Environment.default.getter(&v8);
  *(a3 + v6) = 2;
  NodeValidator.init(validity:environment:)(a1, a2, &v8, a3);
  result = type metadata accessor for NodeValidator(0);
  *(a3 + *(result + 76)) = 3;
  return result;
}

uint64_t PCC.ProxyNodeValidator.init(validity:environment:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a3;
  *(a4 + *(type metadata accessor for PCC.ProxyNodeValidator(0) + 20)) = 2;
  v9 = v7;
  NodeValidator.init(validity:environment:)(a1, a2, &v9, a4);
  result = type metadata accessor for NodeValidator(0);
  *(a4 + *(result + 76)) = 3;
  return result;
}

uint64_t PCC.ProxyNodeValidator.policy.getter@<X0>(_OWORD *a1@<X8>)
{
  sub_22FEAF43C(v1 + 8, &v10);
  v3 = *(v1 + *(type metadata accessor for PCC.ProxyNodeValidator(0) + 20));
  if (v3 == 2)
  {
    LOBYTE(v3) = *(v1 + *(type metadata accessor for NodeValidator(0) + 36));
  }

  sub_22FE9B84C(&v10, &v8);
  v9[24] = v3 & 1;
  v10 = v8;
  v11[0] = *v9;
  *(v11 + 9) = *&v9[9];
  sub_22FEF4004(&v10, &v8);
  sub_22FEF4004(&v8, &v6);
  v4 = v7[0];
  *a1 = v6;
  a1[1] = v4;
  *(a1 + 25) = *(v7 + 9);
  sub_22FEF4060(&v10);
  return sub_22FEF4060(&v8);
}

uint64_t PCC.ProxyNodeValidator.validate(bundle:nonce:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  return MEMORY[0x2822009F8](sub_22FEF4220, 0, 0);
}

uint64_t sub_22FEF4220()
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
  sub_22FEC471C(&qword_28148F198, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
  sub_22FFB1388();
  sub_22FEA5608(v7, v8);
  sub_22FF9EA78(v7, v8, v2);
  sub_22FEA55AC(v7, v8);
  sub_22FFB1368();
  sub_22FEA55AC(v7, v8);
  (*(v3 + 8))(v2, v4);
  v0[11] = v18;
  v0[12] = sub_22FEC471C(&qword_28148F1C0, MEMORY[0x277CC5290], MEMORY[0x277CC5280]);
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
  v14[1] = sub_22FEF44F0;
  v15 = v0[26];
  v16 = v0[22];

  return NodeValidator.validate(bundle:nonce:)(v15, v21 + v12, v21 + v13, v16, v11, v10);
}

uint64_t sub_22FEF44F0()
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
    v3 = sub_22FEF460C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22FEF460C()
{
  PCC.ProxyNodeValidator.policy.getter((v0 + 16));
  *(v0 + 144) = sub_22FFA7050(MEMORY[0x277D84F90]);
  v1 = swift_task_alloc();
  *(v0 + 296) = v1;
  *v1 = v0;
  v1[1] = sub_22FEF46E0;
  v2 = *(v0 + 176);

  return sub_22FFA3BB0(v2, v0 + 144);
}

uint64_t sub_22FEF46E0()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_22FEF4958;
  }

  else
  {
    v2 = sub_22FEF4814;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22FEF4814()
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
  sub_22FEF4C04(&v4[v10], v6);

  v12 = v0[1];

  return v12();
}

uint64_t sub_22FEF4958()
{
  v1 = v0[33];
  v2 = v0[34];
  v3 = v0[26];
  sub_22FEAEA34((v0 + 2), &qword_27DAF21D0, &unk_22FFB6310);
  sub_22FEA55AC(v1, v2);
  sub_22FEAEA34(v3, &qword_27DAF21C8, &qword_22FFB6308);

  v4 = v0[1];

  return v4();
}

uint64_t sub_22FEF4A28()
{
  v1 = v0[33];
  v2 = v0[34];
  sub_22FEA55AC(v1, v2);
  sub_22FEA55AC(v1, v2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_22FEF4AD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_22FEAA0D4;

  return PCC.ProxyNodeValidator.validate(bundle:nonce:)(a1, a2, a3, a4);
}

uint64_t sub_22FEF4B94(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF21C8, &qword_22FFB6308);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22FEF4C04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Validated.AttestationBundle(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_22FEF4CC8(uint64_t a1)
{
  type metadata accessor for NodeValidator(319);
  if (v1 <= 0x3F)
  {
    sub_22FEF4D4C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22FEF4D4C()
{
  if (!qword_28148F110)
  {
    v0 = sub_22FFB1888();
    if (!v1)
    {
      atomic_store(v0, &qword_28148F110);
    }
  }
}

unint64_t PrivateCloudCompute_TransparencyLog_ATLogDataType.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result > 3)
  {
    switch(result)
    {
      case 4uLL:
        v2 = 1;
        result = 3;
        goto LABEL_13;
      case 5uLL:
        v2 = 1;
        result = 4;
        goto LABEL_13;
      case 0x64uLL:
        v2 = 1;
        result = 5;
        goto LABEL_13;
    }

LABEL_11:
    v2 = 0;
    goto LABEL_13;
  }

  if (result >= 2)
  {
    if (result == 3)
    {
      v2 = 1;
      result = 2;
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  v2 = 1;
LABEL_13:
  *a2 = result;
  *(a2 + 8) = v2;
  *(a2 + 9) = 0;
  return result;
}

uint64_t PrivateCloudCompute_TransparencyLog_ATLogDataType.rawValue.getter()
{
  result = *v0;
  if (*(v0 + 8) == 1)
  {
    return qword_22FFB7BF8[result];
  }

  return result;
}

uint64_t sub_22FEF4E5C()
{
  result = *v0;
  if (*(v0 + 8) == 1)
  {
    return qword_22FFB7BF8[result];
  }

  return result;
}

void sub_22FEF4E94(void *a1@<X8>)
{
  v2 = *v1;
  if (*(v1 + 8) == 1)
  {
    v2 = qword_22FFB7BF8[v2];
  }

  *a1 = v2;
}

uint64_t sub_22FEF4EB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FF03D00();

  return MEMORY[0x28217E238](a1, a2, v4);
}

BOOL sub_22FEF4F04(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (*(a1 + 8) == 1)
  {
    v2 = qword_22FFB7BF8[v2];
  }

  v3 = *a2;
  if (*(a2 + 8))
  {
    v3 = qword_22FFB7BF8[v3];
  }

  return v2 == v3;
}

unint64_t PrivateCloudCompute_TransparencyLog_ATReleaseType.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 2;
  *(a2 + 9) = 0;
  return result;
}

uint64_t PrivateCloudCompute_TransparencyLog_ATReleaseType.rawValue.getter()
{
  if (v0[8])
  {
    return *v0 != 0;
  }

  else
  {
    return *v0;
  }
}

uint64_t sub_22FEF4F8C(uint64_t a1, uint64_t a2)
{
  sub_22FFB1CA8();
  sub_22FFB1438();
  return sub_22FFB1CF8();
}

uint64_t sub_22FEF4FF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FF03D54();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_22FEF5044(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22FFB1CA8();
  sub_22FFB1438();
  return sub_22FFB1CF8();
}

uint64_t PrivateCloudCompute_TransparencyLog_ATLogInsertRequest.data.getter()
{
  v1 = *(v0 + 56);
  sub_22FEA5608(v1, *(v0 + 64));
  return v1;
}

uint64_t PrivateCloudCompute_TransparencyLog_ATLogInsertRequest.data.setter(uint64_t a1, uint64_t a2)
{
  result = sub_22FEA55AC(*(v2 + 56), *(v2 + 64));
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

uint64_t PrivateCloudCompute_TransparencyLog_ATLogInsertRequest.unhashedMetadata.getter()
{
  v1 = *(v0 + 72);
  sub_22FEA5608(v1, *(v0 + 80));
  return v1;
}

uint64_t PrivateCloudCompute_TransparencyLog_ATLogInsertRequest.unhashedMetadata.setter(uint64_t a1, uint64_t a2)
{
  result = sub_22FEA55AC(*(v2 + 72), *(v2 + 80));
  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  return result;
}

uint64_t PrivateCloudCompute_TransparencyLog_ATLogInsertRequest.insertData.getter()
{
  v1 = *(v0 + 88);
  sub_22FEA5608(v1, *(v0 + 96));
  return v1;
}

uint64_t PrivateCloudCompute_TransparencyLog_ATLogInsertRequest.insertData.setter(uint64_t a1, uint64_t a2)
{
  result = sub_22FEA55AC(*(v2 + 88), *(v2 + 96));
  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
  return result;
}

void PrivateCloudCompute_TransparencyLog_ATLogInsertRequest.releaseType.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 112);
  *a1 = *(v1 + 104);
  *(a1 + 8) = v2;
}

uint64_t PrivateCloudCompute_TransparencyLog_ATLogInsertRequest.releaseType.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 104) = *result;
  *(v1 + 112) = v2;
  return result;
}

uint64_t PrivateCloudCompute_TransparencyLog_ATLogInsertRequest.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogInsertRequest(0) + 48);
  v4 = sub_22FFB0F88();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PrivateCloudCompute_TransparencyLog_ATLogInsertRequest.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogInsertRequest(0) + 48);
  v4 = sub_22FFB0F88();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PrivateCloudCompute_TransparencyLog_ATLogInsertRequest.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = xmmword_22FFB6370;
  *(a1 + 80) = xmmword_22FFB6370;
  *(a1 + 96) = xmmword_22FFB6370;
  *(a1 + 112) = 1;
  type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogInsertRequest(0);
  return _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
}

uint64_t PrivateCloudCompute_TransparencyLog_ATLogInsertResponse.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogInsertResponse(0) + 20);
  v4 = sub_22FFB0F88();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PrivateCloudCompute_TransparencyLog_ATLogInsertResponse.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogInsertResponse(0) + 20);
  v4 = sub_22FFB0F88();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PrivateCloudCompute_TransparencyLog_ATLogInsertResponse.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogInsertResponse(0);
  return _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
}

void PrivateCloudCompute_TransparencyLog_ATLogProofRequest.version.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t PrivateCloudCompute_TransparencyLog_ATLogProofRequest.version.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

void PrivateCloudCompute_TransparencyLog_ATLogProofRequest.application.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
}

uint64_t PrivateCloudCompute_TransparencyLog_ATLogProofRequest.application.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 16) = *result;
  *(v1 + 24) = v2;
  return result;
}

uint64_t PrivateCloudCompute_TransparencyLog_ATLogProofRequest.dataHash.getter()
{
  v1 = *(v0 + 32);
  sub_22FEA5608(v1, *(v0 + 40));
  return v1;
}

uint64_t PrivateCloudCompute_TransparencyLog_ATLogProofRequest.dataHash.setter(uint64_t a1, uint64_t a2)
{
  result = sub_22FEA55AC(*(v2 + 32), *(v2 + 40));
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

void PrivateCloudCompute_TransparencyLog_ATLogProofRequest.releaseType.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  *a1 = *(v1 + 48);
  *(a1 + 8) = v2;
}

uint64_t PrivateCloudCompute_TransparencyLog_ATLogProofRequest.releaseType.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 48) = *result;
  *(v1 + 56) = v2;
  return result;
}

uint64_t PrivateCloudCompute_TransparencyLog_ATLogProofRequest.dataHashes.setter(uint64_t a1)
{

  *(v1 + 64) = a1;
  return result;
}

uint64_t PrivateCloudCompute_TransparencyLog_ATLogProofRequest.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = xmmword_22FFB33B0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *(a1 + 64) = MEMORY[0x277D84F90];
  type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofRequest(0);
  return _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
}

uint64_t PrivateCloudCompute_TransparencyLog_ATLogProofResponse.proofs.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF37C0, &unk_22FFB5C60);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v14 - v4;
  v6 = type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofResponse(0);
  sub_22FEBF3A4(v1 + *(v6 + 32), v5, &qword_27DAF37C0, &unk_22FFB5C60);
  v7 = type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_22FEF6B58(v5, a1, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs);
  }

  _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
  v9 = *(v7 + 20);
  v10 = type metadata accessor for LogEntry(0);
  (*(*(v10 - 8) + 56))(a1 + v9, 1, 1, v10);
  v11 = *(v7 + 24);
  v12 = type metadata accessor for PrivateCloudCompute_TransparencyLog_LogConsistency(0);
  (*(*(v12 - 8) + 56))(a1 + v11, 1, 1, v12);
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_22FEAEA34(v5, &qword_27DAF37C0, &unk_22FFB5C60);
  }

  return result;
}

uint64_t sub_22FEF5B84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF37C0, &unk_22FFB5C60);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  v7 = type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofResponse(0);
  sub_22FEBF3A4(a1 + *(v7 + 32), v6, &qword_27DAF37C0, &unk_22FFB5C60);
  v8 = type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_22FEF6B58(v6, a2, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs);
  }

  _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
  v10 = *(v8 + 20);
  v11 = type metadata accessor for LogEntry(0);
  (*(*(v11 - 8) + 56))(a2 + v10, 1, 1, v11);
  v12 = *(v8 + 24);
  v13 = type metadata accessor for PrivateCloudCompute_TransparencyLog_LogConsistency(0);
  (*(*(v13 - 8) + 56))(a2 + v12, 1, 1, v13);
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_22FEAEA34(v6, &qword_27DAF37C0, &unk_22FFB5C60);
  }

  return result;
}

uint64_t sub_22FEF5D64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FEF6E68(a1, v7, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs);
  v8 = *(type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofResponse(0) + 32);
  sub_22FEAEA34(a2 + v8, &qword_27DAF37C0, &unk_22FFB5C60);
  sub_22FEF6B58(v7, a2 + v8, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t PrivateCloudCompute_TransparencyLog_ATLogProofResponse.proofs.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofResponse(0) + 32);
  sub_22FEAEA34(v1 + v3, &qword_27DAF37C0, &unk_22FFB5C60);
  sub_22FEF6B58(a1, v1 + v3, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs);
  v4 = type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t PrivateCloudCompute_TransparencyLog_ATLogProofs.init()@<X0>(uint64_t a1@<X8>)
{
  _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
  v2 = type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs(0);
  v3 = *(v2 + 20);
  v4 = type metadata accessor for LogEntry(0);
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v5 = *(v2 + 24);
  v6 = type metadata accessor for PrivateCloudCompute_TransparencyLog_LogConsistency(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1 + v5, 1, 1, v6);
}

void (*PrivateCloudCompute_TransparencyLog_ATLogProofResponse.proofs.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF37C0, &unk_22FFB5C60) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofResponse(0) + 32);
  *(v5 + 12) = v15;
  sub_22FEBF3A4(v1 + v15, v8, &qword_27DAF37C0, &unk_22FFB5C60);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
    v17 = *(v9 + 20);
    v18 = type metadata accessor for LogEntry(0);
    (*(*(v18 - 8) + 56))(v14 + v17, 1, 1, v18);
    v19 = *(v9 + 24);
    v20 = type metadata accessor for PrivateCloudCompute_TransparencyLog_LogConsistency(0);
    (*(*(v20 - 8) + 56))(v14 + v19, 1, 1, v20);
    if (v16(v8, 1, v9) != 1)
    {
      sub_22FEAEA34(v8, &qword_27DAF37C0, &unk_22FFB5C60);
    }
  }

  else
  {
    sub_22FEF6B58(v8, v14, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs);
  }

  return sub_22FEF6304;
}

BOOL PrivateCloudCompute_TransparencyLog_ATLogProofResponse.hasProofs.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF37C0, &unk_22FFB5C60);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofResponse(0);
  sub_22FEBF3A4(v0 + *(v4 + 32), v3, &qword_27DAF37C0, &unk_22FFB5C60);
  v5 = type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs(0);
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  sub_22FEAEA34(v3, &qword_27DAF37C0, &unk_22FFB5C60);
  return v6;
}

Swift::Void __swiftcall PrivateCloudCompute_TransparencyLog_ATLogProofResponse.clearProofs()()
{
  v1 = *(type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofResponse(0) + 32);
  sub_22FEAEA34(v0 + v1, &qword_27DAF37C0, &unk_22FFB5C60);
  v2 = type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t PrivateCloudCompute_TransparencyLog_ATLogProofResponse.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofResponse(0) + 28);
  v4 = sub_22FFB0F88();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PrivateCloudCompute_TransparencyLog_ATLogProofResponse.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofResponse(0) + 28);
  v4 = sub_22FFB0F88();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PrivateCloudCompute_TransparencyLog_ATLogProofResponse.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = xmmword_22FFB33B0;
  *(a1 + 32) = 0;
  v2 = type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofResponse(0);
  _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
  v3 = *(v2 + 32);
  v4 = type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1 + v3, 1, 1, v4);
}

uint64_t PrivateCloudCompute_TransparencyLog_ATLogProofs.inclusionProof.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2150, &qword_22FFB5CA0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs(0);
  sub_22FEBF3A4(v1 + *(v6 + 20), v5, &qword_27DAF2150, &qword_22FFB5CA0);
  v7 = type metadata accessor for LogEntry(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_22FEF6B58(v5, a1, type metadata accessor for LogEntry);
  }

  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = MEMORY[0x277D84F90];
  *(a1 + 24) = xmmword_22FFB33B0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
  v9 = *(v7 + 40);
  v10 = type metadata accessor for SignedObject(0);
  (*(*(v10 - 8) + 56))(a1 + v9, 1, 1, v10);
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_22FEAEA34(v5, &qword_27DAF2150, &qword_22FFB5CA0);
  }

  return result;
}

uint64_t sub_22FEF6978(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LogEntry(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FEF6E68(a1, v7, type metadata accessor for LogEntry);
  v8 = *(type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs(0) + 20);
  sub_22FEAEA34(a2 + v8, &qword_27DAF2150, &qword_22FFB5CA0);
  sub_22FEF6B58(v7, a2 + v8, type metadata accessor for LogEntry);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t PrivateCloudCompute_TransparencyLog_ATLogProofs.inclusionProof.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs(0) + 20);
  sub_22FEAEA34(v1 + v3, &qword_27DAF2150, &qword_22FFB5CA0);
  sub_22FEF6B58(a1, v1 + v3, type metadata accessor for LogEntry);
  v4 = type metadata accessor for LogEntry(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t sub_22FEF6B58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void (*PrivateCloudCompute_TransparencyLog_ATLogProofs.inclusionProof.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2150, &qword_22FFB5CA0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for LogEntry(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs(0) + 20);
  *(v5 + 12) = v15;
  sub_22FEBF3A4(v1 + v15, v8, &qword_27DAF2150, &qword_22FFB5CA0);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 1;
    *(v14 + 16) = MEMORY[0x277D84F90];
    *(v14 + 24) = xmmword_22FFB33B0;
    *(v14 + 40) = 0;
    *(v14 + 48) = 0;
    *(v14 + 56) = 1;
    _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
    v17 = *(v9 + 40);
    v18 = type metadata accessor for SignedObject(0);
    (*(*(v18 - 8) + 56))(v14 + v17, 1, 1, v18);
    if (v16(v8, 1, v9) != 1)
    {
      sub_22FEAEA34(v8, &qword_27DAF2150, &qword_22FFB5CA0);
    }
  }

  else
  {
    sub_22FEF6B58(v8, v14, type metadata accessor for LogEntry);
  }

  return sub_22FEF6E40;
}

uint64_t sub_22FEF6E68(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22FEF6ED0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

BOOL PrivateCloudCompute_TransparencyLog_ATLogProofs.hasInclusionProof.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2150, &qword_22FFB5CA0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs(0);
  sub_22FEBF3A4(v0 + *(v4 + 20), v3, &qword_27DAF2150, &qword_22FFB5CA0);
  v5 = type metadata accessor for LogEntry(0);
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  sub_22FEAEA34(v3, &qword_27DAF2150, &qword_22FFB5CA0);
  return v6;
}

Swift::Void __swiftcall PrivateCloudCompute_TransparencyLog_ATLogProofs.clearInclusionProof()()
{
  v1 = *(type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs(0) + 20);
  sub_22FEAEA34(v0 + v1, &qword_27DAF2150, &qword_22FFB5CA0);
  v2 = type metadata accessor for LogEntry(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t PrivateCloudCompute_TransparencyLog_ATLogProofs.milestoneConsistency.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2140, &qword_22FFB5C90);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs(0);
  sub_22FEBF3A4(v1 + *(v6 + 24), v5, &qword_27DAF2140, &qword_22FFB5C90);
  v7 = type metadata accessor for PrivateCloudCompute_TransparencyLog_LogConsistency(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_22FEF6B58(v5, a1, type metadata accessor for PrivateCloudCompute_TransparencyLog_LogConsistency);
  }

  _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
  v9 = *(v7 + 20);
  if (qword_281490E10 != -1)
  {
    swift_once();
  }

  *(a1 + v9) = qword_281490E18;
  v10 = v8(v5, 1, v7);

  if (v10 != 1)
  {
    return sub_22FEAEA34(v5, &qword_27DAF2140, &qword_22FFB5C90);
  }

  return result;
}

uint64_t sub_22FEF7258@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2140, &qword_22FFB5C90);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs(0);
  sub_22FEBF3A4(a1 + *(v7 + 24), v6, &qword_27DAF2140, &qword_22FFB5C90);
  v8 = type metadata accessor for PrivateCloudCompute_TransparencyLog_LogConsistency(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_22FEF6B58(v6, a2, type metadata accessor for PrivateCloudCompute_TransparencyLog_LogConsistency);
  }

  _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
  v10 = *(v8 + 20);
  if (qword_281490E10 != -1)
  {
    swift_once();
  }

  *(a2 + v10) = qword_281490E18;
  v11 = v9(v6, 1, v8);

  if (v11 != 1)
  {
    return sub_22FEAEA34(v6, &qword_27DAF2140, &qword_22FFB5C90);
  }

  return result;
}

uint64_t sub_22FEF7404(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrivateCloudCompute_TransparencyLog_LogConsistency(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FEF6E68(a1, v7, type metadata accessor for PrivateCloudCompute_TransparencyLog_LogConsistency);
  v8 = *(type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs(0) + 24);
  sub_22FEAEA34(a2 + v8, &qword_27DAF2140, &qword_22FFB5C90);
  sub_22FEF6B58(v7, a2 + v8, type metadata accessor for PrivateCloudCompute_TransparencyLog_LogConsistency);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t PrivateCloudCompute_TransparencyLog_ATLogProofs.milestoneConsistency.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs(0) + 24);
  sub_22FEAEA34(v1 + v3, &qword_27DAF2140, &qword_22FFB5C90);
  sub_22FEF6B58(a1, v1 + v3, type metadata accessor for PrivateCloudCompute_TransparencyLog_LogConsistency);
  v4 = type metadata accessor for PrivateCloudCompute_TransparencyLog_LogConsistency(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t PrivateCloudCompute_TransparencyLog_LogConsistency.init()@<X0>(uint64_t a1@<X8>)
{
  _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
  v2 = *(type metadata accessor for PrivateCloudCompute_TransparencyLog_LogConsistency(0) + 20);
  if (qword_281490E10 != -1)
  {
    swift_once();
  }

  *(a1 + v2) = qword_281490E18;
}

void (*PrivateCloudCompute_TransparencyLog_ATLogProofs.milestoneConsistency.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2140, &qword_22FFB5C90) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for PrivateCloudCompute_TransparencyLog_LogConsistency(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs(0) + 24);
  *(v5 + 12) = v15;
  sub_22FEBF3A4(v1 + v15, v8, &qword_27DAF2140, &qword_22FFB5C90);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
    v17 = *(v9 + 20);
    if (qword_281490E10 != -1)
    {
      swift_once();
    }

    *(v14 + v17) = qword_281490E18;
    v18 = v16(v8, 1, v9);

    if (v18 != 1)
    {
      sub_22FEAEA34(v8, &qword_27DAF2140, &qword_22FFB5C90);
    }
  }

  else
  {
    sub_22FEF6B58(v8, v14, type metadata accessor for PrivateCloudCompute_TransparencyLog_LogConsistency);
  }

  return sub_22FEF78B8;
}

void sub_22FEF78E0(uint64_t **a1, char a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  v8 = *a1;
  v9 = *(*a1 + 12);
  v10 = (*a1)[4];
  v11 = (*a1)[5];
  v12 = (*a1)[2];
  v13 = (*a1)[3];
  v14 = **a1;
  v15 = (*a1)[1];
  if (a2)
  {
    sub_22FEF6E68(v11, v10, a5);
    sub_22FEAEA34(v14 + v9, a3, a4);
    sub_22FEF6B58(v10, v14 + v9, a5);
    (*(v13 + 56))(v14 + v9, 0, 1, v12);
    sub_22FEF6ED0(v11, a5);
  }

  else
  {
    sub_22FEAEA34(v14 + v9, a3, a4);
    sub_22FEF6B58(v11, v14 + v9, a5);
    (*(v13 + 56))(v14 + v9, 0, 1, v12);
  }

  free(v11);
  free(v10);
  free(v15);

  free(v8);
}

BOOL PrivateCloudCompute_TransparencyLog_ATLogProofs.hasMilestoneConsistency.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2140, &qword_22FFB5C90);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs(0);
  sub_22FEBF3A4(v0 + *(v4 + 24), v3, &qword_27DAF2140, &qword_22FFB5C90);
  v5 = type metadata accessor for PrivateCloudCompute_TransparencyLog_LogConsistency(0);
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  sub_22FEAEA34(v3, &qword_27DAF2140, &qword_22FFB5C90);
  return v6;
}

Swift::Void __swiftcall PrivateCloudCompute_TransparencyLog_ATLogProofs.clearMilestoneConsistency()()
{
  v1 = *(type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs(0) + 24);
  sub_22FEAEA34(v0 + v1, &qword_27DAF2140, &qword_22FFB5C90);
  v2 = type metadata accessor for PrivateCloudCompute_TransparencyLog_LogConsistency(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

void (*PrivateCloudCompute_TransparencyLog_LogConsistency.startSlh.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2338, &unk_22FFBB620) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for SignedObject(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for PrivateCloudCompute_TransparencyLog_LogConsistency(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV16CloudAttestation50PrivateCloudCompute_TransparencyLog_LogConsistencyP33_41967CC35744CDFB8E92E7B80EC2B17A13_StorageClass__startSlh;
  swift_beginAccess();
  sub_22FEBF3A4(v16 + v17, v8, &qword_27DAF2338, &unk_22FFBB620);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *v14 = xmmword_22FFB33B0;
    _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
    v19 = *(v9 + 24);
    v20 = type metadata accessor for Signature(0);
    (*(*(v20 - 8) + 56))(&v14[v19], 1, 1, v20);
    if (v18(v8, 1, v9) != 1)
    {
      sub_22FEAEA34(v8, &qword_27DAF2338, &unk_22FFBB620);
    }
  }

  else
  {
    sub_22FEF6B58(v8, v14, type metadata accessor for SignedObject);
  }

  return sub_22FEF7E78;
}

uint64_t sub_22FEF7F14@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2338, &unk_22FFBB620);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v15 - v6;
  v8 = *(v2 + *(type metadata accessor for PrivateCloudCompute_TransparencyLog_LogConsistency(0) + 20));
  v9 = *a1;
  swift_beginAccess();
  sub_22FEBF3A4(v8 + v9, v7, &qword_27DAF2338, &unk_22FFBB620);
  v10 = type metadata accessor for SignedObject(0);
  v11 = *(*(v10 - 8) + 48);
  if (v11(v7, 1, v10) != 1)
  {
    return sub_22FEF6B58(v7, a2, type metadata accessor for SignedObject);
  }

  *a2 = xmmword_22FFB33B0;
  _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
  v12 = *(v10 + 24);
  v13 = type metadata accessor for Signature(0);
  (*(*(v13 - 8) + 56))(&a2[v12], 1, 1, v13);
  result = (v11)(v7, 1, v10);
  if (result != 1)
  {
    return sub_22FEAEA34(v7, &qword_27DAF2338, &unk_22FFBB620);
  }

  return result;
}

uint64_t sub_22FEF80E0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X3>, char *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2338, &unk_22FFBB620);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v16 - v7;
  v9 = *(a1 + *(type metadata accessor for PrivateCloudCompute_TransparencyLog_LogConsistency(0) + 20));
  v10 = *a2;
  swift_beginAccess();
  sub_22FEBF3A4(v9 + v10, v8, &qword_27DAF2338, &unk_22FFBB620);
  v11 = type metadata accessor for SignedObject(0);
  v12 = *(*(v11 - 8) + 48);
  if (v12(v8, 1, v11) != 1)
  {
    return sub_22FEF6B58(v8, a3, type metadata accessor for SignedObject);
  }

  *a3 = xmmword_22FFB33B0;
  _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
  v13 = *(v11 + 24);
  v14 = type metadata accessor for Signature(0);
  (*(*(v14 - 8) + 56))(&a3[v13], 1, 1, v14);
  result = (v12)(v8, 1, v11);
  if (result != 1)
  {
    return sub_22FEAEA34(v8, &qword_27DAF2338, &unk_22FFBB620);
  }

  return result;
}

uint64_t sub_22FEF82B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2338, &unk_22FFBB620);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = type metadata accessor for SignedObject(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FEF6E68(a1, v14, type metadata accessor for SignedObject);
  v15 = *(type metadata accessor for PrivateCloudCompute_TransparencyLog_LogConsistency(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *(a2 + v15);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for PrivateCloudCompute_TransparencyLog_LogConsistency._StorageClass(0);
    swift_allocObject();
    v17 = sub_22FEFECEC(v17);
    *(a2 + v15) = v17;
  }

  sub_22FEF6B58(v14, v10, type metadata accessor for SignedObject);
  (*(v12 + 56))(v10, 0, 1, v11);
  v18 = *a5;
  swift_beginAccess();
  sub_22FEFF0DC(v10, v17 + v18, &qword_27DAF2338, &unk_22FFBB620);
  return swift_endAccess();
}

uint64_t sub_22FEF84AC(uint64_t a1, uint64_t *a2)
{
  v4 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2338, &unk_22FFBB620);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - v7;
  v9 = *(type metadata accessor for PrivateCloudCompute_TransparencyLog_LogConsistency(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v2 + v9);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for PrivateCloudCompute_TransparencyLog_LogConsistency._StorageClass(0);
    swift_allocObject();
    v11 = sub_22FEFECEC(v11);
    *(v4 + v9) = v11;
  }

  sub_22FEF6B58(a1, v8, type metadata accessor for SignedObject);
  v12 = type metadata accessor for SignedObject(0);
  (*(*(v12 - 8) + 56))(v8, 0, 1, v12);
  v13 = *a2;
  swift_beginAccess();
  sub_22FEFF0DC(v8, v11 + v13, &qword_27DAF2338, &unk_22FFBB620);
  return swift_endAccess();
}

void (*PrivateCloudCompute_TransparencyLog_LogConsistency.endSlh.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2338, &unk_22FFBB620) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for SignedObject(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for PrivateCloudCompute_TransparencyLog_LogConsistency(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV16CloudAttestation50PrivateCloudCompute_TransparencyLog_LogConsistencyP33_41967CC35744CDFB8E92E7B80EC2B17A13_StorageClass__endSlh;
  swift_beginAccess();
  sub_22FEBF3A4(v16 + v17, v8, &qword_27DAF2338, &unk_22FFBB620);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *v14 = xmmword_22FFB33B0;
    _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
    v19 = *(v9 + 24);
    v20 = type metadata accessor for Signature(0);
    (*(*(v20 - 8) + 56))(&v14[v19], 1, 1, v20);
    if (v18(v8, 1, v9) != 1)
    {
      sub_22FEAEA34(v8, &qword_27DAF2338, &unk_22FFBB620);
    }
  }

  else
  {
    sub_22FEF6B58(v8, v14, type metadata accessor for SignedObject);
  }

  return sub_22FEF88BC;
}

BOOL sub_22FEF891C(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v17 - v10;
  v12 = *(v4 + *(type metadata accessor for PrivateCloudCompute_TransparencyLog_LogConsistency(0) + 20));
  v13 = *a3;
  swift_beginAccess();
  sub_22FEBF3A4(v12 + v13, v11, a1, a2);
  v14 = a4(0);
  v15 = (*(*(v14 - 8) + 48))(v11, 1, v14) != 1;
  sub_22FEAEA34(v11, a1, a2);
  return v15;
}

uint64_t sub_22FEF8A64(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t *a4)
{
  v9 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v19 - v11;
  v13 = *(type metadata accessor for PrivateCloudCompute_TransparencyLog_LogConsistency(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(v4 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for PrivateCloudCompute_TransparencyLog_LogConsistency._StorageClass(0);
    swift_allocObject();
    v15 = sub_22FEFECEC(v15);
    *(v9 + v13) = v15;
  }

  v16 = a3(0);
  (*(*(v16 - 8) + 56))(v12, 1, 1, v16);
  v17 = *a4;
  swift_beginAccess();
  sub_22FEFF0DC(v12, v15 + v17, a1, a2);
  return swift_endAccess();
}

uint64_t PrivateCloudCompute_TransparencyLog_LogConsistency.proofHashes.getter()
{
  type metadata accessor for PrivateCloudCompute_TransparencyLog_LogConsistency(0);
  swift_beginAccess();
}

uint64_t sub_22FEF8C08@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for PrivateCloudCompute_TransparencyLog_LogConsistency(0) + 20));
  v4 = OBJC_IVAR____TtCV16CloudAttestation50PrivateCloudCompute_TransparencyLog_LogConsistencyP33_41967CC35744CDFB8E92E7B80EC2B17A13_StorageClass__proofHashes;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_22FEF8C74(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for PrivateCloudCompute_TransparencyLog_LogConsistency(0) + 20);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(a2 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for PrivateCloudCompute_TransparencyLog_LogConsistency._StorageClass(0);
    swift_allocObject();
    v6 = sub_22FEFECEC(v6);
    *(a2 + v4) = v6;
  }

  v7 = OBJC_IVAR____TtCV16CloudAttestation50PrivateCloudCompute_TransparencyLog_LogConsistencyP33_41967CC35744CDFB8E92E7B80EC2B17A13_StorageClass__proofHashes;
  swift_beginAccess();
  *(v6 + v7) = v3;
}

uint64_t PrivateCloudCompute_TransparencyLog_LogConsistency.proofHashes.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for PrivateCloudCompute_TransparencyLog_LogConsistency(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for PrivateCloudCompute_TransparencyLog_LogConsistency._StorageClass(0);
    swift_allocObject();
    v6 = sub_22FEFECEC(v6);
    *(v2 + v4) = v6;
  }

  v7 = OBJC_IVAR____TtCV16CloudAttestation50PrivateCloudCompute_TransparencyLog_LogConsistencyP33_41967CC35744CDFB8E92E7B80EC2B17A13_StorageClass__proofHashes;
  swift_beginAccess();
  *(v6 + v7) = a1;
}

void (*PrivateCloudCompute_TransparencyLog_LogConsistency.proofHashes.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for PrivateCloudCompute_TransparencyLog_LogConsistency(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV16CloudAttestation50PrivateCloudCompute_TransparencyLog_LogConsistencyP33_41967CC35744CDFB8E92E7B80EC2B17A13_StorageClass__proofHashes;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);

  return sub_22FEF8E74;
}

void sub_22FEF8E74(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 80);
  if (a2)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v5 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 88);
      v9 = *(v2 + 80);
      type metadata accessor for PrivateCloudCompute_TransparencyLog_LogConsistency._StorageClass(0);
      swift_allocObject();
      v7 = sub_22FEFECEC(v7);
      *(v9 + v8) = v7;
    }

    v10 = OBJC_IVAR____TtCV16CloudAttestation50PrivateCloudCompute_TransparencyLog_LogConsistencyP33_41967CC35744CDFB8E92E7B80EC2B17A13_StorageClass__proofHashes;
    swift_beginAccess();
    *(v7 + v10) = v3;
  }

  else
  {
    v11 = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v5 + v4);
    if ((v11 & 1) == 0)
    {
      v13 = *(v2 + 88);
      v14 = *(v2 + 80);
      type metadata accessor for PrivateCloudCompute_TransparencyLog_LogConsistency._StorageClass(0);
      swift_allocObject();
      v12 = sub_22FEFECEC(v12);
      *(v14 + v13) = v12;
    }

    v15 = OBJC_IVAR____TtCV16CloudAttestation50PrivateCloudCompute_TransparencyLog_LogConsistencyP33_41967CC35744CDFB8E92E7B80EC2B17A13_StorageClass__proofHashes;
    swift_beginAccess();
    *(v12 + v15) = v3;
  }

  free(v2);
}

uint64_t sub_22FEF8FC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2150, &qword_22FFB5CA0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = type metadata accessor for LogEntry(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FEF6E68(a1, v14, type metadata accessor for LogEntry);
  v15 = *(type metadata accessor for PrivateCloudCompute_TransparencyLog_LogConsistency(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *(a2 + v15);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for PrivateCloudCompute_TransparencyLog_LogConsistency._StorageClass(0);
    swift_allocObject();
    v17 = sub_22FEFECEC(v17);
    *(a2 + v15) = v17;
  }

  sub_22FEF6B58(v14, v10, type metadata accessor for LogEntry);
  (*(v12 + 56))(v10, 0, 1, v11);
  v18 = *a5;
  swift_beginAccess();
  sub_22FEFF0DC(v10, v17 + v18, &qword_27DAF2150, &qword_22FFB5CA0);
  return swift_endAccess();
}

uint64_t sub_22FEF91BC(uint64_t a1, uint64_t *a2)
{
  v4 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2150, &qword_22FFB5CA0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - v7;
  v9 = *(type metadata accessor for PrivateCloudCompute_TransparencyLog_LogConsistency(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v2 + v9);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for PrivateCloudCompute_TransparencyLog_LogConsistency._StorageClass(0);
    swift_allocObject();
    v11 = sub_22FEFECEC(v11);
    *(v4 + v9) = v11;
  }

  sub_22FEF6B58(a1, v8, type metadata accessor for LogEntry);
  v12 = type metadata accessor for LogEntry(0);
  (*(*(v12 - 8) + 56))(v8, 0, 1, v12);
  v13 = *a2;
  swift_beginAccess();
  sub_22FEFF0DC(v8, v11 + v13, &qword_27DAF2150, &qword_22FFB5CA0);
  return swift_endAccess();
}

void (*PrivateCloudCompute_TransparencyLog_LogConsistency.patInclusionProof.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2150, &qword_22FFB5CA0) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for LogEntry(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for PrivateCloudCompute_TransparencyLog_LogConsistency(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV16CloudAttestation50PrivateCloudCompute_TransparencyLog_LogConsistencyP33_41967CC35744CDFB8E92E7B80EC2B17A13_StorageClass__patInclusionProof;
  swift_beginAccess();
  sub_22FEBF3A4(v16 + v17, v8, &qword_27DAF2150, &qword_22FFB5CA0);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 1;
    *(v14 + 16) = MEMORY[0x277D84F90];
    *(v14 + 24) = xmmword_22FFB33B0;
    *(v14 + 40) = 0;
    *(v14 + 48) = 0;
    *(v14 + 56) = 1;
    _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
    v19 = *(v9 + 40);
    v20 = type metadata accessor for SignedObject(0);
    (*(*(v20 - 8) + 56))(v14 + v19, 1, 1, v20);
    if (v18(v8, 1, v9) != 1)
    {
      sub_22FEAEA34(v8, &qword_27DAF2150, &qword_22FFB5CA0);
    }
  }

  else
  {
    sub_22FEF6B58(v8, v14, type metadata accessor for LogEntry);
  }

  return sub_22FEF95EC;
}

uint64_t sub_22FEF9688@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2150, &qword_22FFB5CA0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v15 - v6;
  v8 = *(v2 + *(type metadata accessor for PrivateCloudCompute_TransparencyLog_LogConsistency(0) + 20));
  v9 = *a1;
  swift_beginAccess();
  sub_22FEBF3A4(v8 + v9, v7, &qword_27DAF2150, &qword_22FFB5CA0);
  v10 = type metadata accessor for LogEntry(0);
  v11 = *(*(v10 - 8) + 48);
  if (v11(v7, 1, v10) != 1)
  {
    return sub_22FEF6B58(v7, a2, type metadata accessor for LogEntry);
  }

  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = MEMORY[0x277D84F90];
  *(a2 + 24) = xmmword_22FFB33B0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 1;
  _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
  v12 = *(v10 + 40);
  v13 = type metadata accessor for SignedObject(0);
  (*(*(v13 - 8) + 56))(a2 + v12, 1, 1, v13);
  result = (v11)(v7, 1, v10);
  if (result != 1)
  {
    return sub_22FEAEA34(v7, &qword_27DAF2150, &qword_22FFB5CA0);
  }

  return result;
}

void (*PrivateCloudCompute_TransparencyLog_LogConsistency.tltInclusionProof.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2150, &qword_22FFB5CA0) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for LogEntry(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for PrivateCloudCompute_TransparencyLog_LogConsistency(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV16CloudAttestation50PrivateCloudCompute_TransparencyLog_LogConsistencyP33_41967CC35744CDFB8E92E7B80EC2B17A13_StorageClass__tltInclusionProof;
  swift_beginAccess();
  sub_22FEBF3A4(v16 + v17, v8, &qword_27DAF2150, &qword_22FFB5CA0);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 1;
    *(v14 + 16) = MEMORY[0x277D84F90];
    *(v14 + 24) = xmmword_22FFB33B0;
    *(v14 + 40) = 0;
    *(v14 + 48) = 0;
    *(v14 + 56) = 1;
    _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
    v19 = *(v9 + 40);
    v20 = type metadata accessor for SignedObject(0);
    (*(*(v20 - 8) + 56))(v14 + v19, 1, 1, v20);
    if (v18(v8, 1, v9) != 1)
    {
      sub_22FEAEA34(v8, &qword_27DAF2150, &qword_22FFB5CA0);
    }
  }

  else
  {
    sub_22FEF6B58(v8, v14, type metadata accessor for LogEntry);
  }

  return sub_22FEF9B40;
}

void sub_22FEF9B70(uint64_t *a1, char a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v8 = *a1;
  v9 = *(*a1 + 128);
  if (a2)
  {
    v10 = *(v8 + 72);
    sub_22FEF6E68(*(v8 + 120), *(v8 + 112), a3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v10 + v9);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = *(v8 + 128);
      v14 = *(v8 + 72);
      type metadata accessor for PrivateCloudCompute_TransparencyLog_LogConsistency._StorageClass(0);
      swift_allocObject();
      v12 = sub_22FEFECEC(v12);
      *(v14 + v13) = v12;
    }

    v16 = *(v8 + 112);
    v15 = *(v8 + 120);
    v17 = *(v8 + 96);
    v18 = *(v8 + 104);
    v20 = *(v8 + 80);
    v19 = *(v8 + 88);
    sub_22FEF6B58(v16, v20, a3);
    (*(v18 + 56))(v20, 0, 1, v17);
    v21 = *a4;
    swift_beginAccess();
    sub_22FEFF0DC(v20, v12 + v21, a5, a6);
    swift_endAccess();
    sub_22FEF6ED0(v15, a3);
  }

  else
  {
    v22 = *(v8 + 72);
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v24 = *(v22 + v9);
    if ((v23 & 1) == 0)
    {
      v25 = *(v8 + 128);
      v26 = *(v8 + 72);
      type metadata accessor for PrivateCloudCompute_TransparencyLog_LogConsistency._StorageClass(0);
      swift_allocObject();
      v24 = sub_22FEFECEC(v24);
      *(v26 + v25) = v24;
    }

    v16 = *(v8 + 112);
    v15 = *(v8 + 120);
    v27 = *(v8 + 96);
    v28 = *(v8 + 104);
    v20 = *(v8 + 80);
    v19 = *(v8 + 88);
    sub_22FEF6B58(v15, v20, a3);
    (*(v28 + 56))(v20, 0, 1, v27);
    v29 = *a4;
    swift_beginAccess();
    sub_22FEFF0DC(v20, v24 + v29, a5, a6);
    swift_endAccess();
  }

  free(v15);
  free(v16);
  free(v19);
  free(v20);

  free(v8);
}

uint64_t _s16CloudAttestation07PrivateA35Compute_TransparencyLog_ATLogProofsV13unknownFields21InternalSwiftProtobuf14UnknownStorageVvg_0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22FFB0F88();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t _s16CloudAttestation07PrivateA35Compute_TransparencyLog_ATLogProofsV13unknownFields21InternalSwiftProtobuf14UnknownStorageVvs_0(uint64_t a1)
{
  v3 = sub_22FFB0F88();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t PrivateCloudCompute_TransparencyLog_ATInsertData.data.getter()
{
  v1 = *v0;
  sub_22FEA5608(*v0, *(v0 + 8));
  return v1;
}

uint64_t PrivateCloudCompute_TransparencyLog_ATInsertData.data.setter(uint64_t a1, uint64_t a2)
{
  result = sub_22FEA55AC(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t PrivateCloudCompute_TransparencyLog_ATInsertData.metadata.getter()
{
  v1 = *(v0 + 16);
  sub_22FEA5608(v1, *(v0 + 24));
  return v1;
}

uint64_t PrivateCloudCompute_TransparencyLog_ATInsertData.metadata.setter(uint64_t a1, uint64_t a2)
{
  result = sub_22FEA55AC(*(v2 + 16), *(v2 + 24));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

void PrivateCloudCompute_TransparencyLog_ATInsertData.type.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *(v1 + 32);
  *(a1 + 8) = v2;
}

uint64_t PrivateCloudCompute_TransparencyLog_ATInsertData.type.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 32) = *result;
  *(v1 + 40) = v2;
  return result;
}

uint64_t PrivateCloudCompute_TransparencyLog_ATInsertData.permittedEnvironments.setter(uint64_t a1)
{

  *(v1 + 48) = a1;
  return result;
}

uint64_t PrivateCloudCompute_TransparencyLog_ATInsertData.associatedAssets.setter(uint64_t a1)
{

  *(v1 + 56) = a1;
  return result;
}

uint64_t sub_22FEFA0EC@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 36);
  v5 = sub_22FFB0F88();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_22FEFA188(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 36);
  v5 = sub_22FFB0F88();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t PrivateCloudCompute_TransparencyLog_ATInsertData.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_22FFB33B0;
  *(a1 + 16) = xmmword_22FFB33B0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  v2 = MEMORY[0x277D84F90];
  *(a1 + 48) = MEMORY[0x277D84F90];
  *(a1 + 56) = v2;
  type metadata accessor for PrivateCloudCompute_TransparencyLog_ATInsertData(0);
  return _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
}

uint64_t PrivateCloudCompute_TransparencyLog_AssociatedAsset.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PrivateCloudCompute_TransparencyLog_AssociatedAsset.identifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t PrivateCloudCompute_TransparencyLog_AssociatedAsset.details.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t PrivateCloudCompute_TransparencyLog_AssociatedAsset.details.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_22FEFA3D0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 24);
  v5 = sub_22FFB0F88();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_22FEFA46C(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 24);
  v5 = sub_22FFB0F88();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t PrivateCloudCompute_TransparencyLog_AssociatedAsset.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  type metadata accessor for PrivateCloudCompute_TransparencyLog_AssociatedAsset(0);
  return _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
}

uint64_t PrivateCloudCompute_TransparencyLog_ATActiveRecordsRequest.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PrivateCloudCompute_TransparencyLog_ATActiveRecordsRequest(0) + 32);
  v4 = sub_22FFB0F88();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PrivateCloudCompute_TransparencyLog_ATActiveRecordsRequest.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PrivateCloudCompute_TransparencyLog_ATActiveRecordsRequest(0) + 32);
  v4 = sub_22FFB0F88();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PrivateCloudCompute_TransparencyLog_ATActiveRecordsRequest.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = MEMORY[0x277D84F90];
  type metadata accessor for PrivateCloudCompute_TransparencyLog_ATActiveRecordsRequest(0);
  return _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
}

uint64_t PrivateCloudCompute_TransparencyLog_ATActiveRecordsResponse.leaves.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t PrivateCloudCompute_TransparencyLog_ATActiveRecordsResponse.Leaf.rawData.getter()
{
  v1 = *(v0 + 40);
  sub_22FEA5608(v1, *(v0 + 48));
  return v1;
}

uint64_t PrivateCloudCompute_TransparencyLog_ATActiveRecordsResponse.Leaf.rawData.setter(uint64_t a1, uint64_t a2)
{
  result = sub_22FEA55AC(*(v2 + 40), *(v2 + 48));
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t PrivateCloudCompute_TransparencyLog_ATActiveRecordsResponse.Leaf.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PrivateCloudCompute_TransparencyLog_ATActiveRecordsResponse.Leaf(0) + 40);
  v4 = sub_22FFB0F88();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PrivateCloudCompute_TransparencyLog_ATActiveRecordsResponse.Leaf.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PrivateCloudCompute_TransparencyLog_ATActiveRecordsResponse.Leaf(0) + 40);
  v4 = sub_22FFB0F88();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PrivateCloudCompute_TransparencyLog_ATActiveRecordsResponse.Leaf.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = xmmword_22FFB33B0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = xmmword_22FFB6370;
  *(a1 + 64) = xmmword_22FFB6370;
  type metadata accessor for PrivateCloudCompute_TransparencyLog_ATActiveRecordsResponse.Leaf(0);
  return _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
}

uint64_t sub_22FEFAB6C@<X0>(void (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = MEMORY[0x277D84F90];
  a1(0);
  return _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
}

uint64_t sub_22FEFABC0()
{
  v0 = sub_22FFB12C8();
  __swift_allocate_value_buffer(v0, qword_27DAF21D8);
  __swift_project_value_buffer(v0, qword_27DAF21D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2638, &unk_22FFB7B70);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2640, &qword_22FFBDAE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_22FFB6380;
  v4 = v18 + v3 + v1[14];
  *(v18 + v3) = 0;
  *v4 = "UNKNOWN";
  *(v4 + 8) = 7;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_22FFB1298();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v18 + v3 + v2 + v1[14];
  *(v18 + v3 + v2) = 1;
  *v8 = "RELEASE";
  *(v8 + 8) = 7;
  *(v8 + 16) = 2;
  v7();
  v9 = (v18 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "KEYBUNDLE_TGT";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v7();
  v11 = (v18 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "KEYBUNDLE_OTT";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v7();
  v13 = (v18 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "KEYBUNDLE_OHTTP";
  *(v14 + 1) = 15;
  v14[16] = 2;
  v7();
  v15 = (v18 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 100;
  *v16 = "TEST_MARKER";
  *(v16 + 1) = 11;
  v16[16] = 2;
  v7();
  return sub_22FFB12A8();
}

uint64_t sub_22FEFAEC8()
{
  v0 = sub_22FFB12C8();
  __swift_allocate_value_buffer(v0, qword_27DAF21F0);
  __swift_project_value_buffer(v0, qword_27DAF21F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2638, &unk_22FFB7B70);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2640, &qword_22FFBDAE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22FFB2D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "PRODUCTION";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22FFB1298();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "SEED";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  return sub_22FFB12A8();
}

uint64_t sub_22FEFB0F4()
{
  v0 = sub_22FFB12C8();
  __swift_allocate_value_buffer(v0, qword_27DAF2208);
  __swift_project_value_buffer(v0, qword_27DAF2208);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2638, &unk_22FFB7B70);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2640, &qword_22FFBDAE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_22FFB6390;
  v4 = v23 + v3;
  v5 = v23 + v3 + v1[14];
  *(v23 + v3) = 1;
  *v5 = "version";
  *(v5 + 8) = 7;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_22FFB1298();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "application";
  *(v9 + 8) = 11;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "type";
  *(v11 + 1) = 4;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "expiryMs";
  *(v13 + 1) = 8;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "data";
  *(v15 + 1) = 4;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "unhashedMetadata";
  *(v17 + 1) = 16;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "insertData";
  *(v19 + 1) = 10;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "releaseType";
  *(v21 + 1) = 11;
  v21[16] = 2;
  v8();
  return sub_22FFB12A8();
}

uint64_t PrivateCloudCompute_TransparencyLog_ATLogInsertRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_22FFB1058();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result > 4)
      {
        if (result >= 8)
        {
          if (result == 8)
          {
            v6 = v3;
            sub_22FF03D54();
            goto LABEL_5;
          }
        }

        else
        {
          sub_22FFB10C8();
        }
      }

      else if (result > 2)
      {
        if (result == 3)
        {
          v6 = v3;
          sub_22FF03D00();
          goto LABEL_5;
        }

        sub_22FFB1108();
      }

      else
      {
        if (result == 1)
        {
          v6 = v3;
          sub_22FF03C58();
LABEL_5:
          v3 = v6;
          sub_22FFB1098();
          goto LABEL_6;
        }

        if (result == 2)
        {
          v6 = v3;
          sub_22FF03CAC();
          goto LABEL_5;
        }
      }

LABEL_6:
      result = sub_22FFB1058();
    }
  }

  return result;
}

uint64_t PrivateCloudCompute_TransparencyLog_ATLogInsertRequest.traverse<A>(visitor:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  if (*v3)
  {
    sub_22FF03C58();
    v6 = sub_22FFB1208();
    if (v4)
    {
      return v6;
    }

    v5 = 0;
  }

  if (v3[2])
  {
    sub_22FF03CAC();
    v6 = sub_22FFB1208();
    if (v5)
    {
      return v6;
    }

    v5 = 0;
  }

  if (v3[4])
  {
    sub_22FF03D00();
    v7 = v5;
    v6 = sub_22FFB1208();
    if (v5)
    {
      return v6;
    }

    if (!v3[6])
    {
      goto LABEL_13;
    }
  }

  else
  {
    v7 = v5;
    if (!v3[6])
    {
      goto LABEL_13;
    }
  }

  v6 = sub_22FFB1268();
  if (v7)
  {
    return v6;
  }

LABEL_13:
  v8 = v3[7];
  v9 = v3[8];
  v10 = v9 >> 62;
  if ((v9 >> 62) > 1)
  {
    if (v10 != 2)
    {
      goto LABEL_22;
    }

    v11 = *(v8 + 16);
    v12 = *(v8 + 24);
  }

  else
  {
    if (!v10)
    {
      if ((v9 & 0xFF000000000000) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }

    v11 = v8;
    v12 = v8 >> 32;
  }

  if (v11 == v12)
  {
    goto LABEL_22;
  }

LABEL_21:
  v6 = sub_22FFB1228();
  if (v7)
  {
    return v6;
  }

LABEL_22:
  v13 = v3[9];
  v14 = v3[10];
  v15 = v14 >> 62;
  if ((v14 >> 62) > 1)
  {
    if (v15 != 2)
    {
      goto LABEL_31;
    }

    v16 = *(v13 + 16);
    v17 = *(v13 + 24);
  }

  else
  {
    if (!v15)
    {
      if ((v14 & 0xFF000000000000) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_30;
    }

    v16 = v13;
    v17 = v13 >> 32;
  }

  if (v16 == v17)
  {
    goto LABEL_31;
  }

LABEL_30:
  v6 = sub_22FFB1228();
  if (v7)
  {
    return v6;
  }

LABEL_31:
  v18 = v3[11];
  v19 = v3[12];
  v20 = v19 >> 62;
  if ((v19 >> 62) > 1)
  {
    if (v20 != 2)
    {
      goto LABEL_40;
    }

    v21 = *(v18 + 16);
    v22 = *(v18 + 24);
  }

  else
  {
    if (!v20)
    {
      if ((v19 & 0xFF000000000000) == 0)
      {
        goto LABEL_40;
      }

LABEL_39:
      v6 = sub_22FFB1228();
      if (v7)
      {
        return v6;
      }

      goto LABEL_40;
    }

    v21 = v18;
    v22 = v18 >> 32;
  }

  if (v21 != v22)
  {
    goto LABEL_39;
  }

LABEL_40:
  if (!v3[13] || (sub_22FF03D54(), v6 = sub_22FFB1208(), !v7))
  {
    type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogInsertRequest(0);
    return sub_22FFB0F68();
  }

  return v6;
}

uint64_t sub_22FEFB908@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = xmmword_22FFB6370;
  *(a1 + 80) = xmmword_22FFB6370;
  *(a1 + 96) = xmmword_22FFB6370;
  *(a1 + 112) = 1;
  return _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
}

uint64_t sub_22FEFB978@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 48);
  v5 = sub_22FFB0F88();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_22FEFB9EC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  v5 = sub_22FFB0F88();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_22FEFBAB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FF04DCC(&qword_27DAF2630, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogInsertRequest, &protocol conformance descriptor for PrivateCloudCompute_TransparencyLog_ATLogInsertRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22FEFBB54(uint64_t a1)
{
  v2 = sub_22FF04DCC(&qword_27DAF2440, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogInsertRequest, &protocol conformance descriptor for PrivateCloudCompute_TransparencyLog_ATLogInsertRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22FEFBBC0(uint64_t a1, uint64_t a2)
{
  sub_22FF04DCC(&qword_27DAF2440, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogInsertRequest, &protocol conformance descriptor for PrivateCloudCompute_TransparencyLog_ATLogInsertRequest);

  return sub_22FFB11A8();
}

uint64_t sub_22FEFBC5C()
{
  v0 = sub_22FFB12C8();
  __swift_allocate_value_buffer(v0, qword_27DAF2220);
  __swift_project_value_buffer(v0, qword_27DAF2220);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2638, &unk_22FFB7B70);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2640, &qword_22FFBDAE0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_22FFB2D10;
  v4 = v3 + v2 + v1[14];
  *(v3 + v2) = 1;
  *v4 = "status";
  *(v4 + 8) = 6;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_22FFB1298();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  return sub_22FFB12A8();
}

uint64_t PrivateCloudCompute_TransparencyLog_ATLogInsertResponse.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_22FFB1058();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        sub_22FF04D78();
        sub_22FFB1098();
      }

      result = sub_22FFB1058();
    }
  }

  return result;
}

uint64_t PrivateCloudCompute_TransparencyLog_ATLogInsertResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (sub_22FF04D78(), result = sub_22FFB1208(), !v4))
  {
    type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogInsertResponse(0);
    return sub_22FFB0F68();
  }

  return result;
}

uint64_t sub_22FEFBF8C@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  return _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
}

uint64_t sub_22FEFBFD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_22FFB0F88();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_22FEFC048(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = sub_22FFB0F88();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_22FEFC110(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FF04DCC(&qword_27DAF2628, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogInsertResponse, &protocol conformance descriptor for PrivateCloudCompute_TransparencyLog_ATLogInsertResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22FEFC1B0(uint64_t a1)
{
  v2 = sub_22FF04DCC(&qword_27DAF2458, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogInsertResponse, &protocol conformance descriptor for PrivateCloudCompute_TransparencyLog_ATLogInsertResponse);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22FEFC21C(uint64_t a1, uint64_t a2)
{
  sub_22FF04DCC(&qword_27DAF2458, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogInsertResponse, &protocol conformance descriptor for PrivateCloudCompute_TransparencyLog_ATLogInsertResponse);

  return sub_22FFB11A8();
}

uint64_t sub_22FEFC2B8()
{
  v0 = sub_22FFB12C8();
  __swift_allocate_value_buffer(v0, qword_27DAF2238);
  __swift_project_value_buffer(v0, qword_27DAF2238);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2638, &unk_22FFB7B70);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2640, &qword_22FFBDAE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22FFB2F70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "version";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22FFB1298();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "application";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "dataHash";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "releaseType";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "dataHashes";
  *(v15 + 8) = 10;
  *(v15 + 16) = 2;
  v9();
  return sub_22FFB12A8();
}

uint64_t PrivateCloudCompute_TransparencyLog_ATLogProofRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_22FFB1058();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result <= 2)
      {
        if (result == 1)
        {
          v6 = v3;
          sub_22FF03C58();
          goto LABEL_5;
        }

        if (result == 2)
        {
          v6 = v3;
          sub_22FF03CAC();
          goto LABEL_5;
        }
      }

      else
      {
        switch(result)
        {
          case 3:
            sub_22FFB10C8();
            break;
          case 4:
            v6 = v3;
            sub_22FF03D54();
LABEL_5:
            v3 = v6;
            sub_22FFB1098();
            break;
          case 5:
            sub_22FFB10A8();
            break;
        }
      }

      result = sub_22FFB1058();
    }
  }

  return result;
}

uint64_t PrivateCloudCompute_TransparencyLog_ATLogProofRequest.traverse<A>(visitor:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  if (*v3)
  {
    sub_22FF03C58();
    v6 = sub_22FFB1208();
    if (v4)
    {
      return v6;
    }

    v5 = 0;
  }

  if (v3[2])
  {
    sub_22FF03CAC();
    v6 = sub_22FFB1208();
    if (v5)
    {
      return v6;
    }

    v5 = 0;
  }

  v7 = v3[4];
  v8 = v3[5];
  v9 = v8 >> 62;
  if ((v8 >> 62) > 1)
  {
    if (v9 != 2)
    {
      goto LABEL_17;
    }

    v11 = *(v7 + 16);
    v12 = *(v7 + 24);
  }

  else
  {
    if (!v9)
    {
      v10 = v5;
      if ((v8 & 0xFF000000000000) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_15;
    }

    v11 = v7;
    v12 = v7 >> 32;
  }

  v10 = v5;
  if (v11 == v12)
  {
    goto LABEL_17;
  }

LABEL_15:
  v6 = sub_22FFB1228();
  if (v10)
  {
    return v6;
  }

  v5 = 0;
LABEL_17:
  if (v3[6])
  {
    sub_22FF03D54();
    v13 = v5;
    v6 = sub_22FFB1208();
    if (v5)
    {
      return v6;
    }
  }

  else
  {
    v13 = v5;
  }

  if (!*(v3[8] + 16) || (v6 = sub_22FFB1218(), !v13))
  {
    type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofRequest(0);
    return sub_22FFB0F68();
  }

  return v6;
}

uint64_t sub_22FEFC8CC@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = xmmword_22FFB33B0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *(a1 + 64) = MEMORY[0x277D84F90];
  return _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
}

uint64_t sub_22FEFC990(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FF04DCC(&qword_27DAF2620, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofRequest, &protocol conformance descriptor for PrivateCloudCompute_TransparencyLog_ATLogProofRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22FEFCA30(uint64_t a1)
{
  v2 = sub_22FF04DCC(&unk_27DAF3710, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofRequest, &protocol conformance descriptor for PrivateCloudCompute_TransparencyLog_ATLogProofRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22FEFCA9C(uint64_t a1, uint64_t a2)
{
  sub_22FF04DCC(&unk_27DAF3710, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofRequest, &protocol conformance descriptor for PrivateCloudCompute_TransparencyLog_ATLogProofRequest);

  return sub_22FFB11A8();
}

uint64_t sub_22FEFCB38()
{
  v0 = sub_22FFB12C8();
  __swift_allocate_value_buffer(v0, qword_27DAF2250);
  __swift_project_value_buffer(v0, qword_27DAF2250);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2638, &unk_22FFB7B70);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2640, &qword_22FFBDAE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22FFB2F50;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "status";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22FFB1298();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "dataHash";
  *(v10 + 8) = 8;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "proofs";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "expiryMs";
  *(v14 + 1) = 8;
  v14[16] = 2;
  v9();
  return sub_22FFB12A8();
}

uint64_t PrivateCloudCompute_TransparencyLog_ATLogProofResponse.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_22FFB1058();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result > 2)
      {
        if (result == 3)
        {
          sub_22FEFCEAC(a1, v5, a2, a3);
        }

        else if (result == 4)
        {
          sub_22FFB1108();
        }
      }

      else if (result == 1)
      {
        sub_22FF04D78();
        sub_22FFB1098();
      }

      else if (result == 2)
      {
        sub_22FFB10C8();
      }

      result = sub_22FFB1058();
    }
  }

  return result;
}

uint64_t sub_22FEFCEAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofResponse(0);
  type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs(0);
  sub_22FF04DCC(qword_281490ED0, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs, &protocol conformance descriptor for PrivateCloudCompute_TransparencyLog_ATLogProofs);
  return sub_22FFB1128();
}

uint64_t PrivateCloudCompute_TransparencyLog_ATLogProofResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*v3)
  {
    sub_22FF04D78();
    result = sub_22FFB1208();
    if (v4)
    {
      return result;
    }
  }

  v9 = v3[2];
  v10 = v3[3];
  v11 = v10 >> 62;
  if ((v10 >> 62) > 1)
  {
    if (v11 != 2)
    {
      goto LABEL_12;
    }

    v12 = *(v9 + 16);
    v13 = *(v9 + 24);
LABEL_10:
    if (v12 == v13)
    {
      goto LABEL_12;
    }

LABEL_11:
    result = sub_22FFB1228();
    if (v4)
    {
      return result;
    }

    goto LABEL_12;
  }

  if (v11)
  {
    v12 = v9;
    v13 = v9 >> 32;
    goto LABEL_10;
  }

  if ((v10 & 0xFF000000000000) != 0)
  {
    goto LABEL_11;
  }

LABEL_12:
  result = sub_22FEFD0A4(v3, a1, a2, a3);
  if (!v4)
  {
    if (v3[4])
    {
      sub_22FFB1268();
    }

    type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofResponse(0);
    return sub_22FFB0F68();
  }

  return result;
}

uint64_t sub_22FEFD0A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF37C0, &unk_22FFB5C60);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofResponse(0);
  sub_22FEBF3A4(a1 + *(v12 + 32), v7, &qword_27DAF37C0, &unk_22FFB5C60);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_22FEAEA34(v7, &qword_27DAF37C0, &unk_22FFB5C60);
  }

  sub_22FEF6B58(v7, v11, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs);
  sub_22FF04DCC(qword_281490ED0, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs, &protocol conformance descriptor for PrivateCloudCompute_TransparencyLog_ATLogProofs);
  sub_22FFB1288();
  return sub_22FEF6ED0(v11, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs);
}

uint64_t sub_22FEFD300@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = xmmword_22FFB33B0;
  *(a2 + 32) = 0;
  _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
  v4 = *(a1 + 32);
  v5 = type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a2 + v4, 1, 1, v5);
}

uint64_t sub_22FEFD3B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_22FFB0F88();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_22FEFD42C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  v5 = sub_22FFB0F88();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_22FEFD4F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FF04DCC(&qword_27DAF2618, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofResponse, &protocol conformance descriptor for PrivateCloudCompute_TransparencyLog_ATLogProofResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22FEFD594(uint64_t a1)
{
  v2 = sub_22FF04DCC(&qword_27DAF2388, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofResponse, &protocol conformance descriptor for PrivateCloudCompute_TransparencyLog_ATLogProofResponse);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22FEFD600(uint64_t a1, uint64_t a2)
{
  sub_22FF04DCC(&qword_27DAF2388, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofResponse, &protocol conformance descriptor for PrivateCloudCompute_TransparencyLog_ATLogProofResponse);

  return sub_22FFB11A8();
}

uint64_t sub_22FEFD69C()
{
  v0 = sub_22FFB12C8();
  __swift_allocate_value_buffer(v0, qword_27DAF2268);
  __swift_project_value_buffer(v0, qword_27DAF2268);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2638, &unk_22FFB7B70);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2640, &qword_22FFBDAE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22FFB2D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "status";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22FFB1298();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "responses";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  return sub_22FFB12A8();
}

uint64_t PrivateCloudCompute_TransparencyLog_ATLogProofBatchResponse.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_22FFB1058();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        sub_22FF04D78();
        sub_22FFB1098();
      }

      else if (result == 2)
      {
        type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofResponse(0);
        sub_22FF04DCC(&qword_27DAF2388, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofResponse, &protocol conformance descriptor for PrivateCloudCompute_TransparencyLog_ATLogProofResponse);
        sub_22FFB1118();
      }

      result = sub_22FFB1058();
    }
  }

  return result;
}

uint64_t PrivateCloudCompute_TransparencyLog_ATLogProofBatchResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (sub_22FF04D78(), result = sub_22FFB1208(), !v4))
  {
    if (!*(v3[2] + 16) || (type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofResponse(0), sub_22FF04DCC(&qword_27DAF2388, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofResponse, &protocol conformance descriptor for PrivateCloudCompute_TransparencyLog_ATLogProofResponse), result = sub_22FFB1278(), !v4))
    {
      type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofBatchResponse(0);
      return sub_22FFB0F68();
    }
  }

  return result;
}

uint64_t sub_22FEFDB90(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FF04DCC(&qword_27DAF2610, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofBatchResponse, &protocol conformance descriptor for PrivateCloudCompute_TransparencyLog_ATLogProofBatchResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22FEFDC30(uint64_t a1)
{
  v2 = sub_22FF04DCC(&qword_27DAF3720, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofBatchResponse, &protocol conformance descriptor for PrivateCloudCompute_TransparencyLog_ATLogProofBatchResponse);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22FEFDC9C(uint64_t a1, uint64_t a2)
{
  sub_22FF04DCC(&qword_27DAF3720, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofBatchResponse, &protocol conformance descriptor for PrivateCloudCompute_TransparencyLog_ATLogProofBatchResponse);

  return sub_22FFB11A8();
}

uint64_t sub_22FEFDD38()
{
  v0 = sub_22FFB12C8();
  __swift_allocate_value_buffer(v0, qword_27DAF2280);
  __swift_project_value_buffer(v0, qword_27DAF2280);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2638, &unk_22FFB7B70);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2640, &qword_22FFBDAE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22FFB2D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "inclusionProof";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22FFB1298();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "milestoneConsistency";
  *(v10 + 1) = 20;
  v10[16] = 2;
  v9();
  return sub_22FFB12A8();
}

uint64_t PrivateCloudCompute_TransparencyLog_ATLogProofs.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_22FFB1058();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_22FEFDFB8(a1, v5, a2, a3);
    }

    else if (result == 2)
    {
      sub_22FEFE06C(a1, v5, a2, a3);
    }
  }

  return result;
}

uint64_t sub_22FEFDFB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs(0);
  type metadata accessor for LogEntry(0);
  sub_22FF04DCC(&qword_28148F4A8, type metadata accessor for LogEntry, &protocol conformance descriptor for LogEntry);
  return sub_22FFB1128();
}

uint64_t sub_22FEFE06C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs(0);
  type metadata accessor for PrivateCloudCompute_TransparencyLog_LogConsistency(0);
  sub_22FF04DCC(qword_281490C98, type metadata accessor for PrivateCloudCompute_TransparencyLog_LogConsistency, &protocol conformance descriptor for PrivateCloudCompute_TransparencyLog_LogConsistency);
  return sub_22FFB1128();
}

uint64_t PrivateCloudCompute_TransparencyLog_ATLogProofs.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_22FEFE190(v3, a1, a2, a3);
  if (!v4)
  {
    sub_22FEFE3A0(v3, a1, a2, a3);
    return sub_22FFB0F68();
  }

  return result;
}

uint64_t sub_22FEFE190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2150, &qword_22FFB5CA0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for LogEntry(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs(0);
  sub_22FEBF3A4(a1 + *(v12 + 20), v7, &qword_27DAF2150, &qword_22FFB5CA0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_22FEAEA34(v7, &qword_27DAF2150, &qword_22FFB5CA0);
  }

  sub_22FEF6B58(v7, v11, type metadata accessor for LogEntry);
  sub_22FF04DCC(&qword_28148F4A8, type metadata accessor for LogEntry, &protocol conformance descriptor for LogEntry);
  sub_22FFB1288();
  return sub_22FEF6ED0(v11, type metadata accessor for LogEntry);
}

uint64_t sub_22FEFE3A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2140, &qword_22FFB5C90);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for PrivateCloudCompute_TransparencyLog_LogConsistency(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs(0);
  sub_22FEBF3A4(a1 + *(v12 + 24), v7, &qword_27DAF2140, &qword_22FFB5C90);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_22FEAEA34(v7, &qword_27DAF2140, &qword_22FFB5C90);
  }

  sub_22FEF6B58(v7, v11, type metadata accessor for PrivateCloudCompute_TransparencyLog_LogConsistency);
  sub_22FF04DCC(qword_281490C98, type metadata accessor for PrivateCloudCompute_TransparencyLog_LogConsistency, &protocol conformance descriptor for PrivateCloudCompute_TransparencyLog_LogConsistency);
  sub_22FFB1288();
  return sub_22FEF6ED0(v11, type metadata accessor for PrivateCloudCompute_TransparencyLog_LogConsistency);
}

uint64_t sub_22FEFE5FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
  v4 = *(a1 + 20);
  v5 = type metadata accessor for LogEntry(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = *(a1 + 24);
  v7 = type metadata accessor for PrivateCloudCompute_TransparencyLog_LogConsistency(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a2 + v6, 1, 1, v7);
}

uint64_t sub_22FEFE72C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FF04DCC(&qword_27DAF2608, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs, &protocol conformance descriptor for PrivateCloudCompute_TransparencyLog_ATLogProofs);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22FEFE7CC(uint64_t a1)
{
  v2 = sub_22FF04DCC(qword_281490ED0, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs, &protocol conformance descriptor for PrivateCloudCompute_TransparencyLog_ATLogProofs);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22FEFE838(uint64_t a1, uint64_t a2)
{
  sub_22FF04DCC(qword_281490ED0, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs, &protocol conformance descriptor for PrivateCloudCompute_TransparencyLog_ATLogProofs);

  return sub_22FFB11A8();
}

uint64_t sub_22FEFE8D4()
{
  v0 = sub_22FFB12C8();
  __swift_allocate_value_buffer(v0, qword_27DAF2298);
  __swift_project_value_buffer(v0, qword_27DAF2298);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2638, &unk_22FFB7B70);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2640, &qword_22FFBDAE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22FFB2F70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 3;
  *v6 = "startSLH";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22FFB1298();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 4;
  *v10 = "endSLH";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 5;
  *v12 = "proofHashes";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 8;
  *v14 = "patInclusionProof";
  *(v14 + 1) = 17;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 9;
  *v15 = "tltInclusionProof";
  *(v15 + 8) = 17;
  *(v15 + 16) = 2;
  v9();
  return sub_22FFB12A8();
}

uint64_t sub_22FEFEB8C()
{
  type metadata accessor for PrivateCloudCompute_TransparencyLog_LogConsistency._StorageClass(0);
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtCV16CloudAttestation50PrivateCloudCompute_TransparencyLog_LogConsistencyP33_41967CC35744CDFB8E92E7B80EC2B17A13_StorageClass__startSlh;
  v2 = type metadata accessor for SignedObject(0);
  v3 = *(*(v2 - 8) + 56);
  v3(v0 + v1, 1, 1, v2);
  v3(v0 + OBJC_IVAR____TtCV16CloudAttestation50PrivateCloudCompute_TransparencyLog_LogConsistencyP33_41967CC35744CDFB8E92E7B80EC2B17A13_StorageClass__endSlh, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtCV16CloudAttestation50PrivateCloudCompute_TransparencyLog_LogConsistencyP33_41967CC35744CDFB8E92E7B80EC2B17A13_StorageClass__proofHashes) = MEMORY[0x277D84F90];
  v4 = OBJC_IVAR____TtCV16CloudAttestation50PrivateCloudCompute_TransparencyLog_LogConsistencyP33_41967CC35744CDFB8E92E7B80EC2B17A13_StorageClass__patInclusionProof;
  v5 = type metadata accessor for LogEntry(0);
  v6 = *(*(v5 - 8) + 56);
  v6(v0 + v4, 1, 1, v5);
  result = (v6)(v0 + OBJC_IVAR____TtCV16CloudAttestation50PrivateCloudCompute_TransparencyLog_LogConsistencyP33_41967CC35744CDFB8E92E7B80EC2B17A13_StorageClass__tltInclusionProof, 1, 1, v5);
  qword_281490E18 = v0;
  return result;
}

uint64_t sub_22FEFECEC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2150, &qword_22FFB5CA0);
  MEMORY[0x28223BE20](v3 - 8);
  v26 = &v25 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2338, &unk_22FFBB620);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v25 - v6;
  v8 = OBJC_IVAR____TtCV16CloudAttestation50PrivateCloudCompute_TransparencyLog_LogConsistencyP33_41967CC35744CDFB8E92E7B80EC2B17A13_StorageClass__startSlh;
  v9 = type metadata accessor for SignedObject(0);
  v10 = *(*(v9 - 8) + 56);
  v10(v1 + v8, 1, 1, v9);
  v11 = OBJC_IVAR____TtCV16CloudAttestation50PrivateCloudCompute_TransparencyLog_LogConsistencyP33_41967CC35744CDFB8E92E7B80EC2B17A13_StorageClass__endSlh;
  v10(v1 + OBJC_IVAR____TtCV16CloudAttestation50PrivateCloudCompute_TransparencyLog_LogConsistencyP33_41967CC35744CDFB8E92E7B80EC2B17A13_StorageClass__endSlh, 1, 1, v9);
  v12 = OBJC_IVAR____TtCV16CloudAttestation50PrivateCloudCompute_TransparencyLog_LogConsistencyP33_41967CC35744CDFB8E92E7B80EC2B17A13_StorageClass__proofHashes;
  *(v1 + OBJC_IVAR____TtCV16CloudAttestation50PrivateCloudCompute_TransparencyLog_LogConsistencyP33_41967CC35744CDFB8E92E7B80EC2B17A13_StorageClass__proofHashes) = MEMORY[0x277D84F90];
  v13 = OBJC_IVAR____TtCV16CloudAttestation50PrivateCloudCompute_TransparencyLog_LogConsistencyP33_41967CC35744CDFB8E92E7B80EC2B17A13_StorageClass__patInclusionProof;
  v14 = type metadata accessor for LogEntry(0);
  v15 = *(*(v14 - 8) + 56);
  v15(v1 + v13, 1, 1, v14);
  v25 = OBJC_IVAR____TtCV16CloudAttestation50PrivateCloudCompute_TransparencyLog_LogConsistencyP33_41967CC35744CDFB8E92E7B80EC2B17A13_StorageClass__tltInclusionProof;
  v15(v1 + OBJC_IVAR____TtCV16CloudAttestation50PrivateCloudCompute_TransparencyLog_LogConsistencyP33_41967CC35744CDFB8E92E7B80EC2B17A13_StorageClass__tltInclusionProof, 1, 1, v14);
  v16 = OBJC_IVAR____TtCV16CloudAttestation50PrivateCloudCompute_TransparencyLog_LogConsistencyP33_41967CC35744CDFB8E92E7B80EC2B17A13_StorageClass__startSlh;
  swift_beginAccess();
  sub_22FEBF3A4(a1 + v16, v7, &qword_27DAF2338, &unk_22FFBB620);
  swift_beginAccess();
  sub_22FEFF0DC(v7, v1 + v8, &qword_27DAF2338, &unk_22FFBB620);
  swift_endAccess();
  v17 = OBJC_IVAR____TtCV16CloudAttestation50PrivateCloudCompute_TransparencyLog_LogConsistencyP33_41967CC35744CDFB8E92E7B80EC2B17A13_StorageClass__endSlh;
  swift_beginAccess();
  sub_22FEBF3A4(a1 + v17, v7, &qword_27DAF2338, &unk_22FFBB620);
  swift_beginAccess();
  sub_22FEFF0DC(v7, v1 + v11, &qword_27DAF2338, &unk_22FFBB620);
  swift_endAccess();
  v18 = OBJC_IVAR____TtCV16CloudAttestation50PrivateCloudCompute_TransparencyLog_LogConsistencyP33_41967CC35744CDFB8E92E7B80EC2B17A13_StorageClass__proofHashes;
  swift_beginAccess();
  v19 = *(a1 + v18);
  swift_beginAccess();
  *(v1 + v12) = v19;

  v20 = OBJC_IVAR____TtCV16CloudAttestation50PrivateCloudCompute_TransparencyLog_LogConsistencyP33_41967CC35744CDFB8E92E7B80EC2B17A13_StorageClass__patInclusionProof;
  swift_beginAccess();
  v21 = v26;
  sub_22FEBF3A4(a1 + v20, v26, &qword_27DAF2150, &qword_22FFB5CA0);
  swift_beginAccess();
  sub_22FEFF0DC(v21, v1 + v13, &qword_27DAF2150, &qword_22FFB5CA0);
  swift_endAccess();
  v22 = OBJC_IVAR____TtCV16CloudAttestation50PrivateCloudCompute_TransparencyLog_LogConsistencyP33_41967CC35744CDFB8E92E7B80EC2B17A13_StorageClass__tltInclusionProof;
  swift_beginAccess();
  sub_22FEBF3A4(a1 + v22, v21, &qword_27DAF2150, &qword_22FFB5CA0);

  v23 = v25;
  swift_beginAccess();
  sub_22FEFF0DC(v21, v1 + v23, &qword_27DAF2150, &qword_22FFB5CA0);
  swift_endAccess();
  return v1;
}

uint64_t sub_22FEFF0DC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_22FEFF1E4()
{
  sub_22FEAEA34(v0 + OBJC_IVAR____TtCV16CloudAttestation50PrivateCloudCompute_TransparencyLog_LogConsistencyP33_41967CC35744CDFB8E92E7B80EC2B17A13_StorageClass__startSlh, &qword_27DAF2338, &unk_22FFBB620);
  sub_22FEAEA34(v0 + OBJC_IVAR____TtCV16CloudAttestation50PrivateCloudCompute_TransparencyLog_LogConsistencyP33_41967CC35744CDFB8E92E7B80EC2B17A13_StorageClass__endSlh, &qword_27DAF2338, &unk_22FFBB620);

  sub_22FEAEA34(v0 + OBJC_IVAR____TtCV16CloudAttestation50PrivateCloudCompute_TransparencyLog_LogConsistencyP33_41967CC35744CDFB8E92E7B80EC2B17A13_StorageClass__patInclusionProof, &qword_27DAF2150, &qword_22FFB5CA0);
  sub_22FEAEA34(v0 + OBJC_IVAR____TtCV16CloudAttestation50PrivateCloudCompute_TransparencyLog_LogConsistencyP33_41967CC35744CDFB8E92E7B80EC2B17A13_StorageClass__tltInclusionProof, &qword_27DAF2150, &qword_22FFB5CA0);

  return swift_deallocClassInstance();
}

uint64_t PrivateCloudCompute_TransparencyLog_LogConsistency.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(type metadata accessor for PrivateCloudCompute_TransparencyLog_LogConsistency(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = *(v3 + v8);
    type metadata accessor for PrivateCloudCompute_TransparencyLog_LogConsistency._StorageClass(0);
    swift_allocObject();
    v10 = sub_22FEFECEC(v11);
    *(v4 + v8) = v10;
  }

  return sub_22FEFF380(v10, a1, a2, a3);
}

uint64_t sub_22FEFF380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_22FFB1058();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result <= 4)
      {
        if (result == 3)
        {
          v11 = a2;
          v12 = a1;
          v13 = a3;
          v14 = a4;
          v15 = &OBJC_IVAR____TtCV16CloudAttestation50PrivateCloudCompute_TransparencyLog_LogConsistencyP33_41967CC35744CDFB8E92E7B80EC2B17A13_StorageClass__startSlh;
        }

        else
        {
          if (result != 4)
          {
            goto LABEL_5;
          }

          v11 = a2;
          v12 = a1;
          v13 = a3;
          v14 = a4;
          v15 = &OBJC_IVAR____TtCV16CloudAttestation50PrivateCloudCompute_TransparencyLog_LogConsistencyP33_41967CC35744CDFB8E92E7B80EC2B17A13_StorageClass__endSlh;
        }

        sub_22FEFF4CC(v11, v12, v13, v14, v15);
      }

      else
      {
        switch(result)
        {
          case 5:
            sub_22FEFF5A4(a2, a1, a3, a4);
            break;
          case 8:
            sub_22FEFF630(a2, a1, a3, a4, &OBJC_IVAR____TtCV16CloudAttestation50PrivateCloudCompute_TransparencyLog_LogConsistencyP33_41967CC35744CDFB8E92E7B80EC2B17A13_StorageClass__patInclusionProof);
            break;
          case 9:
            sub_22FEFF630(a2, a1, a3, a4, &OBJC_IVAR____TtCV16CloudAttestation50PrivateCloudCompute_TransparencyLog_LogConsistencyP33_41967CC35744CDFB8E92E7B80EC2B17A13_StorageClass__tltInclusionProof);
            break;
        }
      }

LABEL_5:
      result = sub_22FFB1058();
    }
  }

  return result;
}

uint64_t sub_22FEFF4CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  swift_beginAccess();
  type metadata accessor for SignedObject(0);
  sub_22FF04DCC(&qword_2814909E8, type metadata accessor for SignedObject, &protocol conformance descriptor for SignedObject);
  sub_22FFB1128();
  return swift_endAccess();
}

uint64_t sub_22FEFF5A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_22FFB10A8();
  return swift_endAccess();
}

uint64_t sub_22FEFF630(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  swift_beginAccess();
  type metadata accessor for LogEntry(0);
  sub_22FF04DCC(&qword_28148F4A8, type metadata accessor for LogEntry, &protocol conformance descriptor for LogEntry);
  sub_22FFB1128();
  return swift_endAccess();
}

uint64_t PrivateCloudCompute_TransparencyLog_LogConsistency.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = type metadata accessor for PrivateCloudCompute_TransparencyLog_LogConsistency(0);
  result = sub_22FEFF774(*(v3 + *(v8 + 20)), a1, a2, a3);
  if (!v4)
  {
    return sub_22FFB0F68();
  }

  return result;
}

uint64_t sub_22FEFF774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_22FEFF89C(a1, a2, a3, a4, &OBJC_IVAR____TtCV16CloudAttestation50PrivateCloudCompute_TransparencyLog_LogConsistencyP33_41967CC35744CDFB8E92E7B80EC2B17A13_StorageClass__startSlh, 3);
  if (!v4)
  {
    sub_22FEFF89C(a1, a2, a3, a4, &OBJC_IVAR____TtCV16CloudAttestation50PrivateCloudCompute_TransparencyLog_LogConsistencyP33_41967CC35744CDFB8E92E7B80EC2B17A13_StorageClass__endSlh, 4);
    v10 = OBJC_IVAR____TtCV16CloudAttestation50PrivateCloudCompute_TransparencyLog_LogConsistencyP33_41967CC35744CDFB8E92E7B80EC2B17A13_StorageClass__proofHashes;
    swift_beginAccess();
    if (*(*(a1 + v10) + 16))
    {

      sub_22FFB1218();
    }

    sub_22FEFFABC(a1, a2, a3, a4, &OBJC_IVAR____TtCV16CloudAttestation50PrivateCloudCompute_TransparencyLog_LogConsistencyP33_41967CC35744CDFB8E92E7B80EC2B17A13_StorageClass__patInclusionProof, 8);
    return sub_22FEFFABC(a1, a2, a3, a4, &OBJC_IVAR____TtCV16CloudAttestation50PrivateCloudCompute_TransparencyLog_LogConsistencyP33_41967CC35744CDFB8E92E7B80EC2B17A13_StorageClass__tltInclusionProof, 9);
  }

  return result;
}

uint64_t sub_22FEFF89C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v17[1] = a6;
  v17[2] = a3;
  v17[7] = a4;
  v17[0] = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2338, &unk_22FFBB620);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v17 - v9;
  v11 = type metadata accessor for SignedObject(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a5;
  swift_beginAccess();
  sub_22FEBF3A4(a1 + v15, v10, &qword_27DAF2338, &unk_22FFBB620);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_22FEAEA34(v10, &qword_27DAF2338, &unk_22FFBB620);
  }

  sub_22FEF6B58(v10, v14, type metadata accessor for SignedObject);
  sub_22FF04DCC(&qword_2814909E8, type metadata accessor for SignedObject, &protocol conformance descriptor for SignedObject);
  sub_22FFB1288();
  return sub_22FEF6ED0(v14, type metadata accessor for SignedObject);
}

uint64_t sub_22FEFFABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v17[1] = a6;
  v17[2] = a3;
  v17[7] = a4;
  v17[0] = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2150, &qword_22FFB5CA0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v17 - v9;
  v11 = type metadata accessor for LogEntry(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a5;
  swift_beginAccess();
  sub_22FEBF3A4(a1 + v15, v10, &qword_27DAF2150, &qword_22FFB5CA0);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_22FEAEA34(v10, &qword_27DAF2150, &qword_22FFB5CA0);
  }

  sub_22FEF6B58(v10, v14, type metadata accessor for LogEntry);
  sub_22FF04DCC(&qword_28148F4A8, type metadata accessor for LogEntry, &protocol conformance descriptor for LogEntry);
  sub_22FFB1288();
  return sub_22FEF6ED0(v14, type metadata accessor for LogEntry);
}

BOOL sub_22FEFFCE0(uint64_t a1, uint64_t a2)
{
  v101 = type metadata accessor for LogEntry(0);
  v100 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v96 = &v95 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2158, &unk_22FFB7B80);
  v5 = MEMORY[0x28223BE20](v102);
  v97 = &v95 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v99 = &v95 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2150, &qword_22FFB5CA0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v95 = &v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v107 = &v95 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v98 = &v95 - v14;
  MEMORY[0x28223BE20](v13);
  v108 = &v95 - v15;
  v16 = type metadata accessor for SignedObject(0);
  v111 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v104 = &v95 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2648, &unk_22FFBDAF0);
  v19 = MEMORY[0x28223BE20](v18);
  v106 = &v95 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v95 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2338, &unk_22FFBB620);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v103 = &v95 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v110 = &v95 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v109 = &v95 - v29;
  MEMORY[0x28223BE20](v28);
  v31 = &v95 - v30;
  v32 = OBJC_IVAR____TtCV16CloudAttestation50PrivateCloudCompute_TransparencyLog_LogConsistencyP33_41967CC35744CDFB8E92E7B80EC2B17A13_StorageClass__startSlh;
  swift_beginAccess();
  sub_22FEBF3A4(a1 + v32, v31, &qword_27DAF2338, &unk_22FFBB620);
  v33 = OBJC_IVAR____TtCV16CloudAttestation50PrivateCloudCompute_TransparencyLog_LogConsistencyP33_41967CC35744CDFB8E92E7B80EC2B17A13_StorageClass__startSlh;
  swift_beginAccess();
  v105 = v18;
  v34 = *(v18 + 48);
  sub_22FEBF3A4(v31, v22, &qword_27DAF2338, &unk_22FFBB620);
  v35 = v111;
  v36 = v16;
  sub_22FEBF3A4(a2 + v33, &v22[v34], &qword_27DAF2338, &unk_22FFBB620);
  v37 = *(v35 + 6);
  if (v37(v22, 1, v16) == 1)
  {

    sub_22FEAEA34(v31, &qword_27DAF2338, &unk_22FFBB620);
    v38 = v37(&v22[v34], 1, v16);
    v39 = a2;
    if (v38 == 1)
    {
      v111 = v36;
      sub_22FEAEA34(v22, &qword_27DAF2338, &unk_22FFBB620);
      v40 = a1;
      goto LABEL_8;
    }

LABEL_6:
    sub_22FEAEA34(v22, &qword_27DAF2648, &unk_22FFBDAF0);
    goto LABEL_28;
  }

  v39 = a2;
  v41 = v109;
  sub_22FEBF3A4(v22, v109, &qword_27DAF2338, &unk_22FFBB620);
  if (v37(&v22[v34], 1, v36) == 1)
  {

    sub_22FEAEA34(v31, &qword_27DAF2338, &unk_22FFBB620);
    sub_22FEF6ED0(v41, type metadata accessor for SignedObject);
    goto LABEL_6;
  }

  v111 = v36;
  v42 = &v22[v34];
  v43 = v104;
  sub_22FEF6B58(v42, v104, type metadata accessor for SignedObject);
  v40 = a1;

  v44 = static SignedObject.== infix(_:_:)(v41, v43);
  sub_22FEF6ED0(v43, type metadata accessor for SignedObject);
  sub_22FEAEA34(v31, &qword_27DAF2338, &unk_22FFBB620);
  sub_22FEF6ED0(v41, type metadata accessor for SignedObject);
  sub_22FEAEA34(v22, &qword_27DAF2338, &unk_22FFBB620);
  if ((v44 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_8:
  v45 = OBJC_IVAR____TtCV16CloudAttestation50PrivateCloudCompute_TransparencyLog_LogConsistencyP33_41967CC35744CDFB8E92E7B80EC2B17A13_StorageClass__endSlh;
  swift_beginAccess();
  v46 = v110;
  sub_22FEBF3A4(v40 + v45, v110, &qword_27DAF2338, &unk_22FFBB620);
  v47 = OBJC_IVAR____TtCV16CloudAttestation50PrivateCloudCompute_TransparencyLog_LogConsistencyP33_41967CC35744CDFB8E92E7B80EC2B17A13_StorageClass__endSlh;
  swift_beginAccess();
  v48 = *(v105 + 48);
  v49 = v106;
  sub_22FEBF3A4(v46, v106, &qword_27DAF2338, &unk_22FFBB620);
  v50 = v49;
  sub_22FEBF3A4(v39 + v47, v49 + v48, &qword_27DAF2338, &unk_22FFBB620);
  v51 = v111;
  v52 = v37(v49, 1, v111);
  v53 = v40;
  if (v52 == 1)
  {
    sub_22FEAEA34(v46, &qword_27DAF2338, &unk_22FFBB620);
    v54 = v37((v50 + v48), 1, v51);
    v55 = v107;
    v56 = v108;
    if (v54 == 1)
    {
      sub_22FEAEA34(v50, &qword_27DAF2338, &unk_22FFBB620);
      goto LABEL_17;
    }

LABEL_13:
    v59 = &qword_27DAF2648;
    v60 = &unk_22FFBDAF0;
LABEL_14:
    sub_22FEAEA34(v50, v59, v60);
    goto LABEL_28;
  }

  v57 = v103;
  sub_22FEBF3A4(v50, v103, &qword_27DAF2338, &unk_22FFBB620);
  v58 = v37((v50 + v48), 1, v51);
  v55 = v107;
  v56 = v108;
  if (v58 == 1)
  {
    sub_22FEAEA34(v110, &qword_27DAF2338, &unk_22FFBB620);
    sub_22FEF6ED0(v57, type metadata accessor for SignedObject);
    goto LABEL_13;
  }

  v61 = v50 + v48;
  v62 = v104;
  sub_22FEF6B58(v61, v104, type metadata accessor for SignedObject);
  v63 = v50;
  v64 = static SignedObject.== infix(_:_:)(v57, v62);
  sub_22FEF6ED0(v62, type metadata accessor for SignedObject);
  sub_22FEAEA34(v110, &qword_27DAF2338, &unk_22FFBB620);
  sub_22FEF6ED0(v57, type metadata accessor for SignedObject);
  sub_22FEAEA34(v63, &qword_27DAF2338, &unk_22FFBB620);
  if ((v64 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_17:
  v65 = OBJC_IVAR____TtCV16CloudAttestation50PrivateCloudCompute_TransparencyLog_LogConsistencyP33_41967CC35744CDFB8E92E7B80EC2B17A13_StorageClass__proofHashes;
  swift_beginAccess();
  v66 = *(v53 + v65);
  v67 = OBJC_IVAR____TtCV16CloudAttestation50PrivateCloudCompute_TransparencyLog_LogConsistencyP33_41967CC35744CDFB8E92E7B80EC2B17A13_StorageClass__proofHashes;
  swift_beginAccess();
  v68 = *(v39 + v67);

  v69 = sub_22FEE7C00(v66, v68);

  if ((v69 & 1) == 0)
  {
    goto LABEL_28;
  }

  v70 = OBJC_IVAR____TtCV16CloudAttestation50PrivateCloudCompute_TransparencyLog_LogConsistencyP33_41967CC35744CDFB8E92E7B80EC2B17A13_StorageClass__patInclusionProof;
  swift_beginAccess();
  sub_22FEBF3A4(v53 + v70, v56, &qword_27DAF2150, &qword_22FFB5CA0);
  v71 = OBJC_IVAR____TtCV16CloudAttestation50PrivateCloudCompute_TransparencyLog_LogConsistencyP33_41967CC35744CDFB8E92E7B80EC2B17A13_StorageClass__patInclusionProof;
  swift_beginAccess();
  v72 = *(v102 + 48);
  v73 = v56;
  v74 = v56;
  v75 = v99;
  sub_22FEBF3A4(v73, v99, &qword_27DAF2150, &qword_22FFB5CA0);
  v50 = v75;
  sub_22FEBF3A4(v39 + v71, v75 + v72, &qword_27DAF2150, &qword_22FFB5CA0);
  v76 = *(v100 + 48);
  v77 = v75;
  v78 = v101;
  if (v76(v77, 1, v101) != 1)
  {
    v79 = v98;
    sub_22FEBF3A4(v50, v98, &qword_27DAF2150, &qword_22FFB5CA0);
    if (v76(v50 + v72, 1, v78) == 1)
    {
      sub_22FEAEA34(v108, &qword_27DAF2150, &qword_22FFB5CA0);
      sub_22FEF6ED0(v79, type metadata accessor for LogEntry);
      goto LABEL_23;
    }

    v111 = v76;
    v80 = v50 + v72;
    v81 = v96;
    sub_22FEF6B58(v80, v96, type metadata accessor for LogEntry);
    LODWORD(v110) = static LogEntry.== infix(_:_:)(v79, v81);
    sub_22FEF6ED0(v81, type metadata accessor for LogEntry);
    sub_22FEAEA34(v108, &qword_27DAF2150, &qword_22FFB5CA0);
    sub_22FEF6ED0(v79, type metadata accessor for LogEntry);
    sub_22FEAEA34(v50, &qword_27DAF2150, &qword_22FFB5CA0);
    if (v110)
    {
      goto LABEL_25;
    }

LABEL_28:

    return 0;
  }

  sub_22FEAEA34(v74, &qword_27DAF2150, &qword_22FFB5CA0);
  if (v76(v50 + v72, 1, v78) != 1)
  {
LABEL_23:
    v59 = &qword_27DAF2158;
    v60 = &unk_22FFB7B80;
    goto LABEL_14;
  }

  v111 = v76;
  sub_22FEAEA34(v50, &qword_27DAF2150, &qword_22FFB5CA0);
LABEL_25:
  v82 = OBJC_IVAR____TtCV16CloudAttestation50PrivateCloudCompute_TransparencyLog_LogConsistencyP33_41967CC35744CDFB8E92E7B80EC2B17A13_StorageClass__tltInclusionProof;
  swift_beginAccess();
  sub_22FEBF3A4(v53 + v82, v55, &qword_27DAF2150, &qword_22FFB5CA0);
  v83 = OBJC_IVAR____TtCV16CloudAttestation50PrivateCloudCompute_TransparencyLog_LogConsistencyP33_41967CC35744CDFB8E92E7B80EC2B17A13_StorageClass__tltInclusionProof;
  swift_beginAccess();
  v84 = *(v102 + 48);
  v85 = v97;
  sub_22FEBF3A4(v55, v97, &qword_27DAF2150, &qword_22FFB5CA0);
  v86 = v85;
  sub_22FEBF3A4(v39 + v83, v85 + v84, &qword_27DAF2150, &qword_22FFB5CA0);
  v87 = v111;
  if (v111(v85, 1, v78) == 1)
  {

    sub_22FEAEA34(v107, &qword_27DAF2150, &qword_22FFB5CA0);
    if (v87(v85 + v84, 1, v78) == 1)
    {
      sub_22FEAEA34(v85, &qword_27DAF2150, &qword_22FFB5CA0);
      return 1;
    }

    goto LABEL_33;
  }

  v89 = v85;
  v90 = v95;
  sub_22FEBF3A4(v89, v95, &qword_27DAF2150, &qword_22FFB5CA0);
  if (v87(v86 + v84, 1, v78) == 1)
  {

    sub_22FEAEA34(v107, &qword_27DAF2150, &qword_22FFB5CA0);
    sub_22FEF6ED0(v90, type metadata accessor for LogEntry);
LABEL_33:
    sub_22FEAEA34(v86, &qword_27DAF2158, &unk_22FFB7B80);
    return 0;
  }

  v91 = v86 + v84;
  v92 = v96;
  sub_22FEF6B58(v91, v96, type metadata accessor for LogEntry);
  v93 = v86;
  v94 = static LogEntry.== infix(_:_:)(v90, v92);

  sub_22FEF6ED0(v92, type metadata accessor for LogEntry);
  sub_22FEAEA34(v107, &qword_27DAF2150, &qword_22FFB5CA0);
  sub_22FEF6ED0(v90, type metadata accessor for LogEntry);
  sub_22FEAEA34(v93, &qword_27DAF2150, &qword_22FFB5CA0);
  return (v94 & 1) != 0;
}

uint64_t sub_22FF00B74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
  v4 = *(a1 + 20);
  if (qword_281490E10 != -1)
  {
    swift_once();
  }

  *(a2 + v4) = qword_281490E18;
}

uint64_t sub_22FF00C38(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FF04DCC(&qword_27DAF2600, type metadata accessor for PrivateCloudCompute_TransparencyLog_LogConsistency, &protocol conformance descriptor for PrivateCloudCompute_TransparencyLog_LogConsistency);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22FF00CD8(uint64_t a1)
{
  v2 = sub_22FF04DCC(qword_281490C98, type metadata accessor for PrivateCloudCompute_TransparencyLog_LogConsistency, &protocol conformance descriptor for PrivateCloudCompute_TransparencyLog_LogConsistency);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22FF00D44(uint64_t a1, uint64_t a2)
{
  sub_22FF04DCC(qword_281490C98, type metadata accessor for PrivateCloudCompute_TransparencyLog_LogConsistency, &protocol conformance descriptor for PrivateCloudCompute_TransparencyLog_LogConsistency);

  return sub_22FFB11A8();
}

uint64_t sub_22FF00DE0()
{
  v0 = sub_22FFB12C8();
  __swift_allocate_value_buffer(v0, qword_27DAF22B0);
  __swift_project_value_buffer(v0, qword_27DAF22B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2638, &unk_22FFB7B70);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2640, &qword_22FFBDAE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_22FFB2F70;
  v4 = v16 + v3;
  v5 = v16 + v3 + v1[14];
  *(v16 + v3) = 1;
  *v5 = "data";
  *(v5 + 8) = 4;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_22FFB1298();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "metadata";
  *(v9 + 8) = 8;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "type";
  *(v11 + 1) = 4;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "permittedEnvironments";
  *(v13 + 1) = 21;
  v13[16] = 2;
  v8();
  v14 = v4 + 4 * v2 + v1[14];
  *(v4 + 4 * v2) = 5;
  *v14 = "associatedAssets";
  *(v14 + 8) = 16;
  *(v14 + 16) = 2;
  v8();
  return sub_22FFB12A8();
}

uint64_t PrivateCloudCompute_TransparencyLog_ATInsertData.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_22FFB1058();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result <= 2)
      {
        if (result == 1 || result == 2)
        {
          sub_22FFB10C8();
        }
      }

      else
      {
        switch(result)
        {
          case 3:
            sub_22FF03D00();
            sub_22FFB1098();
            break;
          case 4:
            sub_22FF05888();
            sub_22FFB1078();
            break;
          case 5:
            type metadata accessor for PrivateCloudCompute_TransparencyLog_AssociatedAsset(0);
            sub_22FF04DCC(&qword_27DAF23B0, type metadata accessor for PrivateCloudCompute_TransparencyLog_AssociatedAsset, &protocol conformance descriptor for PrivateCloudCompute_TransparencyLog_AssociatedAsset);
            sub_22FFB1118();
            break;
        }
      }

      result = sub_22FFB1058();
    }
  }

  return result;
}

uint64_t PrivateCloudCompute_TransparencyLog_ATInsertData.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v6 = v3[1];
  v7 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v7 != 2)
    {
      goto LABEL_10;
    }

    v8 = *(v5 + 16);
    v9 = *(v5 + 24);
  }

  else
  {
    if (!v7)
    {
      if ((v6 & 0xFF000000000000) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    v8 = v5;
    v9 = v5 >> 32;
  }

  if (v8 == v9)
  {
    goto LABEL_10;
  }

LABEL_9:
  result = sub_22FFB1228();
  if (v4)
  {
    return result;
  }

LABEL_10:
  v11 = v3[2];
  v12 = v3[3];
  v13 = v12 >> 62;
  if ((v12 >> 62) > 1)
  {
    if (v13 != 2)
    {
      goto LABEL_19;
    }

    v14 = *(v11 + 16);
    v15 = *(v11 + 24);
  }

  else
  {
    if (!v13)
    {
      if ((v12 & 0xFF000000000000) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    v14 = v11;
    v15 = v11 >> 32;
  }

  if (v14 == v15)
  {
    goto LABEL_19;
  }

LABEL_18:
  result = sub_22FFB1228();
  if (v4)
  {
    return result;
  }

LABEL_19:
  v16 = v4;
  if (v3[4])
  {
    sub_22FF03D00();
    result = sub_22FFB1208();
    if (v4)
    {
      return result;
    }

    v16 = 0;
  }

  if (*(v3[6] + 16))
  {
    sub_22FF05888();
    v17 = v16;
    result = sub_22FFB11E8();
    if (v16)
    {
      return result;
    }
  }

  else
  {
    v17 = v16;
  }

  if (!*(v3[7] + 16) || (type metadata accessor for PrivateCloudCompute_TransparencyLog_AssociatedAsset(0), sub_22FF04DCC(&qword_27DAF23B0, type metadata accessor for PrivateCloudCompute_TransparencyLog_AssociatedAsset, &protocol conformance descriptor for PrivateCloudCompute_TransparencyLog_AssociatedAsset), result = sub_22FFB1278(), !v17))
  {
    type metadata accessor for PrivateCloudCompute_TransparencyLog_ATInsertData(0);
    return sub_22FFB0F68();
  }

  return result;
}

uint64_t sub_22FF014A0@<X0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_22FFB33B0;
  *(a1 + 16) = xmmword_22FFB33B0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  v1 = MEMORY[0x277D84F90];
  *(a1 + 48) = MEMORY[0x277D84F90];
  *(a1 + 56) = v1;
  return _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
}

uint64_t sub_22FF01500@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = sub_22FFB0F88();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_22FF01574(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 36);
  v5 = sub_22FFB0F88();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_22FF01618(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FF04DCC(&qword_27DAF25F8, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATInsertData, &protocol conformance descriptor for PrivateCloudCompute_TransparencyLog_ATInsertData);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22FF016B8(uint64_t a1)
{
  v2 = sub_22FF04DCC(&qword_27DAF24B0, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATInsertData, &protocol conformance descriptor for PrivateCloudCompute_TransparencyLog_ATInsertData);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22FF01724(uint64_t a1, uint64_t a2)
{
  sub_22FF04DCC(&qword_27DAF24B0, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATInsertData, &protocol conformance descriptor for PrivateCloudCompute_TransparencyLog_ATInsertData);

  return sub_22FFB11A8();
}

uint64_t sub_22FF017C0()
{
  v0 = sub_22FFB12C8();
  __swift_allocate_value_buffer(v0, qword_27DAF22C8);
  __swift_project_value_buffer(v0, qword_27DAF22C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2638, &unk_22FFB7B70);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2640, &qword_22FFBDAE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22FFB2D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "identifier";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22FFB1298();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "details";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  return sub_22FFB12A8();
}

uint64_t PrivateCloudCompute_TransparencyLog_AssociatedAsset.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_22FFB1058();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1 || result == 2)
    {
      sub_22FFB10E8();
    }
  }

  return result;
}

uint64_t PrivateCloudCompute_TransparencyLog_AssociatedAsset.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3[1];
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6 || (result = sub_22FFB1248(), !v4))
  {
    v8 = v3[3];
    v9 = HIBYTE(v8) & 0xF;
    if ((v8 & 0x2000000000000000) == 0)
    {
      v9 = v3[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v9 || (result = sub_22FFB1248(), !v4))
    {
      type metadata accessor for PrivateCloudCompute_TransparencyLog_AssociatedAsset(0);
      return sub_22FFB0F68();
    }
  }

  return result;
}

uint64_t static PrivateCloudCompute_TransparencyLog_AssociatedAsset.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_22FFB1BC8() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_22FFB1BC8() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for PrivateCloudCompute_TransparencyLog_AssociatedAsset(0);
  sub_22FFB0F88();
  sub_22FF04DCC(&qword_27DAF2128, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_22FFB1478() & 1;
}

uint64_t sub_22FF01C18@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  return _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
}

uint64_t sub_22FF01C90(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FF04DCC(&qword_27DAF25F0, type metadata accessor for PrivateCloudCompute_TransparencyLog_AssociatedAsset, &protocol conformance descriptor for PrivateCloudCompute_TransparencyLog_AssociatedAsset);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22FF01D30(uint64_t a1)
{
  v2 = sub_22FF04DCC(&qword_27DAF23B0, type metadata accessor for PrivateCloudCompute_TransparencyLog_AssociatedAsset, &protocol conformance descriptor for PrivateCloudCompute_TransparencyLog_AssociatedAsset);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22FF01D9C(uint64_t a1, uint64_t a2)
{
  sub_22FF04DCC(&qword_27DAF23B0, type metadata accessor for PrivateCloudCompute_TransparencyLog_AssociatedAsset, &protocol conformance descriptor for PrivateCloudCompute_TransparencyLog_AssociatedAsset);

  return sub_22FFB11A8();
}

uint64_t sub_22FF01E18(uint64_t *a1, void *a2, uint64_t a3)
{
  v5 = *a1 == *a2 && a1[1] == a2[1];
  if (!v5 && (sub_22FFB1BC8() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v6 && (sub_22FFB1BC8() & 1) == 0)
  {
    return 0;
  }

  sub_22FFB0F88();
  sub_22FF04DCC(&qword_27DAF2128, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_22FFB1478() & 1;
}

uint64_t sub_22FF01F10()
{
  v0 = sub_22FFB12C8();
  __swift_allocate_value_buffer(v0, qword_27DAF22E0);
  __swift_project_value_buffer(v0, qword_27DAF22E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2638, &unk_22FFB7B70);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2640, &qword_22FFBDAE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22FFB2F50;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "version";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22FFB1298();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "application";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "type";
  *(v12 + 1) = 4;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "releaseType";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  return sub_22FFB12A8();
}

uint64_t PrivateCloudCompute_TransparencyLog_ATActiveRecordsRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_22FFB1058();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result > 2)
      {
        if (result == 3)
        {
          v6 = v3;
          sub_22FF03D00();
LABEL_5:
          v3 = v6;
          sub_22FFB1098();
          goto LABEL_6;
        }

        if (result == 4)
        {
          sub_22FF03D54();
          sub_22FFB1078();
        }
      }

      else
      {
        if (result == 1)
        {
          v6 = v3;
          sub_22FF03C58();
          goto LABEL_5;
        }

        if (result == 2)
        {
          v6 = v3;
          sub_22FF03CAC();
          goto LABEL_5;
        }
      }

LABEL_6:
      result = sub_22FFB1058();
    }
  }

  return result;
}

uint64_t PrivateCloudCompute_TransparencyLog_ATActiveRecordsRequest.traverse<A>(visitor:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  if (*v3)
  {
    sub_22FF03C58();
    v6 = sub_22FFB1208();
    if (v4)
    {
      return v6;
    }

    v5 = 0;
  }

  if (v3[2])
  {
    sub_22FF03CAC();
    v6 = sub_22FFB1208();
    if (v5)
    {
      return v6;
    }

    v5 = 0;
  }

  if (v3[4])
  {
    sub_22FF03D00();
    v7 = v5;
    v6 = sub_22FFB1208();
    if (v5)
    {
      return v6;
    }
  }

  else
  {
    v7 = v5;
  }

  if (!*(v3[6] + 16) || (sub_22FF03D54(), v6 = sub_22FFB11E8(), !v7))
  {
    type metadata accessor for PrivateCloudCompute_TransparencyLog_ATActiveRecordsRequest(0);
    return sub_22FFB0F68();
  }

  return v6;
}

uint64_t sub_22FF0249C@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = MEMORY[0x277D84F90];
  return _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
}

uint64_t sub_22FF02500@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = sub_22FFB0F88();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_22FF02574(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = sub_22FFB0F88();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_22FF0263C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FF04DCC(&qword_27DAF25E8, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATActiveRecordsRequest, &protocol conformance descriptor for PrivateCloudCompute_TransparencyLog_ATActiveRecordsRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22FF026DC(uint64_t a1)
{
  v2 = sub_22FF04DCC(&qword_27DAF24D8, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATActiveRecordsRequest, &protocol conformance descriptor for PrivateCloudCompute_TransparencyLog_ATActiveRecordsRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22FF02748(uint64_t a1, uint64_t a2)
{
  sub_22FF04DCC(&qword_27DAF24D8, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATActiveRecordsRequest, &protocol conformance descriptor for PrivateCloudCompute_TransparencyLog_ATActiveRecordsRequest);

  return sub_22FFB11A8();
}

uint64_t sub_22FF027E4()
{
  v0 = sub_22FFB12C8();
  __swift_allocate_value_buffer(v0, qword_27DAF22F8);
  __swift_project_value_buffer(v0, qword_27DAF22F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2638, &unk_22FFB7B70);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2640, &qword_22FFBDAE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22FFB2D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "status";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22FFB1298();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "leaves";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_22FFB12A8();
}

uint64_t PrivateCloudCompute_TransparencyLog_ATActiveRecordsResponse.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_22FFB1058();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        sub_22FF04D78();
        sub_22FFB1098();
      }

      else if (result == 3)
      {
        type metadata accessor for PrivateCloudCompute_TransparencyLog_ATActiveRecordsResponse.Leaf(0);
        sub_22FF04DCC(&qword_27DAF23D0, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATActiveRecordsResponse.Leaf, &protocol conformance descriptor for PrivateCloudCompute_TransparencyLog_ATActiveRecordsResponse.Leaf);
        sub_22FFB1118();
      }

      result = sub_22FFB1058();
    }
  }

  return result;
}

uint64_t PrivateCloudCompute_TransparencyLog_ATActiveRecordsResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (sub_22FF04D78(), result = sub_22FFB1208(), !v4))
  {
    if (!*(v3[2] + 16) || (type metadata accessor for PrivateCloudCompute_TransparencyLog_ATActiveRecordsResponse.Leaf(0), sub_22FF04DCC(&qword_27DAF23D0, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATActiveRecordsResponse.Leaf, &protocol conformance descriptor for PrivateCloudCompute_TransparencyLog_ATActiveRecordsResponse.Leaf), result = sub_22FFB1278(), !v4))
    {
      type metadata accessor for PrivateCloudCompute_TransparencyLog_ATActiveRecordsResponse(0);
      return sub_22FFB0F68();
    }
  }

  return result;
}

uint64_t sub_22FF02C6C@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = MEMORY[0x277D84F90];
  return _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
}

uint64_t sub_22FF02CC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_22FFB0F88();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_22FF02D34(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = sub_22FFB0F88();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_22FF02DD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FF04DCC(&qword_27DAF25E0, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATActiveRecordsResponse, &protocol conformance descriptor for PrivateCloudCompute_TransparencyLog_ATActiveRecordsResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22FF02E78(uint64_t a1)
{
  v2 = sub_22FF04DCC(&qword_27DAF24F0, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATActiveRecordsResponse, &protocol conformance descriptor for PrivateCloudCompute_TransparencyLog_ATActiveRecordsResponse);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22FF02EE4(uint64_t a1, uint64_t a2)
{
  sub_22FF04DCC(&qword_27DAF24F0, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATActiveRecordsResponse, &protocol conformance descriptor for PrivateCloudCompute_TransparencyLog_ATActiveRecordsResponse);

  return sub_22FFB11A8();
}

uint64_t sub_22FF02F64()
{
  result = MEMORY[0x23190DD10](0x6661654C2ELL, 0xE500000000000000);
  qword_27DAF2310 = 0xD00000000000003BLL;
  *algn_27DAF2318 = 0x800000022FFCA2A0;
  return result;
}

uint64_t static PrivateCloudCompute_TransparencyLog_ATActiveRecordsResponse.Leaf.protoMessageName.getter()
{
  if (qword_27DAF1308 != -1)
  {
    swift_once();
  }

  v0 = qword_27DAF2310;

  return v0;
}

uint64_t sub_22FF03034()
{
  v0 = sub_22FFB12C8();
  __swift_allocate_value_buffer(v0, qword_27DAF2320);
  __swift_project_value_buffer(v0, qword_27DAF2320);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2638, &unk_22FFB7B70);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2640, &qword_22FFBDAE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_22FFB6380;
  v4 = v18 + v3 + v1[14];
  *(v18 + v3) = 1;
  *v4 = "nodeType";
  *(v4 + 8) = 8;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_22FFB1298();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v18 + v3 + v2 + v1[14];
  *(v18 + v3 + v2) = 2;
  *v8 = "nodeBytes";
  *(v8 + 8) = 9;
  *(v8 + 16) = 2;
  v7();
  v9 = (v18 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "nodePosition";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v7();
  v11 = (v18 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 5;
  *v12 = "rawData";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v7();
  v13 = (v18 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 6;
  *v14 = "metadata";
  *(v14 + 1) = 8;
  v14[16] = 2;
  v7();
  v15 = (v18 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 7;
  *v16 = "expiryMs";
  *(v16 + 1) = 8;
  v16[16] = 2;
  v7();
  return sub_22FFB12A8();
}

uint64_t sub_22FF0331C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_22FFB12C8();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t PrivateCloudCompute_TransparencyLog_ATActiveRecordsResponse.Leaf.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_22FFB1058();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result > 4)
      {
        if (result == 5 || result == 6)
        {
LABEL_4:
          sub_22FFB10C8();
          goto LABEL_5;
        }

        if (result == 7)
        {
LABEL_15:
          sub_22FFB1108();
        }
      }

      else
      {
        switch(result)
        {
          case 1:
            sub_22FF058DC();
            sub_22FFB1098();
            break;
          case 2:
            goto LABEL_4;
          case 3:
            goto LABEL_15;
        }
      }

LABEL_5:
      result = sub_22FFB1058();
    }
  }

  return result;
}

uint64_t PrivateCloudCompute_TransparencyLog_ATActiveRecordsResponse.Leaf.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*v3)
  {
    sub_22FF058DC();
    result = sub_22FFB1208();
    if (v4)
    {
      return result;
    }
  }

  v6 = v3[2];
  v7 = v3[3];
  v8 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    if (v8 != 2)
    {
      goto LABEL_12;
    }

    v9 = *(v6 + 16);
    v10 = *(v6 + 24);
    goto LABEL_10;
  }

  if (v8)
  {
    v9 = v6;
    v10 = v6 >> 32;
LABEL_10:
    if (v9 == v10)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if ((v7 & 0xFF000000000000) == 0)
  {
    goto LABEL_12;
  }

LABEL_11:
  result = sub_22FFB1228();
  if (v4)
  {
    return result;
  }

LABEL_12:
  if (v3[4])
  {
    result = sub_22FFB1268();
    if (v4)
    {
      return result;
    }
  }

  v11 = v3[5];
  v12 = v3[6];
  v13 = v12 >> 62;
  if ((v12 >> 62) > 1)
  {
    if (v13 != 2)
    {
      goto LABEL_23;
    }

    v14 = *(v11 + 16);
    v15 = *(v11 + 24);
  }

  else
  {
    if (!v13)
    {
      if ((v12 & 0xFF000000000000) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }

    v14 = v11;
    v15 = v11 >> 32;
  }

  if (v14 == v15)
  {
    goto LABEL_23;
  }

LABEL_22:
  result = sub_22FFB1228();
  if (v4)
  {
    return result;
  }

LABEL_23:
  v16 = v3[7];
  v17 = v3[8];
  v18 = v17 >> 62;
  if ((v17 >> 62) > 1)
  {
    if (v18 != 2)
    {
      goto LABEL_32;
    }

    v19 = *(v16 + 16);
    v20 = *(v16 + 24);
  }

  else
  {
    if (!v18)
    {
      if ((v17 & 0xFF000000000000) == 0)
      {
        goto LABEL_32;
      }

LABEL_31:
      result = sub_22FFB1228();
      if (v4)
      {
        return result;
      }

      goto LABEL_32;
    }

    v19 = v16;
    v20 = v16 >> 32;
  }

  if (v19 != v20)
  {
    goto LABEL_31;
  }

LABEL_32:
  if (!v3[9] || (result = sub_22FFB1268(), !v4))
  {
    type metadata accessor for PrivateCloudCompute_TransparencyLog_ATActiveRecordsResponse.Leaf(0);
    return sub_22FFB0F68();
  }

  return result;
}

uint64_t sub_22FF03710(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_22FFB1CA8();
  a1(0);
  sub_22FF04DCC(a2, a3, a4);
  sub_22FFB1438();
  return sub_22FFB1CF8();
}

uint64_t sub_22FF03798@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = xmmword_22FFB33B0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = xmmword_22FFB6370;
  *(a1 + 64) = xmmword_22FFB6370;
  return _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
}

uint64_t sub_22FF037E0()
{
  if (qword_27DAF1308 != -1)
  {
    swift_once();
  }

  v0 = qword_27DAF2310;

  return v0;
}

uint64_t sub_22FF03848@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v5 = sub_22FFB0F88();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_22FF038BC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  v5 = sub_22FFB0F88();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_22FF03984(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FF04DCC(&qword_27DAF25D8, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATActiveRecordsResponse.Leaf, &protocol conformance descriptor for PrivateCloudCompute_TransparencyLog_ATActiveRecordsResponse.Leaf);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22FF03A24@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_22FFB12C8();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_22FF03AC0(uint64_t a1)
{
  v2 = sub_22FF04DCC(&qword_27DAF23D0, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATActiveRecordsResponse.Leaf, &protocol conformance descriptor for PrivateCloudCompute_TransparencyLog_ATActiveRecordsResponse.Leaf);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22FF03B2C(uint64_t a1, uint64_t a2)
{
  sub_22FFB1CA8();
  sub_22FFB1438();
  return sub_22FFB1CF8();
}

uint64_t sub_22FF03B84(uint64_t a1, uint64_t a2)
{
  sub_22FF04DCC(&qword_27DAF23D0, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATActiveRecordsResponse.Leaf, &protocol conformance descriptor for PrivateCloudCompute_TransparencyLog_ATActiveRecordsResponse.Leaf);

  return sub_22FFB11A8();
}

uint64_t sub_22FF03C00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22FFB1CA8();
  sub_22FFB1438();
  return sub_22FFB1CF8();
}

unint64_t sub_22FF03C58()
{
  result = qword_27DAF2340;
  if (!qword_27DAF2340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2340);
  }

  return result;
}

unint64_t sub_22FF03CAC()
{
  result = qword_27DAF2348;
  if (!qword_27DAF2348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2348);
  }

  return result;
}

unint64_t sub_22FF03D00()
{
  result = qword_27DAF2350;
  if (!qword_27DAF2350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2350);
  }

  return result;
}

unint64_t sub_22FF03D54()
{
  result = qword_27DAF2358;
  if (!qword_27DAF2358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2358);
  }

  return result;
}

uint64_t _s16CloudAttestation07Privatea24Compute_TransparencyLog_F11ConsistencyV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for PrivateCloudCompute_TransparencyLog_LogConsistency(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  if (v5 != v6)
  {

    v7 = sub_22FEFFCE0(v5, v6);

    if (!v7)
    {
      return 0;
    }
  }

  sub_22FFB0F88();
  sub_22FF04DCC(&qword_27DAF2128, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_22FFB1478() & 1;
}

uint64_t _s16CloudAttestation07PrivateA47Compute_TransparencyLog_ATLogProofBatchResponseV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a1 + 8) == 1)
  {
    v2 = qword_22FFB7B98[v2];
  }

  v3 = *a2;
  if (*(a2 + 8))
  {
    if (v3 <= 2)
    {
      if (v3)
      {
        if (v3 == 1)
        {
          if (v2 != 1)
          {
            return 0;
          }
        }

        else if (v2 != 3)
        {
          return 0;
        }
      }

      else if (v2)
      {
        return 0;
      }
    }

    else if (v3 > 4)
    {
      if (v3 == 5)
      {
        if (v2 != 6)
        {
          return 0;
        }
      }

      else if (v2 != 7)
      {
        return 0;
      }
    }

    else if (v3 == 3)
    {
      if (v2 != 4)
      {
        return 0;
      }
    }

    else if (v2 != 5)
    {
      return 0;
    }
  }

  else if (v2 != v3)
  {
    return 0;
  }

  if (sub_22FEE8A98(a1[2], *(a2 + 16)))
  {
    type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofBatchResponse(0);
    sub_22FFB0F88();
    sub_22FF04DCC(&qword_27DAF2128, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    return sub_22FFB1478() & 1;
  }

  return 0;
}

uint64_t _s16CloudAttestation07PrivateA47Compute_TransparencyLog_ATActiveRecordsResponseV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a1 + 8) == 1)
  {
    v2 = qword_22FFB7B98[v2];
  }

  v3 = *a2;
  if (*(a2 + 8))
  {
    if (v3 <= 2)
    {
      if (v3)
      {
        if (v3 == 1)
        {
          if (v2 != 1)
          {
            return 0;
          }
        }

        else if (v2 != 3)
        {
          return 0;
        }
      }

      else if (v2)
      {
        return 0;
      }
    }

    else if (v3 > 4)
    {
      if (v3 == 5)
      {
        if (v2 != 6)
        {
          return 0;
        }
      }

      else if (v2 != 7)
      {
        return 0;
      }
    }

    else if (v3 == 3)
    {
      if (v2 != 4)
      {
        return 0;
      }
    }

    else if (v2 != 5)
    {
      return 0;
    }
  }

  else if (v2 != v3)
  {
    return 0;
  }

  if (sub_22FEE9AFC(a1[2], *(a2 + 16)))
  {
    type metadata accessor for PrivateCloudCompute_TransparencyLog_ATActiveRecordsResponse(0);
    sub_22FFB0F88();
    sub_22FF04DCC(&qword_27DAF2128, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    return sub_22FFB1478() & 1;
  }

  return 0;
}

uint64_t _s16CloudAttestation07PrivateA47Compute_TransparencyLog_ATActiveRecordsResponseV4LeafV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  if (*(a2 + 8) == 1)
  {
    if (v5 > 3)
    {
      if (v5 > 5)
      {
        if (v5 == 6)
        {
          if (v4 != 6)
          {
            return 0;
          }
        }

        else if (v4 != 7)
        {
          return 0;
        }
      }

      else if (v5 == 4)
      {
        if (v4 != 4)
        {
          return 0;
        }
      }

      else if (v4 != 5)
      {
        return 0;
      }
    }

    else if (v5 > 1)
    {
      if (v5 == 2)
      {
        if (v4 != 2)
        {
          return 0;
        }
      }

      else if (v4 != 3)
      {
        return 0;
      }
    }

    else if (v5)
    {
      if (v4 != 1)
      {
        return 0;
      }
    }

    else if (v4)
    {
      return 0;
    }
  }

  else if (v4 != v5)
  {
    return 0;
  }

  if (sub_22FEC3DC8(a1[2], a1[3], *(a2 + 16), *(a2 + 24)) && a1[4] == *(a2 + 32) && sub_22FEC3DC8(a1[5], a1[6], *(a2 + 40), *(a2 + 48)) && sub_22FEC3DC8(a1[7], a1[8], *(a2 + 56), *(a2 + 64)) && a1[9] == *(a2 + 72))
  {
    type metadata accessor for PrivateCloudCompute_TransparencyLog_ATActiveRecordsResponse.Leaf(0);
    sub_22FFB0F88();
    sub_22FF04DCC(&qword_27DAF2128, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    return sub_22FFB1478() & 1;
  }

  return 0;
}

uint64_t _s16CloudAttestation07PrivateA46Compute_TransparencyLog_ATActiveRecordsRequestV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a1 + 8) == 1)
  {
    v2 = qword_22FFB7BD0[v2];
  }

  v3 = *a2;
  if (!*(a2 + 8))
  {
    goto LABEL_15;
  }

  if (v3 <= 1)
  {
    if (v3)
    {
      if (v2 != 1)
      {
        return 0;
      }
    }

    else if (v2)
    {
      return 0;
    }
  }

  else
  {
    if (v3 != 2)
    {
      if (v3 == 3)
      {
        if (v2 != 3)
        {
          return 0;
        }

        goto LABEL_16;
      }

      v3 = 999999999;
LABEL_15:
      if (v2 != v3)
      {
        return 0;
      }

      goto LABEL_16;
    }

    if (v2 != 2)
    {
      return 0;
    }
  }

LABEL_16:
  v4 = a1[2];
  v5 = *(a2 + 16);
  if (*(a2 + 24) == 1)
  {
    if (v5 <= 2)
    {
      if (v5)
      {
        if (v5 == 1)
        {
          if (v4 != 1)
          {
            return 0;
          }
        }

        else if (v4 != 2)
        {
          return 0;
        }
      }

      else if (v4)
      {
        return 0;
      }
    }

    else if (v5 > 4)
    {
      if (v5 == 5)
      {
        if (v4 != 5)
        {
          return 0;
        }
      }

      else if (v4 != 6)
      {
        return 0;
      }
    }

    else if (v5 == 3)
    {
      if (v4 != 3)
      {
        return 0;
      }
    }

    else if (v4 != 4)
    {
      return 0;
    }
  }

  else if (v4 != v5)
  {
    return 0;
  }

  v6 = a1[4];
  if (*(a1 + 40) == 1)
  {
    v6 = qword_22FFB7BF8[v6];
  }

  v7 = *(a2 + 32);
  if (*(a2 + 40))
  {
    if (v7 > 2)
    {
      if (v7 == 3)
      {
        if (v6 != 4)
        {
          return 0;
        }
      }

      else if (v7 == 4)
      {
        if (v6 != 5)
        {
          return 0;
        }
      }

      else if (v6 != 100)
      {
        return 0;
      }
    }

    else if (v7)
    {
      if (v7 == 1)
      {
        if (v6 != 1)
        {
          return 0;
        }
      }

      else if (v6 != 3)
      {
        return 0;
      }
    }

    else if (v6)
    {
      return 0;
    }
  }

  else if (v6 != v7)
  {
    return 0;
  }

  if (sub_22FEEA65C(a1[6], *(a2 + 48)))
  {
    type metadata accessor for PrivateCloudCompute_TransparencyLog_ATActiveRecordsRequest(0);
    sub_22FFB0F88();
    sub_22FF04DCC(&qword_27DAF2128, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    return sub_22FFB1478() & 1;
  }

  return 0;
}

uint64_t _s16CloudAttestation07PrivateA43Compute_TransparencyLog_ATLogInsertResponseV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a1 + 8) == 1)
  {
    v2 = qword_22FFB7B98[v2];
  }

  v3 = *a2;
  if (*(a2 + 8))
  {
    if (v3 > 2)
    {
      if (v3 > 4)
      {
        if (v3 == 5)
        {
          if (v2 != 6)
          {
            return 0;
          }
        }

        else if (v2 != 7)
        {
          return 0;
        }
      }

      else if (v3 == 3)
      {
        if (v2 != 4)
        {
          return 0;
        }
      }

      else if (v2 != 5)
      {
        return 0;
      }

LABEL_10:
      type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogInsertResponse(0);
      sub_22FFB0F88();
      sub_22FF04DCC(&qword_27DAF2128, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      return sub_22FFB1478() & 1;
    }

    if (v3)
    {
      if (v3 == 1)
      {
        if (v2 != 1)
        {
          return 0;
        }
      }

      else if (v2 != 3)
      {
        return 0;
      }

      goto LABEL_10;
    }

    if (!v2)
    {
      goto LABEL_10;
    }
  }

  else if (v2 == v3)
  {
    goto LABEL_10;
  }

  return 0;
}

uint64_t _s16CloudAttestation07PrivateA42Compute_TransparencyLog_ATLogProofResponseV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF37C0, &unk_22FFB5C60);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2110, &qword_22FFB7B90);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v26 - v13;
  v15 = *a1;
  if (*(a1 + 8) == 1)
  {
    v15 = qword_22FFB7B98[v15];
  }

  v16 = *a2;
  if (*(a2 + 8))
  {
    if (v16 <= 2)
    {
      if (v16)
      {
        if (v16 == 1)
        {
          if (v15 != 1)
          {
            goto LABEL_35;
          }
        }

        else if (v15 != 3)
        {
          goto LABEL_35;
        }
      }

      else if (v15)
      {
        goto LABEL_35;
      }
    }

    else if (v16 > 4)
    {
      if (v16 == 5)
      {
        if (v15 != 6)
        {
          goto LABEL_35;
        }
      }

      else if (v15 != 7)
      {
        goto LABEL_35;
      }
    }

    else if (v16 == 3)
    {
      if (v15 != 4)
      {
        goto LABEL_35;
      }
    }

    else if (v15 != 5)
    {
      goto LABEL_35;
    }
  }

  else if (v15 != v16)
  {
LABEL_35:
    v24 = 0;
    return v24 & 1;
  }

  v17 = v12;
  if (!sub_22FEC3DC8(a1[2], a1[3], *(a2 + 16), *(a2 + 24)))
  {
    goto LABEL_35;
  }

  v27 = v7;
  v26 = type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofResponse(0);
  v18 = *(v26 + 32);
  v19 = *(v17 + 48);
  sub_22FEBF3A4(a1 + v18, v14, &qword_27DAF37C0, &unk_22FFB5C60);
  sub_22FEBF3A4(a2 + v18, &v14[v19], &qword_27DAF37C0, &unk_22FFB5C60);
  v20 = *(v5 + 48);
  if (v20(v14, 1, v4) == 1)
  {
    if (v20(&v14[v19], 1, v4) == 1)
    {
      sub_22FEAEA34(v14, &qword_27DAF37C0, &unk_22FFB5C60);
      goto LABEL_33;
    }

    goto LABEL_23;
  }

  sub_22FEBF3A4(v14, v10, &qword_27DAF37C0, &unk_22FFB5C60);
  if (v20(&v14[v19], 1, v4) == 1)
  {
    sub_22FEF6ED0(v10, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs);
LABEL_23:
    sub_22FEAEA34(v14, &qword_27DAF2110, &qword_22FFB7B90);
    goto LABEL_35;
  }

  v21 = &v14[v19];
  v22 = v27;
  sub_22FEF6B58(v21, v27, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs);
  v23 = _s16CloudAttestation07PrivateA35Compute_TransparencyLog_ATLogProofsV2eeoiySbAC_ACtFZ_0(v10, v22);
  sub_22FEF6ED0(v22, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs);
  sub_22FEF6ED0(v10, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs);
  sub_22FEAEA34(v14, &qword_27DAF37C0, &unk_22FFB5C60);
  if ((v23 & 1) == 0)
  {
    goto LABEL_35;
  }

LABEL_33:
  if (a1[4] != *(a2 + 32))
  {
    goto LABEL_35;
  }

  sub_22FFB0F88();
  sub_22FF04DCC(&qword_27DAF2128, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v24 = sub_22FFB1478();
  return v24 & 1;
}

uint64_t _s16CloudAttestation07PrivateA42Compute_TransparencyLog_ATLogInsertRequestV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a1 + 8) == 1)
  {
    v2 = qword_22FFB7BD0[v2];
  }

  v3 = *a2;
  if (!*(a2 + 8))
  {
LABEL_15:
    if (v2 != v3)
    {
      return 0;
    }

    goto LABEL_16;
  }

  if (v3 > 1)
  {
    if (v3 == 2)
    {
      if (v2 != 2)
      {
        return 0;
      }

      goto LABEL_16;
    }

    if (v3 == 3)
    {
      if (v2 != 3)
      {
        return 0;
      }

      goto LABEL_16;
    }

    v3 = 999999999;
    goto LABEL_15;
  }

  if (v3)
  {
    if (v2 != 1)
    {
      return 0;
    }
  }

  else if (v2)
  {
    return 0;
  }

LABEL_16:
  v4 = a1[2];
  v5 = *(a2 + 16);
  if (*(a2 + 24) == 1)
  {
    if (v5 <= 2)
    {
      if (v5)
      {
        if (v5 == 1)
        {
          if (v4 != 1)
          {
            return 0;
          }
        }

        else if (v4 != 2)
        {
          return 0;
        }
      }

      else if (v4)
      {
        return 0;
      }
    }

    else if (v5 > 4)
    {
      if (v5 == 5)
      {
        if (v4 != 5)
        {
          return 0;
        }
      }

      else if (v4 != 6)
      {
        return 0;
      }
    }

    else if (v5 == 3)
    {
      if (v4 != 3)
      {
        return 0;
      }
    }

    else if (v4 != 4)
    {
      return 0;
    }
  }

  else if (v4 != v5)
  {
    return 0;
  }

  v6 = a1[4];
  if (*(a1 + 40) == 1)
  {
    v6 = qword_22FFB7BF8[v6];
  }

  v7 = *(a2 + 32);
  if (*(a2 + 40))
  {
    if (v7 > 2)
    {
      if (v7 == 3)
      {
        if (v6 != 4)
        {
          return 0;
        }
      }

      else if (v7 == 4)
      {
        if (v6 != 5)
        {
          return 0;
        }
      }

      else if (v6 != 100)
      {
        return 0;
      }
    }

    else if (v7)
    {
      if (v7 == 1)
      {
        if (v6 != 1)
        {
          return 0;
        }
      }

      else if (v6 != 3)
      {
        return 0;
      }
    }

    else if (v6)
    {
      return 0;
    }
  }

  else if (v6 != v7)
  {
    return 0;
  }

  if (a1[6] != *(a2 + 48) || !sub_22FEC3DC8(a1[7], a1[8], *(a2 + 56), *(a2 + 64)) || !sub_22FEC3DC8(a1[9], a1[10], *(a2 + 72), *(a2 + 80)) || !sub_22FEC3DC8(a1[11], a1[12], *(a2 + 88), *(a2 + 96)))
  {
    return 0;
  }

  v10 = a1[13];
  v11 = *(a2 + 104);
  if (*(a1 + 112))
  {
    v10 = v10 != 0;
  }

  if (*(a2 + 112) != 1)
  {
    if (v10 == v11)
    {
      goto LABEL_74;
    }

    return 0;
  }

  if (v11)
  {
    if (v10 == 1)
    {
      goto LABEL_74;
    }

    return 0;
  }

  if (v10)
  {
    return 0;
  }

LABEL_74:
  type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogInsertRequest(0);
  sub_22FFB0F88();
  sub_22FF04DCC(&qword_27DAF2128, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_22FFB1478() & 1;
}

unint64_t sub_22FF04D78()
{
  result = qword_27DAF2368;
  if (!qword_27DAF2368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF2368);
  }

  return result;
}

uint64_t sub_22FF04DCC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _s16CloudAttestation07PrivateA41Compute_TransparencyLog_ATLogProofRequestV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a1 + 8) == 1)
  {
    v2 = qword_22FFB7BD0[v2];
  }

  v3 = *a2;
  if (!*(a2 + 8))
  {
    goto LABEL_15;
  }

  if (v3 <= 1)
  {
    if (v3)
    {
      if (v2 != 1)
      {
        return 0;
      }
    }

    else if (v2)
    {
      return 0;
    }
  }

  else
  {
    if (v3 != 2)
    {
      if (v3 == 3)
      {
        if (v2 != 3)
        {
          return 0;
        }

        goto LABEL_16;
      }

      v3 = 999999999;
LABEL_15:
      if (v2 != v3)
      {
        return 0;
      }

      goto LABEL_16;
    }

    if (v2 != 2)
    {
      return 0;
    }
  }

LABEL_16:
  v4 = a1[2];
  v5 = *(a2 + 16);
  if (*(a2 + 24) == 1)
  {
    if (v5 <= 2)
    {
      if (v5)
      {
        if (v5 == 1)
        {
          if (v4 != 1)
          {
            return 0;
          }
        }

        else if (v4 != 2)
        {
          return 0;
        }
      }

      else if (v4)
      {
        return 0;
      }
    }

    else if (v5 > 4)
    {
      if (v5 == 5)
      {
        if (v4 != 5)
        {
          return 0;
        }
      }

      else if (v4 != 6)
      {
        return 0;
      }
    }

    else if (v5 == 3)
    {
      if (v4 != 3)
      {
        return 0;
      }
    }

    else if (v4 != 4)
    {
      return 0;
    }
  }

  else if (v4 != v5)
  {
    return 0;
  }

  if (sub_22FEC3DC8(a1[4], a1[5], *(a2 + 32), *(a2 + 40)))
  {
    v8 = a1[6];
    v9 = *(a2 + 48);
    if (*(a1 + 56))
    {
      v8 = v8 != 0;
    }

    if (*(a2 + 56) == 1)
    {
      if (v9)
      {
        if (v8 != 1)
        {
          return 0;
        }
      }

      else if (v8)
      {
        return 0;
      }
    }

    else if (v8 != v9)
    {
      return 0;
    }

    if (sub_22FEE7C00(a1[8], *(a2 + 64)))
    {
      type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofRequest(0);
      sub_22FFB0F88();
      sub_22FF04DCC(&qword_27DAF2128, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      return sub_22FFB1478() & 1;
    }
  }

  return 0;
}