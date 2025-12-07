uint64_t sub_1D38E0338()
{
  MEMORY[0x1DA6D07B0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D38E0370()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1D38E03B8()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

__n128 protocol witness for CRType.copy(renamingReferences:) in conformance ArrowShapePathSource@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

__n128 _sSo6CGRectV9Coherence6CRType8PaperKitAcDP4copy18renamingReferencesxSDyAC9CRKeyPathVAJGz_tFTW_0@<Q0>(_OWORD *a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 16);
  *a1 = *v1;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D38E043C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D38E04A0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D38E04F8()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D38E0534()
{
  MEMORY[0x1DA6D07B0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D38E056C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D38E05AC()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D38E05E4()
{
  MEMORY[0x1DA6D07B0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D38E0624()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D38E0660()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D38E0720(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_9:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_10;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMR);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_9;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySbGMd, &_s9Coherence10CRRegisterVySbGMR);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_9;
  }

  v17 = type metadata accessor for UnknownProperties();
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[8];

  return v18(v19, a2, v17);
}

uint64_t sub_1D38E0920(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMR);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_9;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySbGMd, &_s9Coherence10CRRegisterVySbGMR);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_9;
  }

  v19 = type metadata accessor for UnknownProperties();
  v20 = *(*(v19 - 8) + 56);
  v21 = a1 + a4[8];

  return v20(v21, a2, a2, v19);
}

uint64_t sub_1D38E0B2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence27CRValueObservableDifferenceOSgMd, &_s9Coherence27CRValueObservableDifferenceOSgMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV20ObservableDifferenceVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV20ObservableDifferenceVy8PaperKit18TextAttributeScopeV_GSgMR);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 24);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1D38E0C34(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence27CRValueObservableDifferenceOSgMd, &_s9Coherence27CRValueObservableDifferenceOSgMR);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV20ObservableDifferenceVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV20ObservableDifferenceVy8PaperKit18TextAttributeScopeV_GSgMR);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 24);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1D38E0D48(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GSgMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVy12CoreGraphics7CGFloatV_AhA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVy12CoreGraphics7CGFloatV_AhA7CRValue8PaperKityHCg_GSgMR);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV14MutatingActionVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV14MutatingActionVy8PaperKit18TextAttributeScopeV_GSgMR);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVySb_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVySb_GSgMR);
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[7];

  return v17(v18, a2, v16);
}

uint64_t sub_1D38E0F00(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GSgMR);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVy12CoreGraphics7CGFloatV_AhA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVy12CoreGraphics7CGFloatV_AhA7CRValue8PaperKityHCg_GSgMR);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV14MutatingActionVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV14MutatingActionVy8PaperKit18TextAttributeScopeV_GSgMR);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVySb_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVySb_GSgMR);
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[7];

  return v19(v20, a2, a2, v18);
}

uint64_t sub_1D38E10C4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMR);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV7PartialVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV7PartialVy8PaperKit18TextAttributeScopeV_GSgMR);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySbGSgMd, &_s9Coherence10CRRegisterVySbGSgMR);
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[7];

  return v17(v18, a2, v16);
}

uint64_t sub_1D38E127C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMR);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV7PartialVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV7PartialVy8PaperKit18TextAttributeScopeV_GSgMR);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySbGSgMd, &_s9Coherence10CRRegisterVySbGSgMR);
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[7];

  return v19(v20, a2, a2, v18);
}

uint64_t sub_1D38E1440()
{

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1D38E1498()
{
  swift_unknownObjectRelease();

  MEMORY[0x1DA6D07B0](v0 + 64);
  MEMORY[0x1DA6D07B0](v0 + 72);
  MEMORY[0x1DA6D07B0](v0 + 80);

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1D38E14F8()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  MEMORY[0x1DA6D07B0](v0 + 80);
  MEMORY[0x1DA6D07B0](v0 + 88);
  MEMORY[0x1DA6D07B0](v0 + 96);

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

uint64_t sub_1D38E1560()
{
  MEMORY[0x1DA6D07B0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D38E159C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D38E15D4()
{
  if (*(v0 + 24))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D38E161C()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D38E1654()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D38E168C()
{
  MEMORY[0x1DA6D07B0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D38E16C4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

__n128 sub_1D38E1748(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

__n128 sub_1D38E17B0(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 32);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 32) = v3;
  *a2 = result;
  return result;
}

uint64_t sub_1D38E17C8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D38E1808()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D38E1850()
{
  MEMORY[0x1DA6D07B0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D38E1888()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 104) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v6 + 8, v3 | 7);
}

uint64_t sub_1D38E1998()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D38E1A38()
{

  return MEMORY[0x1EEE6BDD0](v0, 33, 7);
}

uint64_t sub_1D38E1A70()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D38E1AC4()
{
  swift_unknownObjectRelease();

  outlined consume of Data._Representation(*(v0 + 40), *(v0 + 48));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D38E1B0C()
{
  MEMORY[0x1DA6D07B0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D38E1B44()
{
  type metadata accessor for Capsule();
  v1 = type metadata accessor for AsyncStream();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 112) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

uint64_t sub_1D38E1C5C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D38E1C94()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 96) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, AssociatedTypeWitness);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1D38E1D94()
{
  v1 = type metadata accessor for CRAsset();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1D38E1E90@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC8PaperKit15SynapseLinkItem_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1D38E1EEC(uint64_t *a1, void *a2)
{
  v2 = a1[1];
  v3 = *a2 + OBJC_IVAR____TtC8PaperKit15SynapseLinkItem_delegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t _sSa9_getCountSiyF8PaperKit13ReflowElementC_Tg5_0(unint64_t a1)
{
  if (a1 >> 62)
  {
    return __CocoaSet.count.getter();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t sub_1D38E1F74(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1D38E1F90@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isEnabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1D38E1FF8()
{
  MEMORY[0x1DA6D07B0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D38E2030()
{
  if (*(v0 + 24) >= 6uLL)
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D38E2078()
{
  if (*(v0 + 24) >= 6uLL)
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D38E20B8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D38E20F8()
{
  swift_unknownObjectUnownedDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D38E2130()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D38E2168()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA15NavigationStackVyAA0E4PathVAA4ViewPAAE7toolbar7contentQrqd__yXE_tAA07ToolbarD0Rd__lFQOyAiAE29navigationBarTitleDisplayModeyQrAA0eM4ItemV0noP0OFQOyAiAE0lN0yQrqd__SyRd__lFQOyACyAA6VStackVyACyAiAE8onSubmit2of_QrAA0T8TriggersV_yyctFQOyACyAiAE14textFieldStyleyQrqd__AA04TextxY0Rd__lFQOyAiAE7focusedyQrAA10FocusStateV7BindingVySb_GFQOyAA0zX0VyAA0Z0VG_Qo__AA013RoundedBorderzxY0VQo_AA14_PaddingLayoutVG_Qo_AA25_AppearanceActionModifierVGGA15_G_SSQo__Qo__AA05TuplekD0VyAA0kQ0VyytAA012_ConditionalD0Vy8PaperKit20HeadlineCancelButtonVAA6ButtonVyA8_GGG_A28_yytA30_yACyA31_18HeadlineDoneButtonVAA32_EnvironmentKeyTransformModifierVySbGGACyAiAE06buttonY0yQrqd__AA015PrimitiveButtonY0Rd__lFQOyA36__AA023BorderedProminentButtonY0VQo_A43_GGGtGQo_GAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA15NavigationStackVyAA0E4PathVAA4ViewPAAE7toolbar7contentQrqd__yXE_tAA07ToolbarD0Rd__lFQOyAiAE29navigationBarTitleDisplayModeyQrAA0eM4ItemV0noP0OFQOyAiAE0lN0yQrqd__SyRd__lFQOyACyAA6VStackVyACyAiAE8onSubmit2of_QrAA0T8TriggersV_yyctFQOyACyAiAE14textFieldStyleyQrqd__AA04TextxY0Rd__lFQOyAiAE7focusedyQrAA10FocusStateV7BindingVySb_GFQOyAA0zX0VyAA0Z0VG_Qo__AA013RoundedBorderzxY0VQo_AA14_PaddingLayoutVG_Qo_AA25_AppearanceActionModifierVGGA15_G_SSQo__Qo__AA05TuplekD0VyAA0kQ0VyytAA012_ConditionalD0Vy8PaperKit20HeadlineCancelButtonVAA6ButtonVyA8_GGG_A28_yytA30_yACyA31_18HeadlineDoneButtonVAA32_EnvironmentKeyTransformModifierVySbGGACyAiAE06buttonY0yQrqd__AA015PrimitiveButtonY0Rd__lFQOyA36__AA023BorderedProminentButtonY0VQo_A43_GGGtGQo_GAA12_FrameLayoutVGMR);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE14materialEffect_2inQrAA8MaterialV_AA9_ShapeSetVtFQOyAA15ModifiedContentVyAA15NavigationStackVyAA0L4PathVAcAE7toolbar7contentQrqd__yXE_tAA07ToolbarK0Rd__lFQOyAcAE29navigationBarTitleDisplayModeyQrAA0lS4ItemV0tuV0OFQOyAcAE0rT0yQrqd__SyRd__lFQOyAKyAA6VStackVyAKyAcAE8onSubmit2of_QrAA0Z8TriggersV_yyctFQOyAKyAcAE14textFieldStyleyQrqd__AA14TextFieldStyleRd__lFQOyAcAE7focusedyQrAA10FocusStateV7BindingVySb_GFQOyAA9TextFieldVyAA4TextVG_Qo__AA27RoundedBorderTextFieldStyleVQo_AA14_PaddingLayoutVG_Qo_AA25_AppearanceActionModifierVGGA21_G_SSQo__Qo__AA05TupleqK0VyAA0qW0VyytAA012_ConditionalK0Vy8PaperKit20HeadlineCancelButtonVAA6ButtonVyA14_GGG_A34_yytA36_yAKyA37_18HeadlineDoneButtonVAA32_EnvironmentKeyTransformModifierVySbGGAKyAcAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyA42__AA28BorderedProminentButtonStyleVQo_A49_GGGtGQo_GAA12_FrameLayoutVG_Qo_Md, &_s7SwiftUI4ViewPAAE14materialEffect_2inQrAA8MaterialV_AA9_ShapeSetVtFQOyAA15ModifiedContentVyAA15NavigationStackVyAA0L4PathVAcAE7toolbar7contentQrqd__yXE_tAA07ToolbarK0Rd__lFQOyAcAE29navigationBarTitleDisplayModeyQrAA0lS4ItemV0tuV0OFQOyAcAE0rT0yQrqd__SyRd__lFQOyAKyAA6VStackVyAKyAcAE8onSubmit2of_QrAA0Z8TriggersV_yyctFQOyAKyAcAE14textFieldStyleyQrqd__AA14TextFieldStyleRd__lFQOyAcAE7focusedyQrAA10FocusStateV7BindingVySb_GFQOyAA9TextFieldVyAA4TextVG_Qo__AA27RoundedBorderTextFieldStyleVQo_AA14_PaddingLayoutVG_Qo_AA25_AppearanceActionModifierVGGA21_G_SSQo__Qo__AA05TupleqK0VyAA0qW0VyytAA012_ConditionalK0Vy8PaperKit20HeadlineCancelButtonVAA6ButtonVyA14_GGG_A34_yytA36_yAKyA37_18HeadlineDoneButtonVAA32_EnvironmentKeyTransformModifierVySbGGAKyAcAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyA42__AA28BorderedProminentButtonStyleVQo_A49_GGGtGQo_GAA12_FrameLayoutVG_Qo_MR);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA15NavigationStackVyAA0E4PathVAA4ViewPAAE7toolbar7contentQrqd__yXE_tAA07ToolbarD0Rd__lFQOyAiAE29navigationBarTitleDisplayModeyQrAA0eM4ItemV0noP0OFQOyAiAE0lN0yQrqd__SyRd__lFQOyACyAA6VStackVyACyAiAE8onSubmit2of_QrAA0T8TriggersV_yyctFQOyACyAiAE14textFieldStyleyQrqd__AA04TextxY0Rd__lFQOyAiAE7focusedyQrAA10FocusStateV7BindingVySb_GFQOyAA0zX0VyAA0Z0VG_Qo__AA013RoundedBorderzxY0VQo_AA14_PaddingLayoutVG_Qo_AA25_AppearanceActionModifierVGGA15_G_SSQo__Qo__AA05TuplekD0VyAA0kQ0VyytAA012_ConditionalD0Vy8PaperKit20HeadlineCancelButtonVAA6ButtonVyA8_GGG_A28_yytA30_yACyA31_18HeadlineDoneButtonVAA32_EnvironmentKeyTransformModifierVySbGGACyAiAE06buttonY0yQrqd__AA015PrimitiveButtonY0Rd__lFQOyA36__AA023BorderedProminentButtonY0VQo_A43_GGGtGQo_GAA12_FrameLayoutVGAA011_BackgroundY8ModifierVyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGAA13_ShadowEffectVGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA15NavigationStackVyAA0E4PathVAA4ViewPAAE7toolbar7contentQrqd__yXE_tAA07ToolbarD0Rd__lFQOyAiAE29navigationBarTitleDisplayModeyQrAA0eM4ItemV0noP0OFQOyAiAE0lN0yQrqd__SyRd__lFQOyACyAA6VStackVyACyAiAE8onSubmit2of_QrAA0T8TriggersV_yyctFQOyACyAiAE14textFieldStyleyQrqd__AA04TextxY0Rd__lFQOyAiAE7focusedyQrAA10FocusStateV7BindingVySb_GFQOyAA0zX0VyAA0Z0VG_Qo__AA013RoundedBorderzxY0VQo_AA14_PaddingLayoutVG_Qo_AA25_AppearanceActionModifierVGGA15_G_SSQo__Qo__AA05TuplekD0VyAA0kQ0VyytAA012_ConditionalD0Vy8PaperKit20HeadlineCancelButtonVAA6ButtonVyA8_GGG_A28_yytA30_yACyA31_18HeadlineDoneButtonVAA32_EnvironmentKeyTransformModifierVySbGGACyAiAE06buttonY0yQrqd__AA015PrimitiveButtonY0Rd__lFQOyA36__AA023BorderedProminentButtonY0VQo_A43_GGGtGQo_GAA12_FrameLayoutVGAA011_BackgroundY8ModifierVyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGAA13_ShadowEffectVGMR);
  lazy protocol witness table accessor for type ModifiedContent<NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
  swift_getOpaqueTypeConformance2();
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0>, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedRectangle>>, _ShadowEffect> and conformance <> ModifiedContent<A, B>();
  return swift_getOpaqueTypeConformance2();
}

id sub_1D38E2288@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  *a2 = v2;
  return v2;
}

uint64_t sub_1D38E2298(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence22UnknownValuePropertiesVSgMd, &_s9Coherence22UnknownValuePropertiesVSgMR);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1D38E2354(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence22UnknownValuePropertiesVSgMd, &_s9Coherence22UnknownValuePropertiesVSgMR);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D38E2404(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 32);
  v6 = type metadata accessor for UnknownValueProperties();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1D38E247C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 32);
  v7 = type metadata accessor for UnknownValueProperties();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1D38E2504(void *a1)
{
  type metadata accessor for Button();
  swift_getWitnessTable();
  lazy protocol witness table accessor for type MiniPopoverButtonStyle and conformance MiniPopoverButtonStyle();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI23_GeometryActionModifierVySo6CGSizeVAESQ12CoreGraphicsyHCg_GMd, &_s7SwiftUI23_GeometryActionModifierVySo6CGSizeVAESQ12CoreGraphicsyHCg_GMR);
  type metadata accessor for ModifiedContent();
  swift_getOpaqueTypeConformance2();
  lazy protocol witness table accessor for type _GeometryActionModifier<CGSize> and conformance _GeometryActionModifier<A>();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  type metadata accessor for GeometryReader();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1D38E2718()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA24ButtonStyleConfigurationV5LabelVAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA24ButtonStyleConfigurationV5LabelVAA12_FrameLayoutVGMR);
  type metadata accessor for LiftHoverEffect();
  lazy protocol witness table accessor for type ModifiedContent<ButtonStyleConfiguration.Label, _FrameLayout> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type CGSize and conformance CGSize(&lazy protocol witness table cache variable for type LiftHoverEffect and conformance LiftHoverEffect, 255, MEMORY[0x1E697C168], MEMORY[0x1E697C160]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1D38E27E4@<X0>(uint64_t *a2@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_1D38E2844@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC8PaperKit26PaperDocumentThumbnailView_thumbnailLayout;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

id sub_1D38E28D4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = [*(*a1 + OBJC_IVAR____TtC8PaperKit26PaperDocumentThumbnailView_pdfThumbnailView) contentInset];
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  return result;
}

id sub_1D38E293C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = [*(*a1 + OBJC_IVAR____TtC8PaperKit26PaperDocumentThumbnailView_pdfThumbnailView) thumbnailSize];
  *a2 = v4;
  a2[1] = v5;
  return result;
}

id sub_1D38E297C(double *a1, uint64_t *a2)
{
  v2 = *a2;
  result = [*(*a2 + OBJC_IVAR____TtC8PaperKit26PaperDocumentThumbnailView_pdfThumbnailView) setThumbnailSize_];
  *(v2 + OBJC_IVAR____TtC8PaperKit26PaperDocumentThumbnailView_dynamicThumbnailSizing) = 0;
  return result;
}

uint64_t sub_1D38E29C4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D38E29FC()
{
  v1 = type metadata accessor for CRStableAsset();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

__n128 sub_1D38E2B04(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_1D38E2BB4()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D38E2BEC()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D38E2C24()
{
  MEMORY[0x1DA6D07B0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D38E2C64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRKeyPath();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D38E2CD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRKeyPath();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1D38E2D48()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D38E2D88(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA11ColorSchemeOGMd, &_s7SwiftUI11EnvironmentVyAA11ColorSchemeOGMR);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D38E2E00(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA11ColorSchemeOGMd, &_s7SwiftUI11EnvironmentVyAA11ColorSchemeOGMR);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1D38E2E7C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGG8PaperKit08HeadlineE5StyleVGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGG8PaperKit08HeadlineE5StyleVGMR);
  lazy protocol witness table accessor for type ModifiedContent<Button<Label<Text, Image>>, HeadlineButtonStyle> and conformance <> ModifiedContent<A, B>();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1D38E2EE8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyACyAA01_e9Modifier_D0Vy8PaperKit014HeadlineButtonG0VGAA14_PaddingLayoutVG_AA08IconOnlyhG0VQo_AA022_EnvironmentKeyWritingI0VyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyACyAA01_e9Modifier_D0Vy8PaperKit014HeadlineButtonG0VGAA14_PaddingLayoutVG_AA08IconOnlyhG0VQo_AA022_EnvironmentKeyWritingI0VyAA4FontVSgGGMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D38E2F50()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyACyAA01_e9Modifier_D0Vy8PaperKit014HeadlineButtonG0VGAA14_PaddingLayoutVG_AA08IconOnlyhG0VQo_AA022_EnvironmentKeyWritingI0VyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyACyAA01_e9Modifier_D0Vy8PaperKit014HeadlineButtonG0VGAA14_PaddingLayoutVG_AA08IconOnlyhG0VQo_AA022_EnvironmentKeyWritingI0VyAA4FontVSgGGMR);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss19PartialRangeThroughVy7SwiftUI15DynamicTypeSizeOGMd, &_ss19PartialRangeThroughVy7SwiftUI15DynamicTypeSizeOGMR);
  lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type PartialRangeThrough<DynamicTypeSize> and conformance PartialRangeThrough<A>, &_ss19PartialRangeThroughVy7SwiftUI15DynamicTypeSizeOGMd, &_ss19PartialRangeThroughVy7SwiftUI15DynamicTypeSizeOGMR, MEMORY[0x1E69E6ED8]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1D38E3018(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRKeyPath();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D38E3084(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRKeyPath();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

__n128 sub_1D38E3108(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_1D38E311C()
{
  MEMORY[0x1DA6D07B0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D38E3154()
{

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1D38E31A8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D38E32F8()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D38E3330()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D38E3394()
{
  v1 = *(type metadata accessor for DataOrURL(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for URL();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
    outlined consume of Data._Representation(*(v0 + v3), *(v0 + v3 + 8));
  }

  return MEMORY[0x1EEE6BDD0](v0, ((v3 + v4) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_1D38E34A4()
{
  swift_unknownObjectRelease();
  outlined consume of Data._Representation(*(v0 + 32), *(v0 + 40));

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D38E34E4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D38E3544()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

uint64_t sub_1D38E35E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRKeyPath();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D38E3650(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRKeyPath();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1D38E36C0()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 32, v3 | 7);
}

uint64_t sub_1D38E3790()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D38E3848()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVyAA10CRRegisterVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGGSgMd, &_s9Coherence7CapsuleVyAA10CRRegisterVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGGSgMR) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMR) - 8);
  v6 = *(v5 + 80);
  v7 = (v4 + v6 + 8) & ~v6;
  v8 = *(v5 + 64);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVyAA10CRRegisterVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGGMd, &_s9Coherence7CapsuleVyAA10CRRegisterVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGGMR);
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v0 + v3, 1, v9))
  {
    (*(v10 + 8))(v0 + v3, v9);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMR);
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v0 + v7, 1, v11))
  {
    (*(v12 + 8))(v0 + v7, v11);
  }

  return MEMORY[0x1EEE6BDD0](v0, ((v7 + v8) & 0xFFFFFFFFFFFFFFF8) + 24, v2 | v6 | 7);
}

uint64_t sub_1D38E3A88()
{
  MEMORY[0x1DA6D07B0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D38E3AC0()
{
  v1 = (type metadata accessor for Image(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v7 = *(*(v6 - 8) + 8);
  v7(v5, v6);
  v7(v5 + v1[7], v6);
  v8 = v1[8];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  (*(*(v9 - 8) + 8))(v5 + v8, v9);
  v10 = v1[9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMR);
  (*(*(v11 - 8) + 8))(v5 + v10, v11);
  v12 = v1[10];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit11ImageFilterOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit11ImageFilterOSgGMR);
  (*(*(v13 - 8) + 8))(v5 + v12, v13);
  v14 = v1[11];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13CRAssetOrDataOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit13CRAssetOrDataOSgGMR);
  (*(*(v15 - 8) + 8))(v5 + v14, v15);
  v16 = v1[12];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGMd, &_s9Coherence10CRRegisterVySSSgGMR);
  v18 = *(*(v17 - 8) + 8);
  v18(v5 + v16, v17);
  v19 = v1[13];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DataVSgGMd, &_s9Coherence10CRRegisterVy10Foundation4DataVSgGMR);
  (*(*(v20 - 8) + 8))(v5 + v19, v20);
  v21 = v1[14];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMR);
  (*(*(v22 - 8) + 8))(v5 + v21, v22);
  v23 = v1[15];
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMR);
  (*(*(v24 - 8) + 8))(v5 + v23, v24);
  v25 = v1[16];
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd, &_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMR);
  (*(*(v26 - 8) + 8))(v5 + v25, v26);
  v27 = v1[17];
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13ImageMetadataVGMd, &_s9Coherence10CRRegisterVy8PaperKit13ImageMetadataVGMR);
  (*(*(v28 - 8) + 8))(v5 + v27, v28);
  v18(v5 + v1[18], v17);
  v29 = v1[19];
  v30 = type metadata accessor for UnknownProperties();
  (*(*(v30 - 8) + 8))(v5 + v29, v30);

  return MEMORY[0x1EEE6BDD0](v0, v4 + 8, v2 | 7);
}

void sub_1D38E413C(uint64_t a1@<X8>)
{
  *a1 = Image.pdfContentsBounds.getter();
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
}

uint64_t sub_1D38E4170(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_24:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[6];
LABEL_23:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_24;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMR);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[7];
    goto LABEL_23;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit11ImageFilterOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit11ImageFilterOSgGMR);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[8];
    goto LABEL_23;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13CRAssetOrDataOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit13CRAssetOrDataOSgGMR);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[9];
    goto LABEL_23;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGMd, &_s9Coherence10CRRegisterVySSSgGMR);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[10];
    goto LABEL_23;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DataVSgGMd, &_s9Coherence10CRRegisterVy10Foundation4DataVSgGMR);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v12 = *(v18 - 8);
    v13 = a3[11];
    goto LABEL_23;
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMR);
  if (*(*(v19 - 8) + 84) == a2)
  {
    v8 = v19;
    v12 = *(v19 - 8);
    v13 = a3[12];
    goto LABEL_23;
  }

  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMR);
  if (*(*(v20 - 8) + 84) == a2)
  {
    v8 = v20;
    v12 = *(v20 - 8);
    v13 = a3[13];
    goto LABEL_23;
  }

  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd, &_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMR);
  if (*(*(v21 - 8) + 84) == a2)
  {
    v8 = v21;
    v12 = *(v21 - 8);
    v13 = a3[14];
    goto LABEL_23;
  }

  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13ImageMetadataVGMd, &_s9Coherence10CRRegisterVy8PaperKit13ImageMetadataVGMR);
  if (*(*(v22 - 8) + 84) == a2)
  {
    v8 = v22;
    v12 = *(v22 - 8);
    v13 = a3[15];
    goto LABEL_23;
  }

  v24 = type metadata accessor for UnknownProperties();
  v25 = *(*(v24 - 8) + 48);
  v26 = a1 + a3[17];

  return v25(v26, a2, v24);
}

uint64_t sub_1D38E45BC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_24:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[6];
LABEL_23:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_24;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMR);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[7];
    goto LABEL_23;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit11ImageFilterOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit11ImageFilterOSgGMR);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[8];
    goto LABEL_23;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13CRAssetOrDataOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit13CRAssetOrDataOSgGMR);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[9];
    goto LABEL_23;
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGMd, &_s9Coherence10CRRegisterVySSSgGMR);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[10];
    goto LABEL_23;
  }

  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DataVSgGMd, &_s9Coherence10CRRegisterVy10Foundation4DataVSgGMR);
  if (*(*(v20 - 8) + 84) == a3)
  {
    v10 = v20;
    v14 = *(v20 - 8);
    v15 = a4[11];
    goto LABEL_23;
  }

  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMR);
  if (*(*(v21 - 8) + 84) == a3)
  {
    v10 = v21;
    v14 = *(v21 - 8);
    v15 = a4[12];
    goto LABEL_23;
  }

  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMR);
  if (*(*(v22 - 8) + 84) == a3)
  {
    v10 = v22;
    v14 = *(v22 - 8);
    v15 = a4[13];
    goto LABEL_23;
  }

  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd, &_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMR);
  if (*(*(v23 - 8) + 84) == a3)
  {
    v10 = v23;
    v14 = *(v23 - 8);
    v15 = a4[14];
    goto LABEL_23;
  }

  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13ImageMetadataVGMd, &_s9Coherence10CRRegisterVy8PaperKit13ImageMetadataVGMR);
  if (*(*(v24 - 8) + 84) == a3)
  {
    v10 = v24;
    v14 = *(v24 - 8);
    v15 = a4[15];
    goto LABEL_23;
  }

  v26 = type metadata accessor for UnknownProperties();
  v27 = *(*(v26 - 8) + 56);
  v28 = a1 + a4[17];

  return v27(v28, a2, a2, v26);
}

uint64_t sub_1D38E4A14(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence27CRValueObservableDifferenceOSgMd, &_s9Coherence27CRValueObservableDifferenceOSgMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit14ContentsBoundsO20ObservableDifferenceOSgMd, &_s8PaperKit14ContentsBoundsO20ObservableDifferenceOSgMR);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[7];
LABEL_9:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_10;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit11ImageFilterO20ObservableDifferenceOSgMd, &_s8PaperKit11ImageFilterO20ObservableDifferenceOSgMR);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[8];
    goto LABEL_9;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefV20ObservableDifferenceOy8PaperKit15PKDrawingStructV_GSgMd, &_s9Coherence3RefV20ObservableDifferenceOy8PaperKit15PKDrawingStructV_GSgMR);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[12];
    goto LABEL_9;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV20ObservableDifferenceVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMd, &_s9Coherence12CROrderedSetV20ObservableDifferenceVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMR);
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[14];

  return v18(v19, a2, v17);
}

uint64_t sub_1D38E4C20(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence27CRValueObservableDifferenceOSgMd, &_s9Coherence27CRValueObservableDifferenceOSgMR);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit14ContentsBoundsO20ObservableDifferenceOSgMd, &_s8PaperKit14ContentsBoundsO20ObservableDifferenceOSgMR);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[7];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit11ImageFilterO20ObservableDifferenceOSgMd, &_s8PaperKit11ImageFilterO20ObservableDifferenceOSgMR);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[8];
    goto LABEL_9;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefV20ObservableDifferenceOy8PaperKit15PKDrawingStructV_GSgMd, &_s9Coherence3RefV20ObservableDifferenceOy8PaperKit15PKDrawingStructV_GSgMR);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[12];
    goto LABEL_9;
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV20ObservableDifferenceVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMd, &_s9Coherence12CROrderedSetV20ObservableDifferenceVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMR);
  v20 = *(*(v19 - 8) + 56);
  v21 = a1 + a4[14];

  return v20(v21, a2, a2, v19);
}

uint64_t sub_1D38E4E38(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GSgMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_22:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVy12CoreGraphics7CGFloatV_AhA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVy12CoreGraphics7CGFloatV_AhA7CRValue8PaperKityHCg_GSgMR);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[6];
LABEL_21:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_22;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit14ContentsBoundsOSg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit14ContentsBoundsOSg_GSgMR);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[7];
    goto LABEL_21;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit11ImageFilterOSg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit11ImageFilterOSg_GSgMR);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[8];
    goto LABEL_21;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit13CRAssetOrDataOSg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit13CRAssetOrDataOSg_GSgMR);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[9];
    goto LABEL_21;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVySSSg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVySSSg_GSgMR);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[10];
    goto LABEL_21;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVy10Foundation4DataVSg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVy10Foundation4DataVSg_GSgMR);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v12 = *(v18 - 8);
    v13 = a3[11];
    goto LABEL_21;
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVyAA3RefVy8PaperKit15PKDrawingStructVGSg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVyAA3RefVy8PaperKit15PKDrawingStructVGSg_GSgMR);
  if (*(*(v19 - 8) + 84) == a2)
  {
    v8 = v19;
    v12 = *(v19 - 8);
    v13 = a3[12];
    goto LABEL_21;
  }

  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVySo26CGImagePropertyOrientationV_AgA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVySo26CGImagePropertyOrientationV_AgA7CRValue8PaperKityHCg_GSgMR);
  if (*(*(v20 - 8) + 84) == a2)
  {
    v8 = v20;
    v12 = *(v20 - 8);
    v13 = a3[13];
    goto LABEL_21;
  }

  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV14MutatingActionVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMd, &_s9Coherence12CROrderedSetV14MutatingActionVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMR);
  if (*(*(v21 - 8) + 84) == a2)
  {
    v8 = v21;
    v12 = *(v21 - 8);
    v13 = a3[14];
    goto LABEL_21;
  }

  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit13ImageMetadataV_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit13ImageMetadataV_GSgMR);
  v24 = *(*(v23 - 8) + 48);
  v25 = a1 + a3[15];

  return v24(v25, a2, v23);
}

uint64_t sub_1D38E523C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GSgMR);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_22:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVy12CoreGraphics7CGFloatV_AhA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVy12CoreGraphics7CGFloatV_AhA7CRValue8PaperKityHCg_GSgMR);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[6];
LABEL_21:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_22;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit14ContentsBoundsOSg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit14ContentsBoundsOSg_GSgMR);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[7];
    goto LABEL_21;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit11ImageFilterOSg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit11ImageFilterOSg_GSgMR);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[8];
    goto LABEL_21;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit13CRAssetOrDataOSg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit13CRAssetOrDataOSg_GSgMR);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[9];
    goto LABEL_21;
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVySSSg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVySSSg_GSgMR);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[10];
    goto LABEL_21;
  }

  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVy10Foundation4DataVSg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVy10Foundation4DataVSg_GSgMR);
  if (*(*(v20 - 8) + 84) == a3)
  {
    v10 = v20;
    v14 = *(v20 - 8);
    v15 = a4[11];
    goto LABEL_21;
  }

  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVyAA3RefVy8PaperKit15PKDrawingStructVGSg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVyAA3RefVy8PaperKit15PKDrawingStructVGSg_GSgMR);
  if (*(*(v21 - 8) + 84) == a3)
  {
    v10 = v21;
    v14 = *(v21 - 8);
    v15 = a4[12];
    goto LABEL_21;
  }

  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVySo26CGImagePropertyOrientationV_AgA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVySo26CGImagePropertyOrientationV_AgA7CRValue8PaperKityHCg_GSgMR);
  if (*(*(v22 - 8) + 84) == a3)
  {
    v10 = v22;
    v14 = *(v22 - 8);
    v15 = a4[13];
    goto LABEL_21;
  }

  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV14MutatingActionVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMd, &_s9Coherence12CROrderedSetV14MutatingActionVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMR);
  if (*(*(v23 - 8) + 84) == a3)
  {
    v10 = v23;
    v14 = *(v23 - 8);
    v15 = a4[14];
    goto LABEL_21;
  }

  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit13ImageMetadataV_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit13ImageMetadataV_GSgMR);
  v26 = *(*(v25 - 8) + 56);
  v27 = a1 + a4[15];

  return v26(v27, a2, a2, v25);
}

uint64_t sub_1D38E564C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_22:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMR);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[6];
LABEL_21:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_22;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGSgMR);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[7];
    goto LABEL_21;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit11ImageFilterOSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit11ImageFilterOSgGSgMR);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[8];
    goto LABEL_21;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13CRAssetOrDataOSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit13CRAssetOrDataOSgGSgMR);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[9];
    goto LABEL_21;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGSgMd, &_s9Coherence10CRRegisterVySSSgGSgMR);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[10];
    goto LABEL_21;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DataVSgGSgMd, &_s9Coherence10CRRegisterVy10Foundation4DataVSgGSgMR);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v12 = *(v18 - 8);
    v13 = a3[11];
    goto LABEL_21;
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMR);
  if (*(*(v19 - 8) + 84) == a2)
  {
    v8 = v19;
    v12 = *(v19 - 8);
    v13 = a3[12];
    goto LABEL_21;
  }

  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GSgMR);
  if (*(*(v20 - 8) + 84) == a2)
  {
    v8 = v20;
    v12 = *(v20 - 8);
    v13 = a3[13];
    goto LABEL_21;
  }

  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMd, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMR);
  if (*(*(v21 - 8) + 84) == a2)
  {
    v8 = v21;
    v12 = *(v21 - 8);
    v13 = a3[14];
    goto LABEL_21;
  }

  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13ImageMetadataVGSgMd, &_s9Coherence10CRRegisterVy8PaperKit13ImageMetadataVGSgMR);
  v24 = *(*(v23 - 8) + 48);
  v25 = a1 + a3[15];

  return v24(v25, a2, v23);
}

uint64_t sub_1D38E5A50(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_22:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMR);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[6];
LABEL_21:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_22;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGSgMR);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[7];
    goto LABEL_21;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit11ImageFilterOSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit11ImageFilterOSgGSgMR);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[8];
    goto LABEL_21;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13CRAssetOrDataOSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit13CRAssetOrDataOSgGSgMR);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[9];
    goto LABEL_21;
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGSgMd, &_s9Coherence10CRRegisterVySSSgGSgMR);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[10];
    goto LABEL_21;
  }

  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DataVSgGSgMd, &_s9Coherence10CRRegisterVy10Foundation4DataVSgGSgMR);
  if (*(*(v20 - 8) + 84) == a3)
  {
    v10 = v20;
    v14 = *(v20 - 8);
    v15 = a4[11];
    goto LABEL_21;
  }

  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMR);
  if (*(*(v21 - 8) + 84) == a3)
  {
    v10 = v21;
    v14 = *(v21 - 8);
    v15 = a4[12];
    goto LABEL_21;
  }

  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GSgMR);
  if (*(*(v22 - 8) + 84) == a3)
  {
    v10 = v22;
    v14 = *(v22 - 8);
    v15 = a4[13];
    goto LABEL_21;
  }

  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMd, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMR);
  if (*(*(v23 - 8) + 84) == a3)
  {
    v10 = v23;
    v14 = *(v23 - 8);
    v15 = a4[14];
    goto LABEL_21;
  }

  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13ImageMetadataVGSgMd, &_s9Coherence10CRRegisterVy8PaperKit13ImageMetadataVGSgMR);
  v26 = *(*(v25 - 8) + 56);
  v27 = a1 + a4[15];

  return v26(v27, a2, a2, v25);
}

uint64_t sub_1D38E5E60()
{
  v1 = (type metadata accessor for Image(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  v5 = v0 + v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v7 = *(*(v6 - 8) + 8);
  v7(v5, v6);
  v7(v5 + v1[7], v6);
  v8 = v1[8];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  (*(*(v9 - 8) + 8))(v5 + v8, v9);
  v10 = v1[9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMR);
  (*(*(v11 - 8) + 8))(v5 + v10, v11);
  v12 = v1[10];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit11ImageFilterOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit11ImageFilterOSgGMR);
  (*(*(v13 - 8) + 8))(v5 + v12, v13);
  v14 = v1[11];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13CRAssetOrDataOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit13CRAssetOrDataOSgGMR);
  (*(*(v15 - 8) + 8))(v5 + v14, v15);
  v16 = v1[12];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGMd, &_s9Coherence10CRRegisterVySSSgGMR);
  v18 = *(*(v17 - 8) + 8);
  v18(v5 + v16, v17);
  v19 = v1[13];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DataVSgGMd, &_s9Coherence10CRRegisterVy10Foundation4DataVSgGMR);
  (*(*(v20 - 8) + 8))(v5 + v19, v20);
  v21 = v1[14];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMR);
  (*(*(v22 - 8) + 8))(v5 + v21, v22);
  v23 = v1[15];
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMR);
  (*(*(v24 - 8) + 8))(v5 + v23, v24);
  v25 = v1[16];
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd, &_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMR);
  (*(*(v26 - 8) + 8))(v5 + v25, v26);
  v27 = v1[17];
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13ImageMetadataVGMd, &_s9Coherence10CRRegisterVy8PaperKit13ImageMetadataVGMR);
  (*(*(v28 - 8) + 8))(v5 + v27, v28);
  v18(v5 + v1[18], v17);
  v29 = v1[19];
  v30 = type metadata accessor for UnknownProperties();
  (*(*(v30 - 8) + 8))(v5 + v29, v30);

  return MEMORY[0x1EEE6BDD0](v0, v4 + 8, v2 | 7);
}

__n128 sub_1D38E6360(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_1D38E63D4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ShapeVGMd, &_s9Coherence7CapsuleVy8PaperKit5ShapeVGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1D38E64F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 68);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1D38E65B8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 16) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 68);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D38E669C()
{

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

uint64_t sub_1D38E66D4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

__n128 sub_1D38E6720(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_1D38E674C()
{
  MEMORY[0x1DA6D07B0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D38E6784()
{

  if (*(v0 + 88))
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + 64));
  }

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1D38E67D4()
{
  v1 = *(v0 + 24);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for Capsule();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(v0 + 56);
  if (v9 != 1)
  {

    if (*(v0 + 152))
    {
      __swift_destroy_boxed_opaque_existential_0((v0 + 128));
    }
  }

  v10 = v3 | v7;
  v11 = (v3 + 209) & ~v3;
  v12 = (v11 + v4 + v7) & ~v7;
  (*(v2 + 8))(v0 + v11, v1);
  (*(v6 + 8))(v0 + v12, v5);

  return MEMORY[0x1EEE6BDD0](v0, v12 + v8, v10 | 7);
}

uint64_t sub_1D38E6940()
{
  v1 = *(v0 + 40);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for Capsule();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  swift_unknownObjectRelease();
  v9 = *(v0 + 72);
  if (v9 != 1)
  {

    if (*(v0 + 168))
    {
      __swift_destroy_boxed_opaque_existential_0((v0 + 144));
    }
  }

  v10 = (v3 + 225) & ~v3;
  v11 = (v4 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + v7 + 8) & ~v7;
  v13 = (v8 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v10, v1);

  (*(v6 + 8))(v0 + v12, v5);

  return MEMORY[0x1EEE6BDD0](v0, v13 + 8, v3 | v7 | 7);
}

uint64_t sub_1D38E6D58()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

__n128 sub_1D38E6DB4(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_1D38E6E50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRValueObservableDifference();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D38E6EBC(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for CRValueObservableDifference();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

__n128 sub_1D38E6F50(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_1D38E6F74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA14SharedTagged_3Vy8PaperKit0eF4PageVGGMd, &_s9Coherence12CROrderedSetVyAA14SharedTagged_3Vy8PaperKit0eF4PageVGGMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7CRAssetVSgGMd, &_s9Coherence10CRRegisterVyAA7CRAssetVSgGMR);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = type metadata accessor for UnknownProperties();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_1D38E70CC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA14SharedTagged_3Vy8PaperKit0eF4PageVGGMd, &_s9Coherence12CROrderedSetVyAA14SharedTagged_3Vy8PaperKit0eF4PageVGGMR);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7CRAssetVSgGMd, &_s9Coherence10CRRegisterVyAA7CRAssetVSgGMR);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = type metadata accessor for UnknownProperties();
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_1D38E7308()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void sub_1D38E778C(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  GraphableExpressionsState.view.setter(v1);
}

uint64_t sub_1D38E77DC()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D38E7B9C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

double sub_1D38E7BFC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return MiniMenuState.feedbackAction.setter(v1, v2);
}

uint64_t sub_1D38E7C74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit9PDFPageIDVSgMd, &_s8PaperKit9PDFPageIDVSgMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1D38E7D7C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit9PDFPageIDVSgMd, &_s8PaperKit9PDFPageIDVSgMR);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGSgMR);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1D38E7E90()
{
  v1 = (type metadata accessor for Image(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  v5 = v0 + v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v7 = *(*(v6 - 8) + 8);
  v7(v5, v6);
  v7(v5 + v1[7], v6);
  v8 = v1[8];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  (*(*(v9 - 8) + 8))(v5 + v8, v9);
  v10 = v1[9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMR);
  (*(*(v11 - 8) + 8))(v5 + v10, v11);
  v12 = v1[10];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit11ImageFilterOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit11ImageFilterOSgGMR);
  (*(*(v13 - 8) + 8))(v5 + v12, v13);
  v14 = v1[11];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13CRAssetOrDataOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit13CRAssetOrDataOSgGMR);
  (*(*(v15 - 8) + 8))(v5 + v14, v15);
  v16 = v1[12];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGMd, &_s9Coherence10CRRegisterVySSSgGMR);
  v18 = *(*(v17 - 8) + 8);
  v18(v5 + v16, v17);
  v19 = v1[13];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DataVSgGMd, &_s9Coherence10CRRegisterVy10Foundation4DataVSgGMR);
  (*(*(v20 - 8) + 8))(v5 + v19, v20);
  v21 = v1[14];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMR);
  (*(*(v22 - 8) + 8))(v5 + v21, v22);
  v23 = v1[15];
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMR);
  (*(*(v24 - 8) + 8))(v5 + v23, v24);
  v25 = v1[16];
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd, &_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMR);
  (*(*(v26 - 8) + 8))(v5 + v25, v26);
  v27 = v1[17];
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13ImageMetadataVGMd, &_s9Coherence10CRRegisterVy8PaperKit13ImageMetadataVGMR);
  (*(*(v28 - 8) + 8))(v5 + v27, v28);
  v18(v5 + v1[18], v17);
  v29 = v1[19];
  v30 = type metadata accessor for UnknownProperties();
  (*(*(v30 - 8) + 8))(v5 + v29, v30);

  return MEMORY[0x1EEE6BDD0](v0, v4 + 8, v2 | 7);
}

uint64_t sub_1D38E83E4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[6];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[8];
    goto LABEL_7;
  }

  v16 = type metadata accessor for UnknownProperties();
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[10];

  return v17(v18, a2, v16);
}

uint64_t sub_1D38E8590(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[6];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[8];
    goto LABEL_7;
  }

  v18 = type metadata accessor for UnknownProperties();
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[10];

  return v19(v20, a2, a2, v18);
}

uint64_t sub_1D38E8748(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence27CRValueObservableDifferenceOSgMd, &_s9Coherence27CRValueObservableDifferenceOSgMR);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D38E87C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence27CRValueObservableDifferenceOSgMd, &_s9Coherence27CRValueObservableDifferenceOSgMR);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1D38E883C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GSgMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVy12CoreGraphics7CGFloatV_AhA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVy12CoreGraphics7CGFloatV_AhA7CRValue8PaperKityHCg_GSgMR);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit5ColorVSg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit5ColorVSg_GSgMR);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 32);

  return v15(v16, a2, v14);
}

uint64_t sub_1D38E89A0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GSgMR);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVy12CoreGraphics7CGFloatV_AhA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVy12CoreGraphics7CGFloatV_AhA7CRValue8PaperKityHCg_GSgMR);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
    goto LABEL_5;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit5ColorVSg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit5ColorVSg_GSgMR);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 32);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_1D38E8B10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMR);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMR);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 32);

  return v15(v16, a2, v14);
}

uint64_t sub_1D38E8C74(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMR);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
    goto LABEL_5;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMR);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 32);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_1D38E8DF0()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D38E8E28()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

void sub_1D38E8E90(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  *a3 = (*(*(*(*(a1 + a2 - 8) + 8) + 8) + 8))(*(a1 + a2 - 24));
  *(a3 + 8) = v4;
  *(a3 + 16) = v5;
  *(a3 + 24) = v6;
}

__n128 sub_1D38E8F48(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_1D38E8F8C()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1D38E9090()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D38E90C8()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1D38E91B0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D38E91F8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D38E9230()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D38E9278()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

unint64_t _s8PaperKit21EncodedFont_IncorrectV10CodingKeysOSYAASY8rawValuexSg03RawI0Qz_tcfCTW_0@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D38E95D0(*a1);
  *a2 = result;
  return result;
}

uint64_t _s8PaperKit4FontV10CodingKeysOs0D3KeyAAsAFP11stringValueSSvgTW_0()
{
  v1 = 0x656D616E5FLL;
  v2 = 0x737469617274;
  if (*v0 != 2)
  {
    v2 = 0x4E796C696D61665FLL;
  }

  if (*v0)
  {
    v1 = 0x7A6953746E696F70;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t _s8PaperKit21EncodedFont_IncorrectV10CodingKeysOs0F3KeyAAsAFP8intValuexSgSi_tcfCTW_0@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D38E95D0(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1D38E93F0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_1D38E9414@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_1D38E9438@<X0>(void *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static Font.Traits.italic;
  return result;
}

uint64_t sub_1D38E9484(uint64_t *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  static Font.Traits.italic = v1;
  return result;
}

uint64_t sub_1D38E94CC@<X0>(void *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static Font.Traits.bold;
  return result;
}

uint64_t sub_1D38E9518(uint64_t *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  static Font.Traits.bold = v1;
  return result;
}

unint64_t sub_1D38E95D0(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

uint64_t sub_1D38E9640()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D38E9684()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D38E96E8()
{
  MEMORY[0x1DA6D07B0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D38E9720()
{
  v1 = type metadata accessor for Capsule();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1D38E97DC()
{
  MEMORY[0x1DA6D07B0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D38E9814()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D38E98E4()
{
  MEMORY[0x1DA6D07B0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D38E991C()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D38E9964()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMd, &_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 88) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 16, v3 | 7);
}

uint64_t sub_1D38E9A78()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D38E9AB8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMd, &_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 96) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1D38E9C40()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

double sub_1D38E9CF0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return GraphableExpressionState.graphableVariable.setter(v1, v2);
}

__n128 sub_1D38E9D44(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_1D38E9DB0()
{
  v1 = type metadata accessor for CRKeyPath();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D38E9E7C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D38E9EB4()
{
  MEMORY[0x1DA6D07B0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void sub_1D38E9F38(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  *a3 = (*(*(*(a1 + a2 - 8) + 8) + 8))(*(a1 + a2 - 24));
  *(a3 + 8) = v4;
  *(a3 + 16) = v5;
  *(a3 + 24) = v6;
}

__n128 sub_1D38E9FE8(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_1D38EA034()
{

  MEMORY[0x1DA6D07B0](v0 + 96);

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

uint64_t sub_1D38EA074()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D38EA0AC()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D38EA0F4()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1D38EA14C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D38EA194()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1D38EA280()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVyAA10CRRegisterVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGGSgMd, &_s9Coherence7CapsuleVyAA10CRRegisterVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGGSgMR) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMR) - 8);
  v6 = *(v5 + 80);
  v7 = (v4 + v6 + 8) & ~v6;
  v8 = *(v5 + 64);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVyAA10CRRegisterVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGGMd, &_s9Coherence7CapsuleVyAA10CRRegisterVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGGMR);
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v0 + v3, 1, v9))
  {
    (*(v10 + 8))(v0 + v3, v9);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMR);
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v0 + v7, 1, v11))
  {
    (*(v12 + 8))(v0 + v7, v11);
  }

  return MEMORY[0x1EEE6BDD0](v0, ((v7 + v8) & 0xFFFFFFFFFFFFFFF8) + 24, v2 | v6 | 7);
}

uint64_t sub_1D38EA5FC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_18:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[6];
LABEL_17:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_18;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMR);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[7];
    goto LABEL_17;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMR);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[8];
    goto LABEL_17;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[9];
    goto LABEL_17;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd, &_s9Coherence10CRRegisterVySSGMR);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[10];
    goto LABEL_17;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMR);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v12 = *(v18 - 8);
    v13 = a3[11];
    goto LABEL_17;
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd, &_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMR);
  if (*(*(v19 - 8) + 84) == a2)
  {
    v8 = v19;
    v12 = *(v19 - 8);
    v13 = a3[12];
    goto LABEL_17;
  }

  v21 = type metadata accessor for UnknownProperties();
  v22 = *(*(v21 - 8) + 48);
  v23 = a1 + a3[13];

  return v22(v23, a2, v21);
}

uint64_t sub_1D38EA94C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_18:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[6];
LABEL_17:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_18;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMR);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[7];
    goto LABEL_17;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMR);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[8];
    goto LABEL_17;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[9];
    goto LABEL_17;
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGMd, &_s9Coherence10CRRegisterVySSGMR);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[10];
    goto LABEL_17;
  }

  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMR);
  if (*(*(v20 - 8) + 84) == a3)
  {
    v10 = v20;
    v14 = *(v20 - 8);
    v15 = a4[11];
    goto LABEL_17;
  }

  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd, &_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMR);
  if (*(*(v21 - 8) + 84) == a3)
  {
    v10 = v21;
    v14 = *(v21 - 8);
    v15 = a4[12];
    goto LABEL_17;
  }

  v23 = type metadata accessor for UnknownProperties();
  v24 = *(*(v23 - 8) + 56);
  v25 = a1 + a4[13];

  return v24(v25, a2, a2, v23);
}

uint64_t sub_1D38EACA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence27CRValueObservableDifferenceOSgMd, &_s9Coherence27CRValueObservableDifferenceOSgMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefV20ObservableDifferenceOy8PaperKit15PKDrawingStructV_GSgMd, &_s9Coherence3RefV20ObservableDifferenceOy8PaperKit15PKDrawingStructV_GSgMR);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 32);
    goto LABEL_5;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV20ObservableDifferenceVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMd, &_s9Coherence12CROrderedSetV20ObservableDifferenceVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMR);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 48);

  return v15(v16, a2, v14);
}

uint64_t sub_1D38EAE0C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence27CRValueObservableDifferenceOSgMd, &_s9Coherence27CRValueObservableDifferenceOSgMR);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefV20ObservableDifferenceOy8PaperKit15PKDrawingStructV_GSgMd, &_s9Coherence3RefV20ObservableDifferenceOy8PaperKit15PKDrawingStructV_GSgMR);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 32);
    goto LABEL_5;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV20ObservableDifferenceVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMd, &_s9Coherence12CROrderedSetV20ObservableDifferenceVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMR);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 48);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_1D38EAF7C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GSgMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_16:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVy12CoreGraphics7CGFloatV_AhA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVy12CoreGraphics7CGFloatV_AhA7CRValue8PaperKityHCg_GSgMR);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[6];
LABEL_15:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_16;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVySo26CGImagePropertyOrientationV_AgA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVySo26CGImagePropertyOrientationV_AgA7CRValue8PaperKityHCg_GSgMR);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[7];
    goto LABEL_15;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVyAA3RefVy8PaperKit15PKDrawingStructVGSg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVyAA3RefVy8PaperKit15PKDrawingStructVGSg_GSgMR);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[8];
    goto LABEL_15;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit5ColorVSg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit5ColorVSg_GSgMR);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[9];
    goto LABEL_15;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVySS_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVySS_GSgMR);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[10];
    goto LABEL_15;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit18CanvasElementFlagsV_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit18CanvasElementFlagsV_GSgMR);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v12 = *(v18 - 8);
    v13 = a3[11];
    goto LABEL_15;
  }

  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV14MutatingActionVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMd, &_s9Coherence12CROrderedSetV14MutatingActionVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMR);
  v21 = *(*(v20 - 8) + 48);
  v22 = a1 + a3[12];

  return v21(v22, a2, v20);
}

uint64_t sub_1D38EB284(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GSgMR);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_16:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVy12CoreGraphics7CGFloatV_AhA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVy12CoreGraphics7CGFloatV_AhA7CRValue8PaperKityHCg_GSgMR);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[6];
LABEL_15:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_16;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVySo26CGImagePropertyOrientationV_AgA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVySo26CGImagePropertyOrientationV_AgA7CRValue8PaperKityHCg_GSgMR);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[7];
    goto LABEL_15;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVyAA3RefVy8PaperKit15PKDrawingStructVGSg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVyAA3RefVy8PaperKit15PKDrawingStructVGSg_GSgMR);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[8];
    goto LABEL_15;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit5ColorVSg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit5ColorVSg_GSgMR);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[9];
    goto LABEL_15;
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVySS_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVySS_GSgMR);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[10];
    goto LABEL_15;
  }

  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit18CanvasElementFlagsV_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit18CanvasElementFlagsV_GSgMR);
  if (*(*(v20 - 8) + 84) == a3)
  {
    v10 = v20;
    v14 = *(v20 - 8);
    v15 = a4[11];
    goto LABEL_15;
  }

  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV14MutatingActionVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMd, &_s9Coherence12CROrderedSetV14MutatingActionVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMR);
  v23 = *(*(v22 - 8) + 56);
  v24 = a1 + a4[12];

  return v23(v24, a2, a2, v22);
}

uint64_t sub_1D38EB598(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_16:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMR);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[6];
LABEL_15:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_16;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GSgMR);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[7];
    goto LABEL_15;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMR);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[8];
    goto LABEL_15;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMR);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[9];
    goto LABEL_15;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGSgMd, &_s9Coherence10CRRegisterVySSGSgMR);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[10];
    goto LABEL_15;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGSgMd, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGSgMR);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v12 = *(v18 - 8);
    v13 = a3[11];
    goto LABEL_15;
  }

  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMd, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMR);
  v21 = *(*(v20 - 8) + 48);
  v22 = a1 + a3[12];

  return v21(v22, a2, v20);
}

uint64_t sub_1D38EB8A0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_16:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMR);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[6];
LABEL_15:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_16;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GSgMR);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[7];
    goto LABEL_15;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMR);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[8];
    goto LABEL_15;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMR);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[9];
    goto LABEL_15;
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSGSgMd, &_s9Coherence10CRRegisterVySSGSgMR);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[10];
    goto LABEL_15;
  }

  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGSgMd, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGSgMR);
  if (*(*(v20 - 8) + 84) == a3)
  {
    v10 = v20;
    v14 = *(v20 - 8);
    v15 = a4[11];
    goto LABEL_15;
  }

  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMd, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMR);
  v23 = *(*(v22 - 8) + 56);
  v24 = a1 + a4[12];

  return v23(v24, a2, a2, v22);
}

uint64_t sub_1D38EBC20(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DataVSgGMd, &_s9Coherence10CRRegisterVy10Foundation4DataVSgGMR);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = type metadata accessor for UnknownProperties();
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[7];

  return v17(v18, a2, v16);
}

uint64_t sub_1D38EBDCC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DataVSgGMd, &_s9Coherence10CRRegisterVy10Foundation4DataVSgGMR);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  v18 = type metadata accessor for UnknownProperties();
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[7];

  return v19(v20, a2, a2, v18);
}

uint64_t sub_1D38EBF84(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence27CRValueObservableDifferenceOSgMd, &_s9Coherence27CRValueObservableDifferenceOSgMR);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D38EBFFC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence27CRValueObservableDifferenceOSgMd, &_s9Coherence27CRValueObservableDifferenceOSgMR);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1D38EC078(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GSgMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVy12CoreGraphics7CGFloatV_AhA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVy12CoreGraphics7CGFloatV_AhA7CRValue8PaperKityHCg_GSgMR);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVy10Foundation4DataVSg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVy10Foundation4DataVSg_GSgMR);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_1D38EC1DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GSgMR);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVy12CoreGraphics7CGFloatV_AhA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVy12CoreGraphics7CGFloatV_AhA7CRValue8PaperKityHCg_GSgMR);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVy10Foundation4DataVSg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVy10Foundation4DataVSg_GSgMR);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_1D38EC34C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMR);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DataVSgGSgMd, &_s9Coherence10CRRegisterVy10Foundation4DataVSgGSgMR);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_1D38EC4B0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMR);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DataVSgGSgMd, &_s9Coherence10CRRegisterVy10Foundation4DataVSgGSgMR);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

__n128 sub_1D38EC634(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

id sub_1D38EC648@<X0>(void *a1@<X8>)
{
  v2 = specialized CanvasElementViewController.canvasView.getter(&unk_1D40727A8, &direct field offset for CanvasElementViewController._canvasView);
  *a1 = v2;

  return v2;
}

void sub_1D38EC694(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  CanvasElementViewController.canvasView.setter(v1);
}

__n128 sub_1D38EC6D0(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_1D38EC72C@<X0>(uint64_t *a1@<X8>)
{
  *a1 = specialized CanvasElementViewController.liveStreamMessenger.getter();
  a1[1] = v2;

  return swift_unknownObjectRetain();
}

uint64_t sub_1D38EC78C@<X0>(uint64_t *a1@<X8>)
{
  result = CanvasElementViewController.participantDetailsDataSource.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D38EC7DC@<X0>(_BYTE *a1@<X8>)
{
  result = CanvasElementViewController.showParticipantCursors.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1D38EC848@<X0>(_BYTE *a1@<X8>)
{
  result = CanvasElementViewController.allowsContentSnapping.getter();
  *a1 = result & 1;
  return result;
}

id sub_1D38EC8B0@<X0>(void *a1@<X8>)
{
  v2 = specialized CanvasElementViewController.contentViewController.getter();
  *a1 = v2;

  return v2;
}

void sub_1D38EC8EC(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  CanvasElementViewController.contentViewController.setter(v1);
}

uint64_t sub_1D38EC934@<X0>(_BYTE *a1@<X8>)
{
  result = CanvasElementViewController.liveStreamDrawings.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1D38EC998@<X0>(_BYTE *a1@<X8>)
{
  result = CanvasElementViewController.isSixChannelBlendingEnabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1D38EC9FC@<X0>(_BYTE *a1@<X8>)
{
  result = CanvasElementViewController.sixChannelBlendingDisableSnapshotting.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1D38ECA60@<X0>(_BYTE *a1@<X8>)
{
  result = CanvasElementViewController.sixChannelBlendingRendersTransparent.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1D38ECAC4@<X0>(_BYTE *a1@<X8>)
{
  result = CanvasElementViewController.canEditVellumOpacity.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1D38ECB28@<X0>(_BYTE *a1@<X8>)
{
  result = CanvasElementViewController.isImageAnalysisEnabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1D38ECB8C@<X0>(_BYTE *a1@<X8>)
{
  result = CanvasElementViewController.canEditDescription.getter();
  *a1 = result & 1;
  return result;
}

double sub_1D38ECBF0@<D0>(uint64_t a1@<X8>)
{
  CanvasElementViewController.bannerViewConfiguration.getter(v5);
  v2 = v7;
  v3 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v3;
  result = *&v6;
  *(a1 + 32) = v6;
  *(a1 + 48) = v2;
  return result;
}

id sub_1D38ECC4C@<X0>(void *a1@<X8>)
{
  v2 = specialized CanvasElementViewController.canvasView.getter(&unk_1D4072C60, &direct field offset for CanvasElementViewController._rulerHostView);
  *a1 = v2;

  return v2;
}

void sub_1D38ECC98(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  CanvasElementViewController.rulerHostView.setter(v1);
}

uint64_t sub_1D38ECCD4@<X0>(uint64_t *a1@<X8>)
{
  result = CanvasElementViewController.formDelegate.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

id sub_1D38ECD5C@<X0>(uint64_t *a1@<X8>)
{
  result = CanvasElementViewController.activeInteractionTypes.getter();
  *a1 = result;
  return result;
}

char *sub_1D38ECDBC@<X0>(_BYTE *a1@<X8>)
{
  result = CanvasElementViewController.automaticallyShowVisualSearchResults.getter();
  *a1 = result & 1;
  return result;
}

id sub_1D38ECE4C@<X0>(uint64_t *a1@<X8>)
{
  result = CanvasElementViewController.drawingPolicy.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1D38ECF6C@<X0>(_BYTE *a1@<X8>)
{
  result = CanvasElementViewController.shouldDeselectElementsWhenToolPickerIsHidden.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1D38ED054@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **(*a1 + direct field offset for Canvas.paperView)) + 0x660))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1D38ED0E0@<X0>(uint64_t *a1@<X8>)
{
  result = CanvasElementViewController<>.imageDescription.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D38ED134@<X0>(uint64_t *a1@<X8>)
{
  result = CanvasElementViewController<>.imageCaption.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D38ED188@<X0>(_BYTE *a1@<X8>)
{
  result = CanvasElementViewController<>.alwaysUseMaxResolutionImage.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1D38ED20C()
{
  MEMORY[0x1DA6D07B0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D38ED244()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

id sub_1D38ED290@<X0>(void *a1@<X8>)
{
  v2 = specialized CanvasElementViewController.canvasView.getter(&unk_1D4072F38, &direct field offset for CanvasElementViewController._analysis);
  *a1 = v2;

  return v2;
}

void sub_1D38ED2DC(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  CanvasElementViewController.analysis.setter(v1);
}

id sub_1D38ED318@<X0>(void *a1@<X8>)
{
  v2 = specialized CanvasElementViewController.canvasView.getter(&unk_1D4072F80, &direct field offset for CanvasElementViewController.__rulerHostingDelegate);
  *a1 = v2;

  return v2;
}

void sub_1D38ED364(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  CanvasElementViewController._rulerHostingDelegate.setter(v1);
}

uint64_t sub_1D38ED3B4()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1D38ED3FC@<X0>(_BYTE *a1@<X8>)
{
  result = CanvasElementViewController.isUpdatingBannerConfiguration.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1D38ED460()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D38ED4A0()
{
  v1 = (type metadata accessor for Image(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 64) & ~v2;
  v4 = *(*v1 + 64);
  swift_unknownObjectRelease();

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v3, v5);
  v6(v0 + v3 + v1[7], v5);
  v7 = v1[8];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);
  v9 = v1[9];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMR);
  (*(*(v10 - 8) + 8))(v0 + v3 + v9, v10);
  v11 = v1[10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit11ImageFilterOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit11ImageFilterOSgGMR);
  (*(*(v12 - 8) + 8))(v0 + v3 + v11, v12);
  v13 = v1[11];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13CRAssetOrDataOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit13CRAssetOrDataOSgGMR);
  (*(*(v14 - 8) + 8))(v0 + v3 + v13, v14);
  v15 = v1[12];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGMd, &_s9Coherence10CRRegisterVySSSgGMR);
  v17 = *(*(v16 - 8) + 8);
  v17(v0 + v3 + v15, v16);
  v18 = v1[13];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DataVSgGMd, &_s9Coherence10CRRegisterVy10Foundation4DataVSgGMR);
  (*(*(v19 - 8) + 8))(v0 + v3 + v18, v19);
  v20 = v1[14];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMR);
  (*(*(v21 - 8) + 8))(v0 + v3 + v20, v21);
  v22 = v1[15];
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMR);
  (*(*(v23 - 8) + 8))(v0 + v3 + v22, v23);
  v24 = v1[16];
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd, &_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMR);
  (*(*(v25 - 8) + 8))(v0 + v3 + v24, v25);
  v26 = v1[17];
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13ImageMetadataVGMd, &_s9Coherence10CRRegisterVy8PaperKit13ImageMetadataVGMR);
  (*(*(v27 - 8) + 8))(v0 + v3 + v26, v27);
  v17(v0 + v3 + v1[18], v16);
  v28 = v1[19];
  v29 = type metadata accessor for UnknownProperties();
  (*(*(v29 - 8) + 8))(v0 + v3 + v28, v29);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D38EDBD8@<X0>(uint64_t *a2@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_1D38EDD14(uint64_t *a1, void *a2)
{
  v2 = a1[1];
  v3 = *a2 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_textualContextProvider;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1D38EDD78@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x348))();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

void *sub_1D38EDE50@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x3C8))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_1D38EDEC4(char *a1, void **a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*((*MEMORY[0x1E69E7D40] & *v2) + 0x3D0))(&v4);
}

void *sub_1D38EDF64@<X0>(uint64_t *a1@<X8>)
{
  result = AnyCanvas.canvasImageGenerationViewDelegate.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

double sub_1D38EDF90(void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = swift_unknownObjectRetain();
  return AnyCanvas.canvasImageGenerationViewDelegate.setter(v3, v2);
}

uint64_t sub_1D38EDFD4()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D38EE048()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D38EE080()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D38EE0CC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D38EE114(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA13DismissActionVGMd, &_s7SwiftUI11EnvironmentVyAA13DismissActionVGMR);
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

    return (v10 + 1);
  }
}

uint64_t sub_1D38EE1E0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA13DismissActionVGMd, &_s7SwiftUI11EnvironmentVyAA13DismissActionVGMR);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D38EE2AC@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.multilineTextAlignment.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1D38EE300(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4ViewPAAE7focusedyQrAA10FocusStateV7BindingVySb_GFQOyAA10TextEditorV_Qo_AA14_PaddingLayoutVGAA24_BackgroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGAPGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4ViewPAAE7focusedyQrAA10FocusStateV7BindingVySb_GFQOyAA10TextEditorV_Qo_AA14_PaddingLayoutVGAA24_BackgroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGAPGMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D38EE394()
{
  MEMORY[0x1DA6D07B0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D38EE444(uint64_t *a1, void *a2)
{
  v2 = a1[1];
  v3 = *a2 + OBJC_IVAR____TtC8PaperKit23PaperDocumentInlineView_delegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

void sub_1D38EE4B4(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  PaperDocumentInlineView.toolPicker.setter(v1);
}

uint64_t sub_1D38EE4F4@<X0>(uint64_t *a2@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_1D38EE59C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC8PaperKit23PaperDocumentInlineView_showParticipantCursors;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1D38EE640()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMd, &_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D38EE720()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D38EE758()
{
  MEMORY[0x1DA6D07B0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D38EE790()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D38EE7D8()
{
  MEMORY[0x1DA6D07B0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D38EE810()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D38EE93C()
{
  MEMORY[0x1DA6D07B0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D38EE974()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 57, 7);
}

void sub_1D38EEA5C(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  PaperDocumentView.toolPicker.setter(v1);
}

void sub_1D38EEAE8(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  PaperDocumentView.rulerHostView.setter(v1);
}

uint64_t sub_1D38EEB64()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

id sub_1D38EEBAC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pdfView;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_1D38EEC18(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  return PaperDocumentView.viewControllerForPresenting.setter(v1);
}

void *sub_1D38EEC54(void *result, void *a2)
{
  v2 = *(*a2 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView_tiledView);
  if (v2)
  {
    return [v2 setContentSnapshottingView_];
  }

  __break(1u);
  return result;
}

id sub_1D38EEC80@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = *(*a1 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView_tiledView);
  if (result)
  {
    result = [result sixChannelBlendingDisableSnapshotting];
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unsigned __int8 *sub_1D38EECC8(unsigned __int8 *result, void *a2)
{
  v2 = *(*a2 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView_tiledView);
  if (v2)
  {
    return [v2 setSixChannelBlendingDisableSnapshotting_];
  }

  __break(1u);
  return result;
}

id sub_1D38EECF4@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  if (*(*a1 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView__allowsDocumentStructureEditing) == 1)
  {
    result = [*(*a1 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pdfDocument) allowsDocumentAssembly];
  }

  else
  {
    result = 0;
  }

  *a2 = result;
  return result;
}

uint64_t sub_1D38EED54@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_allowsDocumentStructureCopying;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1D38EEDAC(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_allowsDocumentStructureCopying;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

void *sub_1D38EEE08@<X0>(void *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *(*result + OBJC_IVAR____TtC8PaperKit17PaperDocumentView_tiledView);
  if (v2)
  {
    *a2 = *(*(v2 + OBJC_IVAR____TtC8PaperKit17TiledDocumentView_canvasElementController) + OBJC_IVAR____TtC8PaperKit23CanvasElementController_shouldDeselectElementsWhenToolPickerIsHidden);
  }

  else
  {
    __break(1u);
  }

  return result;
}

_BYTE *sub_1D38EEE48(_BYTE *result, void *a2)
{
  v2 = *(*a2 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView_tiledView);
  if (v2)
  {
    *(*(v2 + OBJC_IVAR____TtC8PaperKit17TiledDocumentView_canvasElementController) + OBJC_IVAR____TtC8PaperKit23CanvasElementController_shouldDeselectElementsWhenToolPickerIsHidden) = *result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D38EEEB8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D38EEEF0()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D38EEF30()
{
  v1 = *(type metadata accessor for CRAssetOrData(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ImageVGMd, &_s9Coherence7WeakRefVy8PaperKit5ImageVGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  swift_unknownObjectRelease();
  v9 = v0 + v3;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined consume of Data._Representation(*v9, *(v9 + 8));
    outlined consume of Data._Representation(*(v9 + 16), *(v9 + 24));
  }

  else
  {
    v10 = type metadata accessor for CRAsset();
    (*(*(v10 - 8) + 8))(v0 + v3, v10);
  }

  v11 = (v4 + v3 + 79) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + v7 + 8) & ~v7;

  (*(v6 + 8))(v0 + v12, v5);

  return MEMORY[0x1EEE6BDD0](v0, v12 + v8, v2 | v7 | 7);
}

uint64_t sub_1D38EF134()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit11ImageFilterOSgMd, &_s8PaperKit11ImageFilterOSgMR) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ImageVGMd, &_s9Coherence7WeakRefVy8PaperKit5ImageVGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  v9 = type metadata accessor for ImageFilter(0);
  if (!(*(*(v9 - 8) + 48))(v0 + v3, 1, v9) && swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_9Coherence10AnyCRValueVtMd, &_sSi_9Coherence10AnyCRValueVtMR) + 48);
    v11 = type metadata accessor for AnyCRValue();
    (*(*(v11 - 8) + 8))(v0 + v3 + v10, v11);
  }

  v12 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + v7 + 8) & ~v7;

  (*(v6 + 8))(v0 + v13, v5);

  return MEMORY[0x1EEE6BDD0](v0, v13 + v8, v2 | v7 | 7);
}

uint64_t sub_1D38EF33C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D38EF374()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D38EF404()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D38EF43C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMd, &_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1D38EF558()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMd, &_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D38EF628()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMd, &_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1D38EF6D0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMd, &_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit5ImageVGMd, &_s9Coherence3RefVy8PaperKit5ImageVGMR);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x1EEE6BDD0](v0, v9 + v10, v11 | 7);
}

uint64_t sub_1D38EF830()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMd, &_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit5ImageVGMd, &_s9Coherence3RefVy8PaperKit5ImageVGMR);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x1EEE6BDD0](v0, v11 + 16, v10 | 7);
}

uint64_t sub_1D38EF9B0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMd, &_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 16, v3 | 7);
}

uint64_t sub_1D38EFAB0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D38EFBD0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D38EFC18()
{
  v1 = type metadata accessor for CRAsset();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1D38EFCF0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D38EFD30()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D38EFD78()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D38EFDC8()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit20PDFAnnotationElementVGSgMd, &_s9Coherence7CapsuleVy8PaperKit20PDFAnnotationElementVGSgMR) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMR) - 8);
  v6 = *(v5 + 80);
  v7 = (v4 + v6 + 8) & ~v6;
  v8 = *(v5 + 64);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit20PDFAnnotationElementVGMd, &_s9Coherence7CapsuleVy8PaperKit20PDFAnnotationElementVGMR);
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v0 + v3, 1, v9))
  {
    (*(v10 + 8))(v0 + v3, v9);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMR);
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v0 + v7, 1, v11))
  {
    (*(v12 + 8))(v0 + v7, v11);
  }

  return MEMORY[0x1EEE6BDD0](v0, ((v7 + v8) & 0xFFFFFFFFFFFFFFF8) + 24, v2 | v6 | 7);
}

uint64_t sub_1D38F00B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA11ColorSchemeOGMd, &_s7SwiftUI11EnvironmentVyAA11ColorSchemeOGMR);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D38F0174(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA11ColorSchemeOGMd, &_s7SwiftUI11EnvironmentVyAA11ColorSchemeOGMR);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D38F0224()
{
  v1 = type metadata accessor for ToggleStyleConfiguration();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D38F02AC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAA5ImageVAA16_FlexFrameLayoutVGAA24_BackgroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVy8PaperKit13RoundedCornerVGGGMd, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAA5ImageVAA16_FlexFrameLayoutVGAA24_BackgroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVy8PaperKit13RoundedCornerVGGGMR);
  type metadata accessor for PlainButtonStyle();
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Button<ModifiedContent<ModifiedContent<ModifiedContent<Image, _FlexFrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedCorner>>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAA5ImageVAA16_FlexFrameLayoutVGAA24_BackgroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVy8PaperKit13RoundedCornerVGGGMd, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAA5ImageVAA16_FlexFrameLayoutVGAA24_BackgroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVy8PaperKit13RoundedCornerVGGGMR, MEMORY[0x1E697D680]);
  lazy protocol witness table accessor for type PlainButtonStyle and conformance PlainButtonStyle();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1D38F035C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    swift_getAssociatedTypeWitness();
    v9 = type metadata accessor for Bindable();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 40);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1D38F043C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 16) = a2;
  }

  else
  {
    swift_getAssociatedTypeWitness();
    v7 = type metadata accessor for Bindable();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D38F0504(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA11ColorSchemeOGMd, &_s7SwiftUI11EnvironmentVyAA11ColorSchemeOGMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8BindableVy8PaperKit13MiniMenuStateCGMd, &_s7SwiftUI8BindableVy8PaperKit13MiniMenuStateCGMR);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA22UserInterfaceSizeClassOSgGMd, &_s7SwiftUI11EnvironmentVyAA22UserInterfaceSizeClassOSgGMR);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 28);

  return v15(v16, a2, v14);
}

uint64_t sub_1D38F0668(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA11ColorSchemeOGMd, &_s7SwiftUI11EnvironmentVyAA11ColorSchemeOGMR);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8BindableVy8PaperKit13MiniMenuStateCGMd, &_s7SwiftUI8BindableVy8PaperKit13MiniMenuStateCGMR);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
    goto LABEL_5;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA22UserInterfaceSizeClassOSgGMd, &_s7SwiftUI11EnvironmentVyAA22UserInterfaceSizeClassOSgGMR);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 28);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_1D38F07D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (type metadata accessor for MiniMenu(0, *(v4 + 16), *(v4 + 24), a4) - 8);
  v6 = *(*v5 + 80);
  v7 = (v6 + 32) & ~v6;
  v8 = *(*v5 + 64);
  MEMORY[0x1DA6D07B0](v4 + v7);

  v9 = v5[12];
  swift_getAssociatedTypeWitness();
  v10 = type metadata accessor for Bindable();
  (*(*(v10 - 8) + 8))(v4 + v7 + v9, v10);

  return MEMORY[0x1EEE6BDD0](v4, v7 + v8, v6 | 7);
}

void *sub_1D38F0908@<X0>(void *a1@<X8>)
{
  lazy protocol witness table accessor for type EnvironmentValues.__Key_miniMenuController and conformance EnvironmentValues.__Key_miniMenuController();
  result = EnvironmentValues.subscript.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_1D38F09B4(void *a1)
{
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVy8PaperKit16MiniPopoverStateCSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy8PaperKit16MiniPopoverStateCSgGMR);
  type metadata accessor for ModifiedContent();
  swift_getOpaqueTypeConformance2();
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<MiniPopoverState?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy8PaperKit16MiniPopoverStateCSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy8PaperKit16MiniPopoverStateCSgGMR, MEMORY[0x1E6980A18]);
  return swift_getWitnessTable();
}

__n128 sub_1D38F0B64(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_1D38F0B9C()
{
  MEMORY[0x1DA6D07B0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D38F0BD4()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit11ImageFilterOSgMd, &_s8PaperKit11ImageFilterOSgMR) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit14ContentsBoundsOSgMd, &_s8PaperKit14ContentsBoundsOSgMR) - 8);
  v6 = *(v5 + 80);
  v7 = (v3 + v4 + v6) & ~v6;
  v8 = *(v5 + 64);
  swift_unknownObjectRelease();
  outlined consume of Data._Representation(*(v0 + 32), *(v0 + 40));

  v9 = v0 + v3;
  v10 = type metadata accessor for ImageFilter(0);
  if (!(*(*(v10 - 8) + 48))(v9, 1, v10) && swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_9Coherence10AnyCRValueVtMd, &_sSi_9Coherence10AnyCRValueVtMR) + 48);
    v12 = type metadata accessor for AnyCRValue();
    (*(*(v12 - 8) + 8))(v9 + v11, v12);
  }

  v13 = type metadata accessor for ContentsBounds(0);
  if (!(*(*(v13 - 8) + 48))(v0 + v7, 1, v13) && swift_getEnumCaseMultiPayload() == 2)
  {
    v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_9Coherence10AnyCRValueVtMd, &_sSi_9Coherence10AnyCRValueVtMR) + 48);
    v15 = type metadata accessor for AnyCRValue();
    (*(*(v15 - 8) + 8))(v0 + v7 + v14, v15);
  }

  return MEMORY[0x1EEE6BDD0](v0, ((v8 + v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | v6 | 7);
}

uint64_t sub_1D38F0E68()
{
  v1 = *(type metadata accessor for ImageElementView.ImageState(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(type metadata accessor for CRAssetOrData(0) - 8);
  v41 = *(v5 + 80);
  v6 = (((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + v41 + 8) & ~v41;
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit11ImageFilterOSgMd, &_s8PaperKit11ImageFilterOSgMR) - 8);
  v40 = *(v8 + 80);
  v9 = (v7 + v40 + 9) & ~v40;
  v10 = *(v8 + 64);
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit14ContentsBoundsOSgMd, &_s8PaperKit14ContentsBoundsOSgMR) - 8);
  v12 = *(v11 + 80);
  v39 = v10 + v12;
  v13 = *(v11 + 64);
  swift_unknownObjectRelease();
  v14 = v0 + v3;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v16 = type metadata accessor for CRAsset();
    (*(*(v16 - 8) + 8))(v14, v16);
  }

  else if (!EnumCaseMultiPayload)
  {
    v37 = v13;
    v38 = v2;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined consume of Data._Representation(*v14, *(v14 + 8));
      outlined consume of Data._Representation(*(v14 + 16), *(v14 + 24));
    }

    else
    {
      v17 = type metadata accessor for CRAsset();
      (*(*(v17 - 8) + 8))(v14, v17);
    }

    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit13CRAssetOrDataO5asset_AA11ImageFilterOSg6filterAA14ContentsBoundsOSg4cropSi20maxDimensionInPixelstMd, &_s8PaperKit13CRAssetOrDataO5asset_AA11ImageFilterOSg6filterAA14ContentsBoundsOSg4cropSi20maxDimensionInPixelstMR);
    v19 = v14 + *(v18 + 48);
    v20 = type metadata accessor for ImageFilter(0);
    if (!(*(*(v20 - 8) + 48))(v19, 1, v20) && swift_getEnumCaseMultiPayload() == 1)
    {
      v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_9Coherence10AnyCRValueVtMd, &_sSi_9Coherence10AnyCRValueVtMR) + 48);
      v22 = type metadata accessor for AnyCRValue();
      (*(*(v22 - 8) + 8))(v19 + v21, v22);
    }

    v23 = v14 + *(v18 + 64);
    v24 = type metadata accessor for ContentsBounds(0);
    v13 = v37;
    v2 = v38;
    if (!(*(*(v24 - 8) + 48))(v23, 1, v24) && swift_getEnumCaseMultiPayload() == 2)
    {
      v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_9Coherence10AnyCRValueVtMd, &_sSi_9Coherence10AnyCRValueVtMR) + 48);
      v26 = type metadata accessor for AnyCRValue();
      (*(*(v26 - 8) + 8))(v23 + v25, v26);
    }
  }

  v27 = v0 + v6;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined consume of Data._Representation(*v27, *(v27 + 8));
    outlined consume of Data._Representation(*(v27 + 16), *(v27 + 24));
  }

  else
  {
    v28 = type metadata accessor for CRAsset();
    (*(*(v28 - 8) + 8))(v0 + v6, v28);
  }

  v29 = (v9 + v39) & ~v12;
  v30 = type metadata accessor for ImageFilter(0);
  if (!(*(*(v30 - 8) + 48))(v0 + v9, 1, v30) && swift_getEnumCaseMultiPayload() == 1)
  {
    v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_9Coherence10AnyCRValueVtMd, &_sSi_9Coherence10AnyCRValueVtMR) + 48);
    v32 = type metadata accessor for AnyCRValue();
    (*(*(v32 - 8) + 8))(v0 + v9 + v31, v32);
  }

  v33 = type metadata accessor for ContentsBounds(0);
  if (!(*(*(v33 - 8) + 48))(v0 + v29, 1, v33) && swift_getEnumCaseMultiPayload() == 2)
  {
    v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_9Coherence10AnyCRValueVtMd, &_sSi_9Coherence10AnyCRValueVtMR) + 48);
    v35 = type metadata accessor for AnyCRValue();
    (*(*(v35 - 8) + 8))(v0 + v29 + v34, v35);
  }

  return MEMORY[0x1EEE6BDD0](v0, v29 + v13, v2 | v41 | v40 | v12 | 7);
}

uint64_t sub_1D38F1488()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  outlined consume of Data._Representation(*(v0 + 40), *(v0 + 48));
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D38F1578()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D38F168C()
{
  v1 = *(type metadata accessor for ImageElementView.ImageOrFile(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v6 = type metadata accessor for CRStableAsset();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else if (!EnumCaseMultiPayload)
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D38F17A4()
{
  swift_unknownObjectRelease();
  outlined consume of Data._Representation(*(v0 + 32), *(v0 + 40));

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D38F17E4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D38F1838(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRKeyPath();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D38F18A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRKeyPath();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_1D38F197C(double a1, double a2, double a3, double a4)
{
  *v4 = a1;
  v4[1] = a2;
  v4[2] = a3;
  v4[3] = a4;
}

uint64_t sub_1D38F1994(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for UnknownProperties();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1D38F1A90(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for UnknownProperties();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1D38F1C1C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1D38F1C74()
{

  return MEMORY[0x1EEE6BDD0](v0, 41, 7);
}

uint64_t sub_1D38F1CD4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D38F1D14()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D38F1D5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA0C6ValuesVGMd, &_s7SwiftUI11EnvironmentVyAA0C6ValuesVGMR);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D38F1E18(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA0C6ValuesVGMd, &_s7SwiftUI11EnvironmentVyAA0C6ValuesVGMR);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D38F1EDC@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x1DA6C9B90]();
  *a1 = result;
  return result;
}

uint64_t sub_1D38F1FC0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D38F2000()
{
  MEMORY[0x1DA6D07B0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D38F2038()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

__n128 sub_1D38F2084(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_1D38F20AC()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D38F2120()
{
  MEMORY[0x1DA6D07B0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D38F2158()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D38F21A0@<X0>(uint64_t *a2@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_1D38F2258()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D38F2298()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit4LinkVGMd, &_s9Coherence7CapsuleVy8PaperKit4LinkVGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  if (*(v0 + v5))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

uint64_t sub_1D38F2388()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D38F23C0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D38F23F8()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D38F2438()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D38F2490()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D38F25B4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_9:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_10;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7CRAssetVSgGMd, &_s9Coherence10CRRegisterVyAA7CRAssetVSgGMR);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_9;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiGMd, &_s9Coherence10CRRegisterVySiGMR);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_9;
  }

  v17 = type metadata accessor for UnknownProperties();
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[8];

  return v18(v19, a2, v17);
}

uint64_t sub_1D38F27B4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7CRAssetVSgGMd, &_s9Coherence10CRRegisterVyAA7CRAssetVSgGMR);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_9;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiGMd, &_s9Coherence10CRRegisterVySiGMR);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_9;
  }

  v19 = type metadata accessor for UnknownProperties();
  v20 = *(*(v19 - 8) + 56);
  v21 = a1 + a4[8];

  return v20(v21, a2, a2, v19);
}

uint64_t sub_1D38F29C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence27CRValueObservableDifferenceOSgMd, &_s9Coherence27CRValueObservableDifferenceOSgMR);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D38F2A38(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence27CRValueObservableDifferenceOSgMd, &_s9Coherence27CRValueObservableDifferenceOSgMR);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1D38F2AB4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GSgMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVy12CoreGraphics7CGFloatV_AhA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVy12CoreGraphics7CGFloatV_AhA7CRValue8PaperKityHCg_GSgMR);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVyAA7CRAssetVSg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVyAA7CRAssetVSg_GSgMR);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVySi_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVySi_GSgMR);
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[7];

  return v17(v18, a2, v16);
}

uint64_t sub_1D38F2C6C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GSgMR);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVy12CoreGraphics7CGFloatV_AhA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVy12CoreGraphics7CGFloatV_AhA7CRValue8PaperKityHCg_GSgMR);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVyAA7CRAssetVSg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVyAA7CRAssetVSg_GSgMR);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVySi_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVySi_GSgMR);
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[7];

  return v19(v20, a2, a2, v18);
}

uint64_t sub_1D38F2E30(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMR);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7CRAssetVSgGSgMd, &_s9Coherence10CRRegisterVyAA7CRAssetVSgGSgMR);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiGSgMd, &_s9Coherence10CRRegisterVySiGSgMR);
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[7];

  return v17(v18, a2, v16);
}

uint64_t sub_1D38F2FE8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMR);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7CRAssetVSgGSgMd, &_s9Coherence10CRRegisterVyAA7CRAssetVSgGSgMR);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiGSgMd, &_s9Coherence10CRRegisterVySiGSgMR);
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[7];

  return v19(v20, a2, a2, v18);
}

uint64_t sub_1D38F31AC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D38F31F4()
{
  MEMORY[0x1DA6D07B0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D38F322C()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 112) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1D38F331C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 81, 7);
}

uint64_t sub_1D38F3378()
{
  v1 = type metadata accessor for PKDrawing();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 88) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1D38F3488()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D38F34C0()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D38F34F8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  if (*(v0 + 16))
  {
  }

  v5 = (v3 + 32) & ~v3;
  (*(v2 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v4, v3 | 7);
}

uint64_t sub_1D38F35D4()
{
  v1 = type metadata accessor for PKDrawing();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1D38F36CC()
{
  if (*(v0 + 24))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D38F3714()
{
  swift_unknownObjectRelease();

  if (*(v0 + 104))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 120, 7);
}

uint64_t sub_1D38F3784()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1D38F37D4()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D38F380C()
{

  MEMORY[0x1DA6D07B0](v0 + 96);

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

uint64_t sub_1D38F384C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D38F388C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D38F38E4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x60))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1D38F3940(void *a1, void **a2)
{
  v2 = a1[1];
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x68);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

uint64_t sub_1D38F39B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRDictionaryVy10Foundation4UUIDV8PaperKit20TimestampedSelectionVGMd, &_s9Coherence12CRDictionaryVy10Foundation4UUIDV8PaperKit20TimestampedSelectionVGMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for UnknownProperties();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1D38F3AB0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRDictionaryVy10Foundation4UUIDV8PaperKit20TimestampedSelectionVGMd, &_s9Coherence12CRDictionaryVy10Foundation4UUIDV8PaperKit20TimestampedSelectionVGMR);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for UnknownProperties();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1D38F3C40()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D38F3C84()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  }

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D38F3CC4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D38F3D04()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5NeverOGMd, &_sScCySbs5NeverOGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 120) & ~v3;
  v5 = *(v2 + 64);

  outlined consume of Data._Representation(*(v0 + 56), *(v0 + 64));
  outlined consume of Data._Representation(*(v0 + 88), *(v0 + 96));

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D38F3E04()
{
  MEMORY[0x1DA6D07B0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D38F3E3C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D38F3EAC()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D38F3EF4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D38F3F4C()
{
  swift_unknownObjectRelease();

  outlined consume of MagicGenerativePlaygroundContext(*(v0 + 40), *(v0 + 48), *(v0 + 56));

  return MEMORY[0x1EEE6BDD0](v0, 57, 7);
}

uint64_t sub_1D38F3F98()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 120, 7);
}

uint64_t sub_1D38F4018()
{

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1D38F4058()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5NeverOGMd, &_sScCySbs5NeverOGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D38F40EC()
{
  swift_unknownObjectRelease();

  outlined consume of Data._Representation(*(v0 + 40), *(v0 + 48));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D38F4148()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);

  if (*(v0 + 32))
  {
  }

  v5 = (v3 + 48) & ~v3;
  (*(v2 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v4, v3 | 7);
}

uint64_t sub_1D38F4230()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D38F4270()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D38F42A8()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D38F42F8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D38F4348()
{
  swift_unknownObjectRelease();

  outlined consume of MagicGenerativePlaygroundContext(*(v0 + 40), *(v0 + 48), *(v0 + 56));

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1D38F4394()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D38F43DC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy9PencilKit9PKDrawingVSgs5NeverOGMd, &_sScCy9PencilKit9PKDrawingVSgs5NeverOGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D38F4470()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 80) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);

  v6 = v0 + v5;
  v7 = *(v0 + v5 + 8);
  if (v7 != 1)
  {

    if (*(v6 + 104))
    {
      __swift_destroy_boxed_opaque_existential_0((v6 + 80));
    }
  }

  return MEMORY[0x1EEE6BDD0](v0, v5 + 125, v2 | 7);
}

uint64_t sub_1D38F4538()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVyAA10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGGSgMd, &_s9Coherence7CapsuleVyAA10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGGSgMR) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMR) - 8);
  v6 = *(v5 + 80);
  v7 = (v4 + v6 + 8) & ~v6;
  v8 = *(v5 + 64);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVyAA10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGGMd, &_s9Coherence7CapsuleVyAA10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGGMR);
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v0 + v3, 1, v9))
  {
    (*(v10 + 8))(v0 + v3, v9);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMR);
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v0 + v7, 1, v11))
  {
    (*(v12 + 8))(v0 + v7, v11);
  }

  return MEMORY[0x1EEE6BDD0](v0, ((v7 + v8) & 0xFFFFFFFFFFFFFFF8) + 24, v2 | v6 | 7);
}

uint64_t sub_1D38F4778()
{
  v1 = *(v0 + 32);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 96) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  v8 = v0 + v7;
  v9 = *(v0 + v7 + 8);
  if (v9 != 1)
  {

    if (*(v8 + 104))
    {
      __swift_destroy_boxed_opaque_existential_0((v8 + 80));
    }
  }

  v10 = (v7 + 132) & 0xFFFFFFFFFFFFFFF8;

  return MEMORY[0x1EEE6BDD0](v0, v10 + 8, v3 | 7);
}

uint64_t sub_1D38F48AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 68);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1D38F4974(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 16) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 68);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

__n128 sub_1D38F4A78(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_1D38F4DA8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_26:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_25:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_26;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_25;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9ShapeTypeOGMd, &_s9Coherence10CRRegisterVy8PaperKit9ShapeTypeOGMR);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[9];
    goto LABEL_25;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA12CRExtensibleOy8PaperKit7LineEndOGGMd, &_s9Coherence10CRRegisterVyAA12CRExtensibleOy8PaperKit7LineEndOGGMR);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[11];
    goto LABEL_25;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMR);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[13];
    goto LABEL_25;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGMd, &_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGMR);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v12 = *(v18 - 8);
    v13 = a3[14];
    goto LABEL_25;
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit31CanvasElementAutoresizeBehaviorVGMd, &_s9Coherence10CRRegisterVy8PaperKit31CanvasElementAutoresizeBehaviorVGMR);
  if (*(*(v19 - 8) + 84) == a2)
  {
    v8 = v19;
    v12 = *(v19 - 8);
    v13 = a3[15];
    goto LABEL_25;
  }

  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMR);
  if (*(*(v20 - 8) + 84) == a2)
  {
    v8 = v20;
    v12 = *(v20 - 8);
    v13 = a3[16];
    goto LABEL_25;
  }

  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit11StrokeStyleOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit11StrokeStyleOSgGMR);
  if (*(*(v21 - 8) + 84) == a2)
  {
    v8 = v21;
    v12 = *(v21 - 8);
    v13 = a3[17];
    goto LABEL_25;
  }

  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit6ShadowVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit6ShadowVSgGMR);
  if (*(*(v22 - 8) + 84) == a2)
  {
    v8 = v22;
    v12 = *(v22 - 8);
    v13 = a3[18];
    goto LABEL_25;
  }

  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18ShapeAuxiliaryInfoVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit18ShapeAuxiliaryInfoVSgGMR);
  if (*(*(v23 - 8) + 84) == a2)
  {
    v8 = v23;
    v12 = *(v23 - 8);
    v13 = a3[19];
    goto LABEL_25;
  }

  v25 = type metadata accessor for UnknownProperties();
  v26 = *(*(v25 - 8) + 48);
  v27 = a1 + a3[20];

  return v26(v27, a2, v25);
}

uint64_t sub_1D38F5248(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_26:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_25:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_26;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMR);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_25;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9ShapeTypeOGMd, &_s9Coherence10CRRegisterVy8PaperKit9ShapeTypeOGMR);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[9];
    goto LABEL_25;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA12CRExtensibleOy8PaperKit7LineEndOGGMd, &_s9Coherence10CRRegisterVyAA12CRExtensibleOy8PaperKit7LineEndOGGMR);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[11];
    goto LABEL_25;
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMR);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[13];
    goto LABEL_25;
  }

  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGMd, &_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGMR);
  if (*(*(v20 - 8) + 84) == a3)
  {
    v10 = v20;
    v14 = *(v20 - 8);
    v15 = a4[14];
    goto LABEL_25;
  }

  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit31CanvasElementAutoresizeBehaviorVGMd, &_s9Coherence10CRRegisterVy8PaperKit31CanvasElementAutoresizeBehaviorVGMR);
  if (*(*(v21 - 8) + 84) == a3)
  {
    v10 = v21;
    v14 = *(v21 - 8);
    v15 = a4[15];
    goto LABEL_25;
  }

  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMd, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGMR);
  if (*(*(v22 - 8) + 84) == a3)
  {
    v10 = v22;
    v14 = *(v22 - 8);
    v15 = a4[16];
    goto LABEL_25;
  }

  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit11StrokeStyleOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit11StrokeStyleOSgGMR);
  if (*(*(v23 - 8) + 84) == a3)
  {
    v10 = v23;
    v14 = *(v23 - 8);
    v15 = a4[17];
    goto LABEL_25;
  }

  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit6ShadowVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit6ShadowVSgGMR);
  if (*(*(v24 - 8) + 84) == a3)
  {
    v10 = v24;
    v14 = *(v24 - 8);
    v15 = a4[18];
    goto LABEL_25;
  }

  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18ShapeAuxiliaryInfoVSgGMd, &_s9Coherence10CRRegisterVy8PaperKit18ShapeAuxiliaryInfoVSgGMR);
  if (*(*(v25 - 8) + 84) == a3)
  {
    v10 = v25;
    v14 = *(v25 - 8);
    v15 = a4[19];
    goto LABEL_25;
  }

  v27 = type metadata accessor for UnknownProperties();
  v28 = *(*(v27 - 8) + 56);
  v29 = a1 + a4[20];

  return v28(v29, a2, a2, v27);
}

uint64_t sub_1D38F56F4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence27CRValueObservableDifferenceOSgMd, &_s9Coherence27CRValueObservableDifferenceOSgMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit9ShapeTypeO20ObservableDifferenceOSgMd, &_s8PaperKit9ShapeTypeO20ObservableDifferenceOSgMR);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[9];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV20ObservableDifferenceVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV20ObservableDifferenceVy8PaperKit18TextAttributeScopeV_GSgMR);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[13];
    goto LABEL_7;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit11StrokeStyleO20ObservableDifferenceOSgMd, &_s8PaperKit11StrokeStyleO20ObservableDifferenceOSgMR);
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[17];

  return v17(v18, a2, v16);
}

uint64_t sub_1D38F58AC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence27CRValueObservableDifferenceOSgMd, &_s9Coherence27CRValueObservableDifferenceOSgMR);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit9ShapeTypeO20ObservableDifferenceOSgMd, &_s8PaperKit9ShapeTypeO20ObservableDifferenceOSgMR);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[9];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV20ObservableDifferenceVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV20ObservableDifferenceVy8PaperKit18TextAttributeScopeV_GSgMR);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[13];
    goto LABEL_7;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit11StrokeStyleO20ObservableDifferenceOSgMd, &_s8PaperKit11StrokeStyleO20ObservableDifferenceOSgMR);
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[17];

  return v19(v20, a2, a2, v18);
}

uint64_t sub_1D38F5A70(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GSgMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_24:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVy12CoreGraphics7CGFloatV_AhA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVy12CoreGraphics7CGFloatV_AhA7CRValue8PaperKityHCg_GSgMR);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_23:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_24;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit5ColorVSg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit5ColorVSg_GSgMR);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_23;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit9ShapeTypeO_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit9ShapeTypeO_GSgMR);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[9];
    goto LABEL_23;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVyAA12CRExtensibleOy8PaperKit7LineEndOG_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVyAA12CRExtensibleOy8PaperKit7LineEndOG_GSgMR);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[11];
    goto LABEL_23;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV14MutatingActionVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV14MutatingActionVy8PaperKit18TextAttributeScopeV_GSgMR);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[13];
    goto LABEL_23;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSg_GSgMR);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v12 = *(v18 - 8);
    v13 = a3[14];
    goto LABEL_23;
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit31CanvasElementAutoresizeBehaviorV_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit31CanvasElementAutoresizeBehaviorV_GSgMR);
  if (*(*(v19 - 8) + 84) == a2)
  {
    v8 = v19;
    v12 = *(v19 - 8);
    v13 = a3[15];
    goto LABEL_23;
  }

  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit18CanvasElementFlagsV_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit18CanvasElementFlagsV_GSgMR);
  if (*(*(v20 - 8) + 84) == a2)
  {
    v8 = v20;
    v12 = *(v20 - 8);
    v13 = a3[16];
    goto LABEL_23;
  }

  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit11StrokeStyleOSg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit11StrokeStyleOSg_GSgMR);
  if (*(*(v21 - 8) + 84) == a2)
  {
    v8 = v21;
    v12 = *(v21 - 8);
    v13 = a3[17];
    goto LABEL_23;
  }

  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit6ShadowVSg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit6ShadowVSg_GSgMR);
  if (*(*(v22 - 8) + 84) == a2)
  {
    v8 = v22;
    v12 = *(v22 - 8);
    v13 = a3[18];
    goto LABEL_23;
  }

  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit18ShapeAuxiliaryInfoVSg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit18ShapeAuxiliaryInfoVSg_GSgMR);
  v25 = *(*(v24 - 8) + 48);
  v26 = a1 + a3[19];

  return v25(v26, a2, v24);
}

uint64_t sub_1D38F5EC8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVySo6CGRectV_AgA7CRValue8PaperKityHCg_GSgMR);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_24:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVy12CoreGraphics7CGFloatV_AhA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVy12CoreGraphics7CGFloatV_AhA7CRValue8PaperKityHCg_GSgMR);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_23:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_24;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit5ColorVSg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit5ColorVSg_GSgMR);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_23;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit9ShapeTypeO_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit9ShapeTypeO_GSgMR);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[9];
    goto LABEL_23;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVyAA12CRExtensibleOy8PaperKit7LineEndOG_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVyAA12CRExtensibleOy8PaperKit7LineEndOG_GSgMR);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[11];
    goto LABEL_23;
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV14MutatingActionVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV14MutatingActionVy8PaperKit18TextAttributeScopeV_GSgMR);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[13];
    goto LABEL_23;
  }

  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSg_GSgMR);
  if (*(*(v20 - 8) + 84) == a3)
  {
    v10 = v20;
    v14 = *(v20 - 8);
    v15 = a4[14];
    goto LABEL_23;
  }

  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit31CanvasElementAutoresizeBehaviorV_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit31CanvasElementAutoresizeBehaviorV_GSgMR);
  if (*(*(v21 - 8) + 84) == a3)
  {
    v10 = v21;
    v14 = *(v21 - 8);
    v15 = a4[15];
    goto LABEL_23;
  }

  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit18CanvasElementFlagsV_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit18CanvasElementFlagsV_GSgMR);
  if (*(*(v22 - 8) + 84) == a3)
  {
    v10 = v22;
    v14 = *(v22 - 8);
    v15 = a4[16];
    goto LABEL_23;
  }

  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit11StrokeStyleOSg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit11StrokeStyleOSg_GSgMR);
  if (*(*(v23 - 8) + 84) == a3)
  {
    v10 = v23;
    v14 = *(v23 - 8);
    v15 = a4[17];
    goto LABEL_23;
  }

  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit6ShadowVSg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit6ShadowVSg_GSgMR);
  if (*(*(v24 - 8) + 84) == a3)
  {
    v10 = v24;
    v14 = *(v24 - 8);
    v15 = a4[18];
    goto LABEL_23;
  }

  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit18ShapeAuxiliaryInfoVSg_GSgMd, &_s9Coherence10CRRegisterV14MutatingActionVy8PaperKit18ShapeAuxiliaryInfoVSg_GSgMR);
  v27 = *(*(v26 - 8) + 56);
  v28 = a1 + a4[19];

  return v27(v28, a2, a2, v26);
}

uint64_t sub_1D38F632C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_24:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMR);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_23:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_24;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMR);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_23;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9ShapeTypeOGSgMd, &_s9Coherence10CRRegisterVy8PaperKit9ShapeTypeOGSgMR);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[9];
    goto LABEL_23;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA12CRExtensibleOy8PaperKit7LineEndOGGSgMd, &_s9Coherence10CRRegisterVyAA12CRExtensibleOy8PaperKit7LineEndOGGSgMR);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[11];
    goto LABEL_23;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV7PartialVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV7PartialVy8PaperKit18TextAttributeScopeV_GSgMR);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[13];
    goto LABEL_23;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGSgMd, &_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGSgMR);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v12 = *(v18 - 8);
    v13 = a3[14];
    goto LABEL_23;
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit31CanvasElementAutoresizeBehaviorVGSgMd, &_s9Coherence10CRRegisterVy8PaperKit31CanvasElementAutoresizeBehaviorVGSgMR);
  if (*(*(v19 - 8) + 84) == a2)
  {
    v8 = v19;
    v12 = *(v19 - 8);
    v13 = a3[15];
    goto LABEL_23;
  }

  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGSgMd, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGSgMR);
  if (*(*(v20 - 8) + 84) == a2)
  {
    v8 = v20;
    v12 = *(v20 - 8);
    v13 = a3[16];
    goto LABEL_23;
  }

  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit11StrokeStyleOSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit11StrokeStyleOSgGSgMR);
  if (*(*(v21 - 8) + 84) == a2)
  {
    v8 = v21;
    v12 = *(v21 - 8);
    v13 = a3[17];
    goto LABEL_23;
  }

  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit6ShadowVSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit6ShadowVSgGSgMR);
  if (*(*(v22 - 8) + 84) == a2)
  {
    v8 = v22;
    v12 = *(v22 - 8);
    v13 = a3[18];
    goto LABEL_23;
  }

  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18ShapeAuxiliaryInfoVSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit18ShapeAuxiliaryInfoVSgGSgMR);
  v25 = *(*(v24 - 8) + 48);
  v26 = a1 + a3[19];

  return v25(v26, a2, v24);
}

uint64_t sub_1D38F6784(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMR);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_24:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMR);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_23:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_24;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGSgMR);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_23;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9ShapeTypeOGSgMd, &_s9Coherence10CRRegisterVy8PaperKit9ShapeTypeOGSgMR);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[9];
    goto LABEL_23;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA12CRExtensibleOy8PaperKit7LineEndOGGSgMd, &_s9Coherence10CRRegisterVyAA12CRExtensibleOy8PaperKit7LineEndOGGSgMR);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[11];
    goto LABEL_23;
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV7PartialVy8PaperKit18TextAttributeScopeV_GSgMd, &_s9Coherence18CRAttributedStringV7PartialVy8PaperKit18TextAttributeScopeV_GSgMR);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[13];
    goto LABEL_23;
  }

  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGSgMd, &_s9Coherence10CRRegisterVyAA18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgGSgMR);
  if (*(*(v20 - 8) + 84) == a3)
  {
    v10 = v20;
    v14 = *(v20 - 8);
    v15 = a4[14];
    goto LABEL_23;
  }

  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit31CanvasElementAutoresizeBehaviorVGSgMd, &_s9Coherence10CRRegisterVy8PaperKit31CanvasElementAutoresizeBehaviorVGSgMR);
  if (*(*(v21 - 8) + 84) == a3)
  {
    v10 = v21;
    v14 = *(v21 - 8);
    v15 = a4[15];
    goto LABEL_23;
  }

  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGSgMd, &_s9Coherence10CRRegisterVy8PaperKit18CanvasElementFlagsVGSgMR);
  if (*(*(v22 - 8) + 84) == a3)
  {
    v10 = v22;
    v14 = *(v22 - 8);
    v15 = a4[16];
    goto LABEL_23;
  }

  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit11StrokeStyleOSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit11StrokeStyleOSgGSgMR);
  if (*(*(v23 - 8) + 84) == a3)
  {
    v10 = v23;
    v14 = *(v23 - 8);
    v15 = a4[17];
    goto LABEL_23;
  }

  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit6ShadowVSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit6ShadowVSgGSgMR);
  if (*(*(v24 - 8) + 84) == a3)
  {
    v10 = v24;
    v14 = *(v24 - 8);
    v15 = a4[18];
    goto LABEL_23;
  }

  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit18ShapeAuxiliaryInfoVSgGSgMd, &_s9Coherence10CRRegisterVy8PaperKit18ShapeAuxiliaryInfoVSgGSgMR);
  v27 = *(*(v26 - 8) + 56);
  v28 = a1 + a4[19];

  return v27(v28, a2, a2, v26);
}

uint64_t sub_1D38F6BE8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D38F6C38()
{
  MEMORY[0x1DA6D07B0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D38F6C70()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1D38F6D0C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D38F6D44()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D38F6D84()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

__n128 sub_1D38F6DBC@<Q0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC8PaperKit39PaperKitExtensionDocumentViewController_extensionHostSafeAreaInsets;
  swift_beginAccess();
  result = *v3;
  v5 = *(v3 + 16);
  *a2 = *v3;
  a2[1] = v5;
  return result;
}

uint64_t sub_1D38F6EA0@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC8PaperKit39PaperKitExtensionDocumentViewController_participantDetailsDataSource;
  swift_beginAccess();
  *a2 = *(v3 + v4);
  return swift_unknownObjectRetain();
}

uint64_t sub_1D38F6F3C@<X0>(uint64_t *a2@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_1D38F6FFC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D38F7040(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRKeyPath();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D38F70AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRKeyPath();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

__n128 sub_1D38F7130(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_1D38F7268()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D38F72A0()
{
  MEMORY[0x1DA6D07B0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D38F72D8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D38F7318()
{
  swift_unknownObjectRelease();

  outlined consume of MagicGenerativePlaygroundContext(*(v0 + 72), *(v0 + 80), *(v0 + 88));

  return MEMORY[0x1EEE6BDD0](v0, 89, 7);
}

uint64_t sub_1D38F7364@<X0>(uint64_t *a1@<X8>)
{
  *a1 = specialized Canvas.liveStreamMessenger.getter();
  a1[1] = v2;

  return swift_unknownObjectRetain();
}

__n128 sub_1D38F73B0(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_1D38F74DC@<X0>(uint64_t *a1@<X8>)
{
  *a1 = specialized Canvas.xpcMulticast.getter();
}

double sub_1D38F7550@<D0>(uint64_t a1@<X8>)
{
  Canvas.visibleBoundsOverride.getter(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_1D38F75C8@<X0>(_BYTE *a1@<X8>)
{
  result = Canvas.isRulerActive.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1D38F7698()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D38F76D0()
{
  v1 = *(*(v0 + 24) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D38F7750()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D38F7788()
{
  v1 = type metadata accessor for CapsuleUndoAction();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = v4 + *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);
  if (*(v0 + ((v5 + 7) & 0xFFFFFFFFFFFFFFF8)))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, ((v5 + 39) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_1D38F7858()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D38F7898()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D38F78D0()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D38F7908()
{

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

uint64_t sub_1D38F7954()
{
  v1 = type metadata accessor for CRStableAsset();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 32, v3 | 7);
}

uint64_t sub_1D38F7A34()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1D38F7A7C()
{
  v1 = *(type metadata accessor for CRAssetOrData(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 88) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();

  v5 = v0 + v3;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined consume of Data._Representation(*v5, *(v5 + 8));
    outlined consume of Data._Representation(*(v5 + 16), *(v5 + 24));
  }

  else
  {
    v6 = type metadata accessor for CRAsset();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  return MEMORY[0x1EEE6BDD0](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_1D38F7BBC()
{
  v1 = type metadata accessor for Capsule();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x1EEE6BDD0](v0, v9 + v10, v11 | 7);
}

uint64_t sub_1D38F7D18()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D38F7D50()
{
  MEMORY[0x1DA6D07B0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D38F7D88()
{

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1D38F7DC0()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D38F7DF8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit12LoupeElementVGMd, _s9Coherence7CapsuleVy8PaperKit12LoupeElementVGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x1EEE6BDD0](v0, v11 + 8, v10 | 7);
}

uint64_t sub_1D38F7F9C()
{
  v17 = type metadata accessor for UUID();
  v1 = *(v17 - 8);
  v2 = *(v1 + 80);
  v14 = (v2 + 56) & ~v2;
  v15 = (*(v1 + 64) + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = type metadata accessor for Capsule();
  v3 = *(v16 - 8);
  v4 = *(v3 + 80);
  v5 = (((v15 + 47) & 0xFFFFFFFFFFFFFFF8) + v4 + 8) & ~v4;
  v6 = (((*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo7UIImageCs5Error_pGMd, &_sScCySo7UIImageCs5Error_pGMR);
  v7 = *(v13 - 8);
  v8 = *(v7 + 80);
  v9 = (v8 + v6 + 8) & ~v8;
  v12 = *(v7 + 64);
  v10 = v2 | v8 | v4;
  swift_unknownObjectRelease();
  (*(v1 + 8))(v0 + v14, v17);
  __swift_destroy_boxed_opaque_existential_0((v0 + v15));

  (*(v3 + 8))(v0 + v5, v16);

  (*(v7 + 8))(v0 + v9, v13);

  return MEMORY[0x1EEE6BDD0](v0, v9 + v12, v10 | 7);
}

uint64_t sub_1D38F81F0()
{
  v1 = type metadata accessor for Capsule();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 88) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo7UIImageCs5Error_pGMd, &_sScCySo7UIImageCs5Error_pGMR);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 8) & ~v8;
  v12 = *(v7 + 64);
  v10 = v3 | v8;
  __swift_destroy_boxed_opaque_existential_0((v0 + 40));

  (*(v2 + 8))(v0 + v4, v1);

  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x1EEE6BDD0](v0, v9 + v12, v10 | 7);
}

uint64_t sub_1D38F838C()
{
  v1 = type metadata accessor for Capsule();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 104) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo7UIImageCs5Error_pGMd, &_sScCySo7UIImageCs5Error_pGMR);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 8) & ~v8;
  v12 = *(v7 + 64);
  v10 = v3 | v8;
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));

  (*(v2 + 8))(v0 + v4, v1);

  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x1EEE6BDD0](v0, v9 + v12, v10 | 7);
}

uint64_t sub_1D38F8548()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D38F85AC()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D38F8600()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D38F8638()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D38F8680()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D38F86B8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd, &_s9Coherence7CapsuleVy8PaperKit0C0VGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

uint64_t sub_1D38F87A0()
{
  v1 = type metadata accessor for PKDrawing();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D38F8874()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void sub_1D38F88AC(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  *a3 = (*(*(*(a1 + a2 - 8) + 8) + 8))(*(a1 + a2 - 40));
  *(a3 + 8) = v4;
  *(a3 + 16) = v5;
  *(a3 + 24) = v6;
}

__n128 sub_1D38F895C(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 32);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 32) = v3;
  *a2 = result;
  return result;
}

uint64_t sub_1D38F8A14()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ImageVGMd, &_s9Coherence7CapsuleVy8PaperKit5ImageVGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1D38F8B10()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D38F8B64()
{

  return MEMORY[0x1EEE6BDD0](v0, 49, 7);
}

uint64_t sub_1D38F8BCC()
{
  v1 = type metadata accessor for CapsuleUndoAction();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = v4 + *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);
  if (*(v0 + ((v5 + 7) & 0xFFFFFFFFFFFFFFF8)))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, ((v5 + 39) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_1D38F8D30()
{
  v1 = (type metadata accessor for Image(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*v1 + 64);
  swift_unknownObjectRelease();

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v3, v5);
  v6(v0 + v3 + v1[7], v5);
  v7 = v1[8];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMR);
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);
  v9 = v1[9];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMR);
  (*(*(v10 - 8) + 8))(v0 + v3 + v9, v10);
  v11 = v1[10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit11ImageFilterOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit11ImageFilterOSgGMR);
  (*(*(v12 - 8) + 8))(v0 + v3 + v11, v12);
  v13 = v1[11];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13CRAssetOrDataOSgGMd, &_s9Coherence10CRRegisterVy8PaperKit13CRAssetOrDataOSgGMR);
  (*(*(v14 - 8) + 8))(v0 + v3 + v13, v14);
  v15 = v1[12];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGMd, &_s9Coherence10CRRegisterVySSSgGMR);
  v17 = *(*(v16 - 8) + 8);
  v17(v0 + v3 + v15, v16);
  v18 = v1[13];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DataVSgGMd, &_s9Coherence10CRRegisterVy10Foundation4DataVSgGMR);
  (*(*(v19 - 8) + 8))(v0 + v3 + v18, v19);
  v20 = v1[14];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMR);
  (*(*(v21 - 8) + 8))(v0 + v3 + v20, v21);
  v22 = v1[15];
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMR);
  (*(*(v23 - 8) + 8))(v0 + v3 + v22, v23);
  v24 = v1[16];
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd, &_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMR);
  (*(*(v25 - 8) + 8))(v0 + v3 + v24, v25);
  v26 = v1[17];
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13ImageMetadataVGMd, &_s9Coherence10CRRegisterVy8PaperKit13ImageMetadataVGMR);
  (*(*(v27 - 8) + 8))(v0 + v3 + v26, v27);
  v17(v0 + v3 + v1[18], v16);
  v28 = v1[19];
  v29 = type metadata accessor for UnknownProperties();
  (*(*(v29 - 8) + 8))(v0 + v3 + v28, v29);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D38F9208()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D38F93DC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D38F943C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = type metadata accessor for UnknownValueProperties();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1D38F94F4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = type metadata accessor for UnknownValueProperties();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D38F9598()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D38F95D0()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D38F9608()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D38F9648()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D38F9680(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRKeyPath();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D38F96EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRKeyPath();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

__n128 sub_1D38F9770(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_1D38F978C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D38F97C4()
{
  MEMORY[0x1DA6D07B0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D38F98A8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySay8PaperKit17SearchQueryResultVGs5NeverOGMd, &_sScCySay8PaperKit17SearchQueryResultVGs5NeverOGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D38F9978()
{
  MEMORY[0x1DA6D07B0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D38F99B4()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D38F9A1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8BindableVy8PaperKit13MiniMenuStateCGMd, &_s7SwiftUI8BindableVy8PaperKit13MiniMenuStateCGMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1D38F9AE4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8BindableVy8PaperKit13MiniMenuStateCGMd, &_s7SwiftUI8BindableVy8PaperKit13MiniMenuStateCGMR);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D38F9BB8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAeAE9menuOrderyQrAA04MenuJ0VFQOyAA0K0VyAeAE05labelG0yQrqd__AA05LabelG0Rd__lFQOyAA0M0VyAA4TextVACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA023AccessibilityAttachmentS0VGAA14_PaddingLayoutVGAA01_d9ShapeKindS0VyAA6CircleVGGG_AA08IconOnlymG0VQo_AA05TupleE0VyAA0H0VyAPyArTGG_A21_tGG_Qo__8PaperKit04MinihG0VQo_AA06_FrameX0VGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAeAE9menuOrderyQrAA04MenuJ0VFQOyAA0K0VyAeAE05labelG0yQrqd__AA05LabelG0Rd__lFQOyAA0M0VyAA4TextVACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA023AccessibilityAttachmentS0VGAA14_PaddingLayoutVGAA01_d9ShapeKindS0VyAA6CircleVGGG_AA08IconOnlymG0VQo_AA05TupleE0VyAA0H0VyAPyArTGG_A21_tGG_Qo__8PaperKit04MinihG0VQo_AA06_FrameX0VGMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_1D38F9C90(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return CropResizeView.HUDState.hudString.setter(v1, v2);
}

uint64_t sub_1D38F9D18()
{
  MEMORY[0x1DA6D07B0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D38F9D74()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D38F9DC4()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D38F9DFC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1D38F9E64()
{
  MEMORY[0x1DA6D07B0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D38F9E9C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySay8PaperKit17DrawingFindResultCGs5NeverOGMd, &_sScCySay8PaperKit17DrawingFindResultCGs5NeverOGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = type metadata accessor for PKDrawing();
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = (v6 + v9 + 8) & ~v9;
  v13 = *(v8 + 64);
  v11 = v3 | v9;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v8 + 8))(v0 + v10, v7);

  return MEMORY[0x1EEE6BDD0](v0, v10 + v13, v11 | 7);
}

uint64_t sub_1D38FA030()
{

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1D38FA090()
{

  return MEMORY[0x1EEE6BDD0](v0, 106, 7);
}

uint64_t sub_1D38FA0D8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAA5ImageVAA16_FlexFrameLayoutVGAA24_BackgroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVy8PaperKit13RoundedCornerVGGGMd, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAA5ImageVAA16_FlexFrameLayoutVGAA24_BackgroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVy8PaperKit13RoundedCornerVGGGMR);
  type metadata accessor for PlainButtonStyle();
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Button<ModifiedContent<ModifiedContent<ModifiedContent<Image, _FlexFrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedCorner>>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAA5ImageVAA16_FlexFrameLayoutVGAA24_BackgroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVy8PaperKit13RoundedCornerVGGGMd, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAA5ImageVAA16_FlexFrameLayoutVGAA24_BackgroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVy8PaperKit13RoundedCornerVGGGMR, MEMORY[0x1E697D680]);
  lazy protocol witness table accessor for type PlainButtonStyle and conformance PlainButtonStyle();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1D38FA190@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC8PaperKit24MarkupEditViewController_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1D38FA1F0()
{
  MEMORY[0x1DA6D07B0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D38FA228()
{

  return MEMORY[0x1EEE6BDD0](v0, 160, 7);
}

uint64_t sub_1D38FA278()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D38FA2C0()
{

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1D38FA310()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D38FA348()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 152, 7);
}

uint64_t sub_1D38FA3B4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D38FA3F4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D38FA494(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRKeyPath();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D38FA500(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRKeyPath();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

__n128 sub_1D38FA584(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

__n128 sub_1D38FA654(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_1D38FA6A4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D38FA6F8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D38FA740()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D38FA790()
{
  v1 = type metadata accessor for FBKSEvaluation.Action();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1D38FA870()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D38FA8B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D38FA974(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D38FAA2C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

__n128 sub_1D38FAAF4(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

void *sub_1D38FAB10@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  result = (*(*(a1 + a2 - 8) + 88))(&v5, *(a1 + a2 - 24));
  *a3 = v5;
  return result;
}

uint64_t sub_1D38FAB6C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 24);
  v5 = *(a3 + a4 - 8);
  v7 = *a1;
  return (*(v5 + 96))(&v7, v4);
}

double sub_1D38FABD0@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, _OWORD *a3@<X8>)
{
  CanvasElement.coordinateSpace.getter(*(a1 + a2 - 24), *(a1 + a2 - 8), v6);
  v4 = v6[1];
  *a3 = v6[0];
  a3[1] = v4;
  result = *&v7;
  a3[2] = v7;
  return result;
}

void sub_1D38FAC20(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 24);
  v5 = *(a3 + a4 - 8);
  v6 = a1[1];
  v7[0] = *a1;
  v7[1] = v6;
  v7[2] = a1[2];
  CanvasElement.coordinateSpace.setter(v7, v4, v5);
}

uint64_t sub_1D38FAC88()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1D38FACE0()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1D38FAD50()
{

  return MEMORY[0x1EEE6BDD0](v0, 65, 7);
}

uint64_t sub_1D38FADA0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA4ViewPAAE19allowsSecureDrawingQryFQOyAA15ModifiedContentVy8PaperKit013OpacitySliderD0VAA12_FrameLayoutVG_Qo_GMd, &_s7SwiftUI6VStackVyAA4ViewPAAE19allowsSecureDrawingQryFQOyAA15ModifiedContentVy8PaperKit013OpacitySliderD0VAA12_FrameLayoutVG_Qo_GMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void _s8PaperKit11TextBoxViewC28keyboardWillShowNotification33_C8A78019CA71D0F9D8BFC7CF31EEDAE3LLyySo14NSNotificationCFTo_0(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  TextBoxView.keyboardWillHideNotification(_:)(v4);
}

__n128 sub_1D38FAF38(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

void *sub_1D38FAF4C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  result = (*(*(a1 + a2 - 8) + 40))(&v5, *(a1 + a2 - 24));
  *a3 = v5;
  return result;
}

uint64_t sub_1D38FAFA8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 24);
  v5 = *(a3 + a4 - 8);
  v7 = *a1;
  return (*(v5 + 48))(&v7, v4);
}

void *sub_1D38FB00C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  result = (*(*(a1 + a2 - 8) + 88))(&v5, *(a1 + a2 - 24));
  *a3 = v5;
  return result;
}

uint64_t sub_1D38FB068(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 24);
  v5 = *(a3 + a4 - 8);
  v7 = *a1;
  return (*(v5 + 96))(&v7, v4);
}

uint64_t sub_1D38FB174()
{

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1D38FB1AC()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D38FB224()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D38FB338()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1D38FB398()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1D38FB3D4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D38FB40C()
{

  return MEMORY[0x1EEE6BDD0](v0, 144, 7);
}

uint64_t sub_1D38FB444()
{

  return MEMORY[0x1EEE6BDD0](v0, 137, 7);
}

uint64_t sub_1D38FB47C()
{

  return MEMORY[0x1EEE6BDD0](v0, 160, 7);
}

void sub_1D38FB4D8(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  *a3 = (*(*(*(a1 + a2 - 8) + 8) + 8))(*(a1 + a2 - 24));
  *(a3 + 8) = v4;
  *(a3 + 16) = v5;
  *(a3 + 24) = v6;
}

__n128 sub_1D38FB588(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_1D38FB624(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = type metadata accessor for Color(0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1D38FB69C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = type metadata accessor for Color(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1D38FB71C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8BindableVy8PaperKit13MiniMenuStateCGMd, &_s7SwiftUI8BindableVy8PaperKit13MiniMenuStateCGMR);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D38FB794(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8BindableVy8PaperKit13MiniMenuStateCGMd, &_s7SwiftUI8BindableVy8PaperKit13MiniMenuStateCGMR);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1D38FB8A8()
{
  MEMORY[0x1DA6D07B0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void sub_1D38FB8F0(_BYTE *a1@<X8>)
{
  v2 = off_1F4F629B8[0];
  type metadata accessor for Paper(0);
  v2();
  *a1 = v3 & 1;
}

void sub_1D38FB98C(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  *a3 = (*(*(a1 + a2 - 8) + 16))(*(a1 + a2 - 24));
  *(a3 + 8) = v4;
  *(a3 + 16) = v5;
  *(a3 + 24) = v6;
}

__n128 sub_1D38FBA38(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_1D38FBA84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRKeyPath();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D38FBAF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRKeyPath();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

__n128 sub_1D38FBB74(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_1D38FBB88()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D38FBBDC()
{
  MEMORY[0x1DA6D07B0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D38FBC20(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA22UserInterfaceSizeClassOSgGMd, &_s7SwiftUI11EnvironmentVyAA22UserInterfaceSizeClassOSgGMR);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D38FBC98(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA22UserInterfaceSizeClassOSgGMd, &_s7SwiftUI11EnvironmentVyAA22UserInterfaceSizeClassOSgGMR);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1D38FBD14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy8PaperKit9InspectedVyAD5ColorVSgGGMd, &_s7SwiftUI7BindingVy8PaperKit9InspectedVyAD5ColorVSgGGMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1D38FBDE4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy8PaperKit9InspectedVyAD5ColorVSgGGMd, &_s7SwiftUI7BindingVy8PaperKit9InspectedVyAD5ColorVSgGGMR);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D38FBEB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA0C6ValuesVGMd, &_s7SwiftUI11EnvironmentVyAA0C6ValuesVGMR);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA22UserInterfaceSizeClassOSgGMd, &_s7SwiftUI11EnvironmentVyAA22UserInterfaceSizeClassOSgGMR);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1D38FBFEC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA0C6ValuesVGMd, &_s7SwiftUI11EnvironmentVyAA0C6ValuesVGMR);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA22UserInterfaceSizeClassOSgGMd, &_s7SwiftUI11EnvironmentVyAA22UserInterfaceSizeClassOSgGMR);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1D38FC128(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA7BindingVyAA16PresentationModeVGGMd, &_s7SwiftUI11EnvironmentVyAA7BindingVyAA16PresentationModeVGGMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1D38FC1F0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA7BindingVyAA16PresentationModeVGGMd, &_s7SwiftUI11EnvironmentVyAA7BindingVyAA16PresentationModeVGGMR);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D38FC2B4@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1D38FC30C()
{
  v1 = type metadata accessor for MiniColorSwatch(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = (v2 + 16) & ~v2;
  outlined consume of Environment<MiniMenuController<MiniMenuPalette>?>.Content(*(v0 + v4), *(v0 + v4 + 8));
  v5 = v0 + v4 + *(v1 + 20);

  v6 = (v5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy8PaperKit9InspectedVyAD5ColorVSgGGMd, &_s7SwiftUI7BindingVy8PaperKit9InspectedVyAD5ColorVSgGGMR) + 32));
  v7 = type metadata accessor for Color(0);
  if (!(*(*(v7 - 8) + 48))(v6, 1, v7))
  {

    v8 = *(v7 + 20);
    v9 = type metadata accessor for UnknownValueProperties();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v6 + v8, 1, v9))
    {
      (*(v10 + 8))(v6 + v8, v9);
    }
  }

  return MEMORY[0x1EEE6BDD0](v0, v4 + v3, v2 | 7);
}

uint64_t sub_1D38FC4E4()
{
  v1 = type metadata accessor for MultiColorSwatchButton(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = (v2 + 16) & ~v2;
  v5 = v0 + v4;
  outlined consume of Environment<MiniMenuController<MiniMenuPalette>?>.Content(*(v0 + v4), *(v0 + v4 + 8));

  v6 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA0C6ValuesV_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA0C6ValuesV_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for EnvironmentValues();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  v8 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = type metadata accessor for UserInterfaceSizeClass();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v5 + v8, 1, v9))
    {
      (*(v10 + 8))(v5 + v8, v9);
    }
  }

  else
  {
  }

  if (*(v5 + v1[8]))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v4 + v3, v2 | 7);
}

uint64_t sub_1D38FC724(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA11ColorSchemeOGMd, &_s7SwiftUI11EnvironmentVyAA11ColorSchemeOGMR);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy8PaperKit9InspectedVyAD5ColorVSgGGMd, &_s7SwiftUI7BindingVy8PaperKit9InspectedVyAD5ColorVSgGGMR);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[7]);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  v14 = v13 - 1;
  if (v14 < 0)
  {
    v14 = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1D38FC850(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA11ColorSchemeOGMd, &_s7SwiftUI11EnvironmentVyAA11ColorSchemeOGMR);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy8PaperKit9InspectedVyAD5ColorVSgGGMd, &_s7SwiftUI7BindingVy8PaperKit9InspectedVyAD5ColorVSgGGMR);
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[7]) = a2;
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[6];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

uint64_t sub_1D38FC9B0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

uint64_t sub_1D38FCA08()
{
  MEMORY[0x1DA6D07B0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D38FCA40()
{

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

uint64_t sub_1D38FCABC@<X0>(_BYTE *a1@<X8>)
{
  result = ImageCanvasElementViewController.isInCanvasSelectionMode.getter();
  *a1 = result & 1;
  return result;
}

__n128 sub_1D38FCB04(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_1D38FCB4C()
{
  MEMORY[0x1DA6D07B0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D38FCB84()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ImageVGMd, &_s9Coherence7CapsuleVy8PaperKit5ImageVGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1D38FCC70()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D38FCCB8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo10CGImageRefaSg_So6CGRectVts5Error_pGMd, &_sScCySo10CGImageRefaSg_So6CGRectVts5Error_pGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

void _s8PaperKit18MiniMenuControllerC019popoverPresentationE17DidDismissPopoveryySo09UIPopovergE0CFTo_0(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  specialized MiniMenuController.colorPickerViewControllerDidFinish(_:)();
}

uint64_t sub_1D38FCDBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1D38FCE78(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Date();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D38FCF30()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D38FCF70()
{
  v1 = *(type metadata accessor for LoupeRenderDebouncer.RenderState(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();
  v5 = type metadata accessor for Date();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D38FD06C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D38FD0A4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

__n128 sub_1D38FD0F8(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_1D38FD10C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D38FD154()
{
  v1 = type metadata accessor for CRAsset();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 81) & ~v3;
  v5 = (((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

uint64_t sub_1D38FD254(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRKeyPath();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D38FD2C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRKeyPath();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1D38FD330()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D38FD3B8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void *protocol witness for RawRepresentable.init(rawValue:) in conformance PDFPageID.CodingKeys@<X0>(void *result@<X0>, char *a2@<X8>)
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

uint64_t protocol witness for CodingKey.init(intValue:) in conformance PDFPageID.CodingKeys@<X0>(uint64_t result@<X0>, char *a2@<X8>)
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

uint64_t outlined consume of (@escaping @callee_guaranteed () -> ())?(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

CGPath *ppk_bezierPathWithRoundedRect(int a1, uint64_t a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, double a7, double a8, double a9, double a10)
{
  v10 = a2;
  Mutable = CGPathCreateMutable();
  if (a1)
  {
    _sanitizeRadiusForRect(a7, a3, a4, a5, a6);
    v40 = v21;
    _sanitizeRadiusForRect(a8, a3, a4, a5, a6);
    v42 = v22;
    _sanitizeRadiusForRect(a9, a3, a4, a5, a6);
    v44 = v23;
    _sanitizeRadiusForRect(a10, a3, a4, a5, a6);
    v25 = v24;
    v46.origin.x = a3;
    v46.origin.y = a4;
    v46.size.width = a5;
    v46.size.height = a6;
    MinX = CGRectGetMinX(v46);
    v47.origin.x = a3;
    v47.origin.y = a4;
    v47.size.width = a5;
    v47.size.height = a6;
    MinY = CGRectGetMinY(v47);
    CGPathMoveToPoint(Mutable, 0, v25 + MinX, MinY);
    _addLegacyRectangleQuarterThroughCorner(Mutable, 0, v10, a3, a4, a5, a6, v40);
    _addLegacyRectangleQuarterThroughCorner(Mutable, 1, v10, a3, a4, a5, a6, v42);
    _addLegacyRectangleQuarterThroughCorner(Mutable, 2, v10, a3, a4, a5, a6, v44);
    _addLegacyRectangleQuarterThroughCorner(Mutable, 3, v10, a3, a4, a5, a6, v25);
  }

  else
  {
    _sanitizeRadiusForRect(a7, a3, a4, a5, a6);
    v41 = v28;
    _sanitizeRadiusForRect(a8, a3, a4, a5, a6);
    v43 = v29;
    _sanitizeRadiusForRect(a9, a3, a4, a5, a6);
    v45 = v30;
    _sanitizeRadiusForRect(a10, a3, a4, a5, a6);
    v32 = v31;
    v48.origin.x = a3;
    v48.origin.y = a4;
    v48.size.width = a5;
    v48.size.height = a6;
    Width = CGRectGetWidth(v48);
    v34 = Width * 0.5;
    v35 = Width - v41 * 1.528665;
    if (v34 >= v35)
    {
      v35 = v34;
    }

    if (v35 >= v32 * 1.528665)
    {
      v36 = v32 * 1.528665;
    }

    else
    {
      v36 = v35;
    }

    v49.origin.x = a3;
    v49.origin.y = a4;
    v49.size.width = a5;
    v49.size.height = a6;
    v37 = CGRectGetMinX(v49);
    v50.origin.x = a3;
    v50.origin.y = a4;
    v50.size.width = a5;
    v50.size.height = a6;
    v38 = CGRectGetMinY(v50);
    CGPathMoveToPoint(Mutable, 0, v37 + v36, v38);
    _addContinuousRectangleQuarterThroughCorner(Mutable, 0, v10, a3, a4, a5, a6, v41, v32, v43);
    _addContinuousRectangleQuarterThroughCorner(Mutable, 1, v10, a3, a4, a5, a6, v43, v45, v41);
    _addContinuousRectangleQuarterThroughCorner(Mutable, 2, v10, a3, a4, a5, a6, v45, v43, v32);
    _addContinuousRectangleQuarterThroughCorner(Mutable, 3, v10, a3, a4, a5, a6, v32, v41, v45);
  }

  CGPathCloseSubpath(Mutable);
  return Mutable;
}

void _sanitizeRadiusForRect(double a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v9.origin.x = a2;
  v9.origin.y = a3;
  v9.size.width = a4;
  v9.size.height = a5;
  CGRectGetWidth(v9);
  v10.origin.x = a2;
  v10.origin.y = a3;
  v10.size.width = a4;
  v10.size.height = a5;
  CGRectGetHeight(v10);
}

double _cornerPointOnRect(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  if (a1 > 1)
  {
    if (a1 != 2)
    {
      MinX = CGRectGetMinX(*&a2);
      goto LABEL_9;
    }

    MaxX = CGRectGetMinX(*&a2);
  }

  else
  {
    if (!a1)
    {
      MinX = CGRectGetMaxX(*&a2);
LABEL_9:
      v11 = MinX;
      v14.origin.x = a2;
      v14.origin.y = a3;
      v14.size.width = a4;
      v14.size.height = a5;
      CGRectGetMinY(v14);
      return v11;
    }

    MaxX = CGRectGetMaxX(*&a2);
  }

  v11 = MaxX;
  v13.origin.x = a2;
  v13.origin.y = a3;
  v13.size.width = a4;
  v13.size.height = a5;
  CGRectGetMaxY(v13);
  return v11;
}

void _addContinuousRectangleQuarterThroughCorner(CGPath *a1, uint64_t a2, char a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, double a8, float64_t a9, float64_t a10)
{
  Width = CGRectGetWidth(*&a4);
  v83.origin.x = a4;
  v83.origin.y = a5;
  v83.size.width = a6;
  v83.size.height = a7;
  Height = CGRectGetHeight(v83);
  v19.f64[0] = a9;
  v19.f64[1] = a10;
  v20.f64[0] = Width;
  v20.f64[1] = Height;
  v21 = a8 * 1.528665;
  __asm { FMOV            V1.2D, #0.5 }

  v27 = vmulq_f64(v20, _Q1);
  v28 = vmlaq_f64(v20, vdupq_n_s64(0xBFF875696E58A32FLL), v19);
  v29 = vbslq_s8(vcgtq_f64(v28, v27), v28, v27);
  v30 = vdupq_lane_s64(COERCE__INT64(a8 * 1.528665), 0);
  v31 = vbslq_s8(vcgtq_f64(v30, v29), v29, v30);
  v74 = a8;
  v32 = a8 * 1.528665 - a8;
  v33 = 0.0;
  v71 = 0.0;
  if (v32 != 0.0)
  {
    v71 = 1.0 - (v21 - *v31.i64) / v32;
    v33 = 1.0 - (v21 - *&v31.i64[1]) / v32;
  }

  v79 = *v31.i64;
  v34 = _cornerPointOnRect(a2, a4, a5, a6, a7);
  v36 = v35;
  v37 = _insetCorner(a2, v34, v35, v79);
  v39 = a2 & 0xFFFFFFFFFFFFFFFDLL;
  v76 = v36;
  v73 = v38;
  if ((a2 & 0xFFFFFFFFFFFFFFFDLL) != 0)
  {
    v36 = v38;
  }

  v80 = v34;
  if ((a2 & 0xFFFFFFFFFFFFFFFDLL) != 0)
  {
    v40 = v34;
  }

  else
  {
    v40 = v37;
  }

  v41 = v37;
  if (a3)
  {
    CGPathAddLineToPoint(a1, 0, v40, v36);
LABEL_19:
    v70 = v41;
    v43 = dbl_1D4056238[a2];
    if (v71 >= v33)
    {
      v44 = v33;
    }

    else
    {
      v44 = v71;
    }

    v68 = v33;
    v45 = 1.0 - v44;
    v46 = _insetCorner(a2, v80, v76, ((1.0 - v44) * 0.05 + 0.95) * v74);
    v48 = v47;
    v49 = v43 * 0.0174532925;
    v50 = (v43 + 50.0) * 0.0174532925;
    v51 = (v45 * 0.06875015 + 0.93124985) * v74;
    v52 = __sincos_stret(v49);
    v53 = v46 + v51 * v52.__cosval;
    v67 = v48 + v51 * v52.__sinval;
    v54 = __sincos_stret(v50);
    v55 = v48 + v51 * v54.__sinval;
    if (v39)
    {
      v56 = v71;
    }

    else
    {
      v56 = v68;
    }

    v69 = v56;
    if (v39)
    {
      v57 = v68;
    }

    else
    {
      v57 = v71;
    }

    v58 = v70;
    if (!v39)
    {
      v58 = v80;
    }

    v81 = v58;
    v59 = v73;
    if (v39)
    {
      v59 = v76;
    }

    v77 = v59;
    _addContinuationSegment(a1, a2, 1, v53, v67, v74, v57);
    v60 = __sincos_stret((v50 - v49) * 0.5);
    v61 = v51 * ((1.0 - v60.__cosval) * 4.0 / (v60.__sinval * 3.0));
    CGPathAddCurveToPoint(a1, 0, v53 - v61 * v52.__sinval, v67 + v61 * v52.__cosval, v46 + v51 * v54.__cosval + v61 * v54.__sinval, v55 - v61 * v54.__cosval, v46 + v51 * v54.__cosval, v55);

    _addContinuationSegment(a1, a2, 0, v81, v77, v74, v69);
    return;
  }

  CurrentPoint = CGPathGetCurrentPoint(a1);
  if (CurrentPoint.x != v40 && vabdd_f64(CurrentPoint.x, v40) >= 0.1 || CurrentPoint.y != v36 && vabdd_f64(CurrentPoint.y, v36) >= 0.1 || ((v62 = a4, v63 = a5, v64 = a6, v65 = a7, !v39) ? (v66 = CGRectGetWidth(*&v62)) : (v66 = CGRectGetHeight(*&v62)), v66 == 0.0 || fabs(v66) < 0.00999999978))
  {
    CGPathAddLineToPoint(a1, 0, v40, v36);
  }

  if (v80 != v41 && vabdd_f64(v80, v41) >= 0.1 || v76 != v73 && vabdd_f64(v76, v73) >= 0.1)
  {
    goto LABEL_19;
  }
}

double _insetCorner(uint64_t a1, double a2, double a3, double a4)
{
  v4 = a2 + a4;
  result = a2 - a4;
  if (a1 > 1)
  {
    return v4;
  }

  return result;
}

void _addContinuationSegment(const CGPath *a1, uint64_t a2, int a3, CGFloat a4, CGFloat a5, double a6, double a7)
{
  CurrentPoint = CGPathGetCurrentPoint(a1);
  v15 = dbl_1D4056258[a2];
  v16 = (a2 & 0xFFFFFFFFFFFFFFFDLL) != 0;
  v17 = 0.8;
  v18 = 0.0;
  if (v16 != a3)
  {
    v19 = 0.0;
  }

  else
  {
    v19 = 0.8;
  }

  if (v16 != a3)
  {
    v20 = 0.0;
  }

  else
  {
    v20 = 0.5;
  }

  if (v16 != a3)
  {
    v18 = 0.5;
  }

  else
  {
    v17 = 0.0;
  }

  if (a3)
  {
    y = a5;
  }

  else
  {
    y = CurrentPoint.y;
  }

  if (a3)
  {
    v22 = CurrentPoint.y;
  }

  else
  {
    v22 = a5;
  }

  v23 = y - v22;
  v24 = v22 + v23 * v19;
  v25 = v22 + v23 * v20;
  if (a3)
  {
    v26 = v24;
  }

  else
  {
    v26 = v25;
  }

  v42 = v26;
  if (a3)
  {
    x = a4;
  }

  else
  {
    x = CurrentPoint.x;
  }

  if (a3)
  {
    v28 = CurrentPoint.x;
  }

  else
  {
    v28 = a4;
  }

  v29 = x - v28;
  v30 = v28 + v29 * v17;
  v31 = v28 + v29 * v18;
  if (a3)
  {
    v32 = v30;
  }

  else
  {
    v32 = v31;
  }

  if (a3)
  {
    v24 = v25;
  }

  v40 = v24;
  v41 = v32;
  if (a3)
  {
    v30 = v31;
  }

  v39 = v30;
  if (!a3)
  {
    v15 = v15 + 50.0 + 20.0;
  }

  v33 = v15 * 0.0174532925;
  v34 = (v15 + 20.0) * 0.0174532925;
  v35 = __sincos_stret((v34 - v15 * 0.0174532925) * 0.5);
  v36 = (1.0 - v35.__cosval) * 4.0 / (v35.__sinval * 3.0) * a6;
  v37 = __sincos_stret(v33);
  v38 = __sincos_stret(v34);

  CGPathAddCurveToPoint(a1, 0, v39 * a7 + (CurrentPoint.x - v36 * v37.__sinval) * (1.0 - a7), v40 * a7 + (CurrentPoint.y + v36 * v37.__cosval) * (1.0 - a7), v41 * a7 + (a4 + v36 * v38.__sinval) * (1.0 - a7), v42 * a7 + (a5 - v36 * v38.__cosval) * (1.0 - a7), a4, a5);
}

void _addLegacyRectangleQuarterThroughCorner(CGPath *a1, uint64_t a2, char a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, double a8)
{
  v16 = _cornerPointOnRect(a2, a4, a5, a6, a7);
  v18 = v17;
  v37 = a8;
  v19 = _insetCorner(a2, v16, v17, a8);
  if ((a2 & 0xFFFFFFFFFFFFFFFDLL) != 0)
  {
    v21 = v16;
  }

  else
  {
    v21 = v19;
  }

  if ((a2 & 0xFFFFFFFFFFFFFFFDLL) != 0)
  {
    v22 = v20;
  }

  else
  {
    v22 = v18;
  }

  if ((a2 & 0xFFFFFFFFFFFFFFFDLL) != 0)
  {
    v16 = v19;
  }

  else
  {
    v18 = v20;
  }

  if (a3)
  {
    CGPathAddLineToPoint(a1, 0, v21, v22);
LABEL_21:
    CurrentPoint = CGPathGetCurrentPoint(a1);
    v25 = dbl_1D4056258[a2];
    v26 = v25 * 0.0174532925;
    v27 = (v25 + 90.0) * 0.0174532925;
    v28 = __sincos_stret((v27 - v25 * 0.0174532925) * 0.5);
    v30 = __sincos_stret(v26);
    v31 = __sincos_stret(v27);

    v29 = (1.0 - v28.__cosval) * 4.0 / (v28.__sinval * 3.0) * v37;
    CGPathAddCurveToPoint(a1, 0, CurrentPoint.x - v29 * v30.__sinval, CurrentPoint.y + v29 * v30.__cosval, v16 + v29 * v31.__sinval, v18 - v29 * v31.__cosval, v16, v18);
    return;
  }

  v23 = CGPathGetCurrentPoint(a1);
  if (v23.x != v21 && vabdd_f64(v23.x, v21) >= 0.1 || v23.y != v22 && vabdd_f64(v23.y, v22) >= 0.1 || ((v32 = a4, v33 = a5, v34 = a6, v35 = a7, (a2 & 0xFFFFFFFFFFFFFFFDLL) == 0) ? (Width = CGRectGetWidth(*&v32)) : (Width = CGRectGetHeight(*&v32)), Width == 0.0 || fabs(Width) < 0.00999999978))
  {
    CGPathAddLineToPoint(a1, 0, v21, v22);
  }

  if (v21 != v16 && vabdd_f64(v21, v16) >= 0.1 || v22 != v18 && vabdd_f64(v22, v18) >= 0.1)
  {
    goto LABEL_21;
  }
}

void generateRandomKey(void *__buf)
{
  do
  {
    arc4random_buf(__buf, 0x10uLL);
    if (*__buf)
    {
      v2 = 0;
    }

    else
    {
      v2 = __buf[1] == 0;
    }
  }

  while (v2 || (*__buf & __buf[1]) == -1);
}

void OUTLINED_FUNCTION_0(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);

  _os_log_impl(a1, v12, OS_LOG_TYPE_DEFAULT, a4, va, 0xCu);
}

BOOL OUTLINED_FUNCTION_3(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT);
}

id getMUImageReaderClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMUImageReaderClass_softClass;
  v7 = getMUImageReaderClass_softClass;
  if (!getMUImageReaderClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getMUImageReaderClass_block_invoke;
    v3[3] = &unk_1E845C110;
    v3[4] = &v4;
    __getMUImageReaderClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1D390080C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMUImageReaderClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!MarkupUILibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __MarkupUILibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E845C130;
    v6 = 0;
    MarkupUILibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (MarkupUILibraryCore_frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np("%s", v4[0]);
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("MUImageReader");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getMUImageReaderClass_block_invoke_cold_1();
  }

  getMUImageReaderClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __MarkupUILibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  MarkupUILibraryCore_frameworkLibrary = result;
  return result;
}

void sub_1D390181C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getMAImageCaptioningCopyCaptionWithSourceSymbolLoc_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!MediaAccessibilityLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __MediaAccessibilityLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E845C148;
    v7 = 0;
    MediaAccessibilityLibraryCore_frameworkLibrary = _sl_dlopen();
    v3 = v5[0];
    v2 = MediaAccessibilityLibraryCore_frameworkLibrary;
    if (MediaAccessibilityLibraryCore_frameworkLibrary)
    {
      if (!v5[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np("%s", v5[0]);
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = MediaAccessibilityLibraryCore_frameworkLibrary;
LABEL_5:
  result = dlsym(v2, "MAImageCaptioningCopyCaptionWithSource");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMAImageCaptioningCopyCaptionWithSourceSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __MediaAccessibilityLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  MediaAccessibilityLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_1D390360C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak(&a21);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D3903808(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_1D3903EC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location, id a21)
{
  objc_destroyWeak((v21 + 48));
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a21);
  _Unwind_Resume(a1);
}

void sub_1D3904F0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D3905178(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D3905E5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D3906654(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, ...)
{
  va_start(va, a40);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void PPKSetAccessibilityDescriptionIntoMetadata(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  err = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v4 = getMAImageCaptioningSetCaptionIntoMetadataSymbolLoc_ptr;
  v16 = getMAImageCaptioningSetCaptionIntoMetadataSymbolLoc_ptr;
  if (!getMAImageCaptioningSetCaptionIntoMetadataSymbolLoc_ptr)
  {
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v18 = __getMAImageCaptioningSetCaptionIntoMetadataSymbolLoc_block_invoke;
    v19 = &unk_1E845C110;
    v20 = &v13;
    __getMAImageCaptioningSetCaptionIntoMetadataSymbolLoc_block_invoke(&buf);
    v4 = v14[3];
  }

  _Block_object_dispose(&v13, 8);
  if (!v4)
  {
    +[PPKImageReader imageDescriptionFromSource:];
    __break(1u);
  }

  if ((v4(a1, v3, &err) & 1) == 0)
  {
    if (err)
    {
      v5 = CFErrorCopyDescription(err);
      CFRelease(err);
    }

    else
    {
      v5 = 0;
    }

    v6 = [(__CFString *)v5 length]== 0;
    v7 = +[PPKImageWriter log];
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      if (v8)
      {
        LOWORD(buf) = 0;
        v9 = "Error setting image description into metadata";
        v10 = v7;
        v11 = 2;
        goto LABEL_13;
      }
    }

    else if (v8)
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v5;
      v9 = "Error setting image description: %@";
      v10 = v7;
      v11 = 12;
LABEL_13:
      _os_log_impl(&dword_1D38C4000, v10, OS_LOG_TYPE_DEFAULT, v9, &buf, v11);
    }
  }
}

void sub_1D39079C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getMAImageCaptioningSetCaptionIntoMetadataSymbolLoc_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!MediaAccessibilityLibraryCore_frameworkLibrary_0)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __MediaAccessibilityLibraryCore_block_invoke_0;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E845C388;
    v7 = 0;
    MediaAccessibilityLibraryCore_frameworkLibrary_0 = _sl_dlopen();
    v3 = v5[0];
    v2 = MediaAccessibilityLibraryCore_frameworkLibrary_0;
    if (MediaAccessibilityLibraryCore_frameworkLibrary_0)
    {
      if (!v5[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np("%s", v5[0]);
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = MediaAccessibilityLibraryCore_frameworkLibrary_0;
LABEL_5:
  result = dlsym(v2, "MAImageCaptioningSetCaptionIntoMetadata");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMAImageCaptioningSetCaptionIntoMetadataSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __MediaAccessibilityLibraryCore_block_invoke_0(uint64_t a1)
{
  result = _sl_dlopen();
  MediaAccessibilityLibraryCore_frameworkLibrary_0 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_0_0(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  return [a1 writeUsingBaseImage:a2 annotationImage:a3 sdrAnnotationImage:a4 asImageOfType:a5 toConsumer:a6 annotationMetadata:a7 modifiedMetadataHandler:? encryptPrivateMetadata:? error:?];
}

id getPXFileBackedUIMediaProviderClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPXFileBackedUIMediaProviderClass_softClass;
  v7 = getPXFileBackedUIMediaProviderClass_softClass;
  if (!getPXFileBackedUIMediaProviderClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getPXFileBackedUIMediaProviderClass_block_invoke;
    v3[3] = &unk_1E845C110;
    v3[4] = &v4;
    __getPXFileBackedUIMediaProviderClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1D3908F2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getPXFileBackedAssetClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPXFileBackedAssetClass_softClass;
  v7 = getPXFileBackedAssetClass_softClass;
  if (!getPXFileBackedAssetClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getPXFileBackedAssetClass_block_invoke;
    v3[3] = &unk_1E845C110;
    v3[4] = &v4;
    __getPXFileBackedAssetClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1D390900C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D3909E44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D390A828(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}