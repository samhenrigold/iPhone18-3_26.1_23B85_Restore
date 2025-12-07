uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ8CipherML28AspireHeSerializedCiphertextV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v40 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMd, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v36 - v8;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSg_AFtMd, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSg_AFtMR);
  MEMORY[0x28223BE20](v44);
  v11 = &v36 - v10;
  v43 = type metadata accessor for AspireHeSerializedCiphertext(0);
  MEMORY[0x28223BE20](v43);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v36 - v16;
  v18 = *(a1 + 16);
  if (v18 != *(a2 + 16))
  {
LABEL_19:
    v33 = 0;
    return v33 & 1;
  }

  if (!v18 || a1 == a2)
  {
    v33 = 1;
    return v33 & 1;
  }

  v38 = &v36 - v16;
  v39 = v9;
  v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v20 = a1 + v19;
  v21 = a2 + v19;
  v22 = (v5 + 48);
  v41 = *(v15 + 72);
  v42 = v4;
  v23 = &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMd;
  v37 = v13;
  while (1)
  {
    result = outlined init with copy of AMDPbPIRConfig(v20, v17, type metadata accessor for AspireHeSerializedCiphertext);
    if (!v18)
    {
      break;
    }

    v45 = v18;
    outlined init with copy of AMDPbPIRConfig(v21, v13, type metadata accessor for AspireHeSerializedCiphertext);
    v25 = *(v44 + 48);
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v17, v11, v23, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMR);
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v13, &v11[v25], v23, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMR);
    v26 = *v22;
    v27 = v23;
    v28 = v42;
    if ((*v22)(v11, 1, v42) == 1)
    {
      if (v26(&v11[v25], 1, v28) != 1)
      {
        outlined destroy of AMDPbHEConfig.OneOf_Config(v13, type metadata accessor for AspireHeSerializedCiphertext);
        v35 = v17;
        v34 = type metadata accessor for AspireHeSerializedCiphertext;
        goto LABEL_17;
      }

      v23 = v27;
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v11, v27, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMR);
    }

    else
    {
      v29 = v22;
      v30 = v39;
      outlined init with copy of AMDPbHEConfig.OneOf_Config?(v11, v39, v27, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMR);
      if (v26(&v11[v25], 1, v28) == 1)
      {
        outlined destroy of AMDPbHEConfig.OneOf_Config(v37, type metadata accessor for AspireHeSerializedCiphertext);
        outlined destroy of AMDPbHEConfig.OneOf_Config(v38, type metadata accessor for AspireHeSerializedCiphertext);
        v34 = type metadata accessor for AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType;
        v35 = v30;
LABEL_17:
        outlined destroy of AMDPbHEConfig.OneOf_Config(v35, v34);
        outlined destroy of AMDPbHEConfig.OneOf_Config?(v11, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSg_AFtMd, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSg_AFtMR);
        goto LABEL_19;
      }

      v31 = v40;
      outlined init with take of AMDPbPIRConfig(&v11[v25], v40, type metadata accessor for AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType);
      v32 = specialized static AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType.== infix(_:_:)(v30, v31);
      outlined destroy of AMDPbHEConfig.OneOf_Config(v31, type metadata accessor for AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType);
      outlined destroy of AMDPbHEConfig.OneOf_Config(v30, type metadata accessor for AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType);
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v11, v27, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMR);
      v22 = v29;
      v13 = v37;
      v17 = v38;
      v23 = v27;
      if ((v32 & 1) == 0)
      {
        outlined destroy of AMDPbHEConfig.OneOf_Config(v37, type metadata accessor for AspireHeSerializedCiphertext);
        outlined destroy of AMDPbHEConfig.OneOf_Config(v17, type metadata accessor for AspireHeSerializedCiphertext);
        goto LABEL_19;
      }
    }

    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v33 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of AMDPbHEConfig.OneOf_Config(v13, type metadata accessor for AspireHeSerializedCiphertext);
    outlined destroy of AMDPbHEConfig.OneOf_Config(v17, type metadata accessor for AspireHeSerializedCiphertext);
    if (v33)
    {
      v18 = v45 - 1;
      v21 += v41;
      v20 += v41;
      if (v45 != 1)
      {
        continue;
      }
    }

    return v33 & 1;
  }

  __break(1u);
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ8CipherML18AMDPbEvaluationKeyV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v110[3] = *MEMORY[0x277D85DE8];
  v4 = type metadata accessor for AspireHeSerializedEvaluationKey(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML31AspireHeSerializedEvaluationKeyVSgMd, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v87 - v9;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML31AspireHeSerializedEvaluationKeyVSg_ADtMd, &_s8CipherML31AspireHeSerializedEvaluationKeyVSg_ADtMR);
  MEMORY[0x28223BE20](v97);
  v106 = &v87 - v11;
  v103 = type metadata accessor for AMDPbEvaluationKeyMetadata(0);
  v12 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v101 = (&v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML26AMDPbEvaluationKeyMetadataVSgMd, &_s8CipherML26AMDPbEvaluationKeyMetadataVSgMR);
  MEMORY[0x28223BE20](v14 - 8);
  v102 = (&v87 - v15);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML26AMDPbEvaluationKeyMetadataVSg_ADtMd, &_s8CipherML26AMDPbEvaluationKeyMetadataVSg_ADtMR);
  MEMORY[0x28223BE20](v98);
  v108 = &v87 - v16;
  v105 = type metadata accessor for AMDPbEvaluationKey(0);
  MEMORY[0x28223BE20](v105);
  v107 = &v87 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v87 - v20;
  v22 = *(a1 + 16);
  if (v22 != *(a2 + 16))
  {
    goto LABEL_76;
  }

  if (!v22 || a1 == a2)
  {
    v82 = 1;
    return v82 & 1;
  }

  v92 = v10;
  v91 = v7;
  v90 = 0;
  v23 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v24 = a1 + v23;
  v25 = a2 + v23;
  v26 = (v12 + 48);
  v27 = v25;
  v93 = *(v19 + 72);
  v94 = v4;
  v28 = &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMR;
  v104 = &v87 - v20;
  v95 = (v5 + 48);
  v96 = v26;
  while (1)
  {
    v100 = v24;
    outlined init with copy of AMDPbPIRConfig(v24, v21, type metadata accessor for AMDPbEvaluationKey);
    v99 = v27;
    v29 = v107;
    outlined init with copy of AMDPbPIRConfig(v27, v107, type metadata accessor for AMDPbEvaluationKey);
    v30 = *(v105 + 20);
    v31 = *(v98 + 48);
    v32 = v108;
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(&v21[v30], v108, &_s8CipherML26AMDPbEvaluationKeyMetadataVSgMd, &_s8CipherML26AMDPbEvaluationKeyMetadataVSgMR);
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v29 + v30, v32 + v31, &_s8CipherML26AMDPbEvaluationKeyMetadataVSgMd, &_s8CipherML26AMDPbEvaluationKeyMetadataVSgMR);
    v33 = *v96;
    v34 = v103;
    if ((*v96)(v32, 1, v103) == 1)
    {
      v35 = v33(v108 + v31, 1, v34);
      v36 = v104;
      v37 = v95;
      if (v35 != 1)
      {
        goto LABEL_71;
      }

      outlined destroy of AMDPbHEConfig.OneOf_Config?(v108, &_s8CipherML26AMDPbEvaluationKeyMetadataVSgMd, &_s8CipherML26AMDPbEvaluationKeyMetadataVSgMR);
      goto LABEL_60;
    }

    v38 = v108;
    v39 = v102;
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v108, v102, &_s8CipherML26AMDPbEvaluationKeyMetadataVSgMd, &_s8CipherML26AMDPbEvaluationKeyMetadataVSgMR);
    if (v33(v38 + v31, 1, v34) == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config(v39, type metadata accessor for AMDPbEvaluationKeyMetadata);
      v36 = v104;
LABEL_71:
      v84 = &_s8CipherML26AMDPbEvaluationKeyMetadataVSg_ADtMd;
      v85 = &_s8CipherML26AMDPbEvaluationKeyMetadataVSg_ADtMR;
      goto LABEL_72;
    }

    v40 = v38 + v31;
    v41 = v101;
    outlined init with take of AMDPbPIRConfig(v40, v101, type metadata accessor for AMDPbEvaluationKeyMetadata);
    v36 = v104;
    if (*v39 != *v41)
    {
      goto LABEL_69;
    }

    v42 = v102[1];
    v43 = v102[2];
    v45 = v101[1];
    v44 = v101[2];
    v46 = v43 >> 62;
    v47 = v44 >> 62;
    if (v43 >> 62 == 3)
    {
      v48 = 0;
      if (!v42 && v43 == 0xC000000000000000 && v44 >> 62 == 3)
      {
        v48 = 0;
        if (!v45 && v44 == 0xC000000000000000)
        {
          goto LABEL_59;
        }
      }

LABEL_26:
      if (v47 <= 1)
      {
        goto LABEL_27;
      }

      goto LABEL_20;
    }

    if (v46 > 1)
    {
      if (v46 == 2)
      {
        v54 = *(v42 + 16);
        v53 = *(v42 + 24);
        v51 = __OFSUB__(v53, v54);
        v48 = v53 - v54;
        if (v51)
        {
          goto LABEL_79;
        }

        goto LABEL_26;
      }

      v48 = 0;
      if (v47 <= 1)
      {
        goto LABEL_27;
      }
    }

    else if (v46)
    {
      LODWORD(v48) = HIDWORD(v42) - v42;
      if (__OFSUB__(HIDWORD(v42), v42))
      {
        goto LABEL_80;
      }

      v48 = v48;
      if (v47 <= 1)
      {
LABEL_27:
        if (v47)
        {
          LODWORD(v52) = HIDWORD(v45) - v45;
          if (__OFSUB__(HIDWORD(v45), v45))
          {
            goto LABEL_78;
          }

          v52 = v52;
        }

        else
        {
          v52 = BYTE6(v44);
        }

        goto LABEL_33;
      }
    }

    else
    {
      v48 = BYTE6(v43);
      if (v47 <= 1)
      {
        goto LABEL_27;
      }
    }

LABEL_20:
    if (v47 != 2)
    {
      if (v48)
      {
        goto LABEL_69;
      }

      goto LABEL_59;
    }

    v50 = *(v45 + 16);
    v49 = *(v45 + 24);
    v51 = __OFSUB__(v49, v50);
    v52 = v49 - v50;
    if (v51)
    {
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
    }

LABEL_33:
    if (v48 != v52)
    {
      goto LABEL_69;
    }

    if (v48 >= 1)
    {
      if (v46 > 1)
      {
        if (v46 == 2)
        {
          v55 = *(v42 + 16);
          v89 = *(v42 + 24);
          outlined copy of Data._Representation(v45, v44);
          v56 = __DataStorage._bytes.getter();
          if (v56)
          {
            v57 = __DataStorage._offset.getter();
            if (__OFSUB__(v55, v57))
            {
              goto LABEL_83;
            }

            v56 += v55 - v57;
          }

          if (__OFSUB__(v89, v55))
          {
            goto LABEL_82;
          }

          MEMORY[0x22AA5F1C0]();
          v58 = v90;
          closure #1 in static Data.== infix(_:_:)(v56, v45, v44, v110);
          v90 = v58;
          outlined consume of Data._Representation(v45, v44);
          if ((v110[0] & 1) == 0)
          {
            goto LABEL_69;
          }

          goto LABEL_59;
        }

        memset(v110, 0, 14);
        outlined copy of Data._Representation(v45, v44);
      }

      else
      {
        if (v46)
        {
          v59 = v42;
          v60 = v42 >> 32;
          v89 = v60 - v59;
          if (v60 < v59)
          {
            goto LABEL_81;
          }

          v61 = v59;
          outlined copy of Data._Representation(v45, v44);
          v62 = __DataStorage._bytes.getter();
          if (v62)
          {
            v88 = v62;
            v63 = __DataStorage._offset.getter();
            if (__OFSUB__(v61, v63))
            {
              goto LABEL_84;
            }

            v88 += v61 - v63;
          }

          else
          {
            v88 = 0;
          }

          MEMORY[0x22AA5F1C0]();
          v65 = v90;
          closure #1 in static Data.== infix(_:_:)(v88, v45, v44, v110);
          v90 = v65;
          outlined consume of Data._Representation(v45, v44);
          if ((v110[0] & 1) == 0)
          {
LABEL_69:
            outlined destroy of AMDPbHEConfig.OneOf_Config(v101, type metadata accessor for AMDPbEvaluationKeyMetadata);
            outlined destroy of AMDPbHEConfig.OneOf_Config(v102, type metadata accessor for AMDPbEvaluationKeyMetadata);
            v84 = &_s8CipherML26AMDPbEvaluationKeyMetadataVSgMd;
            v85 = &_s8CipherML26AMDPbEvaluationKeyMetadataVSgMR;
LABEL_72:
            outlined destroy of AMDPbHEConfig.OneOf_Config?(v108, v84, v85);
            goto LABEL_75;
          }

          goto LABEL_59;
        }

        v110[0] = v102[1];
        LOWORD(v110[1]) = v43;
        BYTE2(v110[1]) = BYTE2(v43);
        BYTE3(v110[1]) = BYTE3(v43);
        BYTE4(v110[1]) = BYTE4(v43);
        BYTE5(v110[1]) = BYTE5(v43);
        outlined copy of Data._Representation(v45, v44);
      }

      v64 = v90;
      closure #1 in static Data.== infix(_:_:)(v110, v45, v44, &v109);
      v90 = v64;
      outlined consume of Data._Representation(v45, v44);
      if (!v109)
      {
        goto LABEL_69;
      }
    }

LABEL_59:
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v67 = v101;
    v66 = v102;
    v68 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of AMDPbHEConfig.OneOf_Config(v67, type metadata accessor for AMDPbEvaluationKeyMetadata);
    outlined destroy of AMDPbHEConfig.OneOf_Config(v66, type metadata accessor for AMDPbEvaluationKeyMetadata);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v108, &_s8CipherML26AMDPbEvaluationKeyMetadataVSgMd, &_s8CipherML26AMDPbEvaluationKeyMetadataVSgMR);
    v37 = v95;
    if ((v68 & 1) == 0)
    {
      goto LABEL_75;
    }

LABEL_60:
    v69 = v106;
    v70 = *(v105 + 24);
    v71 = *(v97 + 48);
    v72 = v36;
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v36 + v70, v106, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMd, v28);
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v107 + v70, v69 + v71, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMd, v28);
    v73 = *v37;
    v74 = v94;
    if ((*v37)(v69, 1, v94) != 1)
    {
      break;
    }

    if (v73(v106 + v71, 1, v74) != 1)
    {
      goto LABEL_74;
    }

    outlined destroy of AMDPbHEConfig.OneOf_Config?(v106, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMd, v28);
LABEL_65:
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v81 = v107;
    v82 = dispatch thunk of static Equatable.== infix(_:_:)();
    v83 = v81;
    v21 = v104;
    outlined destroy of AMDPbHEConfig.OneOf_Config(v83, type metadata accessor for AMDPbEvaluationKey);
    outlined destroy of AMDPbHEConfig.OneOf_Config(v21, type metadata accessor for AMDPbEvaluationKey);
    if (v82)
    {
      v27 = v99 + v93;
      v24 = v100 + v93;
      if (--v22)
      {
        continue;
      }
    }

    return v82 & 1;
  }

  v75 = v106;
  v76 = v28;
  v77 = v92;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v106, v92, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMd, v76);
  if (v73(v75 + v71, 1, v74) != 1)
  {
    v78 = v106;
    v79 = v91;
    outlined init with take of AMDPbPIRConfig(v106 + v71, v91, type metadata accessor for AspireHeSerializedEvaluationKey);
    v80 = specialized static AspireHeSerializedEvaluationKey.== infix(_:_:)(v77, v79);
    v36 = v104;
    outlined destroy of AMDPbHEConfig.OneOf_Config(v79, type metadata accessor for AspireHeSerializedEvaluationKey);
    outlined destroy of AMDPbHEConfig.OneOf_Config(v77, type metadata accessor for AspireHeSerializedEvaluationKey);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v78, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMd, v76);
    v28 = v76;
    if ((v80 & 1) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_65;
  }

  outlined destroy of AMDPbHEConfig.OneOf_Config(v77, type metadata accessor for AspireHeSerializedEvaluationKey);
LABEL_74:
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v106, &_s8CipherML31AspireHeSerializedEvaluationKeyVSg_ADtMd, &_s8CipherML31AspireHeSerializedEvaluationKeyVSg_ADtMR);
  v36 = v72;
LABEL_75:
  outlined destroy of AMDPbHEConfig.OneOf_Config(v107, type metadata accessor for AMDPbEvaluationKey);
  outlined destroy of AMDPbHEConfig.OneOf_Config(v36, type metadata accessor for AMDPbEvaluationKey);
LABEL_76:
  v82 = 0;
  return v82 & 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ8CipherML17AspireApiResponseV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspireApiResponse.OneOf_Response(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v38 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v34 - v8;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML17AspireApiResponseV06OneOf_E0OSg_AFtMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSg_AFtMR);
  MEMORY[0x28223BE20](v42);
  v11 = &v34 - v10;
  v41 = type metadata accessor for AspireApiResponse(0);
  MEMORY[0x28223BE20](v41);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v34 - v16;
  v18 = *(a1 + 16);
  if (v18 != *(a2 + 16))
  {
LABEL_18:
    v33 = 0;
    return v33 & 1;
  }

  if (!v18 || a1 == a2)
  {
    v33 = 1;
    return v33 & 1;
  }

  v36 = v13;
  v37 = v9;
  v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v20 = a1 + v19;
  v21 = a2 + v19;
  v22 = (v5 + 48);
  v39 = *(v15 + 72);
  v40 = v4;
  v23 = &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd;
  v35 = &v34 - v16;
  while (1)
  {
    result = outlined init with copy of AMDPbPIRConfig(v20, v17, type metadata accessor for AspireApiResponse);
    if (!v18)
    {
      break;
    }

    v43 = v18;
    outlined init with copy of AMDPbPIRConfig(v21, v13, type metadata accessor for AspireApiResponse);
    v25 = *(v42 + 48);
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v17, v11, v23, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v13, &v11[v25], v23, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
    v26 = *v22;
    v27 = v23;
    v28 = v40;
    if ((*v22)(v11, 1, v40) == 1)
    {
      if (v26(&v11[v25], 1, v28) != 1)
      {
        goto LABEL_16;
      }

      v23 = v27;
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v11, v27, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
    }

    else
    {
      v29 = v22;
      v30 = v37;
      outlined init with copy of AMDPbHEConfig.OneOf_Config?(v11, v37, v27, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
      if (v26(&v11[v25], 1, v28) == 1)
      {
        outlined destroy of AMDPbHEConfig.OneOf_Config(v30, type metadata accessor for AspireApiResponse.OneOf_Response);
        v17 = v35;
        v13 = v36;
LABEL_16:
        outlined destroy of AMDPbHEConfig.OneOf_Config?(v11, &_s8CipherML17AspireApiResponseV06OneOf_E0OSg_AFtMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSg_AFtMR);
LABEL_17:
        outlined destroy of AMDPbHEConfig.OneOf_Config(v13, type metadata accessor for AspireApiResponse);
        outlined destroy of AMDPbHEConfig.OneOf_Config(v17, type metadata accessor for AspireApiResponse);
        goto LABEL_18;
      }

      v31 = v38;
      outlined init with take of AMDPbPIRConfig(&v11[v25], v38, type metadata accessor for AspireApiResponse.OneOf_Response);
      v32 = static AspireApiResponse.OneOf_Response.== infix(_:_:)(v30, v31);
      outlined destroy of AMDPbHEConfig.OneOf_Config(v31, type metadata accessor for AspireApiResponse.OneOf_Response);
      outlined destroy of AMDPbHEConfig.OneOf_Config(v30, type metadata accessor for AspireApiResponse.OneOf_Response);
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v11, v27, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
      v22 = v29;
      v17 = v35;
      v13 = v36;
      v23 = v27;
      if ((v32 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v33 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of AMDPbHEConfig.OneOf_Config(v13, type metadata accessor for AspireApiResponse);
    outlined destroy of AMDPbHEConfig.OneOf_Config(v17, type metadata accessor for AspireApiResponse);
    if (v33)
    {
      v18 = v43 - 1;
      v21 += v39;
      v20 += v39;
      if (v43 != 1)
      {
        continue;
      }
    }

    return v33 & 1;
  }

  __break(1u);
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ8CipherML31AspireHeSerializedCiphertextVecV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspireHeSerializedCiphertextVec(0);
  MEMORY[0x28223BE20](v4);
  v6 = (&v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v10 = (&v18 - v9);
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
LABEL_11:
    v16 = 0;
    return v16 & 1;
  }

  if (v11 && a1 != a2)
  {
    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    while (1)
    {
      outlined init with copy of AMDPbPIRConfig(v13, v10, type metadata accessor for AspireHeSerializedCiphertextVec);
      outlined init with copy of AMDPbPIRConfig(v14, v6, type metadata accessor for AspireHeSerializedCiphertextVec);
      if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ8CipherML28AspireHeSerializedCiphertextV_Tt1g5(*v10, *v6) & 1) == 0)
      {
        break;
      }

      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v16 = dispatch thunk of static Equatable.== infix(_:_:)();
      outlined destroy of AMDPbHEConfig.OneOf_Config(v6, type metadata accessor for AspireHeSerializedCiphertextVec);
      outlined destroy of AMDPbHEConfig.OneOf_Config(v10, type metadata accessor for AspireHeSerializedCiphertextVec);
      if (v16)
      {
        v14 += v15;
        v13 += v15;
        if (--v11)
        {
          continue;
        }
      }

      return v16 & 1;
    }

    outlined destroy of AMDPbHEConfig.OneOf_Config(v6, type metadata accessor for AspireHeSerializedCiphertextVec);
    outlined destroy of AMDPbHEConfig.OneOf_Config(v10, type metadata accessor for AspireHeSerializedCiphertextVec);
    goto LABEL_11;
  }

  v16 = 1;
  return v16 & 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ8CipherML16AspireApiRequestV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspireApiRequest.OneOf_Request(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v43 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML16AspireApiRequestV06OneOf_E0OSgMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v41 - v8;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML16AspireApiRequestV06OneOf_E0OSg_AFtMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSg_AFtMR);
  MEMORY[0x28223BE20](v48);
  v11 = &v41 - v10;
  v45 = type metadata accessor for AspireApiRequest(0);
  MEMORY[0x28223BE20](v45);
  v13 = (&v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v50 = (&v41 - v16);
  v17 = *(a1 + 16);
  if (v17 != *(a2 + 16))
  {
LABEL_23:
    v40 = 0;
    return v40 & 1;
  }

  if (!v17 || a1 == a2)
  {
    v40 = 1;
    return v40 & 1;
  }

  v18 = *(a1 + 16);
  v42 = v9;
  v46 = v13;
  v47 = v4;
  v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v20 = a1 + v19;
  v21 = a2 + v19;
  v22 = (v5 + 48);
  v44 = *(v15 + 72);
  v23 = v45;
  v24 = v18;
  while (1)
  {
    v25 = v50;
    result = outlined init with copy of AMDPbPIRConfig(v20, v50, type metadata accessor for AspireApiRequest);
    if (!v24)
    {
      break;
    }

    v49 = v24;
    outlined init with copy of AMDPbPIRConfig(v21, v13, type metadata accessor for AspireApiRequest);
    v27 = *v25 == *v13 && v25[1] == v13[1];
    if (!v27 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_22;
    }

    v28 = *(v23 + 20);
    v29 = *(v48 + 48);
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v50 + v28, v11, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMR);
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v13 + v28, &v11[v29], &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMR);
    v30 = *v22;
    v31 = v11;
    v32 = v11;
    v33 = v47;
    if ((*v22)(v31, 1, v47) == 1)
    {
      if (v30((v32 + v29), 1, v33) != 1)
      {
        goto LABEL_21;
      }

      outlined destroy of AMDPbHEConfig.OneOf_Config?(v32, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMR);
      v11 = v32;
      v13 = v46;
    }

    else
    {
      v34 = v42;
      outlined init with copy of AMDPbHEConfig.OneOf_Config?(v32, v42, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMR);
      if (v30((v32 + v29), 1, v33) == 1)
      {
        outlined destroy of AMDPbHEConfig.OneOf_Config(v34, type metadata accessor for AspireApiRequest.OneOf_Request);
LABEL_21:
        outlined destroy of AMDPbHEConfig.OneOf_Config?(v32, &_s8CipherML16AspireApiRequestV06OneOf_E0OSg_AFtMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSg_AFtMR);
        v13 = v46;
LABEL_22:
        outlined destroy of AMDPbHEConfig.OneOf_Config(v13, type metadata accessor for AspireApiRequest);
        outlined destroy of AMDPbHEConfig.OneOf_Config(v50, type metadata accessor for AspireApiRequest);
        goto LABEL_23;
      }

      v35 = v22;
      v36 = v43;
      outlined init with take of AMDPbPIRConfig(v32 + v29, v43, type metadata accessor for AspireApiRequest.OneOf_Request);
      v37 = static AspireApiRequest.OneOf_Request.== infix(_:_:)(v34, v36);
      v38 = v36;
      v22 = v35;
      outlined destroy of AMDPbHEConfig.OneOf_Config(v38, type metadata accessor for AspireApiRequest.OneOf_Request);
      outlined destroy of AMDPbHEConfig.OneOf_Config(v34, type metadata accessor for AspireApiRequest.OneOf_Request);
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v32, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMR);
      v11 = v32;
      v23 = v45;
      v13 = v46;
      if ((v37 & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v39 = v50;
    v40 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of AMDPbHEConfig.OneOf_Config(v13, type metadata accessor for AspireApiRequest);
    outlined destroy of AMDPbHEConfig.OneOf_Config(v39, type metadata accessor for AspireApiRequest);
    if (v40)
    {
      v24 = v49 - 1;
      v21 += v44;
      v20 += v44;
      if (v49 != 1)
      {
        continue;
      }
    }

    return v40 & 1;
  }

  __break(1u);
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ8CipherML15AMDPbHEResponseV8PbStatusO_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 40);
    do
    {
      v6 = *v3;
      v3 += 2;
      v5 = v6;
      v7 = *(v4 - 1);
      if (*v4 == 1)
      {
        if (v7 > 2)
        {
          if (v7 == 3)
          {
            if (v5 != 3)
            {
              return 0;
            }
          }

          else if (v7 == 4)
          {
            if (v5 != 4)
            {
              return 0;
            }
          }

          else if (v5 != 5)
          {
            return 0;
          }
        }

        else if (v7)
        {
          if (v7 == 1)
          {
            if (v5 != 1)
            {
              return 0;
            }
          }

          else if (v5 != 2)
          {
            return 0;
          }
        }

        else if (v5)
        {
          return 0;
        }
      }

      else if (v5 != v7)
      {
        return 0;
      }

      v4 += 16;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ8CipherML16AMDPbHEKeyStatusV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspireHeEncryptionParameters(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v77 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v78 = &v69 - v8;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeEncryptionParametersVSg_ADtMd, &_s8CipherML28AspireHeEncryptionParametersVSg_ADtMR);
  MEMORY[0x28223BE20](v80);
  v82 = &v69 - v9;
  v84 = type metadata accessor for AspireHeEvaluationKeyConfig(0);
  v10 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v85 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
  MEMORY[0x28223BE20](v12 - 8);
  v83 = &v69 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML27AspireHeEvaluationKeyConfigVSg_ADtMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSg_ADtMR);
  MEMORY[0x28223BE20](v14);
  v16 = &v69 - v15;
  v86 = type metadata accessor for AMDPbHEKeyStatus(0);
  MEMORY[0x28223BE20](v86);
  v18 = (&v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v19);
  v22 = (&v69 - v21);
  v23 = *(a1 + 16);
  if (v23 != *(a2 + 16))
  {
LABEL_71:
    v64 = 0;
    return v64 & 1;
  }

  if (!v23 || a1 == a2)
  {
    v64 = 1;
    return v64 & 1;
  }

  v71 = v4;
  v24 = 0;
  v25 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v74 = a2 + v25;
  v72 = v18;
  v73 = (v10 + 48);
  v69 = v16;
  v70 = (v5 + 48);
  v75 = *(v20 + 72);
  v76 = a1 + v25;
  v26 = v83;
  v81 = v23;
  while (1)
  {
    v27 = v75 * v24;
    result = outlined init with copy of AMDPbPIRConfig(v76 + v75 * v24, v22, type metadata accessor for AMDPbHEKeyStatus);
    if (v24 == v81)
    {
      break;
    }

    outlined init with copy of AMDPbPIRConfig(v74 + v27, v18, type metadata accessor for AMDPbHEKeyStatus);
    if (*v22 != *v18)
    {
      goto LABEL_70;
    }

    v79 = v24;
    v29 = *(v86 + 28);
    v30 = v14;
    v31 = *(v14 + 48);
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v22 + v29, v16, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v18 + v29, &v16[v31], &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
    v32 = *v73;
    v33 = v84;
    if ((*v73)(v16, 1, v84) == 1)
    {
      if (v32(&v16[v31], 1, v33) != 1)
      {
        goto LABEL_74;
      }

      outlined destroy of AMDPbHEConfig.OneOf_Config?(v16, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
      v14 = v30;
      v34 = v79;
      v18 = v72;
      goto LABEL_59;
    }

    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v16, v26, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
    if (v32(&v16[v31], 1, v33) == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config(v26, type metadata accessor for AspireHeEvaluationKeyConfig);
LABEL_74:
      v67 = &_s8CipherML27AspireHeEvaluationKeyConfigVSg_ADtMd;
      v68 = &_s8CipherML27AspireHeEvaluationKeyConfigVSg_ADtMR;
      goto LABEL_69;
    }

    v35 = v85;
    outlined init with take of AMDPbPIRConfig(&v16[v31], v85, type metadata accessor for AspireHeEvaluationKeyConfig);
    v36 = *(v33 + 28);
    v37 = *(v80 + 48);
    v38 = v82;
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v26 + v36, v82, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(&v35[v36], v38 + v37, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
    v39 = v71;
    v40 = *v70;
    if ((*v70)(v38, 1, v71) != 1)
    {
      v44 = v78;
      outlined init with copy of AMDPbHEConfig.OneOf_Config?(v38, v78, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
      if (v40(v38 + v37, 1, v39) == 1)
      {
        outlined destroy of AMDPbHEConfig.OneOf_Config(v44, type metadata accessor for AspireHeEncryptionParameters);
        v42 = v38;
        v16 = v69;
LABEL_76:
        v65 = &_s8CipherML28AspireHeEncryptionParametersVSg_ADtMd;
        v66 = &_s8CipherML28AspireHeEncryptionParametersVSg_ADtMR;
        goto LABEL_67;
      }

      v14 = v30;
      v45 = v77;
      outlined init with take of AMDPbPIRConfig(v38 + v37, v77, type metadata accessor for AspireHeEncryptionParameters);
      v34 = v79;
      v16 = v69;
      if (*v44 != *v45)
      {
        goto LABEL_66;
      }

      if (*(v44 + 8) != *(v45 + 8))
      {
        goto LABEL_66;
      }

      v46 = *(v44 + 16);
      v47 = *(v45 + 16);
      v48 = *(v46 + 16);
      if (v48 != *(v47 + 16))
      {
        goto LABEL_66;
      }

      if (v48 && v46 != v47)
      {
        v49 = (v46 + 32);
        v50 = (v47 + 32);
        while (*v49 == *v50)
        {
          ++v49;
          ++v50;
          if (!--v48)
          {
            goto LABEL_24;
          }
        }

LABEL_66:
        outlined destroy of AMDPbHEConfig.OneOf_Config(v45, type metadata accessor for AspireHeEncryptionParameters);
        outlined destroy of AMDPbHEConfig.OneOf_Config(v44, type metadata accessor for AspireHeEncryptionParameters);
        v65 = &_s8CipherML28AspireHeEncryptionParametersVSgMd;
        v66 = &_s8CipherML28AspireHeEncryptionParametersVSgMR;
        v42 = v82;
LABEL_67:
        outlined destroy of AMDPbHEConfig.OneOf_Config?(v42, v65, v66);
        v43 = v83;
LABEL_68:
        outlined destroy of AMDPbHEConfig.OneOf_Config(v85, type metadata accessor for AspireHeEvaluationKeyConfig);
        outlined destroy of AMDPbHEConfig.OneOf_Config(v43, type metadata accessor for AspireHeEvaluationKeyConfig);
        v67 = &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd;
        v68 = &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR;
LABEL_69:
        outlined destroy of AMDPbHEConfig.OneOf_Config?(v16, v67, v68);
        v18 = v72;
LABEL_70:
        outlined destroy of AMDPbHEConfig.OneOf_Config(v18, type metadata accessor for AMDPbHEKeyStatus);
        outlined destroy of AMDPbHEConfig.OneOf_Config(v22, type metadata accessor for AMDPbHEKeyStatus);
        goto LABEL_71;
      }

LABEL_24:
      if (*(v44 + 32))
      {
        if ((*(v45 + 32) & 1) == 0)
        {
          v51 = 0;
LABEL_30:
          if (v51 != *(v45 + 24))
          {
            goto LABEL_66;
          }
        }
      }

      else
      {
        v51 = *(v44 + 24);
        if ((*(v45 + 32) & 1) == 0)
        {
          goto LABEL_30;
        }

        if (v51)
        {
          goto LABEL_66;
        }
      }

      v52 = *(v44 + 40);
      v53 = *(v45 + 40);
      if (*(v44 + 48))
      {
        v52 = v52 != 0;
      }

      if (*(v45 + 48) == 1)
      {
        if (v53)
        {
          if (v52 != 1)
          {
            goto LABEL_66;
          }
        }

        else if (v52)
        {
          goto LABEL_66;
        }
      }

      else if (v52 != v53)
      {
        goto LABEL_66;
      }

      v54 = *(v44 + 56);
      v55 = *(v45 + 56);
      if (*(v45 + 64) == 1)
      {
        if (v55)
        {
          if (v55 == 1)
          {
            if (v54 != 1)
            {
              goto LABEL_66;
            }
          }

          else if (v54 != 2)
          {
            goto LABEL_66;
          }
        }

        else if (v54)
        {
          goto LABEL_66;
        }
      }

      else if (v54 != v55)
      {
        goto LABEL_66;
      }

      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v56 = dispatch thunk of static Equatable.== infix(_:_:)();
      outlined destroy of AMDPbHEConfig.OneOf_Config(v45, type metadata accessor for AspireHeEncryptionParameters);
      outlined destroy of AMDPbHEConfig.OneOf_Config(v44, type metadata accessor for AspireHeEncryptionParameters);
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v82, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
      v43 = v83;
      if ((v56 & 1) == 0)
      {
        goto LABEL_68;
      }

      goto LABEL_51;
    }

    v41 = v40(v38 + v37, 1, v39) == 1;
    v16 = v69;
    v42 = v38;
    if (!v41)
    {
      goto LABEL_76;
    }

    v14 = v30;
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v38, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
    v43 = v83;
    v34 = v79;
LABEL_51:
    v57 = *v43;
    v58 = *v85;
    v59 = *(*v43 + 16);
    if (v59 != *(*v85 + 16))
    {
      goto LABEL_68;
    }

    if (v59 && v57 != v58)
    {
      v60 = (v57 + 32);
      v61 = (v58 + 32);
      while (*v60 == *v61)
      {
        ++v60;
        ++v61;
        if (!--v59)
        {
          goto LABEL_57;
        }
      }

      goto LABEL_68;
    }

LABEL_57:
    if (v43[8] != v85[8])
    {
      goto LABEL_68;
    }

    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v62 = v85;
    v63 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of AMDPbHEConfig.OneOf_Config(v62, type metadata accessor for AspireHeEvaluationKeyConfig);
    v26 = v43;
    outlined destroy of AMDPbHEConfig.OneOf_Config(v43, type metadata accessor for AspireHeEvaluationKeyConfig);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v16, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
    v18 = v72;
    if ((v63 & 1) == 0)
    {
      goto LABEL_70;
    }

LABEL_59:
    if ((v22[1] != v18[1] || v22[2] != v18[2]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_70;
    }

    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v64 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of AMDPbHEConfig.OneOf_Config(v18, type metadata accessor for AMDPbHEKeyStatus);
    outlined destroy of AMDPbHEConfig.OneOf_Config(v22, type metadata accessor for AMDPbHEKeyStatus);
    if (v64)
    {
      v24 = v34 + 1;
      if (v24 != v81)
      {
        continue;
      }
    }

    return v64 & 1;
  }

  __break(1u);
  return result;
}

void _sSasSQRzlE2eeoiySbSayxG_ABtFZ8CipherML12AMDPbHEReplyV_Tt1g5(uint64_t a1, uint64_t a2)
{
  __s1[3] = *MEMORY[0x277D85DE8];
  v4 = type metadata accessor for AMDPbPECReply(0);
  MEMORY[0x28223BE20](v4);
  v255 = (&v230 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v251 = type metadata accessor for AspireHeSerializedFullCiphertext(0);
  MEMORY[0x28223BE20](v251);
  v271 = (&v230 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v248 = type metadata accessor for AspireHeSerializedSeededCiphertext(0);
  MEMORY[0x28223BE20](v248);
  v263 = &v230 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v254 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeO_AEtMd, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeO_AEtMR);
  MEMORY[0x28223BE20](v254);
  v265 = &v230 - v8;
  v9 = type metadata accessor for AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v250 = (&v230 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v249 = (&v230 - v13);
  MEMORY[0x28223BE20](v14);
  v266 = &v230 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMd, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMR);
  MEMORY[0x28223BE20](v16 - 8);
  v267 = &v230 - v17;
  v268 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSg_AFtMd, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSg_AFtMR);
  MEMORY[0x28223BE20](v268);
  v276 = &v230 - v18;
  v262 = type metadata accessor for AspireHeSerializedCiphertext(0);
  v273 = *(v262 - 8);
  MEMORY[0x28223BE20](v262);
  v278 = &v230 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v279 = &v230 - v21;
  v252 = type metadata accessor for AspireHeSerializedCiphertextVec(0);
  v261 = *(v252 - 8);
  MEMORY[0x28223BE20](v252);
  v269 = &v230 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v270 = (&v230 - v24);
  v253 = type metadata accessor for AMDPbPIRReply(0);
  MEMORY[0x28223BE20](v253);
  v275 = &v230 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v272 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML12AMDPbHEReplyV11OneOf_ReplyO_AEtMd, &_s8CipherML12AMDPbHEReplyV11OneOf_ReplyO_AEtMR);
  MEMORY[0x28223BE20](v272);
  v284 = &v230 - v26;
  v283 = type metadata accessor for AMDPbHEReply.OneOf_Reply(0);
  v27 = *(v283 - 8);
  MEMORY[0x28223BE20](v283);
  v258 = (&v230 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v29);
  v31 = &v230 - v30;
  MEMORY[0x28223BE20](v32);
  v264 = &v230 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML12AMDPbHEReplyV11OneOf_ReplyOSgMd, &_s8CipherML12AMDPbHEReplyV11OneOf_ReplyOSgMR);
  MEMORY[0x28223BE20](v34 - 8);
  v282 = &v230 - v35;
  v280 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML12AMDPbHEReplyV11OneOf_ReplyOSg_AFtMd, &_s8CipherML12AMDPbHEReplyV11OneOf_ReplyOSg_AFtMR);
  MEMORY[0x28223BE20](v280);
  v37 = &v230 - v36;
  v277 = type metadata accessor for AMDPbHEReply(0);
  MEMORY[0x28223BE20](v277);
  v285 = &v230 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v286 = &v230 - v41;
  v42 = *(a1 + 16);
  if (v42 != *(a2 + 16) || !v42 || a1 == a2)
  {
    return;
  }

  v238 = v4;
  v43 = 0;
  v236 = 0;
  v44 = (*(v40 + 80) + 32) & ~*(v40 + 80);
  v260 = a1 + v44;
  v257 = a2 + v44;
  v256 = (v27 + 48);
  v246 = (v10 + 48);
  v259 = *(v40 + 72);
  v45 = v264;
  v274 = v9;
  v247 = v31;
  v239 = v37;
  v281 = v42;
  while (1)
  {
    v46 = v259 * v43;
    outlined init with copy of AMDPbPIRConfig(v260 + v259 * v43, v286, type metadata accessor for AMDPbHEReply);
    if (v43 == v281)
    {
      __break(1u);
      __break(1u);
LABEL_294:
      __break(1u);
LABEL_295:
      __break(1u);
LABEL_296:
      __break(1u);
LABEL_297:
      __break(1u);
LABEL_298:
      __break(1u);
LABEL_299:
      __break(1u);
LABEL_300:
      __break(1u);
LABEL_301:
      __break(1u);
LABEL_302:
      __break(1u);
LABEL_303:
      __break(1u);
LABEL_304:
      __break(1u);
LABEL_305:
      __break(1u);
LABEL_306:
      __break(1u);
LABEL_307:
      __break(1u);
LABEL_308:
      __break(1u);
LABEL_309:
      __break(1u);
LABEL_310:
      __break(1u);
LABEL_311:
      __break(1u);
LABEL_312:
      __break(1u);
LABEL_313:
      __break(1u);
LABEL_314:
      __break(1u);
LABEL_315:
      __break(1u);
LABEL_316:
      __break(1u);
LABEL_317:
      __break(1u);
LABEL_318:
      __break(1u);
LABEL_319:
      __break(1u);
LABEL_320:
      __break(1u);
LABEL_321:
      __break(1u);
LABEL_322:
      __break(1u);
LABEL_323:
      __break(1u);
LABEL_324:
      __break(1u);
LABEL_325:
      __break(1u);
LABEL_326:
      __break(1u);
LABEL_327:
      __break(1u);
LABEL_328:
      __break(1u);
LABEL_329:
      __break(1u);
LABEL_330:
      __break(1u);
LABEL_331:
      __break(1u);
LABEL_332:
      __break(1u);
LABEL_333:
      __break(1u);
LABEL_334:
      __break(1u);
LABEL_335:
      __break(1u);
LABEL_336:
      __break(1u);
    }

    v47 = v285;
    outlined init with copy of AMDPbPIRConfig(v257 + v46, v285, type metadata accessor for AMDPbHEReply);
    v48 = *(v280 + 48);
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v286, v37, &_s8CipherML12AMDPbHEReplyV11OneOf_ReplyOSgMd, &_s8CipherML12AMDPbHEReplyV11OneOf_ReplyOSgMR);
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v47, &v37[v48], &_s8CipherML12AMDPbHEReplyV11OneOf_ReplyOSgMd, &_s8CipherML12AMDPbHEReplyV11OneOf_ReplyOSgMR);
    v49 = *v256;
    v50 = v283;
    if ((*v256)(v37, 1, v283) != 1)
    {
      break;
    }

    if (v49(&v37[v48], 1, v50) != 1)
    {
      goto LABEL_275;
    }

LABEL_269:
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v37, &_s8CipherML12AMDPbHEReplyV11OneOf_ReplyOSgMd, &_s8CipherML12AMDPbHEReplyV11OneOf_ReplyOSgMR);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v222 = v285;
    v221 = v286;
    v223 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of AMDPbHEConfig.OneOf_Config(v222, type metadata accessor for AMDPbHEReply);
    outlined destroy of AMDPbHEConfig.OneOf_Config(v221, type metadata accessor for AMDPbHEReply);
    if (v223)
    {
      ++v43;
      v9 = v274;
      if (v43 != v281)
      {
        continue;
      }
    }

    return;
  }

  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v37, v282, &_s8CipherML12AMDPbHEReplyV11OneOf_ReplyOSgMd, &_s8CipherML12AMDPbHEReplyV11OneOf_ReplyOSgMR);
  if (v49(&v37[v48], 1, v50) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config(v282, type metadata accessor for AMDPbHEReply.OneOf_Reply);
LABEL_275:
    v227 = &_s8CipherML12AMDPbHEReplyV11OneOf_ReplyOSg_AFtMd;
    v228 = &_s8CipherML12AMDPbHEReplyV11OneOf_ReplyOSg_AFtMR;
LABEL_288:
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v37, v227, v228);
    outlined destroy of AMDPbHEConfig.OneOf_Config(v285, type metadata accessor for AMDPbHEReply);
    outlined destroy of AMDPbHEConfig.OneOf_Config(v286, type metadata accessor for AMDPbHEReply);
    return;
  }

  outlined init with take of AMDPbPIRConfig(&v37[v48], v45, type metadata accessor for AMDPbHEReply.OneOf_Reply);
  v51 = *(v272 + 48);
  v52 = v284;
  outlined init with copy of AMDPbPIRConfig(v282, v284, type metadata accessor for AMDPbHEReply.OneOf_Reply);
  outlined init with copy of AMDPbPIRConfig(v45, v52 + v51, type metadata accessor for AMDPbHEReply.OneOf_Reply);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v53 = v258;
    outlined init with copy of AMDPbPIRConfig(v284, v258, type metadata accessor for AMDPbHEReply.OneOf_Reply);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v54 = v255;
      outlined init with take of AMDPbPIRConfig(v284 + v51, v255, type metadata accessor for AMDPbPECReply);
      if (_sSasSQRzlE2eeoiySbSayxG_ABtFZ8CipherML18AMDPbPECShardReplyV_Tt1g5(*v53, *v54))
      {
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        if (dispatch thunk of static Equatable.== infix(_:_:)())
        {
          outlined destroy of AMDPbHEConfig.OneOf_Config(v54, type metadata accessor for AMDPbPECReply);
          outlined destroy of AMDPbHEConfig.OneOf_Config(v53, type metadata accessor for AMDPbPECReply);
LABEL_268:
          outlined destroy of AMDPbHEConfig.OneOf_Config(v284, type metadata accessor for AMDPbHEReply.OneOf_Reply);
          outlined destroy of AMDPbHEConfig.OneOf_Config(v45, type metadata accessor for AMDPbHEReply.OneOf_Reply);
          outlined destroy of AMDPbHEConfig.OneOf_Config(v282, type metadata accessor for AMDPbHEReply.OneOf_Reply);
          goto LABEL_269;
        }
      }

      outlined destroy of AMDPbHEConfig.OneOf_Config(v54, type metadata accessor for AMDPbPECReply);
      outlined destroy of AMDPbHEConfig.OneOf_Config(v53, type metadata accessor for AMDPbPECReply);
      outlined destroy of AMDPbHEConfig.OneOf_Config(v284, type metadata accessor for AMDPbHEReply.OneOf_Reply);
      goto LABEL_287;
    }

    outlined destroy of AMDPbHEConfig.OneOf_Config(v53, type metadata accessor for AMDPbPECReply);
    goto LABEL_282;
  }

  v55 = v247;
  outlined init with copy of AMDPbPIRConfig(v284, v247, type metadata accessor for AMDPbHEReply.OneOf_Reply);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config(v55, type metadata accessor for AMDPbPIRReply);
    v37 = v239;
LABEL_282:
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v284, &_s8CipherML12AMDPbHEReplyV11OneOf_ReplyO_AEtMd, &_s8CipherML12AMDPbHEReplyV11OneOf_ReplyO_AEtMR);
LABEL_287:
    outlined destroy of AMDPbHEConfig.OneOf_Config(v45, type metadata accessor for AMDPbHEReply.OneOf_Reply);
    outlined destroy of AMDPbHEConfig.OneOf_Config(v282, type metadata accessor for AMDPbHEReply.OneOf_Reply);
    v227 = &_s8CipherML12AMDPbHEReplyV11OneOf_ReplyOSgMd;
    v228 = &_s8CipherML12AMDPbHEReplyV11OneOf_ReplyOSgMR;
    goto LABEL_288;
  }

  v56 = v275;
  outlined init with take of AMDPbPIRConfig(v284 + v51, v275, type metadata accessor for AMDPbPIRReply);
  v57 = *v55;
  v58 = *v56;
  v59 = *(*v55 + 16);
  v60 = v246;
  if (v59 != *(*v56 + 16))
  {
    goto LABEL_286;
  }

  if (!v59 || v57 == v58)
  {
LABEL_266:
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
    {
      goto LABEL_286;
    }

    outlined destroy of AMDPbHEConfig.OneOf_Config(v275, type metadata accessor for AMDPbPIRReply);
    outlined destroy of AMDPbHEConfig.OneOf_Config(v55, type metadata accessor for AMDPbPIRReply);
    v37 = v239;
    goto LABEL_268;
  }

  v61 = 0;
  v62 = (*(v261 + 80) + 32) & ~*(v261 + 80);
  v235 = v57 + v62;
  v234 = v58 + v62;
  v233 = v57;
  v232 = v59;
  while (1)
  {
    if (v61 >= *(v57 + 16))
    {
      goto LABEL_296;
    }

    v63 = v61;
    v64 = *(v261 + 72) * v61;
    v65 = v270;
    outlined init with copy of AMDPbPIRConfig(v235 + v64, v270, type metadata accessor for AspireHeSerializedCiphertextVec);
    v66 = *(v58 + 16);
    v237 = v63;
    if (v63 >= v66)
    {
      goto LABEL_297;
    }

    v67 = v234 + v64;
    v68 = v269;
    outlined init with copy of AMDPbPIRConfig(v67, v269, type metadata accessor for AspireHeSerializedCiphertextVec);
    v69 = *v65;
    v70 = *v68;
    v71 = *(v69 + 16);
    if (v71 != *(*v68 + 16))
    {
      goto LABEL_285;
    }

    if (v71 && v69 != v70)
    {
      break;
    }

LABEL_264:
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v217 = v270;
    v218 = v269;
    v219 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of AMDPbHEConfig.OneOf_Config(v218, type metadata accessor for AspireHeSerializedCiphertextVec);
    v220 = v217;
    v9 = v274;
    outlined destroy of AMDPbHEConfig.OneOf_Config(v220, type metadata accessor for AspireHeSerializedCiphertextVec);
    v45 = v264;
    v57 = v233;
    if ((v219 & 1) == 0)
    {
      goto LABEL_286;
    }

    v61 = v237 + 1;
    if (v237 + 1 == v232)
    {
      goto LABEL_266;
    }
  }

  v72 = 0;
  v73 = (*(v273 + 80) + 32) & ~*(v273 + 80);
  v245 = v69 + v73;
  v244 = v70 + v73;
  v243 = v58;
  v242 = v69;
  v241 = v70;
  v240 = v71;
  while (2)
  {
    if (v72 >= *(v69 + 16))
    {
      goto LABEL_294;
    }

    v74 = *(v273 + 72) * v72;
    v75 = v279;
    outlined init with copy of AMDPbPIRConfig(v245 + v74, v279, type metadata accessor for AspireHeSerializedCiphertext);
    if (v72 >= *(v70 + 16))
    {
      goto LABEL_295;
    }

    v76 = v278;
    outlined init with copy of AMDPbPIRConfig(v244 + v74, v278, type metadata accessor for AspireHeSerializedCiphertext);
    v77 = *(v268 + 48);
    v78 = v276;
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v75, v276, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMd, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMR);
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v76, v78 + v77, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMd, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMR);
    v79 = *v60;
    if ((*v60)(v78, 1, v9) == 1)
    {
      v80 = v79(v78 + v77, 1, v9);
      v81 = v279;
      if (v80 != 1)
      {
        outlined destroy of AMDPbHEConfig.OneOf_Config(v278, type metadata accessor for AspireHeSerializedCiphertext);
        outlined destroy of AMDPbHEConfig.OneOf_Config(v81, type metadata accessor for AspireHeSerializedCiphertext);
        v55 = v247;
        goto LABEL_284;
      }

LABEL_262:
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v78, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMd, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMR);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v215 = v278;
      v216 = dispatch thunk of static Equatable.== infix(_:_:)();
      v9 = v274;
      outlined destroy of AMDPbHEConfig.OneOf_Config(v215, type metadata accessor for AspireHeSerializedCiphertext);
      outlined destroy of AMDPbHEConfig.OneOf_Config(v81, type metadata accessor for AspireHeSerializedCiphertext);
      v55 = v247;
      v60 = v246;
      v58 = v243;
      v69 = v242;
      v70 = v241;
      if ((v216 & 1) == 0)
      {
        goto LABEL_285;
      }

      if (++v72 == v240)
      {
        goto LABEL_264;
      }

      continue;
    }

    break;
  }

  v82 = v267;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v78, v267, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMd, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMR);
  if (v79(v78 + v77, 1, v9) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config(v278, type metadata accessor for AspireHeSerializedCiphertext);
    outlined destroy of AMDPbHEConfig.OneOf_Config(v279, type metadata accessor for AspireHeSerializedCiphertext);
    outlined destroy of AMDPbHEConfig.OneOf_Config(v82, type metadata accessor for AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType);
LABEL_284:
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v78, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSg_AFtMd, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSg_AFtMR);
LABEL_285:
    outlined destroy of AMDPbHEConfig.OneOf_Config(v269, type metadata accessor for AspireHeSerializedCiphertextVec);
    outlined destroy of AMDPbHEConfig.OneOf_Config(v270, type metadata accessor for AspireHeSerializedCiphertextVec);
    v45 = v264;
LABEL_286:
    outlined destroy of AMDPbHEConfig.OneOf_Config(v275, type metadata accessor for AMDPbPIRReply);
    outlined destroy of AMDPbHEConfig.OneOf_Config(v55, type metadata accessor for AMDPbPIRReply);
    outlined destroy of AMDPbHEConfig.OneOf_Config(v284, type metadata accessor for AMDPbHEReply.OneOf_Reply);
    v37 = v239;
    goto LABEL_287;
  }

  v83 = v78 + v77;
  v84 = v266;
  outlined init with take of AMDPbPIRConfig(v83, v266, type metadata accessor for AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType);
  v85 = *(v254 + 48);
  v86 = v82;
  v87 = v265;
  outlined init with copy of AMDPbPIRConfig(v86, v265, type metadata accessor for AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType);
  outlined init with copy of AMDPbPIRConfig(v84, v87 + v85, type metadata accessor for AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v88 = v249;
    outlined init with copy of AMDPbPIRConfig(v87, v249, type metadata accessor for AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v229 = type metadata accessor for AspireHeSerializedSeededCiphertext;
      goto LABEL_292;
    }

    v97 = v263;
    outlined init with take of AMDPbPIRConfig(v87 + v85, v263, type metadata accessor for AspireHeSerializedSeededCiphertext);
    v98 = *v88;
    v99 = v88[1];
    v101 = *v97;
    v100 = v97[1];
    v102 = v99 >> 62;
    v103 = v100 >> 62;
    if (v99 >> 62 == 3)
    {
      v104 = 0;
      if (!v98 && v99 == 0xC000000000000000 && v100 >> 62 == 3)
      {
        v104 = 0;
        if (!v101 && v100 == 0xC000000000000000)
        {
          goto LABEL_199;
        }
      }
    }

    else if (v102 > 1)
    {
      if (v102 == 2)
      {
        v109 = *(v98 + 16);
        v108 = *(v98 + 24);
        v107 = __OFSUB__(v108, v109);
        v104 = v108 - v109;
        if (v107)
        {
          goto LABEL_306;
        }
      }

      else
      {
        v104 = 0;
      }
    }

    else if (v102)
    {
      LODWORD(v104) = HIDWORD(v98) - v98;
      if (__OFSUB__(HIDWORD(v98), v98))
      {
        goto LABEL_307;
      }

      v104 = v104;
    }

    else
    {
      v104 = BYTE6(v99);
    }

    if (v103 > 1)
    {
      if (v103 != 2)
      {
        if (v104)
        {
          goto LABEL_277;
        }

        goto LABEL_199;
      }

      v121 = *(v101 + 16);
      v120 = *(v101 + 24);
      v107 = __OFSUB__(v120, v121);
      v119 = v120 - v121;
      if (v107)
      {
        goto LABEL_301;
      }
    }

    else if (v103)
    {
      LODWORD(v119) = HIDWORD(v101) - v101;
      if (__OFSUB__(HIDWORD(v101), v101))
      {
        goto LABEL_299;
      }

      v119 = v119;
    }

    else
    {
      v119 = BYTE6(v100);
    }

    if (v104 != v119)
    {
      goto LABEL_277;
    }

    if (v104 < 1)
    {
      goto LABEL_199;
    }

    if (v102 > 1)
    {
      if (v102 != 2)
      {
        memset(__s1, 0, 14);
        if (v103)
        {
          if (v103 != 2)
          {
            v183 = v101;
            v107 = __OFSUB__(v101 >> 32, v101);
            v123 = (v101 >> 32) - v101;
            if (v123 < 0 != v107)
            {
              goto LABEL_325;
            }

            v184 = __DataStorage._bytes.getter();
            if (!v184)
            {
              goto LABEL_340;
            }

            v185 = v184;
            v186 = __DataStorage._offset.getter();
            if (__OFSUB__(v183, v186))
            {
              goto LABEL_329;
            }

            v127 = v183 - v186 + v185;
            v128 = MEMORY[0x22AA5F1C0]();
            if (!v127)
            {
              goto LABEL_341;
            }

            goto LABEL_194;
          }

          v151 = *(v101 + 16);
          v152 = *(v101 + 24);
          v127 = __DataStorage._bytes.getter();
          if (v127)
          {
            v153 = __DataStorage._offset.getter();
            if (__OFSUB__(v151, v153))
            {
              goto LABEL_334;
            }

            v127 += v151 - v153;
          }

          v107 = __OFSUB__(v152, v151);
          v154 = v152 - v151;
          if (v107)
          {
            goto LABEL_327;
          }

          v155 = MEMORY[0x22AA5F1C0]();
          if (!v127)
          {
            goto LABEL_342;
          }

LABEL_169:
          if (v155 >= v154)
          {
            v157 = v154;
          }

          else
          {
            v157 = v155;
          }

          goto LABEL_197;
        }

LABEL_145:
        __s2 = v101;
        v288 = v100;
        v289 = BYTE2(v100);
        v290 = BYTE3(v100);
        v291 = BYTE4(v100);
        v157 = BYTE6(v100);
        v292 = BYTE5(v100);
        p_s2 = &__s2;
        goto LABEL_198;
      }

      v129 = *(v98 + 16);
      v130 = *(v98 + 24);
      v131 = __DataStorage._bytes.getter();
      if (v131)
      {
        v132 = v131;
        v133 = __DataStorage._offset.getter();
        if (__OFSUB__(v129, v133))
        {
          goto LABEL_316;
        }

        v231 = v129 - v133 + v132;
      }

      else
      {
        v231 = 0;
      }

      if (__OFSUB__(v130, v129))
      {
        goto LABEL_313;
      }

      MEMORY[0x22AA5F1C0]();
      v160 = v231;
    }

    else
    {
      if (!v102)
      {
        __s1[0] = *v88;
        LOWORD(__s1[1]) = v99;
        BYTE2(__s1[1]) = BYTE2(v99);
        BYTE3(__s1[1]) = BYTE3(v99);
        BYTE4(__s1[1]) = BYTE4(v99);
        BYTE5(__s1[1]) = BYTE5(v99);
        if (v103)
        {
          if (v103 == 1)
          {
            v122 = v101;
            v107 = __OFSUB__(v101 >> 32, v101);
            v123 = (v101 >> 32) - v101;
            if (v123 < 0 != v107)
            {
              goto LABEL_323;
            }

            v124 = __DataStorage._bytes.getter();
            if (!v124)
            {
              goto LABEL_345;
            }

            v125 = v124;
            v126 = __DataStorage._offset.getter();
            if (__OFSUB__(v122, v126))
            {
              goto LABEL_331;
            }

            v127 = v122 - v126 + v125;
            v128 = MEMORY[0x22AA5F1C0]();
            if (!v127)
            {
              goto LABEL_344;
            }

LABEL_194:
            if (v128 >= v123)
            {
              v157 = v123;
            }

            else
            {
              v157 = v128;
            }

LABEL_197:
            p_s2 = v127;
LABEL_198:
            if (memcmp(__s1, p_s2, v157))
            {
              goto LABEL_277;
            }

LABEL_199:
            v187 = v88[2];
            v188 = v88[3];
            v190 = *(v263 + 16);
            v189 = *(v263 + 24);
            v191 = v188 >> 62;
            v192 = v189 >> 62;
            if (v188 >> 62 == 3)
            {
              v193 = 0;
              if (!v187 && v188 == 0xC000000000000000 && v189 >> 62 == 3)
              {
                v193 = 0;
                if (!v190 && v189 == 0xC000000000000000)
                {
                  goto LABEL_259;
                }
              }
            }

            else if (v191 > 1)
            {
              if (v191 == 2)
              {
                v195 = *(v187 + 16);
                v194 = *(v187 + 24);
                v107 = __OFSUB__(v194, v195);
                v193 = v194 - v195;
                if (v107)
                {
                  goto LABEL_308;
                }
              }

              else
              {
                v193 = 0;
              }
            }

            else if (v191)
            {
              LODWORD(v193) = HIDWORD(v187) - v187;
              if (__OFSUB__(HIDWORD(v187), v187))
              {
                goto LABEL_309;
              }

              v193 = v193;
            }

            else
            {
              v193 = BYTE6(v188);
            }

            if (v192 > 1)
            {
              if (v192 != 2)
              {
                if (v193)
                {
                  goto LABEL_277;
                }

                goto LABEL_259;
              }

              v198 = *(v190 + 16);
              v197 = *(v190 + 24);
              v107 = __OFSUB__(v197, v198);
              v196 = v197 - v198;
              if (v107)
              {
                goto LABEL_303;
              }
            }

            else if (v192)
            {
              LODWORD(v196) = HIDWORD(v190) - v190;
              if (__OFSUB__(HIDWORD(v190), v190))
              {
                goto LABEL_302;
              }

              v196 = v196;
            }

            else
            {
              v196 = BYTE6(v189);
            }

            if (v193 != v196)
            {
              goto LABEL_277;
            }

            if (v193 >= 1)
            {
              if (v191 > 1)
              {
                if (v191 != 2)
                {
                  memset(__s1, 0, 14);
                  if (v192 == 2)
                  {
                    goto LABEL_249;
                  }

                  if (v192 == 1)
                  {
                    v199 = v190;
                    v200 = v190 >> 32;
                    if (v190 >> 32 < v190)
                    {
                      goto LABEL_332;
                    }

LABEL_250:
                    v211 = v236;
                    v212 = specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v199, v200, v189 & 0x3FFFFFFFFFFFFFFFLL, __s1);
                    v165 = &v268;
                    v236 = v211;
                    if (v211)
                    {
                      goto LABEL_346;
                    }

                    if ((v212 & 1) == 0)
                    {
LABEL_277:
                      v224 = type metadata accessor for AspireHeSerializedSeededCiphertext;
                      v225 = type metadata accessor for AspireHeSerializedSeededCiphertext;
                      v226 = &v294;
                      goto LABEL_278;
                    }

                    goto LABEL_259;
                  }

LABEL_247:
                  __s2 = v190;
                  v288 = v189;
                  v289 = BYTE2(v189);
                  v290 = BYTE3(v189);
                  v291 = BYTE4(v189);
                  v292 = BYTE5(v189);
                  if (memcmp(__s1, &__s2, BYTE6(v189)))
                  {
                    goto LABEL_277;
                  }

                  goto LABEL_259;
                }

                v201 = *(v187 + 16);
                v231 = *(v187 + 24);
                v202 = __DataStorage._bytes.getter();
                if (v202)
                {
                  v203 = v202;
                  v204 = __DataStorage._offset.getter();
                  if (__OFSUB__(v201, v204))
                  {
                    goto LABEL_320;
                  }

                  v205 = v201 - v204 + v203;
                }

                else
                {
                  v205 = 0;
                }

                if (__OFSUB__(v231, v201))
                {
                  goto LABEL_315;
                }

                MEMORY[0x22AA5F1C0]();
                v213 = v205;
              }

              else
              {
                if (!v191)
                {
                  __s1[0] = v88[2];
                  LOWORD(__s1[1]) = v188;
                  BYTE2(__s1[1]) = BYTE2(v188);
                  BYTE3(__s1[1]) = BYTE3(v188);
                  BYTE4(__s1[1]) = BYTE4(v188);
                  BYTE5(__s1[1]) = BYTE5(v188);
                  if (v192)
                  {
                    if (v192 == 1)
                    {
                      v199 = v190;
                      v200 = v190 >> 32;
                      if (v190 >> 32 < v190)
                      {
                        goto LABEL_333;
                      }

                      goto LABEL_250;
                    }

LABEL_249:
                    v199 = *(v190 + 16);
                    v200 = *(v190 + 24);
                    goto LABEL_250;
                  }

                  goto LABEL_247;
                }

                v206 = v187;
                if (v187 >> 32 < v187)
                {
                  goto LABEL_314;
                }

                v207 = __DataStorage._bytes.getter();
                if (v207)
                {
                  v208 = v207;
                  v209 = __DataStorage._offset.getter();
                  if (__OFSUB__(v206, v209))
                  {
                    goto LABEL_321;
                  }

                  v210 = v206 - v209 + v208;
                }

                else
                {
                  v210 = 0;
                }

                MEMORY[0x22AA5F1C0]();
                v213 = v210;
              }

              v214 = v236;
              closure #1 in static Data.== infix(_:_:)(v213, v190, v189, __s1);
              v236 = v214;
              if ((__s1[0] & 1) == 0)
              {
                goto LABEL_277;
              }
            }

LABEL_259:
            type metadata accessor for UnknownStorage();
            lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
            if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
            {
              goto LABEL_277;
            }

            v180 = type metadata accessor for AspireHeSerializedSeededCiphertext;
            v181 = type metadata accessor for AspireHeSerializedSeededCiphertext;
            v182 = &v294;
            goto LABEL_261;
          }

          v166 = *(v101 + 16);
          v167 = *(v101 + 24);
          v127 = __DataStorage._bytes.getter();
          if (v127)
          {
            v168 = __DataStorage._offset.getter();
            if (__OFSUB__(v166, v168))
            {
              goto LABEL_335;
            }

            v127 += v166 - v168;
          }

          v107 = __OFSUB__(v167, v166);
          v154 = v167 - v166;
          if (v107)
          {
            goto LABEL_328;
          }

          v155 = MEMORY[0x22AA5F1C0]();
          if (!v127)
          {
            goto LABEL_343;
          }

          goto LABEL_169;
        }

        goto LABEL_145;
      }

      v146 = v98;
      if (v98 >> 32 < v98)
      {
        goto LABEL_311;
      }

      v147 = __DataStorage._bytes.getter();
      if (v147)
      {
        v148 = v147;
        v149 = __DataStorage._offset.getter();
        if (__OFSUB__(v146, v149))
        {
          goto LABEL_319;
        }

        v150 = v146 - v149 + v148;
      }

      else
      {
        v150 = 0;
      }

      MEMORY[0x22AA5F1C0]();
      v160 = v150;
    }

    v162 = v236;
    closure #1 in static Data.== infix(_:_:)(v160, v101, v100, __s1);
    v236 = v162;
    if ((__s1[0] & 1) == 0)
    {
      goto LABEL_277;
    }

    goto LABEL_199;
  }

  v88 = v250;
  outlined init with copy of AMDPbPIRConfig(v87, v250, type metadata accessor for AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v229 = type metadata accessor for AspireHeSerializedFullCiphertext;
LABEL_292:
    outlined destroy of AMDPbHEConfig.OneOf_Config(v88, v229);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v87, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeO_AEtMd, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeO_AEtMR);
    goto LABEL_279;
  }

  v89 = v271;
  outlined init with take of AMDPbPIRConfig(v87 + v85, v271, type metadata accessor for AspireHeSerializedFullCiphertext);
  v90 = *v88;
  v91 = v88[1];
  v93 = *v89;
  v92 = v89[1];
  v94 = v91 >> 62;
  v95 = v92 >> 62;
  if (v91 >> 62 == 3)
  {
    v96 = 0;
    if (v90)
    {
      goto LABEL_68;
    }

    if (v91 != 0xC000000000000000)
    {
      goto LABEL_68;
    }

    if (v92 >> 62 != 3)
    {
      goto LABEL_68;
    }

    v96 = 0;
    if (v93 || v92 != 0xC000000000000000)
    {
      goto LABEL_68;
    }

LABEL_181:
    v175 = v88[2];
    v176 = v271[2];
    v177 = *(v175 + 16);
    if (v177 != *(v176 + 16))
    {
      goto LABEL_273;
    }

    if (v177 && v175 != v176)
    {
      v178 = (v175 + 32);
      v179 = (v176 + 32);
      while (*v178 == *v179)
      {
        ++v178;
        ++v179;
        if (!--v177)
        {
          goto LABEL_187;
        }
      }

LABEL_273:
      v224 = type metadata accessor for AspireHeSerializedFullCiphertext;
      v225 = type metadata accessor for AspireHeSerializedFullCiphertext;
      v226 = &v295;
LABEL_278:
      outlined destroy of AMDPbHEConfig.OneOf_Config(*(v226 - 32), v224);
      outlined destroy of AMDPbHEConfig.OneOf_Config(v88, v225);
      outlined destroy of AMDPbHEConfig.OneOf_Config(v265, type metadata accessor for AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType);
LABEL_279:
      v55 = v247;
      outlined destroy of AMDPbHEConfig.OneOf_Config(v266, type metadata accessor for AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType);
      outlined destroy of AMDPbHEConfig.OneOf_Config(v267, type metadata accessor for AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType);
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v276, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMd, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMR);
      outlined destroy of AMDPbHEConfig.OneOf_Config(v278, type metadata accessor for AspireHeSerializedCiphertext);
      outlined destroy of AMDPbHEConfig.OneOf_Config(v279, type metadata accessor for AspireHeSerializedCiphertext);
      goto LABEL_285;
    }

LABEL_187:
    if (v88[3] != v271[3])
    {
      goto LABEL_273;
    }

    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
    {
      goto LABEL_273;
    }

    v180 = type metadata accessor for AspireHeSerializedFullCiphertext;
    v181 = type metadata accessor for AspireHeSerializedFullCiphertext;
    v182 = &v295;
LABEL_261:
    outlined destroy of AMDPbHEConfig.OneOf_Config(*(v182 - 32), v180);
    outlined destroy of AMDPbHEConfig.OneOf_Config(v88, v181);
    outlined destroy of AMDPbHEConfig.OneOf_Config(v265, type metadata accessor for AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType);
    outlined destroy of AMDPbHEConfig.OneOf_Config(v266, type metadata accessor for AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType);
    outlined destroy of AMDPbHEConfig.OneOf_Config(v267, type metadata accessor for AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType);
    v78 = v276;
    v81 = v279;
    goto LABEL_262;
  }

  if (v94 > 1)
  {
    if (v94 == 2)
    {
      v106 = *(v90 + 16);
      v105 = *(v90 + 24);
      v107 = __OFSUB__(v105, v106);
      v96 = v105 - v106;
      if (v107)
      {
        goto LABEL_304;
      }
    }

    else
    {
      v96 = 0;
    }
  }

  else if (v94)
  {
    LODWORD(v96) = HIDWORD(v90) - v90;
    if (__OFSUB__(HIDWORD(v90), v90))
    {
      goto LABEL_305;
    }

    v96 = v96;
  }

  else
  {
    v96 = BYTE6(v91);
  }

LABEL_68:
  if (v95 > 1)
  {
    if (v95 != 2)
    {
      if (v96)
      {
        goto LABEL_273;
      }

      goto LABEL_181;
    }

    v112 = *(v93 + 16);
    v111 = *(v93 + 24);
    v107 = __OFSUB__(v111, v112);
    v110 = v111 - v112;
    if (v107)
    {
      goto LABEL_298;
    }
  }

  else if (v95)
  {
    LODWORD(v110) = HIDWORD(v93) - v93;
    if (__OFSUB__(HIDWORD(v93), v93))
    {
      goto LABEL_300;
    }

    v110 = v110;
  }

  else
  {
    v110 = BYTE6(v92);
  }

  if (v96 != v110)
  {
    goto LABEL_273;
  }

  if (v96 < 1)
  {
    goto LABEL_181;
  }

  if (v94 <= 1)
  {
    if (v94)
    {
      v134 = v90;
      if (v90 >> 32 < v90)
      {
        goto LABEL_310;
      }

      v135 = __DataStorage._bytes.getter();
      if (v135)
      {
        v136 = v135;
        v137 = __DataStorage._offset.getter();
        if (__OFSUB__(v134, v137))
        {
          goto LABEL_318;
        }

        v138 = v134 - v137 + v136;
      }

      else
      {
        v138 = 0;
      }

      MEMORY[0x22AA5F1C0]();
      v161 = v236;
      closure #1 in static Data.== infix(_:_:)(v138, v93, v92, __s1);
      v236 = v161;
      if ((__s1[0] & 1) == 0)
      {
        goto LABEL_273;
      }

      goto LABEL_181;
    }

    __s1[0] = *v88;
    LOWORD(__s1[1]) = v91;
    BYTE2(__s1[1]) = BYTE2(v91);
    BYTE3(__s1[1]) = BYTE3(v91);
    BYTE4(__s1[1]) = BYTE4(v91);
    BYTE5(__s1[1]) = BYTE5(v91);
    if (v95)
    {
      if (v95 == 1)
      {
        v113 = v93;
        v114 = v93 >> 32;
        if (v93 >> 32 < v93)
        {
          goto LABEL_324;
        }
      }

      else
      {
        v113 = *(v93 + 16);
        v114 = *(v93 + 24);
      }

      v163 = v236;
      v164 = specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v113, v114, v92 & 0x3FFFFFFFFFFFFFFFLL, __s1);
      v165 = &v268;
      v236 = v163;
      if (v163)
      {
        goto LABEL_346;
      }

      if ((v164 & 1) == 0)
      {
        goto LABEL_273;
      }

      goto LABEL_181;
    }

LABEL_144:
    __s2 = v93;
    v288 = v92;
    v289 = BYTE2(v92);
    v290 = BYTE3(v92);
    v291 = BYTE4(v92);
    v145 = BYTE6(v92);
    v292 = BYTE5(v92);
    v156 = &__s2;
LABEL_180:
    if (memcmp(__s1, v156, v145))
    {
      goto LABEL_273;
    }

    goto LABEL_181;
  }

  if (v94 == 2)
  {
    v115 = *(v90 + 16);
    v231 = *(v90 + 24);
    v116 = __DataStorage._bytes.getter();
    if (v116)
    {
      v117 = v116;
      v118 = __DataStorage._offset.getter();
      if (__OFSUB__(v115, v118))
      {
        goto LABEL_317;
      }

      v230 = v115 - v118 + v117;
    }

    else
    {
      v230 = 0;
    }

    if (__OFSUB__(v231, v115))
    {
      goto LABEL_312;
    }

    MEMORY[0x22AA5F1C0]();
    v159 = v236;
    closure #1 in static Data.== infix(_:_:)(v230, v93, v92, __s1);
    v236 = v159;
    if ((__s1[0] & 1) == 0)
    {
      goto LABEL_273;
    }

    goto LABEL_181;
  }

  memset(__s1, 0, 14);
  if (!v95)
  {
    goto LABEL_144;
  }

  if (v95 == 2)
  {
    v139 = *(v93 + 16);
    v140 = *(v93 + 24);
    v141 = __DataStorage._bytes.getter();
    if (v141)
    {
      v142 = __DataStorage._offset.getter();
      if (__OFSUB__(v139, v142))
      {
        goto LABEL_336;
      }

      v141 += v139 - v142;
    }

    v107 = __OFSUB__(v140, v139);
    v143 = v140 - v139;
    if (v107)
    {
      goto LABEL_326;
    }

    v144 = MEMORY[0x22AA5F1C0]();
    if (!v141)
    {
      goto LABEL_339;
    }

    if (v144 >= v143)
    {
      v145 = v143;
    }

    else
    {
      v145 = v144;
    }

LABEL_179:
    v156 = v141;
    goto LABEL_180;
  }

  v169 = v93;
  v107 = __OFSUB__(v93 >> 32, v93);
  v170 = (v93 >> 32) - v93;
  if (v170 < 0 != v107)
  {
    goto LABEL_322;
  }

  v171 = __DataStorage._bytes.getter();
  if (v171)
  {
    v172 = v171;
    v173 = __DataStorage._offset.getter();
    if (__OFSUB__(v169, v173))
    {
      goto LABEL_330;
    }

    v141 = v169 - v173 + v172;
    v174 = MEMORY[0x22AA5F1C0]();
    if (!v141)
    {
      goto LABEL_338;
    }

    if (v174 >= v170)
    {
      v145 = v170;
    }

    else
    {
      v145 = v174;
    }

    goto LABEL_179;
  }

  MEMORY[0x22AA5F1C0]();
LABEL_338:
  __break(1u);
LABEL_339:
  __break(1u);
LABEL_340:
  MEMORY[0x22AA5F1C0]();
LABEL_341:
  __break(1u);
LABEL_342:
  __break(1u);
LABEL_343:
  __break(1u);
LABEL_344:
  __break(1u);
LABEL_345:
  MEMORY[0x22AA5F1C0]();
  __break(1u);
LABEL_346:

  __break(1u);
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ8CipherML12AMDPbHEQueryV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AMDPbPECQuery(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for AMDPbPIRQuery(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = (&v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML12AMDPbHEQueryV11OneOf_QueryO_AEtMd, &_s8CipherML12AMDPbHEQueryV11OneOf_QueryO_AEtMR);
  MEMORY[0x28223BE20](v68);
  v67 = &v61 - v10;
  v76 = type metadata accessor for AMDPbHEQuery.OneOf_Query(0);
  v11 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v13 = (&v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v65 = (&v61 - v15);
  MEMORY[0x28223BE20](v16);
  v74 = &v61 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML12AMDPbHEQueryV11OneOf_QueryOSgMd, &_s8CipherML12AMDPbHEQueryV11OneOf_QueryOSgMR);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v61 - v19;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML12AMDPbHEQueryV11OneOf_QueryOSg_AFtMd, &_s8CipherML12AMDPbHEQueryV11OneOf_QueryOSg_AFtMR);
  MEMORY[0x28223BE20](v75);
  v22 = &v61 - v21;
  v73 = type metadata accessor for AMDPbHEQuery(0);
  MEMORY[0x28223BE20](v73);
  v77 = &v61 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = (&v61 - v26);
  v28 = *(a1 + 16);
  if (v28 != *(a2 + 16))
  {
LABEL_34:
    v57 = 0;
    return v57 & 1;
  }

  if (!v28 || a1 == a2)
  {
    v57 = 1;
    return v57 & 1;
  }

  v29 = *(a1 + 16);
  v69 = v20;
  v70 = v22;
  v63 = v6;
  v64 = v13;
  v62 = v9;
  v30 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v31 = a1 + v30;
  v32 = a2 + v30;
  v71 = (v11 + 48);
  v72 = &v61 - v26;
  v66 = *(v25 + 72);
  v33 = v76;
  v34 = v77;
  v35 = v73;
  v36 = v29;
  while (1)
  {
    result = outlined init with copy of AMDPbPIRConfig(v31, v27, type metadata accessor for AMDPbHEQuery);
    if (!v36)
    {
      break;
    }

    outlined init with copy of AMDPbPIRConfig(v32, v34, type metadata accessor for AMDPbHEQuery);
    v38 = *v27 == *v34 && v27[1] == v34[1];
    if (!v38 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_33;
    }

    v78 = v36;
    v39 = *(v35 + 20);
    v40 = *(v75 + 48);
    v41 = v27 + v39;
    v42 = v70;
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v41, v70, &_s8CipherML12AMDPbHEQueryV11OneOf_QueryOSgMd, &_s8CipherML12AMDPbHEQueryV11OneOf_QueryOSgMR);
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v34 + v39, v42 + v40, &_s8CipherML12AMDPbHEQueryV11OneOf_QueryOSgMd, &_s8CipherML12AMDPbHEQueryV11OneOf_QueryOSgMR);
    v43 = *v71;
    if ((*v71)(v42, 1, v33) == 1)
    {
      v44 = v43(v42 + v40, 1, v33);
      v34 = v77;
      if (v44 != 1)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v45 = v69;
      outlined init with copy of AMDPbHEConfig.OneOf_Config?(v42, v69, &_s8CipherML12AMDPbHEQueryV11OneOf_QueryOSgMd, &_s8CipherML12AMDPbHEQueryV11OneOf_QueryOSgMR);
      if (v43(v42 + v40, 1, v33) == 1)
      {
        outlined destroy of AMDPbHEConfig.OneOf_Config(v45, type metadata accessor for AMDPbHEQuery.OneOf_Query);
        v34 = v77;
LABEL_27:
        v58 = &_s8CipherML12AMDPbHEQueryV11OneOf_QueryOSg_AFtMd;
        v59 = &_s8CipherML12AMDPbHEQueryV11OneOf_QueryOSg_AFtMR;
        goto LABEL_32;
      }

      v46 = v74;
      outlined init with take of AMDPbPIRConfig(v42 + v40, v74, type metadata accessor for AMDPbHEQuery.OneOf_Query);
      v47 = *(v68 + 48);
      v48 = v45;
      v49 = v67;
      outlined init with copy of AMDPbPIRConfig(v48, v67, type metadata accessor for AMDPbHEQuery.OneOf_Query);
      outlined init with copy of AMDPbPIRConfig(v46, v49 + v47, type metadata accessor for AMDPbHEQuery.OneOf_Query);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v34 = v77;
      if (EnumCaseMultiPayload == 1)
      {
        v51 = v64;
        outlined init with copy of AMDPbPIRConfig(v49, v64, type metadata accessor for AMDPbHEQuery.OneOf_Query);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          v60 = type metadata accessor for AMDPbPECQuery;
          goto LABEL_30;
        }

        v52 = v63;
        outlined init with take of AMDPbPIRConfig(v49 + v47, v63, type metadata accessor for AMDPbPECQuery);
        specialized static AMDPbPECQuery.== infix(_:_:)(v51, v52);
        v54 = v53;
        v55 = type metadata accessor for AMDPbPECQuery;
      }

      else
      {
        v51 = v65;
        outlined init with copy of AMDPbPIRConfig(v49, v65, type metadata accessor for AMDPbHEQuery.OneOf_Query);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v60 = type metadata accessor for AMDPbPIRQuery;
LABEL_30:
          outlined destroy of AMDPbHEConfig.OneOf_Config(v51, v60);
          outlined destroy of AMDPbHEConfig.OneOf_Config?(v49, &_s8CipherML12AMDPbHEQueryV11OneOf_QueryO_AEtMd, &_s8CipherML12AMDPbHEQueryV11OneOf_QueryO_AEtMR);
LABEL_31:
          outlined destroy of AMDPbHEConfig.OneOf_Config(v74, type metadata accessor for AMDPbHEQuery.OneOf_Query);
          outlined destroy of AMDPbHEConfig.OneOf_Config(v69, type metadata accessor for AMDPbHEQuery.OneOf_Query);
          v58 = &_s8CipherML12AMDPbHEQueryV11OneOf_QueryOSgMd;
          v59 = &_s8CipherML12AMDPbHEQueryV11OneOf_QueryOSgMR;
LABEL_32:
          outlined destroy of AMDPbHEConfig.OneOf_Config?(v42, v58, v59);
          v27 = v72;
LABEL_33:
          outlined destroy of AMDPbHEConfig.OneOf_Config(v34, type metadata accessor for AMDPbHEQuery);
          outlined destroy of AMDPbHEConfig.OneOf_Config(v27, type metadata accessor for AMDPbHEQuery);
          goto LABEL_34;
        }

        v52 = v62;
        outlined init with take of AMDPbPIRConfig(v49 + v47, v62, type metadata accessor for AMDPbPIRQuery);
        v54 = specialized static AMDPbPIRQuery.== infix(_:_:)(v51, v52);
        v55 = type metadata accessor for AMDPbPIRQuery;
      }

      v56 = v55;
      outlined destroy of AMDPbHEConfig.OneOf_Config(v52, v55);
      outlined destroy of AMDPbHEConfig.OneOf_Config(v51, v56);
      outlined destroy of AMDPbHEConfig.OneOf_Config(v49, type metadata accessor for AMDPbHEQuery.OneOf_Query);
      if ((v54 & 1) == 0)
      {
        goto LABEL_31;
      }

      outlined destroy of AMDPbHEConfig.OneOf_Config(v74, type metadata accessor for AMDPbHEQuery.OneOf_Query);
      outlined destroy of AMDPbHEConfig.OneOf_Config(v69, type metadata accessor for AMDPbHEQuery.OneOf_Query);
      v33 = v76;
      v35 = v73;
    }

    outlined destroy of AMDPbHEConfig.OneOf_Config?(v42, &_s8CipherML12AMDPbHEQueryV11OneOf_QueryOSgMd, &_s8CipherML12AMDPbHEQueryV11OneOf_QueryOSgMR);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v27 = v72;
    v57 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of AMDPbHEConfig.OneOf_Config(v34, type metadata accessor for AMDPbHEQuery);
    outlined destroy of AMDPbHEConfig.OneOf_Config(v27, type metadata accessor for AMDPbHEQuery);
    if (v57)
    {
      v36 = v78 - 1;
      v32 += v66;
      v31 += v66;
      if (v78 != 1)
      {
        continue;
      }
    }

    return v57 & 1;
  }

  __break(1u);
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ8CipherML18AMDPbPECShardReplyV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v83 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v84 = &v73 - v8;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSg_AFtMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSg_AFtMR);
  MEMORY[0x28223BE20](v86);
  v87 = &v73 - v9;
  v91 = type metadata accessor for AspireSimilarityPlaintextPacking(0);
  v10 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v88 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  MEMORY[0x28223BE20](v12 - 8);
  v89 = &v73 - v13;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML32AspireSimilarityPlaintextPackingVSg_ADtMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSg_ADtMR);
  MEMORY[0x28223BE20](v90);
  v94 = &v73 - v14;
  v97 = type metadata accessor for AspireSimilaritySerializedCiphertextMatrix(0);
  v15 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v92 = &v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSgMd, &_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSgMR);
  MEMORY[0x28223BE20](v17 - 8);
  v95 = &v73 - v18;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSg_ADtMd, &_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSg_ADtMR);
  MEMORY[0x28223BE20](v93);
  v20 = &v73 - v19;
  v96 = type metadata accessor for AMDPbPECShardReply(0);
  MEMORY[0x28223BE20](v96);
  v22 = (&v73 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v23);
  v26 = (&v73 - v25);
  v27 = *(a1 + 16);
  if (v27 != *(a2 + 16))
  {
LABEL_45:
    v70 = 0;
    return v70 & 1;
  }

  if (!v27 || a1 == a2)
  {
    v70 = 1;
    return v70 & 1;
  }

  v75 = v4;
  v28 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v29 = a1 + v28;
  v81 = a2 + v28;
  v30 = (v15 + 48);
  v31 = 0;
  v80 = v30;
  v77 = (v10 + 48);
  v74 = (v5 + 48);
  v32 = *(v24 + 72);
  v33 = v95;
  v78 = v32;
  v79 = v29;
  v85 = v27;
  v76 = v22;
  while (1)
  {
    result = outlined init with copy of AMDPbPIRConfig(v29 + v32 * v31, v26, type metadata accessor for AMDPbPECShardReply);
    if (v31 == v85)
    {
      break;
    }

    v82 = v31;
    outlined init with copy of AMDPbPIRConfig(v81 + v32 * v31, v22, type metadata accessor for AMDPbPECShardReply);
    v35 = *(v96 + 28);
    v36 = *(v93 + 48);
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v26 + v35, v20, &_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSgMd, &_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSgMR);
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v22 + v35, &v20[v36], &_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSgMd, &_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSgMR);
    v37 = *v80;
    v38 = v97;
    if ((*v80)(v20, 1, v97) == 1)
    {
      if (v37(&v20[v36], 1, v38) != 1)
      {
        goto LABEL_36;
      }

      outlined destroy of AMDPbHEConfig.OneOf_Config?(v20, &_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSgMd, &_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSgMR);
    }

    else
    {
      outlined init with copy of AMDPbHEConfig.OneOf_Config?(v20, v33, &_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSgMd, &_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSgMR);
      if (v37(&v20[v36], 1, v38) == 1)
      {
        outlined destroy of AMDPbHEConfig.OneOf_Config(v33, type metadata accessor for AspireSimilaritySerializedCiphertextMatrix);
LABEL_36:
        v71 = &_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSg_ADtMd;
        v72 = &_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSg_ADtMR;
        goto LABEL_43;
      }

      v39 = v92;
      outlined init with take of AMDPbPIRConfig(&v20[v36], v92, type metadata accessor for AspireSimilaritySerializedCiphertextMatrix);
      if (*v33 != *v39 || *(v33 + 4) != *(v39 + 4) || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ8CipherML28AspireHeSerializedCiphertextV_Tt1g5(*(v33 + 8), *(v39 + 8)) & 1) == 0)
      {
        goto LABEL_42;
      }

      v40 = v33;
      v41 = v39;
      v42 = *(v97 + 32);
      v43 = *(v90 + 48);
      v44 = v94;
      outlined init with copy of AMDPbHEConfig.OneOf_Config?(v40 + v42, v94, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
      outlined init with copy of AMDPbHEConfig.OneOf_Config?(v41 + v42, v44 + v43, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
      v45 = *v77;
      v46 = v44;
      v47 = v91;
      if ((*v77)(v46, 1, v91) == 1)
      {
        v48 = v45(v94 + v43, 1, v47);
        v33 = v95;
        v22 = v76;
        if (v48 != 1)
        {
          goto LABEL_38;
        }

        outlined destroy of AMDPbHEConfig.OneOf_Config?(v94, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
        v39 = v92;
      }

      else
      {
        v49 = v47;
        v50 = v94;
        v51 = v89;
        outlined init with copy of AMDPbHEConfig.OneOf_Config?(v94, v89, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
        if (v45(v50 + v43, 1, v49) == 1)
        {
          outlined destroy of AMDPbHEConfig.OneOf_Config(v51, type metadata accessor for AspireSimilarityPlaintextPacking);
          v33 = v95;
          v22 = v76;
LABEL_38:
          outlined destroy of AMDPbHEConfig.OneOf_Config?(v94, &_s8CipherML32AspireSimilarityPlaintextPackingVSg_ADtMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSg_ADtMR);
          v39 = v92;
          goto LABEL_42;
        }

        v52 = v88;
        outlined init with take of AMDPbPIRConfig(v94 + v43, v88, type metadata accessor for AspireSimilarityPlaintextPacking);
        v53 = v87;
        v54 = *(v86 + 48);
        outlined init with copy of AMDPbHEConfig.OneOf_Config?(v51, v87, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
        outlined init with copy of AMDPbHEConfig.OneOf_Config?(v52, v53 + v54, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
        v55 = *v74;
        v56 = v75;
        v57 = (*v74)(v53, 1, v75);
        v22 = v76;
        if (v57 == 1)
        {
          if (v55(v53 + v54, 1, v56) != 1)
          {
            goto LABEL_40;
          }

          outlined destroy of AMDPbHEConfig.OneOf_Config?(v53, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
        }

        else
        {
          v58 = v84;
          outlined init with copy of AMDPbHEConfig.OneOf_Config?(v53, v84, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
          if (v55(v53 + v54, 1, v56) == 1)
          {
            outlined destroy of AMDPbHEConfig.OneOf_Config(v58, type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType);
LABEL_40:
            outlined destroy of AMDPbHEConfig.OneOf_Config?(v53, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSg_AFtMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSg_AFtMR);
LABEL_41:
            outlined destroy of AMDPbHEConfig.OneOf_Config(v88, type metadata accessor for AspireSimilarityPlaintextPacking);
            outlined destroy of AMDPbHEConfig.OneOf_Config(v89, type metadata accessor for AspireSimilarityPlaintextPacking);
            outlined destroy of AMDPbHEConfig.OneOf_Config?(v94, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
            v39 = v92;
            v33 = v95;
LABEL_42:
            outlined destroy of AMDPbHEConfig.OneOf_Config(v39, type metadata accessor for AspireSimilaritySerializedCiphertextMatrix);
            outlined destroy of AMDPbHEConfig.OneOf_Config(v33, type metadata accessor for AspireSimilaritySerializedCiphertextMatrix);
            v71 = &_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSgMd;
            v72 = &_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSgMR;
LABEL_43:
            outlined destroy of AMDPbHEConfig.OneOf_Config?(v20, v71, v72);
LABEL_44:
            outlined destroy of AMDPbHEConfig.OneOf_Config(v22, type metadata accessor for AMDPbPECShardReply);
            outlined destroy of AMDPbHEConfig.OneOf_Config(v26, type metadata accessor for AMDPbPECShardReply);
            goto LABEL_45;
          }

          v59 = v83;
          outlined init with take of AMDPbPIRConfig(v53 + v54, v83, type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType);
          v60 = static AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType.== infix(_:_:)(v58, v59);
          outlined destroy of AMDPbHEConfig.OneOf_Config(v59, type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType);
          outlined destroy of AMDPbHEConfig.OneOf_Config(v58, type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType);
          outlined destroy of AMDPbHEConfig.OneOf_Config?(v53, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
          if ((v60 & 1) == 0)
          {
            goto LABEL_41;
          }
        }

        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v62 = v88;
        v61 = v89;
        v63 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of AMDPbHEConfig.OneOf_Config(v62, type metadata accessor for AspireSimilarityPlaintextPacking);
        outlined destroy of AMDPbHEConfig.OneOf_Config(v61, type metadata accessor for AspireSimilarityPlaintextPacking);
        outlined destroy of AMDPbHEConfig.OneOf_Config?(v94, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
        v39 = v92;
        v33 = v95;
        if ((v63 & 1) == 0)
        {
          goto LABEL_42;
        }
      }

      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v64 = dispatch thunk of static Equatable.== infix(_:_:)();
      v33 = v95;
      outlined destroy of AMDPbHEConfig.OneOf_Config(v39, type metadata accessor for AspireSimilaritySerializedCiphertextMatrix);
      outlined destroy of AMDPbHEConfig.OneOf_Config(v33, type metadata accessor for AspireSimilaritySerializedCiphertextMatrix);
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v20, &_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSgMd, &_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSgMR);
      if ((v64 & 1) == 0)
      {
        goto LABEL_44;
      }
    }

    v65 = *v26;
    v66 = *v22;
    v67 = *(*v26 + 16);
    if (v67 != *(*v22 + 16))
    {
      goto LABEL_44;
    }

    if (v67 && v65 != v66)
    {
      v68 = (v65 + 32);
      v69 = (v66 + 32);
      while (*v68 == *v69)
      {
        ++v68;
        ++v69;
        if (!--v67)
        {
          goto LABEL_30;
        }
      }

      goto LABEL_44;
    }

LABEL_30:
    if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ10Foundation4DataV_Tt1g5(v26[1], v22[1]) & 1) == 0)
    {
      goto LABEL_44;
    }

    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v70 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of AMDPbHEConfig.OneOf_Config(v22, type metadata accessor for AMDPbPECShardReply);
    outlined destroy of AMDPbHEConfig.OneOf_Config(v26, type metadata accessor for AMDPbPECShardReply);
    if (v70)
    {
      v31 = v82 + 1;
      v32 = v78;
      v29 = v79;
      if (v82 + 1 != v85)
      {
        continue;
      }
    }

    return v70 & 1;
  }

  __break(1u);
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ8CipherML19AMDPbPIRShardConfigV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AMDPbPIRShardConfig(0);
  MEMORY[0x28223BE20](v4);
  v6 = (&v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v10 = (&v25 - v9);
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
LABEL_22:
    v24 = 0;
    return v24 & 1;
  }

  if (!v11 || a1 == a2)
  {
    v24 = 1;
    return v24 & 1;
  }

  v12 = 0;
  v13 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v16 = *(v8 + 72);
  while (1)
  {
    result = outlined init with copy of AMDPbPIRConfig(v14 + v16 * v12, v10, type metadata accessor for AMDPbPIRShardConfig);
    if (v12 == v11)
    {
      break;
    }

    result = outlined init with copy of AMDPbPIRConfig(v15 + v16 * v12, v6, type metadata accessor for AMDPbPIRShardConfig);
    if (*v10 != *v6 || v10[1] != v6[1] || (v18 = v10[2], v19 = v6[2], v20 = *(v18 + 16), v20 != *(v19 + 16)))
    {
LABEL_21:
      outlined destroy of AMDPbHEConfig.OneOf_Config(v6, type metadata accessor for AMDPbPIRShardConfig);
      outlined destroy of AMDPbHEConfig.OneOf_Config(v10, type metadata accessor for AMDPbPIRShardConfig);
      goto LABEL_22;
    }

    if (v20)
    {
      v21 = v18 == v19;
    }

    else
    {
      v21 = 1;
    }

    if (!v21)
    {
      v22 = (v18 + 32);
      v23 = (v19 + 32);
      while (v20)
      {
        if (*v22 != *v23)
        {
          goto LABEL_21;
        }

        ++v22;
        ++v23;
        if (!--v20)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
      break;
    }

LABEL_17:
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v24 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of AMDPbHEConfig.OneOf_Config(v6, type metadata accessor for AMDPbPIRShardConfig);
    outlined destroy of AMDPbHEConfig.OneOf_Config(v10, type metadata accessor for AMDPbPIRShardConfig);
    if ((v24 & 1) != 0 && ++v12 != v11)
    {
      continue;
    }

    return v24 & 1;
  }

  __break(1u);
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ8CipherML18AspireApiKeyStatusV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspireHeEncryptionParameters(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v64 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v65 = &v54 - v8;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeEncryptionParametersVSg_ADtMd, &_s8CipherML28AspireHeEncryptionParametersVSg_ADtMR);
  MEMORY[0x28223BE20](v66);
  v69 = &v54 - v9;
  v70 = type metadata accessor for AspireHeEvaluationKeyConfig(0);
  v10 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v68 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
  MEMORY[0x28223BE20](v12 - 8);
  v72 = &v54 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML27AspireHeEvaluationKeyConfigVSg_ADtMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSg_ADtMR);
  MEMORY[0x28223BE20](v14);
  v16 = &v54 - v15;
  v71 = type metadata accessor for AspireApiKeyStatus(0);
  MEMORY[0x28223BE20](v71);
  v18 = (&v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v19);
  v22 = &v54 - v21;
  v23 = *(a1 + 16);
  if (v23 != *(a2 + 16))
  {
    goto LABEL_35;
  }

  if (!v23 || a1 == a2)
  {
    v51 = 1;
    return v51 & 1;
  }

  v56 = v4;
  v24 = 0;
  v25 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v60 = a2 + v25;
  v58 = v18;
  v59 = (v10 + 48);
  v54 = &v54 - v21;
  v55 = (v5 + 48);
  v61 = *(v20 + 72);
  v62 = a1 + v25;
  v63 = v16;
  v57 = v14;
  v67 = v23;
  while (1)
  {
    v26 = v61 * v24;
    result = outlined init with copy of AMDPbPIRConfig(v62 + v61 * v24, v22, type metadata accessor for AspireApiKeyStatus);
    if (v24 == v67)
    {
      __break(1u);
      return result;
    }

    outlined init with copy of AMDPbPIRConfig(v60 + v26, v18, type metadata accessor for AspireApiKeyStatus);
    if (*v22 != *v18)
    {
      goto LABEL_34;
    }

    v28 = *(v71 + 24);
    v29 = *(v14 + 48);
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(&v22[v28], v16, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v18 + v28, &v16[v29], &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
    v30 = *v59;
    v31 = v70;
    if ((*v59)(v16, 1, v70) == 1)
    {
      if (v30(&v16[v29], 1, v31) == 1)
      {
        outlined destroy of AMDPbHEConfig.OneOf_Config?(v16, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
        v14 = v57;
        v18 = v58;
        goto LABEL_24;
      }

      outlined destroy of AMDPbHEConfig.OneOf_Config(v58, type metadata accessor for AspireApiKeyStatus);
      v53 = v22;
      v52 = type metadata accessor for AspireApiKeyStatus;
LABEL_30:
      outlined destroy of AMDPbHEConfig.OneOf_Config(v53, v52);
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v16, &_s8CipherML27AspireHeEvaluationKeyConfigVSg_ADtMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSg_ADtMR);
      goto LABEL_35;
    }

    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v16, v72, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
    if (v30(&v16[v29], 1, v31) == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config(v58, type metadata accessor for AspireApiKeyStatus);
      outlined destroy of AMDPbHEConfig.OneOf_Config(v22, type metadata accessor for AspireApiKeyStatus);
      v52 = type metadata accessor for AspireHeEvaluationKeyConfig;
      v53 = v72;
      goto LABEL_30;
    }

    v32 = v68;
    outlined init with take of AMDPbPIRConfig(&v16[v29], v68, type metadata accessor for AspireHeEvaluationKeyConfig);
    v33 = *(v31 + 28);
    v34 = *(v66 + 48);
    v35 = v69;
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(&v72[v33], v69, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v32 + v33, v35 + v34, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
    v36 = v56;
    v37 = *v55;
    if ((*v55)(v35, 1, v56) == 1)
    {
      v38 = v37(v69 + v34, 1, v36);
      v22 = v54;
      if (v38 != 1)
      {
        goto LABEL_32;
      }

      outlined destroy of AMDPbHEConfig.OneOf_Config?(v69, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
      v39 = v68;
      v14 = v57;
    }

    else
    {
      v40 = v69;
      v41 = v65;
      outlined init with copy of AMDPbHEConfig.OneOf_Config?(v69, v65, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
      if (v37(v40 + v34, 1, v36) == 1)
      {
        outlined destroy of AMDPbHEConfig.OneOf_Config(v41, type metadata accessor for AspireHeEncryptionParameters);
        v22 = v54;
LABEL_32:
        outlined destroy of AMDPbHEConfig.OneOf_Config?(v69, &_s8CipherML28AspireHeEncryptionParametersVSg_ADtMd, &_s8CipherML28AspireHeEncryptionParametersVSg_ADtMR);
        v39 = v68;
        goto LABEL_33;
      }

      v42 = v64;
      outlined init with take of AMDPbPIRConfig(v40 + v34, v64, type metadata accessor for AspireHeEncryptionParameters);
      v43 = static AspireHeEncryptionParameters.== infix(_:_:)(v41, v42);
      outlined destroy of AMDPbHEConfig.OneOf_Config(v42, type metadata accessor for AspireHeEncryptionParameters);
      outlined destroy of AMDPbHEConfig.OneOf_Config(v41, type metadata accessor for AspireHeEncryptionParameters);
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v40, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
      v39 = v68;
      v14 = v57;
      v22 = v54;
      if ((v43 & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    v44 = *v72;
    v45 = *v39;
    v46 = *(*v72 + 16);
    if (v46 != *(*v39 + 16))
    {
      goto LABEL_33;
    }

    if (v46 && v44 != v45)
    {
      break;
    }

LABEL_22:
    if (v72[8] != v39[8])
    {
      goto LABEL_33;
    }

    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v49 = v72;
    v50 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of AMDPbHEConfig.OneOf_Config(v39, type metadata accessor for AspireHeEvaluationKeyConfig);
    outlined destroy of AMDPbHEConfig.OneOf_Config(v49, type metadata accessor for AspireHeEvaluationKeyConfig);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v63, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
    v18 = v58;
    if ((v50 & 1) == 0)
    {
      goto LABEL_34;
    }

LABEL_24:
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v51 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of AMDPbHEConfig.OneOf_Config(v18, type metadata accessor for AspireApiKeyStatus);
    outlined destroy of AMDPbHEConfig.OneOf_Config(v22, type metadata accessor for AspireApiKeyStatus);
    if (v51)
    {
      ++v24;
      v16 = v63;
      if (v24 != v67)
      {
        continue;
      }
    }

    return v51 & 1;
  }

  v47 = (v44 + 32);
  v48 = (v45 + 32);
  while (*v47 == *v48)
  {
    ++v47;
    ++v48;
    if (!--v46)
    {
      goto LABEL_22;
    }
  }

LABEL_33:
  outlined destroy of AMDPbHEConfig.OneOf_Config(v39, type metadata accessor for AspireHeEvaluationKeyConfig);
  outlined destroy of AMDPbHEConfig.OneOf_Config(v72, type metadata accessor for AspireHeEvaluationKeyConfig);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v16, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
  v18 = v58;
LABEL_34:
  outlined destroy of AMDPbHEConfig.OneOf_Config(v18, type metadata accessor for AspireApiKeyStatus);
  outlined destroy of AMDPbHEConfig.OneOf_Config(v22, type metadata accessor for AspireApiKeyStatus);
LABEL_35:
  v51 = 0;
  return v51 & 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ8CipherML45AspireSimilaritySerializedDcrtPlaintextMatrixV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v65 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v66 = &v57 - v8;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSg_AFtMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSg_AFtMR);
  MEMORY[0x28223BE20](v67);
  v72 = &v57 - v9;
  v73 = type metadata accessor for AspireSimilarityPlaintextPacking(0);
  v10 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v69 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  MEMORY[0x28223BE20](v12 - 8);
  v70 = &v57 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML32AspireSimilarityPlaintextPackingVSg_ADtMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSg_ADtMR);
  MEMORY[0x28223BE20](v14);
  v16 = &v57 - v15;
  v74 = type metadata accessor for AspireSimilaritySerializedDcrtPlaintextMatrix(0);
  MEMORY[0x28223BE20](v74);
  v18 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v57 - v21;
  v23 = *(a1 + 16);
  if (v23 != *(a2 + 16))
  {
LABEL_29:
    v52 = 0;
    return v52 & 1;
  }

  if (v23 && a1 != a2)
  {
    v24 = (*(v20 + 80) + 32) & ~*(v20 + 80);
    v25 = a1 + v24;
    v26 = v5;
    v27 = (v10 + 48);
    v28 = a2 + v24;
    v60 = (v26 + 48);
    v61 = v16;
    v29 = *(v20 + 72);
    v62 = v4;
    v63 = v29;
    v58 = v27;
    v59 = v14;
    v64 = v18;
    while (1)
    {
      outlined init with copy of AMDPbPIRConfig(v25, v22, type metadata accessor for AspireSimilaritySerializedDcrtPlaintextMatrix);
      v71 = v28;
      outlined init with copy of AMDPbPIRConfig(v28, v18, type metadata accessor for AspireSimilaritySerializedDcrtPlaintextMatrix);
      if (*v22 != *v18 || *(v22 + 1) != *(v18 + 1) || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ8CipherML31AspireHeSerializedDcrtPlaintextV_Tt1g5(*(v22 + 1), *(v18 + 1)) & 1) == 0)
      {
        break;
      }

      v68 = v25;
      v30 = *(v74 + 32);
      v31 = *(v14 + 48);
      outlined init with copy of AMDPbHEConfig.OneOf_Config?(&v22[v30], v16, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
      outlined init with copy of AMDPbHEConfig.OneOf_Config?(&v18[v30], &v16[v31], &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
      v32 = *v27;
      v33 = v73;
      if ((*v27)(v16, 1, v73) == 1)
      {
        v34 = v32(&v16[v31], 1, v33);
        v18 = v64;
        if (v34 != 1)
        {
          goto LABEL_23;
        }

        outlined destroy of AMDPbHEConfig.OneOf_Config?(v16, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
        v35 = v68;
      }

      else
      {
        v36 = v70;
        outlined init with copy of AMDPbHEConfig.OneOf_Config?(v16, v70, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
        if (v32(&v16[v31], 1, v33) == 1)
        {
          outlined destroy of AMDPbHEConfig.OneOf_Config(v36, type metadata accessor for AspireSimilarityPlaintextPacking);
          v18 = v64;
LABEL_23:
          v53 = &_s8CipherML32AspireSimilarityPlaintextPackingVSg_ADtMd;
          v54 = &_s8CipherML32AspireSimilarityPlaintextPackingVSg_ADtMR;
          v55 = v16;
          goto LABEL_27;
        }

        v37 = v69;
        outlined init with take of AMDPbPIRConfig(&v16[v31], v69, type metadata accessor for AspireSimilarityPlaintextPacking);
        v38 = *(v67 + 48);
        v39 = v72;
        outlined init with copy of AMDPbHEConfig.OneOf_Config?(v36, v72, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
        outlined init with copy of AMDPbHEConfig.OneOf_Config?(v37, v39 + v38, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
        v40 = *v60;
        v41 = v62;
        v42 = (*v60)(v39, 1, v62);
        v18 = v64;
        if (v42 == 1)
        {
          v43 = v40(v72 + v38, 1, v41);
          v35 = v68;
          if (v43 != 1)
          {
            goto LABEL_25;
          }

          outlined destroy of AMDPbHEConfig.OneOf_Config?(v72, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
        }

        else
        {
          v44 = v72;
          v45 = v66;
          outlined init with copy of AMDPbHEConfig.OneOf_Config?(v72, v66, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
          v46 = v40(v44 + v38, 1, v41);
          v35 = v68;
          if (v46 == 1)
          {
            outlined destroy of AMDPbHEConfig.OneOf_Config(v45, type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType);
LABEL_25:
            outlined destroy of AMDPbHEConfig.OneOf_Config?(v72, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSg_AFtMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSg_AFtMR);
LABEL_26:
            outlined destroy of AMDPbHEConfig.OneOf_Config(v69, type metadata accessor for AspireSimilarityPlaintextPacking);
            outlined destroy of AMDPbHEConfig.OneOf_Config(v70, type metadata accessor for AspireSimilarityPlaintextPacking);
            v53 = &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd;
            v54 = &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR;
            v55 = v61;
LABEL_27:
            outlined destroy of AMDPbHEConfig.OneOf_Config?(v55, v53, v54);
            break;
          }

          v47 = v65;
          outlined init with take of AMDPbPIRConfig(v44 + v38, v65, type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType);
          v48 = static AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType.== infix(_:_:)(v45, v47);
          outlined destroy of AMDPbHEConfig.OneOf_Config(v47, type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType);
          outlined destroy of AMDPbHEConfig.OneOf_Config(v45, type metadata accessor for AspireSimilarityPlaintextPacking.OneOf_PlaintextPackingType);
          outlined destroy of AMDPbHEConfig.OneOf_Config?(v44, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingV06OneOf_eF4TypeOSgMR);
          if ((v48 & 1) == 0)
          {
            goto LABEL_26;
          }
        }

        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v50 = v69;
        v49 = v70;
        v51 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of AMDPbHEConfig.OneOf_Config(v50, type metadata accessor for AspireSimilarityPlaintextPacking);
        outlined destroy of AMDPbHEConfig.OneOf_Config(v49, type metadata accessor for AspireSimilarityPlaintextPacking);
        v16 = v61;
        outlined destroy of AMDPbHEConfig.OneOf_Config?(v61, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
        v27 = v58;
        v14 = v59;
        if ((v51 & 1) == 0)
        {
          break;
        }
      }

      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v52 = dispatch thunk of static Equatable.== infix(_:_:)();
      outlined destroy of AMDPbHEConfig.OneOf_Config(v18, type metadata accessor for AspireSimilaritySerializedDcrtPlaintextMatrix);
      outlined destroy of AMDPbHEConfig.OneOf_Config(v22, type metadata accessor for AspireSimilaritySerializedDcrtPlaintextMatrix);
      if (v52)
      {
        v28 = v71 + v63;
        v25 = v35 + v63;
        if (--v23)
        {
          continue;
        }
      }

      return v52 & 1;
    }

    outlined destroy of AMDPbHEConfig.OneOf_Config(v18, type metadata accessor for AspireSimilaritySerializedDcrtPlaintextMatrix);
    outlined destroy of AMDPbHEConfig.OneOf_Config(v22, type metadata accessor for AspireSimilaritySerializedDcrtPlaintextMatrix);
    goto LABEL_29;
  }

  v52 = 1;
  return v52 & 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZSf_Tt1g5(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ8CipherML016AspireSimilarityE5DbRowV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v54[3] = *MEMORY[0x277D85DE8];
  v4 = type metadata accessor for AspireSimilaritySimilarityDbRow(0);
  MEMORY[0x28223BE20](v4);
  v6 = (&v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v10 = (&v46 - v9);
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    goto LABEL_67;
  }

  if (!v11 || a1 == a2)
  {
    v44 = 1;
    return v44 & 1;
  }

  v12 = 0;
  v13 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v14 = a1 + v13;
  v50 = 0;
  v51 = a2 + v13;
  v52 = *(v8 + 72);
  while (1)
  {
    v15 = v52 * v12;
    outlined init with copy of AMDPbPIRConfig(v14 + v52 * v12, v10, type metadata accessor for AspireSimilaritySimilarityDbRow);
    if (v12 == v11)
    {
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
    }

    outlined init with copy of AMDPbPIRConfig(v51 + v15, v6, type metadata accessor for AspireSimilaritySimilarityDbRow);
    if (*v10 != *v6)
    {
      goto LABEL_66;
    }

    v16 = v10[1];
    v17 = v10[2];
    v18 = v6[1];
    v19 = v6[2];
    v20 = v17 >> 62;
    v21 = v19 >> 62;
    if (v17 >> 62 == 3)
    {
      v22 = 0;
      if (!v16 && v17 == 0xC000000000000000 && v19 >> 62 == 3)
      {
        v22 = 0;
        if (!v18 && v19 == 0xC000000000000000)
        {
          goto LABEL_56;
        }
      }

LABEL_23:
      if (v21 <= 1)
      {
        goto LABEL_24;
      }

      goto LABEL_17;
    }

    if (v20 > 1)
    {
      if (v20 == 2)
      {
        v28 = *(v16 + 16);
        v27 = *(v16 + 24);
        v25 = __OFSUB__(v27, v28);
        v22 = v27 - v28;
        if (v25)
        {
          goto LABEL_72;
        }

        goto LABEL_23;
      }

      v22 = 0;
      if (v21 <= 1)
      {
        goto LABEL_24;
      }
    }

    else if (v20)
    {
      LODWORD(v22) = HIDWORD(v16) - v16;
      if (__OFSUB__(HIDWORD(v16), v16))
      {
        goto LABEL_73;
      }

      v22 = v22;
      if (v21 <= 1)
      {
LABEL_24:
        if (v21)
        {
          LODWORD(v26) = HIDWORD(v18) - v18;
          if (__OFSUB__(HIDWORD(v18), v18))
          {
            goto LABEL_70;
          }

          v26 = v26;
        }

        else
        {
          v26 = BYTE6(v19);
        }

        goto LABEL_30;
      }
    }

    else
    {
      v22 = BYTE6(v17);
      if (v21 <= 1)
      {
        goto LABEL_24;
      }
    }

LABEL_17:
    if (v21 != 2)
    {
      if (v22)
      {
        goto LABEL_66;
      }

      goto LABEL_56;
    }

    v24 = *(v18 + 16);
    v23 = *(v18 + 24);
    v25 = __OFSUB__(v23, v24);
    v26 = v23 - v24;
    if (v25)
    {
      goto LABEL_71;
    }

LABEL_30:
    if (v22 != v26)
    {
      goto LABEL_66;
    }

    if (v22 < 1)
    {
      goto LABEL_56;
    }

    if (v20 > 1)
    {
      if (v20 != 2)
      {
        memset(v54, 0, 14);
LABEL_52:
        v35 = v18;
        v36 = v50;
        closure #1 in static Data.== infix(_:_:)(v54, v35, v19, &v53);
        v50 = v36;
        if (!v53)
        {
          goto LABEL_66;
        }

        goto LABEL_56;
      }

      v48 = v14;
      v49 = v4;
      v29 = *(v16 + 16);
      v47 = *(v16 + 24);
      v30 = __DataStorage._bytes.getter();
      if (v30)
      {
        v31 = __DataStorage._offset.getter();
        if (__OFSUB__(v29, v31))
        {
          goto LABEL_76;
        }

        v30 += v29 - v31;
      }

      if (__OFSUB__(v47, v29))
      {
        goto LABEL_75;
      }
    }

    else
    {
      if (!v20)
      {
        v54[0] = v10[1];
        LOWORD(v54[1]) = v17;
        BYTE2(v54[1]) = BYTE2(v17);
        BYTE3(v54[1]) = BYTE3(v17);
        BYTE4(v54[1]) = BYTE4(v17);
        BYTE5(v54[1]) = BYTE5(v17);
        goto LABEL_52;
      }

      v48 = v14;
      v49 = v4;
      v32 = v16;
      if (v16 >> 32 < v16)
      {
        goto LABEL_74;
      }

      v33 = __DataStorage._bytes.getter();
      if (v33)
      {
        v47 = v33;
        v34 = __DataStorage._offset.getter();
        if (__OFSUB__(v32, v34))
        {
          goto LABEL_77;
        }

        v30 = v32 - v34 + v47;
      }

      else
      {
        v30 = 0;
      }
    }

    MEMORY[0x22AA5F1C0]();
    v37 = v18;
    v38 = v50;
    closure #1 in static Data.== infix(_:_:)(v30, v37, v19, v54);
    v50 = v38;
    v14 = v48;
    v4 = v49;
    if ((v54[0] & 1) == 0)
    {
      goto LABEL_66;
    }

LABEL_56:
    v39 = v10[3];
    v40 = v6[3];
    v41 = *(v39 + 16);
    if (v41 != *(v40 + 16))
    {
      goto LABEL_66;
    }

    if (v41 && v39 != v40)
    {
      break;
    }

LABEL_62:
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v44 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of AMDPbHEConfig.OneOf_Config(v6, type metadata accessor for AspireSimilaritySimilarityDbRow);
    outlined destroy of AMDPbHEConfig.OneOf_Config(v10, type metadata accessor for AspireSimilaritySimilarityDbRow);
    if ((v44 & 1) != 0 && ++v12 != v11)
    {
      continue;
    }

    return v44 & 1;
  }

  v42 = (v39 + 32);
  v43 = (v40 + 32);
  while (*v42 == *v43)
  {
    ++v42;
    ++v43;
    if (!--v41)
    {
      goto LABEL_62;
    }
  }

LABEL_66:
  outlined destroy of AMDPbHEConfig.OneOf_Config(v6, type metadata accessor for AspireSimilaritySimilarityDbRow);
  outlined destroy of AMDPbHEConfig.OneOf_Config(v10, type metadata accessor for AspireSimilaritySimilarityDbRow);
LABEL_67:
  v44 = 0;
  return v44 & 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ8CipherML23AspireApiPIRShardConfigV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspireApiPIRShardConfig(0);
  MEMORY[0x28223BE20](v4);
  v6 = (&v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v10 = (&v39 - v9);
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
LABEL_42:
    v38 = 0;
    return v38 & 1;
  }

  if (!v11 || a1 == a2)
  {
    v38 = 1;
    return v38 & 1;
  }

  v12 = 0;
  v13 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v16 = *(v8 + 72);
  while (1)
  {
    result = outlined init with copy of AMDPbPIRConfig(v14 + v16 * v12, v10, type metadata accessor for AspireApiPIRShardConfig);
    if (v12 == v11)
    {
      break;
    }

    result = outlined init with copy of AMDPbPIRConfig(v15 + v16 * v12, v6, type metadata accessor for AspireApiPIRShardConfig);
    if (*v10 != *v6)
    {
      goto LABEL_41;
    }

    if (v10[1] != v6[1])
    {
      goto LABEL_41;
    }

    v18 = v10[2];
    v19 = v6[2];
    v20 = *(v18 + 16);
    if (v20 != *(v19 + 16))
    {
      goto LABEL_41;
    }

    if (v20)
    {
      v21 = v18 == v19;
    }

    else
    {
      v21 = 1;
    }

    if (!v21)
    {
      v22 = (v18 + 32);
      v23 = (v19 + 32);
      while (v20)
      {
        if (*v22 != *v23)
        {
          goto LABEL_41;
        }

        ++v22;
        ++v23;
        if (!--v20)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
      break;
    }

LABEL_17:
    v24 = v4[8];
    v25 = (v10 + v24);
    v26 = *(v10 + v24 + 8);
    v27 = (v6 + v24);
    v28 = v27[1];
    if (v26)
    {
      if (!v28)
      {
        goto LABEL_41;
      }

      v29 = *v25 == *v27 && v26 == v28;
      if (!v29 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_41;
      }
    }

    else if (v28)
    {
      goto LABEL_41;
    }

    v30 = v4[9];
    v31 = *(v10 + v30);
    v32 = *(v6 + v30);
    if (v31 == 2)
    {
      if (v32 != 2)
      {
        goto LABEL_41;
      }
    }

    else if (v32 == 2 || ((v31 ^ v32) & 1) != 0)
    {
      goto LABEL_41;
    }

    v33 = v4[10];
    v34 = (v10 + v33);
    v35 = *(v10 + v33 + 8);
    v36 = (v6 + v33);
    v37 = *(v6 + v33 + 8);
    if (v35)
    {
      if (!v37)
      {
        goto LABEL_41;
      }
    }

    else
    {
      if (*v34 != *v36)
      {
        LOBYTE(v37) = 1;
      }

      if (v37)
      {
LABEL_41:
        outlined destroy of AMDPbHEConfig.OneOf_Config(v6, type metadata accessor for AspireApiPIRShardConfig);
        outlined destroy of AMDPbHEConfig.OneOf_Config(v10, type metadata accessor for AspireApiPIRShardConfig);
        goto LABEL_42;
      }
    }

    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v38 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of AMDPbHEConfig.OneOf_Config(v6, type metadata accessor for AspireApiPIRShardConfig);
    outlined destroy of AMDPbHEConfig.OneOf_Config(v10, type metadata accessor for AspireApiPIRShardConfig);
    if ((v38 & 1) != 0 && ++v12 != v11)
    {
      continue;
    }

    return v38 & 1;
  }

  __break(1u);
  return result;
}

void _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZs6UInt64V_8CipherML027AspireHeSerializedKeySwitchH0VTt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspireHeSerializedCiphertextVec(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML31AspireHeSerializedCiphertextVecVSgMd, &_s8CipherML31AspireHeSerializedCiphertextVecVSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v62 - v9;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML31AspireHeSerializedCiphertextVecVSg_ADtMd, &_s8CipherML31AspireHeSerializedCiphertextVecVSg_ADtMR);
  MEMORY[0x28223BE20](v71);
  v12 = &v62 - v11;
  v70 = type metadata accessor for AspireHeSerializedKeySwitchKey(0);
  v13 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v76 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v77 = &v62 - v16;
  MEMORY[0x28223BE20](v17);
  v69 = &v62 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt64V3key_8CipherML027AspireHeSerializedKeySwitchH0V5valuetSgMd, &_ss6UInt64V3key_8CipherML027AspireHeSerializedKeySwitchH0V5valuetSgMR);
  MEMORY[0x28223BE20](v19 - 8);
  v73 = (&v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v21);
  v72 = (&v62 - v22);
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v63 = v7;
    v64 = v10;
    v74 = v4;
    v23 = 0;
    v65 = a1;
    v66 = v13;
    v24 = *(a1 + 64);
    v62 = a1 + 64;
    v25 = 1 << *(a1 + 32);
    v26 = -1;
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    v27 = v26 & v24;
    v28 = (v25 + 63) >> 6;
    v67 = a2;
    v68 = (v5 + 48);
    while (v27)
    {
      v75 = (v27 - 1) & v27;
      v32 = __clz(__rbit64(v27)) | (v23 << 6);
LABEL_17:
      v37 = *(*(v65 + 48) + 8 * v32);
      v38 = v69;
      outlined init with copy of AMDPbPIRConfig(*(v65 + 56) + *(v13 + 72) * v32, v69, type metadata accessor for AspireHeSerializedKeySwitchKey);
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt64V3key_8CipherML027AspireHeSerializedKeySwitchH0V5valuetMd, &_ss6UInt64V3key_8CipherML027AspireHeSerializedKeySwitchH0V5valuetMR);
      v40 = *(v39 + 48);
      v41 = v73;
      *v73 = v37;
      v42 = v41;
      outlined init with take of AMDPbPIRConfig(v38, v41 + v40, type metadata accessor for AspireHeSerializedKeySwitchKey);
      (*(*(v39 - 8) + 56))(v42, 0, 1, v39);
LABEL_18:
      v43 = v72;
      outlined init with take of (offset: Int, element: AspireApiPECShardResponse)(v42, v72, &_ss6UInt64V3key_8CipherML027AspireHeSerializedKeySwitchH0V5valuetSgMd, &_ss6UInt64V3key_8CipherML027AspireHeSerializedKeySwitchH0V5valuetSgMR);
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt64V3key_8CipherML027AspireHeSerializedKeySwitchH0V5valuetMd, &_ss6UInt64V3key_8CipherML027AspireHeSerializedKeySwitchH0V5valuetMR);
      if ((*(*(v44 - 8) + 48))(v43, 1, v44) == 1)
      {
        return;
      }

      v45 = *(v44 + 48);
      v46 = *v43;
      outlined init with take of AMDPbPIRConfig(v43 + v45, v77, type metadata accessor for AspireHeSerializedKeySwitchKey);
      v47 = specialized __RawDictionaryStorage.find<A>(_:)(v46);
      if ((v48 & 1) == 0)
      {
        goto LABEL_34;
      }

      v49 = v76;
      outlined init with copy of AMDPbPIRConfig(*(a2 + 56) + *(v13 + 72) * v47, v76, type metadata accessor for AspireHeSerializedKeySwitchKey);
      v50 = *(v70 + 20);
      v51 = *(v71 + 48);
      outlined init with copy of AMDPbHEConfig.OneOf_Config?(v49 + v50, v12, &_s8CipherML31AspireHeSerializedCiphertextVecVSgMd, &_s8CipherML31AspireHeSerializedCiphertextVecVSgMR);
      outlined init with copy of AMDPbHEConfig.OneOf_Config?(v77 + v50, &v12[v51], &_s8CipherML31AspireHeSerializedCiphertextVecVSgMd, &_s8CipherML31AspireHeSerializedCiphertextVecVSgMR);
      v52 = *v68;
      v53 = v74;
      if ((*v68)(v12, 1, v74) == 1)
      {
        if (v52(&v12[v51], 1, v53) != 1)
        {
          goto LABEL_30;
        }

        outlined destroy of AMDPbHEConfig.OneOf_Config?(v12, &_s8CipherML31AspireHeSerializedCiphertextVecVSgMd, &_s8CipherML31AspireHeSerializedCiphertextVecVSgMR);
      }

      else
      {
        v54 = v64;
        outlined init with copy of AMDPbHEConfig.OneOf_Config?(v12, v64, &_s8CipherML31AspireHeSerializedCiphertextVecVSgMd, &_s8CipherML31AspireHeSerializedCiphertextVecVSgMR);
        if (v52(&v12[v51], 1, v53) == 1)
        {
          outlined destroy of AMDPbHEConfig.OneOf_Config(v54, type metadata accessor for AspireHeSerializedCiphertextVec);
LABEL_30:
          v60 = &_s8CipherML31AspireHeSerializedCiphertextVecVSg_ADtMd;
          v61 = &_s8CipherML31AspireHeSerializedCiphertextVecVSg_ADtMR;
LABEL_32:
          outlined destroy of AMDPbHEConfig.OneOf_Config?(v12, v60, v61);
LABEL_33:
          outlined destroy of AMDPbHEConfig.OneOf_Config(v76, type metadata accessor for AspireHeSerializedKeySwitchKey);
LABEL_34:
          outlined destroy of AMDPbHEConfig.OneOf_Config(v77, type metadata accessor for AspireHeSerializedKeySwitchKey);
          return;
        }

        v55 = v54;
        v56 = v63;
        outlined init with take of AMDPbPIRConfig(&v12[v51], v63, type metadata accessor for AspireHeSerializedCiphertextVec);
        if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ8CipherML28AspireHeSerializedCiphertextV_Tt1g5(*v55, *v56) & 1) == 0)
        {
          outlined destroy of AMDPbHEConfig.OneOf_Config(v56, type metadata accessor for AspireHeSerializedCiphertextVec);
          outlined destroy of AMDPbHEConfig.OneOf_Config(v55, type metadata accessor for AspireHeSerializedCiphertextVec);
          v60 = &_s8CipherML31AspireHeSerializedCiphertextVecVSgMd;
          v61 = &_s8CipherML31AspireHeSerializedCiphertextVecVSgMR;
          goto LABEL_32;
        }

        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v57 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of AMDPbHEConfig.OneOf_Config(v56, type metadata accessor for AspireHeSerializedCiphertextVec);
        outlined destroy of AMDPbHEConfig.OneOf_Config(v55, type metadata accessor for AspireHeSerializedCiphertextVec);
        outlined destroy of AMDPbHEConfig.OneOf_Config?(v12, &_s8CipherML31AspireHeSerializedCiphertextVecVSgMd, &_s8CipherML31AspireHeSerializedCiphertextVecVSgMR);
        if ((v57 & 1) == 0)
        {
          goto LABEL_33;
        }
      }

      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v29 = v76;
      v30 = v77;
      v31 = dispatch thunk of static Equatable.== infix(_:_:)();
      outlined destroy of AMDPbHEConfig.OneOf_Config(v29, type metadata accessor for AspireHeSerializedKeySwitchKey);
      outlined destroy of AMDPbHEConfig.OneOf_Config(v30, type metadata accessor for AspireHeSerializedKeySwitchKey);
      v13 = v66;
      a2 = v67;
      v27 = v75;
      if ((v31 & 1) == 0)
      {
        return;
      }
    }

    if (v28 <= v23 + 1)
    {
      v33 = v23 + 1;
    }

    else
    {
      v33 = v28;
    }

    v34 = v33 - 1;
    while (1)
    {
      v35 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v35 >= v28)
      {
        v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt64V3key_8CipherML027AspireHeSerializedKeySwitchH0V5valuetMd, &_ss6UInt64V3key_8CipherML027AspireHeSerializedKeySwitchH0V5valuetMR);
        v59 = v73;
        (*(*(v58 - 8) + 56))(v73, 1, 1, v58);
        v75 = 0;
        v23 = v34;
        v42 = v59;
        goto LABEL_18;
      }

      v36 = *(v62 + 8 * v35);
      ++v23;
      if (v36)
      {
        v75 = (v36 - 1) & v36;
        v32 = __clz(__rbit64(v36)) | (v35 << 6);
        v23 = v35;
        goto LABEL_17;
      }
    }

    __break(1u);
  }
}

void _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_8CipherML13AMDPbHEConfigVTt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AMDPbPECConfig(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AMDPbPIRConfig(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML13AMDPbHEConfigV12OneOf_ConfigO_AEtMd, &_s8CipherML13AMDPbHEConfigV12OneOf_ConfigO_AEtMR);
  MEMORY[0x28223BE20](v93);
  v94 = &v87 - v10;
  v11 = type metadata accessor for AMDPbHEConfig.OneOf_Config(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v92 = (&v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v91 = (&v87 - v15);
  MEMORY[0x28223BE20](v16);
  v102 = &v87 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML13AMDPbHEConfigV12OneOf_ConfigOSgMd, &_s8CipherML13AMDPbHEConfigV12OneOf_ConfigOSgMR);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v87 - v19;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML13AMDPbHEConfigV12OneOf_ConfigOSg_AFtMd, &_s8CipherML13AMDPbHEConfigV12OneOf_ConfigOSg_AFtMR);
  MEMORY[0x28223BE20](v103);
  v22 = &v87 - v21;
  v101 = type metadata accessor for AMDPbHEConfig(0);
  v110 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v111 = &v87 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v99 = &v87 - v25;
  MEMORY[0x28223BE20](v26);
  v100 = &v87 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_8CipherML13AMDPbHEConfigV5valuetSgMd, &_sSS3key_8CipherML13AMDPbHEConfigV5valuetSgMR);
  MEMORY[0x28223BE20](v28 - 8);
  v30 = &v87 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v104 = (&v87 - v32);
  v106 = a2;
  if (a1 != a2 && *(a1 + 16) == *(v106 + 16))
  {
    v97 = v20;
    v88 = v9;
    v89 = v6;
    v33 = 0;
    v95 = a1;
    v34 = *(a1 + 64);
    v90 = a1 + 64;
    v35 = 1 << *(a1 + 32);
    v36 = -1;
    if (v35 < 64)
    {
      v36 = ~(-1 << v35);
    }

    v37 = v36 & v34;
    v38 = (v35 + 63) >> 6;
    v98 = (v12 + 48);
    v39 = v99;
    v107 = v30;
    v96 = v38;
    v105 = v22;
    while (v37)
    {
      v43 = v11;
      v109 = (v37 - 1) & v37;
      v44 = __clz(__rbit64(v37)) | (v33 << 6);
LABEL_18:
      v49 = (*(v95 + 48) + 16 * v44);
      v51 = *v49;
      v50 = v49[1];
      v52 = v100;
      outlined init with copy of AMDPbPIRConfig(*(v95 + 56) + *(v110 + 72) * v44, v100, type metadata accessor for AMDPbHEConfig);
      v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_8CipherML13AMDPbHEConfigV5valuetMd, &_sSS3key_8CipherML13AMDPbHEConfigV5valuetMR);
      v54 = *(v53 + 48);
      v55 = v107;
      *v107 = v51;
      *(v55 + 1) = v50;
      v30 = v55;
      outlined init with take of AMDPbPIRConfig(v52, &v55[v54], type metadata accessor for AMDPbHEConfig);
      (*(*(v53 - 8) + 56))(v30, 0, 1, v53);

      v11 = v43;
LABEL_19:
      v56 = v30;
      v57 = v104;
      outlined init with take of (offset: Int, element: AspireApiPECShardResponse)(v56, v104, &_sSS3key_8CipherML13AMDPbHEConfigV5valuetSgMd, &_sSS3key_8CipherML13AMDPbHEConfigV5valuetSgMR);
      v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_8CipherML13AMDPbHEConfigV5valuetMd, &_sSS3key_8CipherML13AMDPbHEConfigV5valuetMR);
      v59 = (*(*(v58 - 8) + 48))(v57, 1, v58) == 1;
      if (v59)
      {
        return;
      }

      v108 = v59;
      v60 = *(v58 + 48);
      v61 = v57;
      v62 = *v57;
      v63 = v106;
      v64 = v61[1];
      outlined init with take of AMDPbPIRConfig(v61 + v60, v39, type metadata accessor for AMDPbHEConfig);
      v65 = specialized __RawDictionaryStorage.find<A>(_:)(v62, v64);
      LOBYTE(v62) = v66;

      if ((v62 & 1) == 0)
      {
        goto LABEL_39;
      }

      v67 = v111;
      outlined init with copy of AMDPbPIRConfig(*(v63 + 56) + *(v110 + 72) * v65, v111, type metadata accessor for AMDPbHEConfig);
      v68 = *(v103 + 48);
      v69 = v105;
      outlined init with copy of AMDPbHEConfig.OneOf_Config?(v67, v105, &_s8CipherML13AMDPbHEConfigV12OneOf_ConfigOSgMd, &_s8CipherML13AMDPbHEConfigV12OneOf_ConfigOSgMR);
      outlined init with copy of AMDPbHEConfig.OneOf_Config?(v39, v69 + v68, &_s8CipherML13AMDPbHEConfigV12OneOf_ConfigOSgMd, &_s8CipherML13AMDPbHEConfigV12OneOf_ConfigOSgMR);
      v70 = *v98;
      if ((*v98)(v69, 1, v11) == 1)
      {
        v40 = v70(v69 + v68, 1, v11);
        v38 = v96;
        if (v40 != 1)
        {
          goto LABEL_33;
        }
      }

      else
      {
        v71 = v97;
        outlined init with copy of AMDPbHEConfig.OneOf_Config?(v69, v97, &_s8CipherML13AMDPbHEConfigV12OneOf_ConfigOSgMd, &_s8CipherML13AMDPbHEConfigV12OneOf_ConfigOSgMR);
        if (v70(v69 + v68, 1, v11) == 1)
        {
          outlined destroy of AMDPbHEConfig.OneOf_Config(v71, type metadata accessor for AMDPbHEConfig.OneOf_Config);
          v39 = v99;
LABEL_33:
          outlined destroy of AMDPbHEConfig.OneOf_Config?(v69, &_s8CipherML13AMDPbHEConfigV12OneOf_ConfigOSg_AFtMd, &_s8CipherML13AMDPbHEConfigV12OneOf_ConfigOSg_AFtMR);
          goto LABEL_38;
        }

        v72 = v69 + v68;
        v73 = v102;
        outlined init with take of AMDPbPIRConfig(v72, v102, type metadata accessor for AMDPbHEConfig.OneOf_Config);
        v74 = v94;
        v75 = *(v93 + 48);
        outlined init with copy of AMDPbPIRConfig(v71, v94, type metadata accessor for AMDPbHEConfig.OneOf_Config);
        v76 = v74;
        outlined init with copy of AMDPbPIRConfig(v73, v74 + v75, type metadata accessor for AMDPbHEConfig.OneOf_Config);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v77 = v92;
          outlined init with copy of AMDPbPIRConfig(v74, v92, type metadata accessor for AMDPbHEConfig.OneOf_Config);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          v38 = v96;
          if (EnumCaseMultiPayload != 1)
          {
            v86 = type metadata accessor for AMDPbPECConfig;
            goto LABEL_36;
          }

          v79 = v89;
          outlined init with take of AMDPbPIRConfig(v76 + v75, v89, type metadata accessor for AMDPbPECConfig);
          v80 = specialized static AMDPbPECConfig.== infix(_:_:)(v77, v79);
          outlined destroy of AMDPbHEConfig.OneOf_Config(v79, type metadata accessor for AMDPbPECConfig);
          outlined destroy of AMDPbHEConfig.OneOf_Config(v77, type metadata accessor for AMDPbPECConfig);
          outlined destroy of AMDPbHEConfig.OneOf_Config(v76, type metadata accessor for AMDPbHEConfig.OneOf_Config);
          v81 = v97;
          if ((v80 & 1) == 0)
          {
            goto LABEL_37;
          }
        }

        else
        {
          v77 = v91;
          outlined init with copy of AMDPbPIRConfig(v74, v91, type metadata accessor for AMDPbHEConfig.OneOf_Config);
          v82 = swift_getEnumCaseMultiPayload();
          v38 = v96;
          if (v82 == 1)
          {
            v86 = type metadata accessor for AMDPbPIRConfig;
LABEL_36:
            outlined destroy of AMDPbHEConfig.OneOf_Config(v77, v86);
            outlined destroy of AMDPbHEConfig.OneOf_Config?(v74, &_s8CipherML13AMDPbHEConfigV12OneOf_ConfigO_AEtMd, &_s8CipherML13AMDPbHEConfigV12OneOf_ConfigO_AEtMR);
            v81 = v97;
LABEL_37:
            outlined destroy of AMDPbHEConfig.OneOf_Config(v102, type metadata accessor for AMDPbHEConfig.OneOf_Config);
            outlined destroy of AMDPbHEConfig.OneOf_Config(v81, type metadata accessor for AMDPbHEConfig.OneOf_Config);
            outlined destroy of AMDPbHEConfig.OneOf_Config?(v105, &_s8CipherML13AMDPbHEConfigV12OneOf_ConfigOSgMd, &_s8CipherML13AMDPbHEConfigV12OneOf_ConfigOSgMR);
            v39 = v99;
LABEL_38:
            outlined destroy of AMDPbHEConfig.OneOf_Config(v111, type metadata accessor for AMDPbHEConfig);
LABEL_39:
            outlined destroy of AMDPbHEConfig.OneOf_Config(v39, type metadata accessor for AMDPbHEConfig);
            return;
          }

          v83 = v88;
          outlined init with take of AMDPbPIRConfig(v74 + v75, v88, type metadata accessor for AMDPbPIRConfig);
          v84 = specialized static AMDPbPIRConfig.== infix(_:_:)(v77, v83);
          outlined destroy of AMDPbHEConfig.OneOf_Config(v83, type metadata accessor for AMDPbPIRConfig);
          outlined destroy of AMDPbHEConfig.OneOf_Config(v77, type metadata accessor for AMDPbPIRConfig);
          outlined destroy of AMDPbHEConfig.OneOf_Config(v74, type metadata accessor for AMDPbHEConfig.OneOf_Config);
          v81 = v97;
          if ((v84 & 1) == 0)
          {
            goto LABEL_37;
          }
        }

        outlined destroy of AMDPbHEConfig.OneOf_Config(v102, type metadata accessor for AMDPbHEConfig.OneOf_Config);
        outlined destroy of AMDPbHEConfig.OneOf_Config(v81, type metadata accessor for AMDPbHEConfig.OneOf_Config);
        v69 = v105;
        v39 = v99;
      }

      outlined destroy of AMDPbHEConfig.OneOf_Config?(v69, &_s8CipherML13AMDPbHEConfigV12OneOf_ConfigOSgMd, &_s8CipherML13AMDPbHEConfigV12OneOf_ConfigOSgMR);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v41 = v111;
      v42 = dispatch thunk of static Equatable.== infix(_:_:)();
      outlined destroy of AMDPbHEConfig.OneOf_Config(v41, type metadata accessor for AMDPbHEConfig);
      outlined destroy of AMDPbHEConfig.OneOf_Config(v39, type metadata accessor for AMDPbHEConfig);
      v30 = v107;
      v37 = v109;
      if ((v42 & 1) == 0)
      {
        return;
      }
    }

    if (v38 <= v33 + 1)
    {
      v45 = v33 + 1;
    }

    else
    {
      v45 = v38;
    }

    v46 = v45 - 1;
    while (1)
    {
      v47 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      if (v47 >= v38)
      {
        v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_8CipherML13AMDPbHEConfigV5valuetMd, &_sSS3key_8CipherML13AMDPbHEConfigV5valuetMR);
        (*(*(v85 - 8) + 56))(v30, 1, 1, v85);
        v109 = 0;
        v33 = v46;
        goto LABEL_19;
      }

      v48 = *(v90 + 8 * v47);
      ++v33;
      if (v48)
      {
        v43 = v11;
        v109 = (v48 - 1) & v48;
        v44 = __clz(__rbit64(v48)) | (v47 << 6);
        v33 = v47;
        goto LABEL_18;
      }
    }

    __break(1u);
  }
}

void _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_8CipherML15AspireApiConfigVTt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspireApiPECConfig(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v112 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AspireApiPIRConfig(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v112 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML15AspireApiConfigV06OneOf_E0O_AEtMd, &_s8CipherML15AspireApiConfigV06OneOf_E0O_AEtMR);
  MEMORY[0x28223BE20](v10);
  v12 = &v112 - v11;
  v130 = type metadata accessor for AspireApiConfig.OneOf_Config(0);
  v13 = *(v130 - 8);
  MEMORY[0x28223BE20](v130);
  v119 = (&v112 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v15);
  v123 = &v112 - v16;
  MEMORY[0x28223BE20](v17);
  v128 = &v112 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v112 - v20;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML15AspireApiConfigV06OneOf_E0OSg_AFtMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSg_AFtMR);
  MEMORY[0x28223BE20](v129);
  v134 = &v112 - v22;
  v127 = type metadata accessor for AspireApiConfig(0);
  v137 = *(v127 - 8);
  MEMORY[0x28223BE20](v127);
  v24 = &v112 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v136 = &v112 - v26;
  MEMORY[0x28223BE20](v27);
  v126 = &v112 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_8CipherML15AspireApiConfigV5valuetSgMd, &_sSS3key_8CipherML15AspireApiConfigV5valuetSgMR);
  MEMORY[0x28223BE20](v29 - 8);
  v131 = (&v112 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v31);
  v135 = (&v112 - v32);
  if (a1 == a2 || *(a1 + 16) != *(a2 + 16))
  {
    return;
  }

  v117 = v10;
  v113 = v7;
  v116 = v9;
  v114 = v6;
  v125 = a2;
  v33 = 0;
  v120 = 0;
  v34 = *(a1 + 64);
  v115 = a1 + 64;
  v35 = 1 << *(a1 + 32);
  v36 = -1;
  if (v35 < 64)
  {
    v36 = ~(-1 << v35);
  }

  v37 = v36 & v34;
  v38 = (v35 + 63) >> 6;
  v124 = (v13 + 48);
  v39 = v136;
  v121 = v38;
  v122 = a1;
  v118 = v12;
  while (v37)
  {
    v40 = v21;
    v41 = v24;
    v133 = (v37 - 1) & v37;
    v42 = __clz(__rbit64(v37)) | (v33 << 6);
LABEL_16:
    v48 = *(a1 + 56);
    v49 = (*(a1 + 48) + 16 * v42);
    v51 = *v49;
    v50 = v49[1];
    v52 = v126;
    outlined init with copy of AMDPbPIRConfig(v48 + *(v137 + 72) * v42, v126, type metadata accessor for AspireApiConfig);
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_8CipherML15AspireApiConfigV5valuetMd, &_sSS3key_8CipherML15AspireApiConfigV5valuetMR);
    v54 = *(v53 + 48);
    v55 = v131;
    *v131 = v51;
    v55[1] = v50;
    v56 = v55;
    outlined init with take of AMDPbPIRConfig(v52, v55 + v54, type metadata accessor for AspireApiConfig);
    (*(*(v53 - 8) + 56))(v56, 0, 1, v53);

    v45 = v135;
LABEL_17:
    outlined init with take of (offset: Int, element: AspireApiPECShardResponse)(v56, v45, &_sSS3key_8CipherML15AspireApiConfigV5valuetSgMd, &_sSS3key_8CipherML15AspireApiConfigV5valuetSgMR);
    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_8CipherML15AspireApiConfigV5valuetMd, &_sSS3key_8CipherML15AspireApiConfigV5valuetMR);
    v58 = (*(*(v57 - 8) + 48))(v45, 1, v57) == 1;
    if (v58)
    {
      return;
    }

    v132 = v58;
    v59 = v41;
    v21 = v40;
    v60 = *(v57 + 48);
    v61 = *v45;
    v62 = v45[1];
    outlined init with take of AMDPbPIRConfig(v45 + v60, v39, type metadata accessor for AspireApiConfig);
    v63 = v125;
    v64 = specialized __RawDictionaryStorage.find<A>(_:)(v61, v62);
    v66 = v65;

    if ((v66 & 1) == 0)
    {
      goto LABEL_76;
    }

    outlined init with copy of AMDPbPIRConfig(*(v63 + 56) + *(v137 + 72) * v64, v59, type metadata accessor for AspireApiConfig);
    v67 = *(v129 + 48);
    v68 = v134;
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v59, v134, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR);
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v39, v68 + v67, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR);
    v69 = *v124;
    v70 = v130;
    if ((*v124)(v68, 1, v130) == 1)
    {
      v71 = v69(v68 + v67, 1, v70);
      v39 = v136;
      v24 = v59;
      if (v71 != 1)
      {
        goto LABEL_66;
      }
    }

    else
    {
      outlined init with copy of AMDPbHEConfig.OneOf_Config?(v68, v40, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR);
      v72 = v69(v68 + v67, 1, v70);
      v73 = v118;
      if (v72 == 1)
      {
        outlined destroy of AMDPbHEConfig.OneOf_Config(v40, type metadata accessor for AspireApiConfig.OneOf_Config);
        v39 = v136;
        v24 = v59;
LABEL_66:
        v110 = &_s8CipherML15AspireApiConfigV06OneOf_E0OSg_AFtMd;
        v111 = &_s8CipherML15AspireApiConfigV06OneOf_E0OSg_AFtMR;
        goto LABEL_74;
      }

      v74 = v128;
      outlined init with take of AMDPbPIRConfig(v68 + v67, v128, type metadata accessor for AspireApiConfig.OneOf_Config);
      v75 = *(v117 + 48);
      outlined init with copy of AMDPbPIRConfig(v40, v73, type metadata accessor for AspireApiConfig.OneOf_Config);
      outlined init with copy of AMDPbPIRConfig(v74, v73 + v75, type metadata accessor for AspireApiConfig.OneOf_Config);
      v24 = v59;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v76 = v119;
        outlined init with copy of AMDPbPIRConfig(v73, v119, type metadata accessor for AspireApiConfig.OneOf_Config);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          outlined destroy of AMDPbHEConfig.OneOf_Config(v128, type metadata accessor for AspireApiConfig.OneOf_Config);
          outlined destroy of AMDPbHEConfig.OneOf_Config(v76, type metadata accessor for AspireApiPECConfig);
          v39 = v136;
LABEL_69:
          outlined destroy of AMDPbHEConfig.OneOf_Config?(v73, &_s8CipherML15AspireApiConfigV06OneOf_E0O_AEtMd, &_s8CipherML15AspireApiConfigV06OneOf_E0O_AEtMR);
          goto LABEL_73;
        }

        v77 = v114;
        outlined init with take of AMDPbPIRConfig(v73 + v75, v114, type metadata accessor for AspireApiPECConfig);
        v78 = specialized static AspireApiPECConfig.== infix(_:_:)(v76, v77);
        outlined destroy of AMDPbHEConfig.OneOf_Config(v77, type metadata accessor for AspireApiPECConfig);
        outlined destroy of AMDPbHEConfig.OneOf_Config(v128, type metadata accessor for AspireApiConfig.OneOf_Config);
        outlined destroy of AMDPbHEConfig.OneOf_Config(v76, type metadata accessor for AspireApiPECConfig);
        if ((v78 & 1) == 0)
        {
          outlined destroy of AMDPbHEConfig.OneOf_Config(v73, type metadata accessor for AspireApiConfig.OneOf_Config);
          goto LABEL_72;
        }
      }

      else
      {
        v79 = v123;
        outlined init with copy of AMDPbPIRConfig(v73, v123, type metadata accessor for AspireApiConfig.OneOf_Config);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v39 = v136;
        if (EnumCaseMultiPayload == 1)
        {
          outlined destroy of AMDPbHEConfig.OneOf_Config(v128, type metadata accessor for AspireApiConfig.OneOf_Config);
          outlined destroy of AMDPbHEConfig.OneOf_Config(v79, type metadata accessor for AspireApiPIRConfig);
          goto LABEL_69;
        }

        v81 = v73 + v75;
        v82 = v116;
        outlined init with take of AMDPbPIRConfig(v81, v116, type metadata accessor for AspireApiPIRConfig);
        v83 = *(v113 + 20);
        v84 = *(v79 + v83);
        v85 = *(v82 + v83);
        if (v84 != v85)
        {

          v86 = closure #1 in static AspireApiPIRConfig.== infix(_:_:)(v84, v85);

          if (!v86)
          {
            outlined destroy of AMDPbHEConfig.OneOf_Config(v128, type metadata accessor for AspireApiConfig.OneOf_Config);
            v88 = v116;
            v87 = v123;
LABEL_71:
            outlined destroy of AMDPbHEConfig.OneOf_Config(v88, type metadata accessor for AspireApiPIRConfig);
            outlined destroy of AMDPbHEConfig.OneOf_Config(v87, type metadata accessor for AspireApiPIRConfig);
            outlined destroy of AMDPbHEConfig.OneOf_Config(v73, type metadata accessor for AspireApiConfig.OneOf_Config);
            v68 = v134;
LABEL_72:
            v39 = v136;
LABEL_73:
            outlined destroy of AMDPbHEConfig.OneOf_Config(v40, type metadata accessor for AspireApiConfig.OneOf_Config);
            v110 = &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd;
            v111 = &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR;
LABEL_74:
            outlined destroy of AMDPbHEConfig.OneOf_Config?(v68, v110, v111);
LABEL_75:
            outlined destroy of AMDPbHEConfig.OneOf_Config(v24, type metadata accessor for AspireApiConfig);
LABEL_76:
            outlined destroy of AMDPbHEConfig.OneOf_Config(v39, type metadata accessor for AspireApiConfig);
            return;
          }
        }

        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v87 = v123;
        v88 = v116;
        v89 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of AMDPbHEConfig.OneOf_Config(v128, type metadata accessor for AspireApiConfig.OneOf_Config);
        if ((v89 & 1) == 0)
        {
          goto LABEL_71;
        }

        outlined destroy of AMDPbHEConfig.OneOf_Config(v88, type metadata accessor for AspireApiPIRConfig);
        outlined destroy of AMDPbHEConfig.OneOf_Config(v87, type metadata accessor for AspireApiPIRConfig);
        v68 = v134;
      }

      outlined destroy of AMDPbHEConfig.OneOf_Config(v73, type metadata accessor for AspireApiConfig.OneOf_Config);
      outlined destroy of AMDPbHEConfig.OneOf_Config(v40, type metadata accessor for AspireApiConfig.OneOf_Config);
      v39 = v136;
    }

    outlined destroy of AMDPbHEConfig.OneOf_Config?(v68, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR);
    v90 = v127;
    v91 = *(v127 + 20);
    v93 = *&v24[v91];
    v92 = *&v24[v91 + 8];
    v94 = (v39 + v91);
    v95 = *v94;
    v96 = v94[1];
    v97 = v92 >> 62;
    v98 = v96 >> 62;
    if (v92 >> 62 == 3)
    {
      v99 = 0;
      if (!v93 && v92 == 0xC000000000000000 && v96 >> 62 == 3)
      {
        v99 = 0;
        if (!v95 && v96 == 0xC000000000000000)
        {
          goto LABEL_61;
        }
      }
    }

    else if (v97)
    {
      if (v97 == 1)
      {
        LODWORD(v99) = HIDWORD(v93) - v93;
        if (__OFSUB__(HIDWORD(v93), v93))
        {
          goto LABEL_82;
        }

        v99 = v99;
      }

      else
      {
        v102 = *(v93 + 16);
        v101 = *(v93 + 24);
        v103 = __OFSUB__(v101, v102);
        v99 = v101 - v102;
        if (v103)
        {
          goto LABEL_81;
        }
      }
    }

    else
    {
      v99 = BYTE6(v92);
    }

    if (v98 > 1)
    {
      if (v98 != 2)
      {
        if (v99)
        {
          goto LABEL_75;
        }

        goto LABEL_61;
      }

      v106 = *(v95 + 16);
      v105 = *(v95 + 24);
      v103 = __OFSUB__(v105, v106);
      v104 = v105 - v106;
      if (v103)
      {
        goto LABEL_80;
      }
    }

    else if (v98)
    {
      LODWORD(v104) = HIDWORD(v95) - v95;
      if (__OFSUB__(HIDWORD(v95), v95))
      {
        goto LABEL_79;
      }

      v104 = v104;
    }

    else
    {
      v104 = BYTE6(v96);
    }

    if (v99 != v104)
    {
      goto LABEL_75;
    }

    if (v99 >= 1)
    {
      outlined copy of Data._Representation(v95, v96);
      v107 = v120;
      v108 = specialized Data.withUnsafeBytes<A>(_:)(v93, v92, v95, v96);
      v120 = v107;
      if ((v108 & 1) == 0)
      {
        goto LABEL_75;
      }
    }

LABEL_61:
    if (v24[*(v90 + 24)] != *(v39 + *(v90 + 24)))
    {
      goto LABEL_75;
    }

    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v109 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of AMDPbHEConfig.OneOf_Config(v24, type metadata accessor for AspireApiConfig);
    outlined destroy of AMDPbHEConfig.OneOf_Config(v39, type metadata accessor for AspireApiConfig);
    v38 = v121;
    a1 = v122;
    v37 = v133;
    if ((v109 & 1) == 0)
    {
      return;
    }
  }

  if (v38 <= v33 + 1)
  {
    v43 = v33 + 1;
  }

  else
  {
    v43 = v38;
  }

  v44 = v43 - 1;
  v45 = v135;
  while (1)
  {
    v46 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      break;
    }

    if (v46 >= v38)
    {
      v40 = v21;
      v41 = v24;
      v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_8CipherML15AspireApiConfigV5valuetMd, &_sSS3key_8CipherML15AspireApiConfigV5valuetMR);
      v56 = v131;
      (*(*(v100 - 8) + 56))(v131, 1, 1, v100);
      v133 = 0;
      v33 = v44;
      goto LABEL_17;
    }

    v47 = *(v115 + 8 * v46);
    ++v33;
    if (v47)
    {
      v40 = v21;
      v41 = v24;
      v133 = (v47 - 1) & v47;
      v42 = __clz(__rbit64(v47)) | (v46 << 6);
      v33 = v46;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
}

uint64_t specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = __DataStorage._bytes.getter();
  v11 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
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

  MEMORY[0x22AA5F1C0]();
  closure #1 in static Data.== infix(_:_:)(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL specialized static Data.== infix(_:_:)(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          outlined copy of Data._Representation(a3, a4);
          return specialized Data.withUnsafeBytes<A>(_:)(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

char *specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  result = __DataStorage._bytes.getter();
  v8 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_14:
      __break(1u);
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    v8 += a1 - result;
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_14;
  }

  result = MEMORY[0x22AA5F1C0]();
  if (result >= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = result;
  }

  if (!a4)
  {
    goto LABEL_15;
  }

  if (!v8)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  if (v8 == a4)
  {
    return 1;
  }

  else
  {
    return (memcmp(a4, v8, v11) == 0);
  }
}

uint64_t specialized static AMDPbPIRShardConfig.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1] || (_sSasSQRzlE2eeoiySbSayxG_ABtFZs6UInt64V_Tt1g5(a1[2], a2[2]) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for AMDPbPIRShardConfig(0);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static AMDPbPECShardReply.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for AspireSimilaritySerializedCiphertextMatrix(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v24 = (&v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSgMd, &_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = (&v22 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSg_ADtMd, &_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSg_ADtMR);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v22 - v12;
  v23 = type metadata accessor for AMDPbPECShardReply(0);
  v14 = *(v23 + 28);
  v15 = *(v11 + 56);
  v25 = a1;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + v14, v13, &_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSgMd, &_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSgMR);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a2 + v14, &v13[v15], &_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSgMd, &_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSgMR);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v13, v9, &_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSgMd, &_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSgMR);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      v17 = v24;
      outlined init with take of AMDPbPIRConfig(&v13[v15], v24, type metadata accessor for AspireSimilaritySerializedCiphertextMatrix);
      v18 = static AspireSimilaritySerializedCiphertextMatrix.== infix(_:_:)(v9, v17);
      outlined destroy of AMDPbHEConfig.OneOf_Config(v17, type metadata accessor for AspireSimilaritySerializedCiphertextMatrix);
      outlined destroy of AMDPbHEConfig.OneOf_Config(v9, type metadata accessor for AspireSimilaritySerializedCiphertextMatrix);
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v13, &_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSgMd, &_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSgMR);
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_11:
      v20 = 0;
      return v20 & 1;
    }

    outlined destroy of AMDPbHEConfig.OneOf_Config(v9, type metadata accessor for AspireSimilaritySerializedCiphertextMatrix);
LABEL_6:
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v13, &_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSg_ADtMd, &_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSg_ADtMR);
    goto LABEL_11;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  outlined destroy of AMDPbHEConfig.OneOf_Config?(v13, &_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSgMd, &_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSgMR);
LABEL_8:
  v19 = v25;
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZs6UInt64V_Tt1g5(*v25, *a2) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ10Foundation4DataV_Tt1g5(v19[1], a2[1]) & 1) == 0)
  {
    goto LABEL_11;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v20 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v20 & 1;
}

uint64_t specialized static AMDPbEvaluationKey.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AspireHeSerializedEvaluationKey(0);
  v46 = *(v4 - 8);
  v47 = v4;
  MEMORY[0x28223BE20](v4);
  v41 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML31AspireHeSerializedEvaluationKeyVSgMd, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v42 = &v40 - v7;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML31AspireHeSerializedEvaluationKeyVSg_ADtMd, &_s8CipherML31AspireHeSerializedEvaluationKeyVSg_ADtMR);
  MEMORY[0x28223BE20](v45);
  v48 = &v40 - v8;
  v9 = type metadata accessor for AMDPbEvaluationKeyMetadata(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v43 = (&v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML26AMDPbEvaluationKeyMetadataVSgMd, &_s8CipherML26AMDPbEvaluationKeyMetadataVSgMR);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = (&v40 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML26AMDPbEvaluationKeyMetadataVSg_ADtMd, &_s8CipherML26AMDPbEvaluationKeyMetadataVSg_ADtMR);
  v16 = v15 - 8;
  MEMORY[0x28223BE20](v15);
  v18 = &v40 - v17;
  v44 = type metadata accessor for AMDPbEvaluationKey(0);
  v19 = *(v44 + 20);
  v20 = *(v16 + 56);
  v49 = a1;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + v19, v18, &_s8CipherML26AMDPbEvaluationKeyMetadataVSgMd, &_s8CipherML26AMDPbEvaluationKeyMetadataVSgMR);
  v21 = a2 + v19;
  v22 = a2;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v21, &v18[v20], &_s8CipherML26AMDPbEvaluationKeyMetadataVSgMd, &_s8CipherML26AMDPbEvaluationKeyMetadataVSgMR);
  v23 = *(v10 + 48);
  if (v23(v18, 1, v9) == 1)
  {
    if (v23(&v18[v20], 1, v9) == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v18, &_s8CipherML26AMDPbEvaluationKeyMetadataVSgMd, &_s8CipherML26AMDPbEvaluationKeyMetadataVSgMR);
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v18, v14, &_s8CipherML26AMDPbEvaluationKeyMetadataVSgMd, &_s8CipherML26AMDPbEvaluationKeyMetadataVSgMR);
  if (v23(&v18[v20], 1, v9) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config(v14, type metadata accessor for AMDPbEvaluationKeyMetadata);
LABEL_9:
    v29 = &_s8CipherML26AMDPbEvaluationKeyMetadataVSg_ADtMd;
    v30 = &_s8CipherML26AMDPbEvaluationKeyMetadataVSg_ADtMR;
LABEL_15:
    v33 = v18;
LABEL_16:
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v33, v29, v30);
    goto LABEL_17;
  }

  v31 = v43;
  outlined init with take of AMDPbPIRConfig(&v18[v20], v43, type metadata accessor for AMDPbEvaluationKeyMetadata);
  if (*v14 != *v31 || !specialized static Data.== infix(_:_:)(v14[1], v14[2], v31[1], v31[2]))
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config(v31, type metadata accessor for AMDPbEvaluationKeyMetadata);
    outlined destroy of AMDPbHEConfig.OneOf_Config(v14, type metadata accessor for AMDPbEvaluationKeyMetadata);
    v29 = &_s8CipherML26AMDPbEvaluationKeyMetadataVSgMd;
    v30 = &_s8CipherML26AMDPbEvaluationKeyMetadataVSgMR;
    goto LABEL_15;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v32 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of AMDPbHEConfig.OneOf_Config(v31, type metadata accessor for AMDPbEvaluationKeyMetadata);
  outlined destroy of AMDPbHEConfig.OneOf_Config(v14, type metadata accessor for AMDPbEvaluationKeyMetadata);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v18, &_s8CipherML26AMDPbEvaluationKeyMetadataVSgMd, &_s8CipherML26AMDPbEvaluationKeyMetadataVSgMR);
  if ((v32 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_4:
  v24 = *(v44 + 24);
  v25 = *(v45 + 48);
  v26 = v48;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v49 + v24, v48, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMd, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMR);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v22 + v24, v26 + v25, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMd, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMR);
  v27 = v47;
  v28 = *(v46 + 48);
  if (v28(v26, 1, v47) == 1)
  {
    if (v28(v26 + v25, 1, v27) == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v26, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMd, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMR);
LABEL_23:
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v34 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v34 & 1;
    }

    goto LABEL_21;
  }

  v36 = v42;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v26, v42, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMd, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMR);
  if (v28(v26 + v25, 1, v27) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config(v36, type metadata accessor for AspireHeSerializedEvaluationKey);
LABEL_21:
    v29 = &_s8CipherML31AspireHeSerializedEvaluationKeyVSg_ADtMd;
    v30 = &_s8CipherML31AspireHeSerializedEvaluationKeyVSg_ADtMR;
    v33 = v26;
    goto LABEL_16;
  }

  v37 = v26 + v25;
  v38 = v41;
  outlined init with take of AMDPbPIRConfig(v37, v41, type metadata accessor for AspireHeSerializedEvaluationKey);
  v39 = specialized static AspireHeSerializedEvaluationKey.== infix(_:_:)(v36, v38);
  outlined destroy of AMDPbHEConfig.OneOf_Config(v38, type metadata accessor for AspireHeSerializedEvaluationKey);
  outlined destroy of AMDPbHEConfig.OneOf_Config(v36, type metadata accessor for AspireHeSerializedEvaluationKey);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v26, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMd, &_s8CipherML31AspireHeSerializedEvaluationKeyVSgMR);
  if (v39)
  {
    goto LABEL_23;
  }

LABEL_17:
  v34 = 0;
  return v34 & 1;
}

uint64_t specialized static AMDPbHEKeyStatus.== infix(_:_:)(void *a1, void *a2)
{
  v4 = type metadata accessor for AspireHeEvaluationKeyConfig(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML27AspireHeEvaluationKeyConfigVSg_ADtMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSg_ADtMR);
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - v12;
  if (*a1 != *a2)
  {
    goto LABEL_8;
  }

  v14 = type metadata accessor for AMDPbHEKeyStatus(0);
  v15 = *(v14 + 28);
  v16 = *(v11 + 48);
  v21 = v14;
  v22 = a1;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + v15, v13, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a2 + v15, &v13[v16], &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
  v17 = *(v5 + 48);
  if (v17(v13, 1, v4) != 1)
  {
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v13, v10, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
    if (v17(&v13[v16], 1, v4) != 1)
    {
      outlined init with take of AMDPbPIRConfig(&v13[v16], v7, type metadata accessor for AspireHeEvaluationKeyConfig);
      v20 = static AspireHeEvaluationKeyConfig.== infix(_:_:)(v10, v7);
      outlined destroy of AMDPbHEConfig.OneOf_Config(v7, type metadata accessor for AspireHeEvaluationKeyConfig);
      outlined destroy of AMDPbHEConfig.OneOf_Config(v10, type metadata accessor for AspireHeEvaluationKeyConfig);
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v13, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
      if ((v20 & 1) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_11;
    }

    outlined destroy of AMDPbHEConfig.OneOf_Config(v10, type metadata accessor for AspireHeEvaluationKeyConfig);
LABEL_7:
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v13, &_s8CipherML27AspireHeEvaluationKeyConfigVSg_ADtMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSg_ADtMR);
    goto LABEL_8;
  }

  if (v17(&v13[v16], 1, v4) != 1)
  {
    goto LABEL_7;
  }

  outlined destroy of AMDPbHEConfig.OneOf_Config?(v13, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
LABEL_11:
  if (v22[1] == a2[1] && v22[2] == a2[2] || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v18 = dispatch thunk of static Equatable.== infix(_:_:)();
    return v18 & 1;
  }

LABEL_8:
  v18 = 0;
  return v18 & 1;
}

uint64_t specialized static AMDPbPECConfig.== infix(_:_:)(void *a1, uint64_t a2)
{
  v49 = a2;
  v3 = type metadata accessor for AspireSimilarityPlaintextPacking(0);
  v45 = *(v3 - 8);
  v46 = v3;
  MEMORY[0x28223BE20](v3);
  v41 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v42 = &v40 - v6;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML32AspireSimilarityPlaintextPackingVSg_ADtMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSg_ADtMR);
  MEMORY[0x28223BE20](v43);
  v47 = &v40 - v7;
  v8 = type metadata accessor for AspireHeEncryptionParameters(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v40 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeEncryptionParametersVSg_ADtMd, &_s8CipherML28AspireHeEncryptionParametersVSg_ADtMR);
  v16 = v15 - 8;
  MEMORY[0x28223BE20](v15);
  v18 = &v40 - v17;
  v44 = type metadata accessor for AMDPbPECConfig(0);
  v19 = *(v44 + 36);
  v20 = *(v16 + 56);
  v48 = a1;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + v19, v18, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  v21 = v49;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v49 + v19, &v18[v20], &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  v22 = *(v9 + 48);
  if (v22(v18, 1, v8) == 1)
  {
    if (v22(&v18[v20], 1, v8) == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v18, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
      goto LABEL_9;
    }

LABEL_6:
    v23 = &_s8CipherML28AspireHeEncryptionParametersVSg_ADtMd;
    v24 = &_s8CipherML28AspireHeEncryptionParametersVSg_ADtMR;
    v25 = v18;
LABEL_7:
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v25, v23, v24);
    goto LABEL_27;
  }

  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v18, v14, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  if (v22(&v18[v20], 1, v8) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config(v14, type metadata accessor for AspireHeEncryptionParameters);
    goto LABEL_6;
  }

  outlined init with take of AMDPbPIRConfig(&v18[v20], v11, type metadata accessor for AspireHeEncryptionParameters);
  v26 = static AspireHeEncryptionParameters.== infix(_:_:)(v14, v11);
  outlined destroy of AMDPbHEConfig.OneOf_Config(v11, type metadata accessor for AspireHeEncryptionParameters);
  outlined destroy of AMDPbHEConfig.OneOf_Config(v14, type metadata accessor for AspireHeEncryptionParameters);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v18, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  if ((v26 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_9:
  v27 = v48;
  if (*v48 != *v21)
  {
    goto LABEL_27;
  }

  v28 = *(v44 + 40);
  v29 = *(v43 + 48);
  v30 = v47;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v48 + v28, v47, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v21 + v28, v30 + v29, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  v31 = v46;
  v32 = *(v45 + 48);
  if (v32(v30, 1, v46) == 1)
  {
    if (v32(v30 + v29, 1, v31) == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v30, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  v33 = v42;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v30, v42, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  if (v32(v30 + v29, 1, v31) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config(v33, type metadata accessor for AspireSimilarityPlaintextPacking);
LABEL_15:
    v23 = &_s8CipherML32AspireSimilarityPlaintextPackingVSg_ADtMd;
    v24 = &_s8CipherML32AspireSimilarityPlaintextPackingVSg_ADtMR;
    v25 = v30;
    goto LABEL_7;
  }

  v34 = v30 + v29;
  v35 = v41;
  outlined init with take of AMDPbPIRConfig(v34, v41, type metadata accessor for AspireSimilarityPlaintextPacking);
  v36 = static AspireSimilarityPlaintextPacking.== infix(_:_:)(v33, v35);
  outlined destroy of AMDPbHEConfig.OneOf_Config(v35, type metadata accessor for AspireSimilarityPlaintextPacking);
  outlined destroy of AMDPbHEConfig.OneOf_Config(v33, type metadata accessor for AspireSimilarityPlaintextPacking);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v30, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMd, &_s8CipherML32AspireSimilarityPlaintextPackingVSgMR);
  if ((v36 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_17:
  if (*(v27 + 2) != *(v21 + 8))
  {
    goto LABEL_27;
  }

  if (v27[3])
  {
    if (*(v21 + 24))
    {
      goto LABEL_25;
    }

    v37 = 0;
LABEL_24:
    if (v37 == *(v21 + 16))
    {
      goto LABEL_25;
    }

LABEL_27:
    v38 = 0;
    return v38 & 1;
  }

  v37 = v27[2];
  if ((*(v21 + 24) & 1) == 0)
  {
    goto LABEL_24;
  }

  if (v37)
  {
    goto LABEL_27;
  }

LABEL_25:
  if (!specialized static Data.== infix(_:_:)(v27[4], v27[5], *(v21 + 32), *(v21 + 40)))
  {
    goto LABEL_27;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v38 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v38 & 1;
}

void specialized static AMDPbPECQuery.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for AMDPbEvaluationKey(0);
  v52 = *(v4 - 8);
  v53 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML18AMDPbEvaluationKeyVSgMd, &_s8CipherML18AMDPbEvaluationKeyVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v50 = &v47 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML18AMDPbEvaluationKeyVSg_ADtMd, &_s8CipherML18AMDPbEvaluationKeyVSg_ADtMR);
  MEMORY[0x28223BE20](v9);
  v54 = &v47 - v10;
  v11 = type metadata accessor for AspireSimilaritySerializedCiphertextMatrix(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = (&v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSgMd, &_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSgMR);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = (&v47 - v16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSg_ADtMd, &_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSg_ADtMR);
  MEMORY[0x28223BE20](v18);
  v20 = &v47 - v19;
  v21 = *a1;
  v22 = *a2;
  v23 = *(*a1 + 16);
  if (v23 != *(*a2 + 16))
  {
    return;
  }

  if (!v23 || v21 == v22)
  {
LABEL_7:
    v47 = v6;
    v26 = type metadata accessor for AMDPbPECQuery(0);
    v51 = a2;
    v27 = *(v26 + 28);
    v28 = a1;
    v29 = *(v18 + 48);
    v48 = v26;
    v49 = v28;
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v28 + v27, v20, &_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSgMd, &_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSgMR);
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v51 + v27, &v20[v29], &_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSgMd, &_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSgMR);
    v30 = *(v12 + 48);
    if (v30(v20, 1, v11) == 1)
    {
      if (v30(&v20[v29], 1, v11) == 1)
      {
        outlined destroy of AMDPbHEConfig.OneOf_Config?(v20, &_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSgMd, &_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSgMR);
LABEL_14:
        v35 = v49;
        v36 = *(v48 + 32);
        v37 = *(v9 + 48);
        v38 = v54;
        outlined init with copy of AMDPbHEConfig.OneOf_Config?(v49 + v36, v54, &_s8CipherML18AMDPbEvaluationKeyVSgMd, &_s8CipherML18AMDPbEvaluationKeyVSgMR);
        v39 = v51 + v36;
        v40 = v51;
        outlined init with copy of AMDPbHEConfig.OneOf_Config?(v39, v38 + v37, &_s8CipherML18AMDPbEvaluationKeyVSgMd, &_s8CipherML18AMDPbEvaluationKeyVSgMR);
        v41 = v53;
        v42 = *(v52 + 48);
        if (v42(v38, 1, v53) == 1)
        {
          if (v42(v38 + v37, 1, v41) == 1)
          {
            outlined destroy of AMDPbHEConfig.OneOf_Config?(v38, &_s8CipherML18AMDPbEvaluationKeyVSgMd, &_s8CipherML18AMDPbEvaluationKeyVSgMR);
LABEL_23:
            if (specialized static Data.== infix(_:_:)(v35[1], v35[2], v40[1], v40[2]))
            {
              type metadata accessor for UnknownStorage();
              lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
              dispatch thunk of static Equatable.== infix(_:_:)();
            }

            return;
          }
        }

        else
        {
          v43 = v50;
          outlined init with copy of AMDPbHEConfig.OneOf_Config?(v38, v50, &_s8CipherML18AMDPbEvaluationKeyVSgMd, &_s8CipherML18AMDPbEvaluationKeyVSgMR);
          if (v42(v38 + v37, 1, v41) != 1)
          {
            v44 = v38 + v37;
            v45 = v47;
            outlined init with take of AMDPbPIRConfig(v44, v47, type metadata accessor for AMDPbEvaluationKey);
            v46 = specialized static AMDPbEvaluationKey.== infix(_:_:)(v43, v45);
            outlined destroy of AMDPbHEConfig.OneOf_Config(v45, type metadata accessor for AMDPbEvaluationKey);
            outlined destroy of AMDPbHEConfig.OneOf_Config(v43, type metadata accessor for AMDPbEvaluationKey);
            outlined destroy of AMDPbHEConfig.OneOf_Config?(v38, &_s8CipherML18AMDPbEvaluationKeyVSgMd, &_s8CipherML18AMDPbEvaluationKeyVSgMR);
            if ((v46 & 1) == 0)
            {
              return;
            }

            goto LABEL_23;
          }

          outlined destroy of AMDPbHEConfig.OneOf_Config(v43, type metadata accessor for AMDPbEvaluationKey);
        }

        v31 = &_s8CipherML18AMDPbEvaluationKeyVSg_ADtMd;
        v32 = &_s8CipherML18AMDPbEvaluationKeyVSg_ADtMR;
        v33 = v38;
LABEL_20:
        outlined destroy of AMDPbHEConfig.OneOf_Config?(v33, v31, v32);
        return;
      }
    }

    else
    {
      outlined init with copy of AMDPbHEConfig.OneOf_Config?(v20, v17, &_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSgMd, &_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSgMR);
      if (v30(&v20[v29], 1, v11) != 1)
      {
        outlined init with take of AMDPbPIRConfig(&v20[v29], v14, type metadata accessor for AspireSimilaritySerializedCiphertextMatrix);
        v34 = specialized static AspireSimilaritySerializedCiphertextMatrix.== infix(_:_:)(v17, v14);
        outlined destroy of AMDPbHEConfig.OneOf_Config(v14, type metadata accessor for AspireSimilaritySerializedCiphertextMatrix);
        outlined destroy of AMDPbHEConfig.OneOf_Config(v17, type metadata accessor for AspireSimilaritySerializedCiphertextMatrix);
        outlined destroy of AMDPbHEConfig.OneOf_Config?(v20, &_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSgMd, &_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSgMR);
        if ((v34 & 1) == 0)
        {
          return;
        }

        goto LABEL_14;
      }

      outlined destroy of AMDPbHEConfig.OneOf_Config(v17, type metadata accessor for AspireSimilaritySerializedCiphertextMatrix);
    }

    v31 = &_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSg_ADtMd;
    v32 = &_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSg_ADtMR;
    v33 = v20;
    goto LABEL_20;
  }

  v24 = (v21 + 32);
  v25 = (v22 + 32);
  while (*v24 == *v25)
  {
    ++v24;
    ++v25;
    if (!--v23)
    {
      goto LABEL_7;
    }
  }
}

uint64_t specialized static AMDPbHEConfig.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AMDPbHEConfig.OneOf_Config(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML13AMDPbHEConfigV12OneOf_ConfigOSgMd, &_s8CipherML13AMDPbHEConfigV12OneOf_ConfigOSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML13AMDPbHEConfigV12OneOf_ConfigOSg_AFtMd, &_s8CipherML13AMDPbHEConfigV12OneOf_ConfigOSg_AFtMR);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v20 - v12;
  v15 = *(v14 + 56);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, &v20 - v12, &_s8CipherML13AMDPbHEConfigV12OneOf_ConfigOSgMd, &_s8CipherML13AMDPbHEConfigV12OneOf_ConfigOSgMR);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a2, &v13[v15], &_s8CipherML13AMDPbHEConfigV12OneOf_ConfigOSgMd, &_s8CipherML13AMDPbHEConfigV12OneOf_ConfigOSgMR);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v13, &_s8CipherML13AMDPbHEConfigV12OneOf_ConfigOSgMd, &_s8CipherML13AMDPbHEConfigV12OneOf_ConfigOSgMR);
LABEL_9:
      type metadata accessor for AMDPbHEConfig(0);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v13, v10, &_s8CipherML13AMDPbHEConfigV12OneOf_ConfigOSgMd, &_s8CipherML13AMDPbHEConfigV12OneOf_ConfigOSgMR);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config(v10, type metadata accessor for AMDPbHEConfig.OneOf_Config);
LABEL_6:
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v13, &_s8CipherML13AMDPbHEConfigV12OneOf_ConfigOSg_AFtMd, &_s8CipherML13AMDPbHEConfigV12OneOf_ConfigOSg_AFtMR);
    goto LABEL_7;
  }

  outlined init with take of AMDPbPIRConfig(&v13[v15], v7, type metadata accessor for AMDPbHEConfig.OneOf_Config);
  v18 = specialized static AMDPbHEConfig.OneOf_Config.== infix(_:_:)(v10, v7);
  outlined destroy of AMDPbHEConfig.OneOf_Config(v7, type metadata accessor for AMDPbHEConfig.OneOf_Config);
  outlined destroy of AMDPbHEConfig.OneOf_Config(v10, type metadata accessor for AMDPbHEConfig.OneOf_Config);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v13, &_s8CipherML13AMDPbHEConfigV12OneOf_ConfigOSgMd, &_s8CipherML13AMDPbHEConfigV12OneOf_ConfigOSgMR);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t specialized static AMDPbPIRConfig.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v50 = a2;
  v3 = type metadata accessor for AspirePirKeywordPirParameters(0);
  v46 = *(v3 - 8);
  v47 = v3;
  MEMORY[0x28223BE20](v3);
  v42 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v43 = &v41 - v6;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML016AspirePirKeywordD10ParametersVSg_ADtMd, &_s8CipherML016AspirePirKeywordD10ParametersVSg_ADtMR);
  MEMORY[0x28223BE20](v44);
  v48 = &v41 - v7;
  v8 = type metadata accessor for AspireHeEncryptionParameters(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v41 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeEncryptionParametersVSg_ADtMd, &_s8CipherML28AspireHeEncryptionParametersVSg_ADtMR);
  v16 = v15 - 8;
  MEMORY[0x28223BE20](v15);
  v18 = &v41 - v17;
  v45 = type metadata accessor for AMDPbPIRConfig(0);
  v19 = *(v45 + 36);
  v20 = *(v16 + 56);
  v49 = a1;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + v19, v18, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  v21 = v50;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v50 + v19, &v18[v20], &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  v22 = *(v9 + 48);
  if (v22(v18, 1, v8) == 1)
  {
    if (v22(&v18[v20], 1, v8) == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v18, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
      goto LABEL_9;
    }

LABEL_6:
    v23 = &_s8CipherML28AspireHeEncryptionParametersVSg_ADtMd;
    v24 = &_s8CipherML28AspireHeEncryptionParametersVSg_ADtMR;
    v25 = v18;
LABEL_7:
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v25, v23, v24);
    goto LABEL_30;
  }

  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v18, v14, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  if (v22(&v18[v20], 1, v8) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config(v14, type metadata accessor for AspireHeEncryptionParameters);
    goto LABEL_6;
  }

  outlined init with take of AMDPbPIRConfig(&v18[v20], v11, type metadata accessor for AspireHeEncryptionParameters);
  v26 = static AspireHeEncryptionParameters.== infix(_:_:)(v14, v11);
  outlined destroy of AMDPbHEConfig.OneOf_Config(v11, type metadata accessor for AspireHeEncryptionParameters);
  outlined destroy of AMDPbHEConfig.OneOf_Config(v14, type metadata accessor for AspireHeEncryptionParameters);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v18, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  if ((v26 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_9:
  v27 = v49;
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ8CipherML19AMDPbPIRShardConfigV_Tt1g5(*v49, *v21) & 1) == 0)
  {
    goto LABEL_30;
  }

  v28 = *(v45 + 40);
  v29 = *(v44 + 48);
  v30 = v48;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v27 + v28, v48, &_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v21 + v28, v30 + v29, &_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
  v31 = v47;
  v32 = *(v46 + 48);
  if (v32(v30, 1, v47) == 1)
  {
    if (v32(v30 + v29, 1, v31) == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v30, &_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  v33 = v43;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v30, v43, &_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
  if (v32(v30 + v29, 1, v31) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config(v33, type metadata accessor for AspirePirKeywordPirParameters);
LABEL_15:
    v23 = &_s8CipherML016AspirePirKeywordD10ParametersVSg_ADtMd;
    v24 = &_s8CipherML016AspirePirKeywordD10ParametersVSg_ADtMR;
    v25 = v30;
    goto LABEL_7;
  }

  v34 = v30 + v29;
  v35 = v42;
  outlined init with take of AMDPbPIRConfig(v34, v42, type metadata accessor for AspirePirKeywordPirParameters);
  v36 = static AspirePirKeywordPirParameters.== infix(_:_:)(v33, v35);
  outlined destroy of AMDPbHEConfig.OneOf_Config(v35, type metadata accessor for AspirePirKeywordPirParameters);
  outlined destroy of AMDPbHEConfig.OneOf_Config(v33, type metadata accessor for AspirePirKeywordPirParameters);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v30, &_s8CipherML016AspirePirKeywordD10ParametersVSgMd, &_s8CipherML016AspirePirKeywordD10ParametersVSgMR);
  if ((v36 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_17:
  v37 = v27[1];
  v38 = *(v21 + 8);
  if (*(v21 + 16) != 1)
  {
    if (v37 == v38)
    {
      goto LABEL_27;
    }

    goto LABEL_30;
  }

  if (!v38)
  {
    if (!v37)
    {
      goto LABEL_27;
    }

    goto LABEL_30;
  }

  if (v38 == 1)
  {
    if (v37 == 1)
    {
      goto LABEL_27;
    }

LABEL_30:
    v39 = 0;
    return v39 & 1;
  }

  if (v37 != 2)
  {
    goto LABEL_30;
  }

LABEL_27:
  if (v27[3] != *(v21 + 24) || !specialized static Data.== infix(_:_:)(v27[4], v27[5], *(v21 + 32), *(v21 + 40)))
  {
    goto LABEL_30;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v39 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v39 & 1;
}

uint64_t specialized static AMDPbHEConfig.OneOf_Config.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AMDPbPECConfig(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AMDPbPIRConfig(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AMDPbHEConfig.OneOf_Config(0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v15 = (&v27 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML13AMDPbHEConfigV12OneOf_ConfigO_AEtMd, &_s8CipherML13AMDPbHEConfigV12OneOf_ConfigO_AEtMR);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v27 - v17;
  v20 = *(v19 + 56);
  outlined init with copy of AMDPbPIRConfig(a1, &v27 - v17, type metadata accessor for AMDPbHEConfig.OneOf_Config);
  outlined init with copy of AMDPbPIRConfig(a2, &v18[v20], type metadata accessor for AMDPbHEConfig.OneOf_Config);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with copy of AMDPbPIRConfig(v18, v12, type metadata accessor for AMDPbHEConfig.OneOf_Config);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined init with take of AMDPbPIRConfig(&v18[v20], v6, type metadata accessor for AMDPbPECConfig);
      v21 = specialized static AMDPbPECConfig.== infix(_:_:)(v12, v6);
      outlined destroy of AMDPbHEConfig.OneOf_Config(v6, type metadata accessor for AMDPbPECConfig);
      v22 = v12;
      v23 = type metadata accessor for AMDPbPECConfig;
LABEL_9:
      outlined destroy of AMDPbHEConfig.OneOf_Config(v22, v23);
      outlined destroy of AMDPbHEConfig.OneOf_Config(v18, type metadata accessor for AMDPbHEConfig.OneOf_Config);
      return v21 & 1;
    }

    v24 = type metadata accessor for AMDPbPECConfig;
    v25 = v12;
  }

  else
  {
    outlined init with copy of AMDPbPIRConfig(v18, v15, type metadata accessor for AMDPbHEConfig.OneOf_Config);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      outlined init with take of AMDPbPIRConfig(&v18[v20], v9, type metadata accessor for AMDPbPIRConfig);
      v21 = specialized static AMDPbPIRConfig.== infix(_:_:)(v15, v9);
      outlined destroy of AMDPbHEConfig.OneOf_Config(v9, type metadata accessor for AMDPbPIRConfig);
      v22 = v15;
      v23 = type metadata accessor for AMDPbPIRConfig;
      goto LABEL_9;
    }

    v24 = type metadata accessor for AMDPbPIRConfig;
    v25 = v15;
  }

  outlined destroy of AMDPbHEConfig.OneOf_Config(v25, v24);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v18, &_s8CipherML13AMDPbHEConfigV12OneOf_ConfigO_AEtMd, &_s8CipherML13AMDPbHEConfigV12OneOf_ConfigO_AEtMR);
  v21 = 0;
  return v21 & 1;
}

uint64_t specialized static AMDPbHEReply.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AMDPbHEReply.OneOf_Reply(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML12AMDPbHEReplyV11OneOf_ReplyOSgMd, &_s8CipherML12AMDPbHEReplyV11OneOf_ReplyOSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML12AMDPbHEReplyV11OneOf_ReplyOSg_AFtMd, &_s8CipherML12AMDPbHEReplyV11OneOf_ReplyOSg_AFtMR);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v20 - v12;
  v15 = *(v14 + 56);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, &v20 - v12, &_s8CipherML12AMDPbHEReplyV11OneOf_ReplyOSgMd, &_s8CipherML12AMDPbHEReplyV11OneOf_ReplyOSgMR);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a2, &v13[v15], &_s8CipherML12AMDPbHEReplyV11OneOf_ReplyOSgMd, &_s8CipherML12AMDPbHEReplyV11OneOf_ReplyOSgMR);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v13, &_s8CipherML12AMDPbHEReplyV11OneOf_ReplyOSgMd, &_s8CipherML12AMDPbHEReplyV11OneOf_ReplyOSgMR);
LABEL_9:
      type metadata accessor for AMDPbHEReply(0);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v13, v10, &_s8CipherML12AMDPbHEReplyV11OneOf_ReplyOSgMd, &_s8CipherML12AMDPbHEReplyV11OneOf_ReplyOSgMR);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config(v10, type metadata accessor for AMDPbHEReply.OneOf_Reply);
LABEL_6:
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v13, &_s8CipherML12AMDPbHEReplyV11OneOf_ReplyOSg_AFtMd, &_s8CipherML12AMDPbHEReplyV11OneOf_ReplyOSg_AFtMR);
    goto LABEL_7;
  }

  outlined init with take of AMDPbPIRConfig(&v13[v15], v7, type metadata accessor for AMDPbHEReply.OneOf_Reply);
  v18 = specialized static AMDPbHEReply.OneOf_Reply.== infix(_:_:)(v10, v7);
  outlined destroy of AMDPbHEConfig.OneOf_Config(v7, type metadata accessor for AMDPbHEReply.OneOf_Reply);
  outlined destroy of AMDPbHEConfig.OneOf_Config(v10, type metadata accessor for AMDPbHEReply.OneOf_Reply);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v13, &_s8CipherML12AMDPbHEReplyV11OneOf_ReplyOSgMd, &_s8CipherML12AMDPbHEReplyV11OneOf_ReplyOSgMR);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t specialized static AMDPbHEReply.OneOf_Reply.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v27 = type metadata accessor for AMDPbPECReply(0);
  MEMORY[0x28223BE20](v27);
  v5 = (&v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = type metadata accessor for AMDPbPIRReply(0);
  MEMORY[0x28223BE20](v26);
  v7 = (&v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for AMDPbHEReply.OneOf_Reply(0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v13 = (&v26 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML12AMDPbHEReplyV11OneOf_ReplyO_AEtMd, &_s8CipherML12AMDPbHEReplyV11OneOf_ReplyO_AEtMR);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v26 - v15;
  v18 = *(v17 + 56);
  outlined init with copy of AMDPbPIRConfig(a1, &v26 - v15, type metadata accessor for AMDPbHEReply.OneOf_Reply);
  outlined init with copy of AMDPbPIRConfig(a2, &v16[v18], type metadata accessor for AMDPbHEReply.OneOf_Reply);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with copy of AMDPbPIRConfig(v16, v10, type metadata accessor for AMDPbHEReply.OneOf_Reply);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined init with take of AMDPbPIRConfig(&v16[v18], v5, type metadata accessor for AMDPbPECReply);
      if (_sSasSQRzlE2eeoiySbSayxG_ABtFZ8CipherML18AMDPbPECShardReplyV_Tt1g5(*v10, *v5))
      {
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        if (dispatch thunk of static Equatable.== infix(_:_:)())
        {
          v19 = type metadata accessor for AMDPbPECReply;
          outlined destroy of AMDPbHEConfig.OneOf_Config(v5, type metadata accessor for AMDPbPECReply);
          v20 = v10;
LABEL_13:
          outlined destroy of AMDPbHEConfig.OneOf_Config(v20, v19);
          outlined destroy of AMDPbHEConfig.OneOf_Config(v16, type metadata accessor for AMDPbHEReply.OneOf_Reply);
          return 1;
        }
      }

      v24 = type metadata accessor for AMDPbPECReply;
      outlined destroy of AMDPbHEConfig.OneOf_Config(v5, type metadata accessor for AMDPbPECReply);
      v25 = v10;
LABEL_16:
      outlined destroy of AMDPbHEConfig.OneOf_Config(v25, v24);
      outlined destroy of AMDPbHEConfig.OneOf_Config(v16, type metadata accessor for AMDPbHEReply.OneOf_Reply);
      return 0;
    }

    v21 = type metadata accessor for AMDPbPECReply;
    v22 = v10;
  }

  else
  {
    outlined init with copy of AMDPbPIRConfig(v16, v13, type metadata accessor for AMDPbHEReply.OneOf_Reply);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      outlined init with take of AMDPbPIRConfig(&v16[v18], v7, type metadata accessor for AMDPbPIRReply);
      if (_sSasSQRzlE2eeoiySbSayxG_ABtFZ8CipherML31AspireHeSerializedCiphertextVecV_Tt1g5(*v13, *v7))
      {
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        if (dispatch thunk of static Equatable.== infix(_:_:)())
        {
          v19 = type metadata accessor for AMDPbPIRReply;
          outlined destroy of AMDPbHEConfig.OneOf_Config(v7, type metadata accessor for AMDPbPIRReply);
          v20 = v13;
          goto LABEL_13;
        }
      }

      v24 = type metadata accessor for AMDPbPIRReply;
      outlined destroy of AMDPbHEConfig.OneOf_Config(v7, type metadata accessor for AMDPbPIRReply);
      v25 = v13;
      goto LABEL_16;
    }

    v21 = type metadata accessor for AMDPbPIRReply;
    v22 = v13;
  }

  outlined destroy of AMDPbHEConfig.OneOf_Config(v22, v21);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v16, &_s8CipherML12AMDPbHEReplyV11OneOf_ReplyO_AEtMd, &_s8CipherML12AMDPbHEReplyV11OneOf_ReplyO_AEtMR);
  return 0;
}

uint64_t specialized static AMDPbHEQuery.== infix(_:_:)(void *a1, void *a2)
{
  v4 = type metadata accessor for AMDPbHEQuery.OneOf_Query(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML12AMDPbHEQueryV11OneOf_QueryOSgMd, &_s8CipherML12AMDPbHEQueryV11OneOf_QueryOSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML12AMDPbHEQueryV11OneOf_QueryOSg_AFtMd, &_s8CipherML12AMDPbHEQueryV11OneOf_QueryOSg_AFtMR);
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - v12;
  if (*a1 != *a2 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_9;
  }

  v21 = v7;
  v22 = type metadata accessor for AMDPbHEQuery(0);
  v14 = *(v22 + 20);
  v15 = *(v11 + 48);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1 + v14, v13, &_s8CipherML12AMDPbHEQueryV11OneOf_QueryOSgMd, &_s8CipherML12AMDPbHEQueryV11OneOf_QueryOSgMR);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a2 + v14, &v13[v15], &_s8CipherML12AMDPbHEQueryV11OneOf_QueryOSgMd, &_s8CipherML12AMDPbHEQueryV11OneOf_QueryOSgMR);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v13, &_s8CipherML12AMDPbHEQueryV11OneOf_QueryOSgMd, &_s8CipherML12AMDPbHEQueryV11OneOf_QueryOSgMR);
LABEL_11:
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v17 & 1;
    }

    goto LABEL_8;
  }

  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v13, v10, &_s8CipherML12AMDPbHEQueryV11OneOf_QueryOSgMd, &_s8CipherML12AMDPbHEQueryV11OneOf_QueryOSgMR);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config(v10, type metadata accessor for AMDPbHEQuery.OneOf_Query);
LABEL_8:
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v13, &_s8CipherML12AMDPbHEQueryV11OneOf_QueryOSg_AFtMd, &_s8CipherML12AMDPbHEQueryV11OneOf_QueryOSg_AFtMR);
    goto LABEL_9;
  }

  v18 = v21;
  outlined init with take of AMDPbPIRConfig(&v13[v15], v21, type metadata accessor for AMDPbHEQuery.OneOf_Query);
  v19 = specialized static AMDPbHEQuery.OneOf_Query.== infix(_:_:)(v10, v18);
  outlined destroy of AMDPbHEConfig.OneOf_Config(v18, type metadata accessor for AMDPbHEQuery.OneOf_Query);
  outlined destroy of AMDPbHEConfig.OneOf_Config(v10, type metadata accessor for AMDPbHEQuery.OneOf_Query);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v13, &_s8CipherML12AMDPbHEQueryV11OneOf_QueryOSgMd, &_s8CipherML12AMDPbHEQueryV11OneOf_QueryOSgMR);
  if (v19)
  {
    goto LABEL_11;
  }

LABEL_9:
  v17 = 0;
  return v17 & 1;
}

uint64_t specialized static AMDPbPIRQuery.== infix(_:_:)(_DWORD *a1, _DWORD *a2)
{
  v4 = type metadata accessor for AMDPbEvaluationKey(0);
  v49 = *(v4 - 8);
  v50 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML18AMDPbEvaluationKeyVSgMd, &_s8CipherML18AMDPbEvaluationKeyVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v47 = &v43 - v8;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML18AMDPbEvaluationKeyVSg_ADtMd, &_s8CipherML18AMDPbEvaluationKeyVSg_ADtMR);
  MEMORY[0x28223BE20](v48);
  v10 = &v43 - v9;
  v11 = type metadata accessor for AspirePirEncryptedIndices(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = (&v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML25AspirePirEncryptedIndicesVSgMd, &_s8CipherML25AspirePirEncryptedIndicesVSgMR);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = (&v43 - v16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML25AspirePirEncryptedIndicesVSg_ADtMd, &_s8CipherML25AspirePirEncryptedIndicesVSg_ADtMR);
  MEMORY[0x28223BE20](v18);
  v20 = &v43 - v19;
  if (*a1 != *a2)
  {
    goto LABEL_18;
  }

  v45 = v10;
  v43 = v6;
  v44 = type metadata accessor for AMDPbPIRQuery(0);
  v21 = *(v44 + 28);
  v22 = a1;
  v23 = *(v18 + 48);
  v46 = v22;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v22 + v21, v20, &_s8CipherML25AspirePirEncryptedIndicesVSgMd, &_s8CipherML25AspirePirEncryptedIndicesVSgMR);
  v24 = a2 + v21;
  v25 = a2;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v24, &v20[v23], &_s8CipherML25AspirePirEncryptedIndicesVSgMd, &_s8CipherML25AspirePirEncryptedIndicesVSgMR);
  v26 = *(v12 + 48);
  if (v26(v20, 1, v11) == 1)
  {
    if (v26(&v20[v23], 1, v11) == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v20, &_s8CipherML25AspirePirEncryptedIndicesVSgMd, &_s8CipherML25AspirePirEncryptedIndicesVSgMR);
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v20, v17, &_s8CipherML25AspirePirEncryptedIndicesVSgMd, &_s8CipherML25AspirePirEncryptedIndicesVSgMR);
  if (v26(&v20[v23], 1, v11) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config(v17, type metadata accessor for AspirePirEncryptedIndices);
LABEL_10:
    v33 = &_s8CipherML25AspirePirEncryptedIndicesVSg_ADtMd;
    v34 = &_s8CipherML25AspirePirEncryptedIndicesVSg_ADtMR;
LABEL_16:
    v36 = v20;
LABEL_17:
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v36, v33, v34);
    goto LABEL_18;
  }

  outlined init with take of AMDPbPIRConfig(&v20[v23], v14, type metadata accessor for AspirePirEncryptedIndices);
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ8CipherML28AspireHeSerializedCiphertextV_Tt1g5(*v17, *v14) & 1) == 0 || v17[1] != v14[1])
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config(v14, type metadata accessor for AspirePirEncryptedIndices);
    outlined destroy of AMDPbHEConfig.OneOf_Config(v17, type metadata accessor for AspirePirEncryptedIndices);
    v33 = &_s8CipherML25AspirePirEncryptedIndicesVSgMd;
    v34 = &_s8CipherML25AspirePirEncryptedIndicesVSgMR;
    goto LABEL_16;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v35 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of AMDPbHEConfig.OneOf_Config(v14, type metadata accessor for AspirePirEncryptedIndices);
  outlined destroy of AMDPbHEConfig.OneOf_Config(v17, type metadata accessor for AspirePirEncryptedIndices);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v20, &_s8CipherML25AspirePirEncryptedIndicesVSgMd, &_s8CipherML25AspirePirEncryptedIndicesVSgMR);
  if ((v35 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_5:
  v27 = v45;
  v28 = *(v44 + 32);
  v29 = *(v48 + 48);
  v30 = v46;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v46 + v28, v45, &_s8CipherML18AMDPbEvaluationKeyVSgMd, &_s8CipherML18AMDPbEvaluationKeyVSgMR);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v25 + v28, v27 + v29, &_s8CipherML18AMDPbEvaluationKeyVSgMd, &_s8CipherML18AMDPbEvaluationKeyVSgMR);
  v31 = v50;
  v32 = *(v49 + 48);
  if (v32(v27, 1, v50) != 1)
  {
    v39 = v47;
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v27, v47, &_s8CipherML18AMDPbEvaluationKeyVSgMd, &_s8CipherML18AMDPbEvaluationKeyVSgMR);
    if (v32(v27 + v29, 1, v31) != 1)
    {
      v40 = v27 + v29;
      v41 = v43;
      outlined init with take of AMDPbPIRConfig(v40, v43, type metadata accessor for AMDPbEvaluationKey);
      v42 = specialized static AMDPbEvaluationKey.== infix(_:_:)(v39, v41);
      outlined destroy of AMDPbHEConfig.OneOf_Config(v41, type metadata accessor for AMDPbEvaluationKey);
      outlined destroy of AMDPbHEConfig.OneOf_Config(v39, type metadata accessor for AMDPbEvaluationKey);
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v27, &_s8CipherML18AMDPbEvaluationKeyVSgMd, &_s8CipherML18AMDPbEvaluationKeyVSgMR);
      if ((v42 & 1) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_24;
    }

    outlined destroy of AMDPbHEConfig.OneOf_Config(v39, type metadata accessor for AMDPbEvaluationKey);
    goto LABEL_22;
  }

  if (v32(v27 + v29, 1, v31) != 1)
  {
LABEL_22:
    v33 = &_s8CipherML18AMDPbEvaluationKeyVSg_ADtMd;
    v34 = &_s8CipherML18AMDPbEvaluationKeyVSg_ADtMR;
    v36 = v27;
    goto LABEL_17;
  }

  outlined destroy of AMDPbHEConfig.OneOf_Config?(v27, &_s8CipherML18AMDPbEvaluationKeyVSgMd, &_s8CipherML18AMDPbEvaluationKeyVSgMR);
LABEL_24:
  if (specialized static Data.== infix(_:_:)(*(v30 + 1), *(v30 + 2), *(v25 + 1), *(v25 + 2)))
  {
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v37 = dispatch thunk of static Equatable.== infix(_:_:)();
    return v37 & 1;
  }

LABEL_18:
  v37 = 0;
  return v37 & 1;
}

uint64_t specialized static AMDPbHEQuery.OneOf_Query.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AMDPbPECQuery(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for AMDPbPIRQuery(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = (&v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for AMDPbHEQuery.OneOf_Query(0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v15 = (&v28 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML12AMDPbHEQueryV11OneOf_QueryO_AEtMd, &_s8CipherML12AMDPbHEQueryV11OneOf_QueryO_AEtMR);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v28 - v17;
  v20 = *(v19 + 56);
  outlined init with copy of AMDPbPIRConfig(a1, &v28 - v17, type metadata accessor for AMDPbHEQuery.OneOf_Query);
  outlined init with copy of AMDPbPIRConfig(a2, &v18[v20], type metadata accessor for AMDPbHEQuery.OneOf_Query);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with copy of AMDPbPIRConfig(v18, v12, type metadata accessor for AMDPbHEQuery.OneOf_Query);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined init with take of AMDPbPIRConfig(&v18[v20], v6, type metadata accessor for AMDPbPECQuery);
      specialized static AMDPbPECQuery.== infix(_:_:)(v12, v6);
      v22 = v21;
      outlined destroy of AMDPbHEConfig.OneOf_Config(v6, type metadata accessor for AMDPbPECQuery);
      v23 = v12;
      v24 = type metadata accessor for AMDPbPECQuery;
LABEL_9:
      outlined destroy of AMDPbHEConfig.OneOf_Config(v23, v24);
      outlined destroy of AMDPbHEConfig.OneOf_Config(v18, type metadata accessor for AMDPbHEQuery.OneOf_Query);
      return v22 & 1;
    }

    v25 = type metadata accessor for AMDPbPECQuery;
    v26 = v12;
  }

  else
  {
    outlined init with copy of AMDPbPIRConfig(v18, v15, type metadata accessor for AMDPbHEQuery.OneOf_Query);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      outlined init with take of AMDPbPIRConfig(&v18[v20], v9, type metadata accessor for AMDPbPIRQuery);
      v22 = specialized static AMDPbPIRQuery.== infix(_:_:)(v15, v9);
      outlined destroy of AMDPbHEConfig.OneOf_Config(v9, type metadata accessor for AMDPbPIRQuery);
      v23 = v15;
      v24 = type metadata accessor for AMDPbPIRQuery;
      goto LABEL_9;
    }

    v25 = type metadata accessor for AMDPbPIRQuery;
    v26 = v15;
  }

  outlined destroy of AMDPbHEConfig.OneOf_Config(v26, v25);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v18, &_s8CipherML12AMDPbHEQueryV11OneOf_QueryO_AEtMd, &_s8CipherML12AMDPbHEQueryV11OneOf_QueryO_AEtMR);
  v22 = 0;
  return v22 & 1;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_8CipherML13AMDPbHEConfigVTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_8CipherML13AMDPbHEConfigVtMd, &_sSS_8CipherML13AMDPbHEConfigVtMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS8CipherML13AMDPbHEConfigVGMd, &_ss18_DictionaryStorageCySS8CipherML13AMDPbHEConfigVGMR);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of AMDPbHEConfig.OneOf_Config?(v9, v5, &_sSS_8CipherML13AMDPbHEConfigVtMd, &_sSS_8CipherML13AMDPbHEConfigVtMR);
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
      v18 = type metadata accessor for AMDPbHEConfig(0);
      result = outlined init with take of AMDPbPIRConfig(v5 + v8, v17 + *(*(v18 - 8) + 72) * v15, type metadata accessor for AMDPbHEConfig);
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

uint64_t outlined destroy of AMDPbHEConfig.OneOf_Config(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of AMDPbPIRConfig(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of AMDPbPIRConfig(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined assign with take of AMDPbHEConfig.OneOf_Config?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t type metadata accessor for AMDPbHEConfigsReply(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t lazy protocol witness table accessor for type AspirePirPirAlgorithm and conformance AspirePirPirAlgorithm()
{
  result = lazy protocol witness table cache variable for type AspirePirPirAlgorithm and conformance AspirePirPirAlgorithm;
  if (!lazy protocol witness table cache variable for type AspirePirPirAlgorithm and conformance AspirePirPirAlgorithm)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AspirePirPirAlgorithm and conformance AspirePirPirAlgorithm);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AspirePirPirAlgorithm and conformance AspirePirPirAlgorithm;
  if (!lazy protocol witness table cache variable for type AspirePirPirAlgorithm and conformance AspirePirPirAlgorithm)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AspirePirPirAlgorithm and conformance AspirePirPirAlgorithm);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AspirePirPirAlgorithm and conformance AspirePirPirAlgorithm;
  if (!lazy protocol witness table cache variable for type AspirePirPirAlgorithm and conformance AspirePirPirAlgorithm)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AspirePirPirAlgorithm and conformance AspirePirPirAlgorithm);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AspirePirPirAlgorithm and conformance AspirePirPirAlgorithm;
  if (!lazy protocol witness table cache variable for type AspirePirPirAlgorithm and conformance AspirePirPirAlgorithm)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AspirePirPirAlgorithm and conformance AspirePirPirAlgorithm);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AspireSimilaritySimilarityMetric and conformance AspireSimilaritySimilarityMetric()
{
  result = lazy protocol witness table cache variable for type AspireSimilaritySimilarityMetric and conformance AspireSimilaritySimilarityMetric;
  if (!lazy protocol witness table cache variable for type AspireSimilaritySimilarityMetric and conformance AspireSimilaritySimilarityMetric)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AspireSimilaritySimilarityMetric and conformance AspireSimilaritySimilarityMetric);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AspireSimilaritySimilarityMetric and conformance AspireSimilaritySimilarityMetric;
  if (!lazy protocol witness table cache variable for type AspireSimilaritySimilarityMetric and conformance AspireSimilaritySimilarityMetric)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AspireSimilaritySimilarityMetric and conformance AspireSimilaritySimilarityMetric);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AspireSimilaritySimilarityMetric and conformance AspireSimilaritySimilarityMetric;
  if (!lazy protocol witness table cache variable for type AspireSimilaritySimilarityMetric and conformance AspireSimilaritySimilarityMetric)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AspireSimilaritySimilarityMetric and conformance AspireSimilaritySimilarityMetric);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AspireSimilaritySimilarityMetric and conformance AspireSimilaritySimilarityMetric;
  if (!lazy protocol witness table cache variable for type AspireSimilaritySimilarityMetric and conformance AspireSimilaritySimilarityMetric)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AspireSimilaritySimilarityMetric and conformance AspireSimilaritySimilarityMetric);
  }

  return result;
}

uint64_t type metadata completion function for AMDPbFetchHEConfigs(uint64_t a1)
{
  result = type metadata accessor for UnknownStorage();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void type metadata completion function for AMDPbHEConfigsReply(uint64_t a1)
{
  type metadata accessor for [String : AMDPbHEConfig](319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for [AMDPbHEKeyStatus](319, &lazy cache variable for type metadata for [AMDPbHEKeyStatus], type metadata accessor for AMDPbHEKeyStatus, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for UnknownStorage();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for [AMDPbHEKeyStatus](uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void type metadata completion function for AMDPbHEKeyStatus(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for [AMDPbHEKeyStatus](319, &lazy cache variable for type metadata for AspireHeEvaluationKeyConfig?, type metadata accessor for AspireHeEvaluationKeyConfig, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata completion function for AMDPbPIRConfig(uint64_t a1)
{
  type metadata accessor for [AMDPbHEKeyStatus](319, &lazy cache variable for type metadata for [AMDPbPIRShardConfig], type metadata accessor for AMDPbPIRShardConfig, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v2 <= 0x3F)
    {
      type metadata accessor for [AMDPbHEKeyStatus](319, &lazy cache variable for type metadata for AspireHeEncryptionParameters?, type metadata accessor for AspireHeEncryptionParameters, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for [AMDPbHEKeyStatus](319, &lazy cache variable for type metadata for AspirePirKeywordPirParameters?, type metadata accessor for AspirePirKeywordPirParameters, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata completion function for AMDPbPIRShardConfig(uint64_t a1)
{
  type metadata accessor for [UInt64](319, &lazy cache variable for type metadata for [UInt64], MEMORY[0x277D84D38]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata completion function for AMDPbPECConfig(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for [AMDPbHEKeyStatus](319, &lazy cache variable for type metadata for AspireHeEncryptionParameters?, type metadata accessor for AspireHeEncryptionParameters, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for [AMDPbHEKeyStatus](319, &lazy cache variable for type metadata for AspireSimilarityPlaintextPacking?, type metadata accessor for AspireSimilarityPlaintextPacking, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for AMDPbHEQuery(uint64_t a1)
{
  type metadata accessor for [AMDPbHEKeyStatus](319, &lazy cache variable for type metadata for AMDPbHEQuery.OneOf_Query?, type metadata accessor for AMDPbHEQuery.OneOf_Query, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t type metadata completion function for AMDPbHEConfig.OneOf_Config(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319, a2, a3);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_52Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a2)
  {
    v10 = *(v9 + 48);

    return v10(a1, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for UnknownStorage();
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 20);

    return v13(v14, a2, v12);
  }
}

uint64_t __swift_store_extra_inhabitant_index_53Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v11 = *(v10 - 8);
  if (*(v11 + 84) == a3)
  {
    v12 = *(v11 + 56);

    return v12(a1, a2, a2, v10);
  }

  else
  {
    v14 = type metadata accessor for UnknownStorage();
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + *(a4 + 20);

    return v15(v16, a2, a2, v14);
  }
}

void type metadata completion function for AMDPbEvaluationKey(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for [AMDPbHEKeyStatus](319, &lazy cache variable for type metadata for AMDPbEvaluationKeyMetadata?, type metadata accessor for AMDPbEvaluationKeyMetadata, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for [AMDPbHEKeyStatus](319, &lazy cache variable for type metadata for AspireHeSerializedEvaluationKey?, type metadata accessor for AspireHeSerializedEvaluationKey, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t type metadata completion function for AMDPbEvaluationKeyMetadata(uint64_t a1)
{
  result = type metadata accessor for UnknownStorage();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void type metadata completion function for AMDPbPIRQuery(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for [AMDPbHEKeyStatus](319, &lazy cache variable for type metadata for AspirePirEncryptedIndices?, type metadata accessor for AspirePirEncryptedIndices, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for [AMDPbHEKeyStatus](319, &lazy cache variable for type metadata for AMDPbEvaluationKey?, type metadata accessor for AMDPbEvaluationKey, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for AMDPbPECQuery(uint64_t a1)
{
  type metadata accessor for [UInt64](319, &lazy cache variable for type metadata for [UInt32], MEMORY[0x277D84CC0]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v2 <= 0x3F)
    {
      type metadata accessor for [AMDPbHEKeyStatus](319, &lazy cache variable for type metadata for AspireSimilaritySerializedCiphertextMatrix?, type metadata accessor for AspireSimilaritySerializedCiphertextMatrix, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for [AMDPbHEKeyStatus](319, &lazy cache variable for type metadata for AMDPbEvaluationKey?, type metadata accessor for AMDPbEvaluationKey, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata completion function for AMDPbPECShardReply(uint64_t a1)
{
  type metadata accessor for [UInt64](319, &lazy cache variable for type metadata for [UInt64], MEMORY[0x277D84D38]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for [UInt64](319, &lazy cache variable for type metadata for [Data], MEMORY[0x277CC9318]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for UnknownStorage();
      if (v3 <= 0x3F)
      {
        type metadata accessor for [AMDPbHEKeyStatus](319, &lazy cache variable for type metadata for AspireSimilaritySerializedCiphertextMatrix?, type metadata accessor for AspireSimilaritySerializedCiphertextMatrix, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for [UInt64](uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = type metadata accessor for Array();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_104Tm(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *__swift_store_extra_inhabitant_index_105Tm(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void type metadata completion function for AMDPbHEConfig(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t, uint64_t))
{
  type metadata accessor for [AMDPbHEKeyStatus](319, a4, a5, a6);
  if (v6 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_8CipherML15AspireApiConfigVTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_8CipherML15AspireApiConfigVtMd, &_sSS_8CipherML15AspireApiConfigVtMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS8CipherML15AspireApiConfigVGMd, &_ss18_DictionaryStorageCySS8CipherML15AspireApiConfigVGMR);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of AMDPbHEConfig.OneOf_Config?(v9, v5, &_sSS_8CipherML15AspireApiConfigVtMd, &_sSS_8CipherML15AspireApiConfigVtMR);
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
      v18 = type metadata accessor for AspireApiConfig(0);
      result = outlined init with take of AMDPbPIRConfig(v5 + v8, v17 + *(*(v18 - 8) + 72) * v15, type metadata accessor for AspireApiConfig);
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_Say8CipherML10TokenCacheC06CachedE0VGTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSay8CipherML10TokenCacheC06CachedE0VGGMd, &_ss18_DictionaryStorageCySSSay8CipherML10TokenCacheC06CachedE0VGGMR);
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10Foundation4DateVTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_10Foundation4DateVtMd, &_sSS_10Foundation4DateVtMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation4DateVGMd, &_ss18_DictionaryStorageCySS10Foundation4DateVGMR);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of AMDPbHEConfig.OneOf_Config?(v9, v5, &_sSS_10Foundation4DateVtMd, &_sSS_10Foundation4DateVtMR);
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
      v18 = type metadata accessor for Date();
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC16CryptoKitPrivate2HEO13SecurityLevelO_SayAE10RlweParamsOGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CryptoKitPrivate2HEO13SecurityLevelO_SayAC10RlweParamsOGtMd, &_s16CryptoKitPrivate2HEO13SecurityLevelO_SayAC10RlweParamsOGtMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy16CryptoKitPrivate2HEO13SecurityLevelOSayAE10RlweParamsOGGMd, &_ss18_DictionaryStorageCy16CryptoKitPrivate2HEO13SecurityLevelOSayAE10RlweParamsOGGMR);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of AMDPbHEConfig.OneOf_Config?(v9, v5, &_s16CryptoKitPrivate2HEO13SecurityLevelO_SayAC10RlweParamsOGtMd, &_s16CryptoKitPrivate2HEO13SecurityLevelO_SayAC10RlweParamsOGtMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for HE.SecurityLevel();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_8CipherML12UseCaseGroupVTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_8CipherML12UseCaseGroupVtMd, &_sSS_8CipherML12UseCaseGroupVtMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS8CipherML12UseCaseGroupVGMd, &_ss18_DictionaryStorageCySS8CipherML12UseCaseGroupVGMR);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of AMDPbHEConfig.OneOf_Config?(v9, v5, &_sSS_8CipherML12UseCaseGroupVtMd, &_sSS_8CipherML12UseCaseGroupVtMR);
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
      v18 = type metadata accessor for UseCaseGroup(0);
      result = outlined init with take of AMDPbPIRConfig(v5 + v8, v17 + *(*(v18 - 8) + 72) * v15, type metadata accessor for UseCaseGroup);
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ScTyyts5Error_pGTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSScTyyts5Error_pGGMd, &_ss18_DictionaryStorageCySSScTyyts5Error_pGGMR);
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4DataV_8CipherML9SecretKeyVTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataV_8CipherML9SecretKeyVtMd, &_s10Foundation4DataV_8CipherML9SecretKeyVtMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v19 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4DataV8CipherML9SecretKeyVGMd, &_ss18_DictionaryStorageCy10Foundation4DataV8CipherML9SecretKeyVGMR);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of AMDPbHEConfig.OneOf_Config?(v9, v5, &_s10Foundation4DataV_8CipherML9SecretKeyVtMd, &_s10Foundation4DataV_8CipherML9SecretKeyVtMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(*v5, v5[1]);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 16 * result) = *v5;
      v14 = v7[7];
      v15 = type metadata accessor for SecretKey(0);
      result = outlined init with take of AMDPbPIRConfig(v5 + v8, v14 + *(*(v15 - 8) + 72) * v13, type metadata accessor for SecretKey);
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd, &_ss18_DictionaryStorageCyS2SGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4DataV_AESgTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4DataVAESgGMd, &_ss18_DictionaryStorageCy10Foundation4DataVAESgGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;
      outlined copy of Data._Representation(v5, v6);
      outlined copy of Data?(v7, v8);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4DataV_8CipherML27AspireHeEvaluationKeyConfigVTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataV_8CipherML27AspireHeEvaluationKeyConfigVtMd, &_s10Foundation4DataV_8CipherML27AspireHeEvaluationKeyConfigVtMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v19 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4DataV8CipherML27AspireHeEvaluationKeyConfigVGMd, &_ss18_DictionaryStorageCy10Foundation4DataV8CipherML27AspireHeEvaluationKeyConfigVGMR);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of AMDPbHEConfig.OneOf_Config?(v9, v5, &_s10Foundation4DataV_8CipherML27AspireHeEvaluationKeyConfigVtMd, &_s10Foundation4DataV_8CipherML27AspireHeEvaluationKeyConfigVtMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(*v5, v5[1]);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 16 * result) = *v5;
      v14 = v7[7];
      v15 = type metadata accessor for AspireHeEvaluationKeyConfig(0);
      result = outlined init with take of AMDPbPIRConfig(v5 + v8, v14 + *(*(v15 - 8) + 72) * v13, type metadata accessor for AspireHeEvaluationKeyConfig);
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSObjectCTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSo8NSObjectCGMd, &_ss18_DictionaryStorageCySSSo8NSObjectCGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs6UInt64V_8CipherML027AspireHeSerializedKeySwitchI0VTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt64V_8CipherML027AspireHeSerializedKeySwitchG0VtMd, &_ss6UInt64V_8CipherML027AspireHeSerializedKeySwitchG0VtMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v20 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys6UInt64V8CipherML027AspireHeSerializedKeySwitchI0VGMd, &_ss18_DictionaryStorageCys6UInt64V8CipherML027AspireHeSerializedKeySwitchI0VGMR);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      outlined init with copy of AMDPbHEConfig.OneOf_Config?(v9, v5, &_ss6UInt64V_8CipherML027AspireHeSerializedKeySwitchG0VtMd, &_ss6UInt64V_8CipherML027AspireHeSerializedKeySwitchG0VtMR);
      v11 = *v5;
      result = specialized __RawDictionaryStorage.find<A>(_:)(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v11;
      v15 = v7[7];
      v16 = type metadata accessor for AspireHeSerializedKeySwitchKey(0);
      result = outlined init with take of AMDPbPIRConfig(v5 + v8, v15 + *(*(v16 - 8) + 72) * v14, type metadata accessor for AspireHeSerializedKeySwitchKey);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
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

uint64_t outlined copy of Data?(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined copy of Data._Representation(result, a2);
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t outlined destroy of AMDPbHEConfig.OneOf_Config?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined init with copy of AMDPbHEConfig.OneOf_Config?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t PegasusNetworkingError.errorDescription.getter()
{
  v1 = v0;
  v2 = type metadata accessor for PegasusNetworkingError(0);
  MEMORY[0x28223BE20](v2);
  v4 = (&v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of PegasusNetworkingError(v1, v4, type metadata accessor for PegasusNetworkingError);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v6 = *v4;
      v7 = v4[1];
      v15 = 0;
      v16 = 0xE000000000000000;
      _StringGuts.grow(_:)(24);

      v15 = 0xD000000000000015;
      v16 = 0x8000000225035AA0;
      MEMORY[0x22AA60A80](v6, v7);

      MEMORY[0x22AA60A80](39, 0xE100000000000000);
      return v15;
    }

    else
    {
      return 0xD000000000000019;
    }
  }

  else
  {
    v9 = type metadata accessor for ProxyError();
    v10 = *(v9 - 8);
    v11 = MEMORY[0x28223BE20](v9);
    v13 = &v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v10 + 32))(v13, v4, v9, v11);
    v15 = 0;
    v16 = 0xE000000000000000;
    _StringGuts.grow(_:)(17);
    MEMORY[0x22AA60A80](0x6520726576726573, 0xEE002720726F7272);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x22AA60A80](39, 0xE100000000000000);
    v14 = v15;
    (*(v10 + 8))(v13, v9);
    return v14;
  }
}

uint64_t type metadata accessor for PegasusNetworkingError(uint64_t a1)
{
  result = type metadata singleton initialization cache for PegasusNetworkingError;
  if (!type metadata singleton initialization cache for PegasusNetworkingError)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PegasusNetworking.networkDelegationConfig.getter()
{
  v1 = *(v0 + 120);

  return v1;
}

void *PegasusNetworking.__allocating_init(networkDelegationConfig:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  swift_defaultActor_initialize();
  v4[15] = a1;
  v4[16] = a2;
  type metadata accessor for PegasusProxyForEncryptedPQAGeo();
  swift_allocObject();

  v4[14] = PegasusProxyForEncryptedPQAGeo.init(clientBundleId:)();
  return v4;
}

void *PegasusNetworking.init(networkDelegationConfig:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_defaultActor_initialize();
  v3[15] = a1;
  v3[16] = a2;
  type metadata accessor for PegasusProxyForEncryptedPQAGeo();
  swift_allocObject();

  v3[14] = PegasusProxyForEncryptedPQAGeo.init(clientBundleId:)();
  return v3;
}

uint64_t PegasusNetworking.fetchConfigs(useCases:userId:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for Apple_Parsec_Encryptedvisualsearch_V1_ConfigResponse();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = type metadata accessor for Apple_Parsec_Encryptedvisualsearch_V1_ConfigRequest();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](PegasusNetworking.fetchConfigs(useCases:userId:), v2, 0);
}

uint64_t PegasusNetworking.fetchConfigs(useCases:userId:)()
{
  v1 = *(v0[3] + 16);
  v0[11] = v1;
  if (v1)
  {
    v0[12] = *(v0[4] + 112);
    v2 = swift_task_alloc();
    v0[13] = v2;
    *v2 = v0;
    v2[1] = PegasusNetworking.fetchConfigs(useCases:userId:);

    return PegasusProxyForEncryptedPQAGeo.ensureUseCaseEnabled()();
  }

  else
  {
    v4 = v0[2];
    v5 = MEMORY[0x277D84F90];
    *v4 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_8CipherML15AspireApiConfigVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    v4[1] = v5;
    type metadata accessor for AspireApiConfigResponse(0);
    UnknownStorage.init()();

    v6 = v0[1];

    return v6();
  }
}

{
  v2 = *v1;
  v3 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = *(v2 + 32);

    return MEMORY[0x2822009F8](PegasusNetworking.fetchConfigs(useCases:userId:), v6, 0);
  }
}

{
  v30 = v0;
  v1 = v0[11];
  v2 = v0[3];
  v29 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
  v3 = 0;
  v4 = v29;
  v5 = v29[2];
  v6 = 16 * v5;
  v7 = (v2 + 40);
  do
  {
    v9 = *(v7 - 1);
    v8 = *v7;
    v29 = v4;
    v10 = v5 + 1;
    v11 = *(v4 + 24);

    if (v5 >= v11 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v10, 1);
      v4 = v29;
    }

    v0[17] = v4;
    v12 = v0[11];
    ++v3;
    *(v4 + 16) = v10;
    v13 = v4 + v6;
    *(v13 + 32) = v9;
    *(v13 + 40) = v8;
    v6 += 16;
    v7 += 3;
    ++v5;
  }

  while (v3 != v12);
  v14 = v0[14];
  v15 = v0[3];
  *(swift_task_alloc() + 16) = v15;
  lazy protocol witness table accessor for type Apple_Parsec_Encryptedvisualsearch_V1_ConfigRequest and conformance Apple_Parsec_Encryptedvisualsearch_V1_ConfigRequest(&lazy protocol witness table cache variable for type Apple_Parsec_Encryptedvisualsearch_V1_ConfigRequest and conformance Apple_Parsec_Encryptedvisualsearch_V1_ConfigRequest, MEMORY[0x277D39B98], MEMORY[0x277D39B90]);
  static Message.with(_:)();
  v0[15] = v14;

  if (one-time initialization token for networking != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  v0[16] = __swift_project_value_buffer(v16, static Logger.networking);

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v29 = v20;
    *v19 = 136446210;
    v21 = MEMORY[0x22AA60B60](v4, MEMORY[0x277D837D0]);
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v29);

    *(v19 + 4) = v23;
    _os_log_impl(&dword_224E26000, v17, v18, "Request to fetchConfigs has started for useCases '%{public}s'", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x22AA61F40](v20, -1, -1);
    MEMORY[0x22AA61F40](v19, -1, -1);
  }

  v0[18] = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy10PegasusAPI52Apple_Parsec_Encryptedvisualsearch_V1_ConfigResponseV0B3Kit10ProxyErrorOGMd, &_ss6ResultOy10PegasusAPI52Apple_Parsec_Encryptedvisualsearch_V1_ConfigResponseV0B3Kit10ProxyErrorOGMR);
  v24 = swift_task_alloc();
  v0[19] = v24;
  v28 = (*MEMORY[0x277D39E88] + MEMORY[0x277D39E88]);
  v25 = swift_task_alloc();
  v0[20] = v25;
  *v25 = v0;
  v25[1] = PegasusNetworking.fetchConfigs(useCases:userId:);
  v26 = v0[10];

  return v28(v24, v26);
}

{
  v1 = *(*v0 + 32);

  return MEMORY[0x2822009F8](PegasusNetworking.fetchConfigs(useCases:userId:), v1, 0);
}

{
  v47 = v0;
  v1 = v0[19];
  v2 = type metadata accessor for ProxyError();
  v3 = *(v2 - 8);
  v4 = swift_task_alloc();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = v0[9];
    v5 = v0[10];
    v7 = v0[8];

    v8 = *(v3 + 32);
    v8(v4, v1, v2);
    lazy protocol witness table accessor for type ProxyError and conformance ProxyError();
    swift_willThrowTypedImpl();
    swift_allocError();
    v8(v9, v4, v2);
    (*(v6 + 8))(v5, v7);
  }

  else
  {
    (*(v0[6] + 32))(v0[7], v1, v0[5]);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    v12 = os_log_type_enabled(v10, v11);
    v13 = v0[17];
    if (v12)
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v46[0] = v15;
      *v14 = 136446210;
      v16 = MEMORY[0x22AA60B60](v13, MEMORY[0x277D837D0]);
      v18 = v17;

      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, v46);

      *(v14 + 4) = v19;
      _os_log_impl(&dword_224E26000, v10, v11, "Request to fetchConfigs has finished for useCases '%{public}s'", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x22AA61F40](v15, -1, -1);
      MEMORY[0x22AA61F40](v14, -1, -1);
    }

    else
    {
    }

    v20 = v0[15];
    v21 = v0[7];
    v22 = v0[3];
    v23 = swift_task_alloc();
    *(v23 + 16) = v21;
    v24 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySS4name_Says5UInt8VG16existingConfigIdtG_SS_8CipherML09AspireApiG0VtsAE_pTg5(partial apply for closure #2 in PegasusNetworking.fetchConfigs(useCases:userId:), v23, v22);
    if (!v20)
    {
      v30 = v24;

      if (*(v30 + 16))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS8CipherML15AspireApiConfigVGMd, &_ss18_DictionaryStorageCySS8CipherML15AspireApiConfigVGMR);
        v31 = static _DictionaryStorage.allocate(capacity:)();
      }

      else
      {
        v31 = MEMORY[0x277D84F98];
      }

      v46[0] = v31;

      specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v32, 1, v46);
      v33 = v0[7];
      v34 = v0[3];

      v35 = v46[0];
      v36 = swift_task_alloc();
      *(v36 + 16) = v33;
      v37 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySS4name_Says5UInt8VG16existingConfigIdtG_8CipherML18AspireApiKeyStatusVsAE_pTg5(partial apply for closure #3 in PegasusNetworking.fetchConfigs(useCases:userId:), v36, v34);
      v38 = v0[9];
      v39 = v0[8];
      v45 = v0[7];
      v40 = v0[6];
      v43 = v0[10];
      v44 = v0[5];
      v41 = v37;

      type metadata accessor for AspireApiConfigResponse(0);
      v42 = swift_task_alloc();
      *(v42 + 16) = v35;
      *(v42 + 24) = v41;
      lazy protocol witness table accessor for type Apple_Parsec_Encryptedvisualsearch_V1_ConfigRequest and conformance Apple_Parsec_Encryptedvisualsearch_V1_ConfigRequest(&lazy protocol witness table cache variable for type AspireApiConfigResponse and conformance AspireApiConfigResponse, type metadata accessor for AspireApiConfigResponse, &protocol conformance descriptor for AspireApiConfigResponse);
      static Message.with(_:)();

      (*(v38 + 8))(v43, v39);
      (*(v40 + 8))(v45, v44);

      v28 = v0[1];
      goto LABEL_9;
    }

    v25 = v0[7];
    v26 = v0[5];
    v27 = v0[6];
    (*(v0[9] + 8))(v0[10], v0[8]);

    (*(v27 + 8))(v25, v26);
  }

  v28 = v0[1];
LABEL_9:

  return v28();
}

uint64_t PegasusProxyForEncryptedPQAGeo.ensureUseCaseEnabled()()
{
  v1[2] = v0;
  v2 = type metadata accessor for Apple_Parsec_Encryptedsearch_V1_EncryptedSearchUsecase();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](PegasusProxyForEncryptedPQAGeo.ensureUseCaseEnabled(), 0, 0);
}

{
  (*(v0[4] + 104))(v0[6], *MEMORY[0x277D39CD8], v0[3]);
  v3 = (*MEMORY[0x277D39E98] + MEMORY[0x277D39E98]);
  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = PegasusProxyForEncryptedPQAGeo.ensureUseCaseEnabled();

  return v3();
}

{
  v28 = v0;
  v1 = specialized Set.contains(_:)(v0[6], v0[9]);

  if (v1)
  {
    (*(v0[4] + 8))(v0[6], v0[3]);

    v2 = v0[1];
  }

  else
  {
    if (one-time initialization token for networking != -1)
    {
      swift_once();
    }

    v3 = v0[5];
    v4 = v0[6];
    v5 = v0[3];
    v6 = v0[4];
    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.networking);
    (*(v6 + 16))(v3, v4, v5);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    v10 = os_log_type_enabled(v8, v9);
    v12 = v0[4];
    v11 = v0[5];
    v13 = v0[3];
    if (v10)
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v27 = v15;
      *v14 = 136315138;
      v16 = Apple_Parsec_Encryptedsearch_V1_EncryptedSearchUsecase.description.getter();
      v18 = v17;
      v19 = v13;
      v20 = *(v12 + 8);
      v20(v11, v19);
      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, &v27);

      *(v14 + 4) = v21;
      _os_log_impl(&dword_224E26000, v8, v9, "unsupportedUsecase %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x22AA61F40](v15, -1, -1);
      MEMORY[0x22AA61F40](v14, -1, -1);
    }

    else
    {

      v22 = v13;
      v20 = *(v12 + 8);
      v20(v11, v22);
    }

    type metadata accessor for PegasusNetworkingError(0);
    lazy protocol witness table accessor for type Apple_Parsec_Encryptedvisualsearch_V1_ConfigRequest and conformance Apple_Parsec_Encryptedvisualsearch_V1_ConfigRequest(&lazy protocol witness table cache variable for type PegasusNetworkingError and conformance PegasusNetworkingError, type metadata accessor for PegasusNetworkingError, &protocol conformance descriptor for PegasusNetworkingError);
    swift_allocError();
    v24 = v23;
    *v23 = Apple_Parsec_Encryptedsearch_V1_EncryptedSearchUsecase.description.getter();
    v24[1] = v25;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v20(v0[6], v0[3]);

    v2 = v0[1];
  }

  return v2();
}

{
  (*(v0[4] + 8))(v0[6], v0[3]);

  v1 = v0[1];

  return v1();
}

uint64_t PegasusProxyForEncryptedPQAGeo.ensureUseCaseEnabled()(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v5 = PegasusProxyForEncryptedPQAGeo.ensureUseCaseEnabled();
  }

  else
  {
    *(v4 + 72) = a1;
    v5 = PegasusProxyForEncryptedPQAGeo.ensureUseCaseEnabled();
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t closure #1 in PegasusNetworking.fetchConfigs(useCases:userId:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v11 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    v4 = (a2 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      v8 = *(v11 + 16);
      v7 = *(v11 + 24);

      if (v8 >= v7 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1);
      }

      *(v11 + 16) = v8 + 1;
      v9 = v11 + 16 * v8;
      *(v9 + 32) = v6;
      *(v9 + 40) = v5;
      v4 += 3;
      --v2;
    }

    while (v2);
  }

  return Apple_Parsec_Encryptedvisualsearch_V1_ConfigRequest.usecases.setter();
}

uint64_t closure #2 in PegasusNetworking.fetchConfigs(useCases:userId:)@<X0>(uint64_t *a1@<X0>, void *a2@<X2>, uint64_t *a3@<X8>)
{
  v32 = a3;
  v33 = a2;
  v4 = type metadata accessor for BinaryDecodingOptions();
  MEMORY[0x28223BE20](v4 - 8);
  v34 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Google_Protobuf_Any();
  v30 = *(v6 - 8);
  v31 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Apple_Parsec_Encryptedvisualsearch_V1_ConfigBundle();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for AspireApiConfig(0);
  v14 = MEMORY[0x28223BE20](v13);
  v35 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  v16 = a1[1];
  v18 = MEMORY[0x22AA5F7C0](v14);
  if (*(v18 + 16))
  {
    v19 = v17;
    v20 = specialized __RawDictionaryStorage.find<A>(_:)(v17, v16);
    if (v21)
    {
      (*(v10 + 16))(v12, *(v18 + 56) + *(v10 + 72) * v20, v9);

      Apple_Parsec_Encryptedvisualsearch_V1_ConfigBundle.config.getter();
      (*(v10 + 8))(v12, v9);
      v22 = Google_Protobuf_Any.value.getter();
      v24 = v23;
      (*(v30 + 8))(v8, v31);
      goto LABEL_6;
    }
  }

  else
  {
    v19 = v17;
  }

  v22 = 0;
  v24 = 0xC000000000000000;
LABEL_6:
  v39 = v22;
  v40 = v24;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  BinaryDecodingOptions.init()();
  lazy protocol witness table accessor for type Apple_Parsec_Encryptedvisualsearch_V1_ConfigRequest and conformance Apple_Parsec_Encryptedvisualsearch_V1_ConfigRequest(&lazy protocol witness table cache variable for type AspireApiConfig and conformance AspireApiConfig, type metadata accessor for AspireApiConfig, &protocol conformance descriptor for AspireApiConfig);
  v25 = v35;
  v26 = v41;
  result = Message.init<A>(serializedBytes:extensions:partial:options:)();
  if (v26)
  {
    *v33 = v26;
  }

  else
  {
    v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_8CipherML15AspireApiConfigVtMd, &_sSS_8CipherML15AspireApiConfigVtMR) + 48);
    v29 = v32;
    *v32 = v19;
    v29[1] = v16;
    outlined init with take of AspireApiResponse(v25, v29 + v28, type metadata accessor for AspireApiConfig);
  }

  return result;
}

uint64_t closure #3 in PegasusNetworking.fetchConfigs(useCases:userId:)@<X0>(uint64_t *a1@<X0>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v25 = a2;
  v26 = a3;
  v4 = type metadata accessor for BinaryDecodingOptions();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = type metadata accessor for Google_Protobuf_Any();
  v24 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Apple_Parsec_Encryptedvisualsearch_V1_ConfigBundle();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v14 = a1[1];
  v15 = MEMORY[0x22AA5F7C0](v10);
  if (*(v15 + 16) && (v16 = specialized __RawDictionaryStorage.find<A>(_:)(v13, v14), (v17 & 1) != 0))
  {
    (*(v9 + 16))(v12, *(v15 + 56) + *(v9 + 72) * v16, v8);

    Apple_Parsec_Encryptedvisualsearch_V1_ConfigBundle.keyStatus.getter();
    (*(v9 + 8))(v12, v8);
    v18 = Google_Protobuf_Any.value.getter();
    v20 = v19;
    (*(v24 + 8))(v7, v5);
  }

  else
  {

    v18 = 0;
    v20 = 0xC000000000000000;
  }

  type metadata accessor for AspireApiKeyStatus(0);
  v30 = v18;
  v31 = v20;
  v29 = 0;
  v27 = 0u;
  v28 = 0u;
  BinaryDecodingOptions.init()();
  lazy protocol witness table accessor for type Apple_Parsec_Encryptedvisualsearch_V1_ConfigRequest and conformance Apple_Parsec_Encryptedvisualsearch_V1_ConfigRequest(&lazy protocol witness table cache variable for type AspireApiKeyStatus and conformance AspireApiKeyStatus, type metadata accessor for AspireApiKeyStatus, &protocol conformance descriptor for AspireApiKeyStatus);
  v21 = v32;
  result = Message.init<A>(serializedBytes:extensions:partial:options:)();
  if (v21)
  {
    *v25 = v21;
  }

  return result;
}

uint64_t closure #4 in PegasusNetworking.fetchConfigs(useCases:userId:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{

  *a1 = a2;

  a1[1] = a3;
  return result;
}

uint64_t PegasusNetworking.queries(requests:userId:)(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  type metadata accessor for BinaryDecodingOptions();
  v3[8] = swift_task_alloc();
  v4 = type metadata accessor for Google_Protobuf_Any();
  v3[9] = v4;
  v3[10] = *(v4 - 8);
  v3[11] = swift_task_alloc();
  v5 = type metadata accessor for Apple_Parsec_Encryptedvisualsearch_V1_EVSResult();
  v3[12] = v5;
  v3[13] = *(v5 - 8);
  v3[14] = swift_task_alloc();
  v6 = type metadata accessor for AspireApiResponse(0);
  v3[15] = v6;
  v3[16] = *(v6 - 8);
  v3[17] = swift_task_alloc();
  v7 = type metadata accessor for Apple_Parsec_Encryptedvisualsearch_V1_EncryptedVisualSearchResponse();
  v3[18] = v7;
  v3[19] = *(v7 - 8);
  v3[20] = swift_task_alloc();
  v3[21] = *(type metadata accessor for AspireApiRequest(0) - 8);
  v3[22] = swift_task_alloc();
  v8 = type metadata accessor for Apple_Parsec_Encryptedvisualsearch_V1_EVSQuery();
  v3[23] = v8;
  v3[24] = *(v8 - 8);
  v3[25] = swift_task_alloc();
  v9 = type metadata accessor for Apple_Parsec_Encryptedvisualsearch_V1_EncryptedVisualSearchRequest();
  v3[26] = v9;
  v3[27] = *(v9 - 8);
  v3[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](PegasusNetworking.queries(requests:userId:), v2, 0);
}

uint64_t PegasusNetworking.queries(requests:userId:)()
{
  v1 = *(*(v0 + 48) + 16);
  *(v0 + 232) = v1;
  if (v1)
  {
    *(v0 + 240) = *(*(v0 + 56) + 112);
    v2 = swift_task_alloc();
    *(v0 + 248) = v2;
    *v2 = v0;
    v2[1] = PegasusNetworking.queries(requests:userId:);

    return PegasusProxyForEncryptedPQAGeo.ensureUseCaseEnabled()();
  }

  else
  {
    **(v0 + 40) = MEMORY[0x277D84F90];
    type metadata accessor for AspireApiResponses(0);
    UnknownStorage.init()();

    v4 = *(v0 + 8);

    return v4();
  }
}

{
  v2 = *v1;
  v2[32] = v0;

  if (v0)
  {

    v3 = v2[1];

    return v3();
  }

  else
  {
    v5 = v2[7];

    return MEMORY[0x2822009F8](PegasusNetworking.queries(requests:userId:), v5, 0);
  }
}

{
  v36 = v0[24];
  v1 = v0[21];
  v2 = v0[6];
  v41 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v0[29], 0);
  v3 = v41;
  v4 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v5 = *(v1 + 72);
  v6 = v0[32];
  v7 = v0[22];
  outlined init with copy of PegasusNetworkingError(v2 + v4, v7, type metadata accessor for AspireApiRequest);
  *(swift_task_alloc() + 16) = v7;
  lazy protocol witness table accessor for type Apple_Parsec_Encryptedvisualsearch_V1_ConfigRequest and conformance Apple_Parsec_Encryptedvisualsearch_V1_ConfigRequest(&lazy protocol witness table cache variable for type Apple_Parsec_Encryptedvisualsearch_V1_EVSQuery and conformance Apple_Parsec_Encryptedvisualsearch_V1_EVSQuery, MEMORY[0x277D39960], MEMORY[0x277D39958]);
  static Message.with(_:)();
  if (v6)
  {
    v8 = v0[22];

    outlined destroy of AspireApiRequest(v8, type metadata accessor for AspireApiRequest);

    v9 = v0[1];

    return v9();
  }

  else
  {
    v39 = v5;
    v11 = v0[22];

    outlined destroy of AspireApiRequest(v11, type metadata accessor for AspireApiRequest);
    v13 = *(v41 + 16);
    v12 = *(v41 + 24);
    if (v13 >= v12 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
      v3 = v41;
    }

    v14 = v0[29];
    v15 = v0[25];
    v16 = v0[23];
    *(v3 + 16) = v13 + 1;
    v38 = (*(v36 + 80) + 32) & ~*(v36 + 80);
    v37 = *(v36 + 72);
    v17 = v3 + v38 + v37 * v13;
    v18 = *(v36 + 32);
    v18(v17, v15, v16);
    if (v14 != 1)
    {
      v24 = v2 + v5 + v4;
      v25 = 1;
      do
      {
        v26 = v0[22];
        outlined init with copy of PegasusNetworkingError(v24, v26, type metadata accessor for AspireApiRequest);
        *(swift_task_alloc() + 16) = v26;
        static Message.with(_:)();
        v27 = v0[22];

        outlined destroy of AspireApiRequest(v27, type metadata accessor for AspireApiRequest);
        v29 = *(v3 + 16);
        v28 = *(v3 + 24);
        if (v29 >= v28 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1);
        }

        ++v25;
        v30 = v0[29];
        v31 = v0[25];
        v32 = v0[23];
        *(v3 + 16) = v29 + 1;
        v18(v3 + v38 + v37 * v29, v31, v32);
        v24 += v39;
      }

      while (v25 != v30);
    }

    *(swift_task_alloc() + 16) = v3;
    lazy protocol witness table accessor for type Apple_Parsec_Encryptedvisualsearch_V1_ConfigRequest and conformance Apple_Parsec_Encryptedvisualsearch_V1_ConfigRequest(&lazy protocol witness table cache variable for type Apple_Parsec_Encryptedvisualsearch_V1_EncryptedVisualSearchRequest and conformance Apple_Parsec_Encryptedvisualsearch_V1_EncryptedVisualSearchRequest, MEMORY[0x277D39D80], MEMORY[0x277D39D78]);
    static Message.with(_:)();
    v0[33] = 0;

    if (one-time initialization token for networking != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    v0[34] = __swift_project_value_buffer(v19, static Logger.networking);

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = v0[29];
      v23 = swift_slowAlloc();
      *v23 = 134349056;
      *(v23 + 4) = v22;

      _os_log_impl(&dword_224E26000, v20, v21, "Queries request with %{public}ld requests has started.", v23, 0xCu);
      MEMORY[0x22AA61F40](v23, -1, -1);
    }

    else
    {
    }

    v0[35] = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy10PegasusAPI67Apple_Parsec_Encryptedvisualsearch_V1_EncryptedVisualSearchResponseV0B3Kit10ProxyErrorOGMd, &_ss6ResultOy10PegasusAPI67Apple_Parsec_Encryptedvisualsearch_V1_EncryptedVisualSearchResponseV0B3Kit10ProxyErrorOGMR);
    v33 = swift_task_alloc();
    v0[36] = v33;
    v40 = (*MEMORY[0x277D39E90] + MEMORY[0x277D39E90]);
    v34 = swift_task_alloc();
    v0[37] = v34;
    *v34 = v0;
    v34[1] = PegasusNetworking.queries(requests:userId:);
    v35 = v0[28];

    return v40(v33, v35);
  }
}

{
  v1 = *(*v0 + 56);

  return MEMORY[0x2822009F8](PegasusNetworking.queries(requests:userId:), v1, 0);
}

{
  v1 = *(v0 + 288);
  v2 = type metadata accessor for ProxyError();
  v3 = *(v2 - 8);
  v4 = swift_task_alloc();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v76 = v3;
    v5 = *(v3 + 32);
    v5(v4, v1, v2);
    lazy protocol witness table accessor for type ProxyError and conformance ProxyError();
    swift_willThrowTypedImpl();
    v6 = swift_allocError();
    v5(v7, v4, v2);

LABEL_24:
    *(v0 + 32) = v6;
    v36 = swift_task_alloc();
    v37 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v38 = v2;
    if (swift_dynamicCast())
    {

      v39 = swift_task_alloc();
      (*(v76 + 32))(v39, v36, v2);
      v40 = swift_task_alloc();
      v41 = *(v76 + 16);
      v86 = v39;
      v41(v40, v39, v2);

      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = *(v0 + 232);
        v45 = swift_slowAlloc();
        v82 = swift_slowAlloc();
        *v45 = 134349314;
        *(v45 + 4) = v44;

        *(v45 + 12) = 2112;
        lazy protocol witness table accessor for type ProxyError and conformance ProxyError();
        swift_allocError();
        v41(v46, v40, v38);
        v47 = _swift_stdlib_bridgeErrorToNSError();
        v48 = *(v76 + 8);
        v48(v40, v38);
        v49 = v48;

        *(v45 + 14) = v47;
        *v82 = v47;
        _os_log_impl(&dword_224E26000, v42, v43, "Queries request with %{public}ld queries has finished with ProxyError '%@'.", v45, 0x16u);
        outlined destroy of NSObject?(v82);
        MEMORY[0x22AA61F40](v82, -1, -1);
        MEMORY[0x22AA61F40](v45, -1, -1);
      }

      else
      {

        v58 = *(v76 + 8);
        v58(v40, v2);
        v49 = v58;
      }

      v60 = *(v0 + 216);
      v59 = *(v0 + 224);
      v61 = *(v0 + 208);
      type metadata accessor for NetworkManagerError(0);
      lazy protocol witness table accessor for type Apple_Parsec_Encryptedvisualsearch_V1_ConfigRequest and conformance Apple_Parsec_Encryptedvisualsearch_V1_ConfigRequest(&lazy protocol witness table cache variable for type NetworkManagerError and conformance NetworkManagerError, type metadata accessor for NetworkManagerError, &protocol conformance descriptor for NetworkManagerError);
      swift_allocError();
      *v62 = 1;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v49(v86, v38);
      (*(v60 + 8))(v59, v61);
    }

    else
    {

      v50 = v6;
      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v51, v52))
      {
        v53 = *(v0 + 232);
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        *v54 = 134349314;
        *(v54 + 4) = v53;

        *(v54 + 12) = 2112;
        v56 = v6;
        v57 = _swift_stdlib_bridgeErrorToNSError();
        *(v54 + 14) = v57;
        *v55 = v57;
        _os_log_impl(&dword_224E26000, v51, v52, "Queries request with %{public}ld queries has finished with error '%@'.", v54, 0x16u);
        outlined destroy of NSObject?(v55);
        MEMORY[0x22AA61F40](v55, -1, -1);
        MEMORY[0x22AA61F40](v54, -1, -1);
      }

      else
      {
      }

      v64 = *(v0 + 216);
      v63 = *(v0 + 224);
      v65 = *(v0 + 208);
      swift_willThrow();
      (*(v64 + 8))(v63, v65);
    }

    v66 = *(v0 + 8);
    goto LABEL_38;
  }

  (*(*(v0 + 152) + 32))(*(v0 + 160), v1, *(v0 + 144));

  v9 = MEMORY[0x22AA5F810](v8);
  v10 = *(v9 + 16);
  if (!v10)
  {

    v16 = 0;
    v17 = MEMORY[0x277D84F90];
LABEL_34:

    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = *(v0 + 232);
      v70 = swift_slowAlloc();
      *v70 = 134349312;
      *(v70 + 4) = v69;

      *(v70 + 12) = 2048;
      *(v70 + 14) = v16;
      _os_log_impl(&dword_224E26000, v67, v68, "Queries request with %{public}ld requests has finished, length %ld bytes.", v70, 0x16u);
      MEMORY[0x22AA61F40](v70, -1, -1);
    }

    else
    {
    }

    v71 = *(v0 + 216);
    v84 = *(v0 + 208);
    v87 = *(v0 + 224);
    v72 = *(v0 + 152);
    v73 = *(v0 + 160);
    v74 = *(v0 + 144);
    type metadata accessor for AspireApiResponses(0);
    *(swift_task_alloc() + 16) = v17;
    lazy protocol witness table accessor for type Apple_Parsec_Encryptedvisualsearch_V1_ConfigRequest and conformance Apple_Parsec_Encryptedvisualsearch_V1_ConfigRequest(&lazy protocol witness table cache variable for type AspireApiResponses and conformance AspireApiResponses, type metadata accessor for AspireApiResponses, &protocol conformance descriptor for AspireApiResponses);
    static Message.with(_:)();

    (*(v72 + 8))(v73, v74);
    (*(v71 + 8))(v87, v84);

    v66 = *(v0 + 8);
LABEL_38:

    return v66();
  }

  v75 = v2;
  v76 = v3;
  v77 = *(v0 + 128);
  v11 = *(v0 + 104);
  v12 = *(v0 + 80);
  v88 = MEMORY[0x277D84F90];
  v13 = v9;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10, 0);
  result = v13;
  v15 = 0;
  v16 = 0;
  v17 = v88;
  v83 = v13 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  v85 = v11;
  v81 = (v12 + 8);
  v79 = (v11 + 8);
  v80 = v13;
  v6 = *(v0 + 264);
  v78 = v10;
  while (v15 < *(result + 16))
  {
    v18 = *(v0 + 88);
    v19 = *(v0 + 72);
    (*(v85 + 16))(*(v0 + 112), v83 + *(v85 + 72) * v15, *(v0 + 96));
    Apple_Parsec_Encryptedvisualsearch_V1_EVSResult.computeResponse.getter();
    v20 = Google_Protobuf_Any.value.getter();
    v22 = v21;
    result = (*v81)(v18, v19);
    v23 = v22 >> 62;
    if ((v22 >> 62) > 1)
    {
      if (v23 == 2)
      {
        v26 = *(v20 + 16);
        v25 = *(v20 + 24);
        v27 = __OFSUB__(v25, v26);
        v24 = v25 - v26;
        if (v27)
        {
          goto LABEL_43;
        }
      }

      else
      {
        v24 = 0;
      }
    }

    else if (v23)
    {
      LODWORD(v24) = HIDWORD(v20) - v20;
      if (__OFSUB__(HIDWORD(v20), v20))
      {
        goto LABEL_44;
      }

      v24 = v24;
    }

    else
    {
      v24 = BYTE6(v22);
    }

    v27 = __OFADD__(v16, v24);
    v16 += v24;
    if (v27)
    {
      goto LABEL_42;
    }

    *(v0 + 16) = v20;
    *(v0 + 24) = v22;
    outlined copy of Data._Representation(v20, v22);
    BinaryDecodingOptions.init()();
    lazy protocol witness table accessor for type Apple_Parsec_Encryptedvisualsearch_V1_ConfigRequest and conformance Apple_Parsec_Encryptedvisualsearch_V1_ConfigRequest(&lazy protocol witness table cache variable for type AspireApiResponse and conformance AspireApiResponse, type metadata accessor for AspireApiResponse, &protocol conformance descriptor for AspireApiResponse);
    Message.init<A>(serializedBytes:extensions:partial:options:)();
    if (v6)
    {
      v32 = *(v0 + 152);
      v31 = *(v0 + 160);
      v33 = *(v0 + 144);
      v34 = *(v0 + 112);
      v35 = *(v0 + 96);

      outlined consume of Data._Representation(v20, v22);
      (*v79)(v34, v35);
      (*(v32 + 8))(v31, v33);

      v2 = v75;
      goto LABEL_24;
    }

    (*v79)(*(v0 + 112), *(v0 + 96));
    outlined consume of Data._Representation(v20, v22);
    v29 = *(v88 + 16);
    v28 = *(v88 + 24);
    if (v29 >= v28 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1);
    }

    ++v15;
    v30 = *(v0 + 136);
    *(v88 + 16) = v29 + 1;
    outlined init with take of AspireApiResponse(v30, v88 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v77 + 72) * v29, type metadata accessor for AspireApiResponse);
    v6 = 0;
    result = v80;
    if (v78 == v15)
    {

      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

uint64_t closure #1 in closure #1 in PegasusNetworking.queries(requests:userId:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Google_Protobuf_Any();
  MEMORY[0x28223BE20](v4 - 8);
  v7[3] = type metadata accessor for AspireApiRequest(0);
  v7[4] = lazy protocol witness table accessor for type Apple_Parsec_Encryptedvisualsearch_V1_ConfigRequest and conformance Apple_Parsec_Encryptedvisualsearch_V1_ConfigRequest(&lazy protocol witness table cache variable for type AspireApiRequest and conformance AspireApiRequest, type metadata accessor for AspireApiRequest, &protocol conformance descriptor for AspireApiRequest);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v7);
  outlined init with copy of PegasusNetworkingError(a2, boxed_opaque_existential_1, type metadata accessor for AspireApiRequest);
  defaultAnyTypeURLPrefix.getter();
  result = Google_Protobuf_Any.init(message:partial:typePrefix:)();
  if (!v2)
  {
    return Apple_Parsec_Encryptedvisualsearch_V1_EVSQuery.computeRequest.setter();
  }

  return result;
}

uint64_t PegasusNetworking.uploadKeys(evaluationKeys:userId:)()
{
  return MEMORY[0x2822009F8](PegasusNetworking.uploadKeys(evaluationKeys:userId:), v0, 0);
}

{
  type metadata accessor for PegasusNetworkingError(0);
  lazy protocol witness table accessor for type Apple_Parsec_Encryptedvisualsearch_V1_ConfigRequest and conformance Apple_Parsec_Encryptedvisualsearch_V1_ConfigRequest(&lazy protocol witness table cache variable for type PegasusNetworkingError and conformance PegasusNetworkingError, type metadata accessor for PegasusNetworkingError, &protocol conformance descriptor for PegasusNetworkingError);
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t PegasusNetworking.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t PegasusNetworking.__deallocating_deinit()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t protocol witness for NetworkManager.networkDelegationConfig.getter in conformance PegasusNetworking()
{
  v1 = *(*v0 + 120);

  return v1;
}

uint64_t protocol witness for NetworkManager.fetchConfigs(useCases:userId:) in conformance PegasusNetworking(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for NetworkManager.fetchConfigs(useCases:userId:) in conformance PegasusNetworking;

  return PegasusNetworking.fetchConfigs(useCases:userId:)(a1, a2);
}

uint64_t protocol witness for NetworkManager.fetchConfigs(useCases:userId:) in conformance PegasusNetworking()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t protocol witness for NetworkManager.queries(requests:userId:) in conformance PegasusNetworking(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for NetworkManager.queries(requests:userId:) in conformance PegasusNetworking;

  return PegasusNetworking.queries(requests:userId:)(a1, a2);
}

uint64_t Apple_Parsec_Encryptedsearch_V1_EncryptedSearchUsecase.description.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Apple_Parsec_Encryptedsearch_V1_EncryptedSearchUsecase();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = (v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v3 + 16))(v6, v1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x277D39CD0])
  {
    (*(v3 + 96))(v6, v2);
    v8 = *v6;
    v12[0] = 0;
    v12[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(16);

    strcpy(v12, "Unrecognized(");
    HIWORD(v12[1]) = -4864;
    v11[1] = v8;
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x22AA60A80](v9);

    MEMORY[0x22AA60A80](41, 0xE100000000000000);
    return v12[0];
  }

  else if (v7 == *MEMORY[0x277D39CC8])
  {
    return 0x6669636570736E55;
  }

  else if (v7 == *MEMORY[0x277D39CE0])
  {
    return 0xD000000000000014;
  }

  else if (v7 == *MEMORY[0x277D39CE8])
  {
    return 0xD000000000000016;
  }

  else if (v7 == *MEMORY[0x277D39CD8])
  {
    return 0x6574707972636E65;
  }

  else
  {
    (*(v3 + 8))(v6, v2);
    return 0x6E776F6E6B6E55;
  }
}

uint64_t specialized Set.contains(_:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Apple_Parsec_Encryptedsearch_V1_EncryptedSearchUsecase();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (lazy protocol witness table accessor for type Apple_Parsec_Encryptedvisualsearch_V1_ConfigRequest and conformance Apple_Parsec_Encryptedvisualsearch_V1_ConfigRequest(&lazy protocol witness table cache variable for type Apple_Parsec_Encryptedsearch_V1_EncryptedSearchUsecase and conformance Apple_Parsec_Encryptedsearch_V1_EncryptedSearchUsecase, MEMORY[0x277D39CF0], MEMORY[0x277D39CF8]), v7 = dispatch thunk of Hashable._rawHashValue(seed:)(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      lazy protocol witness table accessor for type Apple_Parsec_Encryptedvisualsearch_V1_ConfigRequest and conformance Apple_Parsec_Encryptedvisualsearch_V1_ConfigRequest(&lazy protocol witness table cache variable for type Apple_Parsec_Encryptedsearch_V1_EncryptedSearchUsecase and conformance Apple_Parsec_Encryptedsearch_V1_EncryptedSearchUsecase, MEMORY[0x277D39CF0], MEMORY[0x277D39D00]);
      v15 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

unint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    outlined init with copy of Any(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t specialized _StringGuts._deconstructUTF8<A>(scratch:)(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = _StringGuts._allocateForDeconstruct()(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *_StringGuts._allocateForDeconstruct()(uint64_t a1, unint64_t a2)
{
  v3 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of _StringGuts._allocateForDeconstruct());
  return v3;
}

void *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySnySiGGMd, &_ss23_ContiguousArrayStorageCySnySiGGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4DataVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4DataVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy8CipherML19SymmetricPirKeywordVGMd, &_ss23_ContiguousArrayStorageCy8CipherML19SymmetricPirKeywordVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiSgGMd, &_ss23_ContiguousArrayStorageCySiSgGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}