unint64_t sub_1D30DCBD4()
{
  result = qword_1EE3139F0;
  if (!qword_1EE3139F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE3139F0);
  }

  return result;
}

void sub_1D30DCCA0(uint64_t a1, unint64_t a2)
{
  if (qword_1EE3152C8 != -1)
  {
    swift_once();
  }

  v5 = sub_1D30E8B3C();
  __swift_project_value_buffer(v5, qword_1EE314B60);
  v6 = sub_1D30E928C();

  v7 = sub_1D30E8B1C();

  if (os_log_type_enabled(v7, v6))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v25 = v9;
    *v8 = 136446210;
    *(v8 + 4) = sub_1D2FFEA04(a1, a2, &v25);
    _os_log_impl(&dword_1D2FD9000, v7, v6, "Main app record for bundle ID: %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x1D38B3760](v9, -1, -1);
    MEMORY[0x1D38B3760](v8, -1, -1);
  }

  sub_1D2FF1494(0, &qword_1EC74AFF8, 0x1E6963620);

  v10 = sub_1D30C281C(a1, a2, 1);
  if (!v2)
  {
    v11 = v10;
    objc_opt_self();
    v12 = swift_dynamicCastObjCClass();
    if (v12)
    {
      v11 = v11;
      v13 = sub_1D30E927C();

      v14 = sub_1D30E8B1C();

      if (os_log_type_enabled(v14, v13))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v25 = v16;
        *v15 = 136446210;
        *(v15 + 4) = sub_1D2FFEA04(a1, a2, &v25);
        _os_log_impl(&dword_1D2FD9000, v14, v13, "The bundle with the ID “%{public}s” represents an extension.", v15, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v16);
        MEMORY[0x1D38B3760](v16, -1, -1);
        MEMORY[0x1D38B3760](v15, -1, -1);
      }

      v17 = [v12 containingBundleRecord];
      if (!v17)
      {
        type metadata accessor for HelperError(0);
        sub_1D3045A34(&qword_1EE313E48, type metadata accessor for HelperError, &unk_1D30EF3D8);
        swift_allocError();
        v20 = v19;
        v21 = [v12 effectiveBundleIdentifier];
        v22 = sub_1D30E908C();
        v24 = v23;

        *v20 = v22;
        v20[1] = v24;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();

LABEL_14:
        return;
      }

      v18 = v17;

      v11 = v18;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      return;
    }

    type metadata accessor for HelperError(0);
    sub_1D3045A34(&qword_1EE313E48, type metadata accessor for HelperError, &unk_1D30EF3D8);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    goto LABEL_14;
  }
}

void sub_1D30DD158(uint64_t a1)
{
  sub_1D30DD580();
  if (v1 <= 0x3F)
  {
    sub_1D30DD6D8(319, &qword_1EE3140C8, "forAppWithBundleID teamID bypassLocalCache ");
    if (v2 <= 0x3F)
    {
      sub_1D2FF195C();
      if (v3 <= 0x3F)
      {
        sub_1D30DD5B0(319);
        if (v4 <= 0x3F)
        {
          sub_1D30DD628(319);
          if (v5 <= 0x3F)
          {
            sub_1D30DD6A8();
            if (v6 <= 0x3F)
            {
              sub_1D30DD6D8(319, &qword_1EE314098, " teamID includingUnavailable ");
              if (v7 <= 0x3F)
              {
                sub_1D30DD758(319);
                if (v8 <= 0x3F)
                {
                  sub_1D30DD880();
                  if (v9 <= 0x3F)
                  {
                    sub_1D30DDBCC(319, &qword_1EE314038, MEMORY[0x1E69E6370], &type metadata for AssetPackRecord.GlobalID, " ofAssetPackWithGlobalID ");
                    if (v10 <= 0x3F)
                    {
                      sub_1D30DD8B0(319);
                      if (v11 <= 0x3F)
                      {
                        sub_1D30DE128(319, &qword_1EE3140A8, &qword_1EE3140A0, MEMORY[0x1E69E6720]);
                        if (v12 <= 0x3F)
                        {
                          sub_1D30DD930(319);
                          if (v13 <= 0x3F)
                          {
                            sub_1D30DDA4C(319);
                            if (v14 <= 0x3F)
                            {
                              sub_1D30DDAC4();
                              if (v15 <= 0x3F)
                              {
                                sub_1D30DDAF4(319, &qword_1EE314030, sub_1D30DDB40);
                                if (v16 <= 0x3F)
                                {
                                  sub_1D30DDBCC(319, &qword_1EE315268, MEMORY[0x1E6969080], MEMORY[0x1E69E76D8], " forLicenseWithID ");
                                  if (v17 <= 0x3F)
                                  {
                                    sub_1D30DDBCC(319, qword_1EE3146C0, &type metadata for ErrorCoding, MEMORY[0x1E69E76D8], " forLicenseWithID ");
                                    if (v18 <= 0x3F)
                                    {
                                      sub_1D30DDB9C();
                                      if (v19 <= 0x3F)
                                      {
                                        sub_1D30DDBCC(319, &qword_1EE314420, &type metadata for CertificateRole, MEMORY[0x1E6969080], "forRole from ");
                                        if (v20 <= 0x3F)
                                        {
                                          sub_1D30DDC24();
                                          if (v21 <= 0x3F)
                                          {
                                            sub_1D30DDC54();
                                            if (v22 <= 0x3F)
                                            {
                                              sub_1D30DDC84(319);
                                              if (v23 <= 0x3F)
                                              {
                                                sub_1D30DDD0C(319);
                                                if (v24 <= 0x3F)
                                                {
                                                  sub_1D30DDE48(319);
                                                  if (v25 <= 0x3F)
                                                  {
                                                    sub_1D30DDAF4(319, &qword_1EE3140F8, MEMORY[0x1E69E83A8]);
                                                    if (v26 <= 0x3F)
                                                    {
                                                      sub_1D30DDED0(319);
                                                      if (v27 <= 0x3F)
                                                      {
                                                        sub_1D30DDF58(319);
                                                        if (v28 <= 0x3F)
                                                        {
                                                          sub_1D30DDFC4(319);
                                                          if (v29 <= 0x3F)
                                                          {
                                                            sub_1D30DE0F8();
                                                            if (v30 <= 0x3F)
                                                            {
                                                              sub_1D30DE128(319, &qword_1EE314060, &qword_1EE314058, MEMORY[0x1E69E62F8]);
                                                              if (v31 <= 0x3F)
                                                              {
                                                                swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                                                              }
                                                            }
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1D30DD580()
{
  result = qword_1EE3140D8;
  if (!qword_1EE3140D8)
  {
    result = MEMORY[0x1E69E6158];
    atomic_store(MEMORY[0x1E69E6158], &qword_1EE3140D8);
  }

  return result;
}

void sub_1D30DD5B0(uint64_t a1)
{
  if (!qword_1EE3140C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC749310, &unk_1D30EF350);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE3140C0);
    }
  }
}

void sub_1D30DD628(uint64_t a1)
{
  if (!qword_1EE315280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC749310, &unk_1D30EF350);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EE315280);
    }
  }
}

uint64_t sub_1D30DD6A8()
{
  result = qword_1EE314048;
  if (!qword_1EE314048)
  {
    result = MEMORY[0x1E69E6370];
    atomic_store(MEMORY[0x1E69E6370], &qword_1EE314048);
  }

  return result;
}

void sub_1D30DD6D8(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC749310, &unk_1D30EF350);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata3, a2);
    }
  }
}

void sub_1D30DD758(uint64_t a1)
{
  if (!qword_1EE314440)
  {
    MEMORY[0x1EEE9AC00](a1);
    type metadata accessor for AssetPackHost(255);
    sub_1D30E8D5C();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1EE314440);
    }
  }
}

ValueMetadata *sub_1D30DD880()
{
  result = qword_1EE314438;
  if (!qword_1EE314438)
  {
    result = &type metadata for AssetPackRecord.GlobalID;
    atomic_store(&type metadata for AssetPackRecord.GlobalID, &qword_1EE314438);
  }

  return result;
}

void sub_1D30DD8B0(uint64_t a1)
{
  if (!qword_1EE314448[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC74AD18, &qword_1D30F6358);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, qword_1EE314448);
    }
  }
}

void sub_1D30DD930(uint64_t a1)
{
  if (!qword_1EE3140B0)
  {
    MEMORY[0x1EEE9AC00](a1);
    sub_1D30E8A4C();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1EE3140B0);
    }
  }
}

void sub_1D30DDA4C(uint64_t a1)
{
  if (!qword_1EE314078)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC74A460, &qword_1D30F5660);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE314078);
    }
  }
}

uint64_t sub_1D30DDAC4()
{
  result = qword_1EE314040;
  if (!qword_1EE314040)
  {
    result = MEMORY[0x1E69E6370];
    atomic_store(MEMORY[0x1E69E6370], &qword_1EE314040);
  }

  return result;
}

void sub_1D30DDAF4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D30DDB40(uint64_t a1)
{
  if (!qword_1EE314028)
  {
    sub_1D3045AD0();
    v1 = sub_1D30E924C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE314028);
    }
  }
}

uint64_t sub_1D30DDB9C()
{
  result = qword_1EE314018;
  if (!qword_1EE314018)
  {
    result = MEMORY[0x1E69E76D8];
    atomic_store(MEMORY[0x1E69E76D8], &qword_1EE314018);
  }

  return result;
}

void sub_1D30DDBCC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

ValueMetadata *sub_1D30DDC24()
{
  result = qword_1EE314418;
  if (!qword_1EE314418)
  {
    result = &type metadata for CertificateRole;
    atomic_store(&type metadata for CertificateRole, &qword_1EE314418);
  }

  return result;
}

uint64_t sub_1D30DDC54()
{
  result = qword_1EE3140D0;
  if (!qword_1EE3140D0)
  {
    result = MEMORY[0x1E69E6158];
    atomic_store(MEMORY[0x1E69E6158], &qword_1EE3140D0);
  }

  return result;
}

void sub_1D30DDC84(uint64_t a1)
{
  if (!qword_1EE3140F0)
  {
    sub_1D30E8D9C();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC74A3C8, &qword_1D30F5650);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EE3140F0);
    }
  }
}

void sub_1D30DDD0C(uint64_t a1)
{
  if (!qword_1EE3140E8)
  {
    MEMORY[0x1EEE9AC00](a1);
    sub_1D30E8D9C();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC749310, &unk_1D30EF350);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC74A3C8, &qword_1D30F5650);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1EE3140E8);
    }
  }
}

void sub_1D30DDE48(uint64_t a1)
{
  if (!qword_1EE314100)
  {
    sub_1D30E8D9C();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC749310, &unk_1D30EF350);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EE314100);
    }
  }
}

void sub_1D30DDED0(uint64_t a1)
{
  if (!qword_1EE315290)
  {
    sub_1D30E8D9C();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC749310, &unk_1D30EF350);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EE315290);
    }
  }
}

void sub_1D30DDF58(uint64_t a1)
{
  if (!qword_1EE314108[0])
  {
    sub_1D30E8D9C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, qword_1EE314108);
    }
  }
}

void sub_1D30DDFC4(uint64_t a1)
{
  if (!qword_1EE315288)
  {
    MEMORY[0x1EEE9AC00](a1);
    sub_1D30E8D5C();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC749310, &unk_1D30EF350);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1EE315288);
    }
  }
}

uint64_t sub_1D30DE0F8()
{
  result = qword_1EE314050;
  if (!qword_1EE314050)
  {
    result = MEMORY[0x1E69E6370];
    atomic_store(MEMORY[0x1E69E6370], &qword_1EE314050);
  }

  return result;
}

void sub_1D30DE128(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    sub_1D30DEA38(0, a3, MEMORY[0x1E69E6158], a4);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1D30DE180(uint64_t a1)
{
  sub_1D30DE4C8(319);
  if (v1 <= 0x3F)
  {
    sub_1D30DEA38(319, &qword_1EE315278, MEMORY[0x1E6969080], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Helper.URLRequestResult(319);
      if (v3 <= 0x3F)
      {
        sub_1D30DE534(319, qword_1EE3150E8, type metadata accessor for Helper.PathToManifestLookupResult, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          sub_1D30DE534(319, &qword_1EE314070, type metadata accessor for AssetPackRecord.StaticRepresentation, MEMORY[0x1E69E62F8]);
          if (v5 <= 0x3F)
          {
            type metadata accessor for AssetPackRecord.StaticRepresentation(319);
            if (v6 <= 0x3F)
            {
              sub_1D30DE598();
              if (v7 <= 0x3F)
              {
                sub_1D30DEA38(319, &qword_1EE314390, &type metadata for AppLicenseDelivery.Request.StaticRepresentation, MEMORY[0x1E69E6720]);
                if (v8 <= 0x3F)
                {
                  sub_1D30DE534(319, &qword_1EE314090, type metadata accessor for LicenseRecord.StaticRepresentation, MEMORY[0x1E69E62F8]);
                  if (v9 <= 0x3F)
                  {
                    type metadata accessor for LicenseRecord.StaticRepresentation(319);
                    if (v10 <= 0x3F)
                    {
                      sub_1D30DEA38(319, &qword_1EE314080, &type metadata for AppReviewRecord.StaticRepresentation, MEMORY[0x1E69E62F8]);
                      if (v11 <= 0x3F)
                      {
                        sub_1D30DE534(319, qword_1EE315050, type metadata accessor for Helper.PathInAssetPackLookupResult, MEMORY[0x1E69E6720]);
                        if (v12 <= 0x3F)
                        {
                          sub_1D30DE534(319, qword_1EE315180, type metadata accessor for Helper.PathForAppLookupResult, MEMORY[0x1E69E6720]);
                          if (v13 <= 0x3F)
                          {
                            type metadata accessor for Helper.PathToStagingDirectoryLookupResult(319);
                            if (v14 <= 0x3F)
                            {
                              sub_1D30E8D9C();
                              if (v15 <= 0x3F)
                              {
                                sub_1D30DE534(319, &qword_1EE314068, MEMORY[0x1E69E8380], MEMORY[0x1E69E62F8]);
                                if (v16 <= 0x3F)
                                {
                                  swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1D30DE4C8(uint64_t a1)
{
  if (!qword_1EE315270)
  {
    type metadata accessor for ManifestDataSource(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE315270);
    }
  }
}

void sub_1D30DE534(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

ValueMetadata *sub_1D30DE598()
{
  result = qword_1EE314398;
  if (!qword_1EE314398)
  {
    result = &type metadata for AppLicenseDelivery.Keys;
    atomic_store(&type metadata for AppLicenseDelivery.Keys, &qword_1EE314398);
  }

  return result;
}

uint64_t sub_1D30DE5F0(uint64_t a1)
{
  result = sub_1D30E852C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1D30DE6AC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t), unint64_t *a5, uint64_t a6, uint64_t (*a7)(void, uint64_t))
{
  a4(319, a2, a3);
  if (v10 <= 0x3F)
  {
    sub_1D30DEA38(319, a5, a6, a7);
    if (v11 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D30DE77C(uint64_t a1)
{
  sub_1D30E8D9C();
  if (v1 <= 0x3F)
  {
    sub_1D30DEA38(319, &qword_1EE3140A0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_165Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D30E8D9C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_index_166Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D30E8D9C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

void sub_1D30DEA38(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t get_enum_tag_for_layout_string_29ManagedBackgroundAssetsHelper0D0C15PermissionErrorV6Reason33_ED623D7967CBC4B05F3678C49B776590LLO(uint64_t a1)
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

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1D30DEAD0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D30DEB18(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_1D30DEB5C(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

double sub_1D30DEB84(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74AD38, qword_1D30F66A8);
  sub_1D2FDCD1C(v1, v2, v3);

  return result;
}

uint64_t sub_1D30DEBD0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  v4 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v4;

  return a1;
}

uint64_t sub_1D30DEC0C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D30DEC54(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

uint64_t sub_1D30DF020(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xCF)
  {
    goto LABEL_17;
  }

  if (a2 + 49 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 49) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 49;
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

      return (*a1 | (v4 << 8)) - 49;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 49;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x32;
  v8 = v6 - 50;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1D30DF0B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 49 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 49) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xCF)
  {
    v4 = 0;
  }

  if (a2 > 0xCE)
  {
    v5 = ((a2 - 207) >> 8) + 1;
    *result = a2 + 49;
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
    *result = a2 + 49;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D30DF494()
{
  result = qword_1EC74AD40;
  if (!qword_1EC74AD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AD40);
  }

  return result;
}

unint64_t sub_1D30DF4EC()
{
  result = qword_1EC74AD48;
  if (!qword_1EC74AD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AD48);
  }

  return result;
}

unint64_t sub_1D30DF544()
{
  result = qword_1EC74AD50;
  if (!qword_1EC74AD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AD50);
  }

  return result;
}

unint64_t sub_1D30DF59C()
{
  result = qword_1EC74AD58;
  if (!qword_1EC74AD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AD58);
  }

  return result;
}

unint64_t sub_1D30DF5F4()
{
  result = qword_1EC74AD60;
  if (!qword_1EC74AD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AD60);
  }

  return result;
}

unint64_t sub_1D30DF64C()
{
  result = qword_1EC74AD68;
  if (!qword_1EC74AD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AD68);
  }

  return result;
}

unint64_t sub_1D30DF6A4()
{
  result = qword_1EC74AD70;
  if (!qword_1EC74AD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AD70);
  }

  return result;
}

unint64_t sub_1D30DF6FC()
{
  result = qword_1EC74AD78;
  if (!qword_1EC74AD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AD78);
  }

  return result;
}

unint64_t sub_1D30DF754()
{
  result = qword_1EC74AD80;
  if (!qword_1EC74AD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AD80);
  }

  return result;
}

unint64_t sub_1D30DF7AC()
{
  result = qword_1EC74AD88;
  if (!qword_1EC74AD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AD88);
  }

  return result;
}

unint64_t sub_1D30DF804()
{
  result = qword_1EC74AD90;
  if (!qword_1EC74AD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AD90);
  }

  return result;
}

unint64_t sub_1D30DF85C()
{
  result = qword_1EC74AD98;
  if (!qword_1EC74AD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AD98);
  }

  return result;
}

unint64_t sub_1D30DF8B4()
{
  result = qword_1EC74ADA0;
  if (!qword_1EC74ADA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74ADA0);
  }

  return result;
}

unint64_t sub_1D30DF90C()
{
  result = qword_1EC74ADA8;
  if (!qword_1EC74ADA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74ADA8);
  }

  return result;
}

unint64_t sub_1D30DF964()
{
  result = qword_1EC74ADB0;
  if (!qword_1EC74ADB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74ADB0);
  }

  return result;
}

unint64_t sub_1D30DF9BC()
{
  result = qword_1EC74ADB8;
  if (!qword_1EC74ADB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74ADB8);
  }

  return result;
}

unint64_t sub_1D30DFA14()
{
  result = qword_1EC74ADC0;
  if (!qword_1EC74ADC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74ADC0);
  }

  return result;
}

unint64_t sub_1D30DFA6C()
{
  result = qword_1EC74ADC8;
  if (!qword_1EC74ADC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74ADC8);
  }

  return result;
}

unint64_t sub_1D30DFAC4()
{
  result = qword_1EC74ADD0;
  if (!qword_1EC74ADD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74ADD0);
  }

  return result;
}

unint64_t sub_1D30DFB1C()
{
  result = qword_1EC74ADD8;
  if (!qword_1EC74ADD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74ADD8);
  }

  return result;
}

unint64_t sub_1D30DFB74()
{
  result = qword_1EC74ADE0;
  if (!qword_1EC74ADE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74ADE0);
  }

  return result;
}

unint64_t sub_1D30DFBCC()
{
  result = qword_1EC74ADE8;
  if (!qword_1EC74ADE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74ADE8);
  }

  return result;
}

unint64_t sub_1D30DFC24()
{
  result = qword_1EC74ADF0;
  if (!qword_1EC74ADF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74ADF0);
  }

  return result;
}

unint64_t sub_1D30DFC7C()
{
  result = qword_1EC74ADF8;
  if (!qword_1EC74ADF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74ADF8);
  }

  return result;
}

unint64_t sub_1D30DFCD4()
{
  result = qword_1EC74AE00;
  if (!qword_1EC74AE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AE00);
  }

  return result;
}

unint64_t sub_1D30DFD2C()
{
  result = qword_1EC74AE08;
  if (!qword_1EC74AE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AE08);
  }

  return result;
}

unint64_t sub_1D30DFD84()
{
  result = qword_1EC74AE10;
  if (!qword_1EC74AE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AE10);
  }

  return result;
}

unint64_t sub_1D30DFDDC()
{
  result = qword_1EC74AE18;
  if (!qword_1EC74AE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AE18);
  }

  return result;
}

unint64_t sub_1D30DFE34()
{
  result = qword_1EC74AE20;
  if (!qword_1EC74AE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AE20);
  }

  return result;
}

unint64_t sub_1D30DFE8C()
{
  result = qword_1EC74AE28;
  if (!qword_1EC74AE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AE28);
  }

  return result;
}

unint64_t sub_1D30DFEE4()
{
  result = qword_1EC74AE30;
  if (!qword_1EC74AE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AE30);
  }

  return result;
}

unint64_t sub_1D30DFF3C()
{
  result = qword_1EC74AE38;
  if (!qword_1EC74AE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AE38);
  }

  return result;
}

unint64_t sub_1D30DFF94()
{
  result = qword_1EC74AE40;
  if (!qword_1EC74AE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AE40);
  }

  return result;
}

unint64_t sub_1D30DFFEC()
{
  result = qword_1EC74AE48;
  if (!qword_1EC74AE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AE48);
  }

  return result;
}

unint64_t sub_1D30E0044()
{
  result = qword_1EC74AE50;
  if (!qword_1EC74AE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AE50);
  }

  return result;
}

unint64_t sub_1D30E009C()
{
  result = qword_1EC74AE58;
  if (!qword_1EC74AE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AE58);
  }

  return result;
}

unint64_t sub_1D30E00F4()
{
  result = qword_1EC74AE60;
  if (!qword_1EC74AE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AE60);
  }

  return result;
}

unint64_t sub_1D30E014C()
{
  result = qword_1EC74AE68;
  if (!qword_1EC74AE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AE68);
  }

  return result;
}

unint64_t sub_1D30E01A4()
{
  result = qword_1EC74AE70;
  if (!qword_1EC74AE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AE70);
  }

  return result;
}

unint64_t sub_1D30E01FC()
{
  result = qword_1EC74AE78;
  if (!qword_1EC74AE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AE78);
  }

  return result;
}

unint64_t sub_1D30E0254()
{
  result = qword_1EC74AE80;
  if (!qword_1EC74AE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AE80);
  }

  return result;
}

unint64_t sub_1D30E02AC()
{
  result = qword_1EC74AE88;
  if (!qword_1EC74AE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AE88);
  }

  return result;
}

unint64_t sub_1D30E0304()
{
  result = qword_1EC74AE90;
  if (!qword_1EC74AE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AE90);
  }

  return result;
}

unint64_t sub_1D30E035C()
{
  result = qword_1EC74AE98;
  if (!qword_1EC74AE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AE98);
  }

  return result;
}

unint64_t sub_1D30E03B4()
{
  result = qword_1EC74AEA0;
  if (!qword_1EC74AEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AEA0);
  }

  return result;
}

unint64_t sub_1D30E040C()
{
  result = qword_1EC74AEA8;
  if (!qword_1EC74AEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AEA8);
  }

  return result;
}

unint64_t sub_1D30E0464()
{
  result = qword_1EC74AEB0;
  if (!qword_1EC74AEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AEB0);
  }

  return result;
}

unint64_t sub_1D30E04BC()
{
  result = qword_1EC74AEB8;
  if (!qword_1EC74AEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AEB8);
  }

  return result;
}

unint64_t sub_1D30E0514()
{
  result = qword_1EC74AEC0;
  if (!qword_1EC74AEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AEC0);
  }

  return result;
}

unint64_t sub_1D30E056C()
{
  result = qword_1EC74AEC8;
  if (!qword_1EC74AEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AEC8);
  }

  return result;
}

unint64_t sub_1D30E05C4()
{
  result = qword_1EC74AED0;
  if (!qword_1EC74AED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AED0);
  }

  return result;
}

unint64_t sub_1D30E061C()
{
  result = qword_1EC74AED8;
  if (!qword_1EC74AED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AED8);
  }

  return result;
}

unint64_t sub_1D30E0674()
{
  result = qword_1EC74AEE0;
  if (!qword_1EC74AEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AEE0);
  }

  return result;
}

unint64_t sub_1D30E06CC()
{
  result = qword_1EC74AEE8;
  if (!qword_1EC74AEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AEE8);
  }

  return result;
}

unint64_t sub_1D30E0724()
{
  result = qword_1EC74AEF0;
  if (!qword_1EC74AEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AEF0);
  }

  return result;
}

unint64_t sub_1D30E077C()
{
  result = qword_1EC74AEF8;
  if (!qword_1EC74AEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AEF8);
  }

  return result;
}

unint64_t sub_1D30E07D4()
{
  result = qword_1EC74AF00;
  if (!qword_1EC74AF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AF00);
  }

  return result;
}

unint64_t sub_1D30E082C()
{
  result = qword_1EC74AF08;
  if (!qword_1EC74AF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AF08);
  }

  return result;
}

unint64_t sub_1D30E0884()
{
  result = qword_1EC74AF10;
  if (!qword_1EC74AF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AF10);
  }

  return result;
}

unint64_t sub_1D30E08DC()
{
  result = qword_1EC74AF18;
  if (!qword_1EC74AF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AF18);
  }

  return result;
}

unint64_t sub_1D30E0934()
{
  result = qword_1EC74AF20;
  if (!qword_1EC74AF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AF20);
  }

  return result;
}

unint64_t sub_1D30E098C()
{
  result = qword_1EC74AF28;
  if (!qword_1EC74AF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AF28);
  }

  return result;
}

unint64_t sub_1D30E09E4()
{
  result = qword_1EC74AF30;
  if (!qword_1EC74AF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AF30);
  }

  return result;
}

unint64_t sub_1D30E0A3C()
{
  result = qword_1EC74AF38;
  if (!qword_1EC74AF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AF38);
  }

  return result;
}

unint64_t sub_1D30E0A94()
{
  result = qword_1EC74AF40;
  if (!qword_1EC74AF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AF40);
  }

  return result;
}

unint64_t sub_1D30E0AEC()
{
  result = qword_1EC74AF48;
  if (!qword_1EC74AF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AF48);
  }

  return result;
}

unint64_t sub_1D30E0B44()
{
  result = qword_1EC74AF50;
  if (!qword_1EC74AF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AF50);
  }

  return result;
}

unint64_t sub_1D30E0B9C()
{
  result = qword_1EC74AF58;
  if (!qword_1EC74AF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AF58);
  }

  return result;
}

unint64_t sub_1D30E0BF4()
{
  result = qword_1EC74AF60;
  if (!qword_1EC74AF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AF60);
  }

  return result;
}

unint64_t sub_1D30E0C4C()
{
  result = qword_1EC74AF68;
  if (!qword_1EC74AF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AF68);
  }

  return result;
}

unint64_t sub_1D30E0CA4()
{
  result = qword_1EC74AF70;
  if (!qword_1EC74AF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AF70);
  }

  return result;
}

unint64_t sub_1D30E0CFC()
{
  result = qword_1EC74AF78;
  if (!qword_1EC74AF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AF78);
  }

  return result;
}

unint64_t sub_1D30E0D54()
{
  result = qword_1EC74AF80;
  if (!qword_1EC74AF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AF80);
  }

  return result;
}

unint64_t sub_1D30E0DAC()
{
  result = qword_1EC74AF88;
  if (!qword_1EC74AF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AF88);
  }

  return result;
}

unint64_t sub_1D30E0E04()
{
  result = qword_1EC74AF90;
  if (!qword_1EC74AF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AF90);
  }

  return result;
}

unint64_t sub_1D30E0E5C()
{
  result = qword_1EC74AF98;
  if (!qword_1EC74AF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AF98);
  }

  return result;
}

unint64_t sub_1D30E0EB4()
{
  result = qword_1EC74AFA0;
  if (!qword_1EC74AFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AFA0);
  }

  return result;
}

unint64_t sub_1D30E0F0C()
{
  result = qword_1EC74AFA8;
  if (!qword_1EC74AFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AFA8);
  }

  return result;
}

unint64_t sub_1D30E0F64()
{
  result = qword_1EC74AFB0;
  if (!qword_1EC74AFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AFB0);
  }

  return result;
}

unint64_t sub_1D30E0FBC()
{
  result = qword_1EC74AFB8;
  if (!qword_1EC74AFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AFB8);
  }

  return result;
}

unint64_t sub_1D30E1014()
{
  result = qword_1EC74AFC0;
  if (!qword_1EC74AFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AFC0);
  }

  return result;
}

unint64_t sub_1D30E106C()
{
  result = qword_1EC74AFC8;
  if (!qword_1EC74AFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AFC8);
  }

  return result;
}

unint64_t sub_1D30E10C4()
{
  result = qword_1EC74AFD0;
  if (!qword_1EC74AFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AFD0);
  }

  return result;
}

unint64_t sub_1D30E111C()
{
  result = qword_1EC74AFD8;
  if (!qword_1EC74AFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AFD8);
  }

  return result;
}

unint64_t sub_1D30E1174()
{
  result = qword_1EE314F30;
  if (!qword_1EE314F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314F30);
  }

  return result;
}

unint64_t sub_1D30E11CC()
{
  result = qword_1EE314F38;
  if (!qword_1EE314F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314F38);
  }

  return result;
}

unint64_t sub_1D30E1224()
{
  result = qword_1EE314EF0;
  if (!qword_1EE314EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314EF0);
  }

  return result;
}

unint64_t sub_1D30E127C()
{
  result = qword_1EE314EF8;
  if (!qword_1EE314EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314EF8);
  }

  return result;
}

unint64_t sub_1D30E12D4()
{
  result = qword_1EE314D90;
  if (!qword_1EE314D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314D90);
  }

  return result;
}

unint64_t sub_1D30E132C()
{
  result = qword_1EE314D98;
  if (!qword_1EE314D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314D98);
  }

  return result;
}

unint64_t sub_1D30E1384()
{
  result = qword_1EE314CB0;
  if (!qword_1EE314CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314CB0);
  }

  return result;
}

unint64_t sub_1D30E13DC()
{
  result = qword_1EE314CB8;
  if (!qword_1EE314CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314CB8);
  }

  return result;
}

unint64_t sub_1D30E1434()
{
  result = qword_1EE314CF0;
  if (!qword_1EE314CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314CF0);
  }

  return result;
}

unint64_t sub_1D30E148C()
{
  result = qword_1EE314CF8;
  if (!qword_1EE314CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314CF8);
  }

  return result;
}

unint64_t sub_1D30E14E4()
{
  result = qword_1EE314CA0;
  if (!qword_1EE314CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314CA0);
  }

  return result;
}

unint64_t sub_1D30E153C()
{
  result = qword_1EE314CA8;
  if (!qword_1EE314CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314CA8);
  }

  return result;
}

unint64_t sub_1D30E1594()
{
  result = qword_1EE314C70;
  if (!qword_1EE314C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314C70);
  }

  return result;
}

unint64_t sub_1D30E15EC()
{
  result = qword_1EE314C78;
  if (!qword_1EE314C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314C78);
  }

  return result;
}

unint64_t sub_1D30E1644()
{
  result = qword_1EE314EB0;
  if (!qword_1EE314EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314EB0);
  }

  return result;
}

unint64_t sub_1D30E169C()
{
  result = qword_1EE314EB8;
  if (!qword_1EE314EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314EB8);
  }

  return result;
}

unint64_t sub_1D30E16F4()
{
  result = qword_1EE314E60;
  if (!qword_1EE314E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314E60);
  }

  return result;
}

unint64_t sub_1D30E174C()
{
  result = qword_1EE314E68;
  if (!qword_1EE314E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314E68);
  }

  return result;
}

unint64_t sub_1D30E17A4()
{
  result = qword_1EE314E00;
  if (!qword_1EE314E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314E00);
  }

  return result;
}

unint64_t sub_1D30E17FC()
{
  result = qword_1EE314E08;
  if (!qword_1EE314E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314E08);
  }

  return result;
}

unint64_t sub_1D30E1854()
{
  result = qword_1EE314C30;
  if (!qword_1EE314C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314C30);
  }

  return result;
}

unint64_t sub_1D30E18AC()
{
  result = qword_1EE314C38;
  if (!qword_1EE314C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314C38);
  }

  return result;
}

unint64_t sub_1D30E1904()
{
  result = qword_1EE314E40;
  if (!qword_1EE314E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314E40);
  }

  return result;
}

unint64_t sub_1D30E195C()
{
  result = qword_1EE314E48;
  if (!qword_1EE314E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314E48);
  }

  return result;
}

unint64_t sub_1D30E19B4()
{
  result = qword_1EE314D20;
  if (!qword_1EE314D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314D20);
  }

  return result;
}

unint64_t sub_1D30E1A0C()
{
  result = qword_1EE314D28;
  if (!qword_1EE314D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314D28);
  }

  return result;
}

unint64_t sub_1D30E1A64()
{
  result = qword_1EE314D50;
  if (!qword_1EE314D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314D50);
  }

  return result;
}

unint64_t sub_1D30E1ABC()
{
  result = qword_1EE314D58;
  if (!qword_1EE314D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314D58);
  }

  return result;
}

unint64_t sub_1D30E1B14()
{
  result = qword_1EE314C20;
  if (!qword_1EE314C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314C20);
  }

  return result;
}

unint64_t sub_1D30E1B6C()
{
  result = qword_1EE314C28;
  if (!qword_1EE314C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314C28);
  }

  return result;
}

unint64_t sub_1D30E1BC4()
{
  result = qword_1EE314D80;
  if (!qword_1EE314D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314D80);
  }

  return result;
}

unint64_t sub_1D30E1C1C()
{
  result = qword_1EE314D88;
  if (!qword_1EE314D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314D88);
  }

  return result;
}

unint64_t sub_1D30E1C74()
{
  result = qword_1EE314EC0;
  if (!qword_1EE314EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314EC0);
  }

  return result;
}

unint64_t sub_1D30E1CCC()
{
  result = qword_1EE314EC8;
  if (!qword_1EE314EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314EC8);
  }

  return result;
}

unint64_t sub_1D30E1D24()
{
  result = qword_1EE314CC0;
  if (!qword_1EE314CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314CC0);
  }

  return result;
}

unint64_t sub_1D30E1D7C()
{
  result = qword_1EE314CC8;
  if (!qword_1EE314CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314CC8);
  }

  return result;
}

unint64_t sub_1D30E1DD4()
{
  result = qword_1EE314E80;
  if (!qword_1EE314E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314E80);
  }

  return result;
}

unint64_t sub_1D30E1E2C()
{
  result = qword_1EE314E88;
  if (!qword_1EE314E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314E88);
  }

  return result;
}

unint64_t sub_1D30E1E84()
{
  result = qword_1EE314DB0;
  if (!qword_1EE314DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314DB0);
  }

  return result;
}

unint64_t sub_1D30E1EDC()
{
  result = qword_1EE314DB8;
  if (!qword_1EE314DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314DB8);
  }

  return result;
}

unint64_t sub_1D30E1F34()
{
  result = qword_1EE314C40;
  if (!qword_1EE314C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314C40);
  }

  return result;
}

unint64_t sub_1D30E1F8C()
{
  result = qword_1EE314C48;
  if (!qword_1EE314C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314C48);
  }

  return result;
}

unint64_t sub_1D30E1FE4()
{
  result = qword_1EE314ED0;
  if (!qword_1EE314ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314ED0);
  }

  return result;
}

unint64_t sub_1D30E203C()
{
  result = qword_1EE314ED8;
  if (!qword_1EE314ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314ED8);
  }

  return result;
}

unint64_t sub_1D30E2094()
{
  result = qword_1EE314C60;
  if (!qword_1EE314C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314C60);
  }

  return result;
}

unint64_t sub_1D30E20EC()
{
  result = qword_1EE314C68;
  if (!qword_1EE314C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314C68);
  }

  return result;
}

unint64_t sub_1D30E2144()
{
  result = qword_1EE314E20;
  if (!qword_1EE314E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314E20);
  }

  return result;
}

unint64_t sub_1D30E219C()
{
  result = qword_1EE314E28;
  if (!qword_1EE314E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314E28);
  }

  return result;
}

unint64_t sub_1D30E21F4()
{
  result = qword_1EE314C90;
  if (!qword_1EE314C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314C90);
  }

  return result;
}

unint64_t sub_1D30E224C()
{
  result = qword_1EE314C98;
  if (!qword_1EE314C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314C98);
  }

  return result;
}

unint64_t sub_1D30E22A4()
{
  result = qword_1EE314DC8;
  if (!qword_1EE314DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314DC8);
  }

  return result;
}

unint64_t sub_1D30E22FC()
{
  result = qword_1EE314DD0;
  if (!qword_1EE314DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314DD0);
  }

  return result;
}

unint64_t sub_1D30E2354()
{
  result = qword_1EE314F58;
  if (!qword_1EE314F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314F58);
  }

  return result;
}

unint64_t sub_1D30E23AC()
{
  result = qword_1EE314F60[0];
  if (!qword_1EE314F60[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE314F60);
  }

  return result;
}

unint64_t sub_1D30E2404()
{
  result = qword_1EE314E70;
  if (!qword_1EE314E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314E70);
  }

  return result;
}

unint64_t sub_1D30E245C()
{
  result = qword_1EE314E78;
  if (!qword_1EE314E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314E78);
  }

  return result;
}

unint64_t sub_1D30E24B4()
{
  result = qword_1EE314DA0;
  if (!qword_1EE314DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314DA0);
  }

  return result;
}

unint64_t sub_1D30E250C()
{
  result = qword_1EE314DA8;
  if (!qword_1EE314DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314DA8);
  }

  return result;
}

unint64_t sub_1D30E2564()
{
  result = qword_1EE314E30;
  if (!qword_1EE314E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314E30);
  }

  return result;
}

unint64_t sub_1D30E25BC()
{
  result = qword_1EE314E38;
  if (!qword_1EE314E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314E38);
  }

  return result;
}

unint64_t sub_1D30E2614()
{
  result = qword_1EE314D70;
  if (!qword_1EE314D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314D70);
  }

  return result;
}

unint64_t sub_1D30E266C()
{
  result = qword_1EE314D78;
  if (!qword_1EE314D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314D78);
  }

  return result;
}

unint64_t sub_1D30E26C4()
{
  result = qword_1EE314E10;
  if (!qword_1EE314E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314E10);
  }

  return result;
}

unint64_t sub_1D30E271C()
{
  result = qword_1EE314E18;
  if (!qword_1EE314E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314E18);
  }

  return result;
}

unint64_t sub_1D30E2774()
{
  result = qword_1EE314E50;
  if (!qword_1EE314E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314E50);
  }

  return result;
}

unint64_t sub_1D30E27CC()
{
  result = qword_1EE314E58;
  if (!qword_1EE314E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314E58);
  }

  return result;
}

unint64_t sub_1D30E2824()
{
  result = qword_1EE314D30;
  if (!qword_1EE314D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314D30);
  }

  return result;
}

unint64_t sub_1D30E287C()
{
  result = qword_1EE314D38;
  if (!qword_1EE314D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314D38);
  }

  return result;
}

unint64_t sub_1D30E28D4()
{
  result = qword_1EE314EA0;
  if (!qword_1EE314EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314EA0);
  }

  return result;
}

unint64_t sub_1D30E292C()
{
  result = qword_1EE314EA8;
  if (!qword_1EE314EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314EA8);
  }

  return result;
}

unint64_t sub_1D30E2984()
{
  result = qword_1EE314F10;
  if (!qword_1EE314F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314F10);
  }

  return result;
}

unint64_t sub_1D30E29DC()
{
  result = qword_1EE314F18;
  if (!qword_1EE314F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314F18);
  }

  return result;
}

unint64_t sub_1D30E2A34()
{
  result = qword_1EE314CD0;
  if (!qword_1EE314CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314CD0);
  }

  return result;
}

unint64_t sub_1D30E2A8C()
{
  result = qword_1EE314CD8;
  if (!qword_1EE314CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314CD8);
  }

  return result;
}

unint64_t sub_1D30E2AE4()
{
  result = qword_1EE314C50;
  if (!qword_1EE314C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314C50);
  }

  return result;
}

unint64_t sub_1D30E2B3C()
{
  result = qword_1EE314C58;
  if (!qword_1EE314C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314C58);
  }

  return result;
}

unint64_t sub_1D30E2B94()
{
  result = qword_1EE314E90;
  if (!qword_1EE314E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314E90);
  }

  return result;
}

unint64_t sub_1D30E2BEC()
{
  result = qword_1EE314E98;
  if (!qword_1EE314E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314E98);
  }

  return result;
}

unint64_t sub_1D30E2C44()
{
  result = qword_1EE314DD8;
  if (!qword_1EE314DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314DD8);
  }

  return result;
}

unint64_t sub_1D30E2C9C()
{
  result = qword_1EE314DE0;
  if (!qword_1EE314DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314DE0);
  }

  return result;
}

unint64_t sub_1D30E2CF4()
{
  result = qword_1EE314D60;
  if (!qword_1EE314D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314D60);
  }

  return result;
}

unint64_t sub_1D30E2D4C()
{
  result = qword_1EE314D68;
  if (!qword_1EE314D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314D68);
  }

  return result;
}

unint64_t sub_1D30E2DA4()
{
  result = qword_1EE314D00;
  if (!qword_1EE314D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314D00);
  }

  return result;
}

unint64_t sub_1D30E2DFC()
{
  result = qword_1EE314D08;
  if (!qword_1EE314D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314D08);
  }

  return result;
}

unint64_t sub_1D30E2E54()
{
  result = qword_1EE314D40;
  if (!qword_1EE314D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314D40);
  }

  return result;
}

unint64_t sub_1D30E2EAC()
{
  result = qword_1EE314D48;
  if (!qword_1EE314D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314D48);
  }

  return result;
}

unint64_t sub_1D30E2F04()
{
  result = qword_1EE314CE0;
  if (!qword_1EE314CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314CE0);
  }

  return result;
}

unint64_t sub_1D30E2F5C()
{
  result = qword_1EE314CE8;
  if (!qword_1EE314CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314CE8);
  }

  return result;
}

unint64_t sub_1D30E2FB4()
{
  result = qword_1EE314C80;
  if (!qword_1EE314C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314C80);
  }

  return result;
}

unint64_t sub_1D30E300C()
{
  result = qword_1EE314C88;
  if (!qword_1EE314C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314C88);
  }

  return result;
}

unint64_t sub_1D30E3064()
{
  result = qword_1EE314F00;
  if (!qword_1EE314F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314F00);
  }

  return result;
}

unint64_t sub_1D30E30BC()
{
  result = qword_1EE314F08;
  if (!qword_1EE314F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314F08);
  }

  return result;
}

unint64_t sub_1D30E3114()
{
  result = qword_1EE314F20;
  if (!qword_1EE314F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314F20);
  }

  return result;
}

unint64_t sub_1D30E316C()
{
  result = qword_1EE314F28;
  if (!qword_1EE314F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314F28);
  }

  return result;
}

unint64_t sub_1D30E31C4()
{
  result = qword_1EE314EE0;
  if (!qword_1EE314EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314EE0);
  }

  return result;
}

unint64_t sub_1D30E321C()
{
  result = qword_1EE314EE8;
  if (!qword_1EE314EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314EE8);
  }

  return result;
}

unint64_t sub_1D30E3274()
{
  result = qword_1EE314D10;
  if (!qword_1EE314D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314D10);
  }

  return result;
}

unint64_t sub_1D30E32CC()
{
  result = qword_1EE314D18;
  if (!qword_1EE314D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314D18);
  }

  return result;
}

unint64_t sub_1D30E3324()
{
  result = qword_1EE314DE8;
  if (!qword_1EE314DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314DE8);
  }

  return result;
}

unint64_t sub_1D30E337C()
{
  result = qword_1EE314DF0;
  if (!qword_1EE314DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314DF0);
  }

  return result;
}

unint64_t sub_1D30E33D4()
{
  result = qword_1EE314F40;
  if (!qword_1EE314F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314F40);
  }

  return result;
}

unint64_t sub_1D30E342C()
{
  result = qword_1EE314F48;
  if (!qword_1EE314F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314F48);
  }

  return result;
}

unint64_t sub_1D30E3484()
{
  result = qword_1EE314B28;
  if (!qword_1EE314B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314B28);
  }

  return result;
}

unint64_t sub_1D30E34DC()
{
  result = qword_1EE314B30;
  if (!qword_1EE314B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314B30);
  }

  return result;
}

unint64_t sub_1D30E3534()
{
  result = qword_1EE314AE8;
  if (!qword_1EE314AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314AE8);
  }

  return result;
}

unint64_t sub_1D30E358C()
{
  result = qword_1EE314AF0;
  if (!qword_1EE314AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314AF0);
  }

  return result;
}

unint64_t sub_1D30E35E4()
{
  result = qword_1EE314988;
  if (!qword_1EE314988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314988);
  }

  return result;
}

unint64_t sub_1D30E363C()
{
  result = qword_1EE314990;
  if (!qword_1EE314990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314990);
  }

  return result;
}

unint64_t sub_1D30E3694()
{
  result = qword_1EE3148A8;
  if (!qword_1EE3148A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE3148A8);
  }

  return result;
}

unint64_t sub_1D30E36EC()
{
  result = qword_1EE3148B0;
  if (!qword_1EE3148B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE3148B0);
  }

  return result;
}

unint64_t sub_1D30E3744()
{
  result = qword_1EE3148E8;
  if (!qword_1EE3148E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE3148E8);
  }

  return result;
}

unint64_t sub_1D30E379C()
{
  result = qword_1EE3148F0;
  if (!qword_1EE3148F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE3148F0);
  }

  return result;
}

unint64_t sub_1D30E37F4()
{
  result = qword_1EE314898;
  if (!qword_1EE314898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314898);
  }

  return result;
}

unint64_t sub_1D30E384C()
{
  result = qword_1EE3148A0;
  if (!qword_1EE3148A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE3148A0);
  }

  return result;
}

unint64_t sub_1D30E38A4()
{
  result = qword_1EE314868;
  if (!qword_1EE314868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314868);
  }

  return result;
}

unint64_t sub_1D30E38FC()
{
  result = qword_1EE314870;
  if (!qword_1EE314870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314870);
  }

  return result;
}

unint64_t sub_1D30E3954()
{
  result = qword_1EE314AA8;
  if (!qword_1EE314AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314AA8);
  }

  return result;
}

unint64_t sub_1D30E39AC()
{
  result = qword_1EE314AB0;
  if (!qword_1EE314AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314AB0);
  }

  return result;
}

unint64_t sub_1D30E3A04()
{
  result = qword_1EE314A58;
  if (!qword_1EE314A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314A58);
  }

  return result;
}

unint64_t sub_1D30E3A5C()
{
  result = qword_1EE314A60;
  if (!qword_1EE314A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314A60);
  }

  return result;
}

unint64_t sub_1D30E3AB4()
{
  result = qword_1EE3149F8;
  if (!qword_1EE3149F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE3149F8);
  }

  return result;
}

unint64_t sub_1D30E3B0C()
{
  result = qword_1EE314A00;
  if (!qword_1EE314A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314A00);
  }

  return result;
}

unint64_t sub_1D30E3B64()
{
  result = qword_1EE314818;
  if (!qword_1EE314818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314818);
  }

  return result;
}

unint64_t sub_1D30E3BBC()
{
  result = qword_1EE314820;
  if (!qword_1EE314820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314820);
  }

  return result;
}

unint64_t sub_1D30E3C14()
{
  result = qword_1EE314A38;
  if (!qword_1EE314A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314A38);
  }

  return result;
}

unint64_t sub_1D30E3C6C()
{
  result = qword_1EE314A40;
  if (!qword_1EE314A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314A40);
  }

  return result;
}

unint64_t sub_1D30E3CC4()
{
  result = qword_1EE314918;
  if (!qword_1EE314918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314918);
  }

  return result;
}

unint64_t sub_1D30E3D1C()
{
  result = qword_1EE314920;
  if (!qword_1EE314920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314920);
  }

  return result;
}

unint64_t sub_1D30E3D74()
{
  result = qword_1EE314948;
  if (!qword_1EE314948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314948);
  }

  return result;
}

unint64_t sub_1D30E3DCC()
{
  result = qword_1EE314950;
  if (!qword_1EE314950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314950);
  }

  return result;
}

unint64_t sub_1D30E3E24()
{
  result = qword_1EE314828;
  if (!qword_1EE314828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314828);
  }

  return result;
}

unint64_t sub_1D30E3E7C()
{
  result = qword_1EE314830;
  if (!qword_1EE314830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314830);
  }

  return result;
}

unint64_t sub_1D30E3ED4()
{
  result = qword_1EE314978;
  if (!qword_1EE314978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314978);
  }

  return result;
}

unint64_t sub_1D30E3F2C()
{
  result = qword_1EE314980;
  if (!qword_1EE314980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314980);
  }

  return result;
}

unint64_t sub_1D30E3F84()
{
  result = qword_1EE314AB8;
  if (!qword_1EE314AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314AB8);
  }

  return result;
}

unint64_t sub_1D30E3FDC()
{
  result = qword_1EE314AC0;
  if (!qword_1EE314AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314AC0);
  }

  return result;
}

unint64_t sub_1D30E4034()
{
  result = qword_1EE3148B8;
  if (!qword_1EE3148B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE3148B8);
  }

  return result;
}

unint64_t sub_1D30E408C()
{
  result = qword_1EE3148C0;
  if (!qword_1EE3148C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE3148C0);
  }

  return result;
}

unint64_t sub_1D30E40E4()
{
  result = qword_1EE314A78;
  if (!qword_1EE314A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314A78);
  }

  return result;
}

unint64_t sub_1D30E413C()
{
  result = qword_1EE314A80;
  if (!qword_1EE314A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314A80);
  }

  return result;
}

unint64_t sub_1D30E4194()
{
  result = qword_1EE3149A8;
  if (!qword_1EE3149A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE3149A8);
  }

  return result;
}

unint64_t sub_1D30E41EC()
{
  result = qword_1EE3149B0;
  if (!qword_1EE3149B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE3149B0);
  }

  return result;
}

unint64_t sub_1D30E4244()
{
  result = qword_1EE314838;
  if (!qword_1EE314838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314838);
  }

  return result;
}

unint64_t sub_1D30E429C()
{
  result = qword_1EE314840;
  if (!qword_1EE314840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314840);
  }

  return result;
}

unint64_t sub_1D30E42F4()
{
  result = qword_1EE314AC8;
  if (!qword_1EE314AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314AC8);
  }

  return result;
}

unint64_t sub_1D30E434C()
{
  result = qword_1EE314AD0;
  if (!qword_1EE314AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314AD0);
  }

  return result;
}

unint64_t sub_1D30E43A4()
{
  result = qword_1EE314858;
  if (!qword_1EE314858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314858);
  }

  return result;
}

unint64_t sub_1D30E43FC()
{
  result = qword_1EE314860;
  if (!qword_1EE314860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314860);
  }

  return result;
}

unint64_t sub_1D30E4454()
{
  result = qword_1EE314A18;
  if (!qword_1EE314A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314A18);
  }

  return result;
}

unint64_t sub_1D30E44AC()
{
  result = qword_1EE314A20;
  if (!qword_1EE314A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314A20);
  }

  return result;
}

unint64_t sub_1D30E4504()
{
  result = qword_1EE314888;
  if (!qword_1EE314888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314888);
  }

  return result;
}

unint64_t sub_1D30E455C()
{
  result = qword_1EE314890;
  if (!qword_1EE314890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314890);
  }

  return result;
}

unint64_t sub_1D30E45B4()
{
  result = qword_1EE3149C0;
  if (!qword_1EE3149C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE3149C0);
  }

  return result;
}

unint64_t sub_1D30E460C()
{
  result = qword_1EE3149C8;
  if (!qword_1EE3149C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE3149C8);
  }

  return result;
}

unint64_t sub_1D30E4664()
{
  result = qword_1EE314B50;
  if (!qword_1EE314B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314B50);
  }

  return result;
}

unint64_t sub_1D30E46BC()
{
  result = qword_1EE314B58;
  if (!qword_1EE314B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314B58);
  }

  return result;
}

unint64_t sub_1D30E4714()
{
  result = qword_1EE314A68;
  if (!qword_1EE314A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314A68);
  }

  return result;
}

unint64_t sub_1D30E476C()
{
  result = qword_1EE314A70;
  if (!qword_1EE314A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314A70);
  }

  return result;
}

unint64_t sub_1D30E47C4()
{
  result = qword_1EE314998;
  if (!qword_1EE314998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314998);
  }

  return result;
}

unint64_t sub_1D30E481C()
{
  result = qword_1EE3149A0;
  if (!qword_1EE3149A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE3149A0);
  }

  return result;
}

unint64_t sub_1D30E4874()
{
  result = qword_1EE314A28;
  if (!qword_1EE314A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314A28);
  }

  return result;
}

unint64_t sub_1D30E48CC()
{
  result = qword_1EE314A30;
  if (!qword_1EE314A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314A30);
  }

  return result;
}

unint64_t sub_1D30E4924()
{
  result = qword_1EE314968;
  if (!qword_1EE314968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314968);
  }

  return result;
}

unint64_t sub_1D30E497C()
{
  result = qword_1EE314970;
  if (!qword_1EE314970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314970);
  }

  return result;
}

unint64_t sub_1D30E49D4()
{
  result = qword_1EE314A08;
  if (!qword_1EE314A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314A08);
  }

  return result;
}

unint64_t sub_1D30E4A2C()
{
  result = qword_1EE314A10;
  if (!qword_1EE314A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314A10);
  }

  return result;
}

unint64_t sub_1D30E4A84()
{
  result = qword_1EE314A48;
  if (!qword_1EE314A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314A48);
  }

  return result;
}

unint64_t sub_1D30E4ADC()
{
  result = qword_1EE314A50;
  if (!qword_1EE314A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314A50);
  }

  return result;
}

unint64_t sub_1D30E4B34()
{
  result = qword_1EE314928;
  if (!qword_1EE314928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314928);
  }

  return result;
}

unint64_t sub_1D30E4B8C()
{
  result = qword_1EE314930;
  if (!qword_1EE314930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314930);
  }

  return result;
}

unint64_t sub_1D30E4BE4()
{
  result = qword_1EE314A98;
  if (!qword_1EE314A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314A98);
  }

  return result;
}

unint64_t sub_1D30E4C3C()
{
  result = qword_1EE314AA0;
  if (!qword_1EE314AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314AA0);
  }

  return result;
}

unint64_t sub_1D30E4C94()
{
  result = qword_1EE314B08;
  if (!qword_1EE314B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314B08);
  }

  return result;
}

unint64_t sub_1D30E4CEC()
{
  result = qword_1EE314B10;
  if (!qword_1EE314B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314B10);
  }

  return result;
}

unint64_t sub_1D30E4D44()
{
  result = qword_1EE3148C8;
  if (!qword_1EE3148C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE3148C8);
  }

  return result;
}

unint64_t sub_1D30E4D9C()
{
  result = qword_1EE3148D0;
  if (!qword_1EE3148D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE3148D0);
  }

  return result;
}

unint64_t sub_1D30E4DF4()
{
  result = qword_1EE314848;
  if (!qword_1EE314848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314848);
  }

  return result;
}

unint64_t sub_1D30E4E4C()
{
  result = qword_1EE314850;
  if (!qword_1EE314850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314850);
  }

  return result;
}

unint64_t sub_1D30E4EA4()
{
  result = qword_1EE314A88;
  if (!qword_1EE314A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314A88);
  }

  return result;
}

unint64_t sub_1D30E4EFC()
{
  result = qword_1EE314A90;
  if (!qword_1EE314A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314A90);
  }

  return result;
}

unint64_t sub_1D30E4F54()
{
  result = qword_1EE3149D0;
  if (!qword_1EE3149D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE3149D0);
  }

  return result;
}

unint64_t sub_1D30E4FAC()
{
  result = qword_1EE3149D8;
  if (!qword_1EE3149D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE3149D8);
  }

  return result;
}

unint64_t sub_1D30E5004()
{
  result = qword_1EE314958;
  if (!qword_1EE314958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314958);
  }

  return result;
}

unint64_t sub_1D30E505C()
{
  result = qword_1EE314960;
  if (!qword_1EE314960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314960);
  }

  return result;
}

unint64_t sub_1D30E50B4()
{
  result = qword_1EE3148F8;
  if (!qword_1EE3148F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE3148F8);
  }

  return result;
}

unint64_t sub_1D30E510C()
{
  result = qword_1EE314900;
  if (!qword_1EE314900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314900);
  }

  return result;
}

unint64_t sub_1D30E5164()
{
  result = qword_1EE314938;
  if (!qword_1EE314938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314938);
  }

  return result;
}

unint64_t sub_1D30E51BC()
{
  result = qword_1EE314940;
  if (!qword_1EE314940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314940);
  }

  return result;
}

unint64_t sub_1D30E5214()
{
  result = qword_1EE3148D8;
  if (!qword_1EE3148D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE3148D8);
  }

  return result;
}

unint64_t sub_1D30E526C()
{
  result = qword_1EE3148E0;
  if (!qword_1EE3148E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE3148E0);
  }

  return result;
}

unint64_t sub_1D30E52C4()
{
  result = qword_1EE314878;
  if (!qword_1EE314878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314878);
  }

  return result;
}

unint64_t sub_1D30E531C()
{
  result = qword_1EE314880;
  if (!qword_1EE314880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314880);
  }

  return result;
}

unint64_t sub_1D30E5374()
{
  result = qword_1EE314AF8;
  if (!qword_1EE314AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314AF8);
  }

  return result;
}

unint64_t sub_1D30E53CC()
{
  result = qword_1EE314B00;
  if (!qword_1EE314B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314B00);
  }

  return result;
}

unint64_t sub_1D30E5424()
{
  result = qword_1EE314B18;
  if (!qword_1EE314B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314B18);
  }

  return result;
}

unint64_t sub_1D30E547C()
{
  result = qword_1EE314B20;
  if (!qword_1EE314B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314B20);
  }

  return result;
}

unint64_t sub_1D30E54D4()
{
  result = qword_1EE314AD8;
  if (!qword_1EE314AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314AD8);
  }

  return result;
}

unint64_t sub_1D30E552C()
{
  result = qword_1EE314AE0;
  if (!qword_1EE314AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314AE0);
  }

  return result;
}

unint64_t sub_1D30E5584()
{
  result = qword_1EE314908;
  if (!qword_1EE314908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314908);
  }

  return result;
}

unint64_t sub_1D30E55DC()
{
  result = qword_1EE314910;
  if (!qword_1EE314910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314910);
  }

  return result;
}

unint64_t sub_1D30E5634()
{
  result = qword_1EE3149E0;
  if (!qword_1EE3149E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE3149E0);
  }

  return result;
}

unint64_t sub_1D30E568C()
{
  result = qword_1EE3149E8;
  if (!qword_1EE3149E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE3149E8);
  }

  return result;
}

unint64_t sub_1D30E56E4()
{
  result = qword_1EE314B38;
  if (!qword_1EE314B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314B38);
  }

  return result;
}

unint64_t sub_1D30E573C()
{
  result = qword_1EE314B40;
  if (!qword_1EE314B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314B40);
  }

  return result;
}

unint64_t sub_1D30E5798()
{
  result = qword_1EC74B010;
  if (!qword_1EC74B010)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC74B008, &qword_1D30FCFF0);
    sub_1D30E5828();
    sub_1D303B704();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74B010);
  }

  return result;
}

unint64_t sub_1D30E5828()
{
  result = qword_1EC74B018;
  if (!qword_1EC74B018)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC74B000, &qword_1D30FCFC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74B018);
  }

  return result;
}

unint64_t sub_1D30E58B4()
{
  result = qword_1EC74B038;
  if (!qword_1EC74B038)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC74B030, &unk_1D30FD020);
    sub_1D303B704();
    sub_1D30E5828();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74B038);
  }

  return result;
}

unint64_t sub_1D30E5A4C()
{
  result = qword_1EC74B050;
  if (!qword_1EC74B050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC74B048, &unk_1D30FD0B0);
    sub_1D303B704();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74B050);
  }

  return result;
}

uint64_t sub_1D30E5B78(uint64_t a1, unint64_t *a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7)
{
  v97 = a3;
  v101 = a6;
  v98 = a4;
  v99 = a5;
  v103 = sub_1D30E8D9C();
  v10 = *(v103 - 8);
  v11 = MEMORY[0x1EEE9AC00](v103);
  v88 = &v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v94 = &v80 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v80 - v15;
  v17 = a2[1];
  v95 = *a2;
  v18 = a2[3];
  v86 = a2[2];
  v19 = a2[5];
  v102 = a2[4];
  if (qword_1EE3152C8 != -1)
  {
    swift_once();
  }

  v20 = sub_1D30E8B3C();
  v21 = __swift_project_value_buffer(v20, qword_1EE314B60);
  v22 = sub_1D30E928C();
  v23 = *(v10 + 16);
  v100 = a1;
  v90 = v10 + 16;
  v89 = v23;
  v23(v16, a1, v103);

  v91 = v21;
  v24 = sub_1D30E8B1C();

  v87 = v22;
  v25 = os_log_type_enabled(v24, v22);
  v26 = a7;
  v96 = v10;
  v92 = v18;
  if (v25)
  {
    v80 = HIDWORD(v97);
    v81 = HIDWORD(v98);
    v82 = HIDWORD(v99);
    v83 = HIDWORD(v101);
    v27 = swift_slowAlloc();
    v28 = v18;
    v29 = v17;
    v84 = v24;
    v30 = v27;
    v85 = swift_slowAlloc();
    v110 = v85;
    *v30 = 136447234;
    sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83D0]);
    v31 = v26;
    v32 = v103;
    v33 = sub_1D30E977C();
    v34 = v32;
    v36 = v35;
    v93 = *(v10 + 8);
    v93(v16, v34);
    v37 = sub_1D2FFEA04(v33, v36, &v110);

    *(v30 + 4) = v37;
    *(v30 + 12) = 2082;
    v104 = v95;
    v105 = v29;
    v106 = v86;
    v107 = v28;
    v108 = v102;
    v109 = v19;

    v38 = AssetPackRecord.GlobalID.description.getter();
    v40 = v39;

    v41 = sub_1D2FFEA04(v38, v40, &v110);

    *(v30 + 14) = v41;
    *(v30 + 22) = 2160;
    *(v30 + 24) = 1752392040;
    *(v30 + 32) = 2080;
    v104 = __PAIR64__(v80, v97);
    v105 = __PAIR64__(v81, v98);
    v106 = __PAIR64__(v82, v99);
    v107 = __PAIR64__(v83, v101);
    type metadata accessor for audit_token_t(0);
    v42 = sub_1D30E909C();
    v44 = sub_1D2FFEA04(v42, v43, &v110);

    *(v30 + 34) = v44;
    *(v30 + 42) = 2082;
    v45 = sub_1D30E922C();
    v47 = sub_1D2FFEA04(v45, v46, &v110);
    v26 = v31;

    *(v30 + 44) = v47;
    v48 = v84;
    _os_log_impl(&dword_1D2FD9000, v84, v87, "Issue sandbox extension to: %{public}s in asset pack with global ID: %{public}s for process with audit token: %{mask.hash}s if necessary given IDs of accessible asset packs: %{public}s", v30, 0x34u);
    v49 = v85;
    swift_arrayDestroy();
    MEMORY[0x1D38B3760](v49, -1, -1);
    MEMORY[0x1D38B3760](v30, -1, -1);

    v50 = v29;
  }

  else
  {

    v93 = *(v10 + 8);
    v93(v16, v103);
    v50 = v17;
  }

  v51 = sub_1D3042E60(v102, v19, v26);
  v52 = v100;
  v53 = v94;
  if (v51)
  {
    v54 = sub_1D30E927C();
    v55 = v88;
    v89(v88, v52, v103);

    v56 = sub_1D30E8B1C();

    if (os_log_type_enabled(v56, v54))
    {
      v57 = v55;
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v60 = v19;
      v61 = v103;
      v62 = v59;
      v104 = v59;
      *v58 = 136446722;
      *(v58 + 4) = sub_1D2FFEA04(v95, v50, &v104);
      *(v58 + 12) = 2082;
      sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83D0]);
      v63 = sub_1D30E977C();
      v65 = v64;
      v93(v57, v61);
      v66 = sub_1D2FFEA04(v63, v65, &v104);

      *(v58 + 14) = v66;
      *(v58 + 22) = 2082;
      *(v58 + 24) = sub_1D2FFEA04(v102, v60, &v104);
      _os_log_impl(&dword_1D2FD9000, v56, v54, "The app with the bundle ID “%{public}s” doesn’t need a new sandbox extension to “%{public}s” in the asset pack with the ID “%{public}s”.", v58, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1D38B3760](v62, -1, -1);
      MEMORY[0x1D38B3760](v58, -1, -1);
    }

    else
    {

      v93(v55, v103);
    }

    return 0;
  }

  else
  {
    v89(v94, v100, v103);

    v67 = sub_1D30E8B1C();
    v68 = sub_1D30E92BC();

    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v71 = v50;
      v72 = v53;
      v92 = v19;
      v73 = v103;
      v74 = v70;
      v104 = v70;
      *v69 = 136446722;
      sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83D0]);
      v75 = sub_1D30E977C();
      v77 = v76;
      v93(v72, v73);
      v78 = sub_1D2FFEA04(v75, v77, &v104);

      *(v69 + 4) = v78;
      *(v69 + 12) = 2082;
      *(v69 + 14) = sub_1D2FFEA04(v102, v92, &v104);
      *(v69 + 22) = 2082;
      *(v69 + 24) = sub_1D2FFEA04(v95, v71, &v104);
      _os_log_impl(&dword_1D2FD9000, v67, v68, "Issuing a sandbox extension to “%{public}s” in the asset pack with the ID “%{public}s” for the app with the bundle ID “%{public}s”…", v69, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1D38B3760](v74, -1, -1);
      MEMORY[0x1D38B3760](v69, -1, -1);
    }

    else
    {

      v93(v53, v103);
    }

    return sub_1D30E7B38(v100, 0, v97, v98, v99, v101);
  }
}

id sub_1D30E6510(uint64_t a1, _BYTE *a2)
{
  v82 = a1;
  v86[1] = *MEMORY[0x1E69E9840];
  v3 = sub_1D30E8D9C();
  v84 = *(v3 - 8);
  v85 = v3;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v80 = &v76[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = MEMORY[0x1EEE9AC00](v4);
  v79 = &v76[-v7];
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v76[-v9];
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v76[-v12];
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v76[-v14];
  v16 = objc_opt_self();
  v17 = [v16 defaultManager];
  sub_1D30E8D3C();
  v18 = sub_1D30E906C();

  v19 = [v17 fileExistsAtPath_];

  v83 = v16;
  if (v19)
  {
    v81 = v10;
    v78 = v13;
    v20 = v84;
    if (qword_1EE3152C8 != -1)
    {
      swift_once();
    }

    v21 = sub_1D30E8B3C();
    __swift_project_value_buffer(v21, qword_1EE314B60);
    v22 = sub_1D30E927C();
    v23 = a2;
    v24 = a2;
    v25 = v85;
    (v20[2])(v15, v24, v85);
    v26 = sub_1D30E8B1C();
    if (os_log_type_enabled(v26, v22))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v86[0] = v28;
      *v27 = 136446210;
      sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83D0]);
      v29 = sub_1D30E977C();
      v30 = v20;
      v32 = v31;
      (v30[1])(v15, v25);
      v33 = sub_1D2FFEA04(v29, v32, v86);

      *(v27 + 4) = v33;
      _os_log_impl(&dword_1D2FD9000, v26, v22, "An item already exists at “%{public}s”; removing it…", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x1D38B3760](v28, -1, -1);
      MEMORY[0x1D38B3760](v27, -1, -1);
    }

    else
    {

      (v20[1])(v15, v25);
    }

    v16 = v83;
    v34 = [v83 defaultManager];
    a2 = v23;
    sub_1D30E8D3C();
    v35 = sub_1D30E906C();

    v86[0] = 0;
    v36 = [v34 removeItemAtPath:v35 error:v86];

    v37 = v86[0];
    if (!v36)
    {
      goto LABEL_17;
    }

    v38 = v86[0];
    v13 = v78;
    v10 = v81;
  }

  v39 = [v16 defaultManager];
  v40 = v84;
  v41 = v84[2];
  v81 = a2;
  v42 = a2;
  v43 = v85;
  v78 = v41;
  (v41)(v10, v42, v85);
  sub_1D30E8D2C();
  sub_1D30E8D3C();
  v44 = v40[1];
  v44(v13, v43);
  v45 = sub_1D30E906C();

  v86[0] = 0;
  v46 = [v39 createDirectoryAtPath:v45 withIntermediateDirectories:1 attributes:0 error:v86];

  v37 = v86[0];
  if (v46)
  {
    v47 = v44;
    v48 = qword_1EE3152C8;
    v49 = v86[0];
    if (v48 != -1)
    {
      swift_once();
    }

    v50 = sub_1D30E8B3C();
    __swift_project_value_buffer(v50, qword_1EE314B60);
    v51 = sub_1D30E927C();
    v52 = v79;
    v53 = v78;
    (v78)(v79, v82, v43);
    v54 = v80;
    (v53)(v80, v81, v43);
    v55 = sub_1D30E8B1C();
    if (os_log_type_enabled(v55, v51))
    {
      v56 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v86[0] = v84;
      *v56 = 136446466;
      sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83D0]);
      v57 = v52;
      v58 = v54;
      v59 = sub_1D30E977C();
      v78 = v55;
      v60 = v59;
      v77 = v51;
      v62 = v61;
      v47(v57, v43);
      v63 = sub_1D2FFEA04(v60, v62, v86);

      *(v56 + 4) = v63;
      *(v56 + 12) = 2082;
      v64 = sub_1D30E977C();
      v66 = v65;
      v47(v58, v43);
      v67 = sub_1D2FFEA04(v64, v66, v86);

      *(v56 + 14) = v67;
      v68 = v78;
      _os_log_impl(&dword_1D2FD9000, v78, v77, "Copying the item at “%{public}s” to “%{public}s” in the staging directory…", v56, 0x16u);
      v69 = v84;
      swift_arrayDestroy();
      MEMORY[0x1D38B3760](v69, -1, -1);
      MEMORY[0x1D38B3760](v56, -1, -1);
    }

    else
    {

      v47(v54, v43);
      v47(v52, v43);
    }

    v70 = [v83 defaultManager];
    sub_1D30E8D3C();
    v71 = sub_1D30E906C();

    sub_1D30E8D3C();
    v72 = sub_1D30E906C();

    v86[0] = 0;
    v73 = [v70 copyItemAtPath:v71 toPath:v72 error:v86];

    v37 = v86[0];
    if (v73)
    {
      return v86[0];
    }
  }

LABEL_17:
  v75 = v37;
  sub_1D30E87DC();

  return swift_willThrow();
}

id sub_1D30E6D18(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  v1 = [swift_getObjCClassFromMetadata() handleForPredicate:a1 error:v5];
  if (v1)
  {
    v2 = v5[0];
  }

  else
  {
    v3 = v5[0];
    sub_1D30E87DC();

    swift_willThrow();
  }

  return v1;
}

unint64_t sub_1D30E6DDC()
{
  result = qword_1EC74B078;
  if (!qword_1EC74B078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74B078);
  }

  return result;
}

uint64_t sub_1D30E6EFC(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74B0A8, &qword_1D30FD1D0);

  return sub_1D3082D74(a1);
}

uint64_t sub_1D30E6F78(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

void sub_1D30E70C4()
{
  if ((sandbox_extension_release() & 0x80000000) != 0)
  {
    if (qword_1EE3130B0 != -1)
    {
      swift_once();
    }

    v3 = sub_1D30E8B3C();
    __swift_project_value_buffer(v3, qword_1EE3130B8);
    v4 = sub_1D30E929C();
    oslog = sub_1D30E8B1C();
    if (os_log_type_enabled(oslog, v4))
    {
      v2 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      *v2 = 138543362;
      v6 = MEMORY[0x1D38B21D0]();
      sub_1D30E6DDC();
      swift_allocError();
      *v7 = v6;
      v8 = _swift_stdlib_bridgeErrorToNSError();
      *(v2 + 4) = v8;
      *v5 = v8;
      _os_log_impl(&dword_1D2FD9000, oslog, v4, "An extension handle couldn’t be released: %{public}@", v2, 0xCu);
      sub_1D2FE5940(v5);
      MEMORY[0x1D38B3760](v5, -1, -1);
      goto LABEL_10;
    }
  }

  else
  {
    if (qword_1EE3130B0 != -1)
    {
      swift_once();
    }

    v0 = sub_1D30E8B3C();
    __swift_project_value_buffer(v0, qword_1EE3130B8);
    oslog = sub_1D30E8B1C();
    v1 = sub_1D30E92BC();
    if (os_log_type_enabled(oslog, v1))
    {
      v2 = swift_slowAlloc();
      *v2 = 0;
      _os_log_impl(&dword_1D2FD9000, oslog, v1, "An extension handle was released.", v2, 2u);
LABEL_10:
      MEMORY[0x1D38B3760](v2, -1, -1);
    }
  }
}

uint64_t sub_1D30E72C4()
{
  if (*v0)
  {
    return 0x6972772D64616572;
  }

  else
  {
    return 0x6C6E6F2D64616572;
  }
}

uint64_t sub_1D30E7308()
{
  v0 = sub_1D30E8B3C();
  __swift_allocate_value_buffer(v0, qword_1EE3130B8);
  __swift_project_value_buffer(v0, qword_1EE3130B8);
  return sub_1D30E8B2C();
}

uint64_t sub_1D30E7380@<X0>(char a2@<W1>, uint64_t *a7@<X8>)
{
  if (a2)
  {
    if (*MEMORY[0x1E69E9BB0])
    {
LABEL_5:
      result = sandbox_extension_issue_file_to_process();
      *a7 = result;
      return result;
    }

    __break(1u);
  }

  result = *MEMORY[0x1E69E9BA8];
  if (*MEMORY[0x1E69E9BA8])
  {
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D30E7420@<X0>(uint64_t *a1@<X8>)
{
  result = sandbox_extension_consume();
  *a1 = result;
  return result;
}

void *sub_1D30E7450(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0 && ((a2 & 0x2000000000000000) != 0 || (a1 & 0x1000000000000000) != 0))
  {
    return sandbox_extension_consume();
  }

  result = sub_1D30E947C();
  if (!v2)
  {
    return v4;
  }

  return result;
}

uint64_t sub_1D30E74EC()
{
  v1 = v0;
  v2 = sub_1D30E8D9C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SandboxError(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D30E8468(v1, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74B0C8, &qword_1D30FD248);
    v10 = v8[*(v9 + 48)];
    v11 = &v8[*(v9 + 64)];
    v12 = *(v11 + 1);
    v21 = *v11;
    v22 = v12;
    (*(v3 + 32))(v5, v8, v2);
    *&v19[0] = 0;
    *(&v19[0] + 1) = 0xE000000000000000;
    sub_1D30E948C();
    v20 = v19[0];
    MEMORY[0x1D38B2610](0x1000000000000033, 0x80000001D30EE6D0);
    v19[0] = v21;
    v19[1] = v22;
    type metadata accessor for audit_token_t(0);
    sub_1D30E955C();
    MEMORY[0x1D38B2610](0x100000000000001ELL, 0x80000001D30EE710);
    sub_1D30E8288(&unk_1EC749370, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83D0]);
    v13 = sub_1D30E977C();
    MEMORY[0x1D38B2610](v13);

    MEMORY[0x1D38B2610](0x68746977209D80E2, 0xAC0000009C80E220);
    if (v10)
    {
      v14 = 0x6972772D64616572;
    }

    else
    {
      v14 = 0x6C6E6F2D64616572;
    }

    if (v10)
    {
      v15 = 0xEA00000000006574;
    }

    else
    {
      v15 = 0xE900000000000079;
    }

    MEMORY[0x1D38B2610](v14, v15);

    MEMORY[0x1D38B2610](0x1000000000000010, 0x80000001D30EE730);
    v16 = v20;
    (*(v3 + 8))(v5, v2);
  }

  else
  {
    *&v21 = 0;
    *(&v21 + 1) = 0xE000000000000000;
    sub_1D30E948C();

    *&v21 = 0x100000000000002BLL;
    *(&v21 + 1) = 0x80000001D30EE750;
    v17 = sub_1D30E8CBC();
    MEMORY[0x1D38B2610](v17);

    return v21;
  }

  return v16;
}

unint64_t sub_1D30E7844(uint64_t a1, unint64_t a2)
{
  if (qword_1EE3130B0 != -1)
  {
    swift_once();
  }

  v4 = sub_1D30E8B3C();
  __swift_project_value_buffer(v4, qword_1EE3130B8);
  v5 = sub_1D30E928C();
  v6 = sub_1D30E8B1C();
  if (os_log_type_enabled(v6, v5))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136380675;

    v9 = sub_1D2FFEA04(a1, a2, &v18);

    *(v7 + 4) = v9;
    _os_log_impl(&dword_1D2FD9000, v6, v5, "Consume: %{private}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1D38B3760](v8, -1, -1);
    MEMORY[0x1D38B3760](v7, -1, -1);
  }

  v10 = sub_1D30E7450(a1, a2);

  if ((v10 & 0x8000000000000000) != 0)
  {
    type metadata accessor for SandboxError(0);
    sub_1D30E8288(&qword_1EC74B0C0, type metadata accessor for SandboxError, &unk_1D30FD344);
    swift_allocError();
    *v16 = MEMORY[0x1D38B21D0]();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  else
  {
    v11 = sub_1D30E8B1C();
    v12 = sub_1D30E92BC();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v18 = v14;
      *v13 = 141558275;
      *(v13 + 4) = 1752392040;
      *(v13 + 12) = 2081;

      v15 = sub_1D2FFEA04(a1, a2, &v18);

      *(v13 + 14) = v15;
      _os_log_impl(&dword_1D2FD9000, v11, v12, "The extension token “%{private,mask.hash}s” was consumed.", v13, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x1D38B3760](v14, -1, -1);
      MEMORY[0x1D38B3760](v13, -1, -1);
    }
  }

  return v10;
}

uint64_t sub_1D30E7B38(uint64_t a1, int a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6)
{
  v6 = a5;
  v81 = a2;
  v89 = HIDWORD(a3);
  v90 = HIDWORD(a4);
  v84 = HIDWORD(a5);
  v86 = a6;
  v87 = HIDWORD(a6);
  v10 = sub_1D30E8D9C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE3130B0 != -1)
  {
    swift_once();
  }

  v14 = sub_1D30E8B3C();
  v15 = __swift_project_value_buffer(v14, qword_1EE3130B8);
  v16 = sub_1D30E928C();
  v17 = *(v11 + 16);
  v83 = a1;
  v76 = v17;
  v77 = v11 + 16;
  v17(v13, a1, v10);
  v80 = v15;
  v18 = sub_1D30E8B1C();
  v79 = v16;
  v19 = os_log_type_enabled(v18, v16);
  v88 = a4;
  v78 = v10;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v85 = v6;
    v21 = v20;
    v75 = swift_slowAlloc();
    v98 = v75;
    *v21 = 136446978;
    sub_1D30E8288(&unk_1EC749370, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83D0]);
    v22 = sub_1D30E977C();
    v74 = v18;
    v23 = a3;
    v25 = v24;
    (*(v11 + 8))(v13, v10);
    v26 = v23;
    v27 = sub_1D2FFEA04(v22, v25, &v98);

    *(v21 + 4) = v27;
    *(v21 + 12) = 2082;
    v28 = v81;
    if (v81)
    {
      v29 = 0x6972772D64616572;
    }

    else
    {
      v29 = 0x6C6E6F2D64616572;
    }

    if (v81)
    {
      v30 = 0xEA00000000006574;
    }

    else
    {
      v30 = 0xE900000000000079;
    }

    v31 = sub_1D2FFEA04(v29, v30, &v98);

    *(v21 + 14) = v31;
    *(v21 + 22) = 2160;
    *(v21 + 24) = 1752392040;
    *(v21 + 32) = 2080;
    v91 = __PAIR64__(v89, v23);
    v92 = a4;
    v93 = v90;
    v32 = v84;
    v94 = v85;
    v95 = v84;
    v33 = v87;
    v96 = v86;
    v97 = v87;
    type metadata accessor for audit_token_t(0);
    v34 = sub_1D30E909C();
    v36 = sub_1D2FFEA04(v34, v35, &v98);

    *(v21 + 34) = v36;
    v37 = v74;
    _os_log_impl(&dword_1D2FD9000, v74, v79, "Issue extension to: %{public}s with permissions: %{public}s for process with audit token: %{mask.hash}s", v21, 0x2Au);
    v38 = v75;
    swift_arrayDestroy();
    MEMORY[0x1D38B3760](v38, -1, -1);
    v39 = v21;
    v6 = v85;
    MEMORY[0x1D38B3760](v39, -1, -1);
  }

  else
  {

    v40 = (*(v11 + 8))(v13, v10);
    v33 = v87;
    v32 = v84;
    v26 = a3;
    v28 = v81;
  }

  MEMORY[0x1EEE9AC00](v40);
  v41 = v28 & 1;
  LOBYTE((&v74)[-6]) = v28 & 1;
  v84 = v26;
  v43 = v88;
  v42 = v89;
  HIDWORD((&v74)[-6]) = v26;
  LODWORD((&v74)[-5]) = v42;
  v44 = v90;
  HIDWORD((&v74)[-5]) = v43;
  LODWORD((&v74)[-4]) = v44;
  HIDWORD((&v74)[-4]) = v6;
  LODWORD((&v74)[-3]) = v32;
  HIDWORD((&v74)[-3]) = v45;
  LODWORD((&v74)[-2]) = v33;
  v46 = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74B0B8, &qword_1D30FD240);
  v47 = v82;
  v48 = v83;
  sub_1D30E8CEC();
  v49 = v91;
  v50 = v33;
  v51 = v32;
  if (v91)
  {
    v83 = v47;
    v52 = sub_1D30E8B1C();
    v53 = sub_1D30E92BC();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v85 = v6;
      v82 = v55;
      v98 = v55;
      *v54 = 141558787;
      *(v54 + 4) = 1752392040;
      *(v54 + 12) = 2081;
      v56 = sub_1D30E90FC();
      v58 = sub_1D2FFEA04(v56, v57, &v98);

      *(v54 + 14) = v58;
      *(v54 + 22) = 2160;
      *(v54 + 24) = 1752392040;
      *(v54 + 32) = 2080;
      v91 = __PAIR64__(v89, v84);
      v92 = v88;
      v93 = v90;
      v94 = v85;
      v95 = v51;
      v96 = v86;
      v97 = v50;
      type metadata accessor for audit_token_t(0);
      v59 = sub_1D30E909C();
      v61 = sub_1D2FFEA04(v59, v60, &v98);

      *(v54 + 34) = v61;
      _os_log_impl(&dword_1D2FD9000, v52, v53, "The extension token “%{private,mask.hash}s” was issued to the process with the audit token “%{mask.hash}s”.", v54, 0x2Au);
      v62 = v82;
      swift_arrayDestroy();
      MEMORY[0x1D38B3760](v62, -1, -1);
      MEMORY[0x1D38B3760](v54, -1, -1);
    }

    v63 = sub_1D30E90FC();
    free(v49);
  }

  else
  {
    v85 = type metadata accessor for SandboxError(0);
    sub_1D30E8288(&qword_1EC74B0C0, type metadata accessor for SandboxError, &unk_1D30FD344);
    swift_allocError();
    v63 = v64;
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74B0C8, &qword_1D30FD248);
    v66 = *(v65 + 48);
    v67 = v6;
    v68 = (v63 + *(v65 + 64));
    v76(v63, v48, v78);
    *(v63 + v66) = v41;
    v70 = v88;
    v69 = v89;
    *v68 = v84;
    v68[1] = v69;
    v71 = v90;
    v68[2] = v70;
    v68[3] = v71;
    v68[4] = v67;
    v68[5] = v32;
    v72 = v87;
    v68[6] = v46;
    v68[7] = v72;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  return v63;
}

uint64_t type metadata accessor for SandboxError(uint64_t a1)
{
  result = qword_1EC74B0D0;
  if (!qword_1EC74B0D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D30E8288(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1D30E82E0(uint64_t a1)
{
  sub_1D30E834C(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_1D30E834C(uint64_t a1)
{
  if (!qword_1EC74B0E0)
  {
    sub_1D30E8D9C();
    type metadata accessor for audit_token_t(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EC74B0E0);
    }
  }
}

unint64_t sub_1D30E8414()
{
  result = qword_1EC74B0E8;
  if (!qword_1EC74B0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74B0E8);
  }

  return result;
}

uint64_t sub_1D30E8468(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SandboxError(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}