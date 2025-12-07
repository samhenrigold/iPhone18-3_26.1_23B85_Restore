Swift::Bool __swiftcall CloudDevice.hasCapability(_:)(MomentsUI::CloudDevice::Capability a1)
{
  v2 = *a1;
  v3 = *(v1 + *(type metadata accessor for CloudDevice(0) + 52));
  if (v3)
  {
    v4 = *(v3 + 16);
    for (i = (v3 + 32); ; ++i)
    {
      v7 = v4-- != 0;
      v8 = v7;
      if (!v7)
      {
        return v8;
      }

      v9 = *i;
      if (v9 > 3)
      {
        if (*i > 5u)
        {
          if (v9 == 6)
          {
            v14 = 0x756F527465737361;
            v15 = 0xEE00626F6C426574;
            if (v2 <= 3)
            {
              goto LABEL_51;
            }
          }

          else
          {
            v14 = 0x6174536775626564;
            v15 = 0xEA0000000000656CLL;
            if (v2 <= 3)
            {
              goto LABEL_51;
            }
          }
        }

        else
        {
          if (v9 == 4)
          {
            v14 = 1280328553;
          }

          else
          {
            v14 = 0x68746C616548;
          }

          if (v9 == 4)
          {
            v15 = 0xE400000000000000;
          }

          else
          {
            v15 = 0xE600000000000000;
          }

          if (v2 <= 3)
          {
            goto LABEL_51;
          }
        }
      }

      else
      {
        v10 = 0x64756F6C43776F6CLL;
        if (v9 != 2)
        {
          v10 = 0x6469766F72506F6ELL;
        }

        v11 = 0xEB00000000737265;
        if (v9 == 2)
        {
          v11 = 0xEF656761726F7453;
        }

        v12 = 0x6C61636F4C776F6CLL;
        if (!*i)
        {
          v12 = 0x626E4F726576656ELL;
        }

        v13 = 0xEE0064656472616FLL;
        if (*i)
        {
          v13 = 0xEF656761726F7453;
        }

        if (*i <= 1u)
        {
          v14 = v12;
        }

        else
        {
          v14 = v10;
        }

        if (*i <= 1u)
        {
          v15 = v13;
        }

        else
        {
          v15 = v11;
        }

        if (v2 <= 3)
        {
LABEL_51:
          if (v2 > 1)
          {
            if (v2 == 2)
            {
              v20 = 0x64756F6C43776F6CLL;
            }

            else
            {
              v20 = 0x6469766F72506F6ELL;
            }

            if (v2 == 2)
            {
              v21 = 0xEF656761726F7453;
            }

            else
            {
              v21 = 0xEB00000000737265;
            }
          }

          else
          {
            v20 = 0x626E4F726576656ELL;
            v21 = 0xEE0064656472616FLL;
            if (v2)
            {
              v20 = 0x6C61636F4C776F6CLL;
              v21 = 0xEF656761726F7453;
            }
          }

          goto LABEL_60;
        }
      }

      v16 = 0x756F527465737361;
      if (v2 != 6)
      {
        v16 = 0x6174536775626564;
      }

      v17 = 0xEE00626F6C426574;
      if (v2 != 6)
      {
        v17 = 0xEA0000000000656CLL;
      }

      v18 = 0x68746C616548;
      if (v2 == 4)
      {
        v18 = 1280328553;
        v19 = 0xE400000000000000;
      }

      else
      {
        v19 = 0xE600000000000000;
      }

      if (v2 <= 5)
      {
        v20 = v18;
      }

      else
      {
        v20 = v16;
      }

      if (v2 <= 5)
      {
        v21 = v19;
      }

      else
      {
        v21 = v17;
      }

LABEL_60:
      if (v14 == v20 && v15 == v21)
      {

        return 1;
      }

      v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v6)
      {
        return v8;
      }
    }
  }

  return 0;
}

void CloudDevice.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v11 - v8;
  String.hash(into:)();
  v10 = type metadata accessor for CloudDevice(0);
  outlined init with copy of DateInterval?(v2 + *(v10 + 28), v9, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v4 + 32))(v6, v9, v3);
    Hasher._combine(_:)(1u);
    lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
    dispatch thunk of Hashable.hash(into:)();
    (*(v4 + 8))(v6, v3);
  }

  if (*(v2 + *(v10 + 32) + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int CloudDevice.hashValue.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v11 - v7;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v9 = type metadata accessor for CloudDevice(0);
  outlined init with copy of DateInterval?(v1 + *(v9 + 28), v8, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    Hasher._combine(_:)(1u);
    lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
    dispatch thunk of Hashable.hash(into:)();
    (*(v3 + 8))(v5, v2);
  }

  if (*(v1 + *(v9 + 32) + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

double protocol witness for static CloudRecord.productionSchema.getter in conformance CloudDevice()
{
  if (one-time initialization token for productionSchema != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  return result;
}

double static CloudDevice.productionSchema.getter()
{
  if (one-time initialization token for productionSchema != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  return result;
}

void (*protocol witness for CloudRecord.lastKnownCKRecord.modify in conformance CloudDevice(id *a1, uint64_t a2))(void **a1, char a2)
{
  a1[1] = v2;
  *a1 = specialized static CloudSyncDB.getCKRecord(_:)(*&v2[*(a2 + 112)], *&v2[*(a2 + 112) + 8]);
  return protocol witness for CloudRecord.lastKnownCKRecord.modify in conformance CloudDevice;
}

void protocol witness for CloudRecord.lastKnownCKRecord.modify in conformance CloudDevice(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    CloudDevice.lastKnownCKRecord.setter(v2);
  }

  else
  {
    CloudDevice.lastKnownCKRecord.setter(*a1);
  }
}

void (*CloudDevice.lastKnownCKRecord.modify(id *a1))(void **a1, char a2)
{
  a1[1] = v1;
  v3 = type metadata accessor for CloudDevice(0);
  *a1 = specialized static CloudSyncDB.getCKRecord(_:)(*&v1[*(v3 + 112)], *&v1[*(v3 + 112) + 8]);
  return protocol witness for CloudRecord.lastKnownCKRecord.modify in conformance CloudDevice;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CloudDevice(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v13 - v10;
  Hasher.init(_seed:)();
  String.hash(into:)();
  outlined init with copy of DateInterval?(v4 + *(a2 + 28), v11, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  if ((*(v6 + 48))(v11, 1, v5) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v6 + 32))(v8, v11, v5);
    Hasher._combine(_:)(1u);
    lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
    dispatch thunk of Hashable.hash(into:)();
    (*(v6 + 8))(v8, v5);
  }

  if (*(v4 + *(a2 + 32) + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

double static CloudDevice.productionSchema.setter(void *a1)
{
  if (one-time initialization token for productionSchema != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static CloudDevice.productionSchema = a1;

  return result;
}

uint64_t (*static CloudDevice.productionSchema.modify(uint64_t a1))()
{
  if (one-time initialization token for productionSchema != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return MutableVideoViewModel.video.modify;
}

uint64_t closure #1 in CloudDevice.mergeFromServerRecord(_:force:primary:primaryID:blobFolderURL:cloudManager:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](closure #1 in CloudDevice.mergeFromServerRecord(_:force:primary:primaryID:blobFolderURL:cloudManager:), 0, 0);
}

uint64_t closure #1 in CloudDevice.mergeFromServerRecord(_:force:primary:primaryID:blobFolderURL:cloudManager:)()
{
  v1 = v0[4];
  ObjectType = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy8CloudKit12CKSyncEngineC23PendingRecordZoneChangeOGMd, &_ss23_ContiguousArrayStorageCy8CloudKit12CKSyncEngineC23PendingRecordZoneChangeOGMR);
  v3 = type metadata accessor for CKSyncEngine.PendingRecordZoneChange();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_allocObject();
  v0[5] = v6;
  *(v6 + 16) = xmmword_21658CA50;
  (*(v4 + 16))(v6 + v5, v1, v3);
  v7 = swift_task_alloc();
  v0[6] = v7;
  *v7 = v0;
  v7[1] = closure #1 in CloudSyncAssetData.mergeFromServerRecord(_:force:primary:primaryID:blobFolderURL:cloudManager:);
  v8 = v0[3];

  return CloudManagerProtocol.add(pendingRecordZoneChanges:_:_:)(v6, 0xD00000000000004CLL, 0x8000000216578810, 1559, ObjectType, v8);
}

uint64_t key path setter for CloudDevice.systemIdiom : CloudDevice(char *a1, uint64_t a2)
{
  v3 = qword_2165A4770[*a1];
  result = type metadata accessor for CloudDevice(0);
  v5 = a2 + *(result + 40);
  *v5 = v3;
  *(v5 + 8) = 0;
  return result;
}

uint64_t CloudDevice.systemIdiom.setter(char *a1)
{
  v2 = qword_2165A4770[*a1];
  result = type metadata accessor for CloudDevice(0);
  v4 = v1 + *(result + 40);
  *v4 = v2;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*CloudDevice.systemIdiom.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CloudDevice(0) + 40);
  *(a1 + 8) = v3;
  v4 = v1 + v3;
  if (*(v4 + 8))
  {
    v5 = -1;
  }

  else
  {
    v5 = *v4;
  }

  CloudDevice.Idiom.init(rawValue:)(v5);
  v6 = v8;
  if (v8 == 7)
  {
    v6 = 0;
  }

  *(a1 + 12) = v6;
  return CloudDevice.systemIdiom.modify;
}

uint64_t CloudDevice.systemIdiom.modify(uint64_t result)
{
  v1 = *result + *(result + 8);
  *v1 = qword_2165A4770[*(result + 12)];
  *(v1 + 8) = 0;
  return result;
}

void (*CloudDevice.snapshotEventAggregation.modify(uint64_t *a1))(__int128 **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x148uLL);
  }

  *a1 = v3;
  *(v3 + 320) = v1;
  CloudDevice.snapshotEventAggregation.getter(v3);
  return CloudDevice.snapshotEventAggregation.modify;
}

void CloudDevice.snapshotEventAggregation.modify(__int128 **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2[1];
    v5 = v2[2];
    v4 = v2[3];
    v2[12] = v5;
    v2[13] = v4;
    v6 = v2[3];
    v2[14] = v2[4];
    v7 = v2[1];
    v8 = *v2;
    v2[10] = *v2;
    v2[11] = v7;
    v15 = v5;
    v16 = v6;
    v17 = v2[4];
    v13 = v8;
    v14 = v3;
    outlined init with copy of DateInterval?((v2 + 10), (v2 + 15), &_s9MomentsUI14CloudDevicesDBC24SnapshotEventAggregationVSgMd, &_s9MomentsUI14CloudDevicesDBC24SnapshotEventAggregationVSgMR);
    CloudDevice.snapshotEventAggregation.setter(&v13);
    v9 = v2[3];
    v2[7] = v2[2];
    v2[8] = v9;
    v2[9] = v2[4];
    v10 = v2[1];
    v2[5] = *v2;
    v2[6] = v10;
    outlined destroy of UTType?((v2 + 5), &_s9MomentsUI14CloudDevicesDBC24SnapshotEventAggregationVSgMd, &_s9MomentsUI14CloudDevicesDBC24SnapshotEventAggregationVSgMR);
  }

  else
  {
    v11 = v2[3];
    v15 = v2[2];
    v16 = v11;
    v17 = v2[4];
    v12 = v2[1];
    v13 = *v2;
    v14 = v12;
    CloudDevice.snapshotEventAggregation.setter(&v13);
  }

  free(v2);
}

uint64_t CloudDevice.jsonDict.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v325 = &v313 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v324 = &v313 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v323 = &v313 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v322 = &v313 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v321 = &v313 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v320 = &v313 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v319 = &v313 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v318 = &v313 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v317 = &v313 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v316 = &v313 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v315 = &v313 - v24;
  MEMORY[0x28223BE20](v23);
  v26 = &v313 - v25;
  v27 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_Se_SEpTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v28 = *v0;
  v29 = v0[1];
  v30 = MEMORY[0x277D837D0];
  v31 = MEMORY[0x277D83808];
  v336 = MEMORY[0x277D837D0];
  v337 = MEMORY[0x277D83808];
  v32 = MEMORY[0x277D837D8];
  v338 = MEMORY[0x277D837D8];
  *&v335 = v28;
  *(&v335 + 1) = v29;
  outlined init with take of Decodable & Encodable(&v335, &v333);

  LOBYTE(v29) = swift_isUniquelyReferenced_nonNull_native();
  v332 = v27;
  v33 = __swift_mutable_project_boxed_opaque_existential_1(&v333, v334);
  MEMORY[0x28223BE20](v33);
  v35 = (&v313 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v36 + 16))(v35);
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(*v35, v35[1], 25705, 0xE200000000000000, v29, &v332);
  __swift_destroy_boxed_opaque_existential_1(&v333);
  v37 = v332;
  v339 = v332;
  v38 = v1[3];
  if (v38)
  {
    v39 = v1[2];
    v336 = v30;
    v337 = v31;
    v338 = v32;
    *&v335 = v39;
    *(&v335 + 1) = v38;
    outlined init with take of Decodable & Encodable(&v335, &v333);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v332 = v37;
    v41 = __swift_mutable_project_boxed_opaque_existential_1(&v333, v334);
    MEMORY[0x28223BE20](v41);
    v43 = &v313 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v44 + 16))(v43);
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v43, 0x4449656369766564, 0xE800000000000000, isUniquelyReferenced_nonNull_native, &v332, v30, v31, v32);
    __swift_destroy_boxed_opaque_existential_1(&v333);
    v339 = v332;
    v45 = v1[5];
    if (v45)
    {
LABEL_3:
      v46 = v1[4];
      v336 = v30;
      v337 = v31;
      v338 = v32;
      *&v335 = v46;
      *(&v335 + 1) = v45;
      outlined init with take of Decodable & Encodable(&v335, &v333);

      v47 = v339;
      v48 = swift_isUniquelyReferenced_nonNull_native();
      v332 = v47;
      v49 = __swift_mutable_project_boxed_opaque_existential_1(&v333, v334);
      MEMORY[0x28223BE20](v49);
      v51 = &v313 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v52 + 16))(v51);
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v51, 0x4449656C646E7562, 0xE800000000000000, v48, &v332, v30, v31, v32);
      __swift_destroy_boxed_opaque_existential_1(&v333);
      v339 = v332;
      goto LABEL_6;
    }
  }

  else
  {
    specialized Dictionary._Variant.removeValue(forKey:)(0x4449656369766564, 0xE800000000000000, &v335);
    outlined destroy of UTType?(&v335, &_sSe_SEpSgMd, &_sSe_SEpSgMR);
    v45 = v1[5];
    if (v45)
    {
      goto LABEL_3;
    }
  }

  specialized Dictionary._Variant.removeValue(forKey:)(0x4449656C646E7562, 0xE800000000000000, &v335);
  outlined destroy of UTType?(&v335, &_sSe_SEpSgMd, &_sSe_SEpSgMR);
LABEL_6:
  v331 = type metadata accessor for CloudDevice(0);
  outlined init with copy of DateInterval?(v1 + v331[7], v26, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v53 = type metadata accessor for Date();
  v54 = *(v53 - 8);
  v329 = *(v54 + 48);
  v330 = v54 + 48;
  v55 = v329(v26, 1, v53);
  v56 = MEMORY[0x277D839F8];
  v57 = MEMORY[0x277D83A30];
  v58 = MEMORY[0x277D83A08];
  v327 = v54;
  v328 = v53;
  if (v55 == 1)
  {
    outlined destroy of UTType?(v26, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    specialized Dictionary._Variant.removeValue(forKey:)(0xD000000000000014, 0x8000000216585CF0, &v335);
    outlined destroy of UTType?(&v335, &_sSe_SEpSgMd, &_sSe_SEpSgMR);
  }

  else
  {
    Date.timeIntervalSinceReferenceDate.getter();
    v336 = v56;
    v337 = v57;
    v338 = v58;
    *&v335 = v59;
    (*(v54 + 8))(v26, v53);
    outlined init with take of Decodable & Encodable(&v335, &v333);
    v60 = v339;
    v61 = swift_isUniquelyReferenced_nonNull_native();
    v332 = v60;
    v62 = __swift_mutable_project_boxed_opaque_existential_1(&v333, v334);
    MEMORY[0x28223BE20](v62);
    v64 = &v313 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v65 + 16))(v64);
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v64, 0xD000000000000014, 0x8000000216585CF0, v61, &v332, v56, v57, v58);
    __swift_destroy_boxed_opaque_existential_1(&v333);
    v339 = v332;
  }

  v66 = v57;
  v67 = (v1 + v331[8]);
  v68 = v67[1];
  v69 = MEMORY[0x277D837D0];
  if (v68)
  {
    v70 = *v67;
    v336 = MEMORY[0x277D837D0];
    v71 = MEMORY[0x277D83808];
    v337 = MEMORY[0x277D83808];
    v72 = MEMORY[0x277D837D8];
    v338 = MEMORY[0x277D837D8];
    *&v335 = v70;
    *(&v335 + 1) = v68;
    outlined init with take of Decodable & Encodable(&v335, &v333);

    v73 = v339;
    v74 = swift_isUniquelyReferenced_nonNull_native();
    v332 = v73;
    v75 = __swift_mutable_project_boxed_opaque_existential_1(&v333, v334);
    MEMORY[0x28223BE20](v75);
    v77 = &v313 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v78 + 16))(v77);
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v77, 1701667182, 0xE400000000000000, v74, &v332, v69, v71, v72);
    __swift_destroy_boxed_opaque_existential_1(&v333);
    v339 = v332;
  }

  else
  {
    specialized Dictionary._Variant.removeValue(forKey:)(1701667182, 0xE400000000000000, &v335);
    outlined destroy of UTType?(&v335, &_sSe_SEpSgMd, &_sSe_SEpSgMR);
  }

  v79 = (v1 + v331[9]);
  v80 = v79[1];
  if (v80)
  {
    v81 = *v79;
    v336 = v69;
    v82 = MEMORY[0x277D83808];
    v337 = MEMORY[0x277D83808];
    v83 = MEMORY[0x277D837D8];
    v338 = MEMORY[0x277D837D8];
    *&v335 = v81;
    *(&v335 + 1) = v80;
    outlined init with take of Decodable & Encodable(&v335, &v333);

    v84 = v339;
    v85 = swift_isUniquelyReferenced_nonNull_native();
    v332 = v84;
    v86 = __swift_mutable_project_boxed_opaque_existential_1(&v333, v334);
    MEMORY[0x28223BE20](v86);
    v88 = &v313 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v89 + 16))(v88);
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v88, 0x65566D6574737973, 0xED00006E6F697372, v85, &v332, v69, v82, v83);
    __swift_destroy_boxed_opaque_existential_1(&v333);
    v339 = v332;
  }

  else
  {
    specialized Dictionary._Variant.removeValue(forKey:)(0x65566D6574737973, 0xED00006E6F697372, &v335);
    outlined destroy of UTType?(&v335, &_sSe_SEpSgMd, &_sSe_SEpSgMR);
  }

  v90 = v1 + v331[10];
  v91 = v90[8];
  v326 = v1;
  if (v91)
  {
    specialized Dictionary._Variant.removeValue(forKey:)(0x64496D6574737973, 0xEE00746E496D6F69, &v335);
    outlined destroy of UTType?(&v335, &_sSe_SEpSgMd, &_sSe_SEpSgMR);
  }

  else
  {
    v92 = *v90;
    v93 = MEMORY[0x277D84A28];
    v94 = MEMORY[0x277D84A58];
    v95 = MEMORY[0x277D84A30];
    v337 = MEMORY[0x277D84A58];
    v338 = MEMORY[0x277D84A30];
    v336 = MEMORY[0x277D84A28];
    *&v335 = v92;
    outlined init with take of Decodable & Encodable(&v335, &v333);
    v96 = v339;
    v97 = swift_isUniquelyReferenced_nonNull_native();
    v332 = v96;
    v98 = __swift_mutable_project_boxed_opaque_existential_1(&v333, v334);
    MEMORY[0x28223BE20](v98);
    v100 = &v313 - ((v99 + 15) & 0xFFFFFFFFFFFFFFF0);
    v69 = MEMORY[0x277D837D0];
    (*(v101 + 16))(v100);
    v102 = v97;
    v66 = MEMORY[0x277D83A30];
    v103 = v95;
    v1 = v326;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v100, 0x64496D6574737973, 0xEE00746E496D6F69, v102, &v332, v93, v94, v103);
    __swift_destroy_boxed_opaque_existential_1(&v333);
    v339 = v332;
  }

  v104 = (v1 + v331[11]);
  v105 = v104[1];
  if (v105)
  {
    v106 = *v104;
    v336 = v69;
    v107 = MEMORY[0x277D83808];
    v337 = MEMORY[0x277D83808];
    v108 = MEMORY[0x277D837D8];
    v338 = MEMORY[0x277D837D8];
    *&v335 = v106;
    *(&v335 + 1) = v105;
    outlined init with take of Decodable & Encodable(&v335, &v333);

    v109 = v339;
    v110 = swift_isUniquelyReferenced_nonNull_native();
    v332 = v109;
    v111 = __swift_mutable_project_boxed_opaque_existential_1(&v333, v334);
    MEMORY[0x28223BE20](v111);
    v113 = &v313 - ((v112 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v114 + 16))(v113);
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v113, 0x614C6D6574737973, 0xEE0065676175676ELL, v110, &v332, v69, v107, v108);
    __swift_destroy_boxed_opaque_existential_1(&v333);
    v339 = v332;
  }

  else
  {
    specialized Dictionary._Variant.removeValue(forKey:)(0x614C6D6574737973, 0xEE0065676175676ELL, &v335);
    outlined destroy of UTType?(&v335, &_sSe_SEpSgMd, &_sSe_SEpSgMR);
  }

  v115 = *(v1 + v331[13]);
  if (v115)
  {
    v314 = "userModificationDate";
    v116 = *(v115 + 16);
    v117 = MEMORY[0x277D84F90];
    if (v116)
    {
      *&v335 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v116, 0);
      v118 = (v115 + 32);
      v117 = v335;
      v119 = 0x68746C616548;
      do
      {
        v121 = *v118++;
        v120 = v121;
        v122 = v121 == 6;
        if (v121 == 6)
        {
          v123 = 0x756F527465737361;
        }

        else
        {
          v123 = 0x6174536775626564;
        }

        if (v122)
        {
          v124 = 0xEE00626F6C426574;
        }

        else
        {
          v124 = 0xEA0000000000656CLL;
        }

        if (v120 == 4)
        {
          v125 = 1280328553;
        }

        else
        {
          v125 = v119;
        }

        if (v120 == 4)
        {
          v126 = 0xE400000000000000;
        }

        else
        {
          v126 = 0xE600000000000000;
        }

        if (v120 <= 5)
        {
          v123 = v125;
          v124 = v126;
        }

        if (v120 == 2)
        {
          v127 = 0x64756F6C43776F6CLL;
        }

        else
        {
          v127 = 0x6469766F72506F6ELL;
        }

        if (v120 == 2)
        {
          v128 = 0xEF656761726F7453;
        }

        else
        {
          v128 = 0xEB00000000737265;
        }

        if (v120)
        {
          v129 = 0x6C61636F4C776F6CLL;
        }

        else
        {
          v129 = 0x626E4F726576656ELL;
        }

        if (v120)
        {
          v130 = 0xEF656761726F7453;
        }

        else
        {
          v130 = 0xEE0064656472616FLL;
        }

        if (v120 <= 1)
        {
          v127 = v129;
          v128 = v130;
        }

        if (v120 <= 3)
        {
          v131 = v127;
        }

        else
        {
          v131 = v123;
        }

        if (v120 <= 3)
        {
          v132 = v128;
        }

        else
        {
          v132 = v124;
        }

        *&v335 = v117;
        v134 = *(v117 + 16);
        v133 = *(v117 + 24);
        if (v134 >= v133 >> 1)
        {
          v136 = v119;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v133 > 1), v134 + 1, 1);
          v119 = v136;
          v117 = v335;
        }

        *(v117 + 16) = v134 + 1;
        v135 = v117 + 16 * v134;
        *(v135 + 32) = v131;
        *(v135 + 40) = v132;
        --v116;
      }

      while (v116);
      v69 = MEMORY[0x277D837D0];
      v66 = MEMORY[0x277D83A30];
    }

    v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    v336 = v137;
    v138 = lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A], MEMORY[0x277D83808], MEMORY[0x277D83978]);
    v337 = v138;
    v139 = lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A], MEMORY[0x277D837D8], MEMORY[0x277D83948]);
    v338 = v139;
    *&v335 = v117;
    outlined init with take of Decodable & Encodable(&v335, &v333);
    v140 = v339;
    v141 = swift_isUniquelyReferenced_nonNull_native();
    v332 = v140;
    v142 = __swift_mutable_project_boxed_opaque_existential_1(&v333, v334);
    MEMORY[0x28223BE20](v142);
    v144 = &v313 - ((v143 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v145 + 16))(v144);
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v144, 0xD000000000000012, v314 | 0x8000000000000000, v141, &v332, v137, v138, v139);
    __swift_destroy_boxed_opaque_existential_1(&v333);
    v339 = v332;
    v1 = v326;
  }

  else
  {
    specialized Dictionary._Variant.removeValue(forKey:)(0xD000000000000012, 0x8000000216585D10, &v335);
    outlined destroy of UTType?(&v335, &_sSe_SEpSgMd, &_sSe_SEpSgMR);
  }

  v146 = (v1 + v331[12]);
  v147 = v146[1];
  if (v147)
  {
    v148 = *v146;
    v336 = v69;
    v149 = MEMORY[0x277D83808];
    v337 = MEMORY[0x277D83808];
    v150 = MEMORY[0x277D837D8];
    v338 = MEMORY[0x277D837D8];
    *&v335 = v148;
    *(&v335 + 1) = v147;
    outlined init with take of Decodable & Encodable(&v335, &v333);

    v151 = v339;
    v152 = swift_isUniquelyReferenced_nonNull_native();
    v332 = v151;
    v153 = __swift_mutable_project_boxed_opaque_existential_1(&v333, v334);
    MEMORY[0x28223BE20](v153);
    v155 = &v313 - ((v154 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v156 + 16))(v155);
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v155, 0x6F4D656369766564, 0xEB000000006C6564, v152, &v332, v69, v149, v150);
    __swift_destroy_boxed_opaque_existential_1(&v333);
    v339 = v332;
  }

  else
  {
    specialized Dictionary._Variant.removeValue(forKey:)(0x6F4D656369766564, 0xEB000000006C6564, &v335);
    outlined destroy of UTType?(&v335, &_sSe_SEpSgMd, &_sSe_SEpSgMR);
  }

  v157 = MEMORY[0x277D839F8];
  v158 = v315;
  outlined init with copy of DateInterval?(v1 + v331[14], v315, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v159 = v328;
  if (v329(v158, 1, v328) == 1)
  {
    outlined destroy of UTType?(v158, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    specialized Dictionary._Variant.removeValue(forKey:)(0xD000000000000011, 0x8000000216585D30, &v335);
    outlined destroy of UTType?(&v335, &_sSe_SEpSgMd, &_sSe_SEpSgMR);
  }

  else
  {
    Date.timeIntervalSinceReferenceDate.getter();
    v336 = v157;
    v337 = v66;
    v160 = v69;
    v161 = MEMORY[0x277D83A08];
    v338 = MEMORY[0x277D83A08];
    *&v335 = v162;
    (*(v327 + 8))(v158, v159);
    outlined init with take of Decodable & Encodable(&v335, &v333);
    v163 = v339;
    v164 = swift_isUniquelyReferenced_nonNull_native();
    v332 = v163;
    v165 = __swift_mutable_project_boxed_opaque_existential_1(&v333, v334);
    MEMORY[0x28223BE20](v165);
    v167 = &v313 - ((v166 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v168 + 16))(v167);
    v169 = v161;
    v69 = v160;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v167, 0xD000000000000011, 0x8000000216585D30, v164, &v332, v157, v66, v169);
    __swift_destroy_boxed_opaque_existential_1(&v333);
    v339 = v332;
  }

  v170 = *(v1 + v331[15]);
  if (v170 == 2)
  {
    specialized Dictionary._Variant.removeValue(forKey:)(0x616D697250736177, 0xEA00000000007972, &v335);
    outlined destroy of UTType?(&v335, &_sSe_SEpSgMd, &_sSe_SEpSgMR);
  }

  else
  {
    v171 = MEMORY[0x277D839B0];
    v172 = MEMORY[0x277D839D0];
    v336 = MEMORY[0x277D839B0];
    v337 = MEMORY[0x277D839D0];
    v173 = MEMORY[0x277D839B8];
    v338 = MEMORY[0x277D839B8];
    LOBYTE(v335) = v170 & 1;
    outlined init with take of Decodable & Encodable(&v335, &v333);
    v174 = v339;
    v175 = swift_isUniquelyReferenced_nonNull_native();
    v332 = v174;
    v176 = __swift_mutable_project_boxed_opaque_existential_1(&v333, v334);
    MEMORY[0x28223BE20](v176);
    v178 = &v313 - ((v177 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v179 + 16))(v178);
    v180 = v178;
    v69 = MEMORY[0x277D837D0];
    v181 = v175;
    v1 = v326;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v180, 0x616D697250736177, 0xEA00000000007972, v181, &v332, v171, v172, v173);
    __swift_destroy_boxed_opaque_existential_1(&v333);
    v339 = v332;
  }

  v182 = v328;
  v183 = v316;
  outlined init with copy of DateInterval?(v1 + v331[16], v316, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  if (v329(v183, 1, v182) == 1)
  {
    outlined destroy of UTType?(v183, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    specialized Dictionary._Variant.removeValue(forKey:)(0xD000000000000013, 0x8000000216585D50, &v335);
    outlined destroy of UTType?(&v335, &_sSe_SEpSgMd, &_sSe_SEpSgMR);
  }

  else
  {
    Date.timeIntervalSinceReferenceDate.getter();
    v336 = v157;
    v337 = v66;
    v184 = v69;
    v185 = MEMORY[0x277D83A08];
    v338 = MEMORY[0x277D83A08];
    *&v335 = v186;
    (*(v327 + 8))(v183, v182);
    outlined init with take of Decodable & Encodable(&v335, &v333);
    v187 = v339;
    v188 = swift_isUniquelyReferenced_nonNull_native();
    v332 = v187;
    v189 = __swift_mutable_project_boxed_opaque_existential_1(&v333, v334);
    MEMORY[0x28223BE20](v189);
    v191 = &v313 - ((v190 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v192 + 16))(v191);
    v193 = v185;
    v69 = v184;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v191, 0xD000000000000013, 0x8000000216585D50, v188, &v332, v157, v66, v193);
    __swift_destroy_boxed_opaque_existential_1(&v333);
    v339 = v332;
  }

  v194 = (v1 + v331[17]);
  v195 = v194[1];
  if (v195)
  {
    v196 = *v194;
    v336 = v69;
    v197 = MEMORY[0x277D83808];
    v337 = MEMORY[0x277D83808];
    v198 = MEMORY[0x277D837D8];
    v338 = MEMORY[0x277D837D8];
    *&v335 = v196;
    *(&v335 + 1) = v195;
    outlined init with take of Decodable & Encodable(&v335, &v333);

    v199 = v339;
    v200 = swift_isUniquelyReferenced_nonNull_native();
    v332 = v199;
    v201 = __swift_mutable_project_boxed_opaque_existential_1(&v333, v334);
    MEMORY[0x28223BE20](v201);
    v203 = &v313 - ((v202 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v204 + 16))(v203);
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v203, 0xD000000000000012, 0x8000000216585D70, v200, &v332, v69, v197, v198);
    __swift_destroy_boxed_opaque_existential_1(&v333);
    v157 = MEMORY[0x277D839F8];
    v339 = v332;
  }

  else
  {
    specialized Dictionary._Variant.removeValue(forKey:)(0xD000000000000012, 0x8000000216585D70, &v335);
    outlined destroy of UTType?(&v335, &_sSe_SEpSgMd, &_sSe_SEpSgMR);
  }

  v205 = v317;
  outlined init with copy of DateInterval?(v1 + v331[18], v317, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v206 = v328;
  if (v329(v205, 1, v328) == 1)
  {
    outlined destroy of UTType?(v205, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    specialized Dictionary._Variant.removeValue(forKey:)(0x6974616E696D6F6ELL, 0xEE00657461446E6FLL, &v335);
    outlined destroy of UTType?(&v335, &_sSe_SEpSgMd, &_sSe_SEpSgMR);
  }

  else
  {
    Date.timeIntervalSinceReferenceDate.getter();
    v336 = v157;
    v337 = v66;
    v207 = MEMORY[0x277D83A08];
    v338 = MEMORY[0x277D83A08];
    *&v335 = v208;
    (*(v327 + 8))(v205, v206);
    outlined init with take of Decodable & Encodable(&v335, &v333);
    v209 = v339;
    v210 = swift_isUniquelyReferenced_nonNull_native();
    v332 = v209;
    v211 = __swift_mutable_project_boxed_opaque_existential_1(&v333, v334);
    MEMORY[0x28223BE20](v211);
    v213 = &v313 - ((v212 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v214 + 16))(v213);
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v213, 0x6974616E696D6F6ELL, 0xEE00657461446E6FLL, v210, &v332, v157, v66, v207);
    __swift_destroy_boxed_opaque_existential_1(&v333);
    v206 = v328;
    v339 = v332;
  }

  v215 = v318;
  outlined init with copy of DateInterval?(v1 + v331[19], v318, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  if (v329(v215, 1, v206) == 1)
  {
    outlined destroy of UTType?(v215, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    specialized Dictionary._Variant.removeValue(forKey:)(0xD000000000000010, 0x8000000216585D90, &v335);
    outlined destroy of UTType?(&v335, &_sSe_SEpSgMd, &_sSe_SEpSgMR);
  }

  else
  {
    Date.timeIntervalSinceReferenceDate.getter();
    v336 = v157;
    v337 = v66;
    v216 = MEMORY[0x277D83A08];
    v338 = MEMORY[0x277D83A08];
    *&v335 = v217;
    (*(v327 + 8))(v215, v206);
    outlined init with take of Decodable & Encodable(&v335, &v333);
    v218 = v339;
    v219 = swift_isUniquelyReferenced_nonNull_native();
    v332 = v218;
    v220 = __swift_mutable_project_boxed_opaque_existential_1(&v333, v334);
    MEMORY[0x28223BE20](v220);
    v222 = &v313 - ((v221 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v223 + 16))(v222);
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v222, 0xD000000000000010, 0x8000000216585D90, v219, &v332, v157, v66, v216);
    __swift_destroy_boxed_opaque_existential_1(&v333);
    v206 = v328;
    v339 = v332;
  }

  v224 = v319;
  outlined init with copy of DateInterval?(v1 + v331[20], v319, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  if (v329(v224, 1, v206) == 1)
  {
    outlined destroy of UTType?(v224, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    specialized Dictionary._Variant.removeValue(forKey:)(0x696472616F626E6FLL, 0xEE0065746144676ELL, &v335);
    outlined destroy of UTType?(&v335, &_sSe_SEpSgMd, &_sSe_SEpSgMR);
  }

  else
  {
    Date.timeIntervalSinceReferenceDate.getter();
    v336 = v157;
    v337 = v66;
    v225 = MEMORY[0x277D83A08];
    v338 = MEMORY[0x277D83A08];
    *&v335 = v226;
    (*(v327 + 8))(v224, v206);
    outlined init with take of Decodable & Encodable(&v335, &v333);
    v227 = v339;
    v228 = swift_isUniquelyReferenced_nonNull_native();
    v332 = v227;
    v229 = __swift_mutable_project_boxed_opaque_existential_1(&v333, v334);
    MEMORY[0x28223BE20](v229);
    v231 = &v313 - ((v230 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v232 + 16))(v231);
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v231, 0x696472616F626E6FLL, 0xEE0065746144676ELL, v228, &v332, v157, v66, v225);
    __swift_destroy_boxed_opaque_existential_1(&v333);
    v206 = v328;
    v339 = v332;
  }

  v233 = v320;
  outlined init with copy of DateInterval?(v1 + v331[21], v320, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  if (v329(v233, 1, v206) == 1)
  {
    outlined destroy of UTType?(v233, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    specialized Dictionary._Variant.removeValue(forKey:)(0xD000000000000023, 0x8000000216585DB0, &v335);
    outlined destroy of UTType?(&v335, &_sSe_SEpSgMd, &_sSe_SEpSgMR);
  }

  else
  {
    Date.timeIntervalSinceReferenceDate.getter();
    v234 = MEMORY[0x277D839F8];
    v336 = MEMORY[0x277D839F8];
    v337 = MEMORY[0x277D83A30];
    v235 = MEMORY[0x277D83A08];
    v338 = MEMORY[0x277D83A08];
    *&v335 = v236;
    (*(v327 + 8))(v233, v206);
    outlined init with take of Decodable & Encodable(&v335, &v333);
    v237 = v339;
    v238 = swift_isUniquelyReferenced_nonNull_native();
    v332 = v237;
    v239 = __swift_mutable_project_boxed_opaque_existential_1(&v333, v334);
    MEMORY[0x28223BE20](v239);
    v241 = &v313 - ((v240 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v242 + 16))(v241);
    v243 = v234;
    v66 = MEMORY[0x277D83A30];
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v241, 0xD000000000000023, 0x8000000216585DB0, v238, &v332, v243, MEMORY[0x277D83A30], v235);
    __swift_destroy_boxed_opaque_existential_1(&v333);
    v206 = v328;
    v339 = v332;
  }

  v244 = v321;
  outlined init with copy of DateInterval?(v1 + v331[22], v321, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  if (v329(v244, 1, v206) == 1)
  {
    outlined destroy of UTType?(v244, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    specialized Dictionary._Variant.removeValue(forKey:)(0xD000000000000021, 0x80000002165842C0, &v335);
    outlined destroy of UTType?(&v335, &_sSe_SEpSgMd, &_sSe_SEpSgMR);
  }

  else
  {
    Date.timeIntervalSinceReferenceDate.getter();
    v245 = MEMORY[0x277D839F8];
    v336 = MEMORY[0x277D839F8];
    v337 = MEMORY[0x277D83A30];
    v246 = MEMORY[0x277D83A08];
    v338 = MEMORY[0x277D83A08];
    *&v335 = v247;
    (*(v327 + 8))(v244, v206);
    outlined init with take of Decodable & Encodable(&v335, &v333);
    v248 = v339;
    v249 = swift_isUniquelyReferenced_nonNull_native();
    v332 = v248;
    v250 = __swift_mutable_project_boxed_opaque_existential_1(&v333, v334);
    MEMORY[0x28223BE20](v250);
    v252 = &v313 - ((v251 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v253 + 16))(v252);
    v254 = v245;
    v66 = MEMORY[0x277D83A30];
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v252, 0xD000000000000021, 0x80000002165842C0, v249, &v332, v254, MEMORY[0x277D83A30], v246);
    __swift_destroy_boxed_opaque_existential_1(&v333);
    v206 = v328;
    v339 = v332;
  }

  v255 = v322;
  outlined init with copy of DateInterval?(v1 + v331[23], v322, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  if (v329(v255, 1, v206) == 1)
  {
    outlined destroy of UTType?(v255, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    specialized Dictionary._Variant.removeValue(forKey:)(0xD000000000000020, 0x80000002165842F0, &v335);
    outlined destroy of UTType?(&v335, &_sSe_SEpSgMd, &_sSe_SEpSgMR);
  }

  else
  {
    Date.timeIntervalSinceReferenceDate.getter();
    v256 = MEMORY[0x277D839F8];
    v336 = MEMORY[0x277D839F8];
    v337 = MEMORY[0x277D83A30];
    v257 = MEMORY[0x277D83A08];
    v338 = MEMORY[0x277D83A08];
    *&v335 = v258;
    (*(v327 + 8))(v255, v206);
    outlined init with take of Decodable & Encodable(&v335, &v333);
    v259 = v339;
    v260 = swift_isUniquelyReferenced_nonNull_native();
    v332 = v259;
    v261 = __swift_mutable_project_boxed_opaque_existential_1(&v333, v334);
    MEMORY[0x28223BE20](v261);
    v263 = &v313 - ((v262 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v264 + 16))(v263);
    v265 = v256;
    v66 = MEMORY[0x277D83A30];
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v263, 0xD000000000000020, 0x80000002165842F0, v260, &v332, v265, MEMORY[0x277D83A30], v257);
    __swift_destroy_boxed_opaque_existential_1(&v333);
    v206 = v328;
    v339 = v332;
  }

  v266 = v323;
  outlined init with copy of DateInterval?(v1 + v331[24], v323, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  if (v329(v266, 1, v206) == 1)
  {
    outlined destroy of UTType?(v266, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    specialized Dictionary._Variant.removeValue(forKey:)(0xD000000000000018, 0x8000000216584320, &v335);
    outlined destroy of UTType?(&v335, &_sSe_SEpSgMd, &_sSe_SEpSgMR);
  }

  else
  {
    Date.timeIntervalSinceReferenceDate.getter();
    v267 = MEMORY[0x277D839F8];
    v336 = MEMORY[0x277D839F8];
    v337 = MEMORY[0x277D83A30];
    v268 = MEMORY[0x277D83A08];
    v338 = MEMORY[0x277D83A08];
    *&v335 = v269;
    (*(v327 + 8))(v266, v206);
    outlined init with take of Decodable & Encodable(&v335, &v333);
    v270 = v339;
    v271 = swift_isUniquelyReferenced_nonNull_native();
    v332 = v270;
    v272 = __swift_mutable_project_boxed_opaque_existential_1(&v333, v334);
    MEMORY[0x28223BE20](v272);
    v274 = &v313 - ((v273 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v275 + 16))(v274);
    v276 = v267;
    v66 = MEMORY[0x277D83A30];
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v274, 0xD000000000000018, 0x8000000216584320, v271, &v332, v276, MEMORY[0x277D83A30], v268);
    __swift_destroy_boxed_opaque_existential_1(&v333);
    v206 = v328;
    v339 = v332;
  }

  v277 = v324;
  outlined init with copy of DateInterval?(v1 + v331[25], v324, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  if (v329(v277, 1, v206) == 1)
  {
    outlined destroy of UTType?(v277, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    specialized Dictionary._Variant.removeValue(forKey:)(0xD000000000000010, 0x8000000216584340, &v335);
    outlined destroy of UTType?(&v335, &_sSe_SEpSgMd, &_sSe_SEpSgMR);
  }

  else
  {
    Date.timeIntervalSinceReferenceDate.getter();
    v278 = MEMORY[0x277D839F8];
    v336 = MEMORY[0x277D839F8];
    v337 = MEMORY[0x277D83A30];
    v279 = MEMORY[0x277D83A08];
    v338 = MEMORY[0x277D83A08];
    *&v335 = v280;
    (*(v327 + 8))(v277, v206);
    outlined init with take of Decodable & Encodable(&v335, &v333);
    v281 = v339;
    v282 = swift_isUniquelyReferenced_nonNull_native();
    v332 = v281;
    v283 = __swift_mutable_project_boxed_opaque_existential_1(&v333, v334);
    MEMORY[0x28223BE20](v283);
    v285 = &v313 - ((v284 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v286 + 16))(v285);
    v287 = v278;
    v66 = MEMORY[0x277D83A30];
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v285, 0xD000000000000010, 0x8000000216584340, v282, &v332, v287, MEMORY[0x277D83A30], v279);
    __swift_destroy_boxed_opaque_existential_1(&v333);
    v339 = v332;
  }

  v288 = (v1 + v331[27]);
  v289 = v288[1];
  if (v289)
  {
    v290 = *v288;
    v291 = MEMORY[0x277D837D0];
    v336 = MEMORY[0x277D837D0];
    v292 = MEMORY[0x277D83808];
    v337 = MEMORY[0x277D83808];
    v293 = MEMORY[0x277D837D8];
    v338 = MEMORY[0x277D837D8];
    *&v335 = v290;
    *(&v335 + 1) = v289;
    outlined init with take of Decodable & Encodable(&v335, &v333);

    v294 = v339;
    v295 = swift_isUniquelyReferenced_nonNull_native();
    v332 = v294;
    v296 = __swift_mutable_project_boxed_opaque_existential_1(&v333, v334);
    MEMORY[0x28223BE20](v296);
    v298 = &v313 - ((v297 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v299 + 16))(v298);
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v298, 0x69746172656E6567, 0xEA00000000006E6FLL, v295, &v332, v291, v292, v293);
    __swift_destroy_boxed_opaque_existential_1(&v333);
    v339 = v332;
  }

  else
  {
    specialized Dictionary._Variant.removeValue(forKey:)(0x69746172656E6567, 0xEA00000000006E6FLL, &v335);
    outlined destroy of UTType?(&v335, &_sSe_SEpSgMd, &_sSe_SEpSgMR);
  }

  v300 = MEMORY[0x277D839F8];
  v301 = MEMORY[0x277D83A08];
  v302 = v327;
  v303 = v325;
  outlined init with copy of DateInterval?(v1 + v331[29], v325, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v304 = v328;
  if (v329(v303, 1, v328) == 1)
  {
    outlined destroy of UTType?(v303, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    specialized Dictionary._Variant.removeValue(forKey:)(0xD000000000000015, 0x800000021657BAE0, &v335);
    outlined destroy of UTType?(&v335, &_sSe_SEpSgMd, &_sSe_SEpSgMR);
    return v339;
  }

  else
  {
    Date.timeIntervalSinceReferenceDate.getter();
    v336 = v300;
    v337 = v66;
    v338 = v301;
    *&v335 = v306;
    (*(v302 + 8))(v303, v304);
    outlined init with take of Decodable & Encodable(&v335, &v333);
    v307 = v339;
    v308 = swift_isUniquelyReferenced_nonNull_native();
    v332 = v307;
    v309 = __swift_mutable_project_boxed_opaque_existential_1(&v333, v334);
    MEMORY[0x28223BE20](v309);
    v311 = &v313 - ((v310 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v312 + 16))(v311);
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v311, 0xD000000000000015, 0x800000021657BAE0, v308, &v332, v300, v66, v301);
    __swift_destroy_boxed_opaque_existential_1(&v333);
    return v332;
  }
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

void *specialized closure #1 in static _UnsafeBitset.withTemporaryBitset<A>(capacity:body:)(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    specialized closure #1 in _NativeSet.intersection(_:)(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

void *specialized _NativeSet.intersection(_:)(uint64_t a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    bzero(v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    specialized closure #1 in _NativeSet.intersection(_:)((v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0)), v6, a2, a1);
    v10 = v9;
  }

  else
  {
    v12 = swift_slowAlloc();

    v10 = specialized closure #1 in static _UnsafeBitset.withTemporaryBitset<A>(capacity:body:)(v12, v6, a2, a1);

    MEMORY[0x21CE94770](v12, -1, -1);
  }

  return v10;
}

void specialized closure #1 in _NativeSet.intersection(_:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v6 = 0;
  v7 = 0;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v39 = a3 + 56;
    v40 = 1 << *(a3 + 32);
    if (v40 < 64)
    {
      v41 = ~(-1 << v40);
    }

    else
    {
      v41 = -1;
    }

    v75 = v41 & *(a3 + 56);
    v42 = (v40 + 63) >> 6;
    v79 = a4 + 56;
    while (1)
    {
      do
      {
LABEL_82:
        if (v75)
        {
          v43 = __clz(__rbit64(v75));
          v44 = (v75 - 1) & v75;
        }

        else
        {
          v45 = v7;
          do
          {
            v7 = v45 + 1;
            if (__OFADD__(v45, 1))
            {
              goto LABEL_156;
            }

            if (v7 >= v42)
            {
LABEL_154:

              specialized _NativeSet.extractSubset(using:count:)(a1, a2, v6, v5);
              return;
            }

            v46 = *(v39 + 8 * v7);
            ++v45;
          }

          while (!v46);
          v43 = __clz(__rbit64(v46));
          v44 = (v46 - 1) & v46;
        }

        v47 = v43 | (v7 << 6);
        v48 = *(*(v5 + 48) + v47);
        Hasher.init(_seed:)();
        v75 = v44;
        v72 = v47;
        String.hash(into:)();

        v49 = Hasher._finalize()();
        v50 = -1 << *(v4 + 32);
        v51 = v49 & ~v50;
      }

      while (((*(v79 + ((v51 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v51) & 1) == 0);
      v77 = v6;
      v52 = ~v50;
      while (1)
      {
        v53 = *(*(a4 + 48) + v51);
        if (v53 > 3)
        {
          if (*(*(a4 + 48) + v51) > 5u)
          {
            if (v53 == 6)
            {
              v58 = 0x756F527465737361;
              v59 = 0xEE00626F6C426574;
              if (v48 > 3)
              {
                goto LABEL_118;
              }
            }

            else
            {
              v58 = 0x6174536775626564;
              v59 = 0xEA0000000000656CLL;
              if (v48 > 3)
              {
                goto LABEL_118;
              }
            }
          }

          else
          {
            if (v53 == 4)
            {
              v58 = 1280328553;
            }

            else
            {
              v58 = 0x68746C616548;
            }

            if (v53 == 4)
            {
              v59 = 0xE400000000000000;
            }

            else
            {
              v59 = 0xE600000000000000;
            }

            if (v48 > 3)
            {
              goto LABEL_118;
            }
          }
        }

        else
        {
          v54 = 0x64756F6C43776F6CLL;
          if (v53 != 2)
          {
            v54 = 0x6469766F72506F6ELL;
          }

          v55 = 0xEF656761726F7453;
          v56 = 0xEB00000000737265;
          if (v53 == 2)
          {
            v56 = 0xEF656761726F7453;
          }

          v57 = 0x6C61636F4C776F6CLL;
          if (!*(*(a4 + 48) + v51))
          {
            v57 = 0x626E4F726576656ELL;
            v55 = 0xEE0064656472616FLL;
          }

          if (*(*(a4 + 48) + v51) <= 1u)
          {
            v58 = v57;
          }

          else
          {
            v58 = v54;
          }

          if (*(*(a4 + 48) + v51) <= 1u)
          {
            v59 = v55;
          }

          else
          {
            v59 = v56;
          }

          if (v48 > 3)
          {
LABEL_118:
            v62 = 0x756F527465737361;
            if (v48 != 6)
            {
              v62 = 0x6174536775626564;
            }

            v63 = 0xEE00626F6C426574;
            if (v48 != 6)
            {
              v63 = 0xEA0000000000656CLL;
            }

            v64 = 0x68746C616548;
            if (v48 == 4)
            {
              v64 = 1280328553;
            }

            v65 = 0xE400000000000000;
            if (v48 != 4)
            {
              v65 = 0xE600000000000000;
            }

            if (v48 <= 5)
            {
              v66 = v64;
            }

            else
            {
              v66 = v62;
            }

            if (v48 <= 5)
            {
              v61 = v65;
            }

            else
            {
              v61 = v63;
            }

            if (v58 != v66)
            {
              goto LABEL_142;
            }

            goto LABEL_141;
          }
        }

        if (v48 > 1)
        {
          if (v48 == 2)
          {
            v67 = 0x64756F6C43776F6CLL;
          }

          else
          {
            v67 = 0x6469766F72506F6ELL;
          }

          if (v48 == 2)
          {
            v61 = 0xEF656761726F7453;
          }

          else
          {
            v61 = 0xEB00000000737265;
          }

          if (v58 != v67)
          {
            goto LABEL_142;
          }
        }

        else
        {
          v60 = 0x626E4F726576656ELL;
          v61 = 0xEE0064656472616FLL;
          if (v48)
          {
            v60 = 0x6C61636F4C776F6CLL;
            v61 = 0xEF656761726F7453;
          }

          if (v58 != v60)
          {
            goto LABEL_142;
          }
        }

LABEL_141:
        if (v59 == v61)
        {
          break;
        }

LABEL_142:
        v68 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v68)
        {
          goto LABEL_151;
        }

        v51 = (v51 + 1) & v52;
        if (((*(v79 + ((v51 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v51) & 1) == 0)
        {
          v5 = a3;
          v6 = v77;
          v4 = a4;
          goto LABEL_82;
        }
      }

LABEL_151:
      *(a1 + ((v72 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v72;
      v6 = v77 + 1;
      v5 = a3;
      v4 = a4;
      if (__OFADD__(v77, 1))
      {
        goto LABEL_157;
      }
    }
  }

  v71 = a4 + 56;
  v8 = 1 << *(a4 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(a4 + 56);
  v69 = (v8 + 63) >> 6;
  v78 = a3 + 56;
LABEL_6:
  while (v10)
  {
    v11 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v12 = v11 | (v7 << 6);
    v13 = a4;
LABEL_13:
    v16 = *(*(v13 + 48) + v12);
    Hasher.init(_seed:)();
    String.hash(into:)();

    v17 = Hasher._finalize()();
    v18 = -1 << *(v5 + 32);
    v19 = v17 & ~v18;
    v20 = v19 >> 6;
    v21 = 1 << v19;
    if (((1 << v19) & *(v78 + 8 * (v19 >> 6))) == 0)
    {
      continue;
    }

    v74 = v10;
    v76 = v6;
    v22 = ~v18;
    while (1)
    {
      v23 = *(*(v5 + 48) + v19);
      if (v23 <= 3)
      {
        break;
      }

      if (*(*(v5 + 48) + v19) > 5u)
      {
        if (v23 == 6)
        {
          v28 = 0x756F527465737361;
          v29 = 0xEE00626F6C426574;
          if (v16 > 3)
          {
            goto LABEL_42;
          }
        }

        else
        {
          v28 = 0x6174536775626564;
          v29 = 0xEA0000000000656CLL;
          if (v16 > 3)
          {
            goto LABEL_42;
          }
        }
      }

      else
      {
        if (v23 == 4)
        {
          v28 = 1280328553;
        }

        else
        {
          v28 = 0x68746C616548;
        }

        if (v23 == 4)
        {
          v29 = 0xE400000000000000;
        }

        else
        {
          v29 = 0xE600000000000000;
        }

        if (v16 > 3)
        {
          goto LABEL_42;
        }
      }

LABEL_29:
      if (v16 > 1)
      {
        if (v16 == 2)
        {
          v37 = 0x64756F6C43776F6CLL;
        }

        else
        {
          v37 = 0x6469766F72506F6ELL;
        }

        if (v16 == 2)
        {
          v31 = 0xEF656761726F7453;
        }

        else
        {
          v31 = 0xEB00000000737265;
        }

        if (v28 == v37)
        {
          goto LABEL_65;
        }
      }

      else
      {
        v30 = 0x626E4F726576656ELL;
        v31 = 0xEE0064656472616FLL;
        if (v16)
        {
          v30 = 0x6C61636F4C776F6CLL;
          v31 = 0xEF656761726F7453;
        }

        if (v28 == v30)
        {
          goto LABEL_65;
        }
      }

LABEL_66:
      v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v38)
      {
        goto LABEL_75;
      }

      v19 = (v19 + 1) & v22;
      v20 = v19 >> 6;
      v5 = a3;
      v21 = 1 << v19;
      if ((*(v78 + 8 * (v19 >> 6)) & (1 << v19)) == 0)
      {
        v10 = v74;
        v6 = v76;
        goto LABEL_6;
      }
    }

    v24 = 0x64756F6C43776F6CLL;
    if (v23 != 2)
    {
      v24 = 0x6469766F72506F6ELL;
    }

    v25 = 0xEF656761726F7453;
    v26 = 0xEB00000000737265;
    if (v23 == 2)
    {
      v26 = 0xEF656761726F7453;
    }

    v27 = 0x6C61636F4C776F6CLL;
    if (!*(*(v5 + 48) + v19))
    {
      v27 = 0x626E4F726576656ELL;
      v25 = 0xEE0064656472616FLL;
    }

    if (*(*(v5 + 48) + v19) <= 1u)
    {
      v28 = v27;
    }

    else
    {
      v28 = v24;
    }

    if (*(*(v5 + 48) + v19) <= 1u)
    {
      v29 = v25;
    }

    else
    {
      v29 = v26;
    }

    if (v16 <= 3)
    {
      goto LABEL_29;
    }

LABEL_42:
    v32 = 0x756F527465737361;
    if (v16 != 6)
    {
      v32 = 0x6174536775626564;
    }

    v33 = 0xEE00626F6C426574;
    if (v16 != 6)
    {
      v33 = 0xEA0000000000656CLL;
    }

    v34 = 0x68746C616548;
    if (v16 == 4)
    {
      v34 = 1280328553;
    }

    v35 = 0xE400000000000000;
    if (v16 != 4)
    {
      v35 = 0xE600000000000000;
    }

    if (v16 <= 5)
    {
      v36 = v34;
    }

    else
    {
      v36 = v32;
    }

    if (v16 <= 5)
    {
      v31 = v35;
    }

    else
    {
      v31 = v33;
    }

    if (v28 != v36)
    {
      goto LABEL_66;
    }

LABEL_65:
    if (v29 != v31)
    {
      goto LABEL_66;
    }

LABEL_75:
    v10 = v74;
    a1[v20] |= v21;
    v6 = v76 + 1;
    v5 = a3;
    if (__OFADD__(v76, 1))
    {
      goto LABEL_158;
    }
  }

  v14 = v7;
  v13 = a4;
  while (1)
  {
    v7 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v7 >= v69)
    {
      goto LABEL_154;
    }

    v15 = *(v71 + 8 * v7);
    ++v14;
    if (v15)
    {
      v10 = (v15 - 1) & v15;
      v12 = __clz(__rbit64(v15)) | (v7 << 6);
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_156:
  __break(1u);
LABEL_157:
  __break(1u);
LABEL_158:
  __break(1u);
}

void specialized _parseInteger<A, B>(ascii:radix:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v67 = a1;
  v68 = a2;
  v69 = a3;
  v70 = a4;
  lazy protocol witness table accessor for type Substring and conformance Substring();

  v6 = String.init<A>(_:)();
  v8 = v6;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = static String._copying(_:)(v6, v7);
    v38 = v37;

    v7 = v38;
    if ((v38 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      v9 = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v10 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = _StringObject.sharedUTF8.getter();
      v10 = v66;
    }

    v11 = *v9;
    if (v11 == 43)
    {
      if (v10 >= 1)
      {
        v21 = v10 - 1;
        if (v21)
        {
          v22 = a5 + 48;
          v23 = a5 + 55;
          v24 = a5 + 87;
          if (a5 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (v9)
          {
            v25 = 0;
            v26 = v9 + 1;
            while (1)
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v22)
              {
                if (v27 < 0x41 || v27 >= v23)
                {
                  if (v27 < 0x61 || v27 >= v24)
                  {
                    goto LABEL_125;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              v29 = v25 * a5;
              if ((v25 * a5) >> 64 == (v25 * a5) >> 63)
              {
                v25 = v29 + (v27 + v28);
                if (!__OFADD__(v29, (v27 + v28)))
                {
                  ++v26;
                  if (--v21)
                  {
                    continue;
                  }
                }
              }

              goto LABEL_125;
            }
          }
        }

        goto LABEL_125;
      }

      goto LABEL_129;
    }

    if (v11 != 45)
    {
      if (v10)
      {
        v30 = a5 + 48;
        v31 = a5 + 55;
        v32 = a5 + 87;
        if (a5 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        if (v9)
        {
          v33 = 0;
          while (1)
          {
            v34 = *v9;
            if (v34 < 0x30 || v34 >= v30)
            {
              if (v34 < 0x41 || v34 >= v31)
              {
                if (v34 < 0x61 || v34 >= v32)
                {
                  goto LABEL_125;
                }

                v35 = -87;
              }

              else
              {
                v35 = -55;
              }
            }

            else
            {
              v35 = -48;
            }

            v36 = v33 * a5;
            if ((v33 * a5) >> 64 == (v33 * a5) >> 63)
            {
              v33 = v36 + (v34 + v35);
              if (!__OFADD__(v36, (v34 + v35)))
              {
                ++v9;
                if (--v10)
                {
                  continue;
                }
              }
            }

            goto LABEL_125;
          }
        }
      }

      goto LABEL_125;
    }

    if (v10 >= 1)
    {
      v12 = v10 - 1;
      if (v12)
      {
        v13 = a5 + 48;
        v14 = a5 + 55;
        v15 = a5 + 87;
        if (a5 > 10)
        {
          v13 = 58;
        }

        else
        {
          v15 = 97;
          v14 = 65;
        }

        if (v9)
        {
          v16 = 0;
          v17 = v9 + 1;
          while (1)
          {
            v18 = *v17;
            if (v18 < 0x30 || v18 >= v13)
            {
              if (v18 < 0x41 || v18 >= v14)
              {
                if (v18 < 0x61 || v18 >= v15)
                {
                  break;
                }

                v19 = -87;
              }

              else
              {
                v19 = -55;
              }
            }

            else
            {
              v19 = -48;
            }

            v20 = v16 * a5;
            if ((v16 * a5) >> 64 == (v16 * a5) >> 63)
            {
              v16 = v20 - (v18 + v19);
              if (!__OFSUB__(v20, (v18 + v19)))
              {
                ++v17;
                if (--v12)
                {
                  continue;
                }
              }
            }

            break;
          }
        }
      }

LABEL_125:

      return;
    }

    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  v39 = HIBYTE(v7) & 0xF;
  v67 = v8;
  v68 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v39)
      {
        v58 = 0;
        v59 = a5 + 48;
        v60 = a5 + 55;
        v61 = a5 + 87;
        if (a5 > 10)
        {
          v59 = 58;
        }

        else
        {
          v61 = 97;
          v60 = 65;
        }

        v62 = &v67;
        while (1)
        {
          v63 = *v62;
          if (v63 < 0x30 || v63 >= v59)
          {
            if (v63 < 0x41 || v63 >= v60)
            {
              if (v63 < 0x61 || v63 >= v61)
              {
                goto LABEL_125;
              }

              v64 = -87;
            }

            else
            {
              v64 = -55;
            }
          }

          else
          {
            v64 = -48;
          }

          v65 = v58 * a5;
          if ((v58 * a5) >> 64 == (v58 * a5) >> 63)
          {
            v58 = v65 + (v63 + v64);
            if (!__OFADD__(v65, (v63 + v64)))
            {
              v62 = (v62 + 1);
              if (--v39)
              {
                continue;
              }
            }
          }

          goto LABEL_125;
        }
      }

      goto LABEL_125;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        v41 = 0;
        v42 = a5 + 48;
        v43 = a5 + 55;
        v44 = a5 + 87;
        if (a5 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v67 + 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_125;
              }

              v47 = -87;
            }

            else
            {
              v47 = -55;
            }
          }

          else
          {
            v47 = -48;
          }

          v48 = v41 * a5;
          if ((v41 * a5) >> 64 == (v41 * a5) >> 63)
          {
            v41 = v48 - (v46 + v47);
            if (!__OFSUB__(v48, (v46 + v47)))
            {
              ++v45;
              if (--v40)
              {
                continue;
              }
            }
          }

          goto LABEL_125;
        }
      }

      goto LABEL_125;
    }

    goto LABEL_128;
  }

  if (v39)
  {
    v49 = v39 - 1;
    if (v49)
    {
      v50 = 0;
      v51 = a5 + 48;
      v52 = a5 + 55;
      v53 = a5 + 87;
      if (a5 > 10)
      {
        v51 = 58;
      }

      else
      {
        v53 = 97;
        v52 = 65;
      }

      v54 = &v67 + 1;
      while (1)
      {
        v55 = *v54;
        if (v55 < 0x30 || v55 >= v51)
        {
          if (v55 < 0x41 || v55 >= v52)
          {
            if (v55 < 0x61 || v55 >= v53)
            {
              goto LABEL_125;
            }

            v56 = -87;
          }

          else
          {
            v56 = -55;
          }
        }

        else
        {
          v56 = -48;
        }

        v57 = v50 * a5;
        if ((v50 * a5) >> 64 == (v50 * a5) >> 63)
        {
          v50 = v57 + (v55 + v56);
          if (!__OFADD__(v57, (v55 + v56)))
          {
            ++v54;
            if (--v49)
            {
              continue;
            }
          }
        }

        goto LABEL_125;
      }
    }

    goto LABEL_125;
  }

LABEL_130:
  __break(1u);
}

uint64_t static String._copying(_:)(uint64_t a1, unint64_t a2)
{
  v2 = String.subscript.getter();
  v6 = static String._copying(_:)(v2, v3, v4, v5);

  return v6;
}

uint64_t static String._copying(_:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = Substring.UTF8View.distance(from:to:)();
    if (!v9 || (v10 = v9, v11 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v9, 0), v12 = specialized Sequence._copySequenceContents(initializing:)(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = static String._uncheckedFromUTF8(_:)();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

unint64_t specialized Sequence._copySequenceContents(initializing:)(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = _StringGuts._slowEnsureMatchingEncoding(_:)(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = _StringGuts._slowEnsureMatchingEncoding(_:)(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t _StringGuts._slowEnsureMatchingEncoding(_:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x21CE92130](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

_OWORD *specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t *a6)
{
  v10 = MEMORY[0x277D837D0];
  v29 = MEMORY[0x277D837D0];
  v30 = MEMORY[0x277D83808];
  v31 = MEMORY[0x277D837D8];
  *&v28 = a1;
  *(&v28 + 1) = a2;
  v11 = *a6;
  v13 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 >= v16 && (a5 & 1) != 0)
  {
LABEL_7:
    v19 = *a6;
    if (v17)
    {
LABEL_8:
      v20 = (v19[7] + 48 * v13);
      __swift_destroy_boxed_opaque_existential_1(v20);
      return outlined init with take of Decodable & Encodable(&v28, v20);
    }

    goto LABEL_11;
  }

  if (v18 >= v16 && (a5 & 1) == 0)
  {
    specialized _NativeDictionary.copy()();
    goto LABEL_7;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a5 & 1);
  v22 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
  if ((v17 & 1) != (v23 & 1))
  {
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v13 = v22;
  v19 = *a6;
  if (v17)
  {
    goto LABEL_8;
  }

LABEL_11:
  v24 = __swift_mutable_project_boxed_opaque_existential_1(&v28, v10);
  MEMORY[0x28223BE20](v24);
  v26 = (&v28 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v27 + 16))(v26);
  specialized _NativeDictionary._insert(at:key:value:)(v13, a3, a4, *v26, v26[1], v19);

  return __swift_destroy_boxed_opaque_existential_1(&v28);
}

_OWORD *specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v35 = a6;
  v36 = a7;
  v37 = a8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v34);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1, a1, a6);
  v17 = *a5;
  v19 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
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
  if (v24 >= v22 && (a4 & 1) != 0)
  {
LABEL_7:
    v25 = *a5;
    if (v23)
    {
LABEL_8:
      v26 = (v25[7] + 48 * v19);
      __swift_destroy_boxed_opaque_existential_1(v26);
      return outlined init with take of Decodable & Encodable(&v34, v26);
    }

    goto LABEL_11;
  }

  if (v24 >= v22 && (a4 & 1) == 0)
  {
    specialized _NativeDictionary.copy()();
    goto LABEL_7;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v22, a4 & 1);
  v28 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  if ((v23 & 1) != (v29 & 1))
  {
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v19 = v28;
  v25 = *a5;
  if (v23)
  {
    goto LABEL_8;
  }

LABEL_11:
  v30 = __swift_mutable_project_boxed_opaque_existential_1(&v34, v35);
  MEMORY[0x28223BE20](v30);
  v32 = &v34 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v33 + 16))(v32);
  specialized _NativeDictionary._insert(at:key:value:)(v19, a2, a3, v32, v25, a6, a7, a8);

  return __swift_destroy_boxed_opaque_existential_1(&v34);
}

_OWORD *specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v13 = MEMORY[0x277D837D0];
  v14 = MEMORY[0x277D83808];
  v15 = MEMORY[0x277D837D8];
  *&v12 = a4;
  *(&v12 + 1) = a5;
  a6[(a1 >> 6) + 8] |= 1 << a1;
  v7 = (a6[6] + 16 * a1);
  *v7 = a2;
  v7[1] = a3;
  result = outlined init with take of Decodable & Encodable(&v12, (a6[7] + 48 * a1));
  v9 = a6[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v11;
  }

  return result;
}

_OWORD *specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v21 = a6;
  v22 = a7;
  v23 = a8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v20);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1, a4, a6);
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v15 = (a5[6] + 16 * a1);
  *v15 = a2;
  v15[1] = a3;
  result = outlined init with take of Decodable & Encodable(&v20, (a5[7] + 48 * a1));
  v17 = a5[2];
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v19;
  }

  return result;
}

uint64_t specialized static CloudDevice.== infix(_:_:)(void *a1, void *a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v28 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSg_ADtMd, &_s10Foundation4DateVSg_ADtMR);
  MEMORY[0x28223BE20](v11);
  v13 = &v28 - v12;
  if (*a1 != *a2 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_9;
  }

  v28 = v7;
  v29 = type metadata accessor for CloudDevice(0);
  v14 = *(v29 + 28);
  v15 = *(v11 + 48);
  outlined init with copy of DateInterval?(a1 + v14, v13, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  outlined init with copy of DateInterval?(a2 + v14, &v13[v15], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    outlined init with copy of DateInterval?(v13, v10, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      v19 = &v13[v15];
      v20 = v28;
      (*(v5 + 32))(v28, v19, v4);
      lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *(v5 + 8);
      v22(v20, v4);
      v22(v10, v4);
      outlined destroy of UTType?(v13, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      if (v21)
      {
        goto LABEL_12;
      }

LABEL_9:
      v17 = 0;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
LABEL_8:
    outlined destroy of UTType?(v13, &_s10Foundation4DateVSg_ADtMd, &_s10Foundation4DateVSg_ADtMR);
    goto LABEL_9;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_8;
  }

  outlined destroy of UTType?(v13, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
LABEL_12:
  v23 = *(v29 + 32);
  v24 = (a1 + v23);
  v25 = *(a1 + v23 + 8);
  v26 = (a2 + v23);
  v27 = v26[1];
  v17 = (v25 | v27) == 0;
  if (v25 && v27)
  {
    if (*v24 == *v26 && v25 == v27)
    {
      v17 = 1;
    }

    else
    {
      v17 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return v17 & 1;
}

uint64_t outlined init with copy of CloudDevice(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudDevice(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t specialized static CloudDevice.Capability.< infix(_:_:)(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xEE0064656472616FLL;
  v3 = 0x626E4F726576656ELL;
  v4 = *a1;
  v5 = *a2;
  if (v4 > 3)
  {
    if (*a1 > 5u)
    {
      if (v4 == 6)
      {
        v6 = 0x756F527465737361;
        v7 = 0xEE00626F6C426574;
      }

      else
      {
        v6 = 0x6174536775626564;
        v7 = 0xEA0000000000656CLL;
      }
    }

    else if (v4 == 4)
    {
      v7 = 0xE400000000000000;
      v6 = 1280328553;
    }

    else
    {
      v7 = 0xE600000000000000;
      v6 = 0x68746C616548;
    }
  }

  else if (*a1 > 1u)
  {
    if (v4 == 2)
    {
      v6 = 0x64756F6C43776F6CLL;
      v7 = 0xEF656761726F7453;
    }

    else
    {
      v6 = 0x6469766F72506F6ELL;
      v7 = 0xEB00000000737265;
    }
  }

  else
  {
    if (*a1)
    {
      v6 = 0x6C61636F4C776F6CLL;
    }

    else
    {
      v6 = 0x626E4F726576656ELL;
    }

    if (v4)
    {
      v7 = 0xEF656761726F7453;
    }

    else
    {
      v7 = 0xEE0064656472616FLL;
    }
  }

  v8 = 0x756F527465737361;
  v9 = 0xEE00626F6C426574;
  if (v5 != 6)
  {
    v8 = 0x6174536775626564;
    v9 = 0xEA0000000000656CLL;
  }

  v10 = 0xE400000000000000;
  v11 = 1280328553;
  if (v5 != 4)
  {
    v11 = 0x68746C616548;
    v10 = 0xE600000000000000;
  }

  if (*a2 <= 5u)
  {
    v8 = v11;
    v9 = v10;
  }

  v12 = 0x64756F6C43776F6CLL;
  v13 = 0xEF656761726F7453;
  if (v5 != 2)
  {
    v12 = 0x6469766F72506F6ELL;
    v13 = 0xEB00000000737265;
  }

  if (*a2)
  {
    v3 = 0x6C61636F4C776F6CLL;
    v2 = 0xEF656761726F7453;
  }

  if (*a2 > 1u)
  {
    v3 = v12;
    v2 = v13;
  }

  if (*a2 <= 3u)
  {
    v14 = v3;
  }

  else
  {
    v14 = v8;
  }

  if (*a2 <= 3u)
  {
    v15 = v2;
  }

  else
  {
    v15 = v9;
  }

  if (v6 == v14 && v7 == v15)
  {
    v16 = 0;
  }

  else
  {
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v16 & 1;
}

BOOL specialized static CloudDevice.< infix(_:_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for CloudDevice(0);
  lazy protocol witness table accessor for type String and conformance String();

  v2 = StringProtocol.localizedCompare<A>(_:)();

  return v2 == -1;
}

uint64_t specialized static CloudDevice._getDeviceName()()
{

  return specialized static CloudDevice._getDeviceName()(0x72657475706D6F43, 0xEC000000656D614ELL, "Computer Name: %s");
}

uint64_t specialized static CloudDevice._getOSVersion()()
{

  return specialized static CloudDevice._getDeviceName()(0x56746375646F7250, 0xEE006E6F69737265, "OS Version: %s");
}

uint64_t specialized static CloudDevice._getDeviceName()(uint64_t a1, uint64_t a2, const char *a3, ...)
{
  v30[1] = *MEMORY[0x277D85DE8];
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = 0;
  v10 = MEMORY[0x21CE91FC0](a1, a2);
  v11 = MGCopyAnswerWithError();

  if (v11)
  {
    v30[0] = v11;
    v12 = swift_dynamicCast();
    if (v12)
    {
      v11 = v28;
    }

    else
    {
      v11 = 0;
    }

    if (v12)
    {
      v13 = v29;
    }

    else
    {
      v13 = 0;
    }

    if (one-time initialization token for Log != -1)
    {
      swift_once();
    }

    v14 = __swift_project_value_buffer(v6, static CloudDevice.Log);
    swift_beginAccess();
    (*(v7 + 16))(v9, v14, v6);

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v25 = a3;
      v18 = v17;
      v19 = swift_slowAlloc();
      v30[0] = v19;
      *v18 = 136315138;
      if (v13)
      {
        v20 = v11;
      }

      else
      {
        v20 = 0x6E776F6E6B6E55;
      }

      v26 = v11;
      v21 = v7;
      if (v13)
      {
        v22 = v13;
      }

      else
      {
        v22 = 0xE700000000000000;
      }

      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, v30);

      *(v18 + 4) = v23;
      _os_log_impl(&dword_21607C000, v15, v16, v25, v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x21CE94770](v19, -1, -1);
      MEMORY[0x21CE94770](v18, -1, -1);

      (*(v21 + 8))(v9, v6);
      return v26;
    }

    else
    {

      (*(v7 + 8))(v9, v6);
    }
  }

  return v11;
}

uint64_t specialized static CloudDevice._getIdiom()()
{
  v26[1] = *MEMORY[0x277D85DE8];
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = 0;
  v4 = MEMORY[0x21CE91FC0](0x6C43656369766544, 0xEB00000000737361);
  v5 = MGCopyAnswerWithError();

  if (!v5)
  {
    return -1;
  }

  v26[0] = v5;
  v6 = swift_dynamicCast();
  if (v6)
  {
    v7 = v24;
  }

  else
  {
    v7 = 0;
  }

  if (v6)
  {
    v8 = v25;
  }

  else
  {
    v8 = 0;
  }

  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v0, static CloudDevice.Log);
  swift_beginAccess();
  (*(v1 + 16))(v3, v9, v0);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();

  v12 = os_log_type_enabled(v10, v11);
  v22 = v7;
  if (v12)
  {
    v13 = v1;
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v26[0] = v15;
    *v14 = 136315138;
    if (v8)
    {
      v16 = v8;
    }

    else
    {
      v7 = 0x6E776F6E6B6E55;
      v16 = 0xE700000000000000;
    }

    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v16, v26);

    *(v14 + 4) = v17;
    _os_log_impl(&dword_21607C000, v10, v11, "Device Class: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x21CE94770](v15, -1, -1);
    MEMORY[0x21CE94770](v14, -1, -1);

    (*(v13 + 8))(v3, v0);
    if (!v8)
    {
      return -1;
    }
  }

  else
  {

    (*(v1 + 8))(v3, v0);
    if (!v8)
    {
      return -1;
    }
  }

  v18 = v22;
  if (v22 == 0x656E6F685069 && v8 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  if (v18 == 1684099177 && v8 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  if (v18 == 0x5654656C707041 && v8 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  if (v18 == 6512973 && v8 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  if (v18 == 0x447974696C616552 && v8 == 0xED00006563697665)
  {

    return 6;
  }

  v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v20)
  {
    return 6;
  }

  return -1;
}

uint64_t specialized static CloudDevice._getProductType()()
{

  return specialized static CloudDevice._getDeviceName()(0x54746375646F7250, 0xEB00000000657079, "Machine Code: %s");
}

void specialized static CloudDevice.effectiveCapabilities(original:freeSpace:cloudQuotaExceeded:iCloudPhotoLibraryAvailable:healthDataAvailable:)(uint64_t a1, unsigned __int8 *a2, char a3, char a4, char a5)
{
  v5 = *a2;
  v6 = static DefaultsManager.SyncOnboarding.hasOnboardedBefore.getter();
  v7 = MEMORY[0x277D84FA0];
  v108 = MEMORY[0x277D84FA0];
  v109 = MEMORY[0x277D84FA0];
  if ((v6 & 1) == 0)
  {
    Hasher.init(_seed:)();
    String.hash(into:)();
    v8 = Hasher._finalize()();
    v9 = -1 << *(v7 + 32);
    v10 = v8 & ~v9;
    if ((*(v7 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v10))
    {
      v11 = ~v9;
      while (*(*(v7 + 48) + v10) > 3u || *(*(v7 + 48) + v10))
      {
        v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v12)
        {
          goto LABEL_10;
        }

        v10 = (v10 + 1) & v11;
        if (((*(v7 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v10) & 1) == 0)
        {
          goto LABEL_9;
        }
      }

      v7 = MEMORY[0x277D84FA0];
    }

    else
    {
LABEL_9:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v107 = v7;
      specialized _NativeSet.insertNew(_:at:isUnique:)(0, v10, isUniquelyReferenced_nonNull_native);
      v109 = v7;
    }
  }

LABEL_10:
  v14 = MEMORY[0x277D84FA0];
  if (v5)
  {
    if (v5 == 3)
    {
      Hasher.init(_seed:)();
      String.hash(into:)();
      v15 = Hasher._finalize()();
      v16 = -1 << *(v14 + 32);
      v17 = v15 & ~v16;
      if ((*(v14 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v17))
      {
        v18 = ~v16;
        while (*(*(v14 + 48) + v17) >= 2u || !*(*(v14 + 48) + v17))
        {
          v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v19)
          {
            goto LABEL_31;
          }

          v17 = (v17 + 1) & v18;
          v14 = MEMORY[0x277D84FA0];
          if (((*(MEMORY[0x277D84FA0] + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v17) & 1) == 0)
          {
            goto LABEL_19;
          }
        }

LABEL_31:
        v21 = MEMORY[0x277D84FA0];
      }

      else
      {
LABEL_19:
        v20 = swift_isUniquelyReferenced_nonNull_native();
        v107 = v14;
        specialized _NativeSet.insertNew(_:at:isUnique:)(1u, v17, v20);
        v21 = v14;
        v108 = v14;
      }
    }

    else
    {
      Hasher.init(_seed:)();
      String.hash(into:)();
      v22 = Hasher._finalize()();
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
      if ((*(v7 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24))
      {
        v25 = ~v23;
        v21 = MEMORY[0x277D84FA0];
        while (*(*(v7 + 48) + v24) >= 2u || !*(*(v7 + 48) + v24))
        {
          v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v26)
          {
            goto LABEL_32;
          }

          v24 = (v24 + 1) & v25;
          if (((*(v7 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
          {
            goto LABEL_28;
          }
        }
      }

      else
      {
LABEL_28:
        v27 = swift_isUniquelyReferenced_nonNull_native();
        v107 = v7;
        specialized _NativeSet.insertNew(_:at:isUnique:)(1u, v24, v27);
        v109 = v7;
      }

      v21 = MEMORY[0x277D84FA0];
    }
  }

  else
  {
    v21 = MEMORY[0x277D84FA0];
  }

LABEL_32:
  v28 = a4;
  if (a3 == 2)
  {
    Hasher.init(_seed:)();
    String.hash(into:)();
    v29 = Hasher._finalize()();
    v30 = -1 << *(v21 + 32);
    v31 = v29 & ~v30;
    if ((*(v21 + 56 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31))
    {
      v32 = ~v30;
      while (1)
      {
        v33 = *(*(v21 + 48) + v31);
        if (v33 <= 3 && *(*(v21 + 48) + v31) > 1u && v33 != 3)
        {
          break;
        }

        v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v34)
        {
          goto LABEL_50;
        }

        v31 = (v31 + 1) & v32;
        if (((*(v21 + 56 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
        {
          goto LABEL_40;
        }
      }

LABEL_125:

      goto LABEL_50;
    }

LABEL_40:
    v35 = swift_isUniquelyReferenced_nonNull_native();
    v107 = v21;
    specialized _NativeSet.insertNew(_:at:isUnique:)(2u, v31, v35);
    v108 = v21;
  }

  else
  {
    if ((a3 & 1) == 0)
    {
      goto LABEL_51;
    }

    Hasher.init(_seed:)();
    String.hash(into:)();
    v36 = Hasher._finalize()();
    v37 = -1 << *(v7 + 32);
    v38 = v36 & ~v37;
    if ((*(v7 + 56 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38))
    {
      v39 = ~v37;
      do
      {
        v40 = *(*(v7 + 48) + v38);
        if (v40 <= 3 && *(*(v7 + 48) + v38) > 1u && v40 != 3)
        {
          goto LABEL_125;
        }

        v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v41)
        {
          goto LABEL_50;
        }

        v38 = (v38 + 1) & v39;
      }

      while (((*(v7 + 56 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38) & 1) != 0);
    }

    v42 = swift_isUniquelyReferenced_nonNull_native();
    v107 = v7;
    specialized _NativeSet.insertNew(_:at:isUnique:)(2u, v38, v42);
    v109 = v7;
  }

LABEL_50:
  v28 = a4;
LABEL_51:
  if (v28 == 2)
  {
    Hasher.init(_seed:)();
    String.hash(into:)();
    v43 = Hasher._finalize()();
    v44 = -1 << *(v21 + 32);
    v45 = v43 & ~v44;
    if (((*(v21 + 56 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45) & 1) == 0)
    {
LABEL_59:
      v49 = swift_isUniquelyReferenced_nonNull_native();
      v107 = v21;
      specialized _NativeSet.insertNew(_:at:isUnique:)(4u, v45, v49);
      v108 = v21;
      goto LABEL_69;
    }

    v46 = ~v44;
    while (1)
    {
      v47 = *(*(v21 + 48) + v45);
      if (v47 > 3 && *(*(v21 + 48) + v45) <= 5u && v47 != 5)
      {
        break;
      }

      v48 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v48)
      {
        goto LABEL_69;
      }

      v45 = (v45 + 1) & v46;
      if (((*(v21 + 56 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45) & 1) == 0)
      {
        goto LABEL_59;
      }
    }
  }

  else
  {
    if ((v28 & 1) == 0)
    {
      goto LABEL_69;
    }

    Hasher.init(_seed:)();
    String.hash(into:)();
    v50 = Hasher._finalize()();
    v51 = -1 << *(v7 + 32);
    v52 = v50 & ~v51;
    if (((*(v7 + 56 + ((v52 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v52) & 1) == 0)
    {
LABEL_68:
      v56 = swift_isUniquelyReferenced_nonNull_native();
      v107 = v7;
      specialized _NativeSet.insertNew(_:at:isUnique:)(4u, v52, v56);
      v109 = v7;
      goto LABEL_69;
    }

    v53 = ~v51;
    while (1)
    {
      v54 = *(*(v7 + 48) + v52);
      if (v54 > 3 && *(*(v7 + 48) + v52) <= 5u && v54 != 5)
      {
        break;
      }

      v55 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v55)
      {
        goto LABEL_69;
      }

      v52 = (v52 + 1) & v53;
      if (((*(v7 + 56 + ((v52 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v52) & 1) == 0)
      {
        goto LABEL_68;
      }
    }
  }

LABEL_69:
  if (a5 == 2)
  {
    Hasher.init(_seed:)();
    String.hash(into:)();
    v57 = Hasher._finalize()();
    v58 = -1 << *(v21 + 32);
    v59 = v57 & ~v58;
    if (((*(v21 + 56 + ((v59 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v59) & 1) == 0)
    {
LABEL_77:
      v63 = swift_isUniquelyReferenced_nonNull_native();
      v107 = v21;
      specialized _NativeSet.insertNew(_:at:isUnique:)(5u, v59, v63);
      v108 = v21;
      goto LABEL_87;
    }

    v60 = ~v58;
    while (1)
    {
      v61 = *(*(v21 + 48) + v59);
      if (v61 > 3 && *(*(v21 + 48) + v59) <= 5u && v61 != 4)
      {
        break;
      }

      v62 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v62)
      {
        goto LABEL_87;
      }

      v59 = (v59 + 1) & v60;
      if (((*(v21 + 56 + ((v59 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v59) & 1) == 0)
      {
        goto LABEL_77;
      }
    }
  }

  else
  {
    if ((a5 & 1) == 0)
    {
      goto LABEL_87;
    }

    Hasher.init(_seed:)();
    String.hash(into:)();
    v64 = Hasher._finalize()();
    v65 = -1 << *(v7 + 32);
    v66 = v64 & ~v65;
    if (((*(v7 + 56 + ((v66 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v66) & 1) == 0)
    {
LABEL_86:
      v70 = swift_isUniquelyReferenced_nonNull_native();
      v107 = v7;
      specialized _NativeSet.insertNew(_:at:isUnique:)(5u, v66, v70);
      v109 = v7;
      goto LABEL_87;
    }

    v67 = ~v65;
    while (1)
    {
      v68 = *(*(v7 + 48) + v66);
      if (v68 > 3 && *(*(v7 + 48) + v66) <= 5u && v68 != 4)
      {
        break;
      }

      v69 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v69)
      {
        goto LABEL_87;
      }

      v66 = (v66 + 1) & v67;
      if (((*(v7 + 56 + ((v66 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v66) & 1) == 0)
      {
        goto LABEL_86;
      }
    }
  }

LABEL_87:
  Hasher.init(_seed:)();
  String.hash(into:)();
  v71 = Hasher._finalize()();
  v72 = -1 << *(v7 + 32);
  v73 = v71 & ~v72;
  if ((*(v7 + 56 + ((v73 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v73))
  {
    v74 = ~v72;
    while (1)
    {
      v75 = *(*(v7 + 48) + v73);
      if (v75 > 3 && *(*(v7 + 48) + v73) > 5u && v75 != 7)
      {
        break;
      }

      v76 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v76)
      {
        goto LABEL_95;
      }

      v73 = (v73 + 1) & v74;
      if (((*(v7 + 56 + ((v73 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v73) & 1) == 0)
      {
        goto LABEL_94;
      }
    }
  }

  else
  {
LABEL_94:
    v77 = swift_isUniquelyReferenced_nonNull_native();
    v107 = v7;
    specialized _NativeSet.insertNew(_:at:isUnique:)(6u, v73, v77);
    v109 = v7;
  }

LABEL_95:
  v78 = specialized static DefaultsManager.Cloud.capabilitiesMock.getter();
  v79 = specialized static DefaultsManager.Cloud.capabilitiesBlock.getter();
  v80 = specialized static DefaultsManager.Cloud.capabilitiesForce.getter();
  if (v78)
  {

    v7 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9MomentsUI11CloudDeviceV10CapabilityO_SayAHGTt0g5Tf4g_n(v78);

    v109 = v7;
    v21 = MEMORY[0x277D84FA0];
    v108 = MEMORY[0x277D84FA0];
  }

  if (v79)
  {
    if (*(v7 + 16))
    {
      v81 = *(v79 + 2);
      if (v81)
      {
        v82 = (v79 + 32);
        do
        {
          v83 = *v82++;
          specialized Set._Variant.remove(_:)(v83, &v107);
          --v81;
        }

        while (v81);
      }
    }

    if (*(v21 + 16))
    {
      v84 = *(v79 + 2);
      if (v84)
      {
        v85 = (v79 + 32);
        do
        {
          v86 = *v85++;
          specialized Set._Variant.remove(_:)(v86, &v107);
          --v84;
        }

        while (v84);
      }
    }
  }

  if (v80)
  {
    v87 = *(v80 + 2);
    if (v87)
    {
      v88 = (v80 + 32);
      do
      {
        v89 = *v88++;
        specialized Set._Variant.insert(_:)(&v107, v89);
        --v87;
      }

      while (v87);
    }

    if (*(v108 + 16))
    {
      v90 = *(v80 + 2);
      if (v90)
      {
        v91 = (v80 + 32);
        do
        {
          v92 = *v91++;
          specialized Set._Variant.remove(_:)(v92, &v107);
          --v90;
        }

        while (v90);
      }
    }
  }

  v94 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9MomentsUI11CloudDeviceV10CapabilityO_SayAHGTt0g5Tf4g_n(v93);

  v95 = v108;
  if (*(v108 + 16) <= *(v109 + 16) >> 3)
  {
    v107 = v109;
    specialized Set._subtract<A>(_:)(v108);
    v96 = v107;
  }

  else
  {
    v96 = specialized _NativeSet.subtracting<A>(_:)(v108, v109);
  }

  v97 = specialized _NativeSet.intersection(_:)(v95, v94);

  v98 = specialized Set.union<A>(_:)(v97, v96);
  v99 = v98;
  v100 = *(v98 + 16);
  if (!v100)
  {

    v101 = MEMORY[0x277D84F90];
    goto LABEL_123;
  }

  v101 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC9MomentsUI11CloudDeviceV10CapabilityO_Tt1g5(*(v98 + 16), 0);
  v102 = specialized Sequence._copySequenceContents(initializing:)(&v107, v101 + 32, v100, v99);
  v103 = v107;

  outlined consume of [String : DBAssetData].Iterator._Variant(v103);
  if (v102 == v100)
  {

LABEL_123:
    v107 = v101;
    specialized MutableCollection<>.sort(by:)(&v107);
    return;
  }

  __break(1u);

  __break(1u);
}

uint64_t _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFqd__AGKXEfU_SRys5UInt8VGABySS8UTF8ViewVGSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lyAIqd__Isgyrzo_qd__sAO_pALRszr__lIetyggrzo_Tpq5SiSg_Tg5061_ss17FixedWidthIntegerPsE_5radixxSgqd___SitcSyRd__lufcADSRys5H15VGXEfU_Si_SsTG5SiTf1nnc_nTf4xnn_n(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = _StringGuts._slowEnsureMatchingEncoding(_:)(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_95;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = String.UTF8View._foreignDistance(from:to:)();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = _StringGuts._slowEnsureMatchingEncoding(_:)(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = _StringGuts._slowEnsureMatchingEncoding(_:)(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_91;
  }

  if (v25 < a3 >> 16)
  {
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  result = String.UTF8View._foreignDistance(from:to:)();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_90;
  }

  if (v26 < v13)
  {
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v39 = a6 + 48;
        v40 = a6 + 55;
        v41 = a6 + 87;
        if (a6 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        if (v27)
        {
          v32 = 0;
          v42 = v27 + 1;
          v43 = result - 1;
          do
          {
            v44 = *v42;
            if (v44 < 0x30 || v44 >= v39)
            {
              if (v44 < 0x41 || v44 >= v40)
              {
                v37 = 0;
                if (v44 < 0x61 || v44 >= v41)
                {
                  return v37;
                }

                v45 = -87;
              }

              else
              {
                v45 = -55;
              }
            }

            else
            {
              v45 = -48;
            }

            v46 = v32 * a6;
            if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
            {
              return 0;
            }

            v32 = v46 + (v44 + v45);
            if (__OFADD__(v46, (v44 + v45)))
            {
              return 0;
            }

            ++v42;
            --v43;
          }

          while (v43);
          return v32;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_94;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v47 = a6 + 48;
      v48 = a6 + 55;
      v49 = a6 + 87;
      if (a6 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      if (v27)
      {
        v32 = 0;
        while (1)
        {
          v50 = *v27;
          if (v50 < 0x30 || v50 >= v47)
          {
            if (v50 < 0x41 || v50 >= v48)
            {
              v37 = 0;
              if (v50 < 0x61 || v50 >= v49)
              {
                return v37;
              }

              v51 = -87;
            }

            else
            {
              v51 = -55;
            }
          }

          else
          {
            v51 = -48;
          }

          v52 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v52 + (v50 + v51);
          if (__OFADD__(v52, (v50 + v51)))
          {
            return 0;
          }

          ++v27;
          if (!--result)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 48;
      v30 = a6 + 55;
      v31 = a6 + 87;
      if (a6 > 10)
      {
        v29 = 58;
      }

      else
      {
        v31 = 97;
        v30 = 65;
      }

      if (v27)
      {
        v32 = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v29)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              if (v35 < 0x61 || v35 >= v31)
              {
                return v37;
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          v38 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v38 - (v35 + v36);
          if (__OFSUB__(v38, (v35 + v36)))
          {
            return 0;
          }

          ++v33;
          if (!--v34)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
  return result;
}

void specialized static CloudDevice._compareVersions(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = lazy protocol witness table accessor for type String and conformance String();
  v7 = MEMORY[0x277D837D0];
  v8 = MEMORY[0x21CE92F90](46, 0xE100000000000000, 0x7FFFFFFFFFFFFFFFLL, 1, MEMORY[0x277D837D0], v6);
  v75 = a3;
  v76 = a4;
  v9 = MEMORY[0x21CE92F90](46, 0xE100000000000000, 0x7FFFFFFFFFFFFFFFLL, 1, v7, v6);
  v10 = *(v8 + 2);
  v11 = *(v9 + 2);
  if (v10 < v11)
  {
    do
    {
      v12 = MEMORY[0x21CE92EF0](48, 0xE100000000000000);
      v14 = v13;
      v16 = v15;
      v18 = v17;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
      }

      v20 = *(v8 + 2);
      v19 = *(v8 + 3);
      v10 = v20 + 1;
      if (v20 >= v19 >> 1)
      {
        v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1, v8);
      }

      *(v8 + 2) = v10;
      v21 = &v8[32 * v20];
      *(v21 + 4) = v12;
      *(v21 + 5) = v14;
      *(v21 + 6) = v16;
      *(v21 + 7) = v18;
    }

    while (v10 < v11);
    v11 = *(v9 + 2);
  }

  if (v11 < v10)
  {
    do
    {
      v22 = MEMORY[0x21CE92EF0](48, 0xE100000000000000);
      v24 = v23;
      v26 = v25;
      v28 = v27;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2) + 1, 1, v9);
      }

      v30 = *(v9 + 2);
      v29 = *(v9 + 3);
      v11 = v30 + 1;
      if (v30 >= v29 >> 1)
      {
        v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1, v9);
      }

      *(v9 + 2) = v11;
      v31 = &v9[32 * v30];
      *(v31 + 4) = v22;
      *(v31 + 5) = v24;
      *(v31 + 6) = v26;
      *(v31 + 7) = v28;
    }

    while (v11 < v10);
    v10 = *(v8 + 2);
  }

  if (v11 <= v10)
  {
    v32 = v10;
  }

  else
  {
    v32 = v11;
  }

  if (!v32)
  {
LABEL_50:

    return;
  }

  v33 = 0;
  v34 = 0;
  while (v34 < *(v8 + 2))
  {
    v35 = &v8[v33];
    v36 = *&v8[v33 + 32];
    v37 = *&v8[v33 + 40];
    if ((v37 ^ v36) < 0x4000)
    {
      v44 = 0;
    }

    else
    {
      v38 = *(v35 + 6);
      v39 = *(v35 + 7);
      if ((v39 & 0x1000000000000000) != 0)
      {
        v53 = *(v35 + 7);
        v54 = *&v8[v33 + 40];
        v55 = *&v8[v33 + 32];
        v56 = *(v35 + 6);

        specialized _parseInteger<A, B>(ascii:radix:)(v55, v54, v56, v53, 10);
        v58 = v57;
        v43 = v59;

        v41 = v58;
      }

      else
      {
        if ((v39 & 0x2000000000000000) != 0)
        {
          v75 = *(v35 + 6);
          v76 = v39 & 0xFFFFFFFFFFFFFFLL;
          v40 = &v75;
        }

        else if ((v38 & 0x1000000000000000) != 0)
        {
          v40 = ((v39 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v66 = *&v8[v33 + 32];
          v67 = *(v35 + 7);
          v68 = *&v8[v33 + 40];
          v69 = *(v35 + 6);
          v40 = _StringObject.sharedUTF8.getter();
          v38 = v69;
          v36 = v66;
          v37 = v68;
          v39 = v67;
        }

        v41 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFqd__AGKXEfU_SRys5UInt8VGABySS8UTF8ViewVGSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lyAIqd__Isgyrzo_qd__sAO_pALRszr__lIetyggrzo_Tpq5SiSg_Tg5061_ss17FixedWidthIntegerPsE_5radixxSgqd___SitcSyRd__lufcADSRys5H15VGXEfU_Si_SsTG5SiTf1nnc_nTf4xnn_n(v40, v36, v37, v38, v39, 10);
        v43 = v42 & 1;
      }

      if (v43)
      {
        v44 = 0;
      }

      else
      {
        v44 = v41;
      }
    }

    if (v34 >= *(v9 + 2))
    {
      goto LABEL_53;
    }

    v45 = &v9[v33];
    v46 = *&v9[v33 + 32];
    v47 = *&v9[v33 + 40];
    if ((v47 ^ v46) < 0x4000)
    {
LABEL_20:
      if (v44)
      {
        goto LABEL_50;
      }

      goto LABEL_21;
    }

    v48 = *(v45 + 6);
    v49 = *(v45 + 7);
    if ((v49 & 0x1000000000000000) != 0)
    {
      v60 = *(v45 + 7);
      v61 = *&v9[v33 + 40];
      v62 = *&v9[v33 + 32];
      v73 = *(v45 + 6);

      specialized _parseInteger<A, B>(ascii:radix:)(v62, v61, v73, v60, 10);
      v64 = v63;
      LOBYTE(v62) = v65;

      if (v62)
      {
        goto LABEL_20;
      }

      if (v44 != v64)
      {
        goto LABEL_50;
      }
    }

    else
    {
      if ((v49 & 0x2000000000000000) != 0)
      {
        v75 = *(v45 + 6);
        v76 = v49 & 0xFFFFFFFFFFFFFFLL;
        v50 = &v75;
      }

      else if ((v48 & 0x1000000000000000) != 0)
      {
        v50 = ((v49 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v74 = *&v9[v33 + 32];
        v70 = *(v45 + 7);
        v71 = *&v9[v33 + 40];
        v72 = *(v45 + 6);
        v50 = _StringObject.sharedUTF8.getter();
        v48 = v72;
        v46 = v74;
        v47 = v71;
        v49 = v70;
      }

      v51 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFqd__AGKXEfU_SRys5UInt8VGABySS8UTF8ViewVGSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lyAIqd__Isgyrzo_qd__sAO_pALRszr__lIetyggrzo_Tpq5SiSg_Tg5061_ss17FixedWidthIntegerPsE_5radixxSgqd___SitcSyRd__lufcADSRys5H15VGXEfU_Si_SsTG5SiTf1nnc_nTf4xnn_n(v50, v46, v47, v48, v49, 10);
      if (v52)
      {
        goto LABEL_20;
      }

      if (v44 != v51)
      {
        goto LABEL_50;
      }
    }

LABEL_21:
    ++v34;
    v33 += 32;
    if (v32 == v34)
    {
      goto LABEL_50;
    }
  }

  __break(1u);
LABEL_53:
  __break(1u);
}

uint64_t specialized static CloudDevice.newlyOnboardedDevices(in:)(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v50 - v7;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v53 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v50 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v50 - v16;
  static Date.now.getter();
  v18 = COERCE_DOUBLE(specialized static DefaultsManager.MomentsUIDomain.doubleValueFor(_:)());
  if (v19)
  {
    v20 = 2419200.0;
  }

  else
  {
    v20 = v18;
  }

  v56 = v17;
  v57 = a1;
  v59 = v17;
  v60 = v20;
  specialized Sequence.compactMap<A>(_:)(partial apply for closure #1 in static CloudDevice.newlyOnboardedDevices(in:), v58, a1);
  v55 = 0;
  specialized Sequence<>.max()(v21, v8);

  v22 = *(v10 + 48);
  if (v22(v8, 1, v9) == 1)
  {
    static Date.distantPast.getter();
    if (v22(v8, 1, v9) != 1)
    {
      outlined destroy of UTType?(v8, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    }
  }

  else
  {
    (*(v10 + 32))(v15, v8, v9);
  }

  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v23 = __swift_project_value_buffer(v2, static CloudDevice.Log);
  swift_beginAccess();
  (*(v3 + 16))(v5, v23, v2);
  v24 = *(v10 + 16);
  v25 = v53;
  v54 = v15;
  v24(v53, v15, v9);
  v26 = v5;
  v27 = v9;
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.debug.getter();
  v30 = v3;
  if (os_log_type_enabled(v28, v29))
  {
    v31 = swift_slowAlloc();
    v52 = v2;
    v32 = v25;
    v33 = v31;
    v51 = swift_slowAlloc();
    v61 = v51;
    *v33 = 136446466;
    *(v33 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001ALL, 0x80000002165865F0, &v61);
    *(v33 + 12) = 2080;
    lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
    v50 = v26;
    v34 = dispatch thunk of CustomStringConvertible.description.getter();
    v35 = v27;
    v37 = v36;
    v38 = *(v10 + 8);
    v39 = v32;
    v40 = v35;
    v38(v39, v35);
    v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v37, &v61);

    *(v33 + 14) = v41;
    _os_log_impl(&dword_21607C000, v28, v29, "CloudDevice.%{public}s lastInformedOfNewlyOnboardedDevices: %s", v33, 0x16u);
    v42 = v51;
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v42, -1, -1);
    MEMORY[0x21CE94770](v33, -1, -1);

    v43 = (*(v30 + 8))(v50, v52);
    v27 = v40;
  }

  else
  {

    v38 = *(v10 + 8);
    v38(v25, v27);
    v43 = (*(v30 + 8))(v26, v2);
  }

  MEMORY[0x28223BE20](v43);
  v45 = v56;
  v44 = v57;
  *(&v50 - 4) = v56;
  *(&v50 - 3) = v20;
  v46 = v54;
  *(&v50 - 2) = v54;
  specialized Sequence.compactMap<A>(_:)(partial apply for closure #2 in static CloudDevice.newlyOnboardedDevices(in:), (&v50 - 6), v44);
  v48 = v47;
  v38(v46, v27);
  v38(v45, v27);
  return v48;
}

uint64_t specialized static CloudDevice.diff(_:_:)(void *a1, unint64_t *a2)
{
  v291 = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v253 = &v239 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v252 = &v239 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v251 = &v239 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v250 = &v239 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v249 = &v239 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v256 = &v239 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v248 = &v239 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v247 = &v239 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v246 = &v239 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v255 = &v239 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v239 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = &v239 - v28;
  v30 = type metadata accessor for Date();
  v269 = *(v30 - 8);
  v270 = v30;
  v31 = MEMORY[0x28223BE20](v30);
  v254 = &v239 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v31);
  v265 = &v239 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v264 = &v239 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v263 = &v239 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v262 = &v239 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v261 = &v239 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v260 = &v239 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v259 = &v239 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v258 = &v239 - v48;
  v49 = MEMORY[0x28223BE20](v47);
  v257 = &v239 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v267 = &v239 - v52;
  MEMORY[0x28223BE20](v51);
  v266 = &v239 - v53;
  v278 = 0;
  v279 = 0xE000000000000000;
  v54 = *a2;
  v55 = a2[1];
  v273 = a2;
  v276 = a1;
  v56 = [a1 recordID];
  v57 = [v56 recordName];

  v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v60 = v59;

  if (__PAIR128__(v55, v54) != __PAIR128__(v60, v58) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    v280[0] = 0;
    v280[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(25);

    strcpy(v280, "local id: ");
    BYTE3(v280[1]) = 0;
    HIDWORD(v280[1]) = -369098752;
    MEMORY[0x21CE92100](v54, v55);
    MEMORY[0x21CE92100](0x69206B63203E3D20, 0xEB00000000203A64);
    MEMORY[0x21CE92100](v58, v60);

    MEMORY[0x21CE92100](v280[0], v280[1]);
  }

  if (v273[3])
  {
    v61 = v273[2];
    v62 = v273[3];
  }

  else
  {
    swift_beginAccess();
    v61 = static CloudDevice.nilStr;
    v62 = qword_27CA92B00;
  }

  v63 = 0x4449656369766564;

  v64 = [v276 encryptedValues];
  v65 = MEMORY[0x21CE91FC0](0x4449656369766564, 0xE800000000000000);
  v66 = [v64 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v66 && (v290 = v66, __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd, &_sSo13CKRecordValue_pMR), (swift_dynamicCast() & 1) != 0))
  {
    v67 = v280[0];
    v68 = v280[1];
  }

  else
  {
    swift_beginAccess();
    v67 = static CloudDevice.nilStr;
    v68 = qword_27CA92B00;
  }

  if (one-time initialization token for productionSchema != -1)
  {
LABEL_225:
    swift_once();
  }

  swift_beginAccess();
  v69 = specialized Dictionary.subscript.getter(v63, 0xE800000000000000, static CloudDevice.productionSchema);
  swift_endAccess();
  if (!v69 || v61 == v67 && v62 == v68 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
  }

  else
  {
    v280[0] = 0;
    v280[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(38);

    v280[0] = 0xD000000000000011;
    v280[1] = 0x80000002165865B0;
    MEMORY[0x21CE92100](v61, v62);

    MEMORY[0x21CE92100](0xD000000000000011, 0x80000002165865D0);
    MEMORY[0x21CE92100](v67, v68);

    MEMORY[0x21CE92100](v280[0], v280[1]);
  }

  if (v273[5])
  {
    v70 = v273[4];
    v71 = v273[5];
  }

  else
  {
    swift_beginAccess();
    v70 = static CloudDevice.nilStr;
    v71 = qword_27CA92B00;
  }

  v72 = [v276 encryptedValues];
  v73 = MEMORY[0x21CE91FC0](0x4449656C646E7562, 0xE800000000000000);
  v74 = [v72 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v74 && (v289 = v74, __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd, &_sSo13CKRecordValue_pMR), (swift_dynamicCast() & 1) != 0))
  {
    v76 = v280[0];
    v75 = v280[1];
  }

  else
  {
    swift_beginAccess();
    v76 = static CloudDevice.nilStr;
    v75 = qword_27CA92B00;
  }

  swift_beginAccess();
  v77 = specialized Dictionary.subscript.getter(0x4449656C646E7562, 0xE800000000000000, static CloudDevice.productionSchema);
  swift_endAccess();
  if (!v77 || v70 == v76 && v71 == v75 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
  }

  else
  {
    v280[0] = 0;
    v280[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(38);

    v280[0] = 0xD000000000000011;
    v280[1] = 0x8000000216586570;
    MEMORY[0x21CE92100](v70, v71);

    MEMORY[0x21CE92100](0xD000000000000011, 0x8000000216586590);
    MEMORY[0x21CE92100](v76, v75);

    MEMORY[0x21CE92100](v280[0], v280[1]);
  }

  v275 = type metadata accessor for CloudDevice(0);
  v78 = v273;
  outlined init with copy of DateInterval?(v273 + v275[7], v29, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v80 = v269;
  v79 = v270;
  v81 = v269 + 48;
  v82 = *(v269 + 48);
  v83 = v82(v29, 1, v270);
  v272 = v81;
  v274 = v82;
  if (v83 == 1)
  {
    static Date.distantPast.getter();
    if (v82(v29, 1, v79) != 1)
    {
      outlined destroy of UTType?(v29, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    }
  }

  else
  {
    (*(v80 + 32))(v266, v29, v79);
  }

  v84 = [v276 encryptedValues];
  v85 = MEMORY[0x21CE91FC0](0xD000000000000014, 0x8000000216585CF0);
  v86 = [v84 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v86)
  {
    v280[0] = v86;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd, &_sSo13CKRecordValue_pMR);
    v87 = swift_dynamicCast();
    v271 = *(v80 + 56);
    v271(v27, v87 ^ 1u, 1, v79);
    if (v274(v27, 1, v79) != 1)
    {
      (*(v80 + 32))(v267, v27, v79);
      goto LABEL_41;
    }
  }

  else
  {
    v271 = *(v80 + 56);
    v271(v27, 1, 1, v79);
  }

  static Date.distantPast.getter();
  if (v274(v27, 1, v79) != 1)
  {
    outlined destroy of UTType?(v27, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

LABEL_41:
  swift_beginAccess();
  v88 = specialized Dictionary.subscript.getter(0xD000000000000014, 0x8000000216585CF0, static CloudDevice.productionSchema);
  swift_endAccess();
  if (v88)
  {
    lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
    if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
    {
      v280[0] = 0;
      v280[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(62);
      MEMORY[0x21CE92100](0xD00000000000001DLL, 0x8000000216586530);
      lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v89 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x21CE92100](v89);

      MEMORY[0x21CE92100](0xD00000000000001DLL, 0x8000000216586550);
      v90 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x21CE92100](v90);

      MEMORY[0x21CE92100](v280[0], v280[1]);
    }
  }

  v91 = (v78 + v275[8]);
  if (v91[1])
  {
    v92 = *v91;
    v93 = v91[1];
  }

  else
  {
    swift_beginAccess();
    v92 = static CloudDevice.nilStr;
    v93 = qword_27CA92B00;
  }

  v94 = [v276 encryptedValues];
  v95 = MEMORY[0x21CE91FC0](1701667182, 0xE400000000000000);
  v96 = [v94 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v96 && (v288 = v96, __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd, &_sSo13CKRecordValue_pMR), (swift_dynamicCast() & 1) != 0))
  {
    v98 = v280[0];
    v97 = v280[1];
  }

  else
  {
    swift_beginAccess();
    v98 = static CloudDevice.nilStr;
    v97 = qword_27CA92B00;
  }

  swift_beginAccess();
  v99 = specialized Dictionary.subscript.getter(1701667182, 0xE400000000000000, static CloudDevice.productionSchema);
  swift_endAccess();
  if (!v99 || v92 == v98 && v93 == v97 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
  }

  else
  {
    v280[0] = 0;
    v280[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(30);

    strcpy(v280, "\nlocal name: ");
    HIWORD(v280[1]) = -4864;
    MEMORY[0x21CE92100](v92, v93);

    MEMORY[0x21CE92100](0x6E206B63203E3D20, 0xED0000203A656D61);
    MEMORY[0x21CE92100](v98, v97);

    MEMORY[0x21CE92100](v280[0], v280[1]);
  }

  v100 = (v78 + v275[9]);
  if (v100[1])
  {
    v101 = *v100;
    v102 = v100[1];
  }

  else
  {
    swift_beginAccess();
    v101 = static CloudDevice.nilStr;
    v102 = qword_27CA92B00;
  }

  v103 = [v276 encryptedValues];
  v104 = MEMORY[0x21CE91FC0](0x65566D6574737973, 0xED00006E6F697372);
  v105 = [v103 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v105 && (v287 = v105, __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd, &_sSo13CKRecordValue_pMR), (swift_dynamicCast() & 1) != 0))
  {
    v107 = v280[0];
    v106 = v280[1];
  }

  else
  {
    swift_beginAccess();
    v107 = static CloudDevice.nilStr;
    v106 = qword_27CA92B00;
  }

  swift_beginAccess();
  v108 = specialized Dictionary.subscript.getter(0x65566D6574737973, 0xED00006E6F697372, static CloudDevice.productionSchema);
  swift_endAccess();
  if (!v108 || v101 == v107 && v102 == v106 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
  }

  else
  {
    v280[0] = 0;
    v280[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(48);

    v280[0] = 0xD000000000000016;
    v280[1] = 0x80000002165864F0;
    MEMORY[0x21CE92100](v101, v102);

    MEMORY[0x21CE92100](0xD000000000000016, 0x8000000216586510);
    MEMORY[0x21CE92100](v107, v106);

    MEMORY[0x21CE92100](v280[0], v280[1]);
  }

  v109 = v273;
  v110 = v273 + v275[10];
  if (v110[8])
  {
    v111 = -1;
  }

  else
  {
    v111 = *v110;
  }

  v112 = [v276 encryptedValues];
  v113 = MEMORY[0x21CE91FC0](0x64496D6574737973, 0xEE00746E496D6F69);
  v114 = [v112 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v114 && (v280[0] = v114, __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd, &_sSo13CKRecordValue_pMR), swift_dynamicCast()))
  {
    v115 = v286;
  }

  else
  {
    v115 = -1;
  }

  swift_beginAccess();
  v116 = specialized Dictionary.subscript.getter(0x64496D6574737973, 0xEE00746E496D6F69, static CloudDevice.productionSchema);
  swift_endAccess();
  if (v116 && v111 != v115)
  {
    v280[0] = 0;
    v280[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(50);

    v280[0] = 0xD000000000000017;
    v280[1] = 0x80000002165864B0;
    v286 = v111;
    v117 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x21CE92100](v117);

    MEMORY[0x21CE92100](0xD000000000000017, 0x80000002165864D0);
    v286 = v115;
    v118 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x21CE92100](v118);

    MEMORY[0x21CE92100](v280[0], v280[1]);
  }

  v119 = (v109 + v275[11]);
  if (v119[1])
  {
    v120 = *v119;
    v121 = v119[1];
  }

  else
  {
    swift_beginAccess();
    v120 = static CloudDevice.nilStr;
    v121 = qword_27CA92B00;
  }

  v68 = 0x614C6D6574737973;

  v122 = [v276 encryptedValues];
  v62 = MEMORY[0x21CE91FC0](0x614C6D6574737973, 0xEE0065676175676ELL);
  v123 = [v122 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v123 && (v285 = v123, __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd, &_sSo13CKRecordValue_pMR), (swift_dynamicCast() & 1) != 0))
  {
    v125 = v280[0];
    v124 = v280[1];
  }

  else
  {
    swift_beginAccess();
    v125 = static CloudDevice.nilStr;
    v124 = qword_27CA92B00;
  }

  swift_beginAccess();
  v126 = specialized Dictionary.subscript.getter(0x614C6D6574737973, 0xEE0065676175676ELL, static CloudDevice.productionSchema);
  swift_endAccess();
  if (!v126 || v120 == v125 && v121 == v124 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
  }

  else
  {
    v280[0] = 0;
    v280[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(50);

    v280[0] = 0xD000000000000017;
    v280[1] = 0x8000000216586470;
    MEMORY[0x21CE92100](v120, v121);

    MEMORY[0x21CE92100](0xD000000000000017, 0x8000000216586490);
    MEMORY[0x21CE92100](v125, v124);

    MEMORY[0x21CE92100](v280[0], v280[1]);
  }

  if (*(v273 + v275[13]))
  {
    v127 = *(v273 + v275[13]);
  }

  else
  {
    v127 = MEMORY[0x277D84F90];
  }

  v128 = [v276 encryptedValues];
  v268 = 0xD000000000000012;
  v129 = MEMORY[0x21CE91FC0]();
  v130 = [v128 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v130 && (v283 = v130, __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd, &_sSo13CKRecordValue_pMR), swift_dynamicCast()))
  {
    v132 = v280[0];
    v131 = v280[1];
  }

  else
  {
    v132 = 0;
    v131 = 0xC000000000000000;
  }

  v133 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v280[0] = 0;
  v135 = [v133 JSONObjectWithData:isa options:0 error:v280];

  v244 = v132;
  v245 = v131;
  v242 = "userModificationDate";
  v243 = v127;
  if (!v135)
  {
    v137 = v280[0];
    v138 = _convertNSErrorToError(_:)();

    swift_willThrow();
    goto LABEL_101;
  }

  v136 = v280[0];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_101:
    v240 = 0;
    v63 = MEMORY[0x277D84F90];
    goto LABEL_102;
  }

  v240 = 0;
  v63 = v283;
LABEL_102:
  v29 = 0;
  v61 = *(v63 + 16);
  v139 = v63 + 40;
  v27 = MEMORY[0x277D84F90];
  v67 = &outlined read-only object #0 of CloudDevice.Capability.init(rawValue:);
  v241 = v63 + 40;
LABEL_103:
  v140 = (v139 + 16 * v29);
  while (v61 != v29)
  {
    if (v29 >= *(v63 + 16))
    {
      __break(1u);
      goto LABEL_225;
    }

    ++v29;
    v141 = v140 + 2;
    v62 = *(v140 - 1);
    v142 = *v140;

    v143._countAndFlagsBits = v62;
    v143._object = v142;
    v68 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of CloudDevice.Capability.init(rawValue:), v143);

    v140 = v141;
    if (v68 < 8)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v27 + 2) + 1, 1, v27);
      }

      v145 = *(v27 + 2);
      v144 = *(v27 + 3);
      v62 = (v145 + 1);
      if (v145 >= v144 >> 1)
      {
        v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v144 > 1), v145 + 1, 1, v27);
      }

      *(v27 + 2) = v62;
      v27[v145 + 32] = v68;
      v139 = v241;
      goto LABEL_103;
    }
  }

  swift_beginAccess();
  v146 = specialized Dictionary.subscript.getter(v268, v242 | 0x8000000000000000, static CloudDevice.productionSchema);
  swift_endAccess();
  if (v146)
  {
    v147 = v243;
    _sSasSQRzlE2eeoiySbSayxG_ABtFZ9MomentsUI11CloudDeviceV10CapabilityO_Tt1g5(v243, v27);
    v149 = v269;
    v148 = v270;
    v150 = v273;
    if (v151)
    {
    }

    else
    {
      v280[0] = 0;
      v280[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(58);
      MEMORY[0x21CE92100](0xD00000000000001BLL, 0x8000000216586430);
      v154 = MEMORY[0x21CE922B0](v147, &type metadata for CloudDevice.Capability);
      v155 = v149;
      v156 = v150;
      v158 = v157;

      MEMORY[0x21CE92100](v154, v158);
      v150 = v156;
      v149 = v155;

      MEMORY[0x21CE92100](0xD00000000000001BLL, 0x8000000216586450);
      v159 = MEMORY[0x21CE922B0](v27, &type metadata for CloudDevice.Capability);
      v161 = v160;

      MEMORY[0x21CE92100](v159, v161);

      MEMORY[0x21CE92100](v280[0], v280[1]);
    }

    v152 = v274;
    v153 = v255;
  }

  else
  {

    v149 = v269;
    v148 = v270;
    v150 = v273;
    v152 = v274;
    v153 = v255;
  }

  outlined init with copy of DateInterval?(v150 + v275[14], v153, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  if (v152(v153, 1, v148) == 1)
  {
    static Date.distantPast.getter();
    if (v152(v153, 1, v148) != 1)
    {
      outlined destroy of UTType?(v153, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    }
  }

  else
  {
    (*(v149 + 32))(v257, v153, v148);
  }

  v162 = [v276 encryptedValues];
  v163 = MEMORY[0x21CE91FC0](0xD000000000000011, 0x8000000216585D30);
  v164 = [v162 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v164)
  {
    v280[0] = v164;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd, &_sSo13CKRecordValue_pMR);
    v165 = v246;
    v166 = swift_dynamicCast();
    v271(v165, v166 ^ 1u, 1, v148);
    v167 = v274;
    if (v274(v165, 1, v148) != 1)
    {
      (*(v149 + 32))(v258, v165, v148);
      goto LABEL_128;
    }
  }

  else
  {
    v165 = v246;
    v271(v246, 1, 1, v148);
    v167 = v274;
  }

  static Date.distantPast.getter();
  if (v167(v165, 1, v148) != 1)
  {
    outlined destroy of UTType?(v165, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

LABEL_128:
  swift_beginAccess();
  v168 = specialized Dictionary.subscript.getter(0xD000000000000011, 0x8000000216585D30, static CloudDevice.productionSchema);
  swift_endAccess();
  if (v168)
  {
    lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
    if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
    {
      v280[0] = 0;
      v280[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(56);
      MEMORY[0x21CE92100](0xD00000000000001ALL, 0x80000002165863F0);
      lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v169 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x21CE92100](v169);
      v167 = v274;

      MEMORY[0x21CE92100](0xD00000000000001ALL, 0x8000000216586410);
      v170 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x21CE92100](v170);

      MEMORY[0x21CE92100](v280[0], v280[1]);
    }
  }

  v171 = v247;
  outlined init with copy of DateInterval?(v150 + v275[16], v247, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  if (v167(v171, 1, v148) == 1)
  {
    static Date.distantPast.getter();
    if (v167(v171, 1, v148) != 1)
    {
      outlined destroy of UTType?(v171, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    }
  }

  else
  {
    (*(v149 + 32))(v259, v171, v148);
  }

  v172 = [v276 encryptedValues];
  v173 = MEMORY[0x21CE91FC0](0xD000000000000013, 0x8000000216585D50);
  v174 = [v172 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v174)
  {
    v280[0] = v174;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd, &_sSo13CKRecordValue_pMR);
    v175 = v248;
    v176 = swift_dynamicCast();
    v271(v175, v176 ^ 1u, 1, v148);
    v177 = v274;
    if (v274(v175, 1, v148) != 1)
    {
      (*(v149 + 32))(v260, v175, v148);
      goto LABEL_141;
    }
  }

  else
  {
    v175 = v248;
    v271(v248, 1, 1, v148);
    v177 = v274;
  }

  static Date.distantPast.getter();
  if (v177(v175, 1, v148) != 1)
  {
    outlined destroy of UTType?(v175, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

LABEL_141:
  swift_beginAccess();
  v178 = specialized Dictionary.subscript.getter(0xD000000000000013, 0x8000000216585D50, static CloudDevice.productionSchema);
  swift_endAccess();
  if (v178)
  {
    lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
    if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
    {
      v280[0] = 0;
      v280[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(60);
      MEMORY[0x21CE92100](0xD00000000000001CLL, 0x80000002165863B0);
      lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v179 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x21CE92100](v179);

      MEMORY[0x21CE92100](0xD00000000000001CLL, 0x80000002165863D0);
      v180 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x21CE92100](v180);

      MEMORY[0x21CE92100](v280[0], v280[1]);
    }
  }

  v181 = (v150 + v275[17]);
  if (v181[1])
  {
    v182 = *v181;
    v183 = v181[1];
  }

  else
  {
    swift_beginAccess();
    v182 = static CloudDevice.nilStr;
    v183 = qword_27CA92B00;
  }

  v184 = [v276 encryptedValues];
  v185 = MEMORY[0x21CE91FC0](v268, 0x8000000216585D70);
  v186 = [v184 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v186 && (v281 = v186, __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd, &_sSo13CKRecordValue_pMR), (swift_dynamicCast() & 1) != 0))
  {
    v188 = v283;
    v187 = v284;
  }

  else
  {
    swift_beginAccess();
    v188 = static CloudDevice.nilStr;
    v187 = qword_27CA92B00;
  }

  swift_beginAccess();
  v189 = specialized Dictionary.subscript.getter(v268, 0x8000000216585D70, static CloudDevice.productionSchema);
  swift_endAccess();
  if (!v189 || v182 == v188 && v183 == v187 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
  }

  else
  {
    v281 = 0;
    v282 = 0xE000000000000000;
    _StringGuts.grow(_:)(58);
    MEMORY[0x21CE92100](0xD00000000000001BLL, 0x8000000216586370);
    MEMORY[0x21CE92100](v182, v183);

    MEMORY[0x21CE92100](0xD00000000000001BLL, 0x8000000216586390);
    MEMORY[0x21CE92100](v188, v187);

    MEMORY[0x21CE92100](v281, v282);
  }

  v190 = v256;

  outlined init with copy of DateInterval?(v273 + v275[18], v190, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v191 = v270;
  v192 = v274;
  v193 = v274(v190, 1, v270);
  v194 = v269;
  v195 = v254;
  if (v193 == 1)
  {
    static Date.distantPast.getter();
    if (v192(v190, 1, v191) != 1)
    {
      outlined destroy of UTType?(v190, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    }
  }

  else
  {
    (*(v269 + 32))(v261, v190, v191);
  }

  v196 = [v276 encryptedValues];
  v197 = MEMORY[0x21CE91FC0](0x6974616E696D6F6ELL, 0xEE00657461446E6FLL);
  v198 = [v196 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v198)
  {
    v281 = v198;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd, &_sSo13CKRecordValue_pMR);
    v199 = v249;
    v200 = swift_dynamicCast();
    v271(v199, v200 ^ 1u, 1, v191);
    v201 = v274(v199, 1, v191);
    v202 = v250;
    if (v201 != 1)
    {
      (*(v194 + 32))(v262, v199, v191);
      goto LABEL_166;
    }
  }

  else
  {
    v199 = v249;
    v271(v249, 1, 1, v191);
    v202 = v250;
  }

  static Date.distantPast.getter();
  if (v274(v199, 1, v191) != 1)
  {
    outlined destroy of UTType?(v199, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

LABEL_166:
  swift_beginAccess();
  v203 = specialized Dictionary.subscript.getter(0x6974616E696D6F6ELL, 0xEE00657461446E6FLL, static CloudDevice.productionSchema);
  swift_endAccess();
  if (v203)
  {
    lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
    if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
    {
      v281 = 0;
      v282 = 0xE000000000000000;
      _StringGuts.grow(_:)(50);

      v281 = 0xD000000000000017;
      v282 = 0x8000000216586330;
      lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v204 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x21CE92100](v204);

      MEMORY[0x21CE92100](0xD000000000000017, 0x8000000216586350);
      v205 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x21CE92100](v205);

      MEMORY[0x21CE92100](v281, v282);
    }
  }

  outlined init with copy of DateInterval?(v273 + v275[20], v202, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v206 = v274;
  if (v274(v202, 1, v191) == 1)
  {
    static Date.distantPast.getter();
    if (v206(v202, 1, v191) != 1)
    {
      outlined destroy of UTType?(v202, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    }
  }

  else
  {
    (*(v194 + 32))(v263, v202, v191);
  }

  v207 = [v276 encryptedValues];
  v208 = MEMORY[0x21CE91FC0](0x696472616F626E6FLL, 0xEE0065746144676ELL);
  v209 = [v207 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v209)
  {
    v281 = v209;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd, &_sSo13CKRecordValue_pMR);
    v210 = v251;
    v211 = swift_dynamicCast();
    v271(v210, v211 ^ 1u, 1, v191);
    v212 = v274(v210, 1, v191);
    v213 = v252;
    if (v212 != 1)
    {
      (*(v194 + 32))(v264, v210, v191);
      goto LABEL_179;
    }
  }

  else
  {
    v210 = v251;
    v271(v251, 1, 1, v191);
    v213 = v252;
  }

  static Date.distantPast.getter();
  if (v274(v210, 1, v191) != 1)
  {
    outlined destroy of UTType?(v210, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

LABEL_179:
  swift_beginAccess();
  v214 = specialized Dictionary.subscript.getter(0x696472616F626E6FLL, 0xEE0065746144676ELL, static CloudDevice.productionSchema);
  swift_endAccess();
  if (v214)
  {
    lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
    if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
    {
      v281 = 0;
      v282 = 0xE000000000000000;
      _StringGuts.grow(_:)(50);

      v281 = 0xD000000000000017;
      v282 = 0x80000002165862F0;
      lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v215 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x21CE92100](v215);

      MEMORY[0x21CE92100](0xD000000000000017, 0x8000000216586310);
      v216 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x21CE92100](v216);

      MEMORY[0x21CE92100](v281, v282);
    }
  }

  outlined init with copy of DateInterval?(v273 + v275[21], v213, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v217 = v274;
  if (v274(v213, 1, v191) == 1)
  {
    static Date.distantPast.getter();
    if (v217(v213, 1, v191) != 1)
    {
      outlined destroy of UTType?(v213, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    }
  }

  else
  {
    (*(v194 + 32))(v265, v213, v191);
  }

  v218 = [v276 encryptedValues];
  v219 = MEMORY[0x21CE91FC0](0xD000000000000023, 0x8000000216585DB0);
  v220 = [v218 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v220)
  {
    v281 = v220;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd, &_sSo13CKRecordValue_pMR);
    v221 = v253;
    v222 = swift_dynamicCast();
    v271(v221, v222 ^ 1u, 1, v191);
    v223 = v274;
    if (v274(v221, 1, v191) != 1)
    {
      (*(v194 + 32))(v195, v221, v191);
      goto LABEL_192;
    }
  }

  else
  {
    v221 = v253;
    v271(v253, 1, 1, v191);
    v223 = v274;
  }

  static Date.distantPast.getter();
  if (v223(v221, 1, v191) != 1)
  {
    outlined destroy of UTType?(v221, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

LABEL_192:
  swift_beginAccess();
  v224 = specialized Dictionary.subscript.getter(0xD000000000000023, 0x8000000216585DB0, static CloudDevice.productionSchema);
  swift_endAccess();
  if (v224)
  {
    lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
    if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
    {
      v281 = 0;
      v282 = 0xE000000000000000;
      _StringGuts.grow(_:)(92);
      MEMORY[0x21CE92100](0xD00000000000002CLL, 0x8000000216586290);
      lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v225 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x21CE92100](v225);

      MEMORY[0x21CE92100](0xD00000000000002CLL, 0x80000002165862C0);
      v226 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x21CE92100](v226);

      MEMORY[0x21CE92100](v281, v282);
    }
  }

  v227 = (v273 + v275[27]);
  v229 = *v227;
  v228 = v227[1];

  v230 = [v276 encryptedValues];
  v231 = MEMORY[0x21CE91FC0](0x69746172656E6567, 0xEA00000000006E6FLL);
  v232 = [v230 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v232)
  {
    v277[0] = v232;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd, &_sSo13CKRecordValue_pMR);
    if (swift_dynamicCast())
    {
      v233 = v281;
      v232 = v282;
    }

    else
    {
      v233 = 0;
      v232 = 0;
    }
  }

  else
  {
    v233 = 0;
  }

  swift_beginAccess();
  v234 = specialized Dictionary.subscript.getter(0x69746172656E6567, 0xEA00000000006E6FLL, static CloudDevice.productionSchema);
  swift_endAccess();
  if (!v234)
  {
    goto LABEL_206;
  }

  if (!v228)
  {
    if (!v232)
    {
      outlined consume of Data._Representation(v244, v245);
      goto LABEL_217;
    }

    v228 = 0xE300000000000000;
    v229 = 7104878;
    goto LABEL_209;
  }

  if (!v232 || (v229 != v233 || v228 != v232) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
LABEL_209:
    v281 = 0;
    v282 = 0xE000000000000000;
    _StringGuts.grow(_:)(58);
    MEMORY[0x21CE92100](0xD00000000000001BLL, 0x8000000216586250);
    MEMORY[0x21CE92100](v229, v228);

    MEMORY[0x21CE92100](0xD00000000000001BLL, 0x8000000216586270);
    if (v232)
    {
      v235 = v233;
    }

    else
    {
      v235 = 7104878;
    }

    if (v232)
    {
      v236 = v232;
    }

    else
    {
      v236 = 0xE300000000000000;
    }

    MEMORY[0x21CE92100](v235, v236);

    MEMORY[0x21CE92100](v281, v282);
    outlined consume of Data._Representation(v244, v245);
    goto LABEL_216;
  }

LABEL_206:
  outlined consume of Data._Representation(v244, v245);

LABEL_216:

LABEL_217:
  v237 = *(v194 + 8);
  v237(v195, v191);
  v237(v265, v191);
  v237(v264, v191);
  v237(v263, v191);
  v237(v262, v191);
  v237(v261, v191);
  v237(v260, v191);
  v237(v259, v191);
  v237(v258, v191);
  v237(v257, v191);
  v237(v267, v191);
  v237(v266, v191);
  return v278;
}

uint64_t specialized CloudDevice.mergeFromServerRecord(_:force:primary:primaryID:blobFolderURL:cloudManager:)(void *a1, uint64_t a2, void (*a3)(char *, uint64_t, uint64_t, uint64_t), unint64_t a4)
{
  v272 = a3;
  v279 = *MEMORY[0x277D85DE8];
  v271 = type metadata accessor for Date();
  v273 = *(v271 - 8);
  v6 = MEMORY[0x28223BE20](v271);
  v255 = &v249 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v262 = &v249 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v261 = &v249 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v260 = &v249 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v259 = &v249 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v258 = &v249 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v257 = &v249 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v256 = &v249 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v254 = &v249 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v253 = &v249 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v252 = &v249 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v251 = &v249 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v250 = &v249 - v31;
  MEMORY[0x28223BE20](v30);
  v33 = &v249 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v34 - 8);
  v266 = &v249 - v35;
  v36 = type metadata accessor for CKSyncEngine.PendingRecordZoneChange();
  v267 = *(v36 - 8);
  v268 = v36;
  v37 = MEMORY[0x28223BE20](v36);
  v264 = &v249 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v263 = v38;
  MEMORY[0x28223BE20](v37);
  v265 = (&v249 - v39);
  v40 = type metadata accessor for Logger();
  v270 = *(v40 - 1);
  v41 = MEMORY[0x28223BE20](v40);
  v269 = &v249 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v44 = &v249 - v43;
  swift_beginAccess();
  v46 = static CloudManager.currentID;
  v45 = qword_2811A6918;

  v275 = a1;
  v47 = [a1 recordID];
  v48 = [v47 recordName];

  v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v51 = v50;

  if (v46 != v49 || v45 != v51)
  {
    v52 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v52)
    {
      goto LABEL_5;
    }

    v40 = v275;
    v68 = [v275 encryptedValues];
    v69 = MEMORY[0x21CE91FC0](0xD000000000000014, 0x8000000216585CF0);
    v70 = [v68 objectForKeyedSubscript_];
    swift_unknownObjectRelease();

    if (v70)
    {
      v276 = v70;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd, &_sSo13CKRecordValue_pMR);
      v71 = v271;
      v72 = swift_dynamicCast();
      v73 = *(v273 + 56);
      v74 = v72 ^ 1u;
      v75 = v33;
      v76 = v71;
    }

    else
    {
      v73 = *(v273 + 56);
      v75 = v33;
      v74 = 1;
      v76 = v271;
    }

    v272 = v73;
    v73(v75, v74, 1, v76);
    v105 = v274;
    v51 = type metadata accessor for CloudDevice(0);
    outlined assign with take of Date?(v33, v105 + v51[7]);
    v106 = [v40 encryptedValues];
    v107 = MEMORY[0x21CE91FC0](1701667182, 0xE400000000000000);
    v108 = [v106 objectForKeyedSubscript_];
    swift_unknownObjectRelease();

    if (v108)
    {
      v278 = v108;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd, &_sSo13CKRecordValue_pMR);
      v109 = swift_dynamicCast();
      if (v109)
      {
        v108 = v276;
      }

      else
      {
        v108 = 0;
      }

      if (v109)
      {
        v110 = v277;
      }

      else
      {
        v110 = 0;
      }
    }

    else
    {
      v110 = 0;
    }

    v111 = (v105 + v51[8]);

    *v111 = v108;
    v111[1] = v110;
    v112 = [v40 encryptedValues];
    v113 = MEMORY[0x21CE91FC0](0x65566D6574737973, 0xED00006E6F697372);
    v114 = [v112 objectForKeyedSubscript_];
    swift_unknownObjectRelease();

    if (v114)
    {
      v278 = v114;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd, &_sSo13CKRecordValue_pMR);
      v115 = swift_dynamicCast();
      if (v115)
      {
        v114 = v276;
      }

      else
      {
        v114 = 0;
      }

      if (v115)
      {
        v116 = v277;
      }

      else
      {
        v116 = 0;
      }
    }

    else
    {
      v116 = 0;
    }

    v117 = (v105 + v51[9]);

    *v117 = v114;
    v117[1] = v116;
    v118 = [v40 encryptedValues];
    v119 = MEMORY[0x21CE91FC0](0x64496D6574737973, 0xEE00746E496D6F69);
    v120 = [v118 objectForKeyedSubscript_];
    swift_unknownObjectRelease();

    if (v120)
    {
      v276 = v120;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd, &_sSo13CKRecordValue_pMR);
      v121 = swift_dynamicCast();
      v122 = v278;
      if (!v121)
      {
        v122 = 0;
      }

      v123 = v121 ^ 1;
    }

    else
    {
      v122 = 0;
      v123 = 1;
    }

    v124 = v105 + v51[10];
    *v124 = v122;
    v124[8] = v123;
    v125 = [v40 encryptedValues];
    v126 = MEMORY[0x21CE91FC0](0x614C6D6574737973, 0xEE0065676175676ELL);
    v127 = [v125 objectForKeyedSubscript_];
    swift_unknownObjectRelease();

    if (v127)
    {
      v278 = v127;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd, &_sSo13CKRecordValue_pMR);
      v128 = swift_dynamicCast();
      if (v128)
      {
        v127 = v276;
      }

      else
      {
        v127 = 0;
      }

      if (v128)
      {
        v129 = v277;
      }

      else
      {
        v129 = 0;
      }
    }

    else
    {
      v129 = 0;
    }

    v130 = (v105 + v51[11]);

    *v130 = v127;
    v130[1] = v129;
    v56 = &selRef_setDeliversTouchesForGesturesToSuperview_;
    v131 = [v40 encryptedValues];
    swift_getObjectType();
    CKRecordKeyValueSetting.subscript.getter();
    swift_unknownObjectRelease();
    v132 = v276;
    v133 = v277;
    v134 = (v105 + v51[12]);

    *v134 = v132;
    v134[1] = v133;
    v135 = [v40 encryptedValues];
    v136 = MEMORY[0x21CE91FC0](0xD000000000000012, 0x8000000216585D10);
    v137 = [v135 objectForKeyedSubscript_];
    swift_unknownObjectRelease();

    if (v137 && (v278 = v137, __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd, &_sSo13CKRecordValue_pMR), swift_dynamicCast()))
    {
      v138 = v276;
      v139 = v277;
    }

    else
    {
      v138 = 0;
      v139 = 0xC000000000000000;
    }

    v140 = objc_opt_self();
    isa = Data._bridgeToObjectiveC()().super.isa;
    v276 = 0;
    v142 = [v140 JSONObjectWithData:isa options:0 error:&v276];

    v269 = v139;
    v270 = v138;
    if (v142)
    {
      v143 = v276;
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      if (swift_dynamicCast())
      {
        v268 = 0;
        v144 = v278;
LABEL_58:
        v147 = 0;
        v44 = *(v144 + 16);
        v49 = v144 + 40;
        for (i = MEMORY[0x277D84F90]; ; i[a4 + 32] = v40)
        {
          v149 = (v49 + 16 * v147);
          do
          {
            if (v44 == v147)
            {

              v153 = v51[13];
              v154 = v274;

              *(v154 + v153) = i;
              v53 = v275;
              v155 = [v275 encryptedValues];
              v156 = MEMORY[0x21CE91FC0](0xD000000000000011, 0x8000000216585D30);
              v157 = [v155 objectForKeyedSubscript_];
              swift_unknownObjectRelease();

              v158 = v271;
              if (v157)
              {
                v276 = v157;
                __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd, &_sSo13CKRecordValue_pMR);
                v159 = v250;
                v160 = swift_dynamicCast() ^ 1;
                v161 = v159;
              }

              else
              {
                v159 = v250;
                v161 = v250;
                v160 = 1;
              }

              v272(v161, v160, 1, v158);
              outlined assign with take of Date?(v159, v154 + v51[14]);
              v162 = [v53 encryptedValues];
              v163 = MEMORY[0x21CE91FC0](0xD000000000000013, 0x8000000216585D50);
              v164 = [v162 objectForKeyedSubscript_];
              swift_unknownObjectRelease();

              if (v164)
              {
                v276 = v164;
                __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd, &_sSo13CKRecordValue_pMR);
                v165 = v251;
                v166 = swift_dynamicCast() ^ 1;
                v167 = v165;
              }

              else
              {
                v165 = v251;
                v167 = v251;
                v166 = 1;
              }

              v272(v167, v166, 1, v158);
              outlined assign with take of Date?(v165, v154 + v51[16]);
              v168 = [v53 encryptedValues];
              v169 = MEMORY[0x21CE91FC0](0xD000000000000012, 0x8000000216585D70);
              v170 = [v168 objectForKeyedSubscript_];
              swift_unknownObjectRelease();

              if (v170)
              {
                v278 = v170;
                __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd, &_sSo13CKRecordValue_pMR);
                v171 = swift_dynamicCast();
                if (v171)
                {
                  v172 = v276;
                }

                else
                {
                  v172 = 0;
                }

                if (v171)
                {
                  v173 = v277;
                }

                else
                {
                  v173 = 0;
                }
              }

              else
              {
                v172 = 0;
                v173 = 0;
              }

              v174 = (v154 + v51[17]);

              *v174 = v172;
              v174[1] = v173;
              v175 = [v53 encryptedValues];
              v176 = MEMORY[0x21CE91FC0](0x6974616E696D6F6ELL, 0xEE00657461446E6FLL);
              v177 = [v175 objectForKeyedSubscript_];
              swift_unknownObjectRelease();

              if (v177)
              {
                v276 = v177;
                __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd, &_sSo13CKRecordValue_pMR);
                v178 = v252;
                v179 = v271;
                v180 = swift_dynamicCast() ^ 1;
                v181 = v178;
                v182 = v179;
              }

              else
              {
                v178 = v252;
                v181 = v252;
                v180 = 1;
                v182 = v271;
              }

              v272(v181, v180, 1, v182);
              outlined assign with take of Date?(v178, v154 + v51[18]);
              v183 = [v53 encryptedValues];
              v184 = MEMORY[0x21CE91FC0](0xD000000000000010, 0x8000000216585D90);
              v185 = [v183 objectForKeyedSubscript_];
              swift_unknownObjectRelease();

              if (v185)
              {
                v276 = v185;
                __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd, &_sSo13CKRecordValue_pMR);
                v186 = v253;
                v187 = v271;
                v188 = swift_dynamicCast();
                v189 = v273;
                v190 = v188 ^ 1u;
                v191 = v186;
              }

              else
              {
                v189 = v273;
                v186 = v253;
                v191 = v253;
                v190 = 1;
                v187 = v271;
              }

              v272(v191, v190, 1, v187);
              v192 = v254;
              v193 = v51[19];
              outlined assign with take of Date?(v186, v154 + v193);
              outlined init with copy of DateInterval?(v154 + v193, v192, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
              v194 = *(v189 + 48);
              if (v194(v192, 1, v187) == 1)
              {
                v195 = v262;
                static Date.distantFuture.getter();
                v196 = v194(v192, 1, v187);
                v197 = v255;
                if (v196 != 1)
                {
                  outlined destroy of UTType?(v192, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
                }
              }

              else
              {
                v198 = *(v189 + 32);
                v195 = v262;
                v198(v262, v192, v187);
                v197 = v255;
              }

              v199 = [v53 creationDate];
              if (v199)
              {
                v200 = v199;
                static Date._unconditionallyBridgeFromObjectiveC(_:)();

                if (static Date.< infix(_:_:)())
                {
                  outlined destroy of UTType?(v154 + v193, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
                  (*(v273 + 32))(v154 + v193, v197, v187);
                  v272(v154 + v193, 0, 1, v187);
                }

                else
                {
                  (*(v273 + 8))(v197, v187);
                }
              }

              v201 = [v53 encryptedValues];
              v202 = MEMORY[0x21CE91FC0](0x696472616F626E6FLL, 0xEE0065746144676ELL);
              v203 = [v201 objectForKeyedSubscript_];
              swift_unknownObjectRelease();

              if (v203)
              {
                v276 = v203;
                __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd, &_sSo13CKRecordValue_pMR);
                v204 = v256;
                v205 = swift_dynamicCast() ^ 1;
                v206 = v204;
              }

              else
              {
                v204 = v256;
                v206 = v256;
                v205 = 1;
              }

              v272(v206, v205, 1, v187);
              outlined assign with take of Date?(v204, v154 + v51[20]);
              v207 = [v53 encryptedValues];
              v208 = MEMORY[0x21CE91FC0](0xD000000000000023, 0x8000000216585DB0);
              v209 = [v207 objectForKeyedSubscript_];
              swift_unknownObjectRelease();

              if (v209)
              {
                v276 = v209;
                __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd, &_sSo13CKRecordValue_pMR);
                v210 = v257;
                v211 = swift_dynamicCast() ^ 1;
                v212 = v210;
              }

              else
              {
                v210 = v257;
                v212 = v257;
                v211 = 1;
              }

              v272(v212, v211, 1, v187);
              outlined assign with take of Date?(v210, v154 + v51[21]);
              v213 = [v53 encryptedValues];
              v214 = MEMORY[0x21CE91FC0](0xD000000000000021, 0x80000002165842C0);
              v215 = [v213 objectForKeyedSubscript_];
              swift_unknownObjectRelease();

              if (v215)
              {
                v276 = v215;
                __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd, &_sSo13CKRecordValue_pMR);
                v216 = v258;
                v217 = swift_dynamicCast() ^ 1;
                v218 = v216;
              }

              else
              {
                v216 = v258;
                v218 = v258;
                v217 = 1;
              }

              v272(v218, v217, 1, v187);
              outlined assign with take of Date?(v216, v154 + v51[22]);
              v219 = [v53 encryptedValues];
              v220 = MEMORY[0x21CE91FC0](0xD000000000000020, 0x80000002165842F0);
              v221 = [v219 objectForKeyedSubscript_];
              swift_unknownObjectRelease();

              if (v221)
              {
                v276 = v221;
                __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd, &_sSo13CKRecordValue_pMR);
                v222 = v259;
                v223 = swift_dynamicCast() ^ 1;
                v224 = v222;
              }

              else
              {
                v222 = v259;
                v224 = v259;
                v223 = 1;
              }

              v272(v224, v223, 1, v187);
              outlined assign with take of Date?(v222, v154 + v51[23]);
              v225 = [v53 encryptedValues];
              v226 = MEMORY[0x21CE91FC0](0xD000000000000018, 0x8000000216584320);
              v227 = [v225 objectForKeyedSubscript_];
              swift_unknownObjectRelease();

              if (v227)
              {
                v276 = v227;
                __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd, &_sSo13CKRecordValue_pMR);
                v228 = v260;
                v229 = swift_dynamicCast() ^ 1;
                v230 = v228;
              }

              else
              {
                v228 = v260;
                v230 = v260;
                v229 = 1;
              }

              v272(v230, v229, 1, v187);
              outlined assign with take of Date?(v228, v154 + v51[24]);
              v231 = [v53 encryptedValues];
              v232 = MEMORY[0x21CE91FC0](0xD000000000000010, 0x8000000216584340);
              v233 = [v231 objectForKeyedSubscript_];
              swift_unknownObjectRelease();

              if (v233)
              {
                v276 = v233;
                __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd, &_sSo13CKRecordValue_pMR);
                v234 = v261;
                v235 = swift_dynamicCast() ^ 1;
                v236 = v234;
              }

              else
              {
                v234 = v261;
                v236 = v261;
                v235 = 1;
              }

              v272(v236, v235, 1, v187);
              outlined assign with take of Date?(v234, v154 + v51[25]);
              v237 = [v53 encryptedValues];
              v238 = MEMORY[0x21CE91FC0](0xD00000000000001CLL, 0x8000000216585DE0);
              v239 = [v237 objectForKeyedSubscript_];
              swift_unknownObjectRelease();

              if (v239)
              {
                v278 = v239;
                __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd, &_sSo13CKRecordValue_pMR);
                if (swift_dynamicCast())
                {
                  v239 = v276;
                  v240 = v277;
                  goto LABEL_119;
                }

                v239 = 0;
              }

              v240 = 0xF000000000000000;
LABEL_119:
              v241 = v154 + v51[26];
              outlined consume of Data?(*v241, *(v241 + 1));
              *v241 = v239;
              *(v241 + 1) = v240;
              v242 = [v53 encryptedValues];
              v243 = MEMORY[0x21CE91FC0](0x69746172656E6567, 0xEA00000000006E6FLL);
              v244 = [v242 objectForKeyedSubscript_];
              outlined consume of Data._Representation(v270, v269);
              swift_unknownObjectRelease();

              (*(v273 + 8))(v195, v187);
              if (v244)
              {
                v278 = v244;
                __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd, &_sSo13CKRecordValue_pMR);
                if (swift_dynamicCast())
                {
                  v244 = v276;
                  v245 = v277;
LABEL_124:
                  v246 = (v154 + v51[27]);

                  *v246 = v244;
                  v246[1] = v245;
                  goto LABEL_125;
                }

                v244 = 0;
              }

              v245 = 0;
              goto LABEL_124;
            }

            if (v147 >= *(v144 + 16))
            {
              __break(1u);
LABEL_127:
              swift_once();
LABEL_9:
              v58 = __swift_project_value_buffer(v40, static CloudDevice.Log);
              swift_beginAccess();
              v59 = v270;
              v60 = *(v270 + 2);
              v271 = v58;
              v262 = v60;
              (v60)(v44, v58, v40);

              v61 = Logger.logObject.getter();
              v62 = static os_log_type_t.error.getter();

              if (os_log_type_enabled(v61, v62))
              {
                v63 = swift_slowAlloc();
                v261 = swift_slowAlloc();
                v278 = v261;
                *v63 = 136315650;
                *(v63 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000004CLL, 0x8000000216578810, &v278);
                *(v63 + 12) = 2080;
                v64 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v51, &v278);

                *(v63 + 14) = v64;
                *(v63 + 22) = 2080;
                v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a4, v56, &v278);

                *(v63 + 24) = v65;
                _os_log_impl(&dword_21607C000, v61, v62, "CloudDevice.%s: iCloud tried to clobber our device record:\nrecordName: %s\n%s", v63, 0x20u);
                v66 = v261;
                swift_arrayDestroy();
                MEMORY[0x21CE94770](v66, -1, -1);
                MEMORY[0x21CE94770](v63, -1, -1);

                v67 = v270;
              }

              else
              {

                v67 = v59;
              }

              v77 = *(v67 + 8);
              v77(v44, v40);
              v79 = v273;
              v78 = v274;
              v80 = v269;
              (v262)(v269, v271, v40);
              v81 = Logger.logObject.getter();
              v82 = static os_log_type_t.info.getter();
              v83 = os_log_type_enabled(v81, v82);
              v53 = v275;
              if (v83)
              {
                v84 = swift_slowAlloc();
                *v84 = 0;
                _os_log_impl(&dword_21607C000, v81, v82, "We are the source of truth! Re-uploading our record to iCloud...", v84, 2u);
                MEMORY[0x21CE94770](v84, -1, -1);
              }

              v77(v80, v40);
              if (v272)
              {
                type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for CKRecordID, 0x277CBC5D0);
                v85 = *v78;
                v86 = v78[1];
                type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for CKRecordZoneID, 0x277CBC5F8);
                v87 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v89 = v88;
                v90 = v272;
                swift_unknownObjectRetain();

                v91._countAndFlagsBits = 0x73656369766544;
                v91._object = 0xE700000000000000;
                v92._countAndFlagsBits = v87;
                v92._object = v89;
                v93 = CKRecordZoneID.init(zoneName:ownerName:)(v91, v92).super.isa;
                v94._countAndFlagsBits = v85;
                v94._object = v86;
                v95.super.isa = CKRecordID.init(recordName:zoneID:)(v94, v93).super.isa;
                v96 = v79;
                v97 = v265;
                v265->super.isa = v95.super.isa;
                v99 = v267;
                v98 = v268;
                (*(v267 + 104))(v97, *MEMORY[0x277CBBC68], v268);
                v100 = type metadata accessor for TaskPriority();
                v101 = v266;
                (*(*(v100 - 8) + 56))(v266, 1, 1, v100);
                v102 = v264;
                (*(v99 + 16))(v264, v97, v98);
                v103 = (*(v99 + 80) + 48) & ~*(v99 + 80);
                v104 = swift_allocObject();
                *(v104 + 2) = 0;
                *(v104 + 3) = 0;
                *(v104 + 4) = v90;
                *(v104 + 5) = v96;
                v53 = v275;
                (*(v99 + 32))(&v104[v103], v102, v98);
                swift_unknownObjectRetain();
                _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v101, &async function pointer to partial apply for closure #1 in CloudDevice.mergeFromServerRecord(_:force:primary:primaryID:blobFolderURL:cloudManager:), v104);
                swift_unknownObjectRelease();

                (*(v99 + 8))(v97, v98);
              }

              goto LABEL_125;
            }

            ++v147;
            a4 = (v149 + 2);
            v150 = *(v149 - 1);
            v56 = *v149;

            v151._countAndFlagsBits = v150;
            v151._object = v56;
            v40 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of CloudDevice.Capability.init(rawValue:), v151);

            v149 = a4;
          }

          while (v40 >= 8);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            i = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(i + 2) + 1, 1, i);
          }

          a4 = *(i + 2);
          v152 = *(i + 3);
          v56 = (a4 + 1);
          if (a4 >= v152 >> 1)
          {
            i = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v152 > 1), a4 + 1, 1, i);
          }

          *(i + 2) = v56;
        }
      }
    }

    else
    {
      v145 = v276;
      v146 = _convertNSErrorToError(_:)();

      swift_willThrow();
    }

    v268 = 0;
    v144 = MEMORY[0x277D84F90];
    goto LABEL_58;
  }

LABEL_5:
  v273 = a4;
  v53 = v275;
  v54 = specialized static CloudDevice.diff(_:_:)(v275, v274);
  v56 = v55;
  v57 = (v55 >> 56) & 0xF;
  if ((v55 & 0x2000000000000000) == 0)
  {
    v57 = v54 & 0xFFFFFFFFFFFFLL;
  }

  if (v57)
  {
    a4 = v54;
    if (one-time initialization token for Log != -1)
    {
      goto LABEL_127;
    }

    goto LABEL_9;
  }

LABEL_125:
  v247 = v53;
  return CloudDevice.lastKnownCKRecord.setter(v53);
}

void specialized _merge<A>(low:mid:high:buffer:by:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  v183 = a5;
  v181 = type metadata accessor for CloudDevice(0);
  v182 = *(v181 - 8);
  v10 = MEMORY[0x28223BE20](v181);
  v173 = v172 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v186 = v172 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v175 = v172 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v187 = v172 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v177 = v172 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v193 = v172 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v179 = v172 - v23;
  MEMORY[0x28223BE20](v22);
  v194 = (v172 - v24);
  v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_10Foundation4DateV5valuetMd, "j");
  v25 = MEMORY[0x28223BE20](v209);
  v174 = (v172 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = MEMORY[0x28223BE20](v25);
  v176 = (v172 - v28);
  v29 = MEMORY[0x28223BE20](v27);
  v188 = (v172 - v30);
  v31 = MEMORY[0x28223BE20](v29);
  v33 = v172 - v32;
  v34 = MEMORY[0x28223BE20](v31);
  v192 = (v172 - v35);
  v36 = MEMORY[0x28223BE20](v34);
  v191 = (v172 - v37);
  v38 = MEMORY[0x28223BE20](v36);
  v190 = v172 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v189 = v172 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v178 = (v172 - v43);
  v44 = MEMORY[0x28223BE20](v42);
  v180 = (v172 - v45);
  v46 = MEMORY[0x28223BE20](v44);
  v196 = (v172 - v47);
  v48 = MEMORY[0x28223BE20](v46);
  v195 = (v172 - v49);
  v50 = MEMORY[0x28223BE20](v48);
  v200 = (v172 - v51);
  v52 = MEMORY[0x28223BE20](v50);
  v199 = (v172 - v53);
  v54 = MEMORY[0x28223BE20](v52);
  v198 = v172 - v55;
  MEMORY[0x28223BE20](v54);
  v197 = v172 - v56;
  v58 = *(v57 + 72);
  if (!v58)
  {
    goto LABEL_105;
  }

  v59 = a2 - a1;
  if (a2 - a1 == 0x8000000000000000 && v58 == -1)
  {
LABEL_106:
    __break(1u);
LABEL_107:
    __break(1u);
LABEL_108:

    __break(1u);
LABEL_109:

    __break(1u);
LABEL_110:

    __break(1u);
LABEL_111:

    __break(1u);
    return;
  }

  v60 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v58 == -1)
  {
    goto LABEL_107;
  }

  v172[1] = v5;
  v212 = a1;
  v211 = a4;
  if (v59 / v58 >= v60 / v58)
  {
    v62 = v60 / v58 * v58;
    if (a4 < a2 || a2 + v62 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    if (v62 < 1)
    {
      v118 = a4 + v62;
    }

    else
    {
      v116 = -v58;
      v117 = a4 + v62;
      v118 = a4 + v62;
      v202 = a4;
      v203 = a1;
      v201 = v33;
      v199 = v116;
      do
      {
        v180 = v118;
        v119 = a2 + v116;
        v204 = a2 + v116;
        v193 = a2;
        while (1)
        {
          if (a2 <= a1)
          {
            v212 = a2;
            v210 = v180;
            goto LABEL_100;
          }

          v197 = a3;
          v185 = v118;
          v198 = v117;
          v196 = (v117 + v116);
          v121 = v189;
          outlined init with copy of DateInterval?(v117 + v116, v189, &_sSS3key_10Foundation4DateV5valuetMd, "j");
          v122 = v190;
          outlined init with copy of DateInterval?(v119, v190, &_sSS3key_10Foundation4DateV5valuetMd, "j");
          v123 = v191;
          outlined init with copy of DateInterval?(v121, v191, &_sSS3key_10Foundation4DateV5valuetMd, "j");
          v124 = v33;
          v126 = *v123;
          v208 = v123[1];
          v125 = v208;
          v127 = v209;
          v206 = *(v209 + 48);
          v128 = v192;
          outlined init with copy of DateInterval?(v122, v192, &_sSS3key_10Foundation4DateV5valuetMd, "j");
          v129 = *v128;
          v207 = v128[1];
          v130 = *(v127 + 48);
          v195 = v126;
          *v124 = v126;
          v124[1] = v125;
          v131 = type metadata accessor for Date();
          v200 = *(v131 - 8);
          v132 = v200[2];
          v132(&v201[v130], v123 + v206, v131);
          v133 = v188;
          v194 = v129;
          *v188 = v129;
          v133[1] = v207;
          v132(v133 + *(v127 + 48), v128 + v130, v131);
          v134 = v201;
          lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);

          v205 = v131;
          if (dispatch thunk of static Equatable.== infix(_:_:)())
          {
            v184 = v130;
            v135 = v176;
            outlined init with copy of DateInterval?(v134, v176, &_sSS3key_10Foundation4DateV5valuetMd, "j");
            v136 = v183;
            if (!*(v183 + 16))
            {
              goto LABEL_110;
            }

            v137 = *(v209 + 48);
            v138 = specialized __RawDictionaryStorage.find<A>(_:)(*v135, v135[1]);
            v140 = v139;

            if ((v140 & 1) == 0)
            {
              goto LABEL_103;
            }

            v141 = *(v182 + 72);
            v142 = v175;
            outlined init with copy of CloudDevice(*(v136 + 56) + v141 * v138, v175);
            outlined init with take of CloudDevice(v142, v187);
            v143 = v136;
            v144 = v200[1];
            v144(v135 + v137, v205);
            v145 = v174;
            outlined init with copy of DateInterval?(v188, v174, &_sSS3key_10Foundation4DateV5valuetMd, "j");
            if (!*(v136 + 16))
            {
              goto LABEL_111;
            }

            v146 = *(v209 + 48);
            v147 = specialized __RawDictionaryStorage.find<A>(_:)(*v145, v145[1]);
            v149 = v148;

            if ((v149 & 1) == 0)
            {
              goto LABEL_104;
            }

            v150 = v173;
            outlined init with copy of CloudDevice(*(v143 + 56) + v147 * v141, v173);
            outlined init with take of CloudDevice(v150, v186);
            v144(v145 + v146, v205);
            v151 = *(v181 + 36);
            v152 = (v187 + v151);
            if (*(v187 + v151 + 8))
            {
              v153 = *v152;
              v154 = v152[1];
            }

            else
            {
              v153 = 0;
              v154 = 0xE000000000000000;
            }

            v133 = v188;
            v156 = v199;
            v158 = (v186 + v151);
            if (v158[1])
            {
              v159 = *v158;
              v160 = v158[1];
            }

            else
            {
              v159 = 0;
              v160 = 0xE000000000000000;
            }

            specialized static CloudDevice._compareVersions(_:_:)(v153, v154, v159, v160);
            v155 = v161;
            v162 = v161;

            if (v162 == 2)
            {
              v155 = v195 == v194 && v208 == v207 ? 0 : _stringCompareWithSmolCheck(_:_:expecting:)();
              v157 = v201;
              outlined destroy of CloudDevice(v186);
              outlined destroy of CloudDevice(v187);
            }

            else
            {
              outlined destroy of CloudDevice(v186);
              outlined destroy of CloudDevice(v187);
              v157 = v201;
            }

            v130 = v184;
          }

          else
          {
            v155 = static Date.< infix(_:_:)();
            v156 = v199;
            v157 = v134;
          }

          v163 = v197;
          a3 = v197 + v156;
          outlined destroy of UTType?(v133, &_sSS3key_10Foundation4DateV5valuetMd, "j");
          v164 = v157;
          outlined destroy of UTType?(v157, &_sSS3key_10Foundation4DateV5valuetMd, "j");

          v165 = v200[1];
          v166 = v192 + v130;
          v167 = v205;
          v165(v166, v205);
          v165(v191 + v206, v167);
          outlined destroy of UTType?(v190, &_sSS3key_10Foundation4DateV5valuetMd, "j");
          outlined destroy of UTType?(v189, &_sSS3key_10Foundation4DateV5valuetMd, "j");
          if ((v155 & 1) == 0)
          {
            break;
          }

          v168 = v196;
          v118 = v196;
          v169 = v202;
          v119 = v204;
          if (v163 < v198 || a3 >= v198)
          {
            swift_arrayInitWithTakeFrontToBack();
            v116 = v199;
            v33 = v164;
          }

          else
          {
            v170 = v163 == v198;
            v116 = v199;
            v33 = v164;
            if (!v170)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v117 = v118;
          v120 = v168 > v169;
          a2 = v193;
          a1 = v203;
          if (!v120)
          {
            goto LABEL_98;
          }
        }

        v171 = v202;
        a2 = v204;
        if (v163 < v193 || a3 >= v193)
        {
          swift_arrayInitWithTakeFrontToBack();
          v118 = v185;
          v116 = v199;
          v33 = v164;
        }

        else
        {
          v170 = v163 == v193;
          v118 = v185;
          v116 = v199;
          v33 = v164;
          if (!v170)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v117 = v198;
        a1 = v203;
      }

      while (v198 > v171);
    }

LABEL_98:
    v212 = a2;
    v210 = v118;
  }

  else
  {
    v61 = v59 / v58 * v58;
    if (a4 < a1 || a1 + v61 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v190 = a4 + v61;
    v210 = (a4 + v61);
    if (v61 >= 1 && a2 < a3)
    {
      v185 = a3;
      v184 = v58;
      do
      {
        v203 = a1;
        v204 = a2;
        v64 = v197;
        outlined init with copy of DateInterval?(a2, v197, &_sSS3key_10Foundation4DateV5valuetMd, "j");
        v202 = a4;
        v65 = v198;
        outlined init with copy of DateInterval?(a4, v198, &_sSS3key_10Foundation4DateV5valuetMd, "j");
        v66 = v199;
        outlined init with copy of DateInterval?(v64, v199, &_sSS3key_10Foundation4DateV5valuetMd, "j");
        v67 = *v66;
        v208 = v66[1];
        v68 = v208;
        v69 = v209;
        v206 = *(v209 + 48);
        v70 = v200;
        outlined init with copy of DateInterval?(v65, v200, &_sSS3key_10Foundation4DateV5valuetMd, "j");
        v71 = *v70;
        v207 = v70[1];
        v72 = *(v69 + 48);
        v73 = v195;
        v192 = v67;
        *v195 = v67;
        *(v73 + 8) = v68;
        v74 = type metadata accessor for Date();
        v201 = *(v74 - 8);
        v75 = *(v201 + 2);
        v75(v73 + v72, v66 + v206, v74);
        v76 = v196;
        v191 = v71;
        *v196 = v71;
        v76[1] = v207;
        v77 = *(v69 + 48);
        v78 = v76;
        v75(v76 + v77, v70 + v72, v74);
        lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);

        v205 = v74;
        if (dispatch thunk of static Equatable.== infix(_:_:)())
        {
          v79 = v180;
          outlined init with copy of DateInterval?(v73, v180, &_sSS3key_10Foundation4DateV5valuetMd, "j");
          v80 = v183;
          if (!*(v183 + 16))
          {
            goto LABEL_108;
          }

          v81 = *(v209 + 48);
          v82 = specialized __RawDictionaryStorage.find<A>(_:)(*v79, v79[1]);
          v84 = v83;

          if ((v84 & 1) == 0)
          {
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
            goto LABEL_106;
          }

          v189 = v72;
          v85 = v79;
          v86 = *(v182 + 72);
          v87 = v78;
          v88 = v179;
          outlined init with copy of CloudDevice(*(v80 + 56) + v86 * v82, v179);
          outlined init with take of CloudDevice(v88, v194);
          v89 = v80;
          v90 = *(v201 + 1);
          v90(v85 + v81, v205);
          v91 = v178;
          outlined init with copy of DateInterval?(v87, v178, &_sSS3key_10Foundation4DateV5valuetMd, "j");
          if (!*(v89 + 16))
          {
            goto LABEL_109;
          }

          v92 = *(v209 + 48);
          v93 = v91;
          v94 = specialized __RawDictionaryStorage.find<A>(_:)(*v91, v91[1]);
          v96 = v95;

          if ((v96 & 1) == 0)
          {
            goto LABEL_102;
          }

          v97 = *(v89 + 56) + v94 * v86;
          v98 = v177;
          outlined init with copy of CloudDevice(v97, v177);
          outlined init with take of CloudDevice(v98, v193);
          v90(v93 + v92, v205);
          v99 = *(v181 + 36);
          v100 = (v194 + v99);
          if (*(v194 + v99 + 8))
          {
            v101 = *v100;
            v102 = v100[1];
          }

          else
          {
            v101 = 0;
            v102 = 0xE000000000000000;
          }

          v78 = v196;
          v107 = (v193 + v99);
          if (v107[1])
          {
            v108 = *v107;
            v109 = v107[1];
          }

          else
          {
            v108 = 0;
            v109 = 0xE000000000000000;
          }

          specialized static CloudDevice._compareVersions(_:_:)(v101, v102, v108, v109);
          v103 = v110;
          v111 = v110;

          if (v111 == 2)
          {
            if (v192 == v191 && v208 == v207)
            {
              v103 = 0;
            }

            else
            {
              v103 = _stringCompareWithSmolCheck(_:_:expecting:)();
            }

            v106 = v203;
            v105 = v204;
            outlined destroy of CloudDevice(v193);
            outlined destroy of CloudDevice(v194);
            v104 = v195;
          }

          else
          {
            outlined destroy of CloudDevice(v193);
            outlined destroy of CloudDevice(v194);
            v106 = v203;
            v105 = v204;
            v104 = v195;
          }

          v72 = v189;
        }

        else
        {
          v103 = static Date.< infix(_:_:)();
          v104 = v73;
          v106 = v203;
          v105 = v204;
        }

        outlined destroy of UTType?(v78, &_sSS3key_10Foundation4DateV5valuetMd, "j");
        outlined destroy of UTType?(v104, &_sSS3key_10Foundation4DateV5valuetMd, "j");

        v112 = *(v201 + 1);
        v113 = v200 + v72;
        v114 = v205;
        v112(v113, v205);
        v112(v199 + v206, v114);
        outlined destroy of UTType?(v198, &_sSS3key_10Foundation4DateV5valuetMd, "j");
        outlined destroy of UTType?(v197, &_sSS3key_10Foundation4DateV5valuetMd, "j");
        if ((v103 & 1) == 0)
        {
          v115 = v184;
          a4 = v202;
          if (v106 < v105 || v106 >= v105 + v184)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v106 != v105)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v105 + v115;
          goto LABEL_54;
        }

        v115 = v184;
        a4 = v202 + v184;
        a2 = v105;
        if (v106 < v202 || v106 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v106 != v202)
        {
          swift_arrayInitWithTakeBackToFront();
          v211 = a4;
          goto LABEL_54;
        }

        v211 = a4;
LABEL_54:
        a1 = v106 + v115;
        v212 = a1;
      }

      while (a4 < v190 && a2 < v185);
    }
  }

LABEL_100:
  specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(&v212, &v211, &v210);
}

void specialized UnsafeMutableBufferPointer._finalizeRuns(_:buffer:by:)(uint64_t *a1, unint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a1;
  v7 = *a1;

  v25 = v7;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_15:
    v25 = specialized _ArrayBuffer._consumeAndCreateNew()(v25);
  }

  v20 = v6;
  *v6 = v25;
  v6 = (v25 + 16);
  v8 = *(v25 + 2);
  if (v8 < 2)
  {
LABEL_10:

    *v20 = v25;
  }

  else
  {
    v21 = (v25 + 16);
    while (1)
    {
      v9 = *a3;
      if (!*a3)
      {
        break;
      }

      v10 = &v25[16 * v8];
      v11 = *v10;
      v12 = &v6[2 * v8];
      v13 = *v12;
      v14 = v12[1];
      v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_10Foundation4DateV5valuetMd, "j") - 8) + 72);
      v16 = v9 + v15 * v11;
      v6 = (v9 + v15 * v13);
      v17 = v9 + v15 * v14;

      specialized _merge<A>(low:mid:high:buffer:by:)(v16, v6, v17, a2, a4);

      if (v5)
      {
        *v20 = v25;

        return;
      }

      if (v14 < v11)
      {
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }

      v6 = (v25 + 16);
      v18 = *v21;
      if (v8 - 2 >= *v21)
      {
        goto LABEL_13;
      }

      *v10 = v11;
      *(v10 + 1) = v14;
      v19 = v18 - v8;
      if (v18 < v8)
      {
        goto LABEL_14;
      }

      v8 = v18 - 1;
      memmove(v12, v12 + 2, 16 * v19);
      *v21 = v8;
      if (v8 <= 1)
      {
        goto LABEL_10;
      }
    }

    *v20 = v25;
    __break(1u);
  }
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v285 = a1;
  v315 = type metadata accessor for CloudDevice(0);
  v316 = *(v315 - 8);
  v8 = MEMORY[0x28223BE20](v315);
  v312 = &v280 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v280 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v314 = &v280 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v325 = &v280 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v288 = &v280 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v299 = &v280 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v290 = &v280 - v22;
  MEMORY[0x28223BE20](v21);
  v300 = &v280 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_10Foundation4DateV5valuetMd, "j");
  v297 = *(v24 - 8);
  v25 = MEMORY[0x28223BE20](v24);
  v292 = &v280 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v320 = &v280 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v313 = (&v280 - v30);
  v31 = MEMORY[0x28223BE20](v29);
  v33 = (&v280 - v32);
  v34 = MEMORY[0x28223BE20](v31);
  v36 = &v280 - v35;
  v37 = MEMORY[0x28223BE20](v34);
  v39 = &v280 - v38;
  v40 = MEMORY[0x28223BE20](v37);
  v333 = (&v280 - v41);
  v42 = MEMORY[0x28223BE20](v40);
  v332 = &v280 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v331 = &v280 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v330 = &v280 - v47;
  v48 = MEMORY[0x28223BE20](v46);
  v289 = (&v280 - v49);
  v50 = MEMORY[0x28223BE20](v48);
  v291 = (&v280 - v51);
  v52 = MEMORY[0x28223BE20](v50);
  v54 = &v280 - v53;
  v55 = MEMORY[0x28223BE20](v52);
  v301 = (&v280 - v56);
  v57 = MEMORY[0x28223BE20](v55);
  v309 = (&v280 - v58);
  v59 = MEMORY[0x28223BE20](v57);
  v308 = (&v280 - v60);
  v61 = MEMORY[0x28223BE20](v59);
  v307 = &v280 - v62;
  v63 = MEMORY[0x28223BE20](v61);
  v306 = &v280 - v64;
  v65 = MEMORY[0x28223BE20](v63);
  v281 = (&v280 - v66);
  v67 = MEMORY[0x28223BE20](v65);
  v280 = (&v280 - v68);
  v69 = MEMORY[0x28223BE20](v67);
  v283 = &v280 - v70;
  MEMORY[0x28223BE20](v69);
  v282 = &v280 - v71;
  v341 = MEMORY[0x277D84F90];
  v302 = a3;
  if (a3[1] >= 1)
  {
    v72 = a3[1];
    swift_bridgeObjectRetain_n();
    v73 = v72;
    v74 = 0;
    v298 = MEMORY[0x277D84F90];
    v317 = a5;
    v284 = a4;
    v310 = v12;
    v335 = v24;
    v311 = v33;
    v329 = v36;
    v324 = v39;
    v304 = v54;
    while (1)
    {
      v287 = v74;
      if (v74 + 1 >= v73)
      {
        v102 = v74 + 1;
        v145 = v335;
      }

      else
      {
        v303 = v73;
        v75 = *v302;
        v339 = v75;
        v76 = *(v297 + 72);
        v323 = v76;
        v77 = v75 + v76 * (v74 + 1);
        v78 = v282;
        outlined init with copy of DateInterval?(v77, v282, &_sSS3key_10Foundation4DateV5valuetMd, "j");
        v79 = v75 + v76 * v74;
        v80 = v283;
        outlined init with copy of DateInterval?(v79, v283, &_sSS3key_10Foundation4DateV5valuetMd, "j");
        v81 = v280;
        outlined init with copy of DateInterval?(v78, v280, &_sSS3key_10Foundation4DateV5valuetMd, "j");
        v82 = *v81;
        v83 = v81[1];
        v84 = v335;
        v85 = *(v335 + 48);
        v340 = v85;
        v86 = v281;
        outlined init with copy of DateInterval?(v80, v281, &_sSS3key_10Foundation4DateV5valuetMd, "j");
        v87 = *(v84 + 48);
        closure #1 in closure #1 in static CloudDevice.nominatedPhone(in:)(v82, v83, v81 + v85, *v86, v86[1], v86 + v87, v317);
        LODWORD(v319) = v88;
        v89 = v77;

        v90 = type metadata accessor for Date();
        v91 = *(v90 - 8);
        v92 = *(v91 + 8);
        v93 = v91 + 8;
        v92(v86 + v87, v90);
        v94 = v81 + v340;
        v340 = v90;
        v338 = v92;
        v92(v94, v90);
        outlined destroy of UTType?(v283, &_sSS3key_10Foundation4DateV5valuetMd, "j");
        outlined destroy of UTType?(v282, &_sSS3key_10Foundation4DateV5valuetMd, "j");
        v337 = v93;
        v318 = (v93 + 8);
        v95 = v287 + 2;
        v96 = v339 + v323 * (v287 + 2);
        while (1)
        {
          v102 = v303;
          if (v303 == v95)
          {
            break;
          }

          v326 = v96;
          v327 = v95;
          v103 = v306;
          outlined init with copy of DateInterval?(v96, v306, &_sSS3key_10Foundation4DateV5valuetMd, "j");
          v328 = v89;
          v104 = v307;
          outlined init with copy of DateInterval?(v89, v307, &_sSS3key_10Foundation4DateV5valuetMd, "j");
          v105 = v308;
          outlined init with copy of DateInterval?(v103, v308, &_sSS3key_10Foundation4DateV5valuetMd, "j");
          v106 = *v105;
          v336 = v105[1];
          v107 = v336;
          v108 = v335;
          v339 = *(v335 + 48);
          v109 = v309;
          outlined init with copy of DateInterval?(v104, v309, &_sSS3key_10Foundation4DateV5valuetMd, "j");
          v110 = *v109;
          v111 = v109[1];
          v112 = *(v108 + 48);
          v322 = v106;
          v113 = v301;
          *v301 = v106;
          *(v113 + 8) = v107;
          v114 = *v318;
          v115 = v105 + v339;
          v116 = v340;
          (*v318)(v113 + v112, v115, v340);
          v117 = v304;
          v321 = v110;
          *v304 = v110;
          v117[1] = v111;
          v118 = v109 + v112;
          v119 = v117;
          v114(v117 + *(v108 + 48), v118, v116);
          v120 = v336;
          v121 = v112;
          lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);

          v334 = v111;

          if (dispatch thunk of static Equatable.== infix(_:_:)())
          {
            v122 = v291;
            outlined init with copy of DateInterval?(v113, v291, &_sSS3key_10Foundation4DateV5valuetMd, "j");
            v123 = v317;
            if (!*(v317 + 16))
            {
              goto LABEL_164;
            }

            v124 = *(v335 + 48);
            v125 = specialized __RawDictionaryStorage.find<A>(_:)(*v122, v122[1]);
            v127 = v126;

            if ((v127 & 1) == 0)
            {
              goto LABEL_141;
            }

            v296 = v121;
            v128 = *(v316 + 72);
            v129 = v290;
            outlined init with copy of CloudDevice(*(v123 + 56) + v128 * v125, v290);
            outlined init with take of CloudDevice(v129, v300);
            (v338)(v122 + v124, v340);
            v130 = v289;
            outlined init with copy of DateInterval?(v304, v289, &_sSS3key_10Foundation4DateV5valuetMd, "j");
            if (!*(v123 + 16))
            {
              goto LABEL_165;
            }

            v131 = *(v335 + 48);
            v132 = specialized __RawDictionaryStorage.find<A>(_:)(*v130, v130[1]);
            v134 = v133;

            if ((v134 & 1) == 0)
            {
              goto LABEL_142;
            }

            v135 = v288;
            outlined init with copy of CloudDevice(*(v123 + 56) + v132 * v128, v288);
            outlined init with take of CloudDevice(v135, v299);
            (v338)(v130 + v131, v340);
            v136 = *(v315 + 36);
            v137 = (v300 + v136);
            if (*(v300 + v136 + 8))
            {
              v138 = *v137;
              v139 = v137[1];
            }

            else
            {
              v138 = 0;
              v139 = 0xE000000000000000;
            }

            v140 = (v299 + v136);
            if (v140[1])
            {
              v141 = *v140;
              v142 = v140[1];
            }

            else
            {
              v141 = 0;
              v142 = 0xE000000000000000;
            }

            specialized static CloudDevice._compareVersions(_:_:)(v138, v139, v141, v142);
            v97 = v143;
            v144 = v143;

            if (v144 == 2)
            {
              v119 = v304;
              v98 = v301;
              if (v322 == v321 && v120 == v334)
              {
                v97 = 0;
              }

              else
              {
                v97 = _stringCompareWithSmolCheck(_:_:expecting:)();
              }

              v121 = v296;
              outlined destroy of CloudDevice(v299);
              outlined destroy of CloudDevice(v300);
            }

            else
            {
              outlined destroy of CloudDevice(v299);
              outlined destroy of CloudDevice(v300);
              v119 = v304;
              v98 = v301;
              v121 = v296;
            }
          }

          else
          {
            v97 = static Date.< infix(_:_:)();
            v98 = v113;
          }

          outlined destroy of UTType?(v119, &_sSS3key_10Foundation4DateV5valuetMd, "j");
          outlined destroy of UTType?(v98, &_sSS3key_10Foundation4DateV5valuetMd, "j");

          v99 = v340;
          v100 = v338;
          (v338)(v309 + v121, v340);
          v100(v308 + v339, v99);
          outlined destroy of UTType?(v307, &_sSS3key_10Foundation4DateV5valuetMd, "j");
          outlined destroy of UTType?(v306, &_sSS3key_10Foundation4DateV5valuetMd, "j");
          v101 = v319 ^ v97;
          v95 = v327 + 1;
          v96 = v326 + v323;
          v89 = v328 + v323;
          if (v101)
          {
            v102 = v327;
            break;
          }
        }

        a4 = v284;
        v74 = v287;
        v145 = v335;
        if ((v319 & 1) == 0)
        {
          if (v102 < v287)
          {
            goto LABEL_159;
          }

          if (v287 < v102)
          {
            v146 = v323 * (v102 - 1);
            v147 = v102 * v323;
            v148 = v102;
            v149 = v287;
            v150 = v287 * v323;
            do
            {
              if (v149 != --v148)
              {
                v151 = *v302;
                if (!*v302)
                {
                  goto LABEL_166;
                }

                v152 = v102;
                outlined init with take of URL?(v151 + v150, v292, &_sSS3key_10Foundation4DateV5valuetMd, "j");
                if (v150 < v146 || v151 + v150 >= (v151 + v147))
                {
                  swift_arrayInitWithTakeFrontToBack();
                }

                else if (v150 != v146)
                {
                  swift_arrayInitWithTakeBackToFront();
                }

                outlined init with take of URL?(v292, v151 + v146, &_sSS3key_10Foundation4DateV5valuetMd, "j");
                v74 = v287;
                v102 = v152;
                v145 = v335;
              }

              ++v149;
              v146 -= v323;
              v147 -= v323;
              v150 += v323;
            }

            while (v149 < v148);
            a4 = v284;
          }
        }
      }

      v153 = v302[1];
      if (v102 < v153)
      {
        if (__OFSUB__(v102, v74))
        {
          goto LABEL_156;
        }

        if (v102 - v74 < a4)
        {
          if (__OFADD__(v74, a4))
          {
            goto LABEL_157;
          }

          if (v74 + a4 < v153)
          {
            v153 = v74 + a4;
          }

          if (v153 < v74)
          {
LABEL_158:
            __break(1u);
LABEL_159:
            __break(1u);
LABEL_160:
            swift_bridgeObjectRelease_n();
            __break(1u);
LABEL_161:

            __break(1u);
LABEL_162:

            __break(1u);
LABEL_163:
            swift_bridgeObjectRelease_n();
            __break(1u);
LABEL_164:

            __break(1u);
LABEL_165:

            __break(1u);
LABEL_166:
            swift_bridgeObjectRelease_n();
            __break(1u);
LABEL_167:
            swift_bridgeObjectRelease_n();
            __break(1u);
LABEL_168:
            swift_bridgeObjectRelease_n();
            __break(1u);
            return;
          }

          if (v102 != v153)
          {
            v293 = v153;
            v154 = *v302;
            v155 = v102;
            v156 = type metadata accessor for Date();
            v157 = v155;
            v158 = *(v297 + 72);
            v339 = v156;
            v322 = v156 - 8;
            v159 = v154 + v158 * (v155 - 1);
            v318 = -v158;
            v160 = v74 - v155;
            v319 = v154;
            v286 = v158;
            v161 = v154 + v155 * v158;
            do
            {
              v303 = v157;
              v294 = v161;
              v295 = v160;
              v162 = v160;
              v296 = v159;
              v163 = v159;
              do
              {
                v327 = v161;
                v328 = v162;
                v164 = v330;
                outlined init with copy of DateInterval?(v161, v330, &_sSS3key_10Foundation4DateV5valuetMd, "j");
                v326 = v163;
                v165 = v331;
                outlined init with copy of DateInterval?(v163, v331, &_sSS3key_10Foundation4DateV5valuetMd, "j");
                v166 = v164;
                v167 = v332;
                outlined init with copy of DateInterval?(v166, v332, &_sSS3key_10Foundation4DateV5valuetMd, "j");
                v169 = *v167;
                v170 = *(v145 + 48);
                v337 = *(v167 + 8);
                v168 = v337;
                v338 = v170;
                v171 = v333;
                outlined init with copy of DateInterval?(v165, v333, &_sSS3key_10Foundation4DateV5valuetMd, "j");
                v172 = v171[1];
                v334 = *v171;
                v340 = v172;
                v173 = *(v145 + 48);
                v174 = v324;
                v323 = v169;
                *v324 = v169;
                *(v174 + 8) = v168;
                v175 = v145;
                v176 = v339;
                v336 = *(v339 - 8);
                v177 = *(v336 + 16);
                v177(v174 + v173, &v338[v167], v339);
                v178 = v329;
                v179 = v340;
                *v329 = v334;
                v178[1] = v179;
                v177(v178 + *(v175 + 48), v171 + v173, v176);
                lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);

                if (dispatch thunk of static Equatable.== infix(_:_:)())
                {
                  v321 = v173;
                  v180 = v311;
                  outlined init with copy of DateInterval?(v174, v311, &_sSS3key_10Foundation4DateV5valuetMd, "j");
                  v181 = v317;
                  if (!*(v317 + 16))
                  {
                    goto LABEL_161;
                  }

                  v182 = *(v335 + 48);
                  v183 = specialized __RawDictionaryStorage.find<A>(_:)(*v180, v180[1]);
                  v185 = v184;

                  if ((v185 & 1) == 0)
                  {
                    __break(1u);
LABEL_136:
                    __break(1u);
LABEL_137:
                    __break(1u);
LABEL_138:
                    __break(1u);
LABEL_139:
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
LABEL_145:
                    __break(1u);
LABEL_146:
                    __break(1u);
LABEL_147:
                    __break(1u);
LABEL_148:
                    __break(1u);
LABEL_149:
                    __break(1u);
LABEL_150:
                    __break(1u);
LABEL_151:
                    __break(1u);
LABEL_152:
                    __break(1u);
LABEL_153:
                    __break(1u);
LABEL_154:
                    __break(1u);
LABEL_155:
                    __break(1u);
LABEL_156:
                    __break(1u);
LABEL_157:
                    __break(1u);
                    goto LABEL_158;
                  }

                  v186 = v180;
                  v187 = *(v316 + 72);
                  v188 = v314;
                  outlined init with copy of CloudDevice(*(v181 + 56) + v187 * v183, v314);
                  outlined init with take of CloudDevice(v188, v325);
                  v189 = *(v336 + 8);
                  v189(v186 + v182, v339);
                  v190 = v313;
                  outlined init with copy of DateInterval?(v329, v313, &_sSS3key_10Foundation4DateV5valuetMd, "j");
                  if (!*(v181 + 16))
                  {
                    goto LABEL_162;
                  }

                  v191 = v181;
                  v192 = *(v335 + 48);
                  v193 = specialized __RawDictionaryStorage.find<A>(_:)(*v190, v190[1]);
                  v195 = v194;

                  if ((v195 & 1) == 0)
                  {
                    goto LABEL_136;
                  }

                  v196 = v312;
                  outlined init with copy of CloudDevice(*(v191 + 56) + v193 * v187, v312);
                  v197 = v310;
                  outlined init with take of CloudDevice(v196, v310);
                  v189(v190 + v192, v339);
                  v198 = *(v315 + 36);
                  v199 = (v325 + v198);
                  if (*(v325 + v198 + 8))
                  {
                    v200 = *v199;
                    v201 = v199[1];
                  }

                  else
                  {
                    v200 = 0;
                    v201 = 0xE000000000000000;
                  }

                  v204 = v329;
                  v174 = v324;
                  v205 = (v197 + v198);
                  if (v205[1])
                  {
                    v206 = *v205;
                    v207 = v205[1];
                  }

                  else
                  {
                    v206 = 0;
                    v207 = 0xE000000000000000;
                  }

                  specialized static CloudDevice._compareVersions(_:_:)(v200, v201, v206, v207);
                  v202 = v208;
                  v209 = v208;

                  if (v209 == 2)
                  {
                    v145 = v335;
                    v203 = v321;
                    if (v323 == v334 && v337 == v340)
                    {
                      v202 = 0;
                    }

                    else
                    {
                      v202 = _stringCompareWithSmolCheck(_:_:expecting:)();
                    }

                    outlined destroy of CloudDevice(v197);
                    outlined destroy of CloudDevice(v325);
                  }

                  else
                  {
                    outlined destroy of CloudDevice(v197);
                    outlined destroy of CloudDevice(v325);
                    v145 = v335;
                    v203 = v321;
                  }
                }

                else
                {
                  v202 = static Date.< infix(_:_:)();
                  v145 = v335;
                  v203 = v173;
                  v204 = v178;
                }

                outlined destroy of UTType?(v204, &_sSS3key_10Foundation4DateV5valuetMd, "j");
                outlined destroy of UTType?(v174, &_sSS3key_10Foundation4DateV5valuetMd, "j");

                v210 = *(v336 + 8);
                v211 = v333 + v203;
                v212 = v339;
                v210(v211, v339);
                v210(&v338[v332], v212);
                outlined destroy of UTType?(v331, &_sSS3key_10Foundation4DateV5valuetMd, "j");
                outlined destroy of UTType?(v330, &_sSS3key_10Foundation4DateV5valuetMd, "j");
                if (v202)
                {
                  break;
                }

                v213 = v328;
                if (!v319)
                {
                  goto LABEL_160;
                }

                v214 = v327;
                v215 = v320;
                outlined init with take of URL?(v327, v320, &_sSS3key_10Foundation4DateV5valuetMd, "j");
                v216 = v326;
                swift_arrayInitWithTakeFrontToBack();
                outlined init with take of URL?(v215, v216, &_sSS3key_10Foundation4DateV5valuetMd, "j");
                v163 = v318 + v216;
                v161 = v318 + v214;
                v217 = __CFADD__(v213, 1);
                v162 = v213 + 1;
              }

              while (!v217);
              v157 = v303 + 1;
              v159 = v296 + v286;
              v160 = v295 - 1;
              v161 = v294 + v286;
            }

            while (v303 + 1 != v293);
            v74 = v287;
            v102 = v293;
          }
        }
      }

      v218 = v298;
      if (v102 < v74)
      {
        goto LABEL_155;
      }

      v293 = v102;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v218 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v218 + 2) + 1, 1, v218);
      }

      v220 = *(v218 + 2);
      v219 = *(v218 + 3);
      v221 = v220 + 1;
      if (v220 >= v219 >> 1)
      {
        v218 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v219 > 1), v220 + 1, 1, v218);
      }

      *(v218 + 2) = v221;
      v222 = v218 + 32;
      v223 = &v218[16 * v220 + 32];
      v224 = v293;
      *v223 = v74;
      *(v223 + 1) = v224;
      v340 = *v285;
      if (!v340)
      {
        goto LABEL_167;
      }

      v298 = v218;
      if (v220)
      {
        while (1)
        {
          v225 = v221 - 1;
          if (v221 >= 4)
          {
            break;
          }

          if (v221 == 3)
          {
            v226 = *(v218 + 4);
            v227 = *(v218 + 5);
            v236 = __OFSUB__(v227, v226);
            v228 = v227 - v226;
            v229 = v236;
LABEL_99:
            if (v229)
            {
              goto LABEL_145;
            }

            v242 = &v218[16 * v221];
            v244 = *v242;
            v243 = *(v242 + 1);
            v245 = __OFSUB__(v243, v244);
            v246 = v243 - v244;
            v247 = v245;
            if (v245)
            {
              goto LABEL_147;
            }

            v248 = &v222[16 * v225];
            v250 = *v248;
            v249 = *(v248 + 1);
            v236 = __OFSUB__(v249, v250);
            v251 = v249 - v250;
            if (v236)
            {
              goto LABEL_150;
            }

            if (__OFADD__(v246, v251))
            {
              goto LABEL_152;
            }

            if (v246 + v251 >= v228)
            {
              if (v228 < v251)
              {
                v225 = v221 - 2;
              }

              goto LABEL_121;
            }

            goto LABEL_114;
          }

          if (v221 < 2)
          {
            goto LABEL_153;
          }

          v252 = &v218[16 * v221];
          v254 = *v252;
          v253 = *(v252 + 1);
          v236 = __OFSUB__(v253, v254);
          v246 = v253 - v254;
          v247 = v236;
LABEL_114:
          if (v247)
          {
            goto LABEL_149;
          }

          v255 = &v222[16 * v225];
          v257 = *v255;
          v256 = *(v255 + 1);
          v236 = __OFSUB__(v256, v257);
          v258 = v256 - v257;
          if (v236)
          {
            goto LABEL_151;
          }

          if (v258 < v246)
          {
            goto LABEL_3;
          }

LABEL_121:
          if (v225 - 1 >= v221)
          {
            goto LABEL_137;
          }

          v263 = *v302;
          if (!*v302)
          {
            goto LABEL_163;
          }

          v264 = &v222[16 * v225 - 16];
          v265 = *v264;
          v266 = &v222[16 * v225];
          v267 = *(v266 + 1);
          v268 = *(v297 + 72);
          v269 = v263 + v268 * *v264;
          v270 = v263 + v268 * *v266;
          v271 = v263 + v268 * v267;
          v272 = v317;

          v273 = v269;
          v274 = v305;
          specialized _merge<A>(low:mid:high:buffer:by:)(v273, v270, v271, v340, v272);
          v305 = v274;
          if (v274)
          {

            v341 = v298;
            goto LABEL_133;
          }

          if (v267 < v265)
          {
            goto LABEL_138;
          }

          v218 = v298;
          v275 = *(v298 + 16);
          if (v225 > v275)
          {
            goto LABEL_139;
          }

          *v264 = v265;
          *(v264 + 1) = v267;
          if (v225 >= v275)
          {
            goto LABEL_140;
          }

          v221 = v275 - 1;
          memmove(&v222[16 * v225], v266 + 16, 16 * (v275 - 1 - v225));
          *(v218 + 2) = v275 - 1;
          if (v275 <= 2)
          {
            goto LABEL_3;
          }
        }

        v230 = &v222[16 * v221];
        v231 = *(v230 - 8);
        v232 = *(v230 - 7);
        v236 = __OFSUB__(v232, v231);
        v233 = v232 - v231;
        if (v236)
        {
          goto LABEL_143;
        }

        v235 = *(v230 - 6);
        v234 = *(v230 - 5);
        v236 = __OFSUB__(v234, v235);
        v228 = v234 - v235;
        v229 = v236;
        if (v236)
        {
          goto LABEL_144;
        }

        v237 = &v218[16 * v221];
        v239 = *v237;
        v238 = *(v237 + 1);
        v236 = __OFSUB__(v238, v239);
        v240 = v238 - v239;
        if (v236)
        {
          goto LABEL_146;
        }

        v236 = __OFADD__(v228, v240);
        v241 = v228 + v240;
        if (v236)
        {
          goto LABEL_148;
        }

        if (v241 >= v233)
        {
          v259 = &v222[16 * v225];
          v261 = *v259;
          v260 = *(v259 + 1);
          v236 = __OFSUB__(v260, v261);
          v262 = v260 - v261;
          if (v236)
          {
            goto LABEL_154;
          }

          if (v228 < v262)
          {
            v225 = v221 - 2;
          }

          goto LABEL_121;
        }

        goto LABEL_99;
      }

LABEL_3:
      v73 = v302[1];
      v74 = v293;
      a4 = v284;
      if (v293 >= v73)
      {
        v341 = v298;
        v276 = v317;
        goto LABEL_131;
      }
    }
  }

  swift_bridgeObjectRetain_n();
  v276 = a5;
LABEL_131:
  v277 = *v285;
  if (!*v285)
  {
    goto LABEL_168;
  }

  v278 = v277;
  v279 = v305;
  specialized UnsafeMutableBufferPointer._finalizeRuns(_:buffer:by:)(&v341, v278, v302, v276);
  v305 = v279;

LABEL_133:
  swift_bridgeObjectRelease_n();
}

void specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v113 = a5;
  v109 = type metadata accessor for CloudDevice(0);
  v112 = *(v109 - 8);
  v9 = MEMORY[0x28223BE20](v109);
  v108 = &v99 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v107 = &v99 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v111 = &v99 - v14;
  MEMORY[0x28223BE20](v13);
  v121 = &v99 - v15;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_10Foundation4DateV5valuetMd, "j");
  v16 = *(v132 - 8);
  v17 = MEMORY[0x28223BE20](v132);
  v117 = &v99 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v110 = (&v99 - v20);
  v21 = MEMORY[0x28223BE20](v19);
  v114 = (&v99 - v22);
  v23 = MEMORY[0x28223BE20](v21);
  v136 = &v99 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v27 = (&v99 - v26);
  v28 = MEMORY[0x28223BE20](v25);
  v127 = (&v99 - v29);
  v30 = MEMORY[0x28223BE20](v28);
  v126 = (&v99 - v31);
  v32 = MEMORY[0x28223BE20](v30);
  v125 = &v99 - v33;
  MEMORY[0x28223BE20](v32);
  v124 = &v99 - v34;
  v101 = a2;
  if (a3 == a2)
  {
    return;
  }

  v35 = *a4;
  v36 = type metadata accessor for Date();
  v37 = *(v16 + 72);
  v135 = v36;
  v119 = v36 - 8;
  v38 = v35 + v37 * (a3 - 1);
  v115 = -v37;
  v116 = v35;
  v39 = a1 - a3;
  v100 = v37;
  v40 = v35 + v37 * a3;
  v106 = v27;
LABEL_5:
  v105 = a3;
  v102 = v40;
  v41 = v40;
  v103 = v39;
  v42 = v39;
  v104 = v38;
  v133 = v38;
  while (1)
  {
    v122 = v41;
    v123 = v42;
    v43 = v124;
    outlined init with copy of DateInterval?(v41, v124, &_sSS3key_10Foundation4DateV5valuetMd, "j");
    v44 = v125;
    outlined init with copy of DateInterval?(v133, v125, &_sSS3key_10Foundation4DateV5valuetMd, "j");
    v45 = v126;
    outlined init with copy of DateInterval?(v43, v126, &_sSS3key_10Foundation4DateV5valuetMd, "j");
    v46 = *v45;
    v131 = v45[1];
    v47 = v131;
    v48 = v132;
    v134 = *(v132 + 48);
    v49 = v127;
    outlined init with copy of DateInterval?(v44, v127, &_sSS3key_10Foundation4DateV5valuetMd, "j");
    v50 = *v49;
    v130 = v49[1];
    v51 = *(v48 + 48);
    v120 = v46;
    *v27 = v46;
    v27[1] = v47;
    v52 = v135;
    v53 = *(v135 - 8);
    v128 = v50;
    v129 = v53;
    v54 = *(v53 + 16);
    v55 = v136;
    v54(v27 + v51, v45 + v134, v135);
    v56 = v130;
    *v55 = v128;
    *(v55 + 1) = v56;
    v54(&v55[*(v48 + 48)], v49 + v51, v52);
    lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);

    if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
    {
      v82 = static Date.< infix(_:_:)();
      v83 = v51;
      v84 = v123;
LABEL_23:
      v91 = v134;
      goto LABEL_26;
    }

    v57 = v114;
    outlined init with copy of DateInterval?(v27, v114, &_sSS3key_10Foundation4DateV5valuetMd, "j");
    v58 = v113;
    if (!*(v113 + 16))
    {
      goto LABEL_34;
    }

    v59 = *(v132 + 48);
    v60 = specialized __RawDictionaryStorage.find<A>(_:)(*v57, v57[1]);
    v62 = v61;

    if ((v62 & 1) == 0)
    {
      break;
    }

    v118 = v51;
    v63 = v57;
    v64 = *(v112 + 72);
    v65 = *(v58 + 56) + v64 * v60;
    v66 = v111;
    outlined init with copy of CloudDevice(v65, v111);
    outlined init with take of CloudDevice(v66, v121);
    v67 = *(v129 + 8);
    v67(v63 + v59, v135);
    v68 = v110;
    outlined init with copy of DateInterval?(v136, v110, &_sSS3key_10Foundation4DateV5valuetMd, "j");
    if (!*(v58 + 16))
    {
      goto LABEL_35;
    }

    v69 = v58;
    v70 = *(v132 + 48);
    v71 = specialized __RawDictionaryStorage.find<A>(_:)(*v68, v68[1]);
    v73 = v72;

    if ((v73 & 1) == 0)
    {
      goto LABEL_32;
    }

    v74 = *(v69 + 56) + v71 * v64;
    v75 = v108;
    outlined init with copy of CloudDevice(v74, v108);
    v76 = v75;
    v77 = v107;
    outlined init with take of CloudDevice(v76, v107);
    v67(v68 + v70, v135);
    v78 = *(v109 + 36);
    v79 = (v121 + v78);
    if (*(v121 + v78 + 8))
    {
      v80 = *v79;
      v81 = v79[1];
    }

    else
    {
      v80 = 0;
      v81 = 0xE000000000000000;
    }

    v85 = v130;
    v86 = (v77 + v78);
    if (v86[1])
    {
      v87 = *v86;
      v88 = v86[1];
    }

    else
    {
      v87 = 0;
      v88 = 0xE000000000000000;
    }

    specialized static CloudDevice._compareVersions(_:_:)(v80, v81, v87, v88);
    v82 = v89;
    v90 = v89;

    if (v90 != 2)
    {
      outlined destroy of CloudDevice(v77);
      outlined destroy of CloudDevice(v121);
      v27 = v106;
      v84 = v123;
      v83 = v118;
      goto LABEL_23;
    }

    v27 = v106;
    v84 = v123;
    if (v120 == v128 && v131 == v85)
    {
      v82 = 0;
    }

    else
    {
      v82 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v91 = v134;
    outlined destroy of CloudDevice(v77);
    outlined destroy of CloudDevice(v121);
    v83 = v118;
LABEL_26:
    outlined destroy of UTType?(v136, &_sSS3key_10Foundation4DateV5valuetMd, "j");
    outlined destroy of UTType?(v27, &_sSS3key_10Foundation4DateV5valuetMd, "j");

    v92 = *(v129 + 8);
    v93 = v127 + v83;
    v94 = v135;
    v92(v93, v135);
    v92(v126 + v91, v94);
    outlined destroy of UTType?(v125, &_sSS3key_10Foundation4DateV5valuetMd, "j");
    outlined destroy of UTType?(v124, &_sSS3key_10Foundation4DateV5valuetMd, "j");
    v95 = v122;
    if ((v82 & 1) == 0)
    {
      if (!v116)
      {
        goto LABEL_33;
      }

      v96 = v117;
      outlined init with take of URL?(v122, v117, &_sSS3key_10Foundation4DateV5valuetMd, "j");
      v97 = v133;
      swift_arrayInitWithTakeFrontToBack();
      outlined init with take of URL?(v96, v97, &_sSS3key_10Foundation4DateV5valuetMd, "j");
      v133 = v97 + v115;
      v41 = v95 + v115;
      v98 = __CFADD__(v84, 1);
      v42 = v84 + 1;
      if (!v98)
      {
        continue;
      }
    }

    a3 = v105 + 1;
    v38 = v104 + v100;
    v39 = v103 - 1;
    v40 = v102 + v100;
    if (v105 + 1 == v101)
    {
      return;
    }

    goto LABEL_5;
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:

  __break(1u);
LABEL_35:

  __break(1u);
}

void specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  swift_bridgeObjectRetain_n();
  v5 = _minimumMergeRunLength(_:)(v4);
  if (v5 < v4)
  {
    if (v4 >= -1)
    {
      v6 = v5;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_10Foundation4DateV5valuetMd, "j");
        v8 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v8 + 16) = v7;
      }

      v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_10Foundation4DateV5valuetMd, "j") - 8);
      v10[0] = v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
      v10[1] = v7;

      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v10, v11, a1, v6, a2);

      *(v8 + 16) = 0;
      swift_bridgeObjectRelease_n();

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {

    specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v4, 1, a1, a2);
  }

  swift_bridgeObjectRelease_n();
}

uint64_t specialized MutableCollection<>.sort(by:)(uint64_t *a1, uint64_t a2)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_10Foundation4DateV5valuetMd, "j") - 8);
  v5 = *a1;
  swift_bridgeObjectRetain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v5);
  }

  v6 = v5[2];
  v8[0] = v5 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v8[1] = v6;

  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v8, a2);

  *a1 = v5;
  return swift_bridgeObjectRelease_n();
}

id specialized static CloudDevice.dumpRecord(_:)(void *a1)
{
  v241 = *MEMORY[0x277D85DE8];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v189 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v189 - v7;
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v189 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v214 = &v189 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v223 = &v189 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v199 = &v189 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v195 = &v189 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v222 = &v189 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v192 = &v189 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v191 = &v189 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v190 = &v189 - v27;
  MEMORY[0x28223BE20](v26);
  v29 = &v189 - v28;
  v30 = type metadata accessor for Date();
  v31 = *(v30 - 8);
  v32 = MEMORY[0x28223BE20](v30);
  v221 = &v189 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v220 = &v189 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v219 = &v189 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v218 = &v189 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v217 = &v189 - v41;
  MEMORY[0x28223BE20](v40);
  v224 = &v189 - v42;
  v43 = [a1 recordID];
  v44 = [v43 recordName];

  v208 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v209 = v45;

  v226 = a1;
  v46 = [a1 encryptedValues];
  v47 = MEMORY[0x21CE91FC0](0x4449656369766564, 0xE800000000000000);
  v48 = [v46 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  v211 = v5;
  if (v48 && (v240 = v48, __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd, &_sSo13CKRecordValue_pMR), (swift_dynamicCast() & 1) != 0))
  {
    v206 = v232;
    v207 = v233;
  }

  else
  {
    swift_beginAccess();
    v206 = static CloudDevice.nilStr;
    v207 = qword_27CA92B00;
  }

  v49 = [v226 encryptedValues];
  v50 = MEMORY[0x21CE91FC0](0x4449656C646E7562, 0xE800000000000000);
  v51 = [v49 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v51 && (v239 = v51, __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd, &_sSo13CKRecordValue_pMR), (swift_dynamicCast() & 1) != 0))
  {
    v204 = v232;
    v205 = v233;
  }

  else
  {
    swift_beginAccess();
    v204 = static CloudDevice.nilStr;
    v205 = qword_27CA92B00;
  }

  v52 = [v226 encryptedValues];
  v53 = MEMORY[0x21CE91FC0](0xD000000000000014, 0x8000000216585CF0);
  v54 = [v52 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v54)
  {
    v232 = v54;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd, &_sSo13CKRecordValue_pMR);
    v55 = swift_dynamicCast();
    v227 = *(v31 + 56);
    v227(v29, v55 ^ 1u, 1, v30);
    v225 = *(v31 + 48);
    if (v225(v29, 1, v30) != 1)
    {
      (*(v31 + 32))(v224, v29, v30);
      goto LABEL_15;
    }
  }

  else
  {
    v227 = *(v31 + 56);
    v227(v29, 1, 1, v30);
  }

  static Date.distantPast.getter();
  v225 = *(v31 + 48);
  if (v225(v29, 1, v30) != 1)
  {
    outlined destroy of UTType?(v29, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

LABEL_15:
  v56 = [v226 encryptedValues];
  v57 = MEMORY[0x21CE91FC0](1701667182, 0xE400000000000000);
  v58 = [v56 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v58 && (v238 = v58, __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd, &_sSo13CKRecordValue_pMR), (swift_dynamicCast() & 1) != 0))
  {
    v200 = v232;
    v201 = v233;
  }

  else
  {
    swift_beginAccess();
    v200 = static CloudDevice.nilStr;
    v201 = qword_27CA92B00;
  }

  v59 = [v226 encryptedValues];
  v60 = MEMORY[0x21CE91FC0](0x65566D6574737973, 0xED00006E6F697372);
  v61 = [v59 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v61 && (v237 = v61, __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd, &_sSo13CKRecordValue_pMR), (swift_dynamicCast() & 1) != 0))
  {
    v197 = v232;
    v198 = v233;
  }

  else
  {
    swift_beginAccess();
    v197 = static CloudDevice.nilStr;
    v198 = qword_27CA92B00;
  }

  v62 = [v226 encryptedValues];
  v63 = MEMORY[0x21CE91FC0](0x64496D6574737973, 0xEE00746E496D6F69);
  v64 = [v62 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v64 && (v232 = v64, __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd, &_sSo13CKRecordValue_pMR), swift_dynamicCast()))
  {
    v65 = v236;
  }

  else
  {
    v65 = -1;
  }

  v196 = v65;
  v66 = [v226 encryptedValues];
  v67 = MEMORY[0x21CE91FC0](0x614C6D6574737973, 0xEE0065676175676ELL);
  v68 = [v66 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v68 && (v236 = v68, __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd, &_sSo13CKRecordValue_pMR), (swift_dynamicCast() & 1) != 0))
  {
    v193 = v232;
    v194 = v233;
  }

  else
  {
    swift_beginAccess();
    v193 = static CloudDevice.nilStr;
    v194 = qword_27CA92B00;
  }

  v69 = [v226 encryptedValues];
  v70 = MEMORY[0x21CE91FC0](0xD000000000000012, 0x8000000216585D10);
  v71 = [v69 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v71 && (v234 = v71, __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd, &_sSo13CKRecordValue_pMR), swift_dynamicCast()))
  {
    v72 = v232;
    v73 = v233;
  }

  else
  {
    v72 = 0;
    v73 = 0xC000000000000000;
  }

  v74 = objc_opt_self();
  v203 = v72;
  v202 = v73;
  isa = Data._bridgeToObjectiveC()().super.isa;
  v232 = 0;
  v76 = [v74 JSONObjectWithData:isa options:0 error:&v232];

  v212 = v2;
  if (!v76)
  {
    v79 = v232;
    v80 = _convertNSErrorToError(_:)();

    swift_willThrow();
    goto LABEL_39;
  }

  v77 = v232;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_39:
    v78 = MEMORY[0x277D84F90];
    goto LABEL_40;
  }

  v78 = v234;
LABEL_40:
  v213 = v31;
  v210 = v30;
  v215 = v11;
  v216 = v8;
  v81 = v78[2];
  if (!v81)
  {
    v228 = MEMORY[0x277D84F90];
    goto LABEL_70;
  }

  v189 = 0;
  v82 = 0;
  v228 = MEMORY[0x277D84F90];
  do
  {
    v83 = &v78[2 * v82 + 5];
    v84 = v82;
    while (1)
    {
      if (v84 >= v78[2])
      {
        __break(1u);
      }

      v85 = *(v83 - 1);
      v86 = *v83;

      v87._countAndFlagsBits = v85;
      v87._object = v86;
      v88 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of CloudDevice.Capability.init(rawValue:), v87);
      if (v88 > 3)
      {
        break;
      }

      if (v88 > 1)
      {
        if (v88 != 2)
        {
          v89 = 0x6469766F72506F6ELL;
          v90 = 0xEB00000000737265;
          goto LABEL_63;
        }

        v89 = 0x64756F6C43776F6CLL;
        goto LABEL_62;
      }

      if (!v88)
      {
        v89 = 0x626E4F726576656ELL;
        v90 = 0xEE0064656472616FLL;
        goto LABEL_63;
      }

      if (v88 == 1)
      {
        v89 = 0x6C61636F4C776F6CLL;
LABEL_62:
        v90 = 0xEF656761726F7453;
        goto LABEL_63;
      }

LABEL_43:
      ++v84;

      v83 += 2;
      if (v81 == v84)
      {
        goto LABEL_70;
      }
    }

    if (v88 > 5)
    {
      if (v88 == 6)
      {
        v89 = 0x756F527465737361;
        v90 = 0xEE00626F6C426574;
        goto LABEL_63;
      }

      if (v88 == 7)
      {
        v89 = 0x6174536775626564;
        v90 = 0xEA0000000000656CLL;
        goto LABEL_63;
      }

      goto LABEL_43;
    }

    if (v88 == 4)
    {
      v90 = 0xE400000000000000;
      v89 = 1280328553;
    }

    else
    {
      v90 = 0xE600000000000000;
      v89 = 0x68746C616548;
    }

LABEL_63:

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v228 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v228 + 2) + 1, 1, v228);
    }

    v92 = *(v228 + 2);
    v91 = *(v228 + 3);
    if (v92 >= v91 >> 1)
    {
      v228 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v91 > 1), v92 + 1, 1, v228);
    }

    v82 = v84 + 1;
    v93 = v228;
    *(v228 + 2) = v92 + 1;
    v94 = &v93[16 * v92];
    *(v94 + 4) = v89;
    *(v94 + 5) = v90;
  }

  while (v81 - 1 != v84);
LABEL_70:

  v95 = v226;
  v96 = [v226 encryptedValues];
  v97 = MEMORY[0x21CE91FC0](0xD000000000000011, 0x8000000216585D30);
  v98 = [v96 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v98)
  {
    v232 = v98;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd, &_sSo13CKRecordValue_pMR);
    v99 = v190;
    v100 = v210;
    v101 = swift_dynamicCast();
    v102 = v213;
    v227(v99, v101 ^ 1u, 1, v100);
    v103 = v225;
    v104 = v225(v99, 1, v100);
    v105 = v207;
    if (v104 != 1)
    {
      (*(v102 + 32))(v217, v99, v100);
      goto LABEL_76;
    }
  }

  else
  {
    v102 = v213;
    v99 = v190;
    v100 = v210;
    v227(v190, 1, 1, v210);
    v105 = v207;
    v103 = v225;
  }

  static Date.distantPast.getter();
  if (v103(v99, 1, v100) != 1)
  {
    outlined destroy of UTType?(v99, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

LABEL_76:
  v106 = [v95 encryptedValues];
  v107 = MEMORY[0x21CE91FC0](0xD000000000000013, 0x8000000216585D50);
  v108 = [v106 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v108)
  {
    v232 = v108;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd, &_sSo13CKRecordValue_pMR);
    v109 = v191;
    v110 = swift_dynamicCast();
    v227(v109, v110 ^ 1u, 1, v100);
    if (v103(v109, 1, v100) != 1)
    {
      (*(v102 + 32))(v218, v109, v100);
      goto LABEL_82;
    }
  }

  else
  {
    v109 = v191;
    v227(v191, 1, 1, v100);
  }

  static Date.distantPast.getter();
  if (v103(v109, 1, v100) != 1)
  {
    outlined destroy of UTType?(v109, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

LABEL_82:
  v111 = [v95 encryptedValues];
  v112 = MEMORY[0x21CE91FC0](0xD000000000000012, 0x8000000216585D70);
  v113 = [v111 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v113 && (v234 = v113, __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd, &_sSo13CKRecordValue_pMR), (swift_dynamicCast() & 1) != 0))
  {
    v207 = v232;
    v210 = v233;
  }

  else
  {
    swift_beginAccess();
    v207 = static CloudDevice.nilStr;
    v210 = qword_27CA92B00;
  }

  v114 = [v95 encryptedValues];
  v115 = MEMORY[0x21CE91FC0](0x6974616E696D6F6ELL, 0xEE00657461446E6FLL);
  v116 = [v114 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v116)
  {
    v234 = v116;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd, &_sSo13CKRecordValue_pMR);
    v117 = v192;
    v118 = swift_dynamicCast();
    v227(v117, v118 ^ 1u, 1, v100);
    if (v103(v117, 1, v100) != 1)
    {
      (*(v102 + 32))(v219, v117, v100);
      goto LABEL_92;
    }
  }

  else
  {
    v117 = v192;
    v227(v192, 1, 1, v100);
  }

  static Date.distantPast.getter();
  if (v103(v117, 1, v100) != 1)
  {
    outlined destroy of UTType?(v117, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

LABEL_92:
  v119 = [v95 encryptedValues];
  v120 = MEMORY[0x21CE91FC0](0xD000000000000010, 0x8000000216585D90);
  v121 = [v119 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v121)
  {
    v234 = v121;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd, &_sSo13CKRecordValue_pMR);
    v122 = v222;
    v123 = swift_dynamicCast() ^ 1;
    v124 = v122;
  }

  else
  {
    v124 = v222;
    v123 = 1;
  }

  v227(v124, v123, 1, v100);
  v125 = v208;
  v126 = [v95 encryptedValues];
  v127 = MEMORY[0x21CE91FC0](0x696472616F626E6FLL, 0xEE0065746144676ELL);
  v128 = [v126 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v128)
  {
    v234 = v128;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd, &_sSo13CKRecordValue_pMR);
    v129 = v195;
    v130 = swift_dynamicCast();
    v227(v129, v130 ^ 1u, 1, v100);
    if (v225(v129, 1, v100) != 1)
    {
      (*(v102 + 32))(v220, v129, v100);
      goto LABEL_101;
    }
  }

  else
  {
    v129 = v195;
    v227(v195, 1, 1, v100);
  }

  static Date.distantPast.getter();
  if (v225(v129, 1, v100) != 1)
  {
    outlined destroy of UTType?(v129, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

LABEL_101:
  v131 = [v95 encryptedValues];
  v132 = MEMORY[0x21CE91FC0](0xD000000000000023, 0x8000000216585DB0);
  v133 = [v131 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v133)
  {
    v234 = v133;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd, &_sSo13CKRecordValue_pMR);
    v134 = v199;
    v135 = swift_dynamicCast();
    v227(v134, v135 ^ 1u, 1, v100);
    v136 = v225;
    if (v225(v134, 1, v100) != 1)
    {
      (*(v102 + 32))(v221, v134, v100);
      goto LABEL_107;
    }
  }

  else
  {
    v134 = v199;
    v227(v199, 1, 1, v100);
    v136 = v225;
  }

  static Date.distantPast.getter();
  if (v136(v134, 1, v100) != 1)
  {
    outlined destroy of UTType?(v134, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

LABEL_107:
  v137 = [v95 encryptedValues];
  v138 = MEMORY[0x21CE91FC0](0xD000000000000021, 0x80000002165842C0);
  v139 = [v137 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v139)
  {
    v234 = v139;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd, &_sSo13CKRecordValue_pMR);
    v140 = v223;
    v141 = swift_dynamicCast() ^ 1;
    v142 = v140;
  }

  else
  {
    v142 = v223;
    v141 = 1;
  }

  v227(v142, v141, 1, v100);
  v143 = [v95 encryptedValues];
  v144 = MEMORY[0x21CE91FC0](0xD000000000000020, 0x80000002165842F0);
  v145 = [v143 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v145)
  {
    v234 = v145;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd, &_sSo13CKRecordValue_pMR);
    v146 = v214;
    v147 = swift_dynamicCast() ^ 1;
    v148 = v146;
  }

  else
  {
    v148 = v214;
    v147 = 1;
  }

  v227(v148, v147, 1, v100);
  v149 = [v95 encryptedValues];
  v150 = MEMORY[0x21CE91FC0](0xD000000000000018, 0x8000000216584320);
  v151 = [v149 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v151)
  {
    v234 = v151;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd, &_sSo13CKRecordValue_pMR);
    v152 = v215;
    v153 = swift_dynamicCast() ^ 1;
    v154 = v152;
  }

  else
  {
    v154 = v215;
    v153 = 1;
  }

  v227(v154, v153, 1, v100);
  v155 = [v95 encryptedValues];
  v156 = MEMORY[0x21CE91FC0](0xD000000000000010, 0x8000000216584340);
  v157 = [v155 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v157)
  {
    v234 = v157;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd, &_sSo13CKRecordValue_pMR);
    v158 = v216;
    v159 = swift_dynamicCast() ^ 1;
    v160 = v158;
  }

  else
  {
    v160 = v216;
    v159 = 1;
  }

  v227(v160, v159, 1, v100);
  v161 = v209;
  v162 = [v95 encryptedValues];
  v163 = MEMORY[0x21CE91FC0](0x69746172656E6567, 0xEA00000000006E6FLL);
  v164 = [v162 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v164 && (v230 = v164, __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13CKRecordValue_pMd, &_sSo13CKRecordValue_pMR), (swift_dynamicCast() & 1) != 0))
  {
    v165 = v235;
    v227 = v234;
  }

  else
  {
    swift_beginAccess();
    v165 = qword_27CA92B00;
    v227 = static CloudDevice.nilStr;
  }

  v230 = 0;
  v231 = 0xE000000000000000;
  _StringGuts.grow(_:)(491);
  MEMORY[0x21CE92100](540697705, 0xE400000000000000);
  MEMORY[0x21CE92100](v125, v161);

  MEMORY[0x21CE92100](0x496563697665640ALL, 0xEB00000000203A44);
  MEMORY[0x21CE92100](v206, v105);

  MEMORY[0x21CE92100](0x49656C646E75620ALL, 0xEB00000000203A44);
  MEMORY[0x21CE92100](v204, v205);

  MEMORY[0x21CE92100](0xD000000000000017, 0x8000000216585E20);
  lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
  v166 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x21CE92100](v166);

  MEMORY[0x21CE92100](0x203A656D616E0ALL, 0xE700000000000000);
  MEMORY[0x21CE92100](v200, v201);

  MEMORY[0x21CE92100](0xD000000000000010, 0x8000000216585E40);
  MEMORY[0x21CE92100](v197, v198);

  MEMORY[0x21CE92100](0xD000000000000011, 0x8000000216585E60);
  v229 = v196;
  v167 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x21CE92100](v167);

  MEMORY[0x21CE92100](0xD000000000000011, 0x8000000216585E80);
  MEMORY[0x21CE92100](v193, v194);

  MEMORY[0x21CE92100](0xD000000000000015, 0x8000000216585EA0);
  v168 = MEMORY[0x21CE922B0](v228, MEMORY[0x277D837D0]);
  v170 = v169;

  MEMORY[0x21CE92100](v168, v170);

  MEMORY[0x21CE92100](0xD000000000000014, 0x8000000216585EC0);
  v171 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x21CE92100](v171);

  MEMORY[0x21CE92100](0xD000000000000016, 0x8000000216585EE0);
  v172 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x21CE92100](v172);

  MEMORY[0x21CE92100](0xD000000000000015, 0x8000000216585F00);
  MEMORY[0x21CE92100](v207, v210);

  MEMORY[0x21CE92100](0xD000000000000011, 0x8000000216585F20);
  v173 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x21CE92100](v173);

  MEMORY[0x21CE92100](0xD000000000000013, 0x8000000216585F40);
  v174 = v100;
  v175 = v211;
  outlined init with copy of DateInterval?(v222, v211, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v176 = String.init<A>(describing:)();
  MEMORY[0x21CE92100](v176);

  MEMORY[0x21CE92100](0xD000000000000011, 0x8000000216585F60);
  v177 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x21CE92100](v177);

  MEMORY[0x21CE92100](0xD000000000000015, 0x8000000216585F80);
  MEMORY[0x21CE92100](v227, v165);

  MEMORY[0x21CE92100](0xD000000000000026, 0x8000000216585FA0);
  v178 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x21CE92100](v178);

  MEMORY[0x21CE92100](0xD000000000000024, 0x8000000216585FD0);
  outlined init with copy of DateInterval?(v223, v175, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v179 = String.init<A>(describing:)();
  MEMORY[0x21CE92100](v179);

  MEMORY[0x21CE92100](0xD000000000000041, 0x8000000216586000);
  v180 = v214;
  outlined init with copy of DateInterval?(v214, v175, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v181 = String.init<A>(describing:)();
  MEMORY[0x21CE92100](v181);

  MEMORY[0x21CE92100](0xD00000000000001BLL, 0x8000000216586050);
  v182 = v215;
  outlined init with copy of DateInterval?(v215, v175, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v183 = String.init<A>(describing:)();
  MEMORY[0x21CE92100](v183);

  MEMORY[0x21CE92100](0xD000000000000013, 0x8000000216586070);
  v184 = v216;
  outlined init with copy of DateInterval?(v216, v175, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v185 = String.init<A>(describing:)();
  MEMORY[0x21CE92100](v185);

  outlined consume of Data._Representation(v203, v202);
  v186 = v230;
  v187 = *(v213 + 8);
  v187(v221, v174);
  v187(v220, v174);
  v187(v219, v174);
  v187(v218, v174);
  v187(v217, v174);
  v187(v224, v174);
  outlined destroy of UTType?(v184, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  outlined destroy of UTType?(v182, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  outlined destroy of UTType?(v180, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  outlined destroy of UTType?(v223, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  outlined destroy of UTType?(v222, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  return v186;
}