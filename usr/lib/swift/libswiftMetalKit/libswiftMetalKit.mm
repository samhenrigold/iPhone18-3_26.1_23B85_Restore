void static MTKMesh.newMeshes(asset:device:)(uint64_t a1, uint64_t a2)
{
  v11[1] = *MEMORY[0x29EDCA608];
  v10 = 0;
  v11[0] = 0;
  v2 = [objc_opt_self() newMeshesFromAsset:a1 device:a2 sourceMeshes:v11 error:&v10];
  v3 = v10;
  v4 = v11[0];
  if (v2)
  {
    v5 = v2;
    type metadata accessor for MTKMesh(0, &lazy cache variable for type metadata for MTKMesh, 0x29EDBB7B8);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v3;
    v7 = v4;

    if (v7)
    {
      v11[0] = 0;
      type metadata accessor for MTKMesh(0, &lazy cache variable for type metadata for MDLMesh, 0x29EDBB820);
      static Array._forceBridgeFromObjectiveC(_:result:)();
      if (v11[0])
      {

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    v8 = v10;
    v9 = v4;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

uint64_t type metadata accessor for MTKMesh(uint64_t a1, unint64_t *a2, void *a3)
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

MDLVertexDescriptor __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MTKModelIOVertexDescriptorFromMetalWithError(_:)(MTLVertexDescriptor a1)
{
  v4[1] = *MEMORY[0x29EDCA608];
  v4[0] = 0;
  v1 = MTKModelIOVertexDescriptorFromMetalWithError(a1.super.isa, v4);
  v2 = v4[0];
  if (v4[0])
  {
    swift_willThrow();
    v2;
  }

  return v1;
}

MTLVertexDescriptor_optional __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MTKMetalVertexDescriptorFromModelIOWithError(_:)(MDLVertexDescriptor a1)
{
  v5[1] = *MEMORY[0x29EDCA608];
  v5[0] = 0;
  v2 = MTKMetalVertexDescriptorFromModelIOWithError(a1.super.isa, v5);
  v3 = v5[0];
  if (v5[0])
  {
    swift_willThrow();
    v3;
  }

  v4 = v2;
  result.value.super.isa = v4;
  result.is_nil = v1;
  return result;
}