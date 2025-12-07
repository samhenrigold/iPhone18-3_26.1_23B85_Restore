uint64_t ModelComponent.customMirror.getter()
{
  v1 = type metadata accessor for Mirror.AncestorRepresentation();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v17 - v6;
  v8 = *(v0 + 8);
  v10 = *(v0 + 16);
  v11 = *(v0 + 24);
  v17[0] = *v0;
  v9 = v17[0];
  v17[1] = v8;
  v18 = v10;
  v19 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1C1897FD0;
  *(v12 + 32) = 1752393069;
  *(v12 + 40) = 0xE400000000000000;
  v13 = type metadata accessor for MeshResource();
  *(v12 + 48) = v9;
  *(v12 + 72) = v13;
  *(v12 + 80) = 0x6C6169726574616DLL;
  *(v12 + 88) = 0xE900000000000073;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10RealityKit8Material_pGMd, &_sSay10RealityKit8Material_pGMR);
  *(v12 + 96) = v8;
  *(v12 + 120) = v14;
  strcpy((v12 + 128), "boundsMargin");
  *(v12 + 141) = 0;
  *(v12 + 142) = -5120;
  *(v12 + 168) = MEMORY[0x1E69E6448];
  *(v12 + 144) = v10;
  v15 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v15 - 8) + 56))(v7, 1, 1, v15);
  (*(v2 + 104))(v4, *MEMORY[0x1E69E75D8], v1);
  swift_retain_n();
  swift_bridgeObjectRetain_n();

  return Mirror.init<A>(_:children:displayStyle:ancestorRepresentation:)();
}

id specialized static ModelComponent.copyDirectBufferData(component:stage:materialIndex:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = REDirectMaterialParametersArrayComponentGetBuffer();
  if (result)
  {
    v4 = result;
    v10 = xmmword_1C18B8F30;
    v5 = swift_allocObject();
    *(v5 + 16) = &v10;
    v6 = swift_allocObject();
    *(v6 + 16) = partial apply for closure #1 in static ModelComponent.copyDirectBufferData(component:stage:materialIndex:);
    *(v6 + 24) = v5;
    v9[4] = _sSVSuIgyy_SVSuIegyy_TRTA_0;
    v9[5] = v6;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 1107296256;
    v9[2] = thunk for @escaping @callee_guaranteed (@unowned UnsafeRawPointer, @unowned UInt) -> ();
    v9[3] = &block_descriptor_41_0;
    v7 = _Block_copy(v9);

    DRBufferRead();

    _Block_release(v7);
    LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

    if (v4)
    {
      __break(1u);
    }

    else
    {
      v8 = v10;
      if (*(&v10 + 1) >> 60 == 15)
      {
        outlined consume of Data?(v10, *(&v10 + 1));

        return 0;
      }

      else
      {
        outlined copy of Data._Representation(v10, *(&v10 + 1));
        outlined consume of Data?(v8, *(&v8 + 1));

        return v8;
      }
    }
  }

  return result;
}

void outlined consume of DirectUniformsState?(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, unint64_t a5, void *a6)
{
  if ((~(a2 & a5) & 0x3000000000000000) != 0)
  {
    outlined consume of DirectUniformsState(a1, a2, a3, a4, a5, a6);
  }
}

double block_copy_helper_26(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t objectdestroy_6Tm()
{
  outlined consume of Data._Representation(*(v0 + 16), *(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

__n128 _s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLV_6bufferAFy_xGqd___AA0cD0VyxGtc7ElementQyd__RszAA0cD8SemanticRd__lufCAA0C14JointInfluenceV_AA0C7BuffersO0P0Vy_APGTt2B5Tm@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int16 a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = one-time initialization token for triangleIndices;

  if (v10 != -1)
  {
    swift_once();
  }

  if (static MeshBuffers.Identifier.triangleIndices == a1 && *(&static MeshBuffers.Identifier.triangleIndices + 1) == a2)
  {

    v13 = 2;
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v12)
    {
      v13 = 2;
    }

    else
    {
      v13 = *(a4 + 80);
    }
  }

  *&v17[53] = *(a4 + 48);
  *&v17[37] = *(a4 + 32);
  *&v17[69] = *(a4 + 64);
  *&v17[5] = *a4;
  *&v17[21] = *(a4 + 16);
  *(a5 + 67) = *&v17[32];
  *(a5 + 83) = *&v17[48];
  *(a5 + 99) = *&v17[64];
  result = *v17;
  *(a5 + 35) = *v17;
  v15 = *(a4 + 72);
  v16 = *(a4 + 64);
  v17[85] = *(a4 + 80);
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3 & 1;
  *(a5 + 17) = HIBYTE(a3) & 1;
  *(a5 + 24) = v15;
  *(a5 + 32) = v13;
  *(a5 + 33) = v16;
  *(a5 + 113) = *&v17[78];
  *(a5 + 51) = *&v17[16];
  return result;
}

double MeshResource.Part.triangleIndices.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  if (one-time initialization token for triangleIndices == -1)
  {
    if (!*(v3 + 16))
    {
      goto LABEL_9;
    }
  }

  else
  {
    swift_once();
    if (!*(v3 + 16))
    {
      goto LABEL_9;
    }
  }

  if (HIBYTE(word_1EBEAD130))
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  v5 = specialized __RawDictionaryStorage.find<A>(_:)(static MeshBuffers.triangleIndices, *algn_1EBEAD128, v4 | word_1EBEAD130);
  if (v6)
  {
    outlined init with copy of __REAssetService(*(v3 + 56) + 40 * v5, v10);
    outlined init with take of BindableDataInternal(v10, v11);
    v7 = v12;
    v8 = v13;
    __swift_project_boxed_opaque_existential_1(v11, v12);
    (*(v8 + 56))(MEMORY[0x1E69E7668], v7, v8);
    __swift_destroy_boxed_opaque_existential_1(v11);
    return result;
  }

LABEL_9:
  *(a1 + 80) = 0;
  result = 0.0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t MeshResource.Part.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  specialized MeshResource.Part.subscript.setter(a1, a2, a3, a4);
  v6 = *(*(a3 - 8) + 8);

  return v6(a2, a3);
}

void MeshResource.Part.skeletonID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
}

void MeshResource.Skeleton.init(id:jointNames:inverseBindPose:localRestPose:parentIndices:)(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v11 = a2;
  v12 = a1;
  v71[1] = *MEMORY[0x1E69E9840];
  v69 = a1;
  *&v70 = a2;
  *(&v70 + 1) = MEMORY[0x1E69E7CC0];
  v14 = *(a3 + 16);
  v15 = *(a4 + 16);

  if (v14 == v15)
  {
    v60 = a6;
    v57 = a7;
    v58 = a5;
    v16 = MEMORY[0x1E69E7CC0];
    v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14, 0, MEMORY[0x1E69E7CC0]);
    *(&v70 + 1) = v17;
    v18 = *(a3 + 16);
    v61 = a3;
    v59 = v14;
    if (v18)
    {
      if (v18 > *(a4 + 16))
      {
        goto LABEL_55;
      }

      v19 = v17;
      v20 = v18 - 1;
      v12 = a3 + 40;
      for (i = (a4 + 48); ; i += 4)
      {
        v23 = *(v12 - 8);
        v22 = *v12;
        v65 = *i;
        v67 = *(i - 1);
        v62 = i[2];
        v63 = i[1];
        v24 = one-time initialization token for identity;

        if (v24 != -1)
        {
          swift_once();
        }

        v25 = static simd_quatf.identity;
        v11 = *(v19 + 2);
        v26 = *(v19 + 3);
        if (v11 >= v26 >> 1)
        {
          v56 = static simd_quatf.identity;
          v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v11 + 1, 1, v19);
          v25 = v56;
          v19 = v29;
        }

        *(v19 + 2) = v11 + 1;
        v27 = &v19[144 * v11];
        *(v27 + 4) = v23;
        *(v27 + 5) = v22;
        *(v27 + 6) = 0;
        v27[56] = 1;
        v28 = *(v71 + 3);
        *(v27 + 57) = v71[0];
        *(v27 + 15) = v28;
        *(v27 + 4) = v67;
        *(v27 + 5) = v65;
        *(v27 + 6) = v63;
        *(v27 + 7) = v62;
        *(v27 + 8) = xmmword_1C1887620;
        *(v27 + 9) = v25;
        *(v27 + 20) = 0;
        *(v27 + 21) = 0;
        if (!v20)
        {
          break;
        }

        v12 += 16;
        --v20;
      }

      *(&v70 + 1) = v19;
      v16 = MEMORY[0x1E69E7CC0];
    }

    if (v60)
    {
      v36 = v60;
    }

    else
    {
      v36 = v16;
    }

    v37 = *(v36 + 16);
    if (v37)
    {
      v71[0] = v16;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v37, 0);
      v38 = 0;
      v39 = v16;
      while (v38 < *(v36 + 16))
      {
        v12 = *(v36 + 8 * v38 + 32);
        if ((v12 & 0x8000000000000000) != 0)
        {
          v12 = 0xFFFFFFFFLL;
        }

        else if (HIDWORD(v12))
        {
          goto LABEL_50;
        }

        v71[0] = v39;
        v11 = *(v39 + 16);
        v40 = *(v39 + 24);
        if (v11 >= v40 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v40 > 1), v11 + 1, 1);
          v39 = v71[0];
        }

        ++v38;
        *(v39 + 16) = v11 + 1;
        *(v39 + 4 * v11 + 32) = v12;
        if (v37 == v38)
        {

          v16 = MEMORY[0x1E69E7CC0];
          goto LABEL_32;
        }
      }

      __break(1u);
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    v39 = MEMORY[0x1E69E7CC0];
LABEL_32:
    if (v58)
    {
      v42 = v58;
    }

    else
    {
      v42 = v16;
    }

    v43 = *(v42 + 16);
    if (v43)
    {
      v71[0] = v16;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v43, 0);
      v44 = *(v16 + 16);
      v45 = 48 * v44;
      v46 = (v42 + 64);
      do
      {
        v47 = *(v46 - 2);
        v48 = *(v46 - 1);
        v49 = *v46;
        v71[0] = v16;
        v50 = *(v16 + 24);
        v51 = v44 + 1;
        if (v44 >= v50 >> 1)
        {
          v66 = v48;
          v68 = v47;
          v64 = v49;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v50 > 1), v44 + 1, 1);
          v49 = v64;
          v48 = v66;
          v47 = v68;
          v16 = v71[0];
        }

        *(v16 + 16) = v51;
        v52 = (v16 + v45);
        v52[2] = v47;
        v52[3] = v48;
        v52[4] = v49;
        v45 += 48;
        v46 += 3;
        v44 = v51;
        --v43;
      }

      while (v43);
    }

    v53 = RESkeletonDefinitionCreate();
    String.utf8CString.getter();

    RESkeletonDefinitionSetName();

    if (HIDWORD(v59))
    {
      __break(1u);
    }

    else
    {
      RESkeletonDefinitionSetJointCount();
      if (v59)
      {
        v54 = 0;
        v55 = v61 + 40;
        do
        {
          String.utf8CString.getter();
          RESkeletonDefinitionSetJointName();

          v55 += 16;
          ++v54;
        }

        while (v59 != v54);
      }

      if (!HIDWORD(*(v39 + 16)))
      {
        RESkeletonDefinitionSetParentIndices();
        RESkeletonDefinitionSetInverseBindPoses();
        if (!HIDWORD(*(v16 + 16)))
        {
          RESkeletonDefinitionSetLocalRestPoses();
          v71[0] = 0;
          if (RESkeletonDefinitionValidate())
          {
            closure #1 in MeshResource.Skeleton.init(id:jointNames:inverseBindPose:localRestPose:parentIndices:)(v53, v61, &v69);

            RERelease();

            *v57 = v69;
            *(v57 + 8) = v70;
          }

          else
          {
            __break(1u);
          }

          return;
        }

        goto LABEL_54;
      }
    }

    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
  }

  if (one-time initialization token for logger != -1)
  {
LABEL_51:
    swift_once();
  }

  v30 = type metadata accessor for Logger();
  __swift_project_value_buffer(v30, logger);

  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v71[0] = v34;
    *v33 = 136315138;
    v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v11, v71);

    *(v33 + 4) = v35;
    _os_log_impl(&dword_1C1358000, v31, v32, "Expected all joint arrays for skeleton '%s' to have the same count", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v34);
    MEMORY[0x1C6902A30](v34, -1, -1);
    MEMORY[0x1C6902A30](v33, -1, -1);
  }

  else
  {
  }

  lazy protocol witness table accessor for type MeshResourceError and conformance MeshResourceError();
  swift_allocError();
  *v41 = xmmword_1C18A4F00;
  swift_willThrow();
}

__n128 MeshResource.Part.jointInfluences.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 10);
  v5 = *(v1 + 44);
  if (one-time initialization token for jointInfluences == -1)
  {
    if (!*(v3 + 16))
    {
      goto LABEL_9;
    }
  }

  else
  {
    swift_once();
    if (!*(v3 + 16))
    {
      goto LABEL_9;
    }
  }

  if (HIBYTE(word_1EBEAD148))
  {
    v6 = 256;
  }

  else
  {
    v6 = 0;
  }

  v7 = specialized __RawDictionaryStorage.find<A>(_:)(static MeshBuffers.jointInfluences, unk_1EBEAD140, v6 | word_1EBEAD148);
  if (v8)
  {
    outlined init with copy of __REAssetService(*(v3 + 56) + 40 * v7, v36);
    outlined init with take of BindableDataInternal(v36, v31);
    v9 = *&v31[24];
    v10 = *&v31[32];
    __swift_project_boxed_opaque_existential_1(v31, *&v31[24]);
    (*(v10 + 56))(v38, &type metadata for MeshJointInfluence, v9, v10);
    __swift_destroy_boxed_opaque_existential_1(v31);
    goto LABEL_10;
  }

LABEL_9:
  memset(v38, 0, 81);
LABEL_10:
  v36[2] = v38[2];
  v36[3] = v38[3];
  v36[4] = v38[4];
  v37 = v38[5];
  v36[0] = v38[0];
  v36[1] = v38[1];
  v11 = *&v38[0];
  if (*&v38[0])
  {
    if (one-time initialization token for jointInfluenceEndIndices != -1)
    {
      swift_once();
    }

    if (*(v3 + 16))
    {
      v12 = HIBYTE(word_1EBEAD160) ? 256 : 0;
      v13 = specialized __RawDictionaryStorage.find<A>(_:)(static MeshBuffers.jointInfluenceEndIndices, *algn_1EBEAD158, v12 | word_1EBEAD160);
      if (v14)
      {
        outlined init with copy of __REAssetService(*(v3 + 56) + 40 * v13, v22);
        outlined init with take of BindableDataInternal(v22, v31);
        v15 = *&v31[24];
        v16 = *&v31[32];
        __swift_project_boxed_opaque_existential_1(v31, *&v31[24]);
        (*(v16 + 56))(&v23, MEMORY[0x1E69E72F0], v15, v16);
        __swift_destroy_boxed_opaque_existential_1(v31);
        if (v23)
        {
          *&v31[24] = *(&v38[1] + 8);
          *&v31[40] = *(&v38[2] + 8);
          *&v31[56] = *(&v38[3] + 8);
          *&v31[65] = *(&v38[4] + 1);
          *&v31[8] = *(v38 + 8);
          *v31 = v11;
          *&v31[88] = v23;
          v32 = v24;
          v33 = v25;
          v34 = v26;
          *v35 = v27;
          *&v35[8] = v28 & 0x10F;
          *&v35[16] = v29;
          v35[24] = v30 & 3 | 0x80;
LABEL_24:
          destructiveProjectEnumData for __RKEntityInteractionsComponent.Registration.RegistrationError();
          goto LABEL_25;
        }
      }
    }

    if ((v5 & 1) == 0)
    {
      *&v31[24] = *(&v38[1] + 8);
      *&v31[40] = *(&v38[2] + 8);
      *&v31[56] = *(&v38[3] + 8);
      *&v31[65] = *(&v38[4] + 1);
      *&v31[8] = *(v38 + 8);
      *v31 = v11;
      *&v31[88] = v4;
      *&v35[8] = 0;
      v35[24] = 0;
      goto LABEL_24;
    }

    outlined destroy of BodyTrackingComponent?(v36, &_s17RealityFoundation10MeshBufferVyAA0C14JointInfluenceVGSgMd, &_s17RealityFoundation10MeshBufferVyAA0C14JointInfluenceVGSgMR);
  }

  _s10RealityKit12MeshResourceC0A10FoundationE15JointInfluencesVSgWOi0_(v31);
LABEL_25:
  v17 = *v35;
  *(a1 + 128) = v34;
  *(a1 + 144) = v17;
  *(a1 + 153) = *&v35[9];
  v18 = *&v31[80];
  *(a1 + 64) = *&v31[64];
  *(a1 + 80) = v18;
  v19 = v33;
  *(a1 + 96) = v32;
  *(a1 + 112) = v19;
  v20 = *&v31[16];
  *a1 = *v31;
  *(a1 + 16) = v20;
  result = *&v31[48];
  *(a1 + 32) = *&v31[32];
  *(a1 + 48) = result;
  return result;
}

uint64_t MeshResource.Part.skeletonID.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

double specialized MeshResource.Part.subscript.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  return specialized MeshResource.Part.subscript.getter(a1, a2, a3, &type metadata for MeshJointInfluence, a4);
}

{
  return specialized MeshResource.Part.subscript.getter(a1, a2, a3, MEMORY[0x1E69E72F0], a4);
}

double specialized MeshResource.Part.subscript.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int16 a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *v5;
  if (*(v7 + 16) && (v9 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2, a3 & 0x101), (v10 & 1) != 0))
  {
    outlined init with copy of __REAssetService(*(v7 + 56) + 40 * v9, v14);
    outlined init with take of BindableDataInternal(v14, v15);
    v11 = v16;
    v12 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    (*(v12 + 56))(a4, v11, v12);
    __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    *(a5 + 80) = 0;
    result = 0.0;
    *(a5 + 48) = 0u;
    *(a5 + 64) = 0u;
    *(a5 + 16) = 0u;
    *(a5 + 32) = 0u;
    *a5 = 0u;
  }

  return result;
}

unint64_t MeshResource.Part.init(id:materialIndex:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC17RealityFoundation11MeshBuffersO10IdentifierV_AC0E12BufferErased_pTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(a4 + 24) = 0;
  *(a4 + 32) = 0;
  *(a4 + 40) = 0;
  *(a4 + 44) = 1;
  *(a4 + 56) = 0;
  *a4 = result;
  *(a4 + 8) = a1;
  *(a4 + 16) = a2;
  *(a4 + 48) = a3;
  return result;
}

char *MeshModelCollection.init()@<X0>(char **a1@<X8>)
{
  result = _s17RealityFoundation29OrderedIdentifiableCollectionV17dictionaryLiteralACyxq_Gx_q_td_tcfCSS_0A3Kit12MeshResourceCAAE5ModelVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *a1 = result;
  a1[1] = v3;
  return result;
}

void MeshModelCollection.init(_:)(uint64_t a1@<X0>, char **a2@<X8>)
{
  v3 = _s17RealityFoundation29OrderedIdentifiableCollectionV17dictionaryLiteralACyxq_Gx_q_td_tcfCSS_0A3Kit12MeshResourceCAAE5ModelVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v5 = v4;
  v40 = *(a1 + 16);
  if (v40)
  {
    v6 = 0;
    v7 = (a1 + 72);
    v39 = a1;
    while (v6 < *(a1 + 16))
    {
      v44 = v3;
      v12 = *(v7 - 5);
      v11 = *(v7 - 4);
      v14 = *(v7 - 3);
      v13 = *(v7 - 2);
      v15 = *(v7 - 1);
      v16 = *v7;
      v17 = *(v5 + 16);
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      if (v17 && (v18 = specialized __RawDictionaryStorage.find<A>(_:)(v12, v11), (v19 & 1) != 0))
      {
        v20 = *(*(v5 + 56) + 8 * v18);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v44 = specialized _ArrayBuffer._consumeAndCreateNew()(v44);
        }

        if ((v20 & 0x8000000000000000) != 0)
        {
          goto LABEL_32;
        }

        if (v20 >= *(v44 + 2))
        {
          goto LABEL_33;
        }

        v21 = &v44[48 * v20];
        *(v21 + 4) = v12;
        *(v21 + 5) = v11;
        *(v21 + 6) = v14;
        *(v21 + 7) = v13;
        *(v21 + 8) = v15;
        *(v21 + 9) = v16;

        v3 = v44;
      }

      else
      {
        v41 = v16;
        v42 = v13;
        v22 = *(v44 + 2);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v45 = v5;
        v43 = v11;
        v25 = specialized __RawDictionaryStorage.find<A>(_:)(v12, v11);
        v26 = *(v5 + 16);
        v27 = (v24 & 1) == 0;
        v28 = v26 + v27;
        if (__OFADD__(v26, v27))
        {
          goto LABEL_30;
        }

        v29 = v24;
        if (*(v5 + 24) >= v28)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            specialized _NativeDictionary.copy()();
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v28, isUniquelyReferenced_nonNull_native);
          v30 = specialized __RawDictionaryStorage.find<A>(_:)(v12, v43);
          if ((v29 & 1) != (v31 & 1))
          {
            goto LABEL_34;
          }

          v25 = v30;
        }

        v3 = v44;
        if (v29)
        {
          *(*(v5 + 56) + 8 * v25) = v22;
        }

        else
        {
          *(v5 + 8 * (v25 >> 6) + 64) |= 1 << v25;
          v32 = (*(v5 + 48) + 16 * v25);
          *v32 = v12;
          v32[1] = v43;
          *(*(v5 + 56) + 8 * v25) = v22;
          v33 = *(v5 + 16);
          v34 = __OFADD__(v33, 1);
          v35 = v33 + 1;
          if (v34)
          {
            goto LABEL_31;
          }

          *(v5 + 16) = v35;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v44 + 2) + 1, 1, v44);
        }

        v37 = *(v3 + 2);
        v36 = *(v3 + 3);
        if (v37 >= v36 >> 1)
        {
          v8 = v14;
          v9 = v37 + 1;
          v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v37 + 1, 1, v3);
        }

        else
        {
          v9 = v37 + 1;
          v8 = v14;
        }

        *(v3 + 2) = v9;
        v10 = &v3[48 * v37];
        v5 = v45;
        *(v10 + 4) = v12;
        *(v10 + 5) = v43;
        *(v10 + 6) = v8;
        *(v10 + 7) = v42;
        *(v10 + 8) = v15;
        *(v10 + 9) = v41;
      }

      ++v6;
      v7 += 6;
      a1 = v39;
      if (v40 == v6)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
LABEL_28:

    *a2 = v3;
    a2[1] = v5;
  }
}

void specialized OrderedIdentifiableCollection.subscript.setter(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = a1[1];
  if (v7)
  {
    v8 = *a1;
    v9 = a1[4];
    v10 = a1[5];
    v11 = a1[3];
    v30 = a1[2];
    v12 = v3[1];
    if (*(v12 + 2))
    {
      v13 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
      if (v14)
      {
        v15 = v13;

        v16 = *(*(v12 + 7) + 8 * v15);
        v17 = *v4;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          if ((v16 & 0x8000000000000000) == 0)
          {
            goto LABEL_6;
          }
        }

        else
        {
          v17 = specialized _ArrayBuffer._consumeAndCreateNew()(v17);
          if ((v16 & 0x8000000000000000) == 0)
          {
LABEL_6:
            if (v16 < *(v17 + 2))
            {
              v18 = &v17[48 * v16];
              *(v18 + 4) = v8;
              *(v18 + 5) = v7;
              *(v18 + 6) = v30;
              *(v18 + 7) = v11;
              *(v18 + 8) = v9;
              *(v18 + 9) = v10;

              *v4 = v17;
              return;
            }

            goto LABEL_23;
          }
        }

        __break(1u);
LABEL_23:
        __break(1u);
        return;
      }

      v29 = v8;
    }

    else
    {
      v29 = *a1;
    }

    v23 = *v4;
    v24 = *(*v4 + 2);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = v4[1];
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v24, a2, a3, isUniquelyReferenced_nonNull_native);

    v4[1] = v31;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v23 + 2) + 1, 1, v23);
    }

    v27 = *(v23 + 2);
    v26 = *(v23 + 3);
    if (v27 >= v26 >> 1)
    {
      v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1, v23);
    }

    *(v23 + 2) = v27 + 1;
    v28 = &v23[48 * v27];
    *(v28 + 4) = v29;
    *(v28 + 5) = v7;
    *(v28 + 6) = v30;
    *(v28 + 7) = v11;
    *(v28 + 8) = v9;
    *(v28 + 9) = v10;
    *v4 = v23;
  }

  else
  {
    v19 = v3[1];
    if (*(v19 + 2) && (v20 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3), (v21 & 1) != 0))
    {
      v22 = *(*(v19 + 7) + 8 * v20);
      specialized Dictionary._Variant.removeValue(forKey:)(a2, a3);

      specialized Array.remove(at:)(v22, &v31);
    }

    else
    {
    }
  }
}

void specialized OrderedIdentifiableCollection.subscript.setter(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (*a1)
  {
    v7 = a1[1];
    v35 = *a1;
    v36 = v7;
    v37[0] = a1[2];
    *(v37 + 9) = *(a1 + 41);
    v8 = v3[1];
    if (*(v8 + 2))
    {
      v10 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
      if (v11)
      {
        v12 = v10;

        v13 = *(*(v8 + 7) + 8 * v12);
        v14 = *v4;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          if ((v13 & 0x8000000000000000) == 0)
          {
            goto LABEL_6;
          }
        }

        else
        {
          v14 = specialized _ArrayBuffer._consumeAndCreateNew()(v14);
          if ((v13 & 0x8000000000000000) == 0)
          {
LABEL_6:
            if (v13 < *(v14 + 2))
            {
              v15 = &v14[64 * v13];
              v16 = *(v15 + 2);
              v17 = *(v15 + 3);
              v18 = *(v15 + 4);
              *&v34[9] = *(v15 + 73);
              v33[1] = v17;
              *v34 = v18;
              v33[0] = v16;
              v19 = a1[1];
              *(v15 + 2) = *a1;
              *(v15 + 3) = v19;
              *(v15 + 4) = a1[2];
              *(v15 + 73) = *(a1 + 41);
              outlined destroy of MeshResource.Part(v33);
              *v4 = v14;
              return;
            }

            goto LABEL_21;
          }
        }

        __break(1u);
LABEL_21:
        __break(1u);
        return;
      }
    }

    v24 = *v4;
    v25 = *(*v4 + 2);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v33[0] = v4[1];
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v25, a2, a3, isUniquelyReferenced_nonNull_native);

    v4[1] = *&v33[0];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v24 + 2) + 1, 1, v24);
    }

    v28 = *(v24 + 2);
    v27 = *(v24 + 3);
    if (v28 >= v27 >> 1)
    {
      v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1, v24);
    }

    *(v24 + 2) = v28 + 1;
    v29 = &v24[64 * v28];
    v30 = v35;
    v31 = v36;
    v32 = v37[0];
    *(v29 + 73) = *(v37 + 9);
    *(v29 + 3) = v31;
    *(v29 + 4) = v32;
    *(v29 + 2) = v30;
    *v4 = v24;
  }

  else
  {
    v20 = v3[1];
    if (*(v20 + 2) && (v21 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3), (v22 & 1) != 0))
    {
      v23 = *(*(v20 + 7) + 8 * v21);
      specialized Dictionary._Variant.removeValue(forKey:)(a2, a3);

      specialized Array.remove(at:)(v23, &v35);
      outlined destroy of MeshResource.Part(&v35);
    }

    else
    {
    }
  }
}

{
  v4 = v3;
  if (*(a1 + 1))
  {
    v7 = a1[3];
    v42 = a1[2];
    v43 = v7;
    v8 = a1[5];
    v44 = a1[4];
    v45 = v8;
    v9 = a1[1];
    v40 = *a1;
    v41 = v9;
    v10 = v3[1];
    if (*(v10 + 2))
    {
      v12 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
      if (v13)
      {
        v14 = v12;

        v15 = *(*(v10 + 7) + 8 * v14);
        v16 = *v4;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          if ((v15 & 0x8000000000000000) == 0)
          {
            goto LABEL_6;
          }
        }

        else
        {
          v16 = specialized _ArrayBuffer._consumeAndCreateNew()(v16);
          if ((v15 & 0x8000000000000000) == 0)
          {
LABEL_6:
            if (v15 < *(v16 + 2))
            {
              v17 = &v16[96 * v15];
              v18 = *(v17 + 3);
              v39[0] = *(v17 + 2);
              v39[1] = v18;
              v19 = *(v17 + 4);
              v20 = *(v17 + 5);
              v21 = *(v17 + 7);
              v39[4] = *(v17 + 6);
              v39[5] = v21;
              v39[2] = v19;
              v39[3] = v20;
              v22 = a1[3];
              *(v17 + 4) = a1[2];
              *(v17 + 5) = v22;
              v23 = a1[5];
              *(v17 + 6) = a1[4];
              *(v17 + 7) = v23;
              v24 = a1[1];
              *(v17 + 2) = *a1;
              *(v17 + 3) = v24;
              outlined destroy of MeshResource.Instance(v39);
              *v4 = v16;
              return;
            }

            goto LABEL_21;
          }
        }

        __break(1u);
LABEL_21:
        __break(1u);
        return;
      }
    }

    v29 = *v4;
    v30 = *(*v4 + 2);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v39[0] = v4[1];
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v30, a2, a3, isUniquelyReferenced_nonNull_native);

    v4[1] = *&v39[0];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v29 + 2) + 1, 1, v29);
    }

    v33 = *(v29 + 2);
    v32 = *(v29 + 3);
    if (v33 >= v32 >> 1)
    {
      v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1, v29);
    }

    *(v29 + 2) = v33 + 1;
    v34 = &v29[96 * v33];
    v35 = v41;
    *(v34 + 2) = v40;
    *(v34 + 3) = v35;
    v36 = v42;
    v37 = v43;
    v38 = v45;
    *(v34 + 6) = v44;
    *(v34 + 7) = v38;
    *(v34 + 4) = v36;
    *(v34 + 5) = v37;
    *v4 = v29;
  }

  else
  {
    v25 = v3[1];
    if (*(v25 + 2) && (v26 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3), (v27 & 1) != 0))
    {
      v28 = *(*(v25 + 7) + 8 * v26);
      specialized Dictionary._Variant.removeValue(forKey:)(a2, a3);

      specialized Array.remove(at:)(v28, &v40);
      outlined destroy of MeshResource.Instance(&v40);
    }

    else
    {
    }
  }
}

void specialized OrderedIdentifiableCollection.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  if (a2)
  {
    v14 = v6[1];
    if (*(v14 + 2))
    {
      v15 = specialized __RawDictionaryStorage.find<A>(_:)(a5, a6);
      if (v16)
      {
        v17 = v15;

        v18 = *(*(v14 + 7) + 8 * v17);
        v19 = *v7;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          if ((v18 & 0x8000000000000000) == 0)
          {
            goto LABEL_6;
          }
        }

        else
        {
          v19 = specialized _ArrayBuffer._consumeAndCreateNew()(v19);
          if ((v18 & 0x8000000000000000) == 0)
          {
LABEL_6:
            if (v18 < *(v19 + 2))
            {
              v20 = &v19[32 * v18];
              *(v20 + 4) = a1;
              *(v20 + 5) = a2;
              *(v20 + 6) = a3;
              *(v20 + 14) = a4;
              v20[60] = BYTE4(a4) & 1;

              *v7 = v19;
              return;
            }

            goto LABEL_21;
          }
        }

        __break(1u);
LABEL_21:
        __break(1u);
        return;
      }
    }

    v25 = *v7;
    v26 = *(*v7 + 2);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = v7[1];
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v26, a5, a6, isUniquelyReferenced_nonNull_native);

    v7[1] = v31;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v25 + 2) + 1, 1, v25);
    }

    v29 = *(v25 + 2);
    v28 = *(v25 + 3);
    if (v29 >= v28 >> 1)
    {
      v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1, v25);
    }

    *(v25 + 2) = v29 + 1;
    v30 = &v25[32 * v29];
    *(v30 + 4) = a1;
    *(v30 + 5) = a2;
    *(v30 + 6) = a3;
    *(v30 + 14) = a4;
    v30[60] = BYTE4(a4) & 1;
    *v7 = v25;
  }

  else
  {
    v21 = v6[1];
    if (*(v21 + 2) && (v22 = specialized __RawDictionaryStorage.find<A>(_:)(a5, a6), (v23 & 1) != 0))
    {
      v24 = *(*(v21 + 7) + 8 * v22);
      specialized Dictionary._Variant.removeValue(forKey:)(a5, a6);

      specialized Array.remove(at:)(v24, &v31);
    }

    else
    {
    }
  }
}

void specialized OrderedIdentifiableCollection.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  if (a2)
  {
    v12 = v5[1];
    if (*(v12 + 2))
    {
      v13 = specialized __RawDictionaryStorage.find<A>(_:)(a4, a5);
      if (v14)
      {
        v15 = v13;

        v16 = *(*(v12 + 7) + 8 * v15);
        v17 = *v6;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          if ((v16 & 0x8000000000000000) == 0)
          {
            goto LABEL_6;
          }
        }

        else
        {
          v17 = specialized _ArrayBuffer._consumeAndCreateNew()(v17);
          if ((v16 & 0x8000000000000000) == 0)
          {
LABEL_6:
            if (v16 < *(v17 + 2))
            {
              v18 = &v17[24 * v16];
              *(v18 + 4) = a1;
              *(v18 + 5) = a2;
              *(v18 + 6) = a3;

              *v6 = v17;
              return;
            }

            goto LABEL_21;
          }
        }

        __break(1u);
LABEL_21:
        __break(1u);
        return;
      }
    }

    v23 = *v6;
    v24 = *(*v6 + 2);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29 = v6[1];
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v24, a4, a5, isUniquelyReferenced_nonNull_native);

    v6[1] = v29;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v23 + 2) + 1, 1, v23);
    }

    v27 = *(v23 + 2);
    v26 = *(v23 + 3);
    if (v27 >= v26 >> 1)
    {
      v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1, v23);
    }

    *(v23 + 2) = v27 + 1;
    v28 = &v23[24 * v27];
    *(v28 + 4) = a1;
    *(v28 + 5) = a2;
    *(v28 + 6) = a3;
    *v6 = v23;
  }

  else
  {
    v19 = v5[1];
    if (*(v19 + 2) && (v20 = specialized __RawDictionaryStorage.find<A>(_:)(a4, a5), (v21 & 1) != 0))
    {
      v22 = *(*(v19 + 7) + 8 * v20);
      specialized Dictionary._Variant.removeValue(forKey:)(a4, a5);

      specialized Array.remove(at:)(v22, &v29);
    }

    else
    {
    }
  }
}

void MeshModelCollection.subscript.getter(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = v3[1];
  if (!*(v6 + 16) || (v7 = *v4, v8 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v9 & 1) == 0))
  {
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
    return;
  }

  v10 = *(*(v6 + 56) + 8 * v8);
  if ((v10 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v10 >= *(v7 + 16))
  {
LABEL_10:
    __break(1u);
    return;
  }

  v11 = (v7 + 48 * v10);
  v12 = v11[5];
  v13 = v11[6];
  v14 = v11[7];
  v15 = v11[8];
  v16 = v11[9];
  *a3 = v11[4];
  *(a3 + 8) = v12;
  *(a3 + 16) = v13;
  *(a3 + 24) = v14;
  *(a3 + 32) = v15;
  *(a3 + 40) = v16;
}

void MeshModelCollection.insert(_:)(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  v8 = v1[1];
  if (!*(v8 + 16) || (v9 = *v1, v10 = specialized __RawDictionaryStorage.find<A>(_:)(*a1, v2), (v11 & 1) == 0))
  {
    v14[0] = v3;
    v14[1] = v2;
    v14[2] = v4;
    v14[3] = v5;
    v14[4] = v6;
    v14[5] = v7;

    specialized OrderedIdentifiableCollection.subscript.setter(v14, v3, v2);
    return;
  }

  v12 = *(*(v8 + 56) + 8 * v10);
  if ((v12 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v13 = *(v9 + 16);

  if (v12 >= v13)
  {
LABEL_8:
    __break(1u);
  }
}

uint64_t MeshModelCollection.update(_:)@<X0>(__int128 *a1@<X0>, void *a2@<X8>)
{
  v3 = a1[1];
  v5[0] = *a1;
  v5[1] = v3;
  v5[2] = a1[2];

  specialized OrderedIdentifiableCollection.updateValue(_:forKey:)(v5, *&v5[0], *(&v5[0] + 1), a2);

  return outlined destroy of MeshResource.Model(v5);
}

void specialized OrderedIdentifiableCollection.updateValue(_:forKey:)(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = v4;
  v10 = v4[1];
  if (!*(v10 + 2) || (v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3), (v12 & 1) == 0) || (v13 = specialized Dictionary._Variant.updateValue(_:forKey:)(*(*(v10 + 7) + 8 * v11), a2, a3), (v14 & 1) != 0))
  {
    v15 = *v5;
    v16 = *(*v5 + 2);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34[0] = v5[1];
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v16, a2, a3, isUniquelyReferenced_nonNull_native);
    v5[1] = v34[0];
    outlined init with copy of MeshResource.Model(a1, v34);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v15 + 2) + 1, 1, v15);
    }

    v19 = *(v15 + 2);
    v18 = *(v15 + 3);
    if (v19 >= v18 >> 1)
    {
      v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v15);
    }

    *(v15 + 2) = v19 + 1;
    v20 = &v15[48 * v19];
    v21 = v20 + 32;
    v22 = *a1;
    v23 = a1[2];
    *(v20 + 3) = a1[1];
    *(v20 + 4) = v23;
    *(v20 + 2) = v22;
    *v5 = v15;
    goto LABEL_9;
  }

  v29 = v13;
  v30 = *v5;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if ((v29 & 0x8000000000000000) == 0)
    {
      goto LABEL_12;
    }

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v30 = specialized _ArrayBuffer._consumeAndCreateNew()(v30);
  if ((v29 & 0x8000000000000000) != 0)
  {
    goto LABEL_16;
  }

LABEL_12:
  if (v29 >= *(v30 + 2))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v31 = &v30[48 * v29];
  v33 = a1[1];
  v32 = a1[2];
  *(v31 + 2) = *a1;
  *(v31 + 3) = v33;
  *(v31 + 4) = v32;
  outlined init with copy of MeshResource.Model(a1, v34);

  *v5 = v30;
  if (v29 < *(v30 + 2))
  {
    v21 = v31 + 32;
LABEL_9:
    v25 = v21[2];
    v24 = v21[3];
    v26 = v21[1];
    v27 = v21[4];
    v28 = v21[5];
    *a4 = *v21;
    a4[1] = v26;
    a4[2] = v25;
    a4[3] = v24;
    a4[4] = v27;
    a4[5] = v28;

    return;
  }

LABEL_18:
  __break(1u);
}

uint64_t specialized OrderedIdentifiableCollection.updateValue(_:forKey:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v5 = v4;
  v10 = v4[1];
  if (!*(v10 + 2) || (v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3), (v12 & 1) == 0) || (v13 = specialized Dictionary._Variant.updateValue(_:forKey:)(*(*(v10 + 7) + 8 * v11), a2, a3), (v14 & 1) != 0))
  {
    v15 = *v5;
    v16 = *(*v5 + 2);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v45 = v5[1];
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v16, a2, a3, isUniquelyReferenced_nonNull_native);
    v5[1] = v45;
    outlined init with copy of MeshResource.Part(a1, &v45);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v15 + 2) + 1, 1, v15);
    }

    v19 = *(v15 + 2);
    v18 = *(v15 + 3);
    if (v19 >= v18 >> 1)
    {
      v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v15);
    }

    *(v15 + 2) = v19 + 1;
    v20 = &v15[64 * v19];
    v21 = *a1;
    v22 = a1[1];
    v23 = a1[2];
    *(v20 + 73) = *(a1 + 41);
    *(v20 + 3) = v22;
    *(v20 + 4) = v23;
    *(v20 + 2) = v21;
    *v5 = v15;
    v24 = *(v20 + 2);
    v25 = *(v20 + 3);
    v26 = *(v20 + 4);
    *(v47 + 9) = *(v20 + 73);
    v46 = v25;
    v47[0] = v26;
    v45 = v24;
    memmove(a4, v20 + 32, 0x39uLL);
    v27 = v43;
    return outlined init with copy of MeshResource.Part(&v45, v27);
  }

  v29 = v13;
  v30 = *v5;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if ((v29 & 0x8000000000000000) == 0)
    {
      goto LABEL_12;
    }

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew()(v30);
  v30 = result;
  if ((v29 & 0x8000000000000000) != 0)
  {
    goto LABEL_16;
  }

LABEL_12:
  if (v29 >= *(v30 + 16))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v31 = (v30 + (v29 << 6));
  v32 = v31[2];
  v33 = v31[3];
  v34 = v31[4];
  *&v44[9] = *(v31 + 73);
  v43[1] = v33;
  *v44 = v34;
  v43[0] = v32;
  v35 = *a1;
  v36 = a1[1];
  v37 = a1[2];
  *(v31 + 73) = *(a1 + 41);
  v31[3] = v36;
  v31[4] = v37;
  v31[2] = v35;
  outlined init with copy of MeshResource.Part(a1, &v45);
  result = outlined destroy of MeshResource.Part(v43);
  *v5 = v30;
  if (v29 < *(v30 + 16))
  {
    v38 = v31[2];
    v39 = v31[3];
    v40 = v31[4];
    *(v47 + 9) = *(v31 + 73);
    v46 = v39;
    v47[0] = v40;
    v45 = v38;
    v41 = v31[3];
    *a4 = v31[2];
    a4[1] = v41;
    a4[2] = v31[4];
    *(a4 + 41) = *(v31 + 73);
    v27 = &v42;
    return outlined init with copy of MeshResource.Part(&v45, v27);
  }

LABEL_18:
  __break(1u);
  return result;
}

void specialized OrderedIdentifiableCollection.updateValue(_:forKey:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v8 = v7;
  v16 = v7[1];
  if (!*(v16 + 2) || (v17 = specialized __RawDictionaryStorage.find<A>(_:)(a5, a6), (v18 & 1) == 0) || (v19 = specialized Dictionary._Variant.updateValue(_:forKey:)(*(*(v16 + 7) + 8 * v17), a5, a6), (v20 & 1) != 0))
  {
    v34 = a1;
    v21 = *v8;
    v22 = *(*v8 + 2);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v35 = v8[1];
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v22, a5, a6, isUniquelyReferenced_nonNull_native);
    v8[1] = v35;

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_5:
      v25 = *(v21 + 2);
      v24 = *(v21 + 3);
      if (v25 >= v24 >> 1)
      {
        v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1, v21);
      }

      *(v21 + 2) = v25 + 1;
      v26 = &v21[32 * v25];
      *(v26 + 4) = v34;
      *(v26 + 5) = a2;
      v27 = v26 + 32;
      *(v27 + 2) = a3;
      *(v27 + 6) = a4;
      v27[28] = BYTE4(a4) & 1;
      *v8 = v21;
      goto LABEL_8;
    }

LABEL_16:
    v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v21 + 2) + 1, 1, v21);
    goto LABEL_5;
  }

  v32 = v19;
  v21 = *v8;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if ((v32 & 0x8000000000000000) == 0)
    {
      goto LABEL_13;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v21 = specialized _ArrayBuffer._consumeAndCreateNew()(v21);
  if ((v32 & 0x8000000000000000) != 0)
  {
    goto LABEL_18;
  }

LABEL_13:
  if (v32 >= *(v21 + 2))
  {
LABEL_19:
    __break(1u);
    return;
  }

  v33 = &v21[32 * v32];
  *(v33 + 4) = a1;
  v27 = v33 + 32;
  *(v27 + 1) = a2;
  *(v27 + 2) = a3;
  *(v27 + 6) = a4;
  v27[28] = BYTE4(a4) & 1;

  *v8 = v21;
  if (v32 >= *(v21 + 2))
  {
    __break(1u);
    goto LABEL_16;
  }

LABEL_8:
  v28 = *(v27 + 1);
  v29 = *(v27 + 2);
  v30 = *(v27 + 6);
  v31 = v27[28];
  *a7 = *v27;
  *(a7 + 8) = v28;
  *(a7 + 16) = v29;
  *(a7 + 24) = v30;
  *(a7 + 28) = v31;
}

uint64_t specialized OrderedIdentifiableCollection.updateValue(_:forKey:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v5 = v4;
  v10 = v4[1];
  if (!*(v10 + 2) || (v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3), (v12 & 1) == 0) || (v13 = specialized Dictionary._Variant.updateValue(_:forKey:)(*(*(v10 + 7) + 8 * v11), a2, a3), (v14 & 1) != 0))
  {
    v15 = *v5;
    v16 = *(*v5 + 2);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v52 = v5[1];
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v16, a2, a3, isUniquelyReferenced_nonNull_native);
    v5[1] = v52;
    outlined init with copy of MeshResource.Instance(a1, &v52);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v15 + 2) + 1, 1, v15);
    }

    v19 = *(v15 + 2);
    v18 = *(v15 + 3);
    if (v19 >= v18 >> 1)
    {
      v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v15);
    }

    *(v15 + 2) = v19 + 1;
    v20 = &v15[96 * v19];
    v21 = a1[1];
    *(v20 + 2) = *a1;
    *(v20 + 3) = v21;
    v22 = a1[2];
    v23 = a1[3];
    v24 = a1[5];
    *(v20 + 6) = a1[4];
    *(v20 + 7) = v24;
    *(v20 + 4) = v22;
    *(v20 + 5) = v23;
    *v5 = v15;
    v25 = *(v20 + 3);
    v52 = *(v20 + 2);
    v53 = v25;
    v26 = *(v20 + 4);
    v27 = *(v20 + 5);
    v28 = *(v20 + 7);
    v56 = *(v20 + 6);
    v57 = v28;
    v54 = v26;
    v55 = v27;
    memmove(a4, v20 + 32, 0x60uLL);
    v29 = v51;
    return outlined init with copy of MeshResource.Instance(&v52, v29);
  }

  v31 = v13;
  v32 = *v5;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if ((v31 & 0x8000000000000000) == 0)
    {
      goto LABEL_12;
    }

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew()(v32);
  v32 = result;
  if ((v31 & 0x8000000000000000) != 0)
  {
    goto LABEL_16;
  }

LABEL_12:
  if (v31 >= *(v32 + 16))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v33 = (v32 + 96 * v31);
  v34 = v33[3];
  v51[0] = v33[2];
  v51[1] = v34;
  v35 = v33[4];
  v36 = v33[5];
  v37 = v33[7];
  v51[4] = v33[6];
  v51[5] = v37;
  v51[2] = v35;
  v51[3] = v36;
  v38 = a1[5];
  v40 = a1[2];
  v39 = a1[3];
  v33[6] = a1[4];
  v33[7] = v38;
  v33[4] = v40;
  v33[5] = v39;
  v41 = a1[1];
  v33[2] = *a1;
  v33[3] = v41;
  outlined init with copy of MeshResource.Instance(a1, &v52);
  result = outlined destroy of MeshResource.Instance(v51);
  *v5 = v32;
  if (v31 < *(v32 + 16))
  {
    v42 = v33[3];
    v52 = v33[2];
    v53 = v42;
    v43 = v33[4];
    v44 = v33[5];
    v45 = v33[7];
    v56 = v33[6];
    v57 = v45;
    v54 = v43;
    v55 = v44;
    v46 = v33[3];
    *a4 = v33[2];
    a4[1] = v46;
    v47 = v33[4];
    v48 = v33[5];
    v49 = v33[7];
    a4[4] = v33[6];
    a4[5] = v49;
    a4[2] = v47;
    a4[3] = v48;
    v29 = &v50;
    return outlined init with copy of MeshResource.Instance(&v52, v29);
  }

LABEL_18:
  __break(1u);
  return result;
}

void specialized OrderedIdentifiableCollection.updateValue(_:forKey:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v7 = v6;
  v14 = v6[1];
  if (!*(v14 + 2) || (v15 = specialized __RawDictionaryStorage.find<A>(_:)(a4, a5), (v16 & 1) == 0) || (v17 = specialized Dictionary._Variant.updateValue(_:forKey:)(*(*(v14 + 7) + 8 * v15), a4, a5), (v18 & 1) != 0))
  {
    v19 = *v7;
    v20 = *(*v7 + 2);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30 = v7[1];
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v20, a4, a5, isUniquelyReferenced_nonNull_native);
    v7[1] = v30;

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_5:
      v23 = *(v19 + 2);
      v22 = *(v19 + 3);
      if (v23 >= v22 >> 1)
      {
        v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v19);
      }

      *(v19 + 2) = v23 + 1;
      v24 = &v19[24 * v23];
      *(v24 + 4) = a1;
      *(v24 + 5) = a2;
      v25 = v24 + 32;
      v25[2] = a3;
      *v7 = v19;
      goto LABEL_8;
    }

LABEL_16:
    v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v19 + 2) + 1, 1, v19);
    goto LABEL_5;
  }

  v28 = v17;
  v19 = *v7;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if ((v28 & 0x8000000000000000) == 0)
    {
      goto LABEL_13;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v19 = specialized _ArrayBuffer._consumeAndCreateNew()(v19);
  if ((v28 & 0x8000000000000000) != 0)
  {
    goto LABEL_18;
  }

LABEL_13:
  if (v28 >= *(v19 + 2))
  {
LABEL_19:
    __break(1u);
    return;
  }

  v29 = &v19[24 * v28];
  *(v29 + 4) = a1;
  v25 = v29 + 32;
  a1 = v25[1];
  v25[1] = a2;
  v25[2] = a3;

  *v7 = v19;
  if (v28 >= *(v19 + 2))
  {
    __break(1u);
    goto LABEL_16;
  }

LABEL_8:
  v26 = v25[1];
  v27 = v25[2];
  *a6 = *v25;
  a6[1] = v26;
  a6[2] = v27;
}

void specialized OrderedIdentifiableCollection.removeValue(forKey:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if ((v7 & 1) == 0)
  {
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
    return;
  }

  v8 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = v3[1];
  v18 = v10;
  if (!isUniquelyReferenced_nonNull_native)
  {
    specialized _NativeDictionary.copy()();
    v10 = v18;
  }

  v11 = *(*(v10 + 56) + 8 * v8);
  specialized _NativeDictionary._delete(at:)(v8, v10);
  v4[1] = v10;
  if ((v11 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v11 >= *(*v4 + 16))
  {
LABEL_11:
    __break(1u);
    return;
  }

  v12 = (*v4 + 48 * v11);
  v13 = v12[5];
  v14 = v12[6];
  v15 = v12[7];
  v16 = v12[8];
  v17 = v12[9];
  *a3 = v12[4];
  *(a3 + 8) = v13;
  *(a3 + 16) = v14;
  *(a3 + 24) = v15;
  *(a3 + 32) = v16;
  *(a3 + 40) = v17;

  specialized Array.remove(at:)(v11, &v18);
}

{
  v4 = v3;
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if ((v7 & 1) == 0)
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 21) = 0;
    *(a3 + 16) = 0;
    return;
  }

  v8 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = v3[1];
  v17 = v10;
  if (!isUniquelyReferenced_nonNull_native)
  {
    specialized _NativeDictionary.copy()();
    v10 = v17;
  }

  v11 = *(*(v10 + 56) + 8 * v8);
  specialized _NativeDictionary._delete(at:)(v8, v10);
  v4[1] = v10;
  if ((v11 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v11 >= *(*v4 + 16))
  {
LABEL_11:
    __break(1u);
    return;
  }

  v12 = *v4 + 32 * v11;
  v14 = *(v12 + 32);
  v13 = *(v12 + 40);
  v15 = *(v12 + 48);
  v16 = *(v12 + 56);
  LOBYTE(v12) = *(v12 + 60);
  *a3 = v14;
  *(a3 + 8) = v13;
  *(a3 + 16) = v15;
  *(a3 + 24) = v16;
  *(a3 + 28) = v12;

  specialized Array.remove(at:)(v11, &v17);
}

void specialized OrderedIdentifiableCollection.removeValue(forKey:)(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = v3[1];
    v20 = v10;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v10 = v20;
    }

    v11 = *(*(v10 + 56) + 8 * v8);
    specialized _NativeDictionary._delete(at:)(v8, v10);
    v4[1] = v10;
    if ((v11 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v11 < *(*v4 + 16))
    {
      v12 = (*v4 + (v11 << 6));
      v13 = v12[2];
      v14 = v12[3];
      v15 = v12[4];
      *&v18[9] = *(v12 + 73);
      v17[1] = v14;
      *v18 = v15;
      v17[0] = v13;
      v16 = v12[3];
      *a3 = v12[2];
      a3[1] = v16;
      a3[2] = v12[4];
      *(a3 + 41) = *(v12 + 73);
      outlined init with copy of MeshResource.Part(v17, v19);
      specialized Array.remove(at:)(v11, v19);
      outlined destroy of MeshResource.Part(v19);
      return;
    }

    __break(1u);
  }

  else
  {
    *(a3 + 41) = 0u;
    a3[1] = 0u;
    a3[2] = 0u;
    *a3 = 0u;
  }
}

{
  v4 = v3;
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = v3[1];
    v23 = v10;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v10 = v23;
    }

    v11 = *(*(v10 + 56) + 8 * v8);
    specialized _NativeDictionary._delete(at:)(v8, v10);
    v4[1] = v10;
    if ((v11 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v11 < *(*v4 + 16))
    {
      v12 = (*v4 + 96 * v11);
      v13 = v12[3];
      v21[0] = v12[2];
      v21[1] = v13;
      v14 = v12[4];
      v15 = v12[5];
      v16 = v12[7];
      v21[4] = v12[6];
      v21[5] = v16;
      v21[2] = v14;
      v21[3] = v15;
      v17 = v12[3];
      *a3 = v12[2];
      a3[1] = v17;
      v18 = v12[4];
      v19 = v12[5];
      v20 = v12[7];
      a3[4] = v12[6];
      a3[5] = v20;
      a3[2] = v18;
      a3[3] = v19;
      outlined init with copy of MeshResource.Instance(v21, v22);
      specialized Array.remove(at:)(v11, v22);
      outlined destroy of MeshResource.Instance(v22);
      return;
    }

    __break(1u);
  }

  else
  {
    a3[4] = 0u;
    a3[5] = 0u;
    a3[2] = 0u;
    a3[3] = 0u;
    *a3 = 0u;
    a3[1] = 0u;
  }
}

void specialized OrderedIdentifiableCollection.removeValue(forKey:)(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if ((v7 & 1) == 0)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    return;
  }

  v8 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = v3[1];
  v15 = v10;
  if (!isUniquelyReferenced_nonNull_native)
  {
    specialized _NativeDictionary.copy()();
    v10 = v15;
  }

  v11 = *(*(v10 + 56) + 8 * v8);
  specialized _NativeDictionary._delete(at:)(v8, v10);
  v4[1] = v10;
  if ((v11 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v11 >= *(*v4 + 16))
  {
LABEL_11:
    __break(1u);
    return;
  }

  v12 = (*v4 + 24 * v11);
  v13 = v12[5];
  v14 = v12[6];
  *a3 = v12[4];
  a3[1] = v13;
  a3[2] = v14;

  specialized Array.remove(at:)(v11, &v15);
}

void MeshModelCollection.Iterator.next()(uint64_t a1@<X8>)
{
  v2 = v1[1];
  v3 = *(*v1 + 16);
  if (v2 == v3)
  {
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
  }

  else if (v2 >= v3)
  {
    __break(1u);
  }

  else
  {
    v4 = (*v1 + 48 * v2);
    v5 = v4[5];
    v6 = v4[6];
    v7 = v4[7];
    v8 = v4[8];
    v9 = v4[9];
    *a1 = v4[4];
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
    *(a1 + 24) = v7;
    *(a1 + 32) = v8;
    *(a1 + 40) = v9;
    v1[1] = v2 + 1;
  }
}

void MeshModelCollection.subscript.getter(unint64_t a1@<X0>, void *a2@<X8>)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (*(*v2 + 16) <= a1)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v3 = (*v2 + 48 * a1);
  v4 = v3[5];
  v5 = v3[6];
  v6 = v3[7];
  v7 = v3[8];
  v8 = v3[9];
  *a2 = v3[4];
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
  a2[4] = v7;
  a2[5] = v8;
}

uint64_t (*protocol witness for Collection.subscript.read in conformance MeshModelCollection(uint64_t (**a1)(), unint64_t *a2))()
{
  if (MEMORY[0x1E69E7D08])
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(0x30uLL);
  }

  v6 = result;
  *a1 = result;
  v7 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v7 < *(*v2 + 16))
  {
    v8 = (*v2 + 48 * v7);
    v9 = v8[5];
    v10 = v8[6];
    v11 = v8[7];
    v12 = v8[8];
    v13 = v8[9];
    *v6 = v8[4];
    *(v6 + 1) = v9;
    *(v6 + 2) = v10;
    *(v6 + 3) = v11;
    *(v6 + 4) = v12;
    *(v6 + 5) = v13;

    return protocol witness for Collection.subscript.read in conformance MeshModelCollection;
  }

  __break(1u);
  return result;
}

void protocol witness for Collection.subscript.read in conformance MeshModelCollection(void **a1)
{
  v1 = *a1;

  free(v1);
}

double MeshModelCollection.init(arrayLiteral:)@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  MeshModelCollection.init(_:)(a1, &v4);
  result = *&v4;
  *a2 = v4;
  return result;
}

double protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance MeshModelCollection@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  MeshModelCollection.init(_:)(a1, &v4);
  result = *&v4;
  *a2 = v4;
  return result;
}

char *MeshPartCollection.init()@<X0>(char **a1@<X8>)
{
  result = _s17RealityFoundation29OrderedIdentifiableCollectionV17dictionaryLiteralACyxq_Gx_q_td_tcfCSS_0A3Kit12MeshResourceCAAE4PartVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *a1 = result;
  a1[1] = v3;
  return result;
}

void MeshPartCollection.init(_:)(uint64_t a1@<X0>, char **a2@<X8>)
{
  v4 = _s17RealityFoundation29OrderedIdentifiableCollectionV17dictionaryLiteralACyxq_Gx_q_td_tcfCSS_0A3Kit12MeshResourceCAAE4PartVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v6 = v5;
  v7 = *(a1 + 16);
  if (!v7)
  {

LABEL_31:
    *a2 = v4;
    a2[1] = v6;
    return;
  }

  v8 = 0;
  v43 = a2;
  v44 = v7 - 1;
  v9 = 32;
  do
  {
    v10 = *(a1 + v9 + 16);
    v47 = *(a1 + v9);
    v48 = v10;
    *&v49[9] = *(a1 + v9 + 41);
    *v49 = *(a1 + v9 + 32);
    v12 = *(&v47 + 1);
    v11 = v10;
    if (!*(v6 + 16))
    {
      outlined init with copy of MeshResource.Part(&v47, v45);
      outlined init with copy of MeshResource.Part(&v47, v45);
LABEL_11:
      v23 = *(v4 + 2);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v45[0] = v6;
      v25 = specialized __RawDictionaryStorage.find<A>(_:)(v12, v11);
      v27 = *(v6 + 16);
      v28 = (v26 & 1) == 0;
      v29 = __OFADD__(v27, v28);
      v30 = v27 + v28;
      if (v29)
      {
        goto LABEL_32;
      }

      v31 = v26;
      if (*(v6 + 24) >= v30)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v33 = v25;
          specialized _NativeDictionary.copy()();
          v25 = v33;
          v6 = *&v45[0];
          if (v31)
          {
            goto LABEL_17;
          }

          goto LABEL_19;
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v30, isUniquelyReferenced_nonNull_native);
        v25 = specialized __RawDictionaryStorage.find<A>(_:)(v12, v11);
        if ((v31 & 1) != (v32 & 1))
        {
          goto LABEL_36;
        }
      }

      v6 = *&v45[0];
      if (v31)
      {
LABEL_17:
        *(*(v6 + 56) + 8 * v25) = v23;
LABEL_21:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 2) + 1, 1, v4);
        }

        v38 = *(v4 + 2);
        v37 = *(v4 + 3);
        if (v38 >= v37 >> 1)
        {
          v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v37 > 1), v38 + 1, 1, v4);
        }

        outlined destroy of MeshResource.Part(&v47);
        *(v4 + 2) = v38 + 1;
        v39 = &v4[64 * v38];
        v41 = v48;
        v40 = *v49;
        v42 = v47;
        *(v39 + 73) = *&v49[9];
        *(v39 + 3) = v41;
        *(v39 + 4) = v40;
        *(v39 + 2) = v42;
        goto LABEL_26;
      }

LABEL_19:
      *(v6 + 8 * (v25 >> 6) + 64) |= 1 << v25;
      v34 = (*(v6 + 48) + 16 * v25);
      *v34 = v12;
      v34[1] = v11;
      *(*(v6 + 56) + 8 * v25) = v23;
      v35 = *(v6 + 16);
      v29 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v29)
      {
        goto LABEL_33;
      }

      *(v6 + 16) = v36;

      goto LABEL_21;
    }

    outlined init with copy of MeshResource.Part(&v47, v45);
    outlined init with copy of MeshResource.Part(&v47, v45);
    v13 = specialized __RawDictionaryStorage.find<A>(_:)(v12, v11);
    if ((v14 & 1) == 0)
    {
      goto LABEL_11;
    }

    v15 = *(*(v6 + 56) + 8 * v13);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
    }

    outlined destroy of MeshResource.Part(&v47);
    if ((v15 & 0x8000000000000000) != 0)
    {
      goto LABEL_34;
    }

    if (v15 >= *(v4 + 2))
    {
      goto LABEL_35;
    }

    v16 = &v4[64 * v15];
    v17 = *(v16 + 2);
    v18 = *(v16 + 3);
    v19 = *(v16 + 4);
    *&v46[9] = *(v16 + 73);
    v45[1] = v18;
    *v46 = v19;
    v45[0] = v17;
    v20 = v47;
    v21 = v48;
    v22 = *v49;
    *(v16 + 73) = *&v49[9];
    *(v16 + 3) = v21;
    *(v16 + 4) = v22;
    *(v16 + 2) = v20;
    outlined destroy of MeshResource.Part(v45);
LABEL_26:
    if (v44 == v8)
    {

      a2 = v43;
      goto LABEL_31;
    }

    ++v8;
    v9 += 64;
  }

  while (v8 < *(a1 + 16));
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

unint64_t MeshPartCollection.subscript.getter@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = v3[1];
  if (*(v6 + 16) && (v7 = *v4, result = specialized __RawDictionaryStorage.find<A>(_:)(result, a2), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + 8 * result);
    if ((v9 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v9 < *(v7 + 16))
    {
      v10 = (v7 + (v9 << 6));
      v11 = v10[2];
      v12 = v10[3];
      v13 = v10[4];
      *&v17[9] = *(v10 + 73);
      v16[1] = v12;
      *v17 = v13;
      v16[0] = v11;
      v14 = v10[3];
      *a3 = v10[2];
      a3[1] = v14;
      a3[2] = v10[4];
      *(a3 + 41) = *(v10 + 73);
      return outlined init with copy of MeshResource.Part(v16, &v15);
    }

    __break(1u);
  }

  else
  {
    *(a3 + 41) = 0u;
    a3[1] = 0u;
    a3[2] = 0u;
    *a3 = 0u;
  }

  return result;
}

uint64_t MeshPartCollection.insert(_:)(_OWORD *a1)
{
  v3 = a1[1];
  v14[0] = *a1;
  v14[1] = v3;
  *&v15[9] = *(a1 + 41);
  *v15 = a1[2];
  v4 = v3;
  v5 = v1[1];
  if (*(v5 + 16) && (v6 = *v1, result = specialized __RawDictionaryStorage.find<A>(_:)(*(&v14[0] + 1), v3), (v8 & 1) != 0))
  {
    v9 = *(*(v5 + 56) + 8 * result);
    if ((v9 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v10 = *(v6 + 16);
      result = outlined destroy of MeshResource.Part(v14);
      if (v9 < v10)
      {
        return 0;
      }
    }

    __break(1u);
  }

  else
  {
    v11 = a1[1];
    v12[0] = *a1;
    v12[1] = v11;
    v13[0] = a1[2];
    *(v13 + 9) = *(a1 + 41);

    specialized OrderedIdentifiableCollection.subscript.setter(v12, *(&v14[0] + 1), v4);
    return 1;
  }

  return result;
}

uint64_t MeshPartCollection.update(_:)@<X0>(__int128 *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = a1[1];
  v6[0] = *a1;
  v6[1] = v3;
  v7[0] = a1[2];
  *(v7 + 9) = *(a1 + 41);
  v4 = v3;

  specialized OrderedIdentifiableCollection.updateValue(_:forKey:)(v6, *(&v6[0] + 1), v4, a2);

  return outlined destroy of MeshResource.Part(v6);
}

uint64_t MeshPartCollection.Iterator.next()@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[1];
  v3 = *(*v1 + 16);
  if (v2 == v3)
  {
    *(a1 + 41) = 0u;
    a1[1] = 0u;
    a1[2] = 0u;
    *a1 = 0u;
  }

  else if (v2 >= v3)
  {
    __break(1u);
  }

  else
  {
    v4 = (*v1 + (v2 << 6));
    v5 = v4[2];
    v6 = v4[3];
    v7 = v4[4];
    *&v12[9] = *(v4 + 73);
    v11[1] = v6;
    *v12 = v7;
    v11[0] = v5;
    v8 = v4[3];
    *a1 = v4[2];
    a1[1] = v8;
    a1[2] = v4[4];
    *(a1 + 41) = *(v4 + 73);
    v1[1] = v2 + 1;
    return outlined init with copy of MeshResource.Part(v11, &v10);
  }

  return result;
}

void MeshPartCollection.makeIterator()(void *a1@<X8>)
{
  v3 = *v1;

  *a1 = v3;
  a1[1] = 0;
}

Swift::Int __swiftcall MeshPartCollection.index(after:)(Swift::Int after)
{
  v1 = __OFADD__(after, 1);
  result = after + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall MeshPartCollection.formIndex(after:)(Swift::Int *after)
{
  if (__OFADD__(*after, 1))
  {
    __break(1u);
  }

  else
  {
    ++*after;
  }
}

unint64_t MeshPartCollection.subscript.getter@<X0>(unint64_t result@<X0>, _OWORD *a2@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(*v2 + 16) > result)
  {
    v3 = (*v2 + (result << 6));
    v4 = v3[2];
    v5 = v3[3];
    v6 = v3[4];
    *&v10[9] = *(v3 + 73);
    v9[1] = v5;
    *v10 = v6;
    v9[0] = v4;
    v7 = v3[3];
    *a2 = v3[2];
    a2[1] = v7;
    a2[2] = v3[4];
    *(a2 + 41) = *(v3 + 73);
    return outlined init with copy of MeshResource.Part(v9, &v8);
  }

  __break(1u);
  return result;
}

void (*protocol witness for Collection.subscript.read in conformance MeshPartCollection(void (**a1)(uint64_t a1), unint64_t *a2))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(0xB9uLL);
  }

  v6 = result;
  *a1 = result;
  v7 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v7 < *(*v2 + 16))
  {
    v8 = (*v2 + (v7 << 6));
    v9 = v8[2];
    v10 = v8[3];
    v11 = v8[4];
    *(result + 41) = *(v8 + 73);
    *(result + 1) = v10;
    *(result + 2) = v11;
    *result = v9;
    memmove(result + 64, v8 + 2, 0x39uLL);
    outlined init with copy of MeshResource.Part(v6, v6 + 128);
    return protocol witness for Collection.subscript.read in conformance MeshPartCollection;
  }

  __break(1u);
  return result;
}

void protocol witness for Collection.subscript.read in conformance MeshPartCollection(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 80);
  v1[8] = *(*a1 + 64);
  v1[9] = v2;
  v1[10] = v1[6];
  *(v1 + 169) = *(v1 + 105);
  outlined destroy of MeshResource.Part((v1 + 8));

  free(v1);
}

double MeshPartCollection.init(arrayLiteral:)@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  MeshPartCollection.init(_:)(a1, &v4);
  result = *&v4;
  *a2 = v4;
  return result;
}

double protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance MeshPartCollection@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  MeshPartCollection.init(_:)(a1, &v4);
  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t MeshModelCollection.customMirror.getter@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, unint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v24 = a5;
  v25 = a4;
  v22 = a2;
  v23 = a3;
  v7 = type metadata accessor for Mirror.AncestorRepresentation();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v21 - v12;
  v15 = *v5;
  v14 = v5[1];
  v27 = v15;
  v28 = v14;
  v26 = v15;
  v16 = *MEMORY[0x1E69E7590];
  v17 = type metadata accessor for Mirror.DisplayStyle();
  v18 = *(v17 - 8);
  (*(v18 + 104))(v13, v16, v17);
  (*(v18 + 56))(v13, 0, 1, v17);
  (*(v8 + 104))(v10, *MEMORY[0x1E69E75D8], v7);
  swift_bridgeObjectRetain_n();

  v19 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, v22);
  lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(v23, a1, v19, MEMORY[0x1E69E6340]);
  return Mirror.init<A, B>(_:unlabeledChildren:displayStyle:ancestorRepresentation:)();
}

uint64_t protocol witness for CustomReflectable.customMirror.getter in conformance MeshModelCollection@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X2>, uint64_t *a3@<X3>, unint64_t *a4@<X4>, uint64_t a5@<X8>)
{
  v22 = a3;
  v23 = a4;
  v24 = a5;
  v25 = a1;
  v7 = type metadata accessor for Mirror.AncestorRepresentation();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v21 - v12;
  v15 = *v5;
  v14 = v5[1];
  v27 = v15;
  v28 = v14;
  v26 = v15;
  v16 = *MEMORY[0x1E69E7590];
  v17 = type metadata accessor for Mirror.DisplayStyle();
  v18 = *(v17 - 8);
  (*(v18 + 104))(v13, v16, v17);
  (*(v18 + 56))(v13, 0, 1, v17);
  (*(v8 + 104))(v10, *MEMORY[0x1E69E75D8], v7);
  swift_bridgeObjectRetain_n();

  v19 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, v22);
  lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(v23, a2, v19, MEMORY[0x1E69E6340]);
  return Mirror.init<A, B>(_:unlabeledChildren:displayStyle:ancestorRepresentation:)();
}

char *MeshLevelCollection_v1.init()@<X0>(char **a1@<X8>)
{
  result = _s17RealityFoundation29OrderedIdentifiableCollectionV17dictionaryLiteralACyxq_Gx_q_td_tcfCSS_0A3Kit12MeshResourceCAAE8Level_v1VTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *a1 = result;
  a1[1] = v3;
  return result;
}

void MeshLevelCollection_v1.init(_:)(uint64_t a1@<X0>, char **a2@<X8>)
{
  v3 = _s17RealityFoundation29OrderedIdentifiableCollectionV17dictionaryLiteralACyxq_Gx_q_td_tcfCSS_0A3Kit12MeshResourceCAAE8Level_v1VTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v5 = v4;
  v40 = *(a1 + 16);
  if (v40)
  {
    v6 = 0;
    v7 = (a1 + 60);
    v39 = a1;
    while (v6 < *(a1 + 16))
    {
      v9 = *(v7 - 28);
      v10 = *(v7 - 20);
      v11 = *(v7 - 12);
      v12 = *(v7 - 1);
      v13 = *v7;
      v14 = *(v5 + 2);
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      if (v14 && (v15 = specialized __RawDictionaryStorage.find<A>(_:)(v9, v10), (v16 & 1) != 0))
      {
        v17 = *(*(v5 + 7) + 8 * v15);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
        }

        if ((v17 & 0x8000000000000000) != 0)
        {
          goto LABEL_31;
        }

        if (v17 >= *(v3 + 2))
        {
          goto LABEL_32;
        }

        v18 = &v3[32 * v17];
        *(v18 + 4) = v9;
        *(v18 + 5) = v10;
        *(v18 + 6) = v11;
        *(v18 + 14) = v12;
        v18[60] = v13;

        a1 = v39;
      }

      else
      {
        v42 = v12;
        v43 = v11;
        v41 = v3;
        v19 = *(v3 + 2);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v44 = v9;
        v21 = specialized __RawDictionaryStorage.find<A>(_:)(v9, v10);
        v23 = *(v5 + 2);
        v24 = (v22 & 1) == 0;
        v25 = __OFADD__(v23, v24);
        v26 = v23 + v24;
        if (v25)
        {
          goto LABEL_29;
        }

        v27 = v22;
        if (*(v5 + 3) >= v26)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v37 = v21;
            specialized _NativeDictionary.copy()();
            v21 = v37;
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v26, isUniquelyReferenced_nonNull_native);
          v21 = specialized __RawDictionaryStorage.find<A>(_:)(v9, v10);
          if ((v27 & 1) != (v28 & 1))
          {
            goto LABEL_33;
          }
        }

        v29 = v13;
        if (v27)
        {
          *(*(v5 + 7) + 8 * v21) = v19;
        }

        else
        {
          *&v5[8 * (v21 >> 6) + 64] |= 1 << v21;
          v30 = (*(v5 + 6) + 16 * v21);
          *v30 = v9;
          v30[1] = v10;
          *(*(v5 + 7) + 8 * v21) = v19;
          v31 = *(v5 + 2);
          v25 = __OFADD__(v31, 1);
          v32 = v31 + 1;
          if (v25)
          {
            goto LABEL_30;
          }

          *(v5 + 2) = v32;
        }

        v33 = v41;
        a1 = v39;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v41 + 2) + 1, 1, v41);
        }

        v35 = *(v33 + 2);
        v34 = *(v33 + 3);
        v36 = v33;
        if (v35 >= v34 >> 1)
        {
          v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v35 + 1, 1, v33);
        }

        *(v36 + 2) = v35 + 1;
        v3 = v36;
        v8 = &v36[32 * v35];
        *(v8 + 4) = v44;
        *(v8 + 5) = v10;
        *(v8 + 6) = v43;
        *(v8 + 14) = v42;
        v8[60] = v29;
      }

      ++v6;
      v7 += 32;
      if (v40 == v6)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
LABEL_27:

    *a2 = v3;
    a2[1] = v5;
  }
}

void MeshLevelCollection_v1.subscript.getter(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = v3[1];
  if (!*(v6 + 16) || (v7 = *v4, v8 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v9 & 1) == 0))
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 21) = 0;
    *(a3 + 16) = 0;
    return;
  }

  v10 = *(*(v6 + 56) + 8 * v8);
  if ((v10 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v10 >= *(v7 + 16))
  {
LABEL_10:
    __break(1u);
    return;
  }

  v11 = v7 + 32 * v10;
  v13 = *(v11 + 32);
  v12 = *(v11 + 40);
  v14 = *(v11 + 48);
  v15 = *(v11 + 56);
  LOBYTE(v11) = *(v11 + 60);
  *a3 = v13;
  *(a3 + 8) = v12;
  *(a3 + 16) = v14;
  *(a3 + 24) = v15;
  *(a3 + 28) = v11;
}

void MeshLevelCollection_v1.insert(_:)(uint64_t a1)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 28);
  v7 = v1[1];
  if (*(v7 + 16))
  {
    v8 = *v1;
    v9 = specialized __RawDictionaryStorage.find<A>(_:)(*a1, v2);
    if (v10)
    {
      v11 = *(*(v7 + 56) + 8 * v9);
      if ((v11 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else
      {
        v12 = *(v8 + 16);

        if (v11 < v12)
        {
          return;
        }
      }

      __break(1u);
      return;
    }
  }

  if (v6)
  {
    v13 = 0x100000000;
  }

  else
  {
    v13 = 0;
  }

  specialized OrderedIdentifiableCollection.subscript.setter(v3, v2, v4, v13 | v5, v3, v2);
}

uint64_t MeshLevelCollection_v1.update(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 28);

  specialized OrderedIdentifiableCollection.updateValue(_:forKey:)(v3, v4, v5, v6 | (v7 << 32), v3, v4, a2);

  return swift_bridgeObjectRelease_n();
}

void MeshLevelCollection_v1.Iterator.next()(uint64_t a1@<X8>)
{
  v2 = v1[1];
  v3 = *(*v1 + 16);
  if (v2 == v3)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 21) = 0;
    *(a1 + 16) = 0;
  }

  else if (v2 >= v3)
  {
    __break(1u);
  }

  else
  {
    v4 = *v1 + 32 * v2;
    v6 = *(v4 + 32);
    v5 = *(v4 + 40);
    v7 = *(v4 + 48);
    v8 = *(v4 + 56);
    LOBYTE(v4) = *(v4 + 60);
    *a1 = v6;
    *(a1 + 8) = v5;
    *(a1 + 16) = v7;
    *(a1 + 24) = v8;
    *(a1 + 28) = v4;
    v1[1] = v2 + 1;
  }
}

void MeshLevelCollection_v1.subscript.getter(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (*(*v2 + 16) <= a1)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v3 = *v2 + 32 * a1;
  v5 = *(v3 + 32);
  v4 = *(v3 + 40);
  v6 = *(v3 + 48);
  v7 = *(v3 + 56);
  LOBYTE(v3) = *(v3 + 60);
  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 28) = v3;
}

double (*protocol witness for Collection.subscript.read in conformance MeshLevelCollection_v1(double (*result)(uint64_t a1), unint64_t *a2))(uint64_t a1)
{
  v3 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v3 < *(*v2 + 16))
  {
    v4 = result;
    v5 = *v2 + 32 * v3;
    v7 = *(v5 + 32);
    v6 = *(v5 + 40);
    v8 = *(v5 + 48);
    v9 = *(v5 + 56);
    LOBYTE(v5) = *(v5 + 60);
    *v4 = v7;
    *(v4 + 1) = v6;
    *(v4 + 2) = v8;
    *(v4 + 6) = v9;
    *(v4 + 28) = v5;

    return protocol witness for Collection.subscript.read in conformance MeshLevelCollection_v1;
  }

  __break(1u);
  return result;
}

double protocol witness for Collection.subscript.read in conformance MeshLevelCollection_v1(uint64_t a1)
{

  return result;
}

double MeshLevelCollection_v1.init(arrayLiteral:)@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  MeshLevelCollection_v1.init(_:)(a1, &v4);
  result = *&v4;
  *a2 = v4;
  return result;
}

double protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance MeshLevelCollection_v1@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  MeshLevelCollection_v1.init(_:)(a1, &v4);
  result = *&v4;
  *a2 = v4;
  return result;
}

char *MeshInstanceCollection.init()@<X0>(char **a1@<X8>)
{
  result = _s17RealityFoundation29OrderedIdentifiableCollectionV17dictionaryLiteralACyxq_Gx_q_td_tcfCSS_0A3Kit12MeshResourceCAAE8InstanceVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *a1 = result;
  a1[1] = v3;
  return result;
}

void MeshInstanceCollection.init(_:)(uint64_t a1@<X0>, char **a2@<X8>)
{
  v4 = _s17RealityFoundation29OrderedIdentifiableCollectionV17dictionaryLiteralACyxq_Gx_q_td_tcfCSS_0A3Kit12MeshResourceCAAE8InstanceVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v6 = v5;
  v7 = *(a1 + 16);
  if (!v7)
  {

LABEL_31:
    *a2 = v4;
    a2[1] = v6;
    return;
  }

  v8 = 0;
  v46 = a2;
  v47 = v7 - 1;
  v9 = 32;
  do
  {
    v10 = *(a1 + v9 + 16);
    v49 = *(a1 + v9);
    v50 = v10;
    v11 = *(a1 + v9 + 80);
    v53 = *(a1 + v9 + 64);
    v54 = v11;
    v12 = *(a1 + v9 + 48);
    v51 = *(a1 + v9 + 32);
    v52 = v12;
    v13 = v49;
    if (!*(v6 + 16))
    {
      outlined init with copy of MeshResource.Instance(&v49, v48);
      outlined init with copy of MeshResource.Instance(&v49, v48);
LABEL_11:
      v26 = *(v4 + 2);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v48[0] = v6;
      v28 = specialized __RawDictionaryStorage.find<A>(_:)(v13, *(&v13 + 1));
      v30 = *(v6 + 16);
      v31 = (v29 & 1) == 0;
      v32 = __OFADD__(v30, v31);
      v33 = v30 + v31;
      if (v32)
      {
        goto LABEL_32;
      }

      v34 = v29;
      if (*(v6 + 24) >= v33)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v36 = v28;
          specialized _NativeDictionary.copy()();
          v28 = v36;
          v6 = *&v48[0];
          if (v34)
          {
            goto LABEL_17;
          }

          goto LABEL_19;
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v33, isUniquelyReferenced_nonNull_native);
        v28 = specialized __RawDictionaryStorage.find<A>(_:)(v13, *(&v13 + 1));
        if ((v34 & 1) != (v35 & 1))
        {
          goto LABEL_36;
        }
      }

      v6 = *&v48[0];
      if (v34)
      {
LABEL_17:
        *(*(v6 + 56) + 8 * v28) = v26;
LABEL_21:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 2) + 1, 1, v4);
        }

        v40 = *(v4 + 2);
        v39 = *(v4 + 3);
        if (v40 >= v39 >> 1)
        {
          v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v40 + 1, 1, v4);
        }

        outlined destroy of MeshResource.Instance(&v49);
        *(v4 + 2) = v40 + 1;
        v41 = &v4[96 * v40];
        v42 = v50;
        *(v41 + 2) = v49;
        *(v41 + 3) = v42;
        v43 = v54;
        v45 = v51;
        v44 = v52;
        *(v41 + 6) = v53;
        *(v41 + 7) = v43;
        *(v41 + 4) = v45;
        *(v41 + 5) = v44;
        goto LABEL_26;
      }

LABEL_19:
      *(v6 + 8 * (v28 >> 6) + 64) |= 1 << v28;
      *(*(v6 + 48) + 16 * v28) = v13;
      *(*(v6 + 56) + 8 * v28) = v26;
      v37 = *(v6 + 16);
      v32 = __OFADD__(v37, 1);
      v38 = v37 + 1;
      if (v32)
      {
        goto LABEL_33;
      }

      *(v6 + 16) = v38;

      goto LABEL_21;
    }

    outlined init with copy of MeshResource.Instance(&v49, v48);
    outlined init with copy of MeshResource.Instance(&v49, v48);
    v14 = specialized __RawDictionaryStorage.find<A>(_:)(v13, *(&v13 + 1));
    if ((v15 & 1) == 0)
    {
      goto LABEL_11;
    }

    v16 = *(*(v6 + 56) + 8 * v14);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
    }

    outlined destroy of MeshResource.Instance(&v49);
    if ((v16 & 0x8000000000000000) != 0)
    {
      goto LABEL_34;
    }

    if (v16 >= *(v4 + 2))
    {
      goto LABEL_35;
    }

    v17 = &v4[96 * v16];
    v18 = *(v17 + 3);
    v48[0] = *(v17 + 2);
    v48[1] = v18;
    v19 = *(v17 + 4);
    v20 = *(v17 + 5);
    v21 = *(v17 + 7);
    v48[4] = *(v17 + 6);
    v48[5] = v21;
    v48[2] = v19;
    v48[3] = v20;
    v22 = v54;
    v24 = v51;
    v23 = v52;
    *(v17 + 6) = v53;
    *(v17 + 7) = v22;
    *(v17 + 4) = v24;
    *(v17 + 5) = v23;
    v25 = v50;
    *(v17 + 2) = v49;
    *(v17 + 3) = v25;
    outlined destroy of MeshResource.Instance(v48);
LABEL_26:
    if (v47 == v8)
    {

      a2 = v46;
      goto LABEL_31;
    }

    ++v8;
    v9 += 96;
  }

  while (v8 < *(a1 + 16));
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

unint64_t MeshInstanceCollection.subscript.getter@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = v3[1];
  if (*(v6 + 16) && (v7 = *v4, result = specialized __RawDictionaryStorage.find<A>(_:)(result, a2), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + 8 * result);
    if ((v9 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v9 < *(v7 + 16))
    {
      v10 = (v7 + 96 * v9);
      v11 = v10[3];
      v20[0] = v10[2];
      v20[1] = v11;
      v12 = v10[4];
      v13 = v10[5];
      v14 = v10[7];
      v20[4] = v10[6];
      v20[5] = v14;
      v20[2] = v12;
      v20[3] = v13;
      v15 = v10[3];
      *a3 = v10[2];
      a3[1] = v15;
      v16 = v10[4];
      v17 = v10[5];
      v18 = v10[7];
      a3[4] = v10[6];
      a3[5] = v18;
      a3[2] = v16;
      a3[3] = v17;
      return outlined init with copy of MeshResource.Instance(v20, &v19);
    }

    __break(1u);
  }

  else
  {
    a3[4] = 0u;
    a3[5] = 0u;
    a3[2] = 0u;
    a3[3] = 0u;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t MeshInstanceCollection.insert(_:)(_OWORD *a1)
{
  v3 = a1[1];
  v16[0] = *a1;
  v16[1] = v3;
  v4 = a1[5];
  v16[4] = a1[4];
  v16[5] = v4;
  v5 = a1[3];
  v16[2] = a1[2];
  v16[3] = v5;
  v6 = v1[1];
  if (*(v6 + 16) && (v7 = *v1, result = specialized __RawDictionaryStorage.find<A>(_:)(*&v16[0], *(&v16[0] + 1)), (v9 & 1) != 0))
  {
    v10 = *(*(v6 + 56) + 8 * result);
    if ((v10 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v11 = *(v7 + 16);
      result = outlined destroy of MeshResource.Instance(v16);
      if (v10 < v11)
      {
        return 0;
      }
    }

    __break(1u);
  }

  else
  {
    v12 = a1[3];
    v15[2] = a1[2];
    v15[3] = v12;
    v13 = a1[5];
    v15[4] = a1[4];
    v15[5] = v13;
    v14 = a1[1];
    v15[0] = *a1;
    v15[1] = v14;

    specialized OrderedIdentifiableCollection.subscript.setter(v15, *&v16[0], *(&v16[0] + 1));
    return 1;
  }

  return result;
}

uint64_t MeshInstanceCollection.update(_:)@<X0>(_OWORD *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = a1[3];
  v7[2] = a1[2];
  v7[3] = v3;
  v4 = a1[5];
  v7[4] = a1[4];
  v7[5] = v4;
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;

  specialized OrderedIdentifiableCollection.updateValue(_:forKey:)(v7, *&v7[0], *(&v7[0] + 1), a2);

  return outlined destroy of MeshResource.Instance(v7);
}

uint64_t MeshInstanceCollection.Iterator.next()@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[1];
  v3 = *(*v1 + 16);
  if (v2 == v3)
  {
    a1[4] = 0u;
    a1[5] = 0u;
    a1[2] = 0u;
    a1[3] = 0u;
    *a1 = 0u;
    a1[1] = 0u;
  }

  else if (v2 >= v3)
  {
    __break(1u);
  }

  else
  {
    v4 = (*v1 + 96 * v2);
    v5 = v4[3];
    v15[0] = v4[2];
    v15[1] = v5;
    v6 = v4[4];
    v7 = v4[5];
    v8 = v4[7];
    v15[4] = v4[6];
    v15[5] = v8;
    v15[2] = v6;
    v15[3] = v7;
    v9 = v4[3];
    *a1 = v4[2];
    a1[1] = v9;
    v10 = v4[4];
    v11 = v4[5];
    v12 = v4[7];
    a1[4] = v4[6];
    a1[5] = v12;
    a1[2] = v10;
    a1[3] = v11;
    v1[1] = v2 + 1;
    return outlined init with copy of MeshResource.Instance(v15, &v14);
  }

  return result;
}

unint64_t MeshInstanceCollection.subscript.getter@<X0>(unint64_t result@<X0>, _OWORD *a2@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(*v2 + 16) > result)
  {
    v3 = (*v2 + 96 * result);
    v4 = v3[3];
    v13[0] = v3[2];
    v13[1] = v4;
    v5 = v3[4];
    v6 = v3[5];
    v7 = v3[7];
    v13[4] = v3[6];
    v13[5] = v7;
    v13[2] = v5;
    v13[3] = v6;
    v8 = v3[3];
    *a2 = v3[2];
    a2[1] = v8;
    v9 = v3[4];
    v10 = v3[5];
    v11 = v3[7];
    a2[4] = v3[6];
    a2[5] = v11;
    a2[2] = v9;
    a2[3] = v10;
    return outlined init with copy of MeshResource.Instance(v13, &v12);
  }

  __break(1u);
  return result;
}

void (*protocol witness for Collection.subscript.read in conformance MeshInstanceCollection(void (**a1)(uint64_t a1), unint64_t *a2))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(0x120uLL);
  }

  v6 = result;
  *a1 = result;
  v7 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v7 < *(*v2 + 16))
  {
    v8 = (*v2 + 96 * v7);
    v9 = v8[3];
    *result = v8[2];
    *(result + 1) = v9;
    v10 = v8[4];
    v11 = v8[5];
    v12 = v8[7];
    *(result + 4) = v8[6];
    *(result + 5) = v12;
    *(result + 2) = v10;
    *(result + 3) = v11;
    memmove(result + 96, v8 + 2, 0x60uLL);
    outlined init with copy of MeshResource.Instance(v6, v6 + 192);
    return protocol witness for Collection.subscript.read in conformance MeshInstanceCollection;
  }

  __break(1u);
  return result;
}

void protocol witness for Collection.subscript.read in conformance MeshInstanceCollection(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 144);
  v1[14] = *(*a1 + 128);
  v1[15] = v2;
  v3 = v1[11];
  v1[16] = v1[10];
  v1[17] = v3;
  v4 = v1[7];
  v1[12] = v1[6];
  v1[13] = v4;
  outlined destroy of MeshResource.Instance((v1 + 12));

  free(v1);
}

double MeshInstanceCollection.init(arrayLiteral:)@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  MeshInstanceCollection.init(_:)(a1, &v4);
  result = *&v4;
  *a2 = v4;
  return result;
}

double protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance MeshInstanceCollection@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  MeshInstanceCollection.init(_:)(a1, &v4);
  result = *&v4;
  *a2 = v4;
  return result;
}

char *MeshSkeletonCollection.init()@<X0>(char **a1@<X8>)
{
  result = _s17RealityFoundation29OrderedIdentifiableCollectionV17dictionaryLiteralACyxq_Gx_q_td_tcfCSS_0A3Kit12MeshResourceCAAE8SkeletonVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *a1 = result;
  a1[1] = v3;
  return result;
}

void MeshSkeletonCollection.init(_:)(uint64_t a1@<X0>, char **a2@<X8>)
{
  v3 = _s17RealityFoundation29OrderedIdentifiableCollectionV17dictionaryLiteralACyxq_Gx_q_td_tcfCSS_0A3Kit12MeshResourceCAAE8SkeletonVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v5 = v4;
  v36 = *(a1 + 16);
  if (v36)
  {
    v6 = 0;
    v7 = (a1 + 48);
    while (v6 < *(a1 + 16))
    {
      v10 = *(v7 - 2);
      v9 = *(v7 - 1);
      v11 = *v7;
      v12 = *(v5 + 16);
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      if (v12 && (v13 = specialized __RawDictionaryStorage.find<A>(_:)(v10, v9), (v14 & 1) != 0))
      {
        v15 = *(*(v5 + 56) + 8 * v13);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
        }

        if ((v15 & 0x8000000000000000) != 0)
        {
          goto LABEL_31;
        }

        if (v15 >= *(v3 + 2))
        {
          goto LABEL_32;
        }

        v16 = &v3[24 * v15];
        *(v16 + 4) = v10;
        *(v16 + 5) = v9;
        *(v16 + 6) = v11;
      }

      else
      {
        v17 = v11;
        v18 = a1;
        v19 = *(v3 + 2);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v37 = v10;
        v21 = specialized __RawDictionaryStorage.find<A>(_:)(v10, v9);
        v23 = *(v5 + 16);
        v24 = (v22 & 1) == 0;
        v25 = __OFADD__(v23, v24);
        v26 = v23 + v24;
        if (v25)
        {
          goto LABEL_29;
        }

        v27 = v22;
        if (*(v5 + 24) >= v26)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v34 = v21;
            specialized _NativeDictionary.copy()();
            v21 = v34;
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v26, isUniquelyReferenced_nonNull_native);
          v21 = specialized __RawDictionaryStorage.find<A>(_:)(v37, v9);
          if ((v27 & 1) != (v28 & 1))
          {
            goto LABEL_33;
          }
        }

        a1 = v18;
        if (v27)
        {
          *(*(v5 + 56) + 8 * v21) = v19;
        }

        else
        {
          *(v5 + 8 * (v21 >> 6) + 64) |= 1 << v21;
          v29 = (*(v5 + 48) + 16 * v21);
          *v29 = v37;
          v29[1] = v9;
          *(*(v5 + 56) + 8 * v21) = v19;
          v30 = *(v5 + 16);
          v25 = __OFADD__(v30, 1);
          v31 = v30 + 1;
          if (v25)
          {
            goto LABEL_30;
          }

          *(v5 + 16) = v31;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v3 + 2) + 1, 1, v3);
        }

        v33 = *(v3 + 2);
        v32 = *(v3 + 3);
        if (v33 >= v32 >> 1)
        {
          v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1, v3);
        }

        *(v3 + 2) = v33 + 1;
        v8 = &v3[24 * v33];
        *(v8 + 4) = v37;
        *(v8 + 5) = v9;
        *(v8 + 6) = v17;
      }

      ++v6;
      v7 += 3;
      if (v36 == v6)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
LABEL_27:

    *a2 = v3;
    a2[1] = v5;
  }
}

void MeshSkeletonCollection.subscript.getter(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v6 = v3[1];
  if (!*(v6 + 16) || (v7 = *v4, v8 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v9 & 1) == 0))
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    return;
  }

  v10 = *(*(v6 + 56) + 8 * v8);
  if ((v10 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v10 >= *(v7 + 16))
  {
LABEL_10:
    __break(1u);
    return;
  }

  v11 = (v7 + 24 * v10);
  v12 = v11[5];
  v13 = v11[6];
  *a3 = v11[4];
  a3[1] = v12;
  a3[2] = v13;
}

void MeshSkeletonCollection.insert(_:)(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = v1[1];
  if (!*(v5 + 16) || (v6 = *v1, v7 = specialized __RawDictionaryStorage.find<A>(_:)(*a1, v2), (v8 & 1) == 0))
  {

    specialized OrderedIdentifiableCollection.subscript.setter(v3, v2, v4, v3, v2);
    return;
  }

  v9 = *(*(v5 + 56) + 8 * v7);
  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v10 = *(v6 + 16);

  if (v9 >= v10)
  {
LABEL_8:
    __break(1u);
  }
}

uint64_t MeshSkeletonCollection.update(_:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];

  specialized OrderedIdentifiableCollection.updateValue(_:forKey:)(v3, v4, v5, v3, v4, a2);

  return swift_bridgeObjectRelease_n();
}

void MeshModelCollection.removeAll()()
{

  *v0 = MEMORY[0x1E69E7CC0];

  v0[1] = MEMORY[0x1E69E7CC8];
}

void MeshSkeletonCollection.Iterator.next()(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = *(*v1 + 16);
  if (v2 == v3)
  {
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  else if (v2 >= v3)
  {
    __break(1u);
  }

  else
  {
    v4 = (*v1 + 24 * v2);
    v5 = v4[5];
    v6 = v4[6];
    *a1 = v4[4];
    a1[1] = v5;
    a1[2] = v6;
    v1[1] = v2 + 1;
  }
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance MeshModelCollection(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v4 = a3(*v3, v3[1]);

  return v4;
}

void MeshSkeletonCollection.subscript.getter(unint64_t a1@<X0>, void *a2@<X8>)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (*(*v2 + 16) <= a1)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v3 = (*v2 + 24 * a1);
  v4 = v3[5];
  v5 = v3[6];
  *a2 = v3[4];
  a2[1] = v4;
  a2[2] = v5;
}

double (*protocol witness for Collection.subscript.read in conformance MeshSkeletonCollection(double (*result)(uint64_t a1), unint64_t *a2))(uint64_t a1)
{
  v3 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v3 < *(*v2 + 16))
  {
    v4 = result;
    v5 = (*v2 + 24 * v3);
    v6 = v5[5];
    v7 = v5[6];
    *v4 = v5[4];
    *(v4 + 1) = v6;
    *(v4 + 2) = v7;

    return protocol witness for Collection.subscript.read in conformance MeshLevelCollection_v1;
  }

  __break(1u);
  return result;
}

double MeshSkeletonCollection.init(arrayLiteral:)@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  MeshSkeletonCollection.init(_:)(a1, &v4);
  result = *&v4;
  *a2 = v4;
  return result;
}

double protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance MeshSkeletonCollection@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  MeshSkeletonCollection.init(_:)(a1, &v4);
  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t MeshResource.Part.id.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

void MeshResource.Part.id.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
}

uint64_t MeshResource.Part.materialIndex.setter(uint64_t result)
{
  *(v1 + 48) = result;
  *(v1 + 56) = 0;
  return result;
}

uint64_t MeshResource.Part.materialIndex.modify(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
    *(*result + 56) = 0;
  }

  return result;
}

void MeshResource.Part.triangleIndices.setter(uint64_t a1)
{
  v1 = *(a1 + 48);
  v15[2] = *(a1 + 32);
  v15[3] = v1;
  v15[4] = *(a1 + 64);
  v16 = *(a1 + 80);
  v2 = *(a1 + 16);
  v15[0] = *a1;
  v15[1] = v2;
  if (one-time initialization token for triangleIndices != -1)
  {
    v10 = a1;
    swift_once();
    a1 = v10;
  }

  v3 = static MeshBuffers.triangleIndices;
  v4 = *algn_1EBEAD128;
  v5 = word_1EBEAD130;
  v6 = HIBYTE(word_1EBEAD130);
  if (*&v15[0])
  {
    v13[0] = *&v15[0];
    *&v13[3] = *(a1 + 24);
    *&v13[5] = *(a1 + 40);
    v14[0] = *(a1 + 56);
    *(v14 + 9) = *(a1 + 65);
    *&v13[1] = *(a1 + 8);
    v12[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLVy_s6UInt32VGMd, &_s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLVy_s6UInt32VGMR);
    v12[4] = &protocol witness table for MeshBufferDictionary.BufferEntry<A>;
    v7 = swift_allocObject();
    v12[0] = v7;
    swift_bridgeObjectRetain_n();
    outlined init with copy of [String : String](v15, &v11, &_s17RealityFoundation10MeshBufferVys6UInt32VGSgMd, &_s17RealityFoundation10MeshBufferVys6UInt32VGSgMR);
    if (v6)
    {
      v8 = 256;
    }

    else
    {
      v8 = 0;
    }

    _s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLV_6bufferAFy_xGqd___AA0cD0VyxGtc7ElementQyd__RszAA0cD8SemanticRd__lufCAA0C14JointInfluenceV_AA0C7BuffersO0P0Vy_APGTt2B5Tm(v3, v4, v8 | v5, v13, v7 + 16);
    specialized Dictionary.subscript.setter(v12, v3, v4, v8 | v5);
    outlined destroy of BodyTrackingComponent?(v15, &_s17RealityFoundation10MeshBufferVys6UInt32VGSgMd, &_s17RealityFoundation10MeshBufferVys6UInt32VGSgMR);
  }

  else
  {
    memset(v13, 0, 40);
    if (HIBYTE(word_1EBEAD130))
    {
      v9 = 256;
    }

    else
    {
      v9 = 0;
    }

    specialized Dictionary.subscript.setter(v13, v3, v4, v9 | v5);
  }
}

void (*MeshResource.Part.triangleIndices.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x1C0uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 440) = v1;
  v5 = *v1;
  if (one-time initialization token for triangleIndices == -1)
  {
    if (*(v5 + 16))
    {
      goto LABEL_6;
    }

LABEL_12:
    *(v4 + 256) = 0;
    *(v4 + 224) = 0u;
    *(v4 + 240) = 0u;
    *(v4 + 192) = 0u;
    *(v4 + 208) = 0u;
    *(v4 + 176) = 0u;
    return MeshResource.Part.triangleIndices.modify;
  }

  swift_once();
  if (!*(v5 + 16))
  {
    goto LABEL_12;
  }

LABEL_6:
  if (HIBYTE(word_1EBEAD130))
  {
    v6 = 256;
  }

  else
  {
    v6 = 0;
  }

  v7 = specialized __RawDictionaryStorage.find<A>(_:)(static MeshBuffers.triangleIndices, *algn_1EBEAD128, v6 | word_1EBEAD130);
  if ((v8 & 1) == 0)
  {
    goto LABEL_12;
  }

  outlined init with copy of __REAssetService(*(v5 + 56) + 40 * v7, v4 + 352);
  outlined init with take of BindableDataInternal((v4 + 352), v4 + 264);
  v9 = *(v4 + 288);
  v10 = *(v4 + 296);
  __swift_project_boxed_opaque_existential_1((v4 + 264), v9);
  (*(v10 + 56))(MEMORY[0x1E69E7668], v9, v10);
  __swift_destroy_boxed_opaque_existential_1((v4 + 264));
  return MeshResource.Part.triangleIndices.modify;
}

void MeshResource.Part.triangleIndices.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = (*a1 + 264);
  v4 = *(*a1 + 224);
  v3[2] = *(*a1 + 208);
  v3[3] = v4;
  v3[4] = v2[15];
  *(v2 + 344) = *(v2 + 256);
  v5 = v2[12];
  *v3 = v2[11];
  v3[1] = v5;
  v7 = static MeshBuffers.triangleIndices;
  v6 = *algn_1EBEAD128;
  v8 = word_1EBEAD130;
  v9 = HIBYTE(word_1EBEAD130);
  v10 = *(v2 + 33);
  if (a2)
  {
    if (v10)
    {
      *v2 = v10;
      *(v2 + 24) = *(v2 + 200);
      *(v2 + 40) = *(v2 + 216);
      *(v2 + 56) = *(v2 + 232);
      *(v2 + 65) = *(v2 + 241);
      *(v2 + 8) = *(v2 + 184);
      *(&v23 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLVy_s6UInt32VGMd, &_s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLVy_s6UInt32VGMR);
      v24 = &protocol witness table for MeshBufferDictionary.BufferEntry<A>;
      v11 = swift_allocObject();
      *&v22 = v11;

      outlined init with copy of [String : String](v3, (v2 + 22), &_s17RealityFoundation10MeshBufferVys6UInt32VGSgMd, &_s17RealityFoundation10MeshBufferVys6UInt32VGSgMR);

      outlined init with copy of [String : String](v3, (v2 + 22), &_s17RealityFoundation10MeshBufferVys6UInt32VGSgMd, &_s17RealityFoundation10MeshBufferVys6UInt32VGSgMR);
      if (v9)
      {
        v12 = 256;
      }

      else
      {
        v12 = 0;
      }

      _s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLV_6bufferAFy_xGqd___AA0cD0VyxGtc7ElementQyd__RszAA0cD8SemanticRd__lufCAA0C14JointInfluenceV_AA0C7BuffersO0P0Vy_APGTt2B5Tm(v7, v6, v12 | v8, v2, v11 + 16);
      specialized Dictionary.subscript.setter(&v22, v7, v6, v12 | v8);
      outlined destroy of BodyTrackingComponent?(v3, &_s17RealityFoundation10MeshBufferVys6UInt32VGSgMd, &_s17RealityFoundation10MeshBufferVys6UInt32VGSgMR);
    }

    else
    {
      v24 = 0;
      v22 = 0u;
      v23 = 0u;
      if (HIBYTE(word_1EBEAD130))
      {
        v18 = 256;
      }

      else
      {
        v18 = 0;
      }

      specialized Dictionary.subscript.setter(&v22, v7, v6, v18 | v8);
    }

    v19 = v2[14];
    v2[24] = v2[13];
    v2[25] = v19;
    v2[26] = v2[15];
    *(v2 + 432) = *(v2 + 256);
    v20 = v2[12];
    v2[22] = v2[11];
    v2[23] = v20;
    v17 = (v2 + 22);
  }

  else
  {
    if (!v10)
    {
      v24 = 0;
      v22 = 0u;
      v23 = 0u;
      if (HIBYTE(word_1EBEAD130))
      {
        v21 = 256;
      }

      else
      {
        v21 = 0;
      }

      specialized Dictionary.subscript.setter(&v22, v7, v6, v21 | v8);
      goto LABEL_18;
    }

    *(v2 + 11) = v10;
    v13 = *(v2 + 200);
    v14 = *(v2 + 232);
    v2[8] = *(v2 + 216);
    v2[9] = v14;
    *(v2 + 153) = *(v2 + 241);
    v2[6] = *(v2 + 184);
    v2[7] = v13;
    *(&v23 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLVy_s6UInt32VGMd, &_s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLVy_s6UInt32VGMR);
    v24 = &protocol witness table for MeshBufferDictionary.BufferEntry<A>;
    v15 = swift_allocObject();
    *&v22 = v15;
    swift_bridgeObjectRetain_n();
    outlined init with copy of [String : String](v3, (v2 + 22), &_s17RealityFoundation10MeshBufferVys6UInt32VGSgMd, &_s17RealityFoundation10MeshBufferVys6UInt32VGSgMR);
    if (v9)
    {
      v16 = 256;
    }

    else
    {
      v16 = 0;
    }

    _s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLV_6bufferAFy_xGqd___AA0cD0VyxGtc7ElementQyd__RszAA0cD8SemanticRd__lufCAA0C14JointInfluenceV_AA0C7BuffersO0P0Vy_APGTt2B5Tm(v7, v6, v16 | v8, v2 + 88, v15 + 16);
    specialized Dictionary.subscript.setter(&v22, v7, v6, v16 | v8);
    v17 = v3;
  }

  outlined destroy of BodyTrackingComponent?(v17, &_s17RealityFoundation10MeshBufferVys6UInt32VGSgMd, &_s17RealityFoundation10MeshBufferVys6UInt32VGSgMR);
LABEL_18:

  free(v2);
}

uint64_t key path setter for MeshResource.Part.subscript<A>(_:) : <A>MeshResource.PartA(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 48);
  v6 = *(a1 + 16);
  v21 = *(a1 + 32);
  v22 = v5;
  v7 = *(a1 + 48);
  v23 = *(a1 + 64);
  v8 = *(a1 + 16);
  v20[0] = *a1;
  v20[1] = v8;
  v18[1] = v6;
  v18[2] = v21;
  v9 = *(a1 + 64);
  v18[3] = v7;
  v18[4] = v9;
  v10 = *(a3 + a4 - 16);
  v11 = *(a3 + a4 - 8);
  v24 = *(a1 + 80);
  v19 = *(a1 + 80);
  v18[0] = v20[0];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for MeshBuffer(255, AssociatedTypeWitness, v13, v14);
  v15 = type metadata accessor for Optional();
  (*(*(v15 - 8) + 16))(v17, v20, v15);
  return specialized MeshResource.Part.subscript.setter(v18, a3, v10, v11);
}

void (*MeshResource.Part.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(char **a1, char a2)
{
  v8 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x188uLL);
  }

  v10 = v9;
  *a1 = v9;
  v9[45] = a4;
  v9[46] = v4;
  v9[44] = a3;
  v11 = *(a3 - 8);
  v12 = v11;
  v9[47] = v11;
  if (v8)
  {
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v13 = malloc(*(v11 + 64));
  }

  *(v10 + 384) = v13;
  (*(v12 + 16))();
  MeshBufferDictionary.subscript.getter(*v4, a3, a4, v10);
  return MeshResource.Part.subscript.modify;
}

void MeshResource.Part.subscript.modify(char **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v4 = *(v2 + 2);
    v3 = *(v2 + 3);
    v5 = *(v2 + 1);
    *(v2 + 13) = v4;
    *(v2 + 14) = v3;
    v6 = *(v2 + 3);
    *(v2 + 15) = *(v2 + 4);
    v7 = *(v2 + 1);
    v8 = *v2;
    *(v2 + 11) = *v2;
    *(v2 + 12) = v7;
    v27 = v4;
    v28 = v6;
    v29 = *(v2 + 4);
    v10 = *(v2 + 47);
    v9 = *(v2 + 48);
    v11 = *(v2 + 45);
    v12 = *(v2 + 44);
    v2[256] = v2[80];
    v30 = v2[80];
    v25 = v8;
    v26 = v5;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    type metadata accessor for MeshBuffer(255, AssociatedTypeWitness, v14, v15);
    v16 = type metadata accessor for Optional();
    v17 = *(v16 - 8);
    (*(v17 + 16))(v2 + 264, v2 + 176, v16);
    specialized MeshResource.Part.subscript.setter(&v25, v9, v12, v11);
    (*(v10 + 8))(v9, v12);
    v18 = *(v2 + 3);
    *(v2 + 120) = *(v2 + 2);
    *(v2 + 136) = v18;
    *(v2 + 152) = *(v2 + 4);
    v2[168] = v2[80];
    v19 = *(v2 + 1);
    *(v2 + 88) = *v2;
    *(v2 + 104) = v19;
    (*(v17 + 8))(v2 + 88, v16);
  }

  else
  {
    v20 = *(v2 + 47);
    v9 = *(v2 + 48);
    v21 = *(v2 + 45);
    v22 = *(v2 + 44);
    v23 = *(v2 + 3);
    v27 = *(v2 + 2);
    v28 = v23;
    v29 = *(v2 + 4);
    v30 = v2[80];
    v24 = *(v2 + 1);
    v25 = *v2;
    v26 = v24;
    specialized MeshResource.Part.subscript.setter(&v25, v9, v22, v21);
    (*(v20 + 8))(v9, v22);
  }

  free(v9);

  free(v2);
}

uint64_t protocol witness for MeshBufferContainer.subscript.setter in conformance MeshResource.Part(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  specialized MeshResource.Part.subscript.setter(a1, a2, a3, a4);
  v6 = *(*(a3 - 8) + 8);

  return v6(a2, a3);
}

void (*protocol witness for MeshBufferContainer.subscript.modify in conformance MeshResource.Part(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  *a1 = v8;
  v8[4] = MeshResource.Part.subscript.modify(v8, a2, a3, a4);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

double protocol witness for Identifiable.id.getter in conformance MeshResource.Part@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  a1[1] = v2;

  return result;
}

uint64_t MeshResource.Model.id.getter()
{
  v1 = *v0;

  return v1;
}

void MeshResource.Model.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

double MeshResource.Model.init(id:parts:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = a1;
  *(a4 + 8) = a2;
  MeshPartCollection.init(_:)(a3, &v6);
  *(a4 + 16) = v6;
  MeshLevelCollection_v1.init(_:)(MEMORY[0x1E69E7CC0], &v6);
  result = *&v6;
  *(a4 + 32) = v6;
  return result;
}

void MeshResource.Model.init(id:descriptors:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  type metadata accessor for MeshResource();
  v9 = MeshResource.init(from:)(a3);
  if (v4)
  {
  }

  else
  {
    v17[7] = v9;
    MeshResource.Contents.init(_:)(*(v9 + 16), v17);
    v10 = v17[0];

    if (v10[2])
    {
      v11 = v10[6];
      v16 = a1;
      v13 = v10[7];
      v12 = v10[8];
      v14 = v10[9];

      *a4 = v16;
      a4[1] = a2;
      a4[2] = v11;
      a4[3] = v13;
      a4[4] = v12;
      a4[5] = v14;
    }

    else
    {

      lazy protocol witness table accessor for type MeshResourceError and conformance MeshResourceError();
      swift_allocError();
      *v15 = xmmword_1C18A4F00;
      swift_willThrow();
    }
  }
}

uint64_t static MeshResource.generate(from:)(uint64_t a1)
{
  type metadata accessor for MeshResource();

  return MeshResource.init(from:)(v1);
}

{
  *(v1 + 312) = a1;
  return MEMORY[0x1EEE6DFA0](static MeshResource.generate(from:), 0, 0);
}

{
  v1[2] = type metadata accessor for MainActor();
  v1[3] = static MainActor.shared.getter();
  type metadata accessor for MeshResource();

  v3 = swift_task_alloc();
  v1[4] = v3;
  *v3 = v1;
  v3[1] = static MeshResource.generate(from:);

  return MeshResource.init(from:)(a1);
}

{
  v4 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v6;
    v8 = static MeshResource.generate(from:);
  }

  else
  {
    *(v4 + 48) = a1;
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v9;
    v8 = static MeshResource.generate(from:);
  }

  return MEMORY[0x1EEE6DFA0](v8, v5, v7);
}

double protocol witness for Identifiable.id.getter in conformance MeshResource.Model@<D0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;

  return result;
}

uint64_t MeshResource.Instance.id.getter()
{
  v1 = *v0;

  return v1;
}

void MeshResource.Instance.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t MeshResource.Instance.model.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void MeshResource.Instance.model.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

void MeshResource.Instance.transform.setter(__n128 a1, __n128 a2, __n128 a3, __n128 a4)
{
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = a4;
}

uint64_t MeshResource.Instance.init(id:model:at:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, __int128 *a5@<X4>, uint64_t a6@<X8>)
{
  if (a5[4])
  {
    v6 = *&zmmword_1C1887630[48];
    v7 = *&zmmword_1C1887630[32];
    v8 = *&zmmword_1C1887630[16];
    v9 = *zmmword_1C1887630;
  }

  else
  {
    v7 = a5[2];
    v6 = a5[3];
    v9 = *a5;
    v8 = a5[1];
  }

  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = v9;
  *(a6 + 48) = v8;
  *(a6 + 64) = v7;
  *(a6 + 80) = v6;
  return result;
}

double MeshResource.Contents.models.getter@<D0>(uint64_t *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;

  return result;
}

__n128 MeshResource.Contents.models.setter(__n128 *a1)
{

  result = *a1;
  *v1 = *a1;
  return result;
}

double MeshResource.Model.parts.getter@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;

  return result;
}

__n128 MeshResource.Model.parts.setter(__n128 *a1)
{

  result = *a1;
  v1[1] = *a1;
  return result;
}

char *MeshResource.Contents.init()@<X0>(char **a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  *a1 = _s17RealityFoundation29OrderedIdentifiableCollectionV17dictionaryLiteralACyxq_Gx_q_td_tcfCSS_0A3Kit12MeshResourceCAAE5ModelVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  a1[1] = v3;
  a1[2] = _s17RealityFoundation29OrderedIdentifiableCollectionV17dictionaryLiteralACyxq_Gx_q_td_tcfCSS_0A3Kit12MeshResourceCAAE8InstanceVTt0g5Tf4g_n(v2);
  a1[3] = v4;
  result = _s17RealityFoundation29OrderedIdentifiableCollectionV17dictionaryLiteralACyxq_Gx_q_td_tcfCSS_0A3Kit12MeshResourceCAAE8SkeletonVTt0g5Tf4g_n(v2);
  a1[4] = result;
  a1[5] = v6;
  return result;
}

void MeshResource.Contents.init(_:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = MEMORY[0x1E69E7CC0];
  *&v83 = _s17RealityFoundation29OrderedIdentifiableCollectionV17dictionaryLiteralACyxq_Gx_q_td_tcfCSS_0A3Kit12MeshResourceCAAE5ModelVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(&v83 + 1) = v5;
  *&v84 = _s17RealityFoundation29OrderedIdentifiableCollectionV17dictionaryLiteralACyxq_Gx_q_td_tcfCSS_0A3Kit12MeshResourceCAAE8InstanceVTt0g5Tf4g_n(v4);
  *(&v84 + 1) = v6;
  v7 = _s17RealityFoundation29OrderedIdentifiableCollectionV17dictionaryLiteralACyxq_Gx_q_td_tcfCSS_0A3Kit12MeshResourceCAAE8SkeletonVTt0g5Tf4g_n(v4);
  v85 = v7;
  v86 = v8;
  if (!a1)
  {
    v60 = v7;
    v61 = v8;
    goto LABEL_52;
  }

  v9 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SSTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  ModelCount = REMeshAssetGetModelCount();
  if (ModelCount < 0)
  {
    goto LABEL_60;
  }

  v70 = a2;
  v76 = a1;
  if (ModelCount)
  {
    v11 = 0;
    v74 = ModelCount;
    do
    {
      REMeshAssetGetModelName();
      v13 = String.init(cString:)();
      v15 = v14;
      v16 = specialized static MeshResource.Part.unpack(coreAsset:modelIndex:)(a1, v11);

      MeshPartCollection.init(_:)(v16, v87);
      v17 = v87[0];
      MeshLevelCollection_v1.init(_:)(MEMORY[0x1E69E7CC0], v87);
      v18 = v87[0];
      if (*(*(&v83 + 1) + 16) && (v19 = specialized __RawDictionaryStorage.find<A>(_:)(v13, v15), (v20 & 1) != 0))
      {
        v21 = *(*(*(&v83 + 1) + 56) + 8 * v19);
        if ((v21 & 0x8000000000000000) != 0)
        {
          goto LABEL_55;
        }

        v22 = *(v83 + 16);

        if (v21 >= v22)
        {
          goto LABEL_56;
        }
      }

      else
      {
        v88[0] = v13;
        v88[1] = v15;
        v89 = v17;
        v90 = v18;

        specialized OrderedIdentifiableCollection.subscript.setter(v88, v13, v15);
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v87[0] = v9;
      v25 = specialized __RawDictionaryStorage.find<A>(_:)(v11);
      v26 = v9[2];
      v27 = (v24 & 1) == 0;
      v28 = v26 + v27;
      if (__OFADD__(v26, v27))
      {
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
        goto LABEL_62;
      }

      v29 = v24;
      if (v9[3] >= v28)
      {
        a1 = v76;
        if (isUniquelyReferenced_nonNull_native)
        {
          v9 = *&v87[0];
          if (v24)
          {
            goto LABEL_5;
          }
        }

        else
        {
          specialized _NativeDictionary.copy()();
          v9 = *&v87[0];
          if (v29)
          {
            goto LABEL_5;
          }
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v28, isUniquelyReferenced_nonNull_native);
        v30 = specialized __RawDictionaryStorage.find<A>(_:)(v11);
        a1 = v76;
        if ((v29 & 1) != (v31 & 1))
        {
          goto LABEL_63;
        }

        v25 = v30;
        v9 = *&v87[0];
        if (v29)
        {
LABEL_5:
          v12 = (v9[7] + 16 * v25);
          *v12 = v13;
          v12[1] = v15;

          goto LABEL_6;
        }
      }

      v9[(v25 >> 6) + 8] |= 1 << v25;
      *(v9[6] + 8 * v25) = v11;
      v32 = (v9[7] + 16 * v25);
      *v32 = v13;
      v32[1] = v15;
      v33 = v9[2];
      v34 = __OFADD__(v33, 1);
      v35 = v33 + 1;
      if (v34)
      {
        goto LABEL_54;
      }

      v9[2] = v35;
LABEL_6:
      ++v11;
    }

    while (v74 != v11);
  }

  InstanceCount = REMeshAssetGetInstanceCount();
  if (InstanceCount < 0)
  {
    goto LABEL_61;
  }

  v37 = InstanceCount;
  if (InstanceCount)
  {
    for (i = 0; v37 != i; ++i)
    {
      REMeshAssetGetInstanceName();
      v39 = String.init(cString:)();
      v41 = v40;
      REMeshAssetGetInstanceTransform();
      v73 = v43;
      v75 = v42;
      v71 = v45;
      v72 = v44;
      InstanceModelIndex = REMeshAssetGetInstanceModelIndex();
      if (v9[2] && (v47 = specialized __RawDictionaryStorage.find<A>(_:)(InstanceModelIndex), (v48 & 1) != 0))
      {
        v49 = (v9[7] + 16 * v47);
        v51 = *v49;
        v50 = v49[1];
        *&v77 = v39;
        *(&v77 + 1) = v41;
        *&v78 = v51;
        *(&v78 + 1) = v50;
        v79 = v75;
        v80 = v73;
        v81 = v72;
        v82 = v71;
        v52 = v84;
        v53 = *(*(&v84 + 1) + 16);

        if (v53 && (v54 = specialized __RawDictionaryStorage.find<A>(_:)(v39, v41), (v55 & 1) != 0))
        {
          if ((*(*(*(&v52 + 1) + 56) + 8 * v54) & 0x8000000000000000) != 0)
          {
            goto LABEL_58;
          }

          v56 = *(v52 + 16);
          outlined destroy of MeshResource.Instance(&v77);
          if (*(&v52 + 1) >= v56)
          {
            goto LABEL_59;
          }
        }

        else
        {
          v87[2] = v79;
          v87[3] = v80;
          v87[4] = v81;
          v87[5] = v82;
          v87[0] = v77;
          v87[1] = v78;

          specialized OrderedIdentifiableCollection.subscript.setter(v87, v39, v41);
        }
      }

      else
      {
      }
    }
  }

  TotalSkeletonCount = REMeshAssetGetTotalSkeletonCount();
  if (TotalSkeletonCount < 0)
  {
LABEL_62:
    __break(1u);
LABEL_63:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v58 = TotalSkeletonCount;
  if (!TotalSkeletonCount)
  {

    v60 = v85;
    v61 = v86;
    goto LABEL_51;
  }

  v59 = 0;
  v60 = v85;
  v61 = v86;
  while (1)
  {
    static MeshResource.Skeleton.unpack(coreAsset:skeletonIndex:)(&v77);
    v62 = v77;
    v63 = v78;
    *&v77 = v60;
    *(&v77 + 1) = v61;
    v64 = *(v61 + 16);

    if (v64)
    {
      v65 = specialized __RawDictionaryStorage.find<A>(_:)(v62, *(&v62 + 1));
      if (v66)
      {
        break;
      }
    }

    specialized OrderedIdentifiableCollection.subscript.setter(v62, *(&v62 + 1), v63, v62, *(&v62 + 1));

    v60 = v77;
LABEL_42:
    ++v59;
    v61 = *(&v77 + 1);
    if (v58 == v59)
    {
      goto LABEL_48;
    }
  }

  v67 = *(*(v61 + 56) + 8 * v65);
  if ((v67 & 0x8000000000000000) != 0)
  {
    goto LABEL_57;
  }

  v68 = *(v60 + 16);

  if (v67 < v68)
  {
    goto LABEL_42;
  }

  __break(1u);
LABEL_48:

LABEL_51:
  a2 = v70;
LABEL_52:
  v69 = v84;
  *a2 = v83;
  *(a2 + 16) = v69;
  *(a2 + 32) = v60;
  *(a2 + 40) = v61;
}

double MeshResource.Model.levels.getter@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *(v1 + 32);
  a1[1] = v2;

  return result;
}

__n128 MeshResource.Model.levels.setter(__n128 *a1)
{

  result = *a1;
  v1[2] = *a1;
  return result;
}

Swift::tuple_OpaquePointer_OpaquePointer __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MeshResource.Contents.makeDefinitions()()
{
  v1 = *v0;
  v41 = v0[2];
  v2 = *(*v0 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  v44 = *v0;
  if (v2)
  {
    v46 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    v4 = 0;
    v5 = (v1 + 72);
    while (1)
    {
      if (v4 >= *(v1 + 16))
      {
        goto LABEL_44;
      }

      MeshResource.Model.combine()();

      if (v43)
      {
        break;
      }

      ++v4;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v5 += 48;
      v1 = v44;
      if (v2 == v4)
      {
        v3 = v46;
        goto LABEL_7;
      }
    }

LABEL_39:
    v38 = v5;
    goto LABEL_49;
  }

LABEL_7:
  v40 = v3;
  v6 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);

  v42 = *(v1 + 16);
  if (!v42)
  {
LABEL_23:

    v5 = MEMORY[0x1E69E7CC0];
    v45 = MEMORY[0x1E69E7CC0];
    v24 = *(v41 + 16);

    if (v24)
    {
      v25 = 0;
      v26 = v41 + 56;
LABEL_25:
      v27 = (v26 + 96 * v25);
      v28 = v25;
      while (v28 < v24)
      {
        v25 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          goto LABEL_43;
        }

        if (v6[2])
        {
          v29 = *(v27 - 1);
          v30 = *v27;

          v31 = v6;
          v32 = specialized __RawDictionaryStorage.find<A>(_:)(v29, v30);
          if (v33)
          {
            v34 = *(v6[7] + 8 * v32);
            if ((v34 & 0x8000000000000000) != 0)
            {
              goto LABEL_46;
            }

            if (HIDWORD(v34))
            {
              goto LABEL_47;
            }

            String.utf8CString.getter();
            v35 = REMeshInstanceDefinitionCreate();

            type metadata accessor for MeshInstanceDefinition();
            *(swift_allocObject() + 16) = v35;

            MEMORY[0x1C68F3650](v36);
            if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v5 = v45;
            v6 = v31;
            v26 = v41 + 56;
            if (v25 != v24)
            {
              goto LABEL_25;
            }

            goto LABEL_37;
          }
        }

        ++v28;
        v27 += 12;
        if (v25 == v24)
        {
          goto LABEL_37;
        }
      }

      goto LABEL_42;
    }

LABEL_37:

    v37 = v40;
    goto LABEL_39;
  }

  v7 = 0;
  v8 = v1 + 72;
  while (v7 < *(v1 + 16))
  {
    v10 = *(v8 - 40);
    v9 = *(v8 - 32);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = specialized __RawDictionaryStorage.find<A>(_:)(v10, v9);
    v14 = v6[2];
    v15 = (v12 & 1) == 0;
    v16 = v14 + v15;
    if (__OFADD__(v14, v15))
    {
      goto LABEL_41;
    }

    v17 = v12;
    if (v6[3] >= v16)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v12)
        {
          goto LABEL_9;
        }
      }

      else
      {
        specialized _NativeDictionary.copy()();
        if (v17)
        {
          goto LABEL_9;
        }
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, isUniquelyReferenced_nonNull_native);
      v18 = specialized __RawDictionaryStorage.find<A>(_:)(v10, v9);
      if ((v17 & 1) != (v19 & 1))
      {
        goto LABEL_48;
      }

      v13 = v18;
      if (v17)
      {
LABEL_9:
        *(v6[7] + 8 * v13) = v7;

        goto LABEL_10;
      }
    }

    v6[(v13 >> 6) + 8] |= 1 << v13;
    v20 = (v6[6] + 16 * v13);
    *v20 = v10;
    v20[1] = v9;
    *(v6[7] + 8 * v13) = v7;

    v21 = v6[2];
    v22 = __OFADD__(v21, 1);
    v23 = v21 + 1;
    if (v22)
    {
      goto LABEL_45;
    }

    v6[2] = v23;
LABEL_10:
    ++v7;
    v8 += 48;
    v1 = v44;
    if (v42 == v7)
    {
      goto LABEL_23;
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
  v37 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_49:
  result._1._rawValue = v38;
  result._0._rawValue = v37;
  return result;
}

void MeshResource.replace(with:)(uint64_t a1)
{
  if (!*(v1 + 16))
  {
    lazy protocol witness table accessor for type MeshResourceError and conformance MeshResourceError();
    swift_allocError();
    *v15 = 0;
    v15[1] = 0;
LABEL_18:
    swift_willThrow();
    return;
  }

  v2 = *(a1 + 32);
  if (!REAssetHandleConvertToMutable())
  {
    lazy protocol witness table accessor for type MeshResourceError and conformance MeshResourceError();
    swift_allocError();
    *v16 = xmmword_1C18B8FE0;
    goto LABEL_18;
  }

  v5 = MeshResource.Contents.makeDefinitions()();
  rawValue = v5._1._rawValue;
  v3 = v5._0._rawValue;
  if (v6)
  {
    return;
  }

  if (v5._0._rawValue >> 62)
  {
    v33 = __CocoaSet.count.getter();
    rawValue = v5._1._rawValue;
    v7 = v33;
    v3 = v5._0._rawValue;
  }

  else
  {
    v7 = *((v5._0._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = MEMORY[0x1E69E7CC0];
  v34 = v3;
  v35 = v2;
  v36 = rawValue;
  if (v7)
  {
    v37 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7 & ~(v7 >> 63), 0);
    if (v7 < 0)
    {
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    v9 = 0;
    v8 = v37;
    v10 = v34;
    do
    {
      if ((v34 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x1C68F41F0](v9, v10);
      }

      else
      {
      }

      v12 = *(v11 + 16);

      v14 = *(v37 + 16);
      v13 = *(v37 + 24);
      if (v14 >= v13 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
        v10 = v34;
      }

      ++v9;
      *(v37 + 16) = v14 + 1;
      *(v37 + 8 * v14 + 32) = v12;
    }

    while (v7 != v9);
    rawValue = v36;
  }

  if (rawValue >> 62)
  {
    v17 = __CocoaSet.count.getter();
  }

  else
  {
    v17 = *((rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v18 = MEMORY[0x1E69E7CC0];
  if (v17)
  {
    v38 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v17 & ~(v17 >> 63), 0);
    if (v17 < 0)
    {
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    v19 = 0;
    v18 = v38;
    v20 = v36;
    do
    {
      if ((v36 & 0xC000000000000001) != 0)
      {
        v21 = MEMORY[0x1C68F41F0](v19, v20);
      }

      else
      {
      }

      v22 = *(v21 + 16);

      v24 = *(v38 + 16);
      v23 = *(v38 + 24);
      if (v24 >= v23 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1);
        v20 = v36;
      }

      ++v19;
      *(v38 + 16) = v24 + 1;
      *(v38 + 8 * v24 + 32) = v22;
    }

    while (v17 != v19);
    v2 = v35;
  }

  v25 = *(v2 + 16);
  v26 = MEMORY[0x1E69E7CC0];
  if (v25)
  {
    v39 = MEMORY[0x1E69E7CC0];

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v25, 0);
    if (v25 > *(v2 + 16))
    {
LABEL_52:
      __break(1u);
      return;
    }

    v26 = v39;
    v27 = v2 + 40;
    do
    {
      v28._rawValue = MeshResource.Skeleton.makeSkeletonDef()()._rawValue;
      v30 = *(v39 + 16);
      v29 = *(v39 + 24);
      if (v30 >= v29 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1);
      }

      *(v39 + 16) = v30 + 1;
      *(v39 + 8 * v30 + 32) = v28;
      v27 += 24;
      --v25;
    }

    while (v25);
  }

  if (HIDWORD(*(v8 + 16)))
  {
    __break(1u);
    goto LABEL_48;
  }

  if (HIDWORD(*(v18 + 16)))
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if (HIDWORD(*(v26 + 16)))
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v31 = v26 + 32;
  REMeshAssetReplaceAllWithSkinnedModels();

  for (i = *(v26 + 16); i; --i)
  {
    v31 += 8;
    RERelease();
  }
}

Swift::OpaquePointer __swiftcall MeshResource.Skeleton.makeSkeletonDef()()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v60 = MEMORY[0x1E69E7CC0];
    v4 = v1;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    v5 = v60;
    v56 = v4;
    v6 = (v4 + 32);
    for (i = v2 - 1; ; --i)
    {
      v59[0] = *v6;
      v8 = v6[1];
      v9 = v6[2];
      v10 = v6[4];
      v59[3] = v6[3];
      v59[4] = v10;
      v59[1] = v8;
      v59[2] = v9;
      v11 = v6[5];
      v12 = v6[6];
      v13 = v6[8];
      v59[7] = v6[7];
      v59[8] = v13;
      v59[5] = v11;
      v59[6] = v12;
      outlined init with copy of MeshResource.Skeleton.Joint(v59, v58);
      v60 = v5;
      v15 = *(v5 + 16);
      v14 = *(v5 + 24);
      if (v15 >= v14 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1);
        v5 = v60;
      }

      v16 = v59[0];
      *(v5 + 16) = v15 + 1;
      *(v5 + 16 * v15 + 32) = v16;
      if (!i)
      {
        break;
      }

      v6 += 9;
    }

    v58[0] = v3;
    result._rawValue = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    v18 = v58[0];
    v19 = v56;
    v20 = (v56 + 56);
    do
    {
      if (i >= *(v19 + 16))
      {
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      if (*v20)
      {
        LODWORD(v21) = -1;
      }

      else
      {
        v21 = *(v20 - 1);
        if ((v21 & 0x8000000000000000) != 0)
        {
          goto LABEL_35;
        }

        if (HIDWORD(v21))
        {
          goto LABEL_36;
        }
      }

      v58[0] = v18;
      v23 = *(v18 + 16);
      v22 = *(v18 + 24);
      if (v23 >= v22 >> 1)
      {
        result._rawValue = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1);
        v19 = v56;
        v18 = v58[0];
      }

      ++i;
      *(v18 + 16) = v23 + 1;
      *(v18 + 4 * v23 + 32) = v21;
      v20 += 144;
    }

    while (v2 != i);
    v58[0] = v3;
    v24 = v19;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    v25 = v58[0];
    v26 = *(v58[0] + 16);
    v27 = v26 << 6;
    v28 = (v24 + 112);
    v29 = v2;
    do
    {
      v30 = *(v28 - 3);
      v31 = *(v28 - 2);
      v32 = *(v28 - 1);
      v33 = *v28;
      v58[0] = v25;
      v34 = *(v25 + 24);
      v35 = v26 + 1;
      if (v26 >= v34 >> 1)
      {
        v52 = v33;
        v54 = v32;
        v50 = v31;
        v51 = v30;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v26 + 1, 1);
        v31 = v50;
        v30 = v51;
        v33 = v52;
        v32 = v54;
        v25 = v58[0];
      }

      *(v25 + 16) = v35;
      v36 = (v25 + v27);
      v36[2] = v30;
      v36[3] = v31;
      v27 += 64;
      v28 += 9;
      v26 = v35;
      v36[4] = v32;
      v36[5] = v33;
      --v29;
    }

    while (v29);
    v58[0] = v3;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    v3 = v58[0];
    v37 = *(v58[0] + 16);
    v38 = 48 * v37;
    v39 = (v56 + 160);
    do
    {
      v40 = *(v39 - 2);
      v41 = *(v39 - 1);
      v42 = *v39;
      v58[0] = v3;
      v43 = *(v3 + 24);
      v44 = v37 + 1;
      if (v37 >= v43 >> 1)
      {
        v57 = v40;
        v53 = v42;
        v55 = v41;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v43 > 1), v37 + 1, 1);
        v42 = v53;
        v41 = v55;
        v40 = v57;
        v3 = v58[0];
      }

      *(v3 + 16) = v44;
      v45 = (v3 + v38);
      v45[2] = v40;
      v45[3] = v41;
      v45[4] = v42;
      v38 += 48;
      v39 += 9;
      v37 = v44;
      --v2;
    }

    while (v2);
  }

  else
  {
    v25 = MEMORY[0x1E69E7CC0];
    v18 = MEMORY[0x1E69E7CC0];
    v5 = MEMORY[0x1E69E7CC0];
  }

  v46 = RESkeletonDefinitionCreate();
  String.utf8CString.getter();
  RESkeletonDefinitionSetName();

  v47 = *(v5 + 16);
  if (HIDWORD(v47))
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  RESkeletonDefinitionSetJointCount();
  if (v47)
  {
    v48 = 0;
    v49 = v5 + 40;
    do
    {
      String.utf8CString.getter();
      RESkeletonDefinitionSetJointName();

      v49 += 16;
      ++v48;
    }

    while (v47 != v48);
  }

  if (HIDWORD(*(v18 + 16)))
  {
    goto LABEL_38;
  }

  result._rawValue = RESkeletonDefinitionSetParentIndices();
  if (HIDWORD(*(v25 + 16)))
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  result._rawValue = RESkeletonDefinitionSetInverseBindPoses();
  if (!HIDWORD(*(v3 + 16)))
  {
    RESkeletonDefinitionSetLocalRestPoses();

    return v46;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t MeshResource.replaceAsync(with:)(__int128 *a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v24[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v7 = a1[1];
  v25 = *a1;
  v26 = v7;
  v27 = a1[2];
  v8 = specialized static __ServiceLocator.shared.getter();
  v9 = *(*(v8 + 168) + 16);
  swift_beginAccess();
  v10 = *(v8 + 24);
  swift_unownedRetainStrong();
  v11 = *(v10 + 32);

  v12 = v9;
  v13 = v11;

  *v6 = v13;
  (*(v4 + 104))(v6, *MEMORY[0x1E69E8020], v3);
  v14 = v13;
  LOBYTE(v13) = _dispatchPreconditionTest(_:)();
  result = (*(v4 + 8))(v6, v3);
  if (v13)
  {
    v16 = swift_allocObject();
    *(v16 + 16) = v12;
    v17 = v26;
    *(v16 + 24) = v25;
    *(v16 + 40) = v17;
    *(v16 + 56) = v27;
    *(v16 + 72) = v1;
    *(v16 + 80) = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCyAA12MeshResourceCGMd, &_s10RealityKit11LoadRequestCyAA12MeshResourceCGMR);
    v18 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit12MeshResourceCs5Error_pGSgGMd, &_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit12MeshResourceCs5Error_pGSgGMR);
    v19 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
    v20 = swift_allocObject();
    *(v20 + 16) = 0;
    *(v19 + 16) = v20;
    *(v19 + 24) = 0;
    *(v19 + 32) = -1;
    *(v18 + 16) = v19;
    v21 = swift_allocObject();
    v21[2] = partial apply for closure #1 in MeshResource.replaceAsync(with:);
    v21[3] = v16;
    v21[4] = v19;
    v21[5] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy10RealityKit12MeshResourceCs5Error_pGMd, &_s7Combine6FutureCy10RealityKit12MeshResourceCs5Error_pGMR);
    swift_allocObject();
    outlined init with copy of MeshResource.Contents(&v25, v24);

    v22 = Future.init(_:)();

    *(v18 + 24) = v22;
    return v18;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in MeshResource.replaceAsync(with:)(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, uint64_t a5, void *a6)
{
  v26 = a3;
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v25 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for DispatchQoS();
  v14 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  v18 = swift_allocObject();
  v19 = a4[1];
  *(v18 + 16) = *a4;
  *(v18 + 32) = v19;
  *(v18 + 48) = a4[2];
  *(v18 + 64) = a5;
  *(v18 + 72) = a6;
  *(v18 + 80) = thunk for @escaping @callee_guaranteed (@in_guaranteed Result<MeshResource, Error>) -> ()partial apply;
  *(v18 + 88) = v17;
  aBlock[4] = partial apply for closure #1 in closure #1 in MeshResource.replaceAsync(with:);
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_212_0;
  v20 = _Block_copy(aBlock);

  outlined init with copy of MeshResource.Contents(a4, v27);

  v21 = a6;
  static DispatchQoS.unspecified.getter();
  v27[0] = MEMORY[0x1E69E7CC0];
  _sSo10CFErrorRefaABs5Error10FoundationWlTm_4(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1C68F3CA0](0, v16, v13, v20);
  _Block_release(v20);
  (*(v25 + 8))(v13, v11);
  (*(v14 + 8))(v16, v24);
}

uint64_t closure #1 in closure #1 in MeshResource.replaceAsync(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v43 = a2;
  v44 = a5;
  v42 = a4;
  v48 = a3;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v45 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  v15 = MeshResource.Contents.makeDefinitions()();
  result = v15._0._rawValue;
  v46 = v10;
  v47 = v8;
  if (v14)
  {
    v16 = 0;
    *(v12 + 16) = v14;
    *(v12 + 24) = 1;
    v17 = v43;
LABEL_30:
    v32 = MEMORY[0x1E69E7CC0];
    v33 = swift_allocObject();
    v33[2] = v16;
    v33[3] = v17;
    v34 = v42;
    v33[4] = v12;
    v33[5] = v34;
    v33[6] = v44;
    aBlock[4] = partial apply for specialized closure #3 in closure #1 in closure #1 in MeshResource.replaceAsync(with:);
    aBlock[5] = v33;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_221;
    v35 = _Block_copy(aBlock);

    v36 = v45;
    static DispatchQoS.unspecified.getter();
    v49 = v32;
    _sSo10CFErrorRefaABs5Error10FoundationWlTm_4(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
    v37 = v47;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x1C68F3CA0](0, v36, v37, v35);
    _Block_release(v35);
    (*(v6 + 8))(v37, v5);
    (*(v46 + 8))(v36, v9);
  }

  v38 = v12;
  if (v15._0._rawValue >> 62)
  {
    result = __CocoaSet.count.getter();
    v18 = result;
  }

  else
  {
    v18 = *((v15._0._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v19 = MEMORY[0x1E69E7CC0];
  v40 = v6;
  v41 = v5;
  v39 = v9;
  if (v18)
  {
    aBlock[0] = MEMORY[0x1E69E7CC0];
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18 & ~(v18 >> 63), 0);
    if (v18 < 0)
    {
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    v20 = 0;
    v19 = aBlock[0];
    do
    {
      if ((v15._0._rawValue & 0xC000000000000001) != 0)
      {
        v21 = MEMORY[0x1C68F41F0](v20, v15._0._rawValue);
      }

      else
      {
      }

      v22 = *(v21 + 16);

      aBlock[0] = v19;
      v24 = *(v19 + 16);
      v23 = *(v19 + 24);
      if (v24 >= v23 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1);
        v19 = aBlock[0];
      }

      ++v20;
      *(v19 + 16) = v24 + 1;
      *(v19 + 8 * v24 + 32) = v22;
    }

    while (v18 != v20);
    v6 = v40;
    v5 = v41;
    v9 = v39;
  }

  if (v15._1._rawValue >> 62)
  {
    result = __CocoaSet.count.getter();
    v25 = result;
  }

  else
  {
    v25 = *((v15._1._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v26 = MEMORY[0x1E69E7CC0];
  if (!v25)
  {
LABEL_27:
    if (HIDWORD(*(v19 + 16)))
    {
      __break(1u);
    }

    else if (!HIDWORD(*(v26 + 16)))
    {
      v16 = REMeshResourceDefinitionCreate();

      v12 = v38;
      v17 = v43;
      *(v38 + 16) = v43;
      *(v12 + 24) = 0;

      goto LABEL_30;
    }

    __break(1u);
    goto LABEL_35;
  }

  aBlock[0] = MEMORY[0x1E69E7CC0];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v25 & ~(v25 >> 63), 0);
  if ((v25 & 0x8000000000000000) == 0)
  {
    v27 = 0;
    v26 = aBlock[0];
    do
    {
      if ((v15._1._rawValue & 0xC000000000000001) != 0)
      {
        v28 = MEMORY[0x1C68F41F0](v27, v15._1._rawValue);
      }

      else
      {
      }

      v29 = *(v28 + 16);

      aBlock[0] = v26;
      v31 = *(v26 + 16);
      v30 = *(v26 + 24);
      if (v31 >= v30 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1);
        v26 = aBlock[0];
      }

      ++v27;
      *(v26 + 16) = v31 + 1;
      *(v26 + 8 * v31 + 32) = v29;
    }

    while (v25 != v27);
    v6 = v40;
    v5 = v41;
    v9 = v39;
    goto LABEL_27;
  }

LABEL_36:
  __break(1u);
  return result;
}

void specialized closure #3 in closure #1 in closure #1 in MeshResource.replaceAsync(with:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *, uint64_t, double))
{
  if (a1)
  {
    if (*(a2 + 16))
    {
      if (REAssetHandleConvertToMutable())
      {
        REMeshAssetReplaceAllWithResource();
LABEL_8:
        RERelease();
        goto LABEL_9;
      }

      lazy protocol witness table accessor for type MeshResourceError and conformance MeshResourceError();
      v6 = swift_allocError();
      *v8 = xmmword_1C18B8FE0;
    }

    else
    {
      lazy protocol witness table accessor for type MeshResourceError and conformance MeshResourceError();
      v6 = swift_allocError();
      *v7 = 0;
      v7[1] = 0;
    }

    swift_willThrow();
    swift_beginAccess();
    v9 = *(a3 + 16);
    v10 = *(a3 + 24);
    *(a3 + 16) = v6;
    *(a3 + 24) = 1;
    outlined consume of Result<MeshResource, Error>(v9, v10);
    goto LABEL_8;
  }

LABEL_9:
  swift_beginAccess();
  v11 = *(a3 + 16);
  v12 = *(a3 + 24);
  v13 = outlined copy of Result<ModelEntity, Error>(v11, v12);
  a4(v11, v12, v13);
  outlined consume of Result<MeshResource, Error>(v11, v12);
}

uint64_t static MeshResource.generate(from:)(__int128 *a1)
{
  v11 = a1[1];
  v12 = *a1;
  v10 = a1[2];
  v2 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v2 + 120, &v13);
  v3 = *(&v14 + 1);
  v4 = v15;
  __swift_project_boxed_opaque_existential_1(&v13, *(&v14 + 1));
  (*(v4 + 32))(v3, v4);
  Mutable = REAssetServiceMeshAssetCreateMutable();
  if (REAssetGetSwiftObject())
  {
    type metadata accessor for MeshResource();
    v6 = swift_dynamicCastClass();
    if (v6)
    {
      goto LABEL_5;
    }

    swift_unknownObjectRelease();
  }

  type metadata accessor for MeshResource();
  v6 = swift_allocObject();
  *(v6 + 16) = Mutable;
  RERetain();
  REAssetSetSwiftObject();
LABEL_5:
  RERelease();
  __swift_destroy_boxed_opaque_existential_1(&v13);
  v13 = v12;
  v14 = v11;
  v15 = v10;
  MeshResource.replace(with:)(&v13);
  if (v1)
  {
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C1887600;
    v8 = type metadata accessor for MeshResource();
    *(inited + 32) = v6;
    *(inited + 56) = v8;
    *(inited + 64) = &protocol witness table for MeshResource;

    specialized static RequestLoadableUtilities.enforceResourceSharingBeforeECSCommits(_:)(inited);
    swift_setDeallocating();
    __swift_destroy_boxed_opaque_existential_1((inited + 32));
  }

  return v6;
}

uint64_t MeshResource.init(from:)(uint64_t a1)
{
  *(v2 + 792) = v1;
  *(v2 + 840) = *a1;
  v3 = *(a1 + 24);
  *(v2 + 888) = *(a1 + 8);
  *(v2 + 904) = v3;
  *(v2 + 920) = *(a1 + 40);
  return MEMORY[0x1EEE6DFA0](MeshResource.init(from:), 0, 0);
}

{
  v2 = v1;
  v4 = *(a1 + 16);
  if (v4)
  {
    v50 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
    if (!*(a1 + 16))
    {
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    v5 = 0;
    v6 = v50;
    v51 = v4 - 1;
    v7 = 32;
    while (1)
    {
      v8 = *(a1 + v7 + 48);
      v9 = *(a1 + v7 + 80);
      v47 = *(a1 + v7 + 64);
      v48 = v9;
      v10 = *(a1 + v7 + 16);
      v43 = *(a1 + v7);
      v44 = v10;
      v11 = *(a1 + v7 + 48);
      v13 = *(a1 + v7);
      v12 = *(a1 + v7 + 16);
      v45 = *(a1 + v7 + 32);
      v46 = v11;
      v14 = *(a1 + v7 + 80);
      v37 = v47;
      v38 = v14;
      v33 = v13;
      v34 = v12;
      v49 = *(a1 + v7 + 96);
      v39 = *(a1 + v7 + 96);
      v35 = v45;
      v36 = v8;
      outlined init with copy of MeshDescriptor(&v43, v32);
      MeshDescriptor.makeGeomMesh()(v40);
      v15 = v40[0];
      if (v42)
      {
        v18 = v40[1];
        v19 = v41;

        *&v33 = v15;
        *(&v33 + 1) = v18;
        LOWORD(v34) = v19;
        lazy protocol witness table accessor for type GeomMeshError and conformance GeomMeshError();
        swift_willThrowTypedImpl();
        v20 = v33;
        v21 = v34;
        swift_allocError();
        *v22 = v20;
        *(v22 + 16) = v21;
        outlined destroy of MeshDescriptor(&v43);
        goto LABEL_19;
      }

      outlined destroy of MeshDescriptor(&v43);
      v50 = v6;
      v17 = *(v6 + 16);
      v16 = *(v6 + 24);
      if (v17 >= v16 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1);
        v6 = v50;
      }

      *(v6 + 16) = v17 + 1;
      *(v6 + 8 * v17 + 32) = v15;
      if (v51 == v5)
      {
        break;
      }

      v7 += 104;
      if (++v5 >= *(a1 + 16))
      {
        goto LABEL_23;
      }
    }

    v2 = v1;
  }

  else
  {

    v6 = MEMORY[0x1E69E7CC0];
  }

  REMeshCompileOptionsCreate();
  v23 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v23 + 120, &v43);
  v24 = *(&v44 + 1);
  v25 = v45;
  __swift_project_boxed_opaque_existential_1(&v43, *(&v44 + 1));
  (*(v25 + 32))(v24, v25);
  v26 = v6 + 32;
  v27 = REAssetManagerMeshAssetCreateFromModelsWithOptionsNullable();
  __swift_destroy_boxed_opaque_existential_1(&v43);
  for (i = *(v6 + 16); i; --i)
  {
    v26 += 8;
    RERelease();
  }

  if (!v27)
  {
    lazy protocol witness table accessor for type MeshResourceError and conformance MeshResourceError();
    swift_allocError();
    *v30 = xmmword_1C18A4F10;
    swift_willThrow();
    RERelease();
    return v6;
  }

  if (!REAssetGetSwiftObject())
  {
    v6 = (*(v2 + 120))(v27);
    *&v43 = v6;
    RequestLoadable.enforceResourceSharingBeforeECSCommits()();
    if (v29)
    {
      RERelease();
      RERelease();
LABEL_19:
    }

    else
    {
      RERelease();
      RERelease();
    }

    return v6;
  }

LABEL_24:
  result = swift_unknownObjectRelease();
  __break(1u);
  return result;
}

{
  *(v2 + 320) = a1;
  *(v2 + 328) = v1;
  return MEMORY[0x1EEE6DFA0](MeshResource.init(from:), 0, 0);
}

{
  v2[11] = a1;
  v2[12] = v1;
  type metadata accessor for MainActor();
  v2[13] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[14] = v4;
  v2[15] = v3;

  return MEMORY[0x1EEE6DFA0](MeshResource.init(from:), v4, v3);
}

{
  v2 = v1;
  v3 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v3 + 120, v10);
  v4 = v11;
  v5 = v12;
  __swift_project_boxed_opaque_existential_1(v10, v11);
  (*(v5 + 32))(v4, v5);
  MeshAssetWithDirectMesh = REAssetManagerCreateMeshAssetWithDirectMesh();
  __swift_destroy_boxed_opaque_existential_1(v10);
  v7 = (*(v2 + 120))(MeshAssetWithDirectMesh);
  RERelease();
  v10[0] = v7;
  RequestLoadable.enforceResourceSharingBeforeECSCommits()();
  if (v8)
  {
  }

  return v7;
}

uint64_t MeshResource.init(from:)()
{
  swift_asyncLet_begin();

  return MEMORY[0x1EEE6DEB8](v0 + 16, v0 + 696, MeshResource.init(from:), v0 + 656);
}

{
  return MEMORY[0x1EEE6DFA0](MeshResource.init(from:), 0, 0);
}

{
  v0[116] = (*(v0[99] + 120))(v0[87]);

  return MEMORY[0x1EEE6DEB8](v0 + 2, v0 + 87, MeshResource.init(from:), v0 + 88);
}

{
  return MEMORY[0x1EEE6DFA0](MeshResource.init(from:), 0, 0);
}

{
  RERelease();
  type metadata accessor for MainActor();
  *(v0 + 936) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](MeshResource.init(from:), v2, v1);
}

{
  v13 = v0;
  v1 = *(v0 + 920);
  v2 = *(v0 + 840);
  v7 = *(v0 + 904);
  v8 = *(v0 + 888);

  v9 = v2;
  v10 = v8;
  v11 = v7;
  v12 = v1;
  MeshResource.replace(with:)(&v9);
  *(v0 + 944) = 0;
  v3 = *(v0 + 928);

  *(v0 + 744) = v3;
  v4 = swift_task_alloc();
  *(v0 + 952) = v4;
  *v4 = v0;
  v4[1] = MeshResource.init(from:);
  v5 = *(v0 + 792);

  return RequestLoadable.awaitForResourceSharing()(v5, &protocol witness table for MeshResource);
}

{
  v2 = *v1;
  *(*v1 + 960) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](MeshResource.init(from:), 0, 0);
  }

  else
  {

    return MEMORY[0x1EEE6DEB0](v2 + 16, v2 + 696, MeshResource.init(from:), v2 + 848, v3);
  }
}

{
  return MEMORY[0x1EEE6DFA0](MeshResource.init(from:), 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  return MEMORY[0x1EEE6DFA0](MeshResource.init(from:), 0, 0);
}

{
  return (*(v0 + 8))(*(v0 + 928));
}

{
  return MEMORY[0x1EEE6DFA0](MeshResource.init(from:), 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  v42 = v0;
  v1 = *(v0 + 320);
  v2 = *(v1 + 16);
  if (!v2)
  {

    v7 = MEMORY[0x1E69E7CC0];
LABEL_15:
    *(v0 + 336) = v7;
    *(v0 + 344) = REMeshCompileOptionsCreate();
    type metadata accessor for MainActor();
    *(v0 + 352) = static MainActor.shared.getter();
    v28 = dispatch thunk of Actor.unownedExecutor.getter();
    v30 = v29;
    v3 = MeshResource.init(from:);
    v4 = v28;
    v5 = v30;

    return MEMORY[0x1EEE6DFA0](v3, v4, v5);
  }

  v31 = MEMORY[0x1E69E7CC0];
  v3 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
  if (!*(v1 + 16))
  {
LABEL_18:
    __break(1u);
    return MEMORY[0x1EEE6DFA0](v3, v4, v5);
  }

  v6 = 0;
  v7 = v31;
  v8 = (v1 + 32);
  while (1)
  {
    v9 = *v8;
    v10 = v8[2];
    *(v0 + 32) = v8[1];
    *(v0 + 48) = v10;
    *(v0 + 16) = v9;
    v11 = v8[3];
    v12 = v8[4];
    v13 = v8[5];
    *(v0 + 112) = *(v8 + 12);
    *(v0 + 80) = v12;
    *(v0 + 96) = v13;
    *(v0 + 64) = v11;
    v14 = v8[5];
    v39 = v8[4];
    v40 = v14;
    v41 = *(v8 + 12);
    v15 = v8[1];
    v35 = *v8;
    v36 = v15;
    v16 = v8[3];
    v37 = v8[2];
    v38 = v16;
    outlined init with copy of MeshDescriptor(v0 + 16, v0 + 120);
    MeshDescriptor.makeGeomMesh()(v32);
    v17 = v32[0];
    if (v34)
    {
      break;
    }

    v3 = outlined destroy of MeshDescriptor(v0 + 16);
    v19 = *(v31 + 16);
    v18 = *(v31 + 24);
    if (v19 >= v18 >> 1)
    {
      v3 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1);
    }

    *(v31 + 16) = v19 + 1;
    *(v31 + 8 * v19 + 32) = v17;
    if (v2 - 1 == v6)
    {

      goto LABEL_15;
    }

    v8 = (v8 + 104);
    if (++v6 >= *(v1 + 16))
    {
      goto LABEL_18;
    }
  }

  v20 = v32[1];
  v21 = v33;

  *(v0 + 288) = v17;
  *(v0 + 296) = v20;
  *(v0 + 304) = v21;
  lazy protocol witness table accessor for type GeomMeshError and conformance GeomMeshError();
  swift_willThrowTypedImpl();
  v22 = *(v0 + 288);
  v23 = *(v0 + 296);
  v24 = *(v0 + 304);
  swift_allocError();
  *v25 = v22;
  *(v25 + 8) = v23;
  *(v25 + 16) = v24;
  outlined destroy of MeshDescriptor(v0 + 16);

  v26 = *(v0 + 8);

  return v26();
}

{

  v1 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v1 + 120, (v0 + 28));
  v2 = v0[31];
  v3 = v0[32];
  __swift_project_boxed_opaque_existential_1(v0 + 28, v2);
  (*(v3 + 32))(v2, v3);
  v0[45] = REAssetManagerMeshAssetCreateFromModelsWithOptionsNullable();
  __swift_destroy_boxed_opaque_existential_1(v0 + 28);

  return MEMORY[0x1EEE6DFA0](MeshResource.init(from:), 0, 0);
}

{
  if (v0[45])
  {
    v1 = (*(v0[41] + 120))();
    v0[46] = v1;
    v0[39] = v1;
    v2 = swift_task_alloc();
    v0[47] = v2;
    *v2 = v0;
    v2[1] = MeshResource.init(from:);
    v3 = v0[41];

    return RequestLoadable.awaitForResourceSharing()(v3, &protocol witness table for MeshResource);
  }

  else
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, logger);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1C1358000, v6, v7, "Could not create MeshResources with descriptors.", v8, 2u);
      MEMORY[0x1C6902A30](v8, -1, -1);
    }

    v9 = v0[42];

    lazy protocol witness table accessor for type MeshResourceError and conformance MeshResourceError();
    swift_allocError();
    *v10 = xmmword_1C18A4F10;
    swift_willThrow();
    RERelease();
    v11 = *(v9 + 16);
    if (v11)
    {
      v12 = 32;
      do
      {
        RERelease();
        v12 += 8;
        --v11;
      }

      while (v11);
    }

    v13 = v0[1];

    return v13();
  }
}

{
  *(*v1 + 384) = v0;

  if (v0)
  {
    v2 = MeshResource.init(from:);
  }

  else
  {
    v2 = MeshResource.init(from:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v1 = v0[42];
  RERelease();
  RERelease();
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 32;
    do
    {
      RERelease();
      v3 += 8;
      --v2;
    }

    while (v2);
  }

  v4 = v0[1];
  v5 = v0[46];

  return v4(v5);
}

{
  v1 = *(v0 + 336);
  RERelease();
  RERelease();
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 32;
    do
    {
      RERelease();
      v3 += 8;
      --v2;
    }

    while (v2);
  }

  v4 = *(v0 + 8);

  return v4();
}

{
  v1 = v0[12];
  v2 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v2 + 120, (v0 + 2));
  v3 = v0[5];
  v4 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v3);
  (*(v4 + 32))(v3, v4);
  MeshAssetWithDirectMesh = REAssetManagerCreateMeshAssetWithDirectMesh();
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v6 = (*(v1 + 120))(MeshAssetWithDirectMesh);
  v0[16] = v6;
  RERelease();
  v0[10] = v6;
  v7 = swift_task_alloc();
  v0[17] = v7;
  *v7 = v0;
  v7[1] = MeshResource.init(from:);
  v8 = v0[12];

  return RequestLoadable.awaitForResourceSharing()(v8, &protocol witness table for MeshResource);
}

{
  v2 = *v1;
  *(*v1 + 144) = v0;

  v3 = *(v2 + 112);
  v4 = *(v2 + 120);
  if (v0)
  {
    v5 = MeshResource.init(from:);
  }

  else
  {
    v5 = MeshResource.init(from:);
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

{

  v1 = *(v0 + 8);
  v2 = *(v0 + 128);

  return v1(v2);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t implicit closure #1 in MeshResource.init(from:)()
{
  type metadata accessor for MainActor();
  *(v0 + 88) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](implicit closure #1 in MeshResource.init(from:), v2, v1);
}

{
  v1 = v0[10];

  v2 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v2 + 120, (v0 + 2));
  v3 = v0[5];
  v4 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v3);
  (*(v4 + 32))(v3, v4);
  Mutable = REAssetServiceMeshAssetCreateMutable();
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  *v1 = Mutable;
  v6 = v0[1];

  return v6();
}

uint64_t static MeshResource.generate(from:)(_OWORD *a1)
{
  v2 = a1[1];
  v1[5] = *a1;
  v1[6] = v2;
  v1[7] = a1[2];
  return MEMORY[0x1EEE6DFA0](static MeshResource.generate(from:), 0, 0);
}

uint64_t static MeshResource.generate(from:)()
{
  type metadata accessor for MainActor();
  *(v0 + 128) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](static MeshResource.generate(from:), v2, v1);
}

{
  v12 = v0;

  v1 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v1 + 120, v0 + 16);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v2);
  (*(v3 + 32))(v2, v3);
  Mutable = REAssetServiceMeshAssetCreateMutable();
  if (REAssetGetSwiftObject())
  {
    type metadata accessor for MeshResource();
    v5 = swift_dynamicCastClass();
    if (v5)
    {
      goto LABEL_5;
    }

    swift_unknownObjectRelease();
  }

  type metadata accessor for MeshResource();
  v5 = swift_allocObject();
  *(v5 + 16) = Mutable;
  RERetain();
  REAssetSetSwiftObject();
LABEL_5:
  *(v0 + 136) = v5;
  v9 = *(v0 + 96);
  v10 = *(v0 + 80);
  v8 = *(v0 + 112);
  RERelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v11[0] = v10;
  v11[1] = v9;
  v11[2] = v8;
  MeshResource.replace(with:)(v11);
  v6 = swift_task_alloc();
  *(v0 + 144) = v6;
  *v6 = v0;
  v6[1] = static MeshResource.generate(from:);

  return specialized RequestLoadable.awaitForResourceSharing()();
}

{
  v2 = *v1;
  v2[19] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](static MeshResource.generate(from:), 0, 0);
  }

  else
  {
    v3 = v2[1];
    v4 = v2[17];

    return v3(v4);
  }
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v1 + 120, (v0 + 28));
  v2 = v0[31];
  v3 = v0[32];
  __swift_project_boxed_opaque_existential_1(v0 + 28, v2);
  (*(v3 + 32))(v2, v3);
  v4 = REAssetManagerMeshAssetCreateFromModelsWithOptionsNullable();
  __swift_destroy_boxed_opaque_existential_1(v0 + 28);
  if (v4)
  {
    if (REAssetGetSwiftObject())
    {
      type metadata accessor for MeshResource();
      v5 = swift_dynamicCastClass();
      if (v5)
      {
LABEL_6:
        v0[43] = v5;
        RERelease();
        v6 = static MeshResource.generate(from:);
        goto LABEL_8;
      }

      swift_unknownObjectRelease();
    }

    type metadata accessor for MeshResource();
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    RERetain();
    REAssetSetSwiftObject();
    goto LABEL_6;
  }

  lazy protocol witness table accessor for type MeshResourceError and conformance MeshResourceError();
  v0[44] = swift_allocError();
  *v7 = xmmword_1C18A4F10;
  swift_willThrow();

  v6 = static MeshResource.generate(from:);
LABEL_8:

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

{
  v1 = *(*(v0 + 320) + 16);
  if (v1)
  {
    v2 = 32;
    do
    {
      RERelease();
      v2 += 8;
      --v1;
    }

    while (v1);
  }

  v3 = swift_task_alloc();
  *(v0 + 360) = v3;
  *v3 = v0;
  v3[1] = static MeshResource.generate(from:);

  return specialized RequestLoadable.awaitForResourceSharing()();
}

{
  RERelease();
  v1 = *(v0 + 8);

  return v1();
}

{
  *(*v1 + 368) = v0;

  if (v0)
  {
    v2 = static MeshResource.generate(from:);
  }

  else
  {
    v2 = static MeshResource.generate(from:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  RERelease();
  v1 = *(v0 + 8);
  v2 = *(v0 + 344);

  return v1(v2);
}

{

  RERelease();
  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);
  v2 = *(v0 + 48);

  return v1(v2);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  type metadata accessor for MeshResource();

  return MeshResource.init(from:)(v0);
}

uint64_t static MeshResource.generateAsync(from:)(__int128 *a1)
{
  v8 = a1[1];
  v9 = *a1;
  v7 = a1[2];
  v1 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v1 + 120, &v10);
  v2 = *(&v11 + 1);
  v3 = v12;
  __swift_project_boxed_opaque_existential_1(&v10, *(&v11 + 1));
  (*(v3 + 32))(v2, v3);
  Mutable = REAssetServiceMeshAssetCreateMutable();
  if (!REAssetGetSwiftObject())
  {
    goto LABEL_4;
  }

  type metadata accessor for MeshResource();
  if (!swift_dynamicCastClass())
  {
    swift_unknownObjectRelease();
LABEL_4:
    type metadata accessor for MeshResource();
    *(swift_allocObject() + 16) = Mutable;
    RERetain();
    REAssetSetSwiftObject();
  }

  RERelease();
  __swift_destroy_boxed_opaque_existential_1(&v10);
  v10 = v9;
  v11 = v8;
  v12 = v7;
  v5 = MeshResource.replaceAsync(with:)(&v10);

  return v5;
}

uint64_t static MeshResource.generate(from:)(__n128 a1)
{
  v38 = v1;
  v2 = *(v1 + 312);
  v3 = *(v2 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v27 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
    v4 = v27;
    v5 = (v2 + 32);
    for (i = v3 - 1; ; --i)
    {
      v7 = *v5;
      v8 = v5[2];
      *(v1 + 32) = v5[1];
      *(v1 + 48) = v8;
      *(v1 + 16) = v7;
      v9 = v5[3];
      v10 = v5[4];
      v11 = v5[5];
      *(v1 + 112) = *(v5 + 12);
      *(v1 + 80) = v10;
      *(v1 + 96) = v11;
      *(v1 + 64) = v9;
      v12 = v5[5];
      v35 = v5[4];
      v36 = v12;
      v37 = *(v5 + 12);
      v13 = v5[1];
      v31 = *v5;
      v32 = v13;
      v14 = v5[3];
      v33 = v5[2];
      v34 = v14;
      outlined init with copy of MeshDescriptor(v1 + 16, v1 + 120);
      MeshDescriptor.makeGeomMesh()(&v28);
      if (v30)
      {
        break;
      }

      v26 = v28;
      outlined destroy of MeshDescriptor(v1 + 16);
      v16 = *(v27 + 16);
      v15 = *(v27 + 24);
      if (v16 >= v15 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1);
      }

      *(v27 + 16) = v16 + 1;
      *(v27 + 8 * v16 + 32) = v26;
      if (!i)
      {
        goto LABEL_8;
      }

      v5 = (v5 + 104);
    }

    v19 = v29;
    *(v1 + 288) = v28;
    *(v1 + 304) = v19;
    lazy protocol witness table accessor for type GeomMeshError and conformance GeomMeshError();
    swift_willThrowTypedImpl();
    v20 = *(v1 + 288);
    v21 = *(v1 + 296);
    v22 = *(v1 + 304);
    swift_allocError();
    *v23 = v20;
    *(v23 + 8) = v21;
    *(v23 + 16) = v22;
    outlined destroy of MeshDescriptor(v1 + 16);

    v24 = *(v1 + 8);

    return v24();
  }

  else
  {
LABEL_8:
    *(v1 + 320) = v4;
    *(v1 + 328) = REMeshCompileOptionsCreate();
    type metadata accessor for MainActor();
    *(v1 + 336) = static MainActor.shared.getter();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();

    return MEMORY[0x1EEE6DFA0](static MeshResource.generate(from:), v18, v17);
  }
}

uint64_t static MeshResource.generateAsync(from:)(uint64_t a1)
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = specialized static __ServiceLocator.shared.getter();
  v7 = *(*(v6 + 168) + 16);
  swift_beginAccess();
  v8 = *(v6 + 24);
  swift_unownedRetainStrong();
  v9 = *(v8 + 32);

  v10 = v7;
  v11 = v9;

  *v5 = v11;
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8020], v2);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  result = (*(v3 + 8))(v5, v2);
  if (v11)
  {
    v14 = swift_allocObject();
    v14[2] = v10;
    v14[3] = a1;
    v14[4] = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCyAA12MeshResourceCGMd, &_s10RealityKit11LoadRequestCyAA12MeshResourceCGMR);
    v15 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit12MeshResourceCs5Error_pGSgGMd, &_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOy0A3Kit12MeshResourceCs5Error_pGSgGMR);
    v16 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
    v17 = swift_allocObject();
    *(v17 + 16) = 0;
    *(v16 + 16) = v17;
    *(v16 + 24) = 0;
    *(v16 + 32) = -1;
    *(v15 + 16) = v16;
    v18 = swift_allocObject();
    v18[2] = partial apply for closure #1 in static MeshResource.generateAsync(from:);
    v18[3] = v14;
    v18[4] = v16;
    v18[5] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy10RealityKit12MeshResourceCs5Error_pGMd, &_s7Combine6FutureCy10RealityKit12MeshResourceCs5Error_pGMR);
    swift_allocObject();

    v19 = Future.init(_:)();

    *(v15 + 24) = v19;
    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in static MeshResource.generateAsync(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v23 = a3;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DispatchQoS();
  v13 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  v17 = swift_allocObject();
  v17[2] = a4;
  v17[3] = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Result<TextureResource, Error>) -> ();
  v17[4] = v16;
  v17[5] = a5;
  aBlock[4] = partial apply for closure #1 in closure #1 in static MeshResource.generateAsync(from:);
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_27;
  v18 = _Block_copy(aBlock);

  v19 = a5;
  static DispatchQoS.unspecified.getter();
  v24 = MEMORY[0x1E69E7CC0];
  _sSo10CFErrorRefaABs5Error10FoundationWlTm_4(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1C68F3CA0](0, v15, v12, v18);
  _Block_release(v18);
  (*(v10 + 8))(v12, v9);
  (*(v13 + 8))(v15, v22);
}

uint64_t closure #1 in closure #1 in static MeshResource.generateAsync(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = a2;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a1 + 16);
  v17 = MEMORY[0x1E69E7CC0];
  if (v16)
  {
    v47 = v13;
    v48 = v12;
    v49 = a4;
    v50 = v8;
    v51 = v7;
    v52 = a3;
    v73 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v16, 0);
    v17 = v73;
    v18 = (a1 + 32);
    for (i = v16 - 1; ; --i)
    {
      v20 = v18[3];
      v21 = v18[5];
      v70 = v18[4];
      v71 = v21;
      v22 = v18[1];
      aBlock = *v18;
      v67 = v22;
      v23 = v18[3];
      v25 = *v18;
      v24 = v18[1];
      v68 = v18[2];
      v69 = v23;
      v26 = v18[5];
      v60 = v70;
      v61 = v26;
      v56 = v25;
      v57 = v24;
      v72 = *(v18 + 12);
      v62 = *(v18 + 12);
      v58 = v68;
      v59 = v20;
      outlined init with copy of MeshDescriptor(&aBlock, v55);
      MeshDescriptor.makeGeomMesh()(&v63);
      if (v65)
      {
        v56 = v63;
        LOWORD(v57) = v64;
        lazy protocol witness table accessor for type GeomMeshError and conformance GeomMeshError();
        swift_willThrowTypedImpl();
        v29 = v56;
        v30 = v57;
        v31 = swift_allocError();
        *v32 = v29;
        *(v32 + 16) = v30;
        outlined destroy of MeshDescriptor(&aBlock);

        v33 = swift_allocObject();
        v34 = v52;
        v33[2] = v53;
        v33[3] = v34;
        v33[4] = v31;
        *&v58 = partial apply for closure #2 in doGenerateAsync #1 @Sendable () in closure #1 in closure #1 in TextureResource.init(cubeFromEquirectangular:named:quality:faceSize:options:);
        *(&v58 + 1) = v33;
        *&v56 = MEMORY[0x1E69E9820];
        *(&v56 + 1) = 1107296256;
        *&v57 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
        *(&v57 + 1) = &block_descriptor_196;
        v35 = _Block_copy(&v56);

        v36 = v31;
        static DispatchQoS.unspecified.getter();
        v55[0] = MEMORY[0x1E69E7CC0];
        _sSo10CFErrorRefaABs5Error10FoundationWlTm_4(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
        lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
        v37 = v51;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        MEMORY[0x1C68F3CA0](0, v15, v10, v35);
        _Block_release(v35);

        (*(v50 + 8))(v10, v37);
        (*(v47 + 8))(v15, v48);
      }

      v54 = v63;
      outlined destroy of MeshDescriptor(&aBlock);
      v73 = v17;
      v28 = *(v17 + 16);
      v27 = *(v17 + 24);
      if (v28 >= v27 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1);
        v17 = v73;
      }

      *(v17 + 16) = v28 + 1;
      *(v17 + 8 * v28 + 32) = v54;
      if (!i)
      {
        break;
      }

      v18 = (v18 + 104);
    }

    a3 = v52;
  }

  REMeshCompileOptionsCreate();
  v39 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v39 + 120, &v56);
  v40 = *(&v57 + 1);
  v41 = v58;
  __swift_project_boxed_opaque_existential_1(&v56, *(&v57 + 1));
  (*(v41 + 32))(v40, v41);
  v42 = swift_allocObject();
  *(v42 + 16) = v53;
  *(v42 + 24) = a3;
  *&v68 = partial apply for closure #2 in closure #1 in closure #1 in static MeshResource.generateAsync(from:);
  *(&v68 + 1) = v42;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v67 = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer?, @guaranteed CFErrorRef?) -> ();
  *(&v67 + 1) = &block_descriptor_202;
  v43 = _Block_copy(&aBlock);

  v44 = v17 + 32;
  REAssetManagerMeshAssetCreateFromModelsWithOptionsAsyncWithError();
  _Block_release(v43);
  __swift_destroy_boxed_opaque_existential_1(&v56);
  for (j = *(v17 + 16); j; --j)
  {
    v44 += 8;
    RERelease();
  }

  return RERelease();
}

void closure #2 in closure #1 in closure #1 in static MeshResource.generateAsync(from:)(uint64_t a1, void *a2, void (*a3)(uint64_t, uint64_t))
{
  if (a1)
  {
    if (REAssetGetSwiftObject())
    {
      type metadata accessor for MeshResource();
      v5 = swift_dynamicCastClass();
      if (v5)
      {
LABEL_6:
        a3(v5, 0);

        return;
      }

      swift_unknownObjectRelease();
    }

    type metadata accessor for MeshResource();
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    RERetain();
    REAssetSetSwiftObject();
    goto LABEL_6;
  }

  if (a2)
  {
    type metadata accessor for CFErrorRef(0);
    _sSo10CFErrorRefaABs5Error10FoundationWlTm_4(&lazy protocol witness table cache variable for type CFErrorRef and conformance CFErrorRef, type metadata accessor for CFErrorRef, MEMORY[0x1E6969E70]);
    v7 = swift_allocError();
    *v8 = a2;
  }

  else
  {
    lazy protocol witness table accessor for type MeshResourceError and conformance MeshResourceError();
    v7 = swift_allocError();
    *v9 = xmmword_1C18A4F10;
  }

  v10 = a2;
  a3(v7, 1);
}

uint64_t MeshResource.Skeleton.Joint.name.getter()
{
  v1 = *v0;

  return v1;
}

void MeshResource.Skeleton.Joint.name.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t MeshResource.Skeleton.Joint.parentIndex.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

void MeshResource.Skeleton.Joint.inverseBindPoseMatrix.setter(__n128 a1, __n128 a2, __n128 a3, __n128 a4)
{
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = a4;
}

void MeshResource.Skeleton.Joint.restPoseTransform.setter(__n128 a1, __n128 a2, __n128 a3)
{
  v3[6] = a1;
  v3[7] = a2;
  v3[8] = a3;
}

unint64_t MeshResource.Skeleton.Joint.init(name:parentIndex:inverseBindPoseMatrix:restPoseTransform:)@<X0>(unint64_t result@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, char a4@<W3>, __n128 *a5@<X8>, __n128 a6@<Q0>, __n128 a7@<Q1>, __n128 a8@<Q2>, __n128 a9@<Q3>, __n128 a10@<Q4>, __n128 a11@<Q5>, __n128 a12@<Q6>)
{
  a5->n128_u64[0] = result;
  a5->n128_u64[1] = a2;
  a5[1].n128_u64[0] = a3;
  a5[1].n128_u8[8] = a4 & 1;
  a5[2] = a6;
  a5[3] = a7;
  a5[4] = a8;
  a5[5] = a9;
  a5[6] = a10;
  a5[7] = a11;
  a5[8] = a12;
  return result;
}

uint64_t MeshResource.Skeleton.id.getter()
{
  v1 = *v0;

  return v1;
}

void MeshResource.Skeleton.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t MeshResource.Skeleton.init(id:joints:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

void MeshResource.Skeleton.init(id:jointNames:inverseBindPoseMatrices:restPoseTransforms:parentIndices:)(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  if (a6)
  {
    v19 = a1;
    v20 = a2;
    v18 = a3;
    v9 = a4;
    v10 = a5;
    v11 = *(a6 + 16);
    if (v11)
    {
      v21 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11, 0);
      v12 = v21;
      v13 = *(v21 + 16);
      v14 = (a6 + 40);
      do
      {
        if (*v14)
        {
          v15 = -1;
        }

        else
        {
          v15 = *(v14 - 1);
        }

        v21 = v12;
        v16 = *(v12 + 24);
        if (v13 >= v16 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v13 + 1, 1);
          v12 = v21;
        }

        *(v12 + 16) = v13 + 1;
        *(v12 + 8 * v13 + 32) = v15;
        v14 += 16;
        ++v13;
        --v11;
      }

      while (v11);
    }

    else
    {

      v12 = MEMORY[0x1E69E7CC0];
    }

    a5 = v10;
    a4 = v9;
    a3 = v18;
    a1 = v19;
    a2 = v20;
  }

  else
  {
    v12 = 0;
  }

  MeshResource.Skeleton.init(id:jointNames:inverseBindPose:localRestPose:parentIndices:)(a1, a2, a3, a4, a5, v12, &v21);
  v17 = v22;
  *a7 = v21;
  *(a7 + 8) = v17;
}

void closure #1 in MeshResource.Skeleton.init(id:jointNames:inverseBindPose:localRestPose:parentIndices:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 16);
  if (v4)
  {
    v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v5 + 16) = v4;
    v6 = (v5 + 16);
    if (HIDWORD(v4))
    {
      goto LABEL_28;
    }

    v7 = v5;
    v8 = v5 + 32;
    RESkeletonDefinitionGetParentIndices();
    *(v7 + 16) = v4;
    type metadata accessor for RESRT(0);
    v9 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v9 + 16) = v4;
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
    v8 = MEMORY[0x1E69E7CC0] + 32;
    RESkeletonDefinitionGetParentIndices();
    *(v9 + 16) = 0;
    v6 = (v9 + 16);
  }

  RESkeletonDefinitionGetLocalRestPoses();
  *(v9 + 16) = v4;
  v10 = *(a3 + 16);
  v11 = *(v10 + 2);
  if (v11)
  {
    if (v11 > v4 || v11 > *v6)
    {
      goto LABEL_29;
    }

    v13 = 0;
    v14 = 0;
    v15 = (v9 + 64);
    while (1)
    {
      v16 = *(v8 + 4 * v14);
      if (v16 == -1)
      {
        v17 = 0;
      }

      else
      {
        v17 = v16;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(a3 + 16) = v10;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v10 = specialized _ArrayBuffer._consumeAndCreateNew()(v10);
        *(a3 + 16) = v10;
      }

      if (v14 >= *(v10 + 2))
      {
        break;
      }

      v19 = &v10[v13];
      *(v19 + 6) = v17;
      v19[56] = v16 == -1;
      v24 = *(v15 - 1);
      v25 = *(v15 - 2);
      v23 = *v15;
      if (one-time initialization token for identity != -1)
      {
        swift_once();
      }

      v20 = *(a3 + 16);
      v21 = swift_isUniquelyReferenced_nonNull_native();
      *(a3 + 16) = v20;
      if ((v21 & 1) == 0)
      {
        v20 = specialized _ArrayBuffer._consumeAndCreateNew()(v20);
        *(a3 + 16) = v20;
      }

      if (v14 >= *(v20 + 2))
      {
        goto LABEL_27;
      }

      ++v14;
      v22 = &v20[v13];
      *(v22 + 8) = v25;
      *(v22 + 9) = v24;
      *(v22 + 10) = v23;
      v10 = *(a3 + 16);
      v13 += 144;
      v15 += 3;
      if (v11 == v14)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    return;
  }

LABEL_23:
}

void (*MeshResource.Part.skeletonID.modify(void *a1))(uint64_t *a1, char a2)
{
  v4 = *(v1 + 24);
  v3 = *(v1 + 32);
  a1[2] = v1;
  a1[3] = v3;
  *a1 = v4;
  a1[1] = v3;

  return MeshResource.Part.skeletonID.modify;
}

void MeshResource.Part.skeletonID.modify(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  if (a2)
  {

    *(v4 + 24) = v3;
    *(v4 + 32) = v2;
  }

  else
  {

    *(v4 + 24) = v3;
    *(v4 + 32) = v2;
  }
}

void MeshResource.Part.jointInfluences.setter(_OWORD *a1)
{
  v2 = a1[9];
  v59 = a1[8];
  v60[0] = v2;
  *(v60 + 9) = *(a1 + 153);
  v3 = a1[5];
  v55 = a1[4];
  v56 = v3;
  v4 = a1[7];
  v57 = a1[6];
  v58 = v4;
  v5 = a1[1];
  v51 = *a1;
  v52 = v5;
  v6 = a1[3];
  v53 = a1[2];
  v54 = v6;
  if (one-time initialization token for jointInfluences != -1)
  {
    v34 = a1;
    swift_once();
    a1 = v34;
  }

  v7 = static MeshBuffers.jointInfluences;
  v8 = unk_1EBEAD140;
  v9 = word_1EBEAD148;
  v10 = HIBYTE(word_1EBEAD148);
  v11 = a1[9];
  v69 = a1[8];
  v70[0] = v11;
  *(v70 + 9) = *(a1 + 153);
  v12 = a1[5];
  v65 = a1[4];
  v66 = v12;
  v13 = a1[7];
  v67 = a1[6];
  v68 = v13;
  v14 = a1[1];
  v61 = *a1;
  v62 = v14;
  v15 = a1[3];
  v63 = a1[2];
  v64 = v15;
  if (_s17RealityFoundation19ShaderGraphMaterialVSgWOg(&v61) == 1)
  {
    *&v39 = 0;
    v37 = 0u;
    v38 = 0u;
    if (v10)
    {
      v16 = 256;
    }

    else
    {
      v16 = 0;
    }

    specialized Dictionary.subscript.setter(&v37, v7, v8, v16 | v9);
    if (one-time initialization token for jointInfluenceEndIndices != -1)
    {
      swift_once();
    }

    v17 = static MeshBuffers.jointInfluenceEndIndices;
    v18 = *algn_1EBEAD158;
    v19 = word_1EBEAD160;
    *&v39 = 0;
    v37 = 0u;
    v38 = 0u;
    if (HIBYTE(word_1EBEAD160))
    {
      v20 = 256;
    }

    else
    {
      v20 = 0;
    }

    specialized Dictionary.subscript.setter(&v37, v17, v18, v20 | v19);
LABEL_29:
    *(v1 + 40) = 0;
    *(v1 + 44) = 1;
    return;
  }

  v49[2] = v63;
  v49[3] = v64;
  v49[4] = v65;
  v50 = v66;
  v49[0] = v61;
  v49[1] = v62;
  v35[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLVy_AA0C14JointInfluenceVGMd, &_s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLVy_AA0C14JointInfluenceVGMR);
  v35[4] = &protocol witness table for MeshBufferDictionary.BufferEntry<A>;
  v21 = swift_allocObject();
  v35[0] = v21;

  outlined init with copy of [String : String](&v61, v47, &_s17RealityFoundation10MeshBufferVyAA0C14JointInfluenceVGMd, &_s17RealityFoundation10MeshBufferVyAA0C14JointInfluenceVGMR);

  outlined init with copy of [String : String](&v61, v47, &_s17RealityFoundation10MeshBufferVyAA0C14JointInfluenceVGMd, &_s17RealityFoundation10MeshBufferVyAA0C14JointInfluenceVGMR);
  if (v10)
  {
    v22 = 256;
  }

  else
  {
    v22 = 0;
  }

  _s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLV_6bufferAFy_xGqd___AA0cD0VyxGtc7ElementQyd__RszAA0cD8SemanticRd__lufCAA0C14JointInfluenceV_AA0C7BuffersO0P0Vy_APGTt2B5Tm(v7, v8, v22 | v9, v49, v21 + 16);
  specialized Dictionary.subscript.setter(v35, v7, v8, v22 | v9);
  outlined destroy of BodyTrackingComponent?(&v61, &_s17RealityFoundation10MeshBufferVyAA0C14JointInfluenceVGMd, &_s17RealityFoundation10MeshBufferVyAA0C14JointInfluenceVGMR);
  v45 = v59;
  *v46 = v60[0];
  *&v46[9] = *(v60 + 9);
  v41 = v55;
  v42 = v56;
  v43 = v57;
  v44 = v58;
  v37 = v51;
  v38 = v52;
  v39 = v53;
  v40 = v54;
  outlined init with copy of MeshResource.JointInfluences.InfluenceRate(&v42 + 8, v47);
  outlined destroy of BodyTrackingComponent?(&v51, &_s10RealityKit12MeshResourceC0A10FoundationE15JointInfluencesVSgMd, &_s10RealityKit12MeshResourceC0A10FoundationE15JointInfluencesVSgMR);
  v23 = DWORD2(v42);
  if ((v46[24] & 0x80000000) != 0)
  {
    *&v47[1] = v43;
    *&v47[3] = v44;
    *&v47[5] = v45;
    *&v47[7] = *v46;
    v47[0] = *(&v42 + 1);
    v47[9] = *&v46[16];
    v48 = v46[24] & 0x7F;
    if (one-time initialization token for jointInfluenceEndIndices != -1)
    {
      swift_once();
    }

    v28 = static MeshBuffers.jointInfluenceEndIndices;
    v29 = *algn_1EBEAD158;
    v30 = word_1EBEAD160;
    v31 = HIBYTE(word_1EBEAD160);
    v36[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLVy_s5Int32VGMd, &_s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLVy_s5Int32VGMR);
    v36[4] = &protocol witness table for MeshBufferDictionary.BufferEntry<A>;
    v32 = swift_allocObject();
    v36[0] = v32;

    outlined init with copy of MeshResource.JointInfluences.InfluenceRate(&v42 + 8, v35);
    if (v31)
    {
      v33 = 256;
    }

    else
    {
      v33 = 0;
    }

    _s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLV_6bufferAFy_xGqd___AA0cD0VyxGtc7ElementQyd__RszAA0cD8SemanticRd__lufCAA0C14JointInfluenceV_AA0C7BuffersO0P0Vy_APGTt2B5Tm(v28, v29, v33 | v30, v47, v32 + 16);
    specialized Dictionary.subscript.setter(v36, v28, v29, v33 | v30);
    outlined destroy of MeshResource.JointInfluences.InfluenceRate(&v42 + 8);
    goto LABEL_29;
  }

  if (one-time initialization token for jointInfluenceEndIndices != -1)
  {
    swift_once();
  }

  v24 = static MeshBuffers.jointInfluenceEndIndices;
  v25 = *algn_1EBEAD158;
  v26 = word_1EBEAD160;
  memset(v47, 0, 40);
  if (HIBYTE(word_1EBEAD160))
  {
    v27 = 256;
  }

  else
  {
    v27 = 0;
  }

  specialized Dictionary.subscript.setter(v47, v24, v25, v27 | v26);
  *(v1 + 40) = v23;
  *(v1 + 44) = 0;
}

uint64_t (*MeshResource.Part.jointInfluences.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x2C8uLL);
  }

  *a1 = v3;
  *(v3 + 704) = v1;
  MeshResource.Part.jointInfluences.getter(v3);
  return MeshResource.Part.jointInfluences.modify;
}

void MeshResource.Part.jointInfluences.modify(_OWORD **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2[7];
    v5 = v2[8];
    v4 = v2[9];
    v2[30] = v5;
    v2[31] = v4;
    *(v2 + 505) = *(v2 + 153);
    v6 = v2[3];
    v8 = v2[4];
    v7 = v2[5];
    v2[26] = v8;
    v2[27] = v7;
    v9 = v2[5];
    v11 = v2[6];
    v10 = v2[7];
    v2[28] = v11;
    v2[29] = v10;
    v12 = v2[1];
    v2[22] = *v2;
    v2[23] = v12;
    v13 = v2[3];
    v15 = *v2;
    v14 = v2[1];
    v16 = v2[2];
    v2[24] = v16;
    v2[25] = v13;
    v17 = v2[9];
    v36 = v5;
    v37[0] = v17;
    *(v37 + 9) = *(v2 + 153);
    v32 = v8;
    v33 = v9;
    v34 = v11;
    v35 = v3;
    v28 = v15;
    v29 = v14;
    v30 = v16;
    v31 = v6;
    outlined init with copy of [String : String]((v2 + 22), (v2 + 33), &_s10RealityKit12MeshResourceC0A10FoundationE15JointInfluencesVSgMd, &_s10RealityKit12MeshResourceC0A10FoundationE15JointInfluencesVSgMR);
    MeshResource.Part.jointInfluences.setter(&v28);
    v18 = v2[9];
    v2[19] = v2[8];
    v2[20] = v18;
    *(v2 + 329) = *(v2 + 153);
    v19 = v2[5];
    v2[15] = v2[4];
    v2[16] = v19;
    v20 = v2[7];
    v2[17] = v2[6];
    v2[18] = v20;
    v21 = v2[1];
    v2[11] = *v2;
    v2[12] = v21;
    v22 = v2[3];
    v2[13] = v2[2];
    v2[14] = v22;
    outlined destroy of BodyTrackingComponent?((v2 + 11), &_s10RealityKit12MeshResourceC0A10FoundationE15JointInfluencesVSgMd, &_s10RealityKit12MeshResourceC0A10FoundationE15JointInfluencesVSgMR);
  }

  else
  {
    v23 = v2[9];
    v36 = v2[8];
    v37[0] = v23;
    *(v37 + 9) = *(v2 + 153);
    v24 = v2[5];
    v32 = v2[4];
    v33 = v24;
    v25 = v2[7];
    v34 = v2[6];
    v35 = v25;
    v26 = v2[1];
    v28 = *v2;
    v29 = v26;
    v27 = v2[3];
    v30 = v2[2];
    v31 = v27;
    MeshResource.Part.jointInfluences.setter(&v28);
  }

  free(v2);
}

uint64_t MeshResource.JointInfluences.influences.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v4 = *(v1 + 64);
  v10 = *(v1 + 48);
  v3 = v10;
  v11 = v4;
  v12 = *(v1 + 80);
  v6 = *(v1 + 16);
  v9[0] = *v1;
  v5 = v9[0];
  v9[1] = v6;
  v9[2] = v2;
  *(a1 + 80) = v12;
  *(a1 + 32) = v2;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v5;
  *(a1 + 16) = v6;
  return outlined init with copy of [String : String](v9, v8, &_s17RealityFoundation10MeshBufferVyAA0C14JointInfluenceVGMd, &_s17RealityFoundation10MeshBufferVyAA0C14JointInfluenceVGMR);
}

__int128 *MeshResource.JointInfluences.init(influences:influencesPerVertex:)@<X0>(__int128 *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a2 == a2 && (a2 - 256) >= 0xFFFFFF01)
  {
    LOBYTE(v7) = *(result + 80);
    v6 = result[3];
    v3 = result[4];
    v4 = *result;
    v5 = result[1];
    *(a3 + 32) = result[2];
    *(a3 + 48) = v6;
    *(a3 + 64) = v3;
    *a3 = v4;
    *(a3 + 16) = v5;
    *(a3 + 80) = v7;
    *(a3 + 88) = a2;
    *(a3 + 152) = 0;
    *(a3 + 168) = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

__n128 MeshResource.JointInfluences.init(influences:influencesPerVertex:)@<Q0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1[3];
  v22 = a1[2];
  v23 = v4;
  v24 = a1[4];
  LOBYTE(v25) = *(a1 + 80);
  v5 = a1[1];
  v20 = *a1;
  v21 = v5;
  v6 = _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCs5Int32V_Tt1g50134_s10RealityKit12MeshResourceC0A10FoundationE15JointInfluencesV10influences0H9PerVertexAfD0C6BufferVyAD0cF9InfluenceVG_SaySiGtcfcySrys5F13VGz_SiztXEfU_SaySiGSiTf1nc_nTf4ngn_n(*(a2 + 16), a2, *(a2 + 16));

  _s17RealityFoundation10MeshBufferVyACyxGqd__c7ElementQyd__RszAA09AttributeD0Rd__lufCs5Int32V_AA05ArrayD0VyAIGTt1g5(v6, v16);
  v7 = v18;
  v8 = v17 & 0x10F;
  v9 = v19 & 3 | 0x80;
  result = v16[0];
  v11 = v16[1];
  v12 = v16[2];
  v13 = v16[3];
  v14 = v23;
  *(a3 + 32) = v22;
  *(a3 + 48) = v14;
  *(a3 + 64) = v24;
  *(a3 + 80) = v25;
  v15 = v21;
  *a3 = v20;
  *(a3 + 16) = v15;
  *(a3 + 88) = result;
  *(a3 + 104) = v11;
  *(a3 + 120) = v12;
  *(a3 + 136) = v13;
  *(a3 + 152) = v8;
  *(a3 + 160) = v7;
  *(a3 + 168) = v9;
  return result;
}

void key path setter for MeshResource.Contents.skeletons : MeshResource.Contents(void *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];

  *(a2 + 32) = v3;
  *(a2 + 40) = v4;
}

uint64_t (*MeshResource.Contents.skeletons.modify(void *a1))()
{
  a1[2] = v1;
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  *a1 = v3;
  a1[1] = v4;

  return MeshResource.Contents.skeletons.modify;
}

void MeshResource.Contents.skeletons.modify(void *a1, char a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a1;
  if (a2)
  {

    *(v3 + 32) = v4;
    *(v3 + 40) = v2;
  }

  else
  {

    *(v3 + 32) = v4;
    *(v3 + 40) = v2;
  }
}

uint64_t static MeshResource.generate(from:skeletons:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v65 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
    v4 = v65;
    v6 = (a1 + 32);
    for (i = v3 - 1; ; --i)
    {
      v8 = v6[3];
      v9 = v6[5];
      v62 = v6[4];
      v63 = v9;
      v10 = v6[1];
      v58 = *v6;
      v59 = v10;
      v11 = v6[3];
      v13 = *v6;
      v12 = v6[1];
      v60 = v6[2];
      v61 = v11;
      v14 = v6[5];
      v52 = v62;
      v53 = v14;
      v48 = v13;
      v49 = v12;
      v64 = *(v6 + 12);
      v54 = *(v6 + 12);
      v50 = v60;
      v51 = v8;
      outlined init with copy of MeshDescriptor(&v58, v47);
      MeshDescriptor.makeGeomMesh()(&v55);
      if (v57)
      {
        break;
      }

      v45 = v55;
      outlined destroy of MeshDescriptor(&v58);
      v65 = v4;
      v16 = *(v4 + 16);
      v15 = *(v4 + 24);
      if (v16 >= v15 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1);
        v4 = v65;
      }

      *(v4 + 16) = v16 + 1;
      *(v4 + 8 * v16 + 32) = v45;
      if (!i)
      {
        goto LABEL_8;
      }

      v6 = (v6 + 104);
    }

    v48 = v55;
    LOWORD(v49) = v56;
    lazy protocol witness table accessor for type GeomMeshError and conformance GeomMeshError();
    swift_willThrowTypedImpl();
    v39 = *(&v48 + 1);
    v33 = v48;
    v40 = v49;
    swift_allocError();
    *v41 = v33;
    *(v41 + 8) = v39;
    *(v41 + 16) = v40;
    outlined destroy of MeshDescriptor(&v58);

    return v33;
  }

LABEL_8:
  v43 = v4;
  v17 = *(a2 + 16);
  v66 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v17, 0, MEMORY[0x1E69E7CC0]);
  v44 = v17;
  if (!v17)
  {
LABEL_20:
    REMeshCompileOptionsCreate();
    v30 = specialized static __ServiceLocator.shared.getter();
    swift_beginAccess();
    outlined init with copy of __REAssetService(v30 + 120, &v58);
    v31 = *(&v59 + 1);
    v32 = v60;
    __swift_project_boxed_opaque_existential_1(&v58, *(&v59 + 1));
    (*(v32 + 32))(v31, v32);
    v33 = v43;
    v34 = v43 + 32;
    v35 = v66 + 32;
    v36 = REAssetManagerMeshAssetCreateFromModelsAndSkeletonsWithOptionsNullable();
    __swift_destroy_boxed_opaque_existential_1(&v58);
    for (j = *(v43 + 16); j; --j)
    {
      v34 += 8;
      RERelease();
    }

    for (k = *(v66 + 2); k; --k)
    {
      v35 += 8;
      RERelease();
    }

    if (!v36)
    {
      lazy protocol witness table accessor for type MeshResourceError and conformance MeshResourceError();
      swift_allocError();
      *v42 = xmmword_1C18A4F10;
      swift_willThrow();
      RERelease();
      return v33;
    }

    REAssetHandleLoadNow();
    if (REAssetGetSwiftObject())
    {
      type metadata accessor for MeshResource();
      v33 = swift_dynamicCastClass();
      if (v33)
      {
LABEL_29:
        RERelease();
        RERelease();
        return v33;
      }

      swift_unknownObjectRelease();
    }

    type metadata accessor for MeshResource();
    v33 = swift_allocObject();
    *(v33 + 16) = v36;
    RERetain();
    REAssetSetSwiftObject();
    goto LABEL_29;
  }

  v18 = 0;
  while (1)
  {
    v20 = a2 + 32 + 32 * v18;
    v21 = *(v20 + 16);
    v22 = *(v20 + 24);

    RESkeletonDefinitionCreate();
    String.utf8CString.getter();
    RESkeletonDefinitionSetName();

    v24 = *(v22 + 16);
    if (HIDWORD(v24))
    {
      break;
    }

    v46 = v18;
    result = RESkeletonDefinitionSetJointCount();
    if (v24)
    {
      v25 = 0;
      v26 = v22 + 40;
      do
      {
        String.utf8CString.getter();
        RESkeletonDefinitionSetJointName();

        v26 += 16;
        ++v25;
      }

      while (v24 != v25);
    }

    if (HIDWORD(*(v21 + 16)))
    {
      goto LABEL_34;
    }

    RESkeletonDefinitionSetInverseBindPoses();
    GeomSkeletonV2 = RESkeletonDefinitionCreateGeomSkeletonV2();
    RERelease();

    if (GeomSkeletonV2)
    {
      v29 = *(v66 + 2);
      v28 = *(v66 + 3);
      if (v29 >= v28 >> 1)
      {
        v66 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1, v66);
      }

      v19 = v66;
      *(v66 + 2) = v29 + 1;
      *&v19[8 * v29 + 32] = GeomSkeletonV2;
    }

    v18 = v46 + 1;
    if (v46 + 1 == v44)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

double static MeshResource.LevelAssembly_v1.sparse_v1(meshPartIndices:)@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;

  return result;
}

uint64_t MeshResource.Level_v1.id.getter()
{
  v1 = *v0;

  return v1;
}

void MeshResource.Level_v1.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

double MeshResource.Level_v1.levelAssembly.getter@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 16);

  return result;
}

void MeshResource.Level_v1.levelAssembly.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 16) = v2;
}

void MeshResource.Level_v1.levelStrategy.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 28);
  *a1 = *(v1 + 24);
  *(a1 + 4) = v2;
}

uint64_t MeshResource.Level_v1.levelStrategy.setter(uint64_t result)
{
  v2 = *(result + 4);
  *(v1 + 24) = *result;
  *(v1 + 28) = v2;
  return result;
}

uint64_t MeshResource.Level_v1.init(id:levelAssembly:levelStrategy:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, int *a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *a3;
  v6 = *a4;
  v7 = *(a4 + 4);
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = v5;
  *(a5 + 24) = v6;
  *(a5 + 28) = v7;
  return result;
}

double MeshResource.Model.init(id:parts:levels:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  MeshPartCollection.init(_:)(a3, &v8);
  *(a5 + 16) = v8;
  MeshLevelCollection_v1.init(_:)(a4, &v8);
  result = *&v8;
  *(a5 + 32) = v8;
  return result;
}

uint64_t MeshResource.Part.customMirror.getter()
{
  v1 = type metadata accessor for Mirror.AncestorRepresentation();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v22[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v22[-v6];
  v8 = v0[1];
  v26 = *v0;
  v27 = v8;
  v10 = *v0;
  v9 = v0[1];
  *v28 = v0[2];
  *&v28[9] = *(v0 + 41);
  v23 = v10;
  v24 = v9;
  v25[0] = v0[2];
  *(v25 + 9) = *(v0 + 41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1C189FFC0;
  *(v11 + 32) = 25705;
  *(v11 + 40) = 0xE200000000000000;
  v12 = v27;
  v13 = MEMORY[0x1E69E6158];
  *(v11 + 48) = *(&v26 + 1);
  *(v11 + 56) = v12;
  *(v11 + 72) = v13;
  strcpy((v11 + 80), "materialIndex");
  v14 = *&v28[16];
  v15 = MEMORY[0x1E69E6530];
  *(v11 + 94) = -4864;
  *(v11 + 96) = v14;
  *(v11 + 120) = v15;
  *(v11 + 128) = 0x6E6F74656C656B73;
  *(v11 + 136) = 0xEA00000000004449;
  v17 = *(&v27 + 1);
  v16 = *v28;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  *(v11 + 144) = v17;
  *(v11 + 152) = v16;
  *(v11 + 168) = v18;
  *(v11 + 176) = 0x73726566667562;
  *(v11 + 184) = 0xE700000000000000;
  v19 = MeshBufferDictionary.entries.getter(v26);
  *(v11 + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSD6ValuesVy17RealityFoundation11MeshBuffersO10IdentifierVAC03AnyD6BufferV_GMd, &_sSD6ValuesVy17RealityFoundation11MeshBuffersO10IdentifierVAC03AnyD6BufferV_GMR);
  *(v11 + 192) = v19;
  v20 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v20 - 8) + 56))(v7, 1, 1, v20);
  (*(v2 + 104))(v4, *MEMORY[0x1E69E75D8], v1);
  outlined init with copy of MeshResource.Part(&v26, v22);

  return Mirror.init<A>(_:children:displayStyle:ancestorRepresentation:)();
}

uint64_t MeshResource.replace(with:)(_OWORD *a1)
{
  *(v2 + 16) = v1;
  v3 = a1[1];
  *(v2 + 24) = *a1;
  *(v2 + 40) = v3;
  *(v2 + 56) = a1[2];
  return MEMORY[0x1EEE6DFA0](MeshResource.replace(with:), 0, 0);
}

uint64_t MeshResource.replace(with:)()
{
  v3 = MeshResource.Contents.makeDefinitions()();
  rawValue = v3._0._rawValue;
  *(v0 + 72) = v3;
  if (!v4)
  {
    if (v3._0._rawValue >> 62)
    {
      rawValue = __CocoaSet.count.getter();
      v7 = rawValue;
    }

    else
    {
      v7 = *((v3._0._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v8 = MEMORY[0x1E69E7CC0];
    if (v7)
    {
      v25 = MEMORY[0x1E69E7CC0];
      rawValue = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7 & ~(v7 >> 63), 0);
      if (v7 < 0)
      {
        goto LABEL_36;
      }

      v10 = 0;
      v8 = v25;
      do
      {
        if ((v3._0._rawValue & 0xC000000000000001) != 0)
        {
          v11 = MEMORY[0x1C68F41F0](v10, v3._0._rawValue);
        }

        else
        {
        }

        v12 = *(v11 + 16);

        v14 = *(v25 + 16);
        v13 = *(v25 + 24);
        if (v14 >= v13 >> 1)
        {
          rawValue = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
        }

        ++v10;
        *(v25 + 16) = v14 + 1;
        *(v25 + 8 * v14 + 32) = v12;
      }

      while (v7 != v10);
    }

    if (v3._1._rawValue >> 62)
    {
      rawValue = __CocoaSet.count.getter();
      v15 = rawValue;
    }

    else
    {
      v15 = *((v3._1._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v16 = MEMORY[0x1E69E7CC0];
    if (v15)
    {
      v26 = MEMORY[0x1E69E7CC0];
      rawValue = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v15 & ~(v15 >> 63), 0);
      if (v15 < 0)
      {
LABEL_37:
        __break(1u);
        return MEMORY[0x1EEE6DFA0](rawValue, v9, v2);
      }

      v17 = 0;
      v16 = v26;
      do
      {
        if ((v3._1._rawValue & 0xC000000000000001) != 0)
        {
          v18 = MEMORY[0x1C68F41F0](v17, v3._1._rawValue);
        }

        else
        {
        }

        v19 = *(v18 + 16);

        v21 = *(v26 + 16);
        v20 = *(v26 + 24);
        if (v21 >= v20 >> 1)
        {
          rawValue = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1);
        }

        ++v17;
        *(v26 + 16) = v21 + 1;
        *(v26 + 8 * v21 + 32) = v19;
      }

      while (v15 != v17);
    }

    v9 = *(v8 + 16);
    if (HIDWORD(v9))
    {
      __break(1u);
    }

    else if (!HIDWORD(*(v16 + 16)))
    {
      *(v0 + 88) = REMeshResourceDefinitionCreate();

      type metadata accessor for MainActor();
      *(v0 + 96) = static MainActor.shared.getter();
      v22 = dispatch thunk of Actor.unownedExecutor.getter();
      v24 = v23;
      rawValue = MeshResource.replace(with:);
      v9 = v22;
      v2 = v24;

      return MEMORY[0x1EEE6DFA0](rawValue, v9, v2);
    }

    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v5 = *(v0 + 8);

  return v5();
}

{
  v1 = *(v0 + 16);

  if (*(v1 + 16))
  {
    if (REAssetHandleConvertToMutable())
    {
      REMeshAssetReplaceAllWithResource();
      v2 = MeshResource.replace(with:);
      goto LABEL_7;
    }

    lazy protocol witness table accessor for type MeshResourceError and conformance MeshResourceError();
    v3 = swift_allocError();
    *v5 = xmmword_1C18B8FE0;
  }

  else
  {
    lazy protocol witness table accessor for type MeshResourceError and conformance MeshResourceError();
    v3 = swift_allocError();
    *v4 = 0;
    v4[1] = 0;
  }

  *(v0 + 104) = v3;
  swift_willThrow();
  v2 = MeshResource.replace(with:);
LABEL_7:

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  RERelease();

  v1 = *(v0 + 8);

  return v1();
}

{
  RERelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t specialized static MeshResource.Skeleton.Joint.== infix(_:_:)(float32x4_t *a1, uint64_t a2)
{
  v2 = a1[1].i64[0];
  v3 = a1[1].i8[8];
  v4 = a1[2];
  v5 = a1[3];
  v7 = a1[4];
  v6 = a1[5];
  v8 = a1[6];
  v9 = a1[7];
  v10 = a1[8];
  v11 = *(a2 + 16);
  v12 = *(a2 + 24);
  v13 = *(a2 + 32);
  v14 = *(a2 + 48);
  v15 = *(a2 + 64);
  v16 = *(a2 + 80);
  v17 = *(a2 + 96);
  v18 = *(a2 + 112);
  v19 = *(a2 + 128);
  if (a1->i64[0] != *a2 || a1->i64[1] != *(a2 + 8))
  {
    v35 = a1[7];
    v36 = a1[6];
    v33 = a1[4];
    v34 = a1[8];
    v32 = a1[5];
    v30 = *(a2 + 112);
    v31 = *(a2 + 96);
    v28 = a1[2];
    v29 = *(a2 + 128);
    v26 = *(a2 + 64);
    v27 = a1[3];
    v24 = *(a2 + 32);
    v25 = *(a2 + 80);
    v23 = *(a2 + 48);
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v14 = v23;
    v13 = v24;
    v16 = v25;
    v15 = v26;
    v5 = v27;
    v4 = v28;
    v19 = v29;
    v18 = v30;
    v17 = v31;
    v6 = v32;
    v7 = v33;
    v10 = v34;
    v9 = v35;
    v8 = v36;
    if ((v20 & 1) == 0)
    {
      return 0;
    }
  }

  if (v3)
  {
    if (!v12)
    {
      return 0;
    }
  }

  else
  {
    if (v2 == v11)
    {
      v21 = v12;
    }

    else
    {
      v21 = 1;
    }

    if (v21)
    {
      return 0;
    }
  }

  if ((vminvq_u32(vandq_s8(vandq_s8(vceqq_f32(v5, v14), vceqq_f32(v4, v13)), vandq_s8(vceqq_f32(v7, v15), vceqq_f32(v6, v16)))) & 0x80000000) == 0)
  {
    return 0;
  }

  return specialized static Transform.== infix(_:_:)(v8, v9, v10, v17, v18, v19);
}

uint64_t specialized MeshResource.Part.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  MEMORY[0x1EEE9AC00](a1);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v8 + 48);
  v13[2] = *(v8 + 32);
  v13[3] = v9;
  v13[4] = *(v8 + 64);
  v14 = *(v8 + 80);
  v10 = *(v8 + 16);
  v13[0] = *v8;
  v13[1] = v10;
  (*(v11 + 16))(v7);
  return MeshBufferDictionary.subscript.setter(v13, v7, a3, a4);
}

double _s10RealityKit12MeshResourceC0A10FoundationE15JointInfluencesVSgWOi0_(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 153) = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

char *_s17RealityFoundation29OrderedIdentifiableCollectionV17dictionaryLiteralACyxq_Gx_q_td_tcfCSS_0A3Kit12MeshResourceCAAE5ModelVTt0g5Tf4g_n(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC0];
  v3 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v4 = *(a1 + 16);
  if (!v4)
  {
    return v2;
  }

  v5 = (a1 + 32);
  for (i = v4 - 1; ; --i)
  {
    v6 = v5[3];
    v53 = v5[2];
    v54 = v6;
    v7 = v5[1];
    v33 = v5;
    v52[0] = *v5;
    v52[1] = v7;
    v8 = *(&v53 + 1);
    v9 = v6;
    v10 = v52[0];
    v55[0] = v52[0];
    v39 = v7;
    v55[1] = v7;
    v36 = v53;
    v37 = *(&v7 + 1);
    v55[2] = v53;
    v55[3] = v6;
    v35 = v2;
    v11 = *(v2 + 2);
    outlined init with copy of [String : String](v52, &v48, &_sSS_10RealityKit12MeshResourceC0A10FoundationE5ModelVtMd, &_sSS_10RealityKit12MeshResourceC0A10FoundationE5ModelVtMR);
    outlined init with copy of [String : String](v55, &v48, &_sSS_10RealityKit12MeshResourceC0A10FoundationE5ModelVtMd, &_sSS_10RealityKit12MeshResourceC0A10FoundationE5ModelVtMR);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v47 = v3;
    v14 = specialized __RawDictionaryStorage.find<A>(_:)(v10, *(&v10 + 1));
    v15 = v3[2];
    v16 = (v13 & 1) == 0;
    v17 = v15 + v16;
    if (__OFADD__(v15, v16))
    {
      break;
    }

    v18 = v13;
    if (v3[3] >= v17)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v13)
        {
          goto LABEL_10;
        }
      }

      else
      {
        specialized _NativeDictionary.copy()();
        if (v18)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v17, isUniquelyReferenced_nonNull_native);
      v19 = specialized __RawDictionaryStorage.find<A>(_:)(v10, *(&v10 + 1));
      if ((v18 & 1) != (v20 & 1))
      {
        goto LABEL_23;
      }

      v14 = v19;
      if (v18)
      {
LABEL_10:

        v3 = v47;
        *(v47[7] + 8 * v14) = v11;
        goto LABEL_14;
      }
    }

    v3 = v47;
    v47[(v14 >> 6) + 8] |= 1 << v14;
    *(v3[6] + 16 * v14) = v10;
    *(v3[7] + 8 * v14) = v11;
    v21 = v3[2];
    v22 = __OFADD__(v21, 1);
    v23 = v21 + 1;
    if (v22)
    {
      goto LABEL_22;
    }

    v3[2] = v23;
LABEL_14:

    v48 = v10;
    v49 = v39;
    *&v50 = v37;
    *(&v50 + 1) = v36;
    *v51 = v8;
    *&v51[8] = v9;
    outlined init with copy of [String : String](&v48, &v41, &_sSS_10RealityKit12MeshResourceC0A10FoundationE5ModelVtMd, &_sSS_10RealityKit12MeshResourceC0A10FoundationE5ModelVtMR);
    v24 = v35;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v35 + 2) + 1, 1, v35);
    }

    v26 = *(v24 + 2);
    v25 = *(v24 + 3);
    v27 = v24;
    v28 = v26 + 1;
    if (v26 >= v25 >> 1)
    {
      v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1, v27);
    }

    v29 = v49;
    v30 = *&v51[16];
    v41 = v10;
    v42 = v39;
    v43 = v37;
    v44 = v36;
    v45 = v8;
    v46 = v9;
    v31 = &v27[48 * v26];
    v2 = v27;
    v38 = *v51;
    v40 = v50;
    outlined destroy of BodyTrackingComponent?(&v41, &_sSS_10RealityKit12MeshResourceC0A10FoundationE5ModelVtMd, &_sSS_10RealityKit12MeshResourceC0A10FoundationE5ModelVtMR);
    *(v2 + 2) = v28;
    *(v31 + 4) = v29;
    *(v31 + 40) = v40;
    *(v31 + 56) = v38;
    *(v31 + 9) = v30;

    if (!i)
    {
      return v2;
    }

    v5 = v33 + 4;
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

char *_s17RealityFoundation29OrderedIdentifiableCollectionV17dictionaryLiteralACyxq_Gx_q_td_tcfCSS_0A3Kit12MeshResourceCAAE4PartVTt0g5Tf4g_n(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC0];
  v3 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v4 = *(a1 + 16);
  if (!v4)
  {
    return v2;
  }

  v33 = v4 - 1;
  for (i = (a1 + 48); ; i += 5)
  {
    v6 = *i;
    v49[0] = *(i - 1);
    v49[1] = v6;
    v7 = *i;
    v8 = i[2];
    v50 = i[1];
    v51[0] = v8;
    *(v51 + 9) = *(i + 41);
    v9 = v49[0];
    v10 = i[1];
    v46 = *i;
    v47 = v10;
    v48[0] = i[2];
    *(v48 + 9) = *(i + 41);
    v52[0] = v49[0];
    v52[1] = v7;
    v52[2] = v50;
    v53[0] = i[2];
    v11 = v53[0];
    *(v53 + 9) = *(i + 41);
    v43 = v7;
    v44 = v50;
    v45[0] = v11;
    *(v45 + 9) = *(v53 + 9);
    v12 = *(v2 + 2);
    outlined init with copy of [String : String](v49, &v39, &_sSS_10RealityKit12MeshResourceC0A10FoundationE4PartVtMd, &_sSS_10RealityKit12MeshResourceC0A10FoundationE4PartVtMR);
    outlined init with copy of [String : String](v52, &v39, &_sSS_10RealityKit12MeshResourceC0A10FoundationE4PartVtMd, &_sSS_10RealityKit12MeshResourceC0A10FoundationE4PartVtMR);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v38 = v3;
    v14 = specialized __RawDictionaryStorage.find<A>(_:)(v9, *(&v9 + 1));
    v16 = v3[2];
    v17 = (v15 & 1) == 0;
    v18 = __OFADD__(v16, v17);
    v19 = v16 + v17;
    if (v18)
    {
      break;
    }

    v20 = v15;
    if (v3[3] < v19)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v19, isUniquelyReferenced_nonNull_native);
      v14 = specialized __RawDictionaryStorage.find<A>(_:)(v9, *(&v9 + 1));
      if ((v20 & 1) != (v21 & 1))
      {
        goto LABEL_22;
      }

LABEL_8:
      if (v20)
      {
        goto LABEL_9;
      }

      goto LABEL_11;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_8;
    }

    v23 = v14;
    specialized _NativeDictionary.copy()();
    v14 = v23;
    if (v20)
    {
LABEL_9:
      v22 = v14;

      v3 = v38;
      *(v38[7] + 8 * v22) = v12;
      goto LABEL_13;
    }

LABEL_11:
    v3 = v38;
    v38[(v14 >> 6) + 8] |= 1 << v14;
    *(v3[6] + 16 * v14) = v9;
    *(v3[7] + 8 * v14) = v12;
    v24 = v3[2];
    v18 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (v18)
    {
      goto LABEL_21;
    }

    v3[2] = v25;
LABEL_13:
    v36[0] = v43;
    v36[1] = v44;
    v37[0] = v45[0];
    *(v37 + 9) = *(v45 + 9);
    outlined destroy of MeshResource.Part(v36);
    v39 = v9;
    v40 = v46;
    v41 = v47;
    v42[0] = v48[0];
    *(v42 + 9) = *(v48 + 9);
    outlined init with copy of [String : String](&v39, v34, &_sSS_10RealityKit12MeshResourceC0A10FoundationE4PartVtMd, &_sSS_10RealityKit12MeshResourceC0A10FoundationE4PartVtMR);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v2 + 2) + 1, 1, v2);
    }

    v27 = *(v2 + 2);
    v26 = *(v2 + 3);
    if (v27 >= v26 >> 1)
    {
      v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1, v2);
    }

    v34[0] = v9;
    v34[1] = v46;
    v34[2] = v47;
    v35[0] = v48[0];
    *(v35 + 9) = *(v48 + 9);
    outlined destroy of BodyTrackingComponent?(v34, &_sSS_10RealityKit12MeshResourceC0A10FoundationE4PartVtMd, &_sSS_10RealityKit12MeshResourceC0A10FoundationE4PartVtMR);
    *(v2 + 2) = v27 + 1;
    v28 = &v2[64 * v27];
    v30 = v41;
    v29 = v42[0];
    v31 = v40;
    *(v28 + 73) = *(v42 + 9);
    *(v28 + 3) = v30;
    *(v28 + 4) = v29;
    *(v28 + 2) = v31;

    if (!v33)
    {
      return v2;
    }

    --v33;
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

char *_s17RealityFoundation29OrderedIdentifiableCollectionV17dictionaryLiteralACyxq_Gx_q_td_tcfCSS_0A3Kit12MeshResourceCAAE8Level_v1VTt0g5Tf4g_n(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC0];
  v3 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v4 = *(a1 + 16);
  if (!v4)
  {
    return v2;
  }

  for (i = (a1 + 76); ; i += 48)
  {
    v32 = v4;
    v6 = *(i - 44);
    v7 = *(i - 36);
    v31 = *(i - 28);
    v8 = *(i - 20);
    v9 = *(i - 12);
    v29 = *i;
    v30 = *(i - 1);
    v10 = *(v2 + 2);
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = specialized __RawDictionaryStorage.find<A>(_:)(v6, v7);
    v14 = v3[2];
    v15 = (v13 & 1) == 0;
    v16 = __OFADD__(v14, v15);
    v17 = v14 + v15;
    if (v16)
    {
      break;
    }

    v18 = v13;
    if (v3[3] < v17)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v17, isUniquelyReferenced_nonNull_native);
      v12 = specialized __RawDictionaryStorage.find<A>(_:)(v6, v7);
      if ((v18 & 1) != (v19 & 1))
      {
        goto LABEL_21;
      }

LABEL_8:
      if (v18)
      {
        goto LABEL_9;
      }

      goto LABEL_11;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_8;
    }

    v21 = v12;
    specialized _NativeDictionary.copy()();
    v12 = v21;
    if (v18)
    {
LABEL_9:
      v20 = v12;

      *(v3[7] + 8 * v20) = v10;
      goto LABEL_13;
    }

LABEL_11:
    v3[(v12 >> 6) + 8] |= 1 << v12;
    v22 = (v3[6] + 16 * v12);
    *v22 = v6;
    v22[1] = v7;
    *(v3[7] + 8 * v12) = v10;
    v23 = v3[2];
    v16 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (v16)
    {
      goto LABEL_20;
    }

    v3[2] = v24;
LABEL_13:

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v2 + 2) + 1, 1, v2);
    }

    v26 = *(v2 + 2);
    v25 = *(v2 + 3);
    if (v26 >= v25 >> 1)
    {
      v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1, v2);
    }

    *(v2 + 2) = v26 + 1;
    v27 = &v2[32 * v26];
    *(v27 + 4) = v31;
    *(v27 + 5) = v8;
    *(v27 + 6) = v9;
    *(v27 + 14) = v30;
    v27[60] = v29;

    v4 = v32 - 1;
    if (v32 == 1)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

char *_s17RealityFoundation29OrderedIdentifiableCollectionV17dictionaryLiteralACyxq_Gx_q_td_tcfCSS_0A3Kit12MeshResourceCAAE8InstanceVTt0g5Tf4g_n(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC0];
  v3 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v4 = *(a1 + 16);
  if (!v4)
  {
    return v2;
  }

  v41 = v4 - 1;
  v5 = (a1 + 48);
  v6 = &_sSS_10RealityKit12MeshResourceC0A10FoundationE8InstanceVtMd;
  while (1)
  {
    v7 = v5[2];
    v8 = v5[4];
    v67 = v5[3];
    v68 = v8;
    v9 = v5[4];
    v69 = v5[5];
    v10 = *v5;
    v64[0] = *(v5 - 1);
    v64[1] = v10;
    v11 = *v5;
    v12 = v5[2];
    v65 = v5[1];
    v66 = v12;
    v13 = v64[0];
    v14 = v5[3];
    v60 = v5[2];
    v61 = v14;
    v15 = v5[5];
    v62 = v5[4];
    v63 = v15;
    v16 = v5[1];
    v58 = *v5;
    v59 = v16;
    v70[0] = v64[0];
    v70[3] = v7;
    v70[4] = v67;
    v17 = v5[5];
    v70[5] = v9;
    v70[6] = v17;
    v70[1] = v11;
    v70[2] = v65;
    v52 = v11;
    v53 = v65;
    v54 = v7;
    v55 = v67;
    v56 = v9;
    v57 = v17;
    v18 = *(v2 + 2);
    outlined init with copy of [String : String](v64, &v45, v6, &_sSS_10RealityKit12MeshResourceC0A10FoundationE8InstanceVtMR);
    v19 = v6;
    outlined init with copy of [String : String](v70, &v45, v6, &_sSS_10RealityKit12MeshResourceC0A10FoundationE8InstanceVtMR);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v44 = v3;
    v21 = specialized __RawDictionaryStorage.find<A>(_:)(v13, *(&v13 + 1));
    v23 = v3[2];
    v24 = (v22 & 1) == 0;
    v25 = __OFADD__(v23, v24);
    v26 = v23 + v24;
    if (v25)
    {
      break;
    }

    v27 = v22;
    if (v3[3] >= v26)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v39 = v21;
        specialized _NativeDictionary.copy()();
        v21 = v39;
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v26, isUniquelyReferenced_nonNull_native);
      v21 = specialized __RawDictionaryStorage.find<A>(_:)(v13, *(&v13 + 1));
      if ((v27 & 1) != (v28 & 1))
      {
        goto LABEL_22;
      }
    }

    v6 = v19;
    if (v27)
    {
      v29 = v21;

      v3 = v44;
      *(v44[7] + 8 * v29) = v18;
    }

    else
    {
      v3 = v44;
      v44[(v21 >> 6) + 8] |= 1 << v21;
      *(v3[6] + 16 * v21) = v13;
      *(v3[7] + 8 * v21) = v18;
      v30 = v3[2];
      v25 = __OFADD__(v30, 1);
      v31 = v30 + 1;
      if (v25)
      {
        goto LABEL_21;
      }

      v3[2] = v31;
    }

    v43[2] = v54;
    v43[3] = v55;
    v43[4] = v56;
    v43[5] = v57;
    v43[0] = v52;
    v43[1] = v53;
    outlined destroy of MeshResource.Instance(v43);
    v45 = v13;
    v48 = v60;
    v49 = v61;
    v50 = v62;
    v51 = v63;
    v46 = v58;
    v47 = v59;
    outlined init with copy of [String : String](&v45, v42, v19, &_sSS_10RealityKit12MeshResourceC0A10FoundationE8InstanceVtMR);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v2 + 2) + 1, 1, v2);
    }

    v33 = *(v2 + 2);
    v32 = *(v2 + 3);
    if (v33 >= v32 >> 1)
    {
      v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1, v2);
    }

    v42[0] = v13;
    v42[3] = v60;
    v42[4] = v61;
    v42[5] = v62;
    v42[6] = v63;
    v42[1] = v58;
    v42[2] = v59;
    outlined destroy of BodyTrackingComponent?(v42, v19, &_sSS_10RealityKit12MeshResourceC0A10FoundationE8InstanceVtMR);
    *(v2 + 2) = v33 + 1;
    v34 = &v2[96 * v33];
    v35 = v47;
    *(v34 + 2) = v46;
    *(v34 + 3) = v35;
    v36 = v51;
    v38 = v48;
    v37 = v49;
    *(v34 + 6) = v50;
    *(v34 + 7) = v36;
    *(v34 + 4) = v38;
    *(v34 + 5) = v37;

    if (!v41)
    {
      return v2;
    }

    --v41;
    v5 += 7;
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

char *_s17RealityFoundation29OrderedIdentifiableCollectionV17dictionaryLiteralACyxq_Gx_q_td_tcfCSS_0A3Kit12MeshResourceCAAE8SkeletonVTt0g5Tf4g_n(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC0];
  v3 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v4 = *(a1 + 16);
  if (!v4)
  {
    return v2;
  }

  for (i = (a1 + 64); ; i += 5)
  {
    v30 = v4;
    v7 = *(i - 4);
    v6 = *(i - 3);
    v8 = *(i - 1);
    v29 = *(i - 2);
    v9 = *i;
    v10 = *(v2 + 2);
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v6);
    v14 = v3[2];
    v15 = (v13 & 1) == 0;
    v16 = __OFADD__(v14, v15);
    v17 = v14 + v15;
    if (v16)
    {
      break;
    }

    v18 = v13;
    if (v3[3] < v17)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v17, isUniquelyReferenced_nonNull_native);
      v12 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v6);
      if ((v18 & 1) != (v19 & 1))
      {
        goto LABEL_21;
      }

LABEL_8:
      if (v18)
      {
        goto LABEL_9;
      }

      goto LABEL_11;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_8;
    }

    v21 = v12;
    specialized _NativeDictionary.copy()();
    v12 = v21;
    if (v18)
    {
LABEL_9:
      v20 = v12;

      *(v3[7] + 8 * v20) = v10;
      goto LABEL_13;
    }

LABEL_11:
    v3[(v12 >> 6) + 8] |= 1 << v12;
    v22 = (v3[6] + 16 * v12);
    *v22 = v7;
    v22[1] = v6;
    *(v3[7] + 8 * v12) = v10;
    v23 = v3[2];
    v16 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (v16)
    {
      goto LABEL_20;
    }

    v3[2] = v24;
LABEL_13:

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v2 + 2) + 1, 1, v2);
    }

    v26 = *(v2 + 2);
    v25 = *(v2 + 3);
    if (v26 >= v25 >> 1)
    {
      v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1, v2);
    }

    *(v2 + 2) = v26 + 1;
    v27 = &v2[24 * v26];
    *(v27 + 4) = v29;
    *(v27 + 5) = v8;
    *(v27 + 6) = v9;

    v4 = v30 - 1;
    if (v30 == 1)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}