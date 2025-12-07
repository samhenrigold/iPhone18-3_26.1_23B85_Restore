unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_8SwiftMLS0D0O6ClientO10KeyPackageVTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_8SwiftMLS0B0O6ClientO10KeyPackageVtMd, &_sSS_8SwiftMLS0B0O6ClientO10KeyPackageVtMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS8SwiftMLS0D0O6ClientO10KeyPackageVGMd, &_ss18_DictionaryStorageCySS8SwiftMLS0D0O6ClientO10KeyPackageVGMR);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of MLS.OutgoingEventState?(v9, v5, &_sSS_8SwiftMLS0B0O6ClientO10KeyPackageVtMd, &_sSS_8SwiftMLS0B0O6ClientO10KeyPackageVtMR);
      v11 = *v5;
      v12 = v5[1];
      result = specialized __RawDictionaryStorage.find<A>(_:)(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = type metadata accessor for MLS.Client.KeyPackage();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_15SecureMessaging15MetricCollectorV5EventVTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_15SecureMessaging15MetricCollectorV5EventVtMd, &_sSS_15SecureMessaging15MetricCollectorV5EventVtMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS15SecureMessaging15MetricCollectorV5EventVGMd, &_ss18_DictionaryStorageCySS15SecureMessaging15MetricCollectorV5EventVGMR);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of MLS.OutgoingEventState?(v9, v5, &_sSS_15SecureMessaging15MetricCollectorV5EventVtMd, &_sSS_15SecureMessaging15MetricCollectorV5EventVtMR);
      v11 = *v5;
      v12 = v5[1];
      result = specialized __RawDictionaryStorage.find<A>(_:)(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = type metadata accessor for MetricCollector.Event(0);
      result = outlined init with take of XPCUtils.XPCInterfaceRequest(v5 + v8, v17 + *(*(v18 - 8) + 72) * v15, type metadata accessor for MetricCollector.Event);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

void outlined copy of MLS.AdditionalAuthenticatedData?(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (a2 >> 60 != 15)
  {
    outlined copy of Data._Representation(a1, a2);

    outlined copy of Data?(a5, a6);
  }
}

unint64_t lazy protocol witness table accessor for type MLS.Group.CodingKeys and conformance MLS.Group.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.Group.CodingKeys and conformance MLS.Group.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.Group.CodingKeys and conformance MLS.Group.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.Group.CodingKeys and conformance MLS.Group.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.Group.CodingKeys and conformance MLS.Group.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.Group.CodingKeys and conformance MLS.Group.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.Group.CodingKeys and conformance MLS.Group.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.Group.CodingKeys and conformance MLS.Group.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.Group.CodingKeys and conformance MLS.Group.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.Group.CodingKeys and conformance MLS.Group.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.Group.CodingKeys and conformance MLS.Group.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.Group.CodingKeys and conformance MLS.Group.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.Group.CodingKeys and conformance MLS.Group.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.GroupDetails.CodingKeys and conformance MLS.GroupDetails.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.GroupDetails.CodingKeys and conformance MLS.GroupDetails.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.GroupDetails.CodingKeys and conformance MLS.GroupDetails.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupDetails.CodingKeys and conformance MLS.GroupDetails.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupDetails.CodingKeys and conformance MLS.GroupDetails.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.GroupDetails.CodingKeys and conformance MLS.GroupDetails.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupDetails.CodingKeys and conformance MLS.GroupDetails.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupDetails.CodingKeys and conformance MLS.GroupDetails.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.GroupDetails.CodingKeys and conformance MLS.GroupDetails.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupDetails.CodingKeys and conformance MLS.GroupDetails.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupDetails.CodingKeys and conformance MLS.GroupDetails.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.GroupDetails.CodingKeys and conformance MLS.GroupDetails.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupDetails.CodingKeys and conformance MLS.GroupDetails.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.GroupVersion.CodingKeys and conformance MLS.GroupVersion.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.GroupVersion.CodingKeys and conformance MLS.GroupVersion.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.GroupVersion.CodingKeys and conformance MLS.GroupVersion.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupVersion.CodingKeys and conformance MLS.GroupVersion.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupVersion.CodingKeys and conformance MLS.GroupVersion.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.GroupVersion.CodingKeys and conformance MLS.GroupVersion.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupVersion.CodingKeys and conformance MLS.GroupVersion.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupVersion.CodingKeys and conformance MLS.GroupVersion.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.GroupVersion.CodingKeys and conformance MLS.GroupVersion.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupVersion.CodingKeys and conformance MLS.GroupVersion.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupVersion.CodingKeys and conformance MLS.GroupVersion.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.GroupVersion.CodingKeys and conformance MLS.GroupVersion.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupVersion.CodingKeys and conformance MLS.GroupVersion.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.Group and conformance MLS.Group()
{
  result = lazy protocol witness table cache variable for type MLS.Group and conformance MLS.Group;
  if (!lazy protocol witness table cache variable for type MLS.Group and conformance MLS.Group)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.Group and conformance MLS.Group);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.Group and conformance MLS.Group;
  if (!lazy protocol witness table cache variable for type MLS.Group and conformance MLS.Group)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.Group and conformance MLS.Group);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.Group and conformance MLS.Group;
  if (!lazy protocol witness table cache variable for type MLS.Group and conformance MLS.Group)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.Group and conformance MLS.Group);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.GroupFetchContext.CodingKeys and conformance MLS.GroupFetchContext.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.GroupFetchContext.CodingKeys and conformance MLS.GroupFetchContext.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.GroupFetchContext.CodingKeys and conformance MLS.GroupFetchContext.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupFetchContext.CodingKeys and conformance MLS.GroupFetchContext.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupFetchContext.CodingKeys and conformance MLS.GroupFetchContext.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.GroupFetchContext.CodingKeys and conformance MLS.GroupFetchContext.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupFetchContext.CodingKeys and conformance MLS.GroupFetchContext.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupFetchContext.CodingKeys and conformance MLS.GroupFetchContext.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.GroupFetchContext.CodingKeys and conformance MLS.GroupFetchContext.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupFetchContext.CodingKeys and conformance MLS.GroupFetchContext.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupFetchContext.CodingKeys and conformance MLS.GroupFetchContext.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.GroupFetchContext.CodingKeys and conformance MLS.GroupFetchContext.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupFetchContext.CodingKeys and conformance MLS.GroupFetchContext.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.GroupMembersContext.CodingKeys and conformance MLS.GroupMembersContext.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.GroupMembersContext.CodingKeys and conformance MLS.GroupMembersContext.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.GroupMembersContext.CodingKeys and conformance MLS.GroupMembersContext.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupMembersContext.CodingKeys and conformance MLS.GroupMembersContext.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupMembersContext.CodingKeys and conformance MLS.GroupMembersContext.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.GroupMembersContext.CodingKeys and conformance MLS.GroupMembersContext.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupMembersContext.CodingKeys and conformance MLS.GroupMembersContext.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupMembersContext.CodingKeys and conformance MLS.GroupMembersContext.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.GroupMembersContext.CodingKeys and conformance MLS.GroupMembersContext.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupMembersContext.CodingKeys and conformance MLS.GroupMembersContext.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupMembersContext.CodingKeys and conformance MLS.GroupMembersContext.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.GroupMembersContext.CodingKeys and conformance MLS.GroupMembersContext.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupMembersContext.CodingKeys and conformance MLS.GroupMembersContext.CodingKeys);
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC15SecureMessaging3MLSO9AllMemberO_SayAE14KeyPackageInfoVGTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15SecureMessaging3MLSO9AllMemberOSayAE14KeyPackageInfoVGGMd, &_ss18_DictionaryStorageCy15SecureMessaging3MLSO9AllMemberOSayAE14KeyPackageInfoVGGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 64); ; i += 5)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v7 = *(i - 2);
      v8 = *(i - 8);
      v9 = *i;
      outlined copy of MLS.AllMember(v5, v6);

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6, v7, v8);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = v3[6] + 32 * result;
      *v12 = v5;
      *(v12 + 8) = v6;
      *(v12 + 16) = v7;
      *(v12 + 24) = v8;
      *(v3[7] + 8 * result) = v9;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of MLS.OutgoingEventState?(v4, &v13, &_sSS_yptMd, &_sSS_yptMR);
      v5 = v13;
      v6 = v14;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = outlined init with take of Any(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pGMd, &_ss18_DictionaryStorageCySS15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of MLS.OutgoingEventState?(v4, &v13, &_sSS_15SecureMessaging3MLSO21SwiftMLSGroupProtocol_ptMd, &_sSS_15SecureMessaging3MLSO21SwiftMLSGroupProtocol_ptMR);
      v5 = v13;
      v6 = v14;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = outlined init with take of MLS.KeyUpdatePolicy(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC15SecureMessaging3MLSO17InMemoryPersisterC20SwiftMLSEpochStoreIDV_10Foundation4DataVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15SecureMessaging3MLSO17InMemoryPersisterC20SwiftMLSEpochStoreIDV10Foundation4DataVGMd, &_ss18_DictionaryStorageCy15SecureMessaging3MLSO17InMemoryPersisterC20SwiftMLSEpochStoreIDV10Foundation4DataVGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = a1 + 48; ; i += 64)
    {
      v5 = *(i - 8);
      v6 = *i;
      v7 = *(i + 24);
      v8 = *(i + 32);
      v9 = *(i + 40);
      *&v19 = *(i - 16);
      *(&v19 + 1) = v5;
      *v20 = v6;
      *&v20[8] = *(i + 8);
      v18 = *&v20[8];
      *&v20[24] = v7;

      outlined copy of Data._Representation(v6, v18);
      outlined copy of Data._Representation(v8, v9);
      result = specialized __RawDictionaryStorage.find<A>(_:)(&v19);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v3[6] + 48 * result);
      v13 = *v20;
      *v12 = v19;
      v12[1] = v13;
      v12[2] = *&v20[16];
      v14 = (v3[7] + 16 * result);
      *v14 = v8;
      v14[1] = v9;
      v15 = v3[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v3[2] = v17;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC15SecureMessaging3MLSO22UniqueClientIdentifierV_10Foundation4UUIDVTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO22UniqueClientIdentifierV_10Foundation4UUIDVtMd, &_s15SecureMessaging3MLSO22UniqueClientIdentifierV_10Foundation4UUIDVtMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v21 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15SecureMessaging3MLSO22UniqueClientIdentifierV10Foundation4UUIDVGMd, &_ss18_DictionaryStorageCy15SecureMessaging3MLSO22UniqueClientIdentifierV10Foundation4UUIDVGMR);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of MLS.OutgoingEventState?(v9, v5, &_s15SecureMessaging3MLSO22UniqueClientIdentifierV_10Foundation4UUIDVtMd, &_s15SecureMessaging3MLSO22UniqueClientIdentifierV_10Foundation4UUIDVtMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(*v5, v5[1]);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = (v7[6] + 16 * result);
      v15 = v5[1];
      *v14 = *v5;
      v14[1] = v15;
      v16 = v7[7];
      v17 = type metadata accessor for UUID();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v13, v5 + v8, v17);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC15SecureMessaging3MLSO17InMemoryPersisterC12GroupStoreIDV_10Foundation4DataVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15SecureMessaging3MLSO17InMemoryPersisterC12GroupStoreIDV10Foundation4DataVGMd, &_ss18_DictionaryStorageCy15SecureMessaging3MLSO17InMemoryPersisterC12GroupStoreIDV10Foundation4DataVGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 72); ; i += 6)
    {
      v5 = *(i - 5);
      v6 = *(i - 4);
      v7 = *(i - 3);
      v8 = *(i - 2);
      v9 = *(i - 1);
      v10 = *i;

      outlined copy of Data._Representation(v9, v10);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6, v7, v8);
      if (v12)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v3[6] + 32 * result);
      *v13 = v5;
      v13[1] = v6;
      v13[2] = v7;
      v13[3] = v8;
      v14 = (v3[7] + 16 * result);
      *v14 = v9;
      v14[1] = v10;
      v15 = v3[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v3[2] = v17;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4DataV_15SecureMessaging3MLSO17InMemoryPersisterC12GroupStoreIDVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4DataV15SecureMessaging3MLSO17InMemoryPersisterC12GroupStoreIDVGMd, &_ss18_DictionaryStorageCy10Foundation4DataV15SecureMessaging3MLSO17InMemoryPersisterC12GroupStoreIDVGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 72); ; i += 6)
    {
      v5 = *(i - 5);
      v6 = *(i - 4);
      v8 = *(i - 3);
      v7 = *(i - 2);
      v10 = *(i - 1);
      v9 = *i;
      outlined copy of Data._Representation(v5, v6);

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v12)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v3[6] + 16 * result);
      *v13 = v5;
      v13[1] = v6;
      v14 = (v3[7] + 32 * result);
      *v14 = v8;
      v14[1] = v7;
      v14[2] = v10;
      v14[3] = v9;
      v15 = v3[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v3[2] = v17;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC15SecureMessaging3MLSO17InMemoryPersisterC12GroupStoreIDV_SayAE15PersistedMemberVGTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15SecureMessaging3MLSO17InMemoryPersisterC12GroupStoreIDVSayAE15PersistedMemberVGGMd, &_ss18_DictionaryStorageCy15SecureMessaging3MLSO17InMemoryPersisterC12GroupStoreIDVSayAE15PersistedMemberVGGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 64); ; i += 5)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6, v7, v8);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v3[6] + 32 * result);
      *v12 = v5;
      v12[1] = v6;
      v12[2] = v7;
      v12[3] = v8;
      *(v3[7] + 8 * result) = v9;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC15SecureMessaging3MLSO17InMemoryPersisterC19GroupMessageStoreIDV_SiTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15SecureMessaging3MLSO17InMemoryPersisterC19GroupMessageStoreIDVSiGMd, &_ss18_DictionaryStorageCy15SecureMessaging3MLSO17InMemoryPersisterC19GroupMessageStoreIDVSiGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 80); ; i += 7)
    {
      v5 = *i;
      v12 = *(i - 3);
      v13 = *(i - 2);
      v14 = *(i - 1);

      result = specialized __RawDictionaryStorage.find<A>(_:)();
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v8 = (v3[6] + 48 * result);
      *v8 = v12;
      v8[1] = v13;
      v8[2] = v14;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC15SecureMessaging3MLSO17InMemoryPersisterC12GroupStoreIDV_AE21EventsSinceLastUpdateVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15SecureMessaging3MLSO17InMemoryPersisterC12GroupStoreIDVAE21EventsSinceLastUpdateVGMd, &_ss18_DictionaryStorageCy15SecureMessaging3MLSO17InMemoryPersisterC12GroupStoreIDVAE21EventsSinceLastUpdateVGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 80); ; i += 56)
    {
      v5 = *(i - 6);
      v6 = *(i - 5);
      v7 = *(i - 4);
      v8 = *(i - 3);
      v9 = *(i - 2);
      v10 = *(i - 1);
      v11 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6, v7, v8);
      if (v13)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = (v3[6] + 32 * result);
      *v14 = v5;
      v14[1] = v6;
      v14[2] = v7;
      v14[3] = v8;
      v15 = v3[7] + 24 * result;
      *v15 = v9;
      *(v15 + 8) = v10;
      *(v15 + 16) = v11;
      v16 = v3[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v3[2] = v18;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC15SecureMessaging3MLSO17InMemoryPersisterC17GroupEventStoreIDV_AG08IncomingJ5EntryVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15SecureMessaging3MLSO17InMemoryPersisterC17GroupEventStoreIDVAG08IncomingJ5EntryVGMd, &_ss18_DictionaryStorageCy15SecureMessaging3MLSO17InMemoryPersisterC17GroupEventStoreIDVAG08IncomingJ5EntryVGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = (a1 + 32);

    for (i = v1 - 1; ; --i)
    {
      v6 = v4[7];
      v30 = v4[6];
      v31 = v6;
      v7 = v4[9];
      v32 = v4[8];
      v33 = v7;
      v8 = v4[3];
      v26 = v4[2];
      v27 = v8;
      v9 = v4[5];
      v28 = v4[4];
      v29 = v9;
      v10 = v4[1];
      v25[0] = *v4;
      v25[1] = v10;
      v34 = v25[0];
      v35 = v10;
      v36 = v26;
      outlined init with copy of MLS.OutgoingEventState?(v25, &v24, &_s15SecureMessaging3MLSO17InMemoryPersisterC17GroupEventStoreIDV_AE08IncomingH5EntryVtMd, &_s15SecureMessaging3MLSO17InMemoryPersisterC17GroupEventStoreIDV_AE08IncomingH5EntryVtMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)();
      if (v12)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v3[6] + 48 * result);
      v14 = v35;
      *v13 = v34;
      v13[1] = v14;
      v13[2] = v36;
      v15 = (v3[7] + 112 * result);
      v16 = v30;
      v17 = v31;
      v18 = v33;
      v15[5] = v32;
      v15[6] = v18;
      v15[3] = v16;
      v15[4] = v17;
      v20 = v28;
      v19 = v29;
      *v15 = v27;
      v15[1] = v20;
      v15[2] = v19;
      v21 = v3[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_11;
      }

      v3[2] = v23;
      if (!i)
      {

        return v3;
      }

      v4 += 10;
    }

    __break(1u);
LABEL_11:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC15SecureMessaging3MLSO17InMemoryPersisterC17GroupEventStoreIDV_AG08OutgoingJ5EntryVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15SecureMessaging3MLSO17InMemoryPersisterC17GroupEventStoreIDVAG08OutgoingJ5EntryVGMd, &_ss18_DictionaryStorageCy15SecureMessaging3MLSO17InMemoryPersisterC17GroupEventStoreIDVAG08OutgoingJ5EntryVGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = (a1 + 32);

    for (i = v1 - 1; ; --i)
    {
      memcpy(__dst, v4, sizeof(__dst));
      v15 = *__dst;
      v16 = *&__dst[16];
      v17 = *&__dst[32];
      outlined init with copy of MLS.OutgoingEventState?(__dst, v13, &_s15SecureMessaging3MLSO17InMemoryPersisterC17GroupEventStoreIDV_AE08OutgoingH5EntryVtMd, &_s15SecureMessaging3MLSO17InMemoryPersisterC17GroupEventStoreIDV_AE08OutgoingH5EntryVtMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)();
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v8 = (v3[6] + 48 * result);
      v9 = v16;
      *v8 = v15;
      v8[1] = v9;
      v8[2] = v17;
      result = memcpy((v3[7] + 296 * result), &__dst[48], 0x128uLL);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_11;
      }

      v3[2] = v12;
      if (!i)
      {

        return v3;
      }

      v4 += 344;
    }

    __break(1u);
LABEL_11:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_AC4DataVTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_AA4DataVtMd, &_s10Foundation4UUIDV_AA4DataVtMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDVAC4DataVGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDVAC4DataVGMR);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of MLS.OutgoingEventState?(v9, v5, &_s10Foundation4UUIDV_AA4DataVtMd, &_s10Foundation4UUIDV_AA4DataVtMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for UUID();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 16 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC15SecureMessaging3MLSO17InMemoryPersisterC20SwiftMLSGroupStoreIDV_10Foundation4DataVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15SecureMessaging3MLSO17InMemoryPersisterC20SwiftMLSGroupStoreIDV10Foundation4DataVGMd, &_ss18_DictionaryStorageCy15SecureMessaging3MLSO17InMemoryPersisterC20SwiftMLSGroupStoreIDV10Foundation4DataVGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 72); ; i += 6)
    {
      v5 = *(i - 5);
      v6 = *(i - 4);
      v7 = *(i - 3);
      v8 = *(i - 2);
      v9 = *(i - 1);
      v10 = *i;

      outlined copy of Data._Representation(v7, v8);
      outlined copy of Data._Representation(v9, v10);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6, v7, v8);
      if (v12)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v3[6] + 32 * result);
      *v13 = v5;
      v13[1] = v6;
      v13[2] = v7;
      v13[3] = v8;
      v14 = (v3[7] + 16 * result);
      *v14 = v9;
      v14[1] = v10;
      v15 = v3[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v3[2] = v17;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC15SecureMessaging3MLSO22UniqueClientIdentifierV_AE25SwiftMLSPersisterProtocol_pTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15SecureMessaging3MLSO22UniqueClientIdentifierVAE25SwiftMLSPersisterProtocol_pGMd, &_ss18_DictionaryStorageCy15SecureMessaging3MLSO22UniqueClientIdentifierVAE25SwiftMLSPersisterProtocol_pGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of MLS.OutgoingEventState?(v4, &v12, &_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC25SwiftMLSPersisterProtocol_ptMd, &_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC25SwiftMLSPersisterProtocol_ptMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v12, v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = (v3[6] + 16 * result);
      v8 = v13;
      *v7 = v12;
      v7[1] = v8;
      result = outlined init with take of MLS.KeyUpdatePolicy(&v14, v3[7] + 40 * result);
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      v4 += 56;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC15SecureMessaging18SMAFeatureFlagsKeyO_SbTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15SecureMessaging18SMAFeatureFlagsKeyOSbGMd, &_ss18_DictionaryStorageCy15SecureMessaging18SMAFeatureFlagsKeyOSbGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 33); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + result) = v6;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_15SecureMessaging3MLSO10EventQueueCTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS15SecureMessaging3MLSO10EventQueueCGMd, &_ss18_DictionaryStorageCySS15SecureMessaging3MLSO10EventQueueCGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_Say15SecureMessaging3MLSO17OutgoingEventTypeOy_AE9AllMemberO10Foundation4DataVG_AE0fG5StateVSgAE12GroupVersionVtGTt0g5Tf4g_nTm(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
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

uint64_t specialized MLS.Group.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x666E4970756F7267 && a2 == 0xE90000000000006FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x80000002651E9970 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x5474656863746172 && a2 == 0xEB00000000656572 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000016 && 0x80000002651E96B0 == a2)
  {

    return 5;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t specialized MLS.GroupVersion.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 6386277 && a2 == 0xE300000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6172456C6C616D73 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x68636F7065 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

unint64_t lazy protocol witness table accessor for type MLS.AdditionalAuthenticatedData.ClientAAD.CodingKeys and conformance MLS.AdditionalAuthenticatedData.ClientAAD.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.AdditionalAuthenticatedData.ClientAAD.CodingKeys and conformance MLS.AdditionalAuthenticatedData.ClientAAD.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.AdditionalAuthenticatedData.ClientAAD.CodingKeys and conformance MLS.AdditionalAuthenticatedData.ClientAAD.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.AdditionalAuthenticatedData.ClientAAD.CodingKeys and conformance MLS.AdditionalAuthenticatedData.ClientAAD.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.AdditionalAuthenticatedData.ClientAAD.CodingKeys and conformance MLS.AdditionalAuthenticatedData.ClientAAD.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.AdditionalAuthenticatedData.ClientAAD.CodingKeys and conformance MLS.AdditionalAuthenticatedData.ClientAAD.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.AdditionalAuthenticatedData.ClientAAD.CodingKeys and conformance MLS.AdditionalAuthenticatedData.ClientAAD.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.AdditionalAuthenticatedData.ClientAAD.CodingKeys and conformance MLS.AdditionalAuthenticatedData.ClientAAD.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.AdditionalAuthenticatedData.ClientAAD.CodingKeys and conformance MLS.AdditionalAuthenticatedData.ClientAAD.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.AdditionalAuthenticatedData.ClientAAD.CodingKeys and conformance MLS.AdditionalAuthenticatedData.ClientAAD.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.AdditionalAuthenticatedData.ClientAAD.CodingKeys and conformance MLS.AdditionalAuthenticatedData.ClientAAD.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.AdditionalAuthenticatedData.ClientAAD.CodingKeys and conformance MLS.AdditionalAuthenticatedData.ClientAAD.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.AdditionalAuthenticatedData.ClientAAD.CodingKeys and conformance MLS.AdditionalAuthenticatedData.ClientAAD.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.AdditionalAuthenticatedData.ClientAAD.EncryptedRCSCodingKeys and conformance MLS.AdditionalAuthenticatedData.ClientAAD.EncryptedRCSCodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.AdditionalAuthenticatedData.ClientAAD.EncryptedRCSCodingKeys and conformance MLS.AdditionalAuthenticatedData.ClientAAD.EncryptedRCSCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.AdditionalAuthenticatedData.ClientAAD.EncryptedRCSCodingKeys and conformance MLS.AdditionalAuthenticatedData.ClientAAD.EncryptedRCSCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.AdditionalAuthenticatedData.ClientAAD.EncryptedRCSCodingKeys and conformance MLS.AdditionalAuthenticatedData.ClientAAD.EncryptedRCSCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.AdditionalAuthenticatedData.ClientAAD.EncryptedRCSCodingKeys and conformance MLS.AdditionalAuthenticatedData.ClientAAD.EncryptedRCSCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.AdditionalAuthenticatedData.ClientAAD.EncryptedRCSCodingKeys and conformance MLS.AdditionalAuthenticatedData.ClientAAD.EncryptedRCSCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.AdditionalAuthenticatedData.ClientAAD.EncryptedRCSCodingKeys and conformance MLS.AdditionalAuthenticatedData.ClientAAD.EncryptedRCSCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.AdditionalAuthenticatedData.ClientAAD.EncryptedRCSCodingKeys and conformance MLS.AdditionalAuthenticatedData.ClientAAD.EncryptedRCSCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.AdditionalAuthenticatedData.ClientAAD.EncryptedRCSCodingKeys and conformance MLS.AdditionalAuthenticatedData.ClientAAD.EncryptedRCSCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.AdditionalAuthenticatedData.ClientAAD.EncryptedRCSCodingKeys and conformance MLS.AdditionalAuthenticatedData.ClientAAD.EncryptedRCSCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.AdditionalAuthenticatedData.ClientAAD.EncryptedRCSCodingKeys and conformance MLS.AdditionalAuthenticatedData.ClientAAD.EncryptedRCSCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.AdditionalAuthenticatedData.ClientAAD.EncryptedRCSCodingKeys and conformance MLS.AdditionalAuthenticatedData.ClientAAD.EncryptedRCSCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.AdditionalAuthenticatedData.ClientAAD.EncryptedRCSCodingKeys and conformance MLS.AdditionalAuthenticatedData.ClientAAD.EncryptedRCSCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.EncryptedRCS.AdditionalAuthenticatedData and conformance MLS.EncryptedRCS.AdditionalAuthenticatedData()
{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCS.AdditionalAuthenticatedData and conformance MLS.EncryptedRCS.AdditionalAuthenticatedData;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCS.AdditionalAuthenticatedData and conformance MLS.EncryptedRCS.AdditionalAuthenticatedData)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCS.AdditionalAuthenticatedData and conformance MLS.EncryptedRCS.AdditionalAuthenticatedData);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCS.AdditionalAuthenticatedData and conformance MLS.EncryptedRCS.AdditionalAuthenticatedData;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCS.AdditionalAuthenticatedData and conformance MLS.EncryptedRCS.AdditionalAuthenticatedData)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCS.AdditionalAuthenticatedData and conformance MLS.EncryptedRCS.AdditionalAuthenticatedData);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.AdditionalAuthenticatedData.CodingKeys and conformance MLS.AdditionalAuthenticatedData.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.AdditionalAuthenticatedData.CodingKeys and conformance MLS.AdditionalAuthenticatedData.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.AdditionalAuthenticatedData.CodingKeys and conformance MLS.AdditionalAuthenticatedData.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.AdditionalAuthenticatedData.CodingKeys and conformance MLS.AdditionalAuthenticatedData.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.AdditionalAuthenticatedData.CodingKeys and conformance MLS.AdditionalAuthenticatedData.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.AdditionalAuthenticatedData.CodingKeys and conformance MLS.AdditionalAuthenticatedData.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.AdditionalAuthenticatedData.CodingKeys and conformance MLS.AdditionalAuthenticatedData.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.AdditionalAuthenticatedData.CodingKeys and conformance MLS.AdditionalAuthenticatedData.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.AdditionalAuthenticatedData.CodingKeys and conformance MLS.AdditionalAuthenticatedData.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.AdditionalAuthenticatedData.CodingKeys and conformance MLS.AdditionalAuthenticatedData.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.AdditionalAuthenticatedData.CodingKeys and conformance MLS.AdditionalAuthenticatedData.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.AdditionalAuthenticatedData.CodingKeys and conformance MLS.AdditionalAuthenticatedData.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.AdditionalAuthenticatedData.CodingKeys and conformance MLS.AdditionalAuthenticatedData.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.AdditionalAuthenticatedData.ClientAAD and conformance MLS.AdditionalAuthenticatedData.ClientAAD()
{
  result = lazy protocol witness table cache variable for type MLS.AdditionalAuthenticatedData.ClientAAD and conformance MLS.AdditionalAuthenticatedData.ClientAAD;
  if (!lazy protocol witness table cache variable for type MLS.AdditionalAuthenticatedData.ClientAAD and conformance MLS.AdditionalAuthenticatedData.ClientAAD)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.AdditionalAuthenticatedData.ClientAAD and conformance MLS.AdditionalAuthenticatedData.ClientAAD);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.AdditionalAuthenticatedData.ClientAAD and conformance MLS.AdditionalAuthenticatedData.ClientAAD;
  if (!lazy protocol witness table cache variable for type MLS.AdditionalAuthenticatedData.ClientAAD and conformance MLS.AdditionalAuthenticatedData.ClientAAD)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.AdditionalAuthenticatedData.ClientAAD and conformance MLS.AdditionalAuthenticatedData.ClientAAD);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.AdditionalAuthenticatedData and conformance MLS.AdditionalAuthenticatedData()
{
  result = lazy protocol witness table cache variable for type MLS.AdditionalAuthenticatedData and conformance MLS.AdditionalAuthenticatedData;
  if (!lazy protocol witness table cache variable for type MLS.AdditionalAuthenticatedData and conformance MLS.AdditionalAuthenticatedData)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.AdditionalAuthenticatedData and conformance MLS.AdditionalAuthenticatedData);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.AdditionalAuthenticatedData and conformance MLS.AdditionalAuthenticatedData;
  if (!lazy protocol witness table cache variable for type MLS.AdditionalAuthenticatedData and conformance MLS.AdditionalAuthenticatedData)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.AdditionalAuthenticatedData and conformance MLS.AdditionalAuthenticatedData);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.SigningInput.ClientSigningInput.CodingKeys and conformance MLS.SigningInput.ClientSigningInput.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.SigningInput.ClientSigningInput.CodingKeys and conformance MLS.SigningInput.ClientSigningInput.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.SigningInput.ClientSigningInput.CodingKeys and conformance MLS.SigningInput.ClientSigningInput.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SigningInput.ClientSigningInput.CodingKeys and conformance MLS.SigningInput.ClientSigningInput.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SigningInput.ClientSigningInput.CodingKeys and conformance MLS.SigningInput.ClientSigningInput.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.SigningInput.ClientSigningInput.CodingKeys and conformance MLS.SigningInput.ClientSigningInput.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SigningInput.ClientSigningInput.CodingKeys and conformance MLS.SigningInput.ClientSigningInput.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SigningInput.ClientSigningInput.CodingKeys and conformance MLS.SigningInput.ClientSigningInput.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.SigningInput.ClientSigningInput.CodingKeys and conformance MLS.SigningInput.ClientSigningInput.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SigningInput.ClientSigningInput.CodingKeys and conformance MLS.SigningInput.ClientSigningInput.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SigningInput.ClientSigningInput.CodingKeys and conformance MLS.SigningInput.ClientSigningInput.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.SigningInput.ClientSigningInput.CodingKeys and conformance MLS.SigningInput.ClientSigningInput.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SigningInput.ClientSigningInput.CodingKeys and conformance MLS.SigningInput.ClientSigningInput.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.SigningInput.ClientSigningInput.EncryptedRCSCodingKeys and conformance MLS.SigningInput.ClientSigningInput.EncryptedRCSCodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.SigningInput.ClientSigningInput.EncryptedRCSCodingKeys and conformance MLS.SigningInput.ClientSigningInput.EncryptedRCSCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.SigningInput.ClientSigningInput.EncryptedRCSCodingKeys and conformance MLS.SigningInput.ClientSigningInput.EncryptedRCSCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SigningInput.ClientSigningInput.EncryptedRCSCodingKeys and conformance MLS.SigningInput.ClientSigningInput.EncryptedRCSCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SigningInput.ClientSigningInput.EncryptedRCSCodingKeys and conformance MLS.SigningInput.ClientSigningInput.EncryptedRCSCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.SigningInput.ClientSigningInput.EncryptedRCSCodingKeys and conformance MLS.SigningInput.ClientSigningInput.EncryptedRCSCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SigningInput.ClientSigningInput.EncryptedRCSCodingKeys and conformance MLS.SigningInput.ClientSigningInput.EncryptedRCSCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SigningInput.ClientSigningInput.EncryptedRCSCodingKeys and conformance MLS.SigningInput.ClientSigningInput.EncryptedRCSCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.SigningInput.ClientSigningInput.EncryptedRCSCodingKeys and conformance MLS.SigningInput.ClientSigningInput.EncryptedRCSCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SigningInput.ClientSigningInput.EncryptedRCSCodingKeys and conformance MLS.SigningInput.ClientSigningInput.EncryptedRCSCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SigningInput.ClientSigningInput.EncryptedRCSCodingKeys and conformance MLS.SigningInput.ClientSigningInput.EncryptedRCSCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.SigningInput.ClientSigningInput.EncryptedRCSCodingKeys and conformance MLS.SigningInput.ClientSigningInput.EncryptedRCSCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SigningInput.ClientSigningInput.EncryptedRCSCodingKeys and conformance MLS.SigningInput.ClientSigningInput.EncryptedRCSCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.EncryptedRCS.SigningInput and conformance MLS.EncryptedRCS.SigningInput()
{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInput and conformance MLS.EncryptedRCS.SigningInput;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInput and conformance MLS.EncryptedRCS.SigningInput)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInput and conformance MLS.EncryptedRCS.SigningInput);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInput and conformance MLS.EncryptedRCS.SigningInput;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInput and conformance MLS.EncryptedRCS.SigningInput)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInput and conformance MLS.EncryptedRCS.SigningInput);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.SigningInput.CodingKeys and conformance MLS.SigningInput.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.SigningInput.CodingKeys and conformance MLS.SigningInput.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.SigningInput.CodingKeys and conformance MLS.SigningInput.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SigningInput.CodingKeys and conformance MLS.SigningInput.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SigningInput.CodingKeys and conformance MLS.SigningInput.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.SigningInput.CodingKeys and conformance MLS.SigningInput.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SigningInput.CodingKeys and conformance MLS.SigningInput.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SigningInput.CodingKeys and conformance MLS.SigningInput.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.SigningInput.CodingKeys and conformance MLS.SigningInput.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SigningInput.CodingKeys and conformance MLS.SigningInput.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SigningInput.CodingKeys and conformance MLS.SigningInput.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.SigningInput.CodingKeys and conformance MLS.SigningInput.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SigningInput.CodingKeys and conformance MLS.SigningInput.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.SigningInput.ClientSigningInput and conformance MLS.SigningInput.ClientSigningInput()
{
  result = lazy protocol witness table cache variable for type MLS.SigningInput.ClientSigningInput and conformance MLS.SigningInput.ClientSigningInput;
  if (!lazy protocol witness table cache variable for type MLS.SigningInput.ClientSigningInput and conformance MLS.SigningInput.ClientSigningInput)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SigningInput.ClientSigningInput and conformance MLS.SigningInput.ClientSigningInput);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SigningInput.ClientSigningInput and conformance MLS.SigningInput.ClientSigningInput;
  if (!lazy protocol witness table cache variable for type MLS.SigningInput.ClientSigningInput and conformance MLS.SigningInput.ClientSigningInput)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SigningInput.ClientSigningInput and conformance MLS.SigningInput.ClientSigningInput);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.GroupDetails and conformance MLS.GroupDetails()
{
  result = lazy protocol witness table cache variable for type MLS.GroupDetails and conformance MLS.GroupDetails;
  if (!lazy protocol witness table cache variable for type MLS.GroupDetails and conformance MLS.GroupDetails)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupDetails and conformance MLS.GroupDetails);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupDetails and conformance MLS.GroupDetails;
  if (!lazy protocol witness table cache variable for type MLS.GroupDetails and conformance MLS.GroupDetails)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupDetails and conformance MLS.GroupDetails);
  }

  return result;
}

__n128 sub_265035AC8(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for MLS.Group(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t storeEnumTagSinglePayload for MLS.Group(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MLS.GroupVersion(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MLS.GroupVersion(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 24) = v3;
  return result;
}

void type metadata completion function for MLS.GroupCreationContext_v2(uint64_t a1)
{
  type metadata accessor for Optional();
  if (v1 <= 0x3F)
  {
    _s10Foundation4DataVSgMaTm_0(319, &lazy cache variable for type metadata for Data?, MEMORY[0x277CC9318]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t getEnumTagSinglePayload for MLS.GroupCreationContext_v2(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v4 + 80);
  v9 = 7;
  if (!v5)
  {
    v9 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_33;
  }

  v10 = ((((v9 + *(*(*(a3 + 16) - 8) + 64) + ((v8 + 16) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  v11 = a2 - v7;
  v12 = v10 & 0xFFFFFFF8;
  if ((v10 & 0xFFFFFFF8) != 0)
  {
    v13 = 2;
  }

  else
  {
    v13 = v11 + 1;
  }

  if (v13 >= 0x10000)
  {
    v14 = 4;
  }

  else
  {
    v14 = 2;
  }

  if (v13 < 0x100)
  {
    v14 = 1;
  }

  if (v13 >= 2)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (v15 > 1)
  {
    if (v15 == 2)
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_33;
      }
    }
  }

  else if (!v15 || (v16 = *(a1 + v10)) == 0)
  {
LABEL_33:
    if ((v6 & 0x80000000) != 0)
    {
      v20 = (*(v4 + 48))((a1 + v8 + 16) & ~v8);
      if (v20 >= 2)
      {
        return v20 - 1;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v19 = *(a1 + 8);
      if (v19 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      return (v19 + 1);
    }
  }

  v18 = v16 - 1;
  if (v12)
  {
    v18 = 0;
    LODWORD(v12) = *a1;
  }

  return v7 + (v12 | v18) + 1;
}

void storeEnumTagSinglePayload for MLS.GroupCreationContext_v2(void *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (!v7)
  {
    v8 = 0;
  }

  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(v6 + 80);
  v11 = *(*(*(a4 + 16) - 8) + 64);
  if (!v7)
  {
    ++v11;
  }

  v12 = ((((v11 + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v9 < a3)
  {
    v13 = a3 - v9;
    if (((((v11 + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = v13 + 1;
    }

    else
    {
      v14 = 2;
    }

    if (v14 >= 0x10000)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    if (v14 >= 2)
    {
      v5 = v15;
    }

    else
    {
      v5 = 0;
    }
  }

  if (a2 > v9)
  {
    if (((((v11 + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v16 = a2 - v9;
    }

    else
    {
      v16 = 1;
    }

    if (((((v11 + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v17 = ~v9 + a2;
      v18 = a1;
      bzero(a1, v12);
      a1 = v18;
      *v18 = v17;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(a1 + v12) = v16;
      }

      else
      {
        *(a1 + v12) = v16;
      }
    }

    else if (v5)
    {
      *(a1 + v12) = v16;
    }

    return;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(a1 + v12) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_38;
    }

    *(a1 + v12) = 0;
LABEL_37:
    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

  if (!v5)
  {
    goto LABEL_37;
  }

  *(a1 + v12) = 0;
  if (!a2)
  {
    return;
  }

LABEL_38:
  if ((v8 & 0x80000000) != 0)
  {
    v19 = ((a1 + v10 + 16) & ~v10);
    if (v8 >= a2)
    {
      v23 = *(v6 + 56);
      v24 = a2 + 1;
      v25 = (a1 + v10 + 16) & ~v10;

      v23(v25, v24);
    }

    else
    {
      if (v11 <= 3)
      {
        v20 = ~(-1 << (8 * v11));
      }

      else
      {
        v20 = -1;
      }

      if (v11)
      {
        v21 = v20 & (~v8 + a2);
        if (v11 <= 3)
        {
          v22 = v11;
        }

        else
        {
          v22 = 4;
        }

        bzero(v19, v11);
        if (v22 > 2)
        {
          if (v22 == 3)
          {
            *v19 = v21;
            v19[2] = BYTE2(v21);
          }

          else
          {
            *v19 = v21;
          }
        }

        else if (v22 == 1)
        {
          *v19 = v21;
        }

        else
        {
          *v19 = v21;
        }
      }
    }
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    a1[1] = 0;
  }

  else
  {
    a1[1] = a2 - 1;
  }
}

void type metadata completion function for MLS.GroupCreationContext(uint64_t a1)
{
  type metadata accessor for Optional();
  if (v1 <= 0x3F)
  {
    _s10Foundation4DataVSgMaTm_0(319, &lazy cache variable for type metadata for Data?, MEMORY[0x277CC9318]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t getEnumTagSinglePayload for MLS.GroupCreationContext(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v4 + 80);
  v9 = 7;
  if (!v5)
  {
    v9 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_33;
  }

  v10 = ((((((v9 + *(*(*(a3 + 16) - 8) + 64) + ((v8 + 16) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  v11 = a2 - v7;
  v12 = v10 & 0xFFFFFFF8;
  if ((v10 & 0xFFFFFFF8) != 0)
  {
    v13 = 2;
  }

  else
  {
    v13 = v11 + 1;
  }

  if (v13 >= 0x10000)
  {
    v14 = 4;
  }

  else
  {
    v14 = 2;
  }

  if (v13 < 0x100)
  {
    v14 = 1;
  }

  if (v13 >= 2)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (v15 > 1)
  {
    if (v15 == 2)
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_33;
      }
    }
  }

  else if (!v15 || (v16 = *(a1 + v10)) == 0)
  {
LABEL_33:
    if ((v6 & 0x80000000) != 0)
    {
      v20 = (*(v4 + 48))((a1 + v8 + 16) & ~v8);
      if (v20 >= 2)
      {
        return v20 - 1;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v19 = *(a1 + 8);
      if (v19 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      return (v19 + 1);
    }
  }

  v18 = v16 - 1;
  if (v12)
  {
    v18 = 0;
    LODWORD(v12) = *a1;
  }

  return v7 + (v12 | v18) + 1;
}

void storeEnumTagSinglePayload for MLS.GroupCreationContext(void *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (!v7)
  {
    v8 = 0;
  }

  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(v6 + 80);
  v11 = *(*(*(a4 + 16) - 8) + 64);
  if (!v7)
  {
    ++v11;
  }

  v12 = ((((((v11 + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v9 < a3)
  {
    v13 = a3 - v9;
    if (((((((v11 + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = v13 + 1;
    }

    else
    {
      v14 = 2;
    }

    if (v14 >= 0x10000)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    if (v14 >= 2)
    {
      v5 = v15;
    }

    else
    {
      v5 = 0;
    }
  }

  if (a2 > v9)
  {
    if (((((((v11 + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v16 = a2 - v9;
    }

    else
    {
      v16 = 1;
    }

    if (((((((v11 + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v17 = ~v9 + a2;
      v18 = a1;
      bzero(a1, v12);
      a1 = v18;
      *v18 = v17;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(a1 + v12) = v16;
      }

      else
      {
        *(a1 + v12) = v16;
      }
    }

    else if (v5)
    {
      *(a1 + v12) = v16;
    }

    return;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(a1 + v12) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_38;
    }

    *(a1 + v12) = 0;
LABEL_37:
    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

  if (!v5)
  {
    goto LABEL_37;
  }

  *(a1 + v12) = 0;
  if (!a2)
  {
    return;
  }

LABEL_38:
  if ((v8 & 0x80000000) != 0)
  {
    v19 = ((a1 + v10 + 16) & ~v10);
    if (v8 >= a2)
    {
      v23 = *(v6 + 56);
      v24 = a2 + 1;
      v25 = (a1 + v10 + 16) & ~v10;

      v23(v25, v24);
    }

    else
    {
      if (v11 <= 3)
      {
        v20 = ~(-1 << (8 * v11));
      }

      else
      {
        v20 = -1;
      }

      if (v11)
      {
        v21 = v20 & (~v8 + a2);
        if (v11 <= 3)
        {
          v22 = v11;
        }

        else
        {
          v22 = 4;
        }

        bzero(v19, v11);
        if (v22 > 2)
        {
          if (v22 == 3)
          {
            *v19 = v21;
            v19[2] = BYTE2(v21);
          }

          else
          {
            *v19 = v21;
          }
        }

        else if (v22 == 1)
        {
          *v19 = v21;
        }

        else
        {
          *v19 = v21;
        }
      }
    }
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    a1[1] = 0;
  }

  else
  {
    a1[1] = a2 - 1;
  }
}

uint64_t getEnumTagSinglePayload for MLS.GroupMembersContext(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t storeEnumTagSinglePayload for MLS.GroupMembersContext(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata completion function for MLS.GroupDeletionContext(uint64_t a1)
{
  result = type metadata accessor for Optional();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MLS.GroupDeletionContext(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v4 + 80);
  v9 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v9;
  }

  if (!a2)
  {
    return 0;
  }

  v10 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_31;
  }

  v11 = v9 + ((v8 + 16) & ~v8);
  v12 = 8 * v11;
  if (v11 <= 3)
  {
    v15 = ((v10 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v15))
    {
      v13 = *(a1 + v11);
      if (!v13)
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v15 > 0xFF)
    {
      v13 = *(a1 + v11);
      if (!*(a1 + v11))
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v15 < 2)
    {
LABEL_31:
      if ((v6 & 0x80000000) != 0)
      {
        v18 = (*(v4 + 48))((a1 + v8 + 16) & ~v8);
        if (v18 >= 2)
        {
          return v18 - 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v17 = *(a1 + 1);
        if (v17 >= 0xFFFFFFFF)
        {
          LODWORD(v17) = -1;
        }

        return (v17 + 1);
      }
    }
  }

  v13 = *(a1 + v11);
  if (!*(a1 + v11))
  {
    goto LABEL_31;
  }

LABEL_20:
  v16 = (v13 - 1) << v12;
  if (v11 > 3)
  {
    v16 = 0;
  }

  if (v11)
  {
    if (v11 > 3)
    {
      LODWORD(v11) = 4;
    }

    if (v11 > 2)
    {
      if (v11 == 3)
      {
        LODWORD(v11) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v11) = *a1;
      }
    }

    else if (v11 == 1)
    {
      LODWORD(v11) = *a1;
    }

    else
    {
      LODWORD(v11) = *a1;
    }
  }

  return v7 + (v11 | v16) + 1;
}

void storeEnumTagSinglePayload for MLS.GroupDeletionContext(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  v9 = v8 - 1;
  if (!v8)
  {
    v9 = 0;
  }

  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(v7 + 80);
  v12 = *(*(*(a4 + 16) - 8) + 64);
  if (!v8)
  {
    ++v12;
  }

  v13 = ((v11 + 16) & ~v11) + v12;
  v14 = a3 >= v10;
  v15 = a3 - v10;
  if (v15 == 0 || !v14)
  {
LABEL_20:
    if (v10 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  if (v13 > 3)
  {
    v6 = 1;
    if (v10 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  v16 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
  if (!HIWORD(v16))
  {
    if (v16 < 0x100)
    {
      v17 = 1;
    }

    else
    {
      v17 = 2;
    }

    if (v16 >= 2)
    {
      v6 = v17;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_20;
  }

  v6 = 4;
  if (v10 < a2)
  {
LABEL_21:
    v18 = ~v10 + a2;
    if (v13 < 4)
    {
      v19 = (v18 >> (8 * v13)) + 1;
      if (v13)
      {
        v20 = v18 & ~(-1 << (8 * v13));
        bzero(a1, v13);
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *a1 = v20;
            if (v6 > 1)
            {
LABEL_62:
              if (v6 == 2)
              {
                *&a1[v13] = v19;
              }

              else
              {
                *&a1[v13] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v6 > 1)
            {
              goto LABEL_62;
            }
          }

          goto LABEL_59;
        }

        *a1 = v20;
        a1[2] = BYTE2(v20);
      }

      if (v6 > 1)
      {
        goto LABEL_62;
      }
    }

    else
    {
      bzero(a1, v13);
      *a1 = v18;
      v19 = 1;
      if (v6 > 1)
      {
        goto LABEL_62;
      }
    }

LABEL_59:
    if (v6)
    {
      a1[v13] = v19;
    }

    return;
  }

LABEL_30:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *&a1[v13] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *&a1[v13] = 0;
LABEL_36:
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!v6)
  {
    goto LABEL_36;
  }

  a1[v13] = 0;
  if (!a2)
  {
    return;
  }

LABEL_37:
  if ((v9 & 0x80000000) != 0)
  {
    v21 = (&a1[v11 + 16] & ~v11);
    if (v9 >= a2)
    {
      v25 = *(v7 + 56);
      v26 = a2 + 1;
      v27 = &a1[v11 + 16] & ~v11;

      v25(v27, v26);
    }

    else
    {
      if (v12 <= 3)
      {
        v22 = ~(-1 << (8 * v12));
      }

      else
      {
        v22 = -1;
      }

      if (v12)
      {
        v23 = v22 & (~v9 + a2);
        if (v12 <= 3)
        {
          v24 = v12;
        }

        else
        {
          v24 = 4;
        }

        bzero(v21, v12);
        if (v24 > 2)
        {
          if (v24 == 3)
          {
            *v21 = v23;
            v21[2] = BYTE2(v23);
          }

          else
          {
            *v21 = v23;
          }
        }

        else if (v24 == 1)
        {
          *v21 = v23;
        }

        else
        {
          *v21 = v23;
        }
      }
    }
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = a2 - 1;
  }
}

uint64_t type metadata completion function for MLS.GroupDeletionProcessedContext(uint64_t a1)
{
  result = type metadata accessor for Optional();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MLS.GroupDeletionProcessedContext(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_28;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_28;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 <= 3)
          {
            v13 = v7;
          }

          else
          {
            v13 = 4;
          }

          if (v13 > 2)
          {
            if (v13 == 3)
            {
              v14 = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              v14 = *a1;
            }
          }

          else if (v13 == 1)
          {
            v14 = *a1;
          }

          else
          {
            v14 = *a1;
          }
        }

        else
        {
          v14 = 0;
        }

        return v6 + (v14 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_28:
  if (v5 < 2)
  {
    return 0;
  }

  v16 = (*(v4 + 48))(a1, v5);
  if (v16 >= 2)
  {
    return v16 - 1;
  }

  else
  {
    return 0;
  }
}

char *storeEnumTagSinglePayload for MLS.GroupDeletionProcessedContext(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (v7)
  {
    v9 = *(*(*(a4 + 16) - 8) + 64);
  }

  else
  {
    v8 = 0;
    v9 = *(*(*(a4 + 16) - 8) + 64) + 1;
  }

  v10 = a3 >= v8;
  v11 = a3 - v8;
  if (v11 == 0 || !v10)
  {
    goto LABEL_16;
  }

  if (v9 > 3)
  {
    v5 = 1;
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v12 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
  if (!HIWORD(v12))
  {
    if (v12 < 0x100)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    if (v12 >= 2)
    {
      v5 = v13;
    }

    else
    {
      v5 = 0;
    }

LABEL_16:
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v5 = 4;
  if (v8 < a2)
  {
LABEL_17:
    v14 = ~v8 + a2;
    if (v9 < 4)
    {
      v16 = (v14 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v14 & ~(-1 << (8 * v9));
        v18 = result;
        bzero(result, v9);
        result = v18;
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *v18 = v17;
            if (v5 > 1)
            {
LABEL_44:
              if (v5 == 2)
              {
                *&result[v9] = v16;
              }

              else
              {
                *&result[v9] = v16;
              }

              return result;
            }
          }

          else
          {
            *v18 = v14;
            if (v5 > 1)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *v18 = v17;
        v18[2] = BYTE2(v17);
      }

      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v15 = result;
      bzero(result, v9);
      result = v15;
      *v15 = v14;
      v16 = 1;
      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
    if (v5)
    {
      result[v9] = v16;
    }

    return result;
  }

LABEL_26:
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *&result[v9] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_33;
    }

    *&result[v9] = 0;
  }

  else if (v5)
  {
    result[v9] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    return result;
  }

LABEL_33:
  if (v7 >= 2)
  {
    v19 = *(v6 + 56);

    return v19();
  }

  return result;
}

void type metadata accessor for DoNotEncode<Task<(), Never>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for DoNotEncode<Task<(), Never>>)
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sScTyyts5NeverOGMd, &_sScTyyts5NeverOGMR);
    v5 = type metadata accessor for DoNotEncode(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &lazy cache variable for type metadata for DoNotEncode<Task<(), Never>>);
    }
  }
}

void type metadata completion function for MLS.EncryptionContext(uint64_t a1)
{
  type metadata accessor for Optional();
  if (v1 <= 0x3F)
  {
    _s10Foundation4DataVSgMaTm_0(319, &lazy cache variable for type metadata for MLS.AdditionalAuthenticatedData?, &type metadata for MLS.AdditionalAuthenticatedData);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Optional();
      if (v3 <= 0x3F)
      {
        _s10Foundation4DataVSgMaTm_0(319, &lazy cache variable for type metadata for MLS.GroupVersion?, &type metadata for MLS.GroupVersion);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for MLS.EncryptionContext(int *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  if (v5)
  {
    v8 = v5 - 1;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(v7 + 84);
  v10 = v9 - 1;
  if (!v9)
  {
    v10 = 0;
  }

  if (v8 <= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = v8;
  }

  if (v11 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = v11;
  }

  v13 = *(v4 + 80);
  if (v5)
  {
    v14 = *(*(*(a3 + 24) - 8) + 64);
  }

  else
  {
    v14 = *(*(*(a3 + 24) - 8) + 64) + 1;
  }

  v15 = *(v7 + 80);
  v16 = *(v7 + 64);
  if (v9)
  {
    v17 = 39;
  }

  else
  {
    v17 = 40;
  }

  if (!a2)
  {
    return 0;
  }

  v18 = v14 + 7;
  v19 = v15 + 48;
  if (v12 < a2)
  {
    v20 = ((v17 + v16 + ((v19 + ((v18 + ((v13 + 16) & ~v13)) & 0xFFFFFFFFFFFFFFF8)) & ~v15)) & 0xFFFFFFFFFFFFFFF8) + 8;
    v21 = a2 - v12;
    v22 = v20 & 0xFFFFFFF8;
    if ((v20 & 0xFFFFFFF8) != 0)
    {
      v23 = 2;
    }

    else
    {
      v23 = v21 + 1;
    }

    if (v23 >= 0x10000)
    {
      v24 = 4;
    }

    else
    {
      v24 = 2;
    }

    if (v23 < 0x100)
    {
      v24 = 1;
    }

    if (v23 >= 2)
    {
      v25 = v24;
    }

    else
    {
      v25 = 0;
    }

    if (v25 > 1)
    {
      if (v25 == 2)
      {
        v26 = *(a1 + v20);
        if (v26)
        {
          goto LABEL_34;
        }
      }

      else
      {
        v26 = *(a1 + v20);
        if (v26)
        {
          goto LABEL_34;
        }
      }
    }

    else if (v25)
    {
      v26 = *(a1 + v20);
      if (v26)
      {
LABEL_34:
        v27 = v26 - 1;
        if (v22)
        {
          v27 = 0;
          v28 = *a1;
        }

        else
        {
          v28 = 0;
        }

        return v12 + (v28 | v27) + 1;
      }
    }
  }

  if ((v11 & 0x80000000) != 0)
  {
    v31 = (a1 + v13 + 16) & ~v13;
    if (v8 == v12)
    {
      if (v5 >= 2)
      {
        v32 = (*(v4 + 48))(v31);
        goto LABEL_52;
      }
    }

    else if (v9 >= 2)
    {
      v32 = (*(*(v6 - 8) + 48))((v19 + ((v18 + v31) & 0xFFFFFFFFFFFFFFF8)) & ~v15, v9, v6);
LABEL_52:
      if (v32 >= 2)
      {
        return v32 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v29 = *(a1 + 1);
  if (v29 >= 0xFFFFFFFF)
  {
    LODWORD(v29) = -1;
  }

  return (v29 + 1);
}

void *storeEnumTagSinglePayload for MLS.EncryptionContext(void *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 24) - 8);
  v7 = *(v6 + 84);
  v8 = *(a4 + 16);
  v9 = *(v8 - 8);
  if (v7)
  {
    v10 = v7 - 1;
  }

  else
  {
    v10 = 0;
  }

  v11 = *(v8 - 8);
  v12 = *(v9 + 84);
  v13 = *(v6 + 80);
  v14 = *(v9 + 80);
  v15 = *(v9 + 64);
  v16 = v12 - 1;
  if (!v12)
  {
    v16 = 0;
  }

  if (v10 <= v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = v10;
  }

  if (v17 <= 0x7FFFFFFF)
  {
    v18 = 0x7FFFFFFF;
  }

  else
  {
    v18 = v17;
  }

  if (v7)
  {
    v19 = *(*(*(a4 + 24) - 8) + 64);
  }

  else
  {
    v19 = *(*(*(a4 + 24) - 8) + 64) + 1;
  }

  v20 = v19 + 7;
  if (!v12)
  {
    ++v15;
  }

  v21 = ((v15 + ((v14 + 48 + ((v20 + ((v13 + 16) & ~v13)) & 0xFFFFFFFFFFFFFFF8)) & ~v14) + 39) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v18 < a3)
  {
    v22 = a3 - v18;
    if (((v15 + ((v14 + 48 + ((v20 + ((v13 + 16) & ~v13)) & 0xFFFFFFF8)) & ~v14) + 39) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v23 = v22 + 1;
    }

    else
    {
      v23 = 2;
    }

    if (v23 >= 0x10000)
    {
      v24 = 4;
    }

    else
    {
      v24 = 2;
    }

    if (v23 < 0x100)
    {
      v24 = 1;
    }

    if (v23 >= 2)
    {
      v5 = v24;
    }

    else
    {
      v5 = 0;
    }
  }

  if (a2 > v18)
  {
    if (((v15 + ((v14 + 48 + ((v20 + ((v13 + 16) & ~v13)) & 0xFFFFFFF8)) & ~v14) + 39) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v25 = a2 - v18;
    }

    else
    {
      v25 = 1;
    }

    if (((v15 + ((v14 + 48 + ((v20 + ((v13 + 16) & ~v13)) & 0xFFFFFFF8)) & ~v14) + 39) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v26 = ~v18 + a2;
      v27 = result;
      bzero(result, v21);
      result = v27;
      *v27 = v26;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + v21) = v25;
      }

      else
      {
        *(result + v21) = v25;
      }
    }

    else if (v5)
    {
      *(result + v21) = v25;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + v21) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_47;
    }

    *(result + v21) = 0;
LABEL_46:
    if (!a2)
    {
      return result;
    }

    goto LABEL_47;
  }

  if (!v5)
  {
    goto LABEL_46;
  }

  *(result + v21) = 0;
  if (!a2)
  {
    return result;
  }

LABEL_47:
  if ((v17 & 0x80000000) != 0)
  {
    result = ((result + v13 + 16) & ~v13);
    if (v10 == v18)
    {
      if (v7 >= 2)
      {
        v28 = *(v6 + 56);
        v29 = a2 + 1;

        return v28(result, v29);
      }
    }

    else if (v12 >= 2)
    {
      v30 = *(v11 + 56);
      v31 = (v14 + 48 + ((result + v20) & 0xFFFFFFFFFFFFFFF8)) & ~v14;
      v32 = a2 + 1;

      return v30(v31, v32, v12, v8);
    }
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else
  {
    result[1] = a2 - 1;
  }

  return result;
}

uint64_t type metadata completion function for MLS.GroupNameEncryptionContext(uint64_t a1)
{
  result = type metadata accessor for Optional();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MLS.GroupNameEncryptionContext(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v4 + 80);
  v9 = 7;
  if (!v5)
  {
    v9 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_33;
  }

  v10 = ((v9 + *(*(*(a3 + 24) - 8) + 64) + ((v8 + 16) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 8;
  v11 = a2 - v7;
  v12 = v10 & 0xFFFFFFF8;
  if ((v10 & 0xFFFFFFF8) != 0)
  {
    v13 = 2;
  }

  else
  {
    v13 = v11 + 1;
  }

  if (v13 >= 0x10000)
  {
    v14 = 4;
  }

  else
  {
    v14 = 2;
  }

  if (v13 < 0x100)
  {
    v14 = 1;
  }

  if (v13 >= 2)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (v15 > 1)
  {
    if (v15 == 2)
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_33;
      }
    }
  }

  else if (!v15 || (v16 = *(a1 + v10)) == 0)
  {
LABEL_33:
    if ((v6 & 0x80000000) != 0)
    {
      v20 = (*(v4 + 48))((a1 + v8 + 16) & ~v8);
      if (v20 >= 2)
      {
        return v20 - 1;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v19 = *(a1 + 8);
      if (v19 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      return (v19 + 1);
    }
  }

  v18 = v16 - 1;
  if (v12)
  {
    v18 = 0;
    LODWORD(v12) = *a1;
  }

  return v7 + (v12 | v18) + 1;
}

void storeEnumTagSinglePayload for MLS.GroupNameEncryptionContext(void *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 24) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (!v7)
  {
    v8 = 0;
  }

  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(v6 + 80);
  v11 = *(*(*(a4 + 24) - 8) + 64);
  if (!v7)
  {
    ++v11;
  }

  v12 = ((v11 + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v9 < a3)
  {
    v13 = a3 - v9;
    if (((v11 + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v14 = v13 + 1;
    }

    else
    {
      v14 = 2;
    }

    if (v14 >= 0x10000)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    if (v14 >= 2)
    {
      v5 = v15;
    }

    else
    {
      v5 = 0;
    }
  }

  if (a2 > v9)
  {
    if (((v11 + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v16 = a2 - v9;
    }

    else
    {
      v16 = 1;
    }

    if (((v11 + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v17 = ~v9 + a2;
      v18 = a1;
      bzero(a1, v12);
      a1 = v18;
      *v18 = v17;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(a1 + v12) = v16;
      }

      else
      {
        *(a1 + v12) = v16;
      }
    }

    else if (v5)
    {
      *(a1 + v12) = v16;
    }

    return;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(a1 + v12) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_38;
    }

    *(a1 + v12) = 0;
LABEL_37:
    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

  if (!v5)
  {
    goto LABEL_37;
  }

  *(a1 + v12) = 0;
  if (!a2)
  {
    return;
  }

LABEL_38:
  if ((v8 & 0x80000000) != 0)
  {
    v19 = ((a1 + v10 + 16) & ~v10);
    if (v8 >= a2)
    {
      v23 = *(v6 + 56);
      v24 = a2 + 1;
      v25 = (a1 + v10 + 16) & ~v10;

      v23(v25, v24);
    }

    else
    {
      if (v11 <= 3)
      {
        v20 = ~(-1 << (8 * v11));
      }

      else
      {
        v20 = -1;
      }

      if (v11)
      {
        v21 = v20 & (~v8 + a2);
        if (v11 <= 3)
        {
          v22 = v11;
        }

        else
        {
          v22 = 4;
        }

        bzero(v19, v11);
        if (v22 > 2)
        {
          if (v22 == 3)
          {
            *v19 = v21;
            v19[2] = BYTE2(v21);
          }

          else
          {
            *v19 = v21;
          }
        }

        else if (v22 == 1)
        {
          *v19 = v21;
        }

        else
        {
          *v19 = v21;
        }
      }
    }
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    a1[1] = 0;
  }

  else
  {
    a1[1] = a2 - 1;
  }
}

void type metadata completion function for MLS.IncomingMessageContext(uint64_t a1)
{
  type metadata accessor for Optional();
  if (v1 <= 0x3F)
  {
    _s10Foundation4DataVSgMaTm_0(319, &lazy cache variable for type metadata for MLS.SigningInput?, &type metadata for MLS.SigningInput);
    if (v2 <= 0x3F)
    {
      _s10Foundation4DataVSgMaTm_0(319, &lazy cache variable for type metadata for MLS.AdditionalAuthenticatedData?, &type metadata for MLS.AdditionalAuthenticatedData);
      if (v3 <= 0x3F)
      {
        _s10Foundation4DataVSgMaTm_0(319, &lazy cache variable for type metadata for Data?, MEMORY[0x277CC9318]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for MLS.IncomingMessageContext(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v4 + 80);
  v9 = 7;
  if (!v5)
  {
    v9 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_33;
  }

  v10 = ((((((((v9 + *(*(*(a3 + 16) - 8) + 64) + ((v8 + 16) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 67) & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  v11 = a2 - v7;
  v12 = v10 & 0xFFFFFFF8;
  if ((v10 & 0xFFFFFFF8) != 0)
  {
    v13 = 2;
  }

  else
  {
    v13 = v11 + 1;
  }

  if (v13 >= 0x10000)
  {
    v14 = 4;
  }

  else
  {
    v14 = 2;
  }

  if (v13 < 0x100)
  {
    v14 = 1;
  }

  if (v13 >= 2)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (v15 > 1)
  {
    if (v15 == 2)
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_33;
      }
    }
  }

  else if (!v15 || (v16 = *(a1 + v10)) == 0)
  {
LABEL_33:
    if ((v6 & 0x80000000) != 0)
    {
      v20 = (*(v4 + 48))((a1 + v8 + 16) & ~v8);
      if (v20 >= 2)
      {
        return v20 - 1;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v19 = *(a1 + 8);
      if (v19 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      return (v19 + 1);
    }
  }

  v18 = v16 - 1;
  if (v12)
  {
    v18 = 0;
    LODWORD(v12) = *a1;
  }

  return v7 + (v12 | v18) + 1;
}

void storeEnumTagSinglePayload for MLS.IncomingMessageContext(void *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (!v7)
  {
    v8 = 0;
  }

  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(v6 + 80);
  v11 = *(*(*(a4 + 16) - 8) + 64);
  if (!v7)
  {
    ++v11;
  }

  v12 = ((((((((v11 + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 67) & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v9 < a3)
  {
    v13 = a3 - v9;
    if (((((((((v11 + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFF8) + 67) & 0xFFFFFFF8) + 55) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v14 = v13 + 1;
    }

    else
    {
      v14 = 2;
    }

    if (v14 >= 0x10000)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    if (v14 >= 2)
    {
      v5 = v15;
    }

    else
    {
      v5 = 0;
    }
  }

  if (a2 > v9)
  {
    if (((((((((v11 + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFF8) + 67) & 0xFFFFFFF8) + 55) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v16 = a2 - v9;
    }

    else
    {
      v16 = 1;
    }

    if (((((((((v11 + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFF8) + 67) & 0xFFFFFFF8) + 55) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v17 = ~v9 + a2;
      v18 = a1;
      bzero(a1, v12);
      a1 = v18;
      *v18 = v17;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(a1 + v12) = v16;
      }

      else
      {
        *(a1 + v12) = v16;
      }
    }

    else if (v5)
    {
      *(a1 + v12) = v16;
    }

    return;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(a1 + v12) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_38;
    }

    *(a1 + v12) = 0;
LABEL_37:
    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

  if (!v5)
  {
    goto LABEL_37;
  }

  *(a1 + v12) = 0;
  if (!a2)
  {
    return;
  }

LABEL_38:
  if ((v8 & 0x80000000) != 0)
  {
    v19 = ((a1 + v10 + 16) & ~v10);
    if (v8 >= a2)
    {
      v23 = *(v6 + 56);
      v24 = a2 + 1;
      v25 = (a1 + v10 + 16) & ~v10;

      v23(v25, v24);
    }

    else
    {
      if (v11 <= 3)
      {
        v20 = ~(-1 << (8 * v11));
      }

      else
      {
        v20 = -1;
      }

      if (v11)
      {
        v21 = v20 & (~v8 + a2);
        if (v11 <= 3)
        {
          v22 = v11;
        }

        else
        {
          v22 = 4;
        }

        bzero(v19, v11);
        if (v22 > 2)
        {
          if (v22 == 3)
          {
            *v19 = v21;
            v19[2] = BYTE2(v21);
          }

          else
          {
            *v19 = v21;
          }
        }

        else if (v22 == 1)
        {
          *v19 = v21;
        }

        else
        {
          *v19 = v21;
        }
      }
    }
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    a1[1] = 0;
  }

  else
  {
    a1[1] = a2 - 1;
  }
}

void _s10Foundation4DataVSgMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata completion function for MLS.IncomingFailureToDecryptContext_v2(uint64_t a1)
{
  type metadata accessor for Optional();
  if (v1 <= 0x3F)
  {
    _s10Foundation4DataVSgMaTm_0(319, &lazy cache variable for type metadata for Data?, MEMORY[0x277CC9318]);
    if (v2 <= 0x3F)
    {
      _s10Foundation4DataVSgMaTm_0(319, &lazy cache variable for type metadata for MLS.SigningInput?, &type metadata for MLS.SigningInput);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for MLS.IncomingFailureToDecryptContext_v2(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v4 + 80);
  v9 = 7;
  if (!v5)
  {
    v9 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_33;
  }

  v10 = ((((((v9 + *(*(*(a3 + 16) - 8) + 64) + ((v8 + 16) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 67) & 0xFFFFFFFFFFFFFFF8) + 8;
  v11 = a2 - v7;
  v12 = v10 & 0xFFFFFFF8;
  if ((v10 & 0xFFFFFFF8) != 0)
  {
    v13 = 2;
  }

  else
  {
    v13 = v11 + 1;
  }

  if (v13 >= 0x10000)
  {
    v14 = 4;
  }

  else
  {
    v14 = 2;
  }

  if (v13 < 0x100)
  {
    v14 = 1;
  }

  if (v13 >= 2)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (v15 > 1)
  {
    if (v15 == 2)
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_33;
      }
    }
  }

  else if (!v15 || (v16 = *(a1 + v10)) == 0)
  {
LABEL_33:
    if ((v6 & 0x80000000) != 0)
    {
      v20 = (*(v4 + 48))((a1 + v8 + 16) & ~v8);
      if (v20 >= 2)
      {
        return v20 - 1;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v19 = *(a1 + 8);
      if (v19 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      return (v19 + 1);
    }
  }

  v18 = v16 - 1;
  if (v12)
  {
    v18 = 0;
    LODWORD(v12) = *a1;
  }

  return v7 + (v12 | v18) + 1;
}

void storeEnumTagSinglePayload for MLS.IncomingFailureToDecryptContext_v2(void *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (!v7)
  {
    v8 = 0;
  }

  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(v6 + 80);
  v11 = *(*(*(a4 + 16) - 8) + 64);
  if (!v7)
  {
    ++v11;
  }

  v12 = ((((((v11 + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 67) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v9 < a3)
  {
    v13 = a3 - v9;
    if (((((((v11 + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 67) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v14 = v13 + 1;
    }

    else
    {
      v14 = 2;
    }

    if (v14 >= 0x10000)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    if (v14 >= 2)
    {
      v5 = v15;
    }

    else
    {
      v5 = 0;
    }
  }

  if (a2 > v9)
  {
    if (((((((v11 + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 67) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v16 = a2 - v9;
    }

    else
    {
      v16 = 1;
    }

    if (((((((v11 + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 67) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v17 = ~v9 + a2;
      v18 = a1;
      bzero(a1, v12);
      a1 = v18;
      *v18 = v17;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(a1 + v12) = v16;
      }

      else
      {
        *(a1 + v12) = v16;
      }
    }

    else if (v5)
    {
      *(a1 + v12) = v16;
    }

    return;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(a1 + v12) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_38;
    }

    *(a1 + v12) = 0;
LABEL_37:
    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

  if (!v5)
  {
    goto LABEL_37;
  }

  *(a1 + v12) = 0;
  if (!a2)
  {
    return;
  }

LABEL_38:
  if ((v8 & 0x80000000) != 0)
  {
    v19 = ((a1 + v10 + 16) & ~v10);
    if (v8 >= a2)
    {
      v23 = *(v6 + 56);
      v24 = a2 + 1;
      v25 = (a1 + v10 + 16) & ~v10;

      v23(v25, v24);
    }

    else
    {
      if (v11 <= 3)
      {
        v20 = ~(-1 << (8 * v11));
      }

      else
      {
        v20 = -1;
      }

      if (v11)
      {
        v21 = v20 & (~v8 + a2);
        if (v11 <= 3)
        {
          v22 = v11;
        }

        else
        {
          v22 = 4;
        }

        bzero(v19, v11);
        if (v22 > 2)
        {
          if (v22 == 3)
          {
            *v19 = v21;
            v19[2] = BYTE2(v21);
          }

          else
          {
            *v19 = v21;
          }
        }

        else if (v22 == 1)
        {
          *v19 = v21;
        }

        else
        {
          *v19 = v21;
        }
      }
    }
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    a1[1] = 0;
  }

  else
  {
    a1[1] = a2 - 1;
  }
}

void type metadata completion function for MLS.IncomingFailureToDecryptContext(uint64_t a1)
{
  type metadata accessor for Optional();
  if (v1 <= 0x3F)
  {
    _s10Foundation4DataVSgMaTm_0(319, &lazy cache variable for type metadata for Data?, MEMORY[0x277CC9318]);
    if (v2 <= 0x3F)
    {
      _s10Foundation4DataVSgMaTm_0(319, &lazy cache variable for type metadata for MLS.SigningInput?, &type metadata for MLS.SigningInput);
      if (v3 <= 0x3F)
      {
        _s10Foundation4DataVSgMaTm_0(319, &lazy cache variable for type metadata for MLS.AdditionalAuthenticatedData?, &type metadata for MLS.AdditionalAuthenticatedData);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for MLS.IncomingFailureToDecryptContext(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v4 + 80);
  v9 = 7;
  if (!v5)
  {
    v9 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_33;
  }

  v10 = ((((((((v9 + *(*(*(a3 + 16) - 8) + 64) + ((v8 + 16) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 67) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 48;
  v11 = a2 - v7;
  v12 = v10 & 0xFFFFFFF8;
  if ((v10 & 0xFFFFFFF8) != 0)
  {
    v13 = 2;
  }

  else
  {
    v13 = v11 + 1;
  }

  if (v13 >= 0x10000)
  {
    v14 = 4;
  }

  else
  {
    v14 = 2;
  }

  if (v13 < 0x100)
  {
    v14 = 1;
  }

  if (v13 >= 2)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (v15 > 1)
  {
    if (v15 == 2)
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_33;
      }
    }
  }

  else if (!v15 || (v16 = *(a1 + v10)) == 0)
  {
LABEL_33:
    if ((v6 & 0x80000000) != 0)
    {
      v20 = (*(v4 + 48))((a1 + v8 + 16) & ~v8);
      if (v20 >= 2)
      {
        return v20 - 1;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v19 = *(a1 + 8);
      if (v19 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      return (v19 + 1);
    }
  }

  v18 = v16 - 1;
  if (v12)
  {
    v18 = 0;
    LODWORD(v12) = *a1;
  }

  return v7 + (v12 | v18) + 1;
}

void storeEnumTagSinglePayload for MLS.IncomingFailureToDecryptContext(void *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (!v7)
  {
    v8 = 0;
  }

  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(v6 + 80);
  v11 = *(*(*(a4 + 16) - 8) + 64);
  if (!v7)
  {
    ++v11;
  }

  v12 = ((((((((v11 + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 67) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 48;
  if (v9 < a3)
  {
    v13 = a3 - v9;
    if (((((((((v11 + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 67) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFD0)
    {
      v14 = v13 + 1;
    }

    else
    {
      v14 = 2;
    }

    if (v14 >= 0x10000)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    if (v14 >= 2)
    {
      v5 = v15;
    }

    else
    {
      v5 = 0;
    }
  }

  if (a2 > v9)
  {
    if (((((((((v11 + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 67) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFD0)
    {
      v16 = a2 - v9;
    }

    else
    {
      v16 = 1;
    }

    if (((((((((v11 + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 67) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFD0)
    {
      v17 = ~v9 + a2;
      v18 = a1;
      bzero(a1, v12);
      a1 = v18;
      *v18 = v17;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(a1 + v12) = v16;
      }

      else
      {
        *(a1 + v12) = v16;
      }
    }

    else if (v5)
    {
      *(a1 + v12) = v16;
    }

    return;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(a1 + v12) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_38;
    }

    *(a1 + v12) = 0;
LABEL_37:
    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

  if (!v5)
  {
    goto LABEL_37;
  }

  *(a1 + v12) = 0;
  if (!a2)
  {
    return;
  }

LABEL_38:
  if ((v8 & 0x80000000) != 0)
  {
    v19 = ((a1 + v10 + 16) & ~v10);
    if (v8 >= a2)
    {
      v23 = *(v6 + 56);
      v24 = a2 + 1;
      v25 = (a1 + v10 + 16) & ~v10;

      v23(v25, v24);
    }

    else
    {
      if (v11 <= 3)
      {
        v20 = ~(-1 << (8 * v11));
      }

      else
      {
        v20 = -1;
      }

      if (v11)
      {
        v21 = v20 & (~v8 + a2);
        if (v11 <= 3)
        {
          v22 = v11;
        }

        else
        {
          v22 = 4;
        }

        bzero(v19, v11);
        if (v22 > 2)
        {
          if (v22 == 3)
          {
            *v19 = v21;
            v19[2] = BYTE2(v21);
          }

          else
          {
            *v19 = v21;
          }
        }

        else if (v22 == 1)
        {
          *v19 = v21;
        }

        else
        {
          *v19 = v21;
        }
      }
    }
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    a1[1] = 0;
  }

  else
  {
    a1[1] = a2 - 1;
  }
}

uint64_t type metadata instantiation function for MLS.IncomingErrorMessageContext(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for MLS.IncomingErrorMessageContext(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t storeEnumTagSinglePayload for MLS.IncomingErrorMessageContext(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata completion function for MLS.IncomingErrorMessageProcessedContext(uint64_t a1)
{
  result = type metadata accessor for Optional();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MLS.IncomingErrorMessageProcessedContext(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_33;
  }

  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v10 = a2 - v7;
  v11 = v9 & 0xFFFFFFF8;
  if ((v9 & 0xFFFFFFF8) != 0)
  {
    v12 = 2;
  }

  else
  {
    v12 = v10 + 1;
  }

  if (v12 >= 0x10000)
  {
    v13 = 4;
  }

  else
  {
    v13 = 2;
  }

  if (v12 < 0x100)
  {
    v13 = 1;
  }

  if (v12 >= 2)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_33;
      }
    }
  }

  else if (!v14 || (v15 = *(a1 + v9)) == 0)
  {
LABEL_33:
    if (v6 < 0x7FFFFFFF)
    {
      v19 = *((a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v19 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      return (v19 + 1);
    }

    else
    {
      v18 = (*(v4 + 48))(a1);
      if (v18 >= 2)
      {
        return v18 - 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v17 = v15 - 1;
  if (v11)
  {
    v17 = 0;
    LODWORD(v11) = *a1;
  }

  return v7 + (v11 | v17) + 1;
}

void storeEnumTagSinglePayload for MLS.IncomingErrorMessageProcessedContext(_DWORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = v6 - 1;
  if (!v6)
  {
    v7 = 0;
  }

  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(*(*(a4 + 16) - 8) + 64);
  if (!v6)
  {
    ++v9;
  }

  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v11 = a3 - v8 + 1;
  }

  else
  {
    v11 = 2;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a3)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (a2 > v8)
  {
    if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((v9 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v16 = ~v8 + a2;
      v17 = a1;
      bzero(a1, v10);
      a1 = v17;
      *v17 = v16;
    }

    if (v14 > 1)
    {
      if (v14 == 2)
      {
        *(a1 + v10) = v15;
      }

      else
      {
        *(a1 + v10) = v15;
      }
    }

    else if (v14)
    {
      *(a1 + v10) = v15;
    }

    return;
  }

  if (v14 > 1)
  {
    if (v14 != 2)
    {
      *(a1 + v10) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_40;
    }

    *(a1 + v10) = 0;
LABEL_39:
    if (!a2)
    {
      return;
    }

    goto LABEL_40;
  }

  if (!v14)
  {
    goto LABEL_39;
  }

  *(a1 + v10) = 0;
  if (!a2)
  {
    return;
  }

LABEL_40:
  if (v7 < 0x7FFFFFFF)
  {
    v22 = ((a1 + v9 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      v23 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v23 = a2 - 1;
    }

    *v22 = v23;
  }

  else if (v7 >= a2)
  {
    v24 = *(v5 + 56);

    v24();
  }

  else
  {
    if (v9 <= 3)
    {
      v18 = ~(-1 << (8 * v9));
    }

    else
    {
      v18 = -1;
    }

    if (v9)
    {
      v19 = v18 & (~v7 + a2);
      if (v9 <= 3)
      {
        v20 = v9;
      }

      else
      {
        v20 = 4;
      }

      v21 = a1;
      bzero(a1, v9);
      if (v20 > 2)
      {
        if (v20 == 3)
        {
          *v21 = v19;
          *(v21 + 2) = BYTE2(v19);
        }

        else
        {
          *v21 = v19;
        }
      }

      else if (v20 == 1)
      {
        *v21 = v19;
      }

      else
      {
        *v21 = v19;
      }
    }
  }
}

uint64_t type metadata completion function for MLS.GroupCreationProcessedContext(uint64_t a1)
{
  result = type metadata accessor for Optional();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MLS.GroupCreationProcessedContext(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_33;
  }

  v9 = ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 111) & 0xFFFFFFFFFFFFFFF8) + 8;
  v10 = a2 - v7;
  v11 = v9 & 0xFFFFFFF8;
  if ((v9 & 0xFFFFFFF8) != 0)
  {
    v12 = 2;
  }

  else
  {
    v12 = v10 + 1;
  }

  if (v12 >= 0x10000)
  {
    v13 = 4;
  }

  else
  {
    v13 = 2;
  }

  if (v12 < 0x100)
  {
    v13 = 1;
  }

  if (v12 >= 2)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_33;
      }
    }
  }

  else if (!v14 || (v15 = *(a1 + v9)) == 0)
  {
LABEL_33:
    if (v6 < 0x7FFFFFFF)
    {
      v19 = *(((a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      if (v19 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      return (v19 + 1);
    }

    else
    {
      v18 = (*(v4 + 48))(a1);
      if (v18 >= 2)
      {
        return v18 - 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v17 = v15 - 1;
  if (v11)
  {
    v17 = 0;
    LODWORD(v11) = *a1;
  }

  return v7 + (v11 | v17) + 1;
}

void storeEnumTagSinglePayload for MLS.GroupCreationProcessedContext(_DWORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (!v7)
  {
    v8 = 0;
  }

  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(*(*(a4 + 16) - 8) + 64);
  if (!v7)
  {
    ++v10;
  }

  v11 = ((((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 111) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v9 < a3)
  {
    v12 = a3 - v9;
    if (((((v10 + 7) & 0xFFFFFFF8) + 111) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v13 = v12 + 1;
    }

    else
    {
      v13 = 2;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v5 = v14;
    }

    else
    {
      v5 = 0;
    }
  }

  if (a2 > v9)
  {
    if (((((v10 + 7) & 0xFFFFFFF8) + 111) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v15 = a2 - v9;
    }

    else
    {
      v15 = 1;
    }

    if (((((v10 + 7) & 0xFFFFFFF8) + 111) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v16 = ~v9 + a2;
      v17 = a1;
      bzero(a1, v11);
      a1 = v17;
      *v17 = v16;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(a1 + v11) = v15;
      }

      else
      {
        *(a1 + v11) = v15;
      }
    }

    else if (v5)
    {
      *(a1 + v11) = v15;
    }

    return;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(a1 + v11) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_38;
    }

    *(a1 + v11) = 0;
LABEL_37:
    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

  if (!v5)
  {
    goto LABEL_37;
  }

  *(a1 + v11) = 0;
  if (!a2)
  {
    return;
  }

LABEL_38:
  if (v8 < 0x7FFFFFFF)
  {
    v22 = (a1 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
    if ((a2 & 0x80000000) != 0)
    {
      *(v22 + 72) = 0u;
      *(v22 + 88) = 0u;
      *(v22 + 56) = 0u;
      *(v22 + 40) = 0u;
      *(v22 + 24) = 0u;
      *(v22 + 8) = 0u;
      *v22 = a2 & 0x7FFFFFFF;
    }

    else
    {
      *(v22 + 8) = a2 - 1;
    }
  }

  else if (v8 >= a2)
  {
    v23 = *(v6 + 56);

    v23();
  }

  else
  {
    if (v10 <= 3)
    {
      v18 = ~(-1 << (8 * v10));
    }

    else
    {
      v18 = -1;
    }

    if (v10)
    {
      v19 = v18 & (~v8 + a2);
      if (v10 <= 3)
      {
        v20 = v10;
      }

      else
      {
        v20 = 4;
      }

      v21 = a1;
      bzero(a1, v10);
      if (v20 > 2)
      {
        if (v20 == 3)
        {
          *v21 = v19;
          *(v21 + 2) = BYTE2(v19);
        }

        else
        {
          *v21 = v19;
        }
      }

      else if (v20 == 1)
      {
        *v21 = v19;
      }

      else
      {
        *v21 = v19;
      }
    }
  }
}

uint64_t type metadata completion function for MLS.GroupOperationContext(uint64_t a1)
{
  result = type metadata accessor for Optional();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MLS.GroupOperationContext(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v4 + 80);
  v9 = 7;
  if (!v5)
  {
    v9 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_33;
  }

  v10 = ((v9 + *(*(*(a3 + 16) - 8) + 64) + ((v8 + 16) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 8;
  v11 = a2 - v7;
  v12 = v10 & 0xFFFFFFF8;
  if ((v10 & 0xFFFFFFF8) != 0)
  {
    v13 = 2;
  }

  else
  {
    v13 = v11 + 1;
  }

  if (v13 >= 0x10000)
  {
    v14 = 4;
  }

  else
  {
    v14 = 2;
  }

  if (v13 < 0x100)
  {
    v14 = 1;
  }

  if (v13 >= 2)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (v15 > 1)
  {
    if (v15 == 2)
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_33;
      }
    }
  }

  else if (!v15 || (v16 = *(a1 + v10)) == 0)
  {
LABEL_33:
    if ((v6 & 0x80000000) != 0)
    {
      v20 = (*(v4 + 48))((a1 + v8 + 16) & ~v8);
      if (v20 >= 2)
      {
        return v20 - 1;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v19 = *(a1 + 8);
      if (v19 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      return (v19 + 1);
    }
  }

  v18 = v16 - 1;
  if (v12)
  {
    v18 = 0;
    LODWORD(v12) = *a1;
  }

  return v7 + (v12 | v18) + 1;
}

void storeEnumTagSinglePayload for MLS.GroupOperationContext(void *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (!v7)
  {
    v8 = 0;
  }

  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(v6 + 80);
  v11 = *(*(*(a4 + 16) - 8) + 64);
  if (!v7)
  {
    ++v11;
  }

  v12 = ((v11 + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v9 < a3)
  {
    v13 = a3 - v9;
    if (((v11 + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v14 = v13 + 1;
    }

    else
    {
      v14 = 2;
    }

    if (v14 >= 0x10000)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    if (v14 >= 2)
    {
      v5 = v15;
    }

    else
    {
      v5 = 0;
    }
  }

  if (a2 > v9)
  {
    if (((v11 + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v16 = a2 - v9;
    }

    else
    {
      v16 = 1;
    }

    if (((v11 + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v17 = ~v9 + a2;
      v18 = a1;
      bzero(a1, v12);
      a1 = v18;
      *v18 = v17;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(a1 + v12) = v16;
      }

      else
      {
        *(a1 + v12) = v16;
      }
    }

    else if (v5)
    {
      *(a1 + v12) = v16;
    }

    return;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(a1 + v12) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_38;
    }

    *(a1 + v12) = 0;
LABEL_37:
    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

  if (!v5)
  {
    goto LABEL_37;
  }

  *(a1 + v12) = 0;
  if (!a2)
  {
    return;
  }

LABEL_38:
  if ((v8 & 0x80000000) != 0)
  {
    v19 = ((a1 + v10 + 16) & ~v10);
    if (v8 >= a2)
    {
      v23 = *(v6 + 56);
      v24 = a2 + 1;
      v25 = (a1 + v10 + 16) & ~v10;

      v23(v25, v24);
    }

    else
    {
      if (v11 <= 3)
      {
        v20 = ~(-1 << (8 * v11));
      }

      else
      {
        v20 = -1;
      }

      if (v11)
      {
        v21 = v20 & (~v8 + a2);
        if (v11 <= 3)
        {
          v22 = v11;
        }

        else
        {
          v22 = 4;
        }

        bzero(v19, v11);
        if (v22 > 2)
        {
          if (v22 == 3)
          {
            *v19 = v21;
            v19[2] = BYTE2(v21);
          }

          else
          {
            *v19 = v21;
          }
        }

        else if (v22 == 1)
        {
          *v19 = v21;
        }

        else
        {
          *v19 = v21;
        }
      }
    }
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    a1[1] = 0;
  }

  else
  {
    a1[1] = a2 - 1;
  }
}

void type metadata completion function for MLS.GroupOperationProcessedContext(uint64_t a1)
{
  type metadata accessor for Optional();
  if (v1 <= 0x3F)
  {
    type metadata accessor for DoNotEncode<Task<(), Never>>(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t getEnumTagSinglePayload for MLS.GroupOperationProcessedContext(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_33;
  }

  v9 = ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v10 = a2 - v7;
  v11 = v9 & 0xFFFFFFF8;
  if ((v9 & 0xFFFFFFF8) != 0)
  {
    v12 = 2;
  }

  else
  {
    v12 = v10 + 1;
  }

  if (v12 >= 0x10000)
  {
    v13 = 4;
  }

  else
  {
    v13 = 2;
  }

  if (v12 < 0x100)
  {
    v13 = 1;
  }

  if (v12 >= 2)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_33;
      }
    }
  }

  else if (!v14 || (v15 = *(a1 + v9)) == 0)
  {
LABEL_33:
    if (v6 < 0x7FFFFFFF)
    {
      v19 = *((a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v19 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      return (v19 + 1);
    }

    else
    {
      v18 = (*(v4 + 48))(a1);
      if (v18 >= 2)
      {
        return v18 - 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v17 = v15 - 1;
  if (v11)
  {
    v17 = 0;
    LODWORD(v11) = *a1;
  }

  return v7 + (v11 | v17) + 1;
}

void storeEnumTagSinglePayload for MLS.GroupOperationProcessedContext(_DWORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (!v7)
  {
    v8 = 0;
  }

  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(*(*(a4 + 16) - 8) + 64);
  if (!v7)
  {
    ++v10;
  }

  v11 = ((((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v9 < a3)
  {
    v12 = a3 - v9;
    if (((((v10 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v13 = v12 + 1;
    }

    else
    {
      v13 = 2;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v5 = v14;
    }

    else
    {
      v5 = 0;
    }
  }

  if (a2 > v9)
  {
    if (((((v10 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v15 = a2 - v9;
    }

    else
    {
      v15 = 1;
    }

    if (((((v10 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v16 = ~v9 + a2;
      v17 = a1;
      bzero(a1, v11);
      a1 = v17;
      *v17 = v16;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(a1 + v11) = v15;
      }

      else
      {
        *(a1 + v11) = v15;
      }
    }

    else if (v5)
    {
      *(a1 + v11) = v15;
    }

    return;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(a1 + v11) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_38;
    }

    *(a1 + v11) = 0;
LABEL_37:
    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

  if (!v5)
  {
    goto LABEL_37;
  }

  *(a1 + v11) = 0;
  if (!a2)
  {
    return;
  }

LABEL_38:
  if (v8 < 0x7FFFFFFF)
  {
    v22 = ((a1 + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      v23 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v23 = a2 - 1;
    }

    *v22 = v23;
  }

  else if (v8 >= a2)
  {
    v24 = *(v6 + 56);

    v24();
  }

  else
  {
    if (v10 <= 3)
    {
      v18 = ~(-1 << (8 * v10));
    }

    else
    {
      v18 = -1;
    }

    if (v10)
    {
      v19 = v18 & (~v8 + a2);
      if (v10 <= 3)
      {
        v20 = v10;
      }

      else
      {
        v20 = 4;
      }

      v21 = a1;
      bzero(a1, v10);
      if (v20 > 2)
      {
        if (v20 == 3)
        {
          *v21 = v19;
          *(v21 + 2) = BYTE2(v19);
        }

        else
        {
          *v21 = v19;
        }
      }

      else if (v20 == 1)
      {
        *v21 = v19;
      }

      else
      {
        *v21 = v19;
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for MLS.IncomingFailureToDecryptContext.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MLS.IncomingFailureToDecryptContext.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

double MLS.SwiftMLSPersister.clientIdentifier.getter@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;

  return result;
}

uint64_t MLS.SwiftMLSPersister.delegatePersister.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 40) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*MLS.SwiftMLSPersister.delegatePersister.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 40);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return MLS.SwiftMLSPersister.delegatePersister.modify;
}

void MLS.SwiftMLSPersister.delegatePersister.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 40) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

void *MLS.SwiftMLSPersister.__allocating_init(clientIdentifier:delegatePersister:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  v7 = *a1;
  v6 = a1[1];
  v5[5] = 0;
  swift_unknownObjectWeakInit();
  v5[2] = v7;
  v5[3] = v6;
  swift_beginAccess();
  v5[5] = a3;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v5;
}

void *MLS.SwiftMLSPersister.init(clientIdentifier:delegatePersister:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = a1[1];
  v3[5] = 0;
  swift_unknownObjectWeakInit();
  v3[2] = v5;
  v3[3] = v6;
  swift_beginAccess();
  v3[5] = a3;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v3;
}

uint64_t MLS.SwiftMLSPersister.readGroupState(groupID:)(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v4 = static MLSActor.shared;
  v3[9] = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.SwiftMLSPersister.readGroupState(groupID:), v4, 0);
}

{
  v6 = *v3;
  v7 = *v3;
  *(*v3 + 96) = v2;

  swift_unknownObjectRelease();
  if (v2)
  {
    v8 = v6[9];

    outlined consume of Data._Representation(v6[2], v6[3]);

    return MEMORY[0x2822009F8](MLS.SwiftMLSPersister.readGroupState(groupID:), v8, 0);
  }

  else
  {

    outlined consume of Data._Representation(v6[2], v6[3]);
    v9 = v7[1];

    return v9(a1, a2);
  }
}

uint64_t MLS.SwiftMLSPersister.readGroupState(groupID:)()
{
  v2 = (*(**(v0 + 64) + 96))();
  *(v0 + 80) = v2;
  if (v2)
  {
    v3 = v1;
    v4 = *(v0 + 56);
    v5 = *(v0 + 64);
    v6 = *(v0 + 48);
    ObjectType = swift_getObjectType();
    *(v0 + 16) = v6;
    *(v0 + 24) = v4;
    v8 = *(v5 + 16);
    v9 = *(v5 + 24);
    *(v0 + 32) = v8;
    *(v0 + 40) = v9;
    v10 = *(v3 + 176);
    outlined copy of Data._Representation(v6, v4);

    v14 = (v10 + *v10);
    v11 = swift_task_alloc();
    *(v0 + 88) = v11;
    *v11 = v0;
    v11[1] = MLS.SwiftMLSPersister.readGroupState(groupID:);

    return v14(v0 + 16, v0 + 32, ObjectType, v3);
  }

  else
  {
    v13 = *(v0 + 8);

    return v13();
  }
}

{
  return (*(v0 + 8))();
}

uint64_t MLS.SwiftMLSPersister.readEpochData(groupID:epochID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[10] = a3;
  v4[11] = v3;
  v4[8] = a1;
  v4[9] = a2;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v5 = static MLSActor.shared;
  v4[12] = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.SwiftMLSPersister.readEpochData(groupID:epochID:), v5, 0);
}

uint64_t MLS.SwiftMLSPersister.readEpochData(groupID:epochID:)()
{
  v2 = (*(**(v0 + 88) + 96))();
  *(v0 + 104) = v2;
  if (v2)
  {
    v3 = v1;
    v5 = *(v0 + 80);
    v4 = *(v0 + 88);
    v7 = *(v0 + 64);
    v6 = *(v0 + 72);
    ObjectType = swift_getObjectType();
    *(v0 + 16) = v7;
    *(v0 + 24) = v6;
    *(v0 + 32) = 1;
    *(v0 + 40) = v5;
    v9 = *(v4 + 16);
    v10 = *(v4 + 24);
    *(v0 + 48) = v9;
    *(v0 + 56) = v10;
    v11 = *(v3 + 184);
    outlined copy of Data._Representation(v7, v6);

    v15 = (v11 + *v11);
    v12 = swift_task_alloc();
    *(v0 + 112) = v12;
    *v12 = v0;
    v12[1] = MLS.SwiftMLSPersister.readEpochData(groupID:epochID:);

    return v15(v0 + 16, v0 + 48, ObjectType, v3);
  }

  else
  {
    v14 = *(v0 + 8);

    return v14();
  }
}

{
  return (*(v0 + 8))();
}

uint64_t MLS.SwiftMLSPersister.readEpochData(groupID:epochID:)(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;
  *(*v3 + 120) = v2;

  swift_unknownObjectRelease();
  if (v2)
  {
    v8 = v6[12];

    outlined consume of Data._Representation(v6[2], v6[3]);

    return MEMORY[0x2822009F8](MLS.SwiftMLSPersister.readEpochData(groupID:epochID:), v8, 0);
  }

  else
  {

    outlined consume of Data._Representation(v6[2], v6[3]);
    v9 = v7[1];

    return v9(a1, a2);
  }
}

uint64_t MLS.SwiftMLSPersister.write(groupID:groupStateUpdate:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[13] = a3;
  v4[14] = v3;
  v4[11] = a1;
  v4[12] = a2;
  v5 = type metadata accessor for MLS.Storage.EpochRecord();
  v4[15] = v5;
  v4[16] = *(v5 - 8);
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v6 = static MLSActor.shared;
  v4[19] = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.SwiftMLSPersister.write(groupID:groupStateUpdate:), v6, 0);
}

uint64_t MLS.SwiftMLSPersister.write(groupID:groupStateUpdate:)()
{
  v57 = MLS.Storage.GroupStateUpdate.groupState.getter();
  v58 = v1;
  *(v0 + 160) = v57;
  *(v0 + 168) = v1;
  v2 = MLS.Storage.GroupStateUpdate.epochInserts.getter();
  v3 = *(v2 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v5 = *(v0 + 128);
    v65 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
    v6 = v65;
    v7 = *(v5 + 16);
    v5 += 16;
    v8 = v2 + ((*(v5 + 64) + 32) & ~*(v5 + 64));
    v60 = *(v5 + 56);
    v62 = v7;
    v9 = (v5 - 8);
    do
    {
      v10 = v6;
      v62(*(v0 + 144), v8, *(v0 + 120));
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v11 = *(v0 + 144);
      v12 = *(v0 + 120);
      v13 = MLS.Storage.EpochRecord.epochID.getter();
      v14 = MLS.Storage.EpochRecord.data.getter();
      v16 = v15;
      (*v9)(v11, v12);
      v6 = v10;
      v66 = v10;
      v17 = *(v10 + 16);
      v18 = *(v6 + 24);
      if (v17 >= v18 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v17 + 1, 1);
        v6 = v66;
      }

      *(v6 + 16) = v17 + 1;
      v19 = (v6 + 32 * v17);
      v19[4] = 1;
      v19[5] = v13;
      v19[6] = v14;
      v19[7] = v16;
      v8 += v60;
      --v3;
    }

    while (v3);

    v4 = MEMORY[0x277D84F90];
  }

  else
  {

    v6 = MEMORY[0x277D84F90];
  }

  v56 = v6;
  *(v0 + 176) = v6;
  v20 = MLS.Storage.GroupStateUpdate.epochUpdates.getter();
  v21 = *(v20 + 16);
  if (v21)
  {
    v22 = *(v0 + 128);
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v21, 0);
    v23 = v4;
    v24 = *(v22 + 16);
    v22 += 16;
    v25 = v20 + ((*(v22 + 64) + 32) & ~*(v22 + 64));
    v61 = *(v22 + 56);
    v63 = v24;
    v59 = (v22 - 8);
    do
    {
      v63(*(v0 + 136), v25, *(v0 + 120));
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v26 = *(v0 + 136);
      v27 = *(v0 + 120);
      v28 = MLS.Storage.EpochRecord.epochID.getter();
      v29 = MLS.Storage.EpochRecord.data.getter();
      v31 = v30;
      (*v59)(v26, v27);
      v33 = *(v23 + 16);
      v32 = *(v23 + 24);
      if (v33 >= v32 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1);
      }

      *(v23 + 16) = v33 + 1;
      v34 = (v23 + 32 * v33);
      v34[4] = 1;
      v34[5] = v28;
      v34[6] = v29;
      v34[7] = v31;
      v25 += v61;
      --v21;
    }

    while (v21);

    v4 = MEMORY[0x277D84F90];
  }

  else
  {

    v23 = MEMORY[0x277D84F90];
  }

  *(v0 + 184) = v23;
  v35 = MLS.Storage.GroupStateUpdate.epochDeletes.getter();
  v36 = *(v35 + 16);
  if (v36)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v36, 0);
    v37 = 32;
    v38 = v4;
    do
    {
      v39 = *(v35 + v37);
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v41 = *(v4 + 16);
      v40 = *(v4 + 24);
      if (v41 >= v40 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v40 > 1), v41 + 1, 1);
      }

      *(v4 + 16) = v41 + 1;
      v42 = v4 + 16 * v41;
      *(v42 + 32) = 1;
      *(v42 + 40) = v39;
      v37 += 8;
      --v36;
    }

    while (v36);
  }

  else
  {

    v38 = MEMORY[0x277D84F90];
  }

  *(v0 + 192) = v38;
  v43 = *(**(v0 + 112) + 96);
  outlined copy of Data._Representation(*(v0 + 88), *(v0 + 96));
  v44 = v43();
  *(v0 + 200) = v44;
  if (v44)
  {
    v46 = v45;
    v47 = *(v0 + 112);
    v49 = *(v0 + 88);
    v48 = *(v0 + 96);
    ObjectType = swift_getObjectType();
    *(v0 + 16) = v49;
    *(v0 + 24) = v48;
    *(v0 + 32) = v57;
    *(v0 + 40) = v58;
    *(v0 + 48) = v56;
    *(v0 + 56) = v23;
    *(v0 + 64) = v38;
    v51 = *(v47 + 24);
    *(v0 + 72) = *(v47 + 16);
    *(v0 + 80) = v51;
    v52 = *(v46 + 192);

    v64 = (v52 + *v52);
    v53 = swift_task_alloc();
    *(v0 + 208) = v53;
    *v53 = v0;
    v53[1] = MLS.SwiftMLSPersister.write(groupID:groupStateUpdate:);

    return v64(v0 + 16, v0 + 72, ObjectType, v46);
  }

  else
  {
    outlined consume of Data._Representation(*(v0 + 88), *(v0 + 96));
    outlined consume of Data?(v57, v58);

    v55 = *(v0 + 8);

    return v55();
  }
}

{
  v2 = *v1;
  *(*v1 + 216) = v0;

  swift_unknownObjectRelease();
  v3 = *(v2 + 152);
  if (v0)
  {
    v4 = MLS.SwiftMLSPersister.write(groupID:groupStateUpdate:);
  }

  else
  {
    v4 = MLS.SwiftMLSPersister.write(groupID:groupStateUpdate:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v1 = v0[21];
  v2 = v0[20];
  outlined consume of Data._Representation(v0[11], v0[12]);
  outlined consume of Data?(v2, v1);

  v3 = v0[1];

  return v3();
}

{
  v1 = v0[21];
  v2 = v0[20];
  outlined consume of Data._Representation(v0[11], v0[12]);
  outlined consume of Data?(v2, v1);

  v3 = v0[1];

  return v3();
}

uint64_t MLS.SwiftMLSPersister.readGroupState(_:)(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v3 = static MLSActor.shared;
  v2[8] = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.SwiftMLSPersister.readGroupState(_:), v3, 0);
}

uint64_t MLS.SwiftMLSPersister.readGroupState(_:)()
{
  v1 = (*(**(v0 + 56) + 96))();
  *(v0 + 72) = v1;
  if (v1)
  {
    v3 = v2;
    v4 = *(v0 + 56);
    ObjectType = swift_getObjectType();
    *(v0 + 16) = MLS.Storage.ReadGroupKey.groupID.getter();
    *(v0 + 24) = v6;
    v7 = *(v4 + 24);
    *(v0 + 32) = *(v4 + 16);
    *(v0 + 40) = v7;
    v8 = *(v3 + 176);

    v12 = (v8 + *v8);
    v9 = swift_task_alloc();
    *(v0 + 80) = v9;
    *v9 = v0;
    v9[1] = MLS.SwiftMLSPersister.readGroupState(_:);

    return v12(v0 + 16, v0 + 32, ObjectType, v3);
  }

  else
  {
    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t MLS.SwiftMLSPersister.readGroupState(_:)(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;
  *(*v3 + 88) = v2;

  swift_unknownObjectRelease();
  if (v2)
  {
    v8 = v6[8];

    outlined consume of Data._Representation(v6[2], v6[3]);

    return MEMORY[0x2822009F8](closure #1 in MLS.Client.update(groupDetails:forGroup:), v8, 0);
  }

  else
  {

    outlined consume of Data._Representation(v6[2], v6[3]);
    v9 = v7[1];

    return v9(a1, a2);
  }
}

uint64_t MLS.SwiftMLSPersister.readEpochData(_:)(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = type metadata accessor for MLS.Storage.EpochKey();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v4 = static MLSActor.shared;
  v2[14] = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.SwiftMLSPersister.readEpochData(_:), v4, 0);
}

uint64_t MLS.SwiftMLSPersister.readEpochData(_:)()
{
  v1 = (*(**(v0 + 72) + 96))();
  *(v0 + 120) = v1;
  if (v1)
  {
    v4 = *(v0 + 96);
    v3 = *(v0 + 104);
    v6 = *(v0 + 80);
    v5 = *(v0 + 88);
    v7 = *(v0 + 72);
    v19 = v2;
    ObjectType = swift_getObjectType();
    Epoch = MLS.Storage.ReadEpochKey.groupID.getter();
    v17 = v8;
    MLS.Storage.ReadEpochKey.key.getter();
    v9 = MLS.Storage.EpochKey.era.getter();
    v10 = *(v5 + 8);
    v10(v3, v6);
    MLS.Storage.ReadEpochKey.key.getter();
    v11 = MLS.Storage.EpochKey.epochID.getter();
    v10(v4, v6);
    *(v0 + 16) = Epoch;
    *(v0 + 24) = v17;
    *(v0 + 32) = v9;
    *(v0 + 40) = v11;
    v12 = *(v7 + 24);
    *(v0 + 48) = *(v7 + 16);
    *(v0 + 56) = v12;
    v13 = *(v19 + 184);

    v18 = (v13 + *v13);
    v14 = swift_task_alloc();
    *(v0 + 128) = v14;
    *v14 = v0;
    v14[1] = MLS.SwiftMLSPersister.readEpochData(_:);

    return v18(v0 + 16, v0 + 48, ObjectType, v19);
  }

  else
  {

    v16 = *(v0 + 8);

    return v16(0, 0xF000000000000000);
  }
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t MLS.SwiftMLSPersister.readEpochData(_:)(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v6[17] = v2;

  swift_unknownObjectRelease();
  if (v2)
  {
    v7 = v6[14];

    outlined consume of Data._Representation(v6[2], v6[3]);

    return MEMORY[0x2822009F8](MLS.SwiftMLSPersister.readEpochData(_:), v7, 0);
  }

  else
  {

    outlined consume of Data._Representation(v6[2], v6[3]);

    v8 = v6[1];

    return v8(a1, a2);
  }
}

uint64_t MLS.SwiftMLSPersister.write(_:)(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  v3 = type metadata accessor for MLS.Storage.EpochKey();
  v2[13] = v3;
  v2[14] = *(v3 - 8);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v4 = type metadata accessor for MLS.Storage.Record();
  v2[18] = v4;
  v2[19] = *(v4 - 8);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v5 = static MLSActor.shared;
  v2[22] = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.SwiftMLSPersister.write(_:), v5, 0);
}

uint64_t MLS.SwiftMLSPersister.write(_:)()
{
  v68 = MLS.Storage.WriteGroupData.groupID.getter();
  v69 = v1;
  *(v0 + 184) = v68;
  *(v0 + 192) = v1;
  v66 = MLS.Storage.WriteGroupData.groupState.getter();
  v67 = v2;
  *(v0 + 200) = v66;
  *(v0 + 208) = v2;
  v3 = MLS.Storage.WriteGroupData.epochInserts.getter();
  v4 = *(v3 + 16);
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v6 = *(v0 + 152);
    v7 = *(v0 + 112);
    v88 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
    v8 = v88;
    v9 = *(v6 + 16);
    v6 += 16;
    v10 = v3 + ((*(v6 + 64) + 32) & ~*(v6 + 64));
    v76 = *(v6 + 56);
    v77 = v9;
    v74 = (v7 + 8);
    v72 = (v6 - 8);
    do
    {
      v77(*(v0 + 168), v10, *(v0 + 144));
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v11 = *(v0 + 168);
      v12 = *(v0 + 136);
      v82 = *(v0 + 144);
      v13 = *(v0 + 128);
      v14 = *(v0 + 104);
      MLS.Storage.Record.key.getter();
      v84 = MLS.Storage.EpochKey.era.getter();
      v15 = *v74;
      (*v74)(v12, v14);
      MLS.Storage.Record.key.getter();
      v16 = MLS.Storage.EpochKey.epochID.getter();
      v15(v13, v14);
      v17 = MLS.Storage.Record.data.getter();
      v19 = v18;
      (*v72)(v11, v82);
      v21 = *(v88 + 16);
      v20 = *(v88 + 24);
      if (v21 >= v20 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1);
      }

      *(v88 + 16) = v21 + 1;
      v22 = (v88 + 32 * v21);
      v22[4] = v84;
      v22[5] = v16;
      v22[6] = v17;
      v22[7] = v19;
      v10 += v76;
      --v4;
    }

    while (v4);

    v5 = MEMORY[0x277D84F90];
  }

  else
  {

    v8 = MEMORY[0x277D84F90];
  }

  v87 = v8;
  *(v0 + 216) = v8;
  v23 = MLS.Storage.WriteGroupData.epochUpdates.getter();
  v24 = *(v23 + 16);
  if (v24)
  {
    v25 = *(v0 + 152);
    v26 = *(v0 + 112);
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v24, 0);
    v27 = v5;
    v28 = *(v25 + 16);
    v25 += 16;
    v29 = v23 + ((*(v25 + 64) + 32) & ~*(v25 + 64));
    v73 = *(v25 + 56);
    v75 = v28;
    v70 = (v25 - 8);
    v71 = (v26 + 8);
    do
    {
      v75(*(v0 + 160), v29, *(v0 + 144));
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v30 = *(v0 + 160);
      v31 = *(v0 + 136);
      v78 = *(v0 + 144);
      v32 = *(v0 + 128);
      v33 = *(v0 + 104);
      MLS.Storage.Record.key.getter();
      v83 = MLS.Storage.EpochKey.era.getter();
      v34 = *v71;
      (*v71)(v31, v33);
      MLS.Storage.Record.key.getter();
      v80 = MLS.Storage.EpochKey.epochID.getter();
      v34(v32, v33);
      v35 = MLS.Storage.Record.data.getter();
      v37 = v36;
      (*v70)(v30, v78);
      v39 = *(v27 + 16);
      v38 = *(v27 + 24);
      if (v39 >= v38 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v39 + 1, 1);
      }

      *(v27 + 16) = v39 + 1;
      v40 = (v27 + 32 * v39);
      v40[4] = v83;
      v40[5] = v80;
      v40[6] = v35;
      v40[7] = v37;
      v29 += v73;
      --v24;
    }

    while (v24);

    v5 = MEMORY[0x277D84F90];
  }

  else
  {

    v27 = MEMORY[0x277D84F90];
  }

  *(v0 + 224) = v27;
  v41 = MLS.Storage.WriteGroupData.epochDeletes.getter();
  v42 = *(v41 + 16);
  if (v42)
  {
    v85 = v27;
    v43 = *(v0 + 112);
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v42, 0);
    v44 = v5;
    v45 = *(v43 + 16);
    v43 += 16;
    v46 = v41 + ((*(v43 + 64) + 32) & ~*(v43 + 64));
    v79 = *(v43 + 56);
    v81 = v45;
    v47 = (v43 - 8);
    do
    {
      v81(*(v0 + 120), v46, *(v0 + 104));
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v48 = *(v0 + 120);
      v49 = *(v0 + 104);
      v50 = MLS.Storage.EpochKey.era.getter();
      v51 = MLS.Storage.EpochKey.epochID.getter();
      (*v47)(v48, v49);
      v53 = *(v44 + 16);
      v52 = *(v44 + 24);
      if (v53 >= v52 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v52 > 1), v53 + 1, 1);
      }

      *(v44 + 16) = v53 + 1;
      v54 = v44 + 16 * v53;
      *(v54 + 32) = v50;
      *(v54 + 40) = v51;
      v46 += v79;
      --v42;
    }

    while (v42);

    v27 = v85;
  }

  else
  {

    v44 = MEMORY[0x277D84F90];
  }

  *(v0 + 232) = v44;
  v56 = (*(**(v0 + 96) + 96))(v55);
  *(v0 + 240) = v56;
  if (v56)
  {
    v58 = v57;
    v59 = *(v0 + 96);
    ObjectType = swift_getObjectType();
    *(v0 + 16) = v68;
    *(v0 + 24) = v69;
    *(v0 + 32) = v66;
    *(v0 + 40) = v67;
    *(v0 + 48) = v87;
    *(v0 + 56) = v27;
    *(v0 + 64) = v44;
    v61 = *(v59 + 24);
    *(v0 + 72) = *(v59 + 16);
    *(v0 + 80) = v61;
    v62 = *(v58 + 192);

    v86 = (v62 + *v62);
    v63 = swift_task_alloc();
    *(v0 + 248) = v63;
    *v63 = v0;
    v63[1] = MLS.SwiftMLSPersister.write(_:);

    return v86(v0 + 16, v0 + 72, ObjectType, v58);
  }

  else
  {
    outlined consume of Data._Representation(v68, v69);
    outlined consume of Data?(v66, v67);

    v65 = *(v0 + 8);

    return v65();
  }
}

{
  v2 = *v1;
  *(*v1 + 256) = v0;

  swift_unknownObjectRelease();
  v3 = *(v2 + 176);
  if (v0)
  {
    v4 = MLS.SwiftMLSPersister.write(_:);
  }

  else
  {
    v4 = MLS.SwiftMLSPersister.write(_:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v1 = v0[26];
  v2 = v0[25];
  outlined consume of Data._Representation(v0[23], v0[24]);
  outlined consume of Data?(v2, v1);

  v3 = v0[1];

  return v3();
}

{
  v1 = v0[26];
  v2 = v0[25];
  outlined consume of Data._Representation(v0[23], v0[24]);
  outlined consume of Data?(v2, v1);

  v3 = v0[1];

  return v3();
}

uint64_t MLS.SwiftMLSPersister.read(clientUUID:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v3 = static MLSActor.shared;
  v2[4] = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.SwiftMLSPersister.read(clientUUID:), v3, 0);
}

uint64_t MLS.SwiftMLSPersister.read(clientUUID:)()
{
  v2 = (*(**(v0 + 24) + 96))();
  *(v0 + 40) = v2;
  if (v2)
  {
    v3 = v1;
    ObjectType = swift_getObjectType();
    v9 = (*(v3 + 200) + **(v3 + 200));
    v5 = swift_task_alloc();
    *(v0 + 48) = v5;
    *v5 = v0;
    v5[1] = MLS.SwiftMLSPersister.read(clientUUID:);
    v6 = *(v0 + 16);

    return v9(v6, ObjectType, v3);
  }

  else
  {
    v8 = *(v0 + 8);

    return v8();
  }
}

{
  swift_unknownObjectRelease();
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[1];

  return v3(v1, v2);
}

{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t MLS.SwiftMLSPersister.read(clientUUID:)(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v6[7] = v2;

  v7 = v6[4];
  if (v2)
  {
    v8 = MLS.SwiftMLSPersister.read(clientUUID:);
  }

  else
  {
    v6[8] = a2;
    v6[9] = a1;
    v8 = MLS.SwiftMLSPersister.read(clientUUID:);
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t MLS.SwiftMLSPersister.write(clientUUID:clientState:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v5 = static MLSActor.shared;
  v4[6] = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.SwiftMLSPersister.write(clientUUID:clientState:), v5, 0);
}

uint64_t MLS.SwiftMLSPersister.write(clientUUID:clientState:)()
{
  v2 = (*(**(v0 + 40) + 96))();
  *(v0 + 56) = v2;
  if (v2)
  {
    v3 = v1;
    ObjectType = swift_getObjectType();
    v11 = (*(v3 + 208) + **(v3 + 208));
    v5 = swift_task_alloc();
    *(v0 + 64) = v5;
    *v5 = v0;
    v5[1] = MLS.SwiftMLSPersister.write(clientUUID:clientState:);
    v6 = *(v0 + 24);
    v7 = *(v0 + 32);
    v8 = *(v0 + 16);

    return v11(v8, v6, v7, ObjectType, v3);
  }

  else
  {
    v10 = *(v0 + 8);

    return v10();
  }
}

{
  v2 = *v1;
  v2[9] = v0;

  if (v0)
  {
    v3 = v2[6];

    return MEMORY[0x2822009F8](MLS.SwiftMLSPersister.write(clientUUID:clientState:), v3, 0);
  }

  else
  {
    swift_unknownObjectRelease();
    v4 = v2[1];

    return v4();
  }
}

{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t MLS.SwiftMLSPersister.deinit()
{

  outlined destroy of weak MLS.Persister?(v0 + 32);
  return v0;
}

uint64_t MLS.SwiftMLSPersister.__deallocating_deinit()
{

  outlined destroy of weak MLS.Persister?(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for MLS.Storage.ClientStateStorage.read(clientUUID:) in conformance MLS.SwiftMLSPersister(uint64_t a1)
{
  v6 = (*(**v1 + 176) + **(**v1 + 176));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = protocol witness for MLS.Storage.ClientStateStorage.read(clientUUID:) in conformance MLS.SwiftMLSPersister;

  return v6(a1);
}

uint64_t protocol witness for MLS.Storage.ClientStateStorage.write(clientUUID:clientState:) in conformance MLS.SwiftMLSPersister(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(**v3 + 184) + **(**v3 + 184));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v10(a1, a2, a3);
}

uint64_t protocol witness for MLS.Storage.GroupStateStorage.readGroupState(groupID:) in conformance MLS.SwiftMLSPersister(uint64_t a1, uint64_t a2)
{
  v8 = (*(**v2 + 128) + **(**v2 + 128));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = protocol witness for MLS.Storage.GroupStateStorage.readGroupState(groupID:) in conformance MLS.SwiftMLSPersister;

  return v8(a1, a2);
}

{
  v10 = *v3;

  v8 = *(v10 + 8);
  if (!v2)
  {
    v6 = a1;
    v7 = a2;
  }

  return v8(v6, v7);
}

uint64_t protocol witness for MLS.Storage.GroupStateStorage.readEpochData(groupID:epochID:) in conformance MLS.SwiftMLSPersister(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(**v3 + 136) + **(**v3 + 136));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = protocol witness for MLS.Storage.ClientStateStorage.read(clientUUID:) in conformance MLS.SwiftMLSPersister;

  return v10(a1, a2, a3);
}

uint64_t protocol witness for MLS.Storage.GroupStateStorage.write(groupID:groupStateUpdate:) in conformance MLS.SwiftMLSPersister(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(**v3 + 144) + **(**v3 + 144));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v10(a1, a2, a3);
}

uint64_t protocol witness for MLS.Storage.GroupStateStorageV2.readGroupState(_:) in conformance MLS.SwiftMLSPersister(uint64_t a1)
{
  v6 = (*(**v1 + 152) + **(**v1 + 152));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = protocol witness for MLS.Storage.ClientStateStorage.read(clientUUID:) in conformance MLS.SwiftMLSPersister;

  return v6(a1);
}

uint64_t protocol witness for MLS.Storage.GroupStateStorageV2.readEpochData(_:) in conformance MLS.SwiftMLSPersister(uint64_t a1)
{
  v6 = (*(**v1 + 160) + **(**v1 + 160));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = protocol witness for MLS.Storage.ClientStateStorage.read(clientUUID:) in conformance MLS.SwiftMLSPersister;

  return v6(a1);
}

uint64_t protocol witness for MLS.Storage.GroupStateStorageV2.write(_:) in conformance MLS.SwiftMLSPersister(uint64_t a1)
{
  v6 = (*(**v1 + 168) + **(**v1 + 168));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v6(a1);
}

uint64_t instantiation function for generic protocol witness table for MLS.SwiftMLSPersister(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type MLS.SwiftMLSPersister and conformance MLS.SwiftMLSPersister(&lazy protocol witness table cache variable for type MLS.SwiftMLSPersister and conformance MLS.SwiftMLSPersister, &protocol conformance descriptor for MLS.SwiftMLSPersister);
  a1[2] = lazy protocol witness table accessor for type MLS.SwiftMLSPersister and conformance MLS.SwiftMLSPersister(&lazy protocol witness table cache variable for type MLS.SwiftMLSPersister and conformance MLS.SwiftMLSPersister, &protocol conformance descriptor for MLS.SwiftMLSPersister);
  result = lazy protocol witness table accessor for type MLS.SwiftMLSPersister and conformance MLS.SwiftMLSPersister(&lazy protocol witness table cache variable for type MLS.SwiftMLSPersister and conformance MLS.SwiftMLSPersister, &protocol conformance descriptor for MLS.SwiftMLSPersister);
  a1[3] = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type MLS.SwiftMLSPersister and conformance MLS.SwiftMLSPersister(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MLS.SwiftMLSPersister();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26503F538@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 96))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_26503F584(void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = *(**a2 + 104);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

uint64_t dispatch thunk of MLS.SwiftMLSPersister.readGroupState(groupID:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 128) + **(*v2 + 128));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = dispatch thunk of MLS.SwiftMLSPersister.readGroupState(groupID:);

  return v8(a1, a2);
}

uint64_t dispatch thunk of MLS.SwiftMLSPersister.readEpochData(groupID:epochID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 136) + **(*v3 + 136));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = dispatch thunk of MLS.SwiftMLSPersister.readEpochData(groupID:epochID:);

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of MLS.SwiftMLSPersister.readEpochData(groupID:epochID:)(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t dispatch thunk of MLS.SwiftMLSPersister.write(groupID:groupStateUpdate:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 144) + **(*v3 + 144));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of MLS.SwiftMLSPersister.readGroupState(_:)(uint64_t a1)
{
  v6 = (*(*v1 + 152) + **(*v1 + 152));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = dispatch thunk of MLS.SwiftMLSPersister.readGroupState(groupID:);

  return v6(a1);
}

uint64_t dispatch thunk of MLS.SwiftMLSPersister.readEpochData(_:)(uint64_t a1)
{
  v6 = (*(*v1 + 160) + **(*v1 + 160));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = dispatch thunk of MLS.SwiftMLSPersister.readGroupState(groupID:);

  return v6(a1);
}

uint64_t dispatch thunk of MLS.SwiftMLSPersister.write(_:)(uint64_t a1)
{
  v6 = (*(*v1 + 168) + **(*v1 + 168));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v6(a1);
}

uint64_t dispatch thunk of MLS.SwiftMLSPersister.read(clientUUID:)(uint64_t a1)
{
  v6 = (*(*v1 + 176) + **(*v1 + 176));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = dispatch thunk of MLS.SwiftMLSPersister.readGroupState(groupID:);

  return v6(a1);
}

uint64_t dispatch thunk of MLS.SwiftMLSPersister.write(clientUUID:clientState:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 184) + **(*v3 + 184));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v10(a1, a2, a3);
}

void *MLS.OutgoingReplaceExpiredCertsState.init(keyPackageResult:targetMembers:)@<X0>(void *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = *result;
  a3[1] = a2;
  return result;
}

__n128 MLS.OutgoingEventState.init(eventStorageIdentifier:eventSpecificState:eventIdentifier:clientContext:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, __n128 *a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, __n128 *a8@<X8>)
{
  v8 = a3[1].n128_u8[0];
  a8->n128_u64[0] = a1;
  a8->n128_u64[1] = a2;
  result = *a3;
  a8[1] = *a3;
  a8[2].n128_u8[0] = v8;
  a8[2].n128_u64[1] = a4;
  a8[3].n128_u64[0] = a5;
  a8[3].n128_u64[1] = a6;
  a8[4].n128_u64[0] = a7;
  return result;
}

uint64_t MLS.OutgoingGroupNameChangeState.init(groupName:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t MLS.OutgoingAddMemberState.init(otherKeyPackages:otherMembers:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ15SecureMessaging3MLSO9AllMemberO_SayAE14KeyPackageInfoVGTt1g5(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v23 = result + 64;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 64);
  v22 = (v4 + 63) >> 6;
  while (v6)
  {
    v7 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
LABEL_13:
    v10 = v7 | (v3 << 6);
    v11 = *(v2 + 48) + 32 * v10;
    v12 = *v11;
    v13 = *(v11 + 8);
    v14 = *(v11 + 16);
    v15 = *(v11 + 24);
    v16 = *(*(v2 + 56) + 8 * v10);
    outlined copy of MLS.AllMember(*v11, v13);
    v17 = v16 == 0;

    if (!v16)
    {
      return v17;
    }

    specialized __RawDictionaryStorage.find<A>(_:)(v12, v13, v14, v15);
    v19 = v18;
    outlined consume of MLS.AllMember(v12, v13);
    if ((v19 & 1) == 0)
    {

      return 0;
    }

    v21 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ15SecureMessaging3MLSO14KeyPackageInfoV_Tt1g5(v20, v16);

    v17 = 0;
    if ((v21 & 1) == 0)
    {
      return v17;
    }
  }

  v8 = v3;
  while (1)
  {
    v3 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v3 >= v22)
    {
      return 1;
    }

    v9 = *(v23 + 8 * v3);
    ++v8;
    if (v9)
    {
      v7 = __clz(__rbit64(v9));
      v6 = (v9 - 1) & v9;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_15SecureMessaging15MetricCollectorV5EventVTt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v74 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v70 - v8;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSg_ADtMd, &_s10Foundation4DateVSg_ADtMR);
  MEMORY[0x28223BE20](v81);
  v82 = &v70 - v10;
  v80 = type metadata accessor for MetricCollector.Event(0);
  v87 = *(v80 - 8);
  v11 = MEMORY[0x28223BE20](v80);
  v13 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v85 = &v70 - v15;
  MEMORY[0x28223BE20](v14);
  v79 = &v70 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_15SecureMessaging15MetricCollectorV5EventV5valuetSgMd, &_sSS3key_15SecureMessaging15MetricCollectorV5EventV5valuetSgMR);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v20 = (&v70 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x28223BE20](v18);
  v84 = (&v70 - v22);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v83 = v13;
  v23 = 0;
  v75 = a1;
  v26 = *(a1 + 64);
  v25 = a1 + 64;
  v24 = v26;
  v27 = 1 << *(v25 - 32);
  v28 = -1;
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  v29 = v28 & v24;
  v70 = (v27 + 63) >> 6;
  v71 = v25;
  v77 = (v5 + 48);
  v78 = a2;
  v72 = (v5 + 32);
  v73 = (v5 + 8);
  v76 = v20;
  while (v29)
  {
    v86 = (v29 - 1) & v29;
    v30 = __clz(__rbit64(v29)) | (v23 << 6);
LABEL_16:
    v36 = (*(v75 + 48) + 16 * v30);
    v38 = *v36;
    v37 = v36[1];
    v39 = v79;
    outlined init with copy of MetricCollector.Event(*(v75 + 56) + *(v87 + 72) * v30, v79);
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_15SecureMessaging15MetricCollectorV5EventV5valuetMd, &_sSS3key_15SecureMessaging15MetricCollectorV5EventV5valuetMR);
    v41 = *(v40 + 48);
    *v20 = v38;
    v20[1] = v37;
    outlined init with take of MetricCollector.Event(v39, v20 + v41);
    (*(*(v40 - 8) + 56))(v20, 0, 1, v40);

    v33 = v84;
LABEL_17:
    outlined init with take of (key: String, value: MetricCollector.Event)?(v20, v33);
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_15SecureMessaging15MetricCollectorV5EventV5valuetMd, &_sSS3key_15SecureMessaging15MetricCollectorV5EventV5valuetMR);
    v43 = (*(*(v42 - 8) + 48))(v33, 1, v42);
    v44 = v43 == 1;
    if (v43 == 1)
    {
      return v44;
    }

    v45 = v9;
    v46 = *(v42 + 48);
    v47 = *v33;
    v48 = v33[1];
    v49 = v33 + v46;
    v50 = v85;
    outlined init with take of MetricCollector.Event(v49, v85);
    v51 = v47;
    v52 = v78;
    v53 = specialized __RawDictionaryStorage.find<A>(_:)(v51, v48);
    v55 = v54;

    if ((v55 & 1) == 0)
    {
      outlined destroy of MetricCollector.Event(v50);
      return 0;
    }

    v56 = v83;
    outlined init with copy of MetricCollector.Event(*(v52 + 56) + *(v87 + 72) * v53, v83);
    v57 = v50;
    if ((static Date.== infix(_:_:)() & 1) == 0)
    {
      outlined destroy of MetricCollector.Event(v56);
      outlined destroy of MetricCollector.Event(v50);
      return 0;
    }

    v58 = *(v80 + 20);
    v59 = *(v81 + 48);
    v60 = v56 + v58;
    v61 = v56;
    v62 = v82;
    outlined init with copy of Date?(v60, v82);
    outlined init with copy of Date?(v57 + v58, v62 + v59);
    v63 = *v77;
    if ((*v77)(v62, 1, v4) == 1)
    {
      outlined destroy of MetricCollector.Event(v61);
      outlined destroy of MetricCollector.Event(v57);
      if (v63(v62 + v59, 1, v4) != 1)
      {
        goto LABEL_31;
      }

      v9 = v45;
      result = outlined destroy of NSObject?(v62, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v20 = v76;
      v29 = v86;
    }

    else
    {
      v9 = v45;
      outlined init with copy of Date?(v62, v45);
      if (v63(v62 + v59, 1, v4) == 1)
      {
        outlined destroy of MetricCollector.Event(v83);
        outlined destroy of MetricCollector.Event(v85);
        (*v73)(v45, v4);
LABEL_31:
        outlined destroy of NSObject?(v62, &_s10Foundation4DateVSg_ADtMd, &_s10Foundation4DateVSg_ADtMR);
        return 0;
      }

      v64 = v4;
      v65 = v74;
      (*v72)(v74, v62 + v59, v64);
      lazy protocol witness table accessor for type Date and conformance Date();
      v66 = dispatch thunk of static Equatable.== infix(_:_:)();
      v67 = *v73;
      v68 = v65;
      v4 = v64;
      (*v73)(v68, v64);
      outlined destroy of MetricCollector.Event(v83);
      outlined destroy of MetricCollector.Event(v85);
      v67(v9, v64);
      result = outlined destroy of NSObject?(v62, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v20 = v76;
      v29 = v86;
      if ((v66 & 1) == 0)
      {
        return v44;
      }
    }
  }

  if (v70 <= v23 + 1)
  {
    v31 = v23 + 1;
  }

  else
  {
    v31 = v70;
  }

  v32 = v31 - 1;
  v33 = v84;
  while (1)
  {
    v34 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v34 >= v70)
    {
      v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_15SecureMessaging15MetricCollectorV5EventV5valuetMd, &_sSS3key_15SecureMessaging15MetricCollectorV5EventV5valuetMR);
      (*(*(v69 - 8) + 56))(v20, 1, 1, v69);
      v86 = 0;
      v23 = v32;
      goto LABEL_17;
    }

    v35 = *(v71 + 8 * v34);
    ++v23;
    if (v35)
    {
      v86 = (v35 - 1) & v35;
      v30 = __clz(__rbit64(v35)) | (v34 << 6);
      v23 = v34;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

unint64_t MLS.OutgoingEventState.EventSpecificState.CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0xD000000000000013;
    v6 = 0x6E616843656D616ELL;
    if (a1 != 8)
    {
      v6 = 0x6574616572636572;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x636E79736572;
    if (a1 != 5)
    {
      v7 = 0x646172676E776F64;
    }

    if (a1 <= 6u)
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
    v1 = 0x657461657263;
    v2 = 0x626D654D6B63696BLL;
    v3 = 0x655365766F6D6572;
    if (a1 != 3)
    {
      v3 = 0x746164705579656BLL;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x65626D654D646461;
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
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.OutgoingEventState.EventSpecificState.AddMemberCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.OutgoingEventState.EventSpecificState.AddMemberCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.AddMemberCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.OutgoingEventState.EventSpecificState.AddMemberCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.OutgoingEventState.EventSpecificState.AddMemberCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.AddMemberCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MLS.OutgoingEventState.EventSpecificState.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized MLS.OutgoingEventState.EventSpecificState.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.OutgoingEventState.EventSpecificState.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.OutgoingEventState.EventSpecificState.CodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.OutgoingEventState.EventSpecificState.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.OutgoingEventState.EventSpecificState.CodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.OutgoingEventState.EventSpecificState.CreateCodingKeys(uint64_t a1)
{
  CodingKeys = lazy protocol witness table accessor for type MLS.OutgoingEventState.EventSpecificState.CreateCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.CreateCodingKeys();

  return MEMORY[0x2821FE718](a1, CodingKeys);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.OutgoingEventState.EventSpecificState.CreateCodingKeys(uint64_t a1)
{
  CodingKeys = lazy protocol witness table accessor for type MLS.OutgoingEventState.EventSpecificState.CreateCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.CreateCodingKeys();

  return MEMORY[0x2821FE720](a1, CodingKeys);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.OutgoingEventState.EventSpecificState.DowngradeCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.OutgoingEventState.EventSpecificState.DowngradeCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.DowngradeCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.OutgoingEventState.EventSpecificState.DowngradeCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.OutgoingEventState.EventSpecificState.DowngradeCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.DowngradeCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.OutgoingEventState.EventSpecificState.KeyUpdateCodingKeys(uint64_t a1)
{
  updated = lazy protocol witness table accessor for type MLS.OutgoingEventState.EventSpecificState.KeyUpdateCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.KeyUpdateCodingKeys();

  return MEMORY[0x2821FE718](a1, updated);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.OutgoingEventState.EventSpecificState.KeyUpdateCodingKeys(uint64_t a1)
{
  updated = lazy protocol witness table accessor for type MLS.OutgoingEventState.EventSpecificState.KeyUpdateCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.KeyUpdateCodingKeys();

  return MEMORY[0x2821FE720](a1, updated);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.OutgoingEventState.EventSpecificState.KickMemberCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.OutgoingEventState.EventSpecificState.KickMemberCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.KickMemberCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.OutgoingEventState.EventSpecificState.KickMemberCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.OutgoingEventState.EventSpecificState.KickMemberCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.KickMemberCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.OutgoingEventState.EventSpecificState.NameChangeCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.OutgoingEventState.EventSpecificState.NameChangeCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.NameChangeCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.OutgoingEventState.EventSpecificState.NameChangeCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.OutgoingEventState.EventSpecificState.NameChangeCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.NameChangeCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.OutgoingEventState.EventSpecificState.RecreateGroupCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.OutgoingEventState.EventSpecificState.RecreateGroupCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.RecreateGroupCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.OutgoingEventState.EventSpecificState.RecreateGroupCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.OutgoingEventState.EventSpecificState.RecreateGroupCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.RecreateGroupCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.OutgoingEventState.EventSpecificState.RemoveSelfCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.OutgoingEventState.EventSpecificState.RemoveSelfCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.RemoveSelfCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.OutgoingEventState.EventSpecificState.RemoveSelfCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.OutgoingEventState.EventSpecificState.RemoveSelfCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.RemoveSelfCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.OutgoingEventState.EventSpecificState.ReplaceExpiredCertsCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.OutgoingEventState.EventSpecificState.ReplaceExpiredCertsCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.ReplaceExpiredCertsCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.OutgoingEventState.EventSpecificState.ReplaceExpiredCertsCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.OutgoingEventState.EventSpecificState.ReplaceExpiredCertsCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.ReplaceExpiredCertsCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.OutgoingEventState.EventSpecificState.ResyncCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.OutgoingEventState.EventSpecificState.ResyncCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.ResyncCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.OutgoingEventState.EventSpecificState.ResyncCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.OutgoingEventState.EventSpecificState.ResyncCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.ResyncCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MLS.OutgoingEventState.EventSpecificState.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO18OutgoingEventStateV0h8SpecificI0O23RecreateGroupCodingKeys33_02FAC963364B859C8F7B94D17CE96BBALLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO18OutgoingEventStateV0h8SpecificI0O23RecreateGroupCodingKeys33_02FAC963364B859C8F7B94D17CE96BBALLOGMR);
  v60 = *(v3 - 8);
  v61 = v3;
  MEMORY[0x28223BE20](v3);
  v59 = &v35 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO18OutgoingEventStateV0h8SpecificI0O20NameChangeCodingKeys33_02FAC963364B859C8F7B94D17CE96BBALLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO18OutgoingEventStateV0h8SpecificI0O20NameChangeCodingKeys33_02FAC963364B859C8F7B94D17CE96BBALLOGMR);
  v57 = *(v5 - 8);
  v58 = v5;
  MEMORY[0x28223BE20](v5);
  v56 = &v35 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO18OutgoingEventStateV0h8SpecificI0O29ReplaceExpiredCertsCodingKeys33_02FAC963364B859C8F7B94D17CE96BBALLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO18OutgoingEventStateV0h8SpecificI0O29ReplaceExpiredCertsCodingKeys33_02FAC963364B859C8F7B94D17CE96BBALLOGMR);
  v54 = *(v7 - 8);
  v55 = v7;
  MEMORY[0x28223BE20](v7);
  v53 = &v35 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO18OutgoingEventStateV0h8SpecificI0O19DowngradeCodingKeys33_02FAC963364B859C8F7B94D17CE96BBALLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO18OutgoingEventStateV0h8SpecificI0O19DowngradeCodingKeys33_02FAC963364B859C8F7B94D17CE96BBALLOGMR);
  v51 = *(v9 - 8);
  v52 = v9;
  MEMORY[0x28223BE20](v9);
  v50 = &v35 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO18OutgoingEventStateV0h8SpecificI0O16ResyncCodingKeys33_02FAC963364B859C8F7B94D17CE96BBALLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO18OutgoingEventStateV0h8SpecificI0O16ResyncCodingKeys33_02FAC963364B859C8F7B94D17CE96BBALLOGMR);
  v48 = *(v11 - 8);
  v49 = v11;
  MEMORY[0x28223BE20](v11);
  v47 = &v35 - v12;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO18OutgoingEventStateV0h8SpecificI0O19KeyUpdateCodingKeys33_02FAC963364B859C8F7B94D17CE96BBALLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO18OutgoingEventStateV0h8SpecificI0O19KeyUpdateCodingKeys33_02FAC963364B859C8F7B94D17CE96BBALLOGMR);
  v45 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v44 = &v35 - v13;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO18OutgoingEventStateV0h8SpecificI0O20RemoveSelfCodingKeys33_02FAC963364B859C8F7B94D17CE96BBALLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO18OutgoingEventStateV0h8SpecificI0O20RemoveSelfCodingKeys33_02FAC963364B859C8F7B94D17CE96BBALLOGMR);
  v42 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v41 = &v35 - v14;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO18OutgoingEventStateV0h8SpecificI0O20KickMemberCodingKeys33_02FAC963364B859C8F7B94D17CE96BBALLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO18OutgoingEventStateV0h8SpecificI0O20KickMemberCodingKeys33_02FAC963364B859C8F7B94D17CE96BBALLOGMR);
  v39 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v38 = &v35 - v15;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO18OutgoingEventStateV0h8SpecificI0O19AddMemberCodingKeys33_02FAC963364B859C8F7B94D17CE96BBALLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO18OutgoingEventStateV0h8SpecificI0O19AddMemberCodingKeys33_02FAC963364B859C8F7B94D17CE96BBALLOGMR);
  v36 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v17 = &v35 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO18OutgoingEventStateV0h8SpecificI0O16CreateCodingKeys33_02FAC963364B859C8F7B94D17CE96BBALLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO18OutgoingEventStateV0h8SpecificI0O16CreateCodingKeys33_02FAC963364B859C8F7B94D17CE96BBALLOGMR);
  v35 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v35 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO18OutgoingEventStateV0h8SpecificI0O10CodingKeys33_02FAC963364B859C8F7B94D17CE96BBALLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO18OutgoingEventStateV0h8SpecificI0O10CodingKeys33_02FAC963364B859C8F7B94D17CE96BBALLOGMR);
  v22 = *(v21 - 8);
  v64 = v21;
  v65 = v22;
  MEMORY[0x28223BE20](v21);
  v24 = &v35 - v23;
  v25 = *v1;
  v62 = v1[1];
  v63 = v25;
  v26 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.OutgoingEventState.EventSpecificState.CodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v26 > 4)
  {
    if (v26 <= 6)
    {
      if (v26 == 5)
      {
        LOBYTE(v66) = 5;
        lazy protocol witness table accessor for type MLS.OutgoingEventState.EventSpecificState.ResyncCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.ResyncCodingKeys();
        v27 = v47;
        v28 = v64;
        v29 = v24;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        lazy protocol witness table accessor for type MLS.OutgoingResyncState and conformance MLS.OutgoingResyncState();
        v30 = v49;
        KeyedEncodingContainer.encode<A>(_:forKey:)();
        v31 = v48;
      }

      else
      {
        LOBYTE(v66) = 6;
        lazy protocol witness table accessor for type MLS.OutgoingEventState.EventSpecificState.DowngradeCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.DowngradeCodingKeys();
        v27 = v50;
        v28 = v64;
        v29 = v24;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        lazy protocol witness table accessor for type MLS.OutgoingDowngradeState and conformance MLS.OutgoingDowngradeState();
        v30 = v52;
        KeyedEncodingContainer.encode<A>(_:forKey:)();
        v31 = v51;
      }
    }

    else if (v26 == 7)
    {
      LOBYTE(v66) = 7;
      lazy protocol witness table accessor for type MLS.OutgoingEventState.EventSpecificState.ReplaceExpiredCertsCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.ReplaceExpiredCertsCodingKeys();
      v27 = v53;
      v28 = v64;
      v29 = v24;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v66 = v63;
      v67 = v62;
      lazy protocol witness table accessor for type MLS.OutgoingReplaceExpiredCertsState and conformance MLS.OutgoingReplaceExpiredCertsState();
      v30 = v55;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v31 = v54;
    }

    else if (v26 == 8)
    {
      LOBYTE(v66) = 8;
      lazy protocol witness table accessor for type MLS.OutgoingEventState.EventSpecificState.NameChangeCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.NameChangeCodingKeys();
      v27 = v56;
      v28 = v64;
      v29 = v24;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v66 = v63;
      v67 = v62;
      lazy protocol witness table accessor for type MLS.OutgoingGroupNameChangeState and conformance MLS.OutgoingGroupNameChangeState();
      v30 = v58;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v31 = v57;
    }

    else
    {
      LOBYTE(v66) = 9;
      lazy protocol witness table accessor for type MLS.OutgoingEventState.EventSpecificState.RecreateGroupCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.RecreateGroupCodingKeys();
      v27 = v59;
      v28 = v64;
      v29 = v24;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v66 = v63;
      lazy protocol witness table accessor for type MLS.OutgoingRecreateGroupState and conformance MLS.OutgoingRecreateGroupState();
      v30 = v61;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v31 = v60;
    }

    goto LABEL_20;
  }

  if (v26 > 1)
  {
    if (v26 == 2)
    {
      LOBYTE(v66) = 2;
      lazy protocol witness table accessor for type MLS.OutgoingEventState.EventSpecificState.KickMemberCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.KickMemberCodingKeys();
      v27 = v38;
      v28 = v64;
      v29 = v24;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v66 = v63;
      lazy protocol witness table accessor for type MLS.OutgoingKickMemberState and conformance MLS.OutgoingKickMemberState();
      v30 = v40;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v31 = v39;
    }

    else if (v26 == 3)
    {
      LOBYTE(v66) = 3;
      lazy protocol witness table accessor for type MLS.OutgoingEventState.EventSpecificState.RemoveSelfCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.RemoveSelfCodingKeys();
      v27 = v41;
      v28 = v64;
      v29 = v24;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      lazy protocol witness table accessor for type MLS.OutgoingRemoveSelfState and conformance MLS.OutgoingRemoveSelfState();
      v30 = v43;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v31 = v42;
    }

    else
    {
      LOBYTE(v66) = 4;
      lazy protocol witness table accessor for type MLS.OutgoingEventState.EventSpecificState.KeyUpdateCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.KeyUpdateCodingKeys();
      v27 = v44;
      v28 = v64;
      v29 = v24;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      lazy protocol witness table accessor for type MLS.OutgoingKeyUpdateState and conformance MLS.OutgoingKeyUpdateState();
      v30 = v46;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v31 = v45;
    }

LABEL_20:
    (*(v31 + 8))(v27, v30);
    return (*(v65 + 8))(v29, v28);
  }

  if (!v26)
  {
    LOBYTE(v66) = 0;
    lazy protocol witness table accessor for type MLS.OutgoingEventState.EventSpecificState.CreateCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.CreateCodingKeys();
    v32 = v64;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v66 = v63;
    v67 = v62;
    lazy protocol witness table accessor for type MLS.OutgoingCreateGroupState and conformance MLS.OutgoingCreateGroupState();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v35 + 8))(v20, v18);
    return (*(v65 + 8))(v24, v32);
  }

  LOBYTE(v66) = 1;
  lazy protocol witness table accessor for type MLS.OutgoingEventState.EventSpecificState.AddMemberCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.AddMemberCodingKeys();
  v28 = v64;
  v29 = v24;
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  v66 = v63;
  v67 = v62;
  lazy protocol witness table accessor for type MLS.OutgoingAddMemberState and conformance MLS.OutgoingAddMemberState();
  v34 = v37;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  (*(v36 + 8))(v17, v34);
  return (*(v65 + 8))(v29, v28);
}

uint64_t MLS.OutgoingEventState.EventSpecificState.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v91 = a2;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO18OutgoingEventStateV0h8SpecificI0O23RecreateGroupCodingKeys33_02FAC963364B859C8F7B94D17CE96BBALLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO18OutgoingEventStateV0h8SpecificI0O23RecreateGroupCodingKeys33_02FAC963364B859C8F7B94D17CE96BBALLOGMR);
  v82 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v86 = &v60[-v3];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO18OutgoingEventStateV0h8SpecificI0O20NameChangeCodingKeys33_02FAC963364B859C8F7B94D17CE96BBALLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO18OutgoingEventStateV0h8SpecificI0O20NameChangeCodingKeys33_02FAC963364B859C8F7B94D17CE96BBALLOGMR);
  v80 = *(v4 - 8);
  v81 = v4;
  MEMORY[0x28223BE20](v4);
  v87 = &v60[-v5];
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO18OutgoingEventStateV0h8SpecificI0O29ReplaceExpiredCertsCodingKeys33_02FAC963364B859C8F7B94D17CE96BBALLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO18OutgoingEventStateV0h8SpecificI0O29ReplaceExpiredCertsCodingKeys33_02FAC963364B859C8F7B94D17CE96BBALLOGMR);
  v77 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v84 = &v60[-v6];
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO18OutgoingEventStateV0h8SpecificI0O19DowngradeCodingKeys33_02FAC963364B859C8F7B94D17CE96BBALLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO18OutgoingEventStateV0h8SpecificI0O19DowngradeCodingKeys33_02FAC963364B859C8F7B94D17CE96BBALLOGMR);
  v76 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v90 = &v60[-v7];
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO18OutgoingEventStateV0h8SpecificI0O16ResyncCodingKeys33_02FAC963364B859C8F7B94D17CE96BBALLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO18OutgoingEventStateV0h8SpecificI0O16ResyncCodingKeys33_02FAC963364B859C8F7B94D17CE96BBALLOGMR);
  v73 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v89 = &v60[-v8];
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO18OutgoingEventStateV0h8SpecificI0O19KeyUpdateCodingKeys33_02FAC963364B859C8F7B94D17CE96BBALLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO18OutgoingEventStateV0h8SpecificI0O19KeyUpdateCodingKeys33_02FAC963364B859C8F7B94D17CE96BBALLOGMR);
  v71 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v83 = &v60[-v9];
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO18OutgoingEventStateV0h8SpecificI0O20RemoveSelfCodingKeys33_02FAC963364B859C8F7B94D17CE96BBALLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO18OutgoingEventStateV0h8SpecificI0O20RemoveSelfCodingKeys33_02FAC963364B859C8F7B94D17CE96BBALLOGMR);
  v69 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v85 = &v60[-v10];
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO18OutgoingEventStateV0h8SpecificI0O20KickMemberCodingKeys33_02FAC963364B859C8F7B94D17CE96BBALLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO18OutgoingEventStateV0h8SpecificI0O20KickMemberCodingKeys33_02FAC963364B859C8F7B94D17CE96BBALLOGMR);
  v67 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v88 = &v60[-v11];
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO18OutgoingEventStateV0h8SpecificI0O19AddMemberCodingKeys33_02FAC963364B859C8F7B94D17CE96BBALLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO18OutgoingEventStateV0h8SpecificI0O19AddMemberCodingKeys33_02FAC963364B859C8F7B94D17CE96BBALLOGMR);
  v65 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v13 = &v60[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO18OutgoingEventStateV0h8SpecificI0O16CreateCodingKeys33_02FAC963364B859C8F7B94D17CE96BBALLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO18OutgoingEventStateV0h8SpecificI0O16CreateCodingKeys33_02FAC963364B859C8F7B94D17CE96BBALLOGMR);
  v64 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v60[-v15];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO18OutgoingEventStateV0h8SpecificI0O10CodingKeys33_02FAC963364B859C8F7B94D17CE96BBALLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO18OutgoingEventStateV0h8SpecificI0O10CodingKeys33_02FAC963364B859C8F7B94D17CE96BBALLOGMR);
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v60[-v19];
  v21 = a1[3];
  v92 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  lazy protocol witness table accessor for type MLS.OutgoingEventState.EventSpecificState.CodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.CodingKeys();
  v22 = v99;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v22)
  {
    goto LABEL_12;
  }

  v23 = v16;
  v62 = v14;
  v24 = v13;
  v25 = v88;
  v26 = v89;
  v27 = v90;
  v63 = 0;
  v99 = v18;
  v28 = v91;
  v29 = KeyedDecodingContainer.allKeys.getter();
  v30 = (2 * *(v29 + 16)) | 1;
  v95 = v29;
  v96 = v29 + 32;
  v97 = 0;
  v98 = v30;
  v31 = specialized Collection<>.popFirst()();
  if (v31 == 10 || v97 != v98 >> 1)
  {
    v35 = type metadata accessor for DecodingError();
    swift_allocError();
    v37 = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
    *v37 = &type metadata for MLS.OutgoingEventState.EventSpecificState;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v35 - 8) + 104))(v37, *MEMORY[0x277D84160], v35);
    swift_willThrow();
    goto LABEL_11;
  }

  v61 = v31;
  if (v31 <= 4u)
  {
    if (v31 > 1u)
    {
      v32 = v63;
      if (v31 != 2)
      {
        if (v31 == 3)
        {
          LOBYTE(v93) = 3;
          lazy protocol witness table accessor for type MLS.OutgoingEventState.EventSpecificState.RemoveSelfCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.RemoveSelfCodingKeys();
          v33 = v85;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          if (!v32)
          {
            lazy protocol witness table accessor for type MLS.OutgoingRemoveSelfState and conformance MLS.OutgoingRemoveSelfState();
            v34 = v70;
            KeyedDecodingContainer.decode<A>(_:forKey:)();
            (*(v69 + 8))(v33, v34);
LABEL_38:
            (*(v99 + 8))(v20, v17);
            swift_unknownObjectRelease();
            v57 = 0;
            v58 = 0;
LABEL_43:
            v38 = v92;
            *v28 = v57;
            *(v28 + 8) = v58;
            *(v28 + 16) = v61;
            return __swift_destroy_boxed_opaque_existential_1Tm(v38);
          }

          goto LABEL_11;
        }

        LOBYTE(v93) = 4;
        lazy protocol witness table accessor for type MLS.OutgoingEventState.EventSpecificState.KeyUpdateCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.KeyUpdateCodingKeys();
        v27 = v83;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (!v32)
        {
          lazy protocol witness table accessor for type MLS.OutgoingKeyUpdateState and conformance MLS.OutgoingKeyUpdateState();
          v46 = v72;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          v47 = &v100;
          goto LABEL_37;
        }

        goto LABEL_11;
      }

      LOBYTE(v93) = 2;
      lazy protocol witness table accessor for type MLS.OutgoingEventState.EventSpecificState.KickMemberCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.KickMemberCodingKeys();
      v48 = v25;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v32)
      {
        goto LABEL_11;
      }

      lazy protocol witness table accessor for type MLS.OutgoingKickMemberState and conformance MLS.OutgoingKickMemberState();
      v49 = v68;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v67 + 8))(v48, v49);
LABEL_40:
      (*(v99 + 8))(v20, v17);
      swift_unknownObjectRelease();
      v58 = 0;
      v57 = v93;
      goto LABEL_43;
    }

    v43 = v63;
    if (!v31)
    {
      LOBYTE(v93) = 0;
      lazy protocol witness table accessor for type MLS.OutgoingEventState.EventSpecificState.CreateCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.CreateCodingKeys();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v43)
      {
        goto LABEL_11;
      }

      lazy protocol witness table accessor for type MLS.OutgoingCreateGroupState and conformance MLS.OutgoingCreateGroupState();
      v44 = v62;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v64 + 8))(v23, v44);
      (*(v99 + 8))(v20, v17);
      swift_unknownObjectRelease();
LABEL_42:
      v57 = v93;
      v58 = v94;
      goto LABEL_43;
    }

    LOBYTE(v93) = 1;
    lazy protocol witness table accessor for type MLS.OutgoingEventState.EventSpecificState.AddMemberCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.AddMemberCodingKeys();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    if (v43)
    {
      goto LABEL_11;
    }

    lazy protocol witness table accessor for type MLS.OutgoingAddMemberState and conformance MLS.OutgoingAddMemberState();
    v54 = v66;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v55 = v99;
    (*(v65 + 8))(v24, v54);
    (*(v55 + 8))(v20, v17);
LABEL_41:
    swift_unknownObjectRelease();
    goto LABEL_42;
  }

  if (v31 > 6u)
  {
    if (v31 == 7)
    {
      LOBYTE(v93) = 7;
      lazy protocol witness table accessor for type MLS.OutgoingEventState.EventSpecificState.ReplaceExpiredCertsCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.ReplaceExpiredCertsCodingKeys();
      v40 = v84;
      v50 = v63;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v50)
      {
        goto LABEL_11;
      }

      lazy protocol witness table accessor for type MLS.OutgoingReplaceExpiredCertsState and conformance MLS.OutgoingReplaceExpiredCertsState();
      v42 = v78;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v59 = v77;
    }

    else
    {
      if (v31 != 8)
      {
        LOBYTE(v93) = 9;
        lazy protocol witness table accessor for type MLS.OutgoingEventState.EventSpecificState.RecreateGroupCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.RecreateGroupCodingKeys();
        v51 = v86;
        v52 = v63;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (v52)
        {
          goto LABEL_11;
        }

        lazy protocol witness table accessor for type MLS.OutgoingRecreateGroupState and conformance MLS.OutgoingRecreateGroupState();
        v53 = v79;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        (*(v82 + 8))(v51, v53);
        goto LABEL_40;
      }

      LOBYTE(v93) = 8;
      lazy protocol witness table accessor for type MLS.OutgoingEventState.EventSpecificState.NameChangeCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.NameChangeCodingKeys();
      v40 = v87;
      v41 = v63;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v41)
      {
        goto LABEL_11;
      }

      lazy protocol witness table accessor for type MLS.OutgoingGroupNameChangeState and conformance MLS.OutgoingGroupNameChangeState();
      v42 = v81;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v59 = v80;
    }

    (*(v59 + 8))(v40, v42);
    (*(v99 + 8))(v20, v17);
    goto LABEL_41;
  }

  if (v31 == 5)
  {
    LOBYTE(v93) = 5;
    lazy protocol witness table accessor for type MLS.OutgoingEventState.EventSpecificState.ResyncCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.ResyncCodingKeys();
    v27 = v26;
    v45 = v63;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    if (!v45)
    {
      lazy protocol witness table accessor for type MLS.OutgoingResyncState and conformance MLS.OutgoingResyncState();
      v46 = v74;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v47 = &v101;
LABEL_37:
      (*(*(v47 - 32) + 8))(v27, v46);
      goto LABEL_38;
    }
  }

  else
  {
    LOBYTE(v93) = 6;
    lazy protocol witness table accessor for type MLS.OutgoingEventState.EventSpecificState.DowngradeCodingKeys and conformance MLS.OutgoingEventState.EventSpecificState.DowngradeCodingKeys();
    v56 = v63;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    if (!v56)
    {
      lazy protocol witness table accessor for type MLS.OutgoingDowngradeState and conformance MLS.OutgoingDowngradeState();
      v46 = v75;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v47 = &v102;
      goto LABEL_37;
    }
  }

LABEL_11:
  (*(v99 + 8))(v20, v17);
  swift_unknownObjectRelease();
LABEL_12:
  v38 = v92;
  return __swift_destroy_boxed_opaque_existential_1Tm(v38);
}