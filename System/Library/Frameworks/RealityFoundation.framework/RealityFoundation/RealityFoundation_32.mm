float protocol witness for static Component.__store(attribute:to:offset:) in conformance __AmbientLightComponent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  outlined destroy of __AmbientLightComponent(a2);
  outlined init with copy of __REAssetService(a1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  result = v8;
  *a2 = v7;
  *(a2 + 8) = v8;
  return result;
}

void protocol witness for static Component.__free(to:offset:) in conformance __AmbientLightComponent(uint64_t a1)
{
  outlined destroy of __AmbientLightComponent(a1);

  JUMPOUT(0x1C6902A30);
}

id protocol witness for static Component.__load(from:offset:) in conformance __AmbientLightComponent@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  *(a4 + 24) = a2;
  *(a4 + 32) = a3;
  v4 = *a1;
  v5 = *(a1 + 8);
  *a4 = *a1;
  *(a4 + 8) = v5;
  return v4;
}

void protocol witness for static Component.__free(to:offset:) in conformance AudioLibraryComponent(uint64_t a1)
{
  outlined destroy of AudioLibraryComponent(a1);

  JUMPOUT(0x1C6902A30);
}

double protocol witness for static Component.__load(from:) in conformance ImageBasedLightComponent@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 20);
  v6 = *(a1 + 24);
  v7 = *(a1 + 28);
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = v4;
  *(a2 + 20) = v5;
  *(a2 + 24) = v6;
  *(a2 + 28) = v7;
  return outlined copy of ImageBasedLightComponent.Source(v3, v2);
}

float protocol witness for static Component.__store(attribute:to:offset:deinitialize:) in conformance ImageBasedLightComponent(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  if (a4)
  {
    v6 = a1;
    outlined destroy of ImageBasedLightComponent(a2);
    a1 = v6;
  }

  outlined init with copy of __REAssetService(a1, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  result = v11;
  *a2 = v8;
  *(a2 + 16) = v9;
  *(a2 + 20) = v10;
  *(a2 + 24) = v11;
  *(a2 + 28) = v12;
  return result;
}

float protocol witness for static Component.__store(attribute:to:offset:) in conformance ImageBasedLightComponent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  outlined destroy of ImageBasedLightComponent(a2);
  outlined init with copy of __REAssetService(a1, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  result = v10;
  *a2 = v7;
  *(a2 + 16) = v8;
  *(a2 + 20) = v9;
  *(a2 + 24) = v10;
  *(a2 + 28) = v11;
  return result;
}

void protocol witness for static Component.__free(to:offset:) in conformance ImageBasedLightComponent(uint64_t a1)
{
  outlined destroy of ImageBasedLightComponent(a1);

  JUMPOUT(0x1C6902A30);
}

double protocol witness for static Component.__load(from:offset:) in conformance ImageBasedLightComponent@<D0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  a4[3] = a2;
  a4[4] = a3;
  v6 = swift_allocObject();
  *a4 = v6;
  v8 = *a1;
  v7 = *(a1 + 8);
  v9 = *(a1 + 16);
  v10 = *(a1 + 20);
  v11 = *(a1 + 24);
  v12 = *(a1 + 28);
  *(v6 + 16) = *a1;
  *(v6 + 24) = v7;
  *(v6 + 32) = v9;
  *(v6 + 36) = v10;
  *(v6 + 40) = v11;
  *(v6 + 44) = v12;

  return outlined copy of ImageBasedLightComponent.Source(v8, v7);
}

void protocol witness for static Component.__free(to:offset:) in conformance ImageBasedLightReceiverComponent(uint64_t a1)
{
  outlined destroy of ImageBasedLightReceiverComponent(a1);

  JUMPOUT(0x1C6902A30);
}

double protocol witness for static Component.__load(from:) in conformance __ImageBasedLightComponent@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  *a2 = *a1;
  *(a2 + 8) = v2;

  return result;
}

float protocol witness for static Component.__store(attribute:to:offset:deinitialize:) in conformance __ImageBasedLightComponent(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  if (a4)
  {
    v6 = a1;
    outlined destroy of __ImageBasedLightComponent(a2);
    a1 = v6;
  }

  outlined init with copy of __REAssetService(a1, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  result = v9;
  *a2 = v8;
  *(a2 + 8) = v9;
  return result;
}

float protocol witness for static Component.__store(attribute:to:offset:) in conformance __ImageBasedLightComponent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  outlined destroy of __ImageBasedLightComponent(a2);
  outlined init with copy of __REAssetService(a1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  result = v8;
  *a2 = v7;
  *(a2 + 8) = v8;
  return result;
}

void protocol witness for static Component.__free(to:offset:) in conformance __ImageBasedLightComponent(uint64_t a1)
{
  outlined destroy of __ImageBasedLightComponent(a1);

  JUMPOUT(0x1C6902A30);
}

double protocol witness for static Component.__load(from:offset:) in conformance __ImageBasedLightComponent@<D0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  *(a4 + 24) = a2;
  *(a4 + 32) = a3;
  v4 = *(a1 + 8);
  *a4 = *a1;
  *(a4 + 8) = v4;

  return result;
}

uint64_t protocol witness for static Component.__load(from:) in conformance SceneUnderstandingComponent@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 8);
  *a2 = *result;
  *(a2 + 8) = v2;
  return result;
}

uint64_t protocol witness for static Component.__store(attribute:to:offset:deinitialize:) in conformance SceneUnderstandingComponent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  outlined init with copy of __REAssetService(a1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  result = swift_dynamicCast();
  *a2 = v7;
  *(a2 + 8) = v8;
  return result;
}

uint64_t protocol witness for static Component.__store(attribute:to:offset:) in conformance SceneUnderstandingComponent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  outlined init with copy of __REAssetService(a1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  result = swift_dynamicCast();
  *a2 = v6;
  *(a2 + 8) = v7;
  return result;
}

uint64_t protocol witness for static Component.__load(from:offset:) in conformance SceneUnderstandingComponent@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  *(a4 + 24) = a2;
  *(a4 + 32) = a3;
  v4 = *(result + 8);
  *a4 = *result;
  *(a4 + 8) = v4;
  return result;
}

uint64_t protocol witness for static Component.__load(from:) in conformance PhysicsBodyComponent@<X0>(_OWORD *a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = a1[7];
  v3 = a1[9];
  v25 = a1[8];
  v26[0] = v3;
  *(v26 + 12) = *(a1 + 156);
  v4 = a1[3];
  v5 = a1[5];
  v21 = a1[4];
  v6 = v21;
  v22 = v5;
  v7 = a1[5];
  v8 = a1[7];
  v23 = a1[6];
  v9 = v23;
  v24 = v8;
  v10 = a1[1];
  v18[0] = *a1;
  v18[1] = v10;
  v11 = a1[3];
  v13 = *a1;
  v12 = a1[1];
  v19 = a1[2];
  v14 = v19;
  v20 = v11;
  v15 = a1[9];
  a2[8] = v25;
  a2[9] = v15;
  *(a2 + 156) = *(a1 + 156);
  a2[4] = v6;
  a2[5] = v7;
  a2[6] = v9;
  a2[7] = v2;
  *a2 = v13;
  a2[1] = v12;
  a2[2] = v14;
  a2[3] = v4;
  return outlined init with copy of PhysicsBodyComponent(v18, &v17);
}

__n128 protocol witness for static Component.__store(attribute:to:offset:deinitialize:) in conformance PhysicsBodyComponent(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  if (a4)
  {
    v6 = a1;
    outlined destroy of PhysicsBodyComponent(a2);
    a1 = v6;
  }

  outlined init with copy of __REAssetService(a1, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  v7 = v22[0];
  *(a2 + 128) = v21;
  *(a2 + 144) = v7;
  *(a2 + 156) = *(v22 + 12);
  v8 = v18;
  *(a2 + 64) = v17;
  *(a2 + 80) = v8;
  v9 = v20;
  *(a2 + 96) = v19;
  *(a2 + 112) = v9;
  v10 = v14;
  *a2 = v13;
  *(a2 + 16) = v10;
  result = v16;
  *(a2 + 32) = v15;
  *(a2 + 48) = result;
  return result;
}

__n128 protocol witness for static Component.__store(attribute:to:offset:) in conformance PhysicsBodyComponent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  outlined destroy of PhysicsBodyComponent(a2);
  outlined init with copy of __REAssetService(a1, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  v6 = v21[0];
  *(a2 + 128) = v20;
  *(a2 + 144) = v6;
  *(a2 + 156) = *(v21 + 12);
  v7 = v17;
  *(a2 + 64) = v16;
  *(a2 + 80) = v7;
  v8 = v19;
  *(a2 + 96) = v18;
  *(a2 + 112) = v8;
  v9 = v13;
  *a2 = v12;
  *(a2 + 16) = v9;
  result = v15;
  *(a2 + 32) = v14;
  *(a2 + 48) = result;
  return result;
}

void protocol witness for static Component.__free(to:offset:) in conformance PhysicsBodyComponent(uint64_t a1)
{
  outlined destroy of PhysicsBodyComponent(a1);

  JUMPOUT(0x1C6902A30);
}

uint64_t protocol witness for static Component.__load(from:offset:) in conformance PhysicsBodyComponent@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  a4[3] = a2;
  a4[4] = a3;
  v6 = swift_allocObject();
  v7 = a1[7];
  v8 = a1[9];
  v30 = a1[8];
  v31[0] = v8;
  *(v31 + 12) = *(a1 + 156);
  v9 = a1[3];
  v10 = a1[5];
  v26 = a1[4];
  v11 = v26;
  v27 = v10;
  v12 = a1[5];
  v13 = a1[7];
  v28 = a1[6];
  v14 = v28;
  v29 = v13;
  v15 = a1[1];
  v23[0] = *a1;
  v23[1] = v15;
  v16 = a1[3];
  v18 = *a1;
  v17 = a1[1];
  v24 = a1[2];
  v19 = v24;
  v25 = v16;
  v20 = a1[9];
  v6[9] = v30;
  v6[10] = v20;
  *(v6 + 172) = *(a1 + 156);
  v6[5] = v11;
  v6[6] = v12;
  v6[7] = v14;
  v6[8] = v7;
  v6[1] = v18;
  v6[2] = v17;
  *a4 = v6;
  v6[3] = v19;
  v6[4] = v9;
  return outlined init with copy of PhysicsBodyComponent(v23, &v22);
}

void protocol witness for static Component.__free(to:offset:) in conformance PreviewSupportComponent(uint64_t a1)
{
  outlined destroy of PreviewSupportComponent(a1);

  JUMPOUT(0x1C6902A30);
}

void static Component.__fromCore(_:)()
{
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

{
  static Component.__fromCore(_:)();
}

void static Component.__coreComponentType.getter(_DWORD *a1@<X8>)
{
  *a1 = 36;
}

{
  static Component.__coreComponentType.getter(a1);
}

uint64_t protocol witness for static Component.__store(attribute:to:offset:deinitialize:) in conformance SelectableSceneContentIdentifierComponent(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  outlined init with copy of __REAssetService(a1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  result = swift_dynamicCast();
  *a2 = v7;
  return result;
}

uint64_t protocol witness for static Component.__store(attribute:to:offset:) in conformance SelectableSceneContentIdentifierComponent(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  outlined init with copy of __REAssetService(a1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  result = swift_dynamicCast();
  *a2 = v6;
  return result;
}

_DWORD *protocol witness for static Component.__load(from:offset:) in conformance SelectableSceneContentIdentifierComponent@<X0>(_DWORD *result@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  *(a4 + 24) = a2;
  *(a4 + 32) = a3;
  *a4 = *result;
  return result;
}

uint64_t protocol witness for static Component.__load(from:) in conformance SynchronizationComponent@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 9);
  v4 = *(a1 + 10);
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = *(a1 + 32);
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 9) = v3;
  *(a2 + 10) = v4;
  *(a2 + 16) = v6;
  *(a2 + 24) = v5;
  *(a2 + 32) = v7;
  return outlined copy of (Double, (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?)?(v6, v5, v7);
}

double protocol witness for static Component.__store(attribute:to:offset:deinitialize:) in conformance SynchronizationComponent(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  if (a4)
  {
    v6 = a1;
    outlined destroy of SynchronizationComponent(a2);
    a1 = v6;
  }

  outlined init with copy of __REAssetService(a1, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  *a2 = v8;
  *(a2 + 8) = v9;
  *(a2 + 9) = v10;
  *(a2 + 10) = v11;
  result = *&v12;
  *(a2 + 16) = v12;
  *(a2 + 32) = v13;
  return result;
}

double protocol witness for static Component.__store(attribute:to:offset:) in conformance SynchronizationComponent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  outlined destroy of SynchronizationComponent(a2);
  outlined init with copy of __REAssetService(a1, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  *a2 = v7;
  *(a2 + 8) = v8;
  *(a2 + 9) = v9;
  *(a2 + 10) = v10;
  result = *&v11;
  *(a2 + 16) = v11;
  *(a2 + 32) = v12;
  return result;
}

void protocol witness for static Component.__free(to:offset:) in conformance SynchronizationComponent(uint64_t a1)
{
  outlined destroy of SynchronizationComponent(a1);

  JUMPOUT(0x1C6902A30);
}

uint64_t protocol witness for static Component.__load(from:offset:) in conformance SynchronizationComponent@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  a4[3] = a2;
  a4[4] = a3;
  v6 = swift_allocObject();
  *a4 = v6;
  v7 = *(a1 + 8);
  v8 = *(a1 + 9);
  v9 = *(a1 + 10);
  v11 = *(a1 + 16);
  v10 = *(a1 + 24);
  v12 = *(a1 + 32);
  *(v6 + 16) = *a1;
  *(v6 + 24) = v7;
  *(v6 + 25) = v8;
  *(v6 + 26) = v9;
  *(v6 + 32) = v11;
  *(v6 + 40) = v10;
  *(v6 + 48) = v12;

  return outlined copy of (Double, (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?)?(v11, v10, v12);
}

uint64_t protocol witness for static Component.__load(from:) in conformance GestureComponent@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  *a2 = v3;
  a2[1] = v2;
  swift_unknownObjectRetain();

  return swift_unknownObjectRetain();
}

uint64_t protocol witness for static Component.__store(attribute:to:offset:deinitialize:) in conformance GestureComponent(uint64_t a1, void *a2, uint64_t a3, char a4, uint64_t a5)
{
  if (a4)
  {
    v6 = a1;
    outlined destroy of GestureComponent(a2);
    a1 = v6;
  }

  outlined init with copy of __REAssetService(a1, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  result = swift_dynamicCast();
  *a2 = v8;
  a2[1] = v9;
  return result;
}

uint64_t protocol witness for static Component.__store(attribute:to:offset:) in conformance GestureComponent(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  outlined destroy of GestureComponent(a2);
  outlined init with copy of __REAssetService(a1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  result = swift_dynamicCast();
  *a2 = v7;
  a2[1] = v8;
  return result;
}

void protocol witness for static Component.__free(to:offset:) in conformance GestureComponent(uint64_t a1)
{
  outlined destroy of GestureComponent(a1);

  JUMPOUT(0x1C6902A30);
}

uint64_t protocol witness for static Component.__load(from:offset:) in conformance GestureComponent@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  a4[3] = a2;
  a4[4] = a3;
  v5 = *a1;
  v4 = a1[1];
  *a4 = v5;
  a4[1] = v4;
  swift_unknownObjectRetain();

  return swift_unknownObjectRetain();
}

void *protocol witness for static Component.__load(from:offset:) in conformance CustomComponentProxy@<X0>(void *result@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  a4[3] = a2;
  a4[4] = a3;
  *a4 = *result;
  return result;
}

uint64_t protocol witness for static Component.__load(from:) in conformance PortalComponent@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 80);
  v13 = *(a1 + 64);
  v2 = v13;
  v14 = v3;
  v15 = *(a1 + 96);
  v4 = v15;
  v5 = *(a1 + 16);
  v10[0] = *a1;
  v10[1] = v5;
  v6 = *(a1 + 48);
  v11 = *(a1 + 32);
  v7 = v11;
  v12 = v6;
  *a2 = v10[0];
  *(a2 + 16) = v5;
  *(a2 + 32) = v7;
  *(a2 + 48) = v6;
  *(a2 + 64) = v2;
  *(a2 + 80) = v3;
  *(a2 + 96) = v4;
  return outlined init with copy of PortalComponent(v10, &v9);
}

__n128 protocol witness for static Component.__store(attribute:to:offset:deinitialize:) in conformance PortalComponent(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  if (a4)
  {
    v6 = a1;
    outlined destroy of PortalComponent(a2);
    a1 = v6;
  }

  outlined init with copy of __REAssetService(a1, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  v7 = v16;
  *(a2 + 64) = v15;
  *(a2 + 80) = v7;
  *(a2 + 96) = v17;
  v8 = v12;
  *a2 = v11;
  *(a2 + 16) = v8;
  result = v14;
  *(a2 + 32) = v13;
  *(a2 + 48) = result;
  return result;
}

__n128 protocol witness for static Component.__store(attribute:to:offset:) in conformance PortalComponent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  outlined destroy of PortalComponent(a2);
  outlined init with copy of __REAssetService(a1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  v6 = v15;
  *(a2 + 64) = v14;
  *(a2 + 80) = v6;
  *(a2 + 96) = v16;
  v7 = v11;
  *a2 = v10;
  *(a2 + 16) = v7;
  result = v13;
  *(a2 + 32) = v12;
  *(a2 + 48) = result;
  return result;
}

void protocol witness for static Component.__free(to:offset:) in conformance PortalComponent(uint64_t a1)
{
  outlined destroy of PortalComponent(a1);

  JUMPOUT(0x1C6902A30);
}

uint64_t protocol witness for static Component.__load(from:offset:) in conformance PortalComponent@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  a4[3] = a2;
  a4[4] = a3;
  v6 = swift_allocObject();
  *a4 = v6;
  v8 = *(a1 + 80);
  v18 = *(a1 + 64);
  v7 = v18;
  v19 = v8;
  v20 = *(a1 + 96);
  v9 = v20;
  v10 = *(a1 + 16);
  v15[0] = *a1;
  v15[1] = v10;
  v11 = *(a1 + 48);
  v16 = *(a1 + 32);
  v12 = v16;
  v17 = v11;
  *(v6 + 16) = v15[0];
  *(v6 + 32) = v10;
  *(v6 + 112) = v9;
  *(v6 + 48) = v12;
  *(v6 + 64) = v11;
  *(v6 + 80) = v7;
  *(v6 + 96) = v8;
  return outlined init with copy of PortalComponent(v15, &v14);
}

void protocol witness for static Component.__free(to:offset:) in conformance AudioGroupPlaybackComponent(uint64_t a1)
{
  outlined destroy of AudioGroupPlaybackComponent(a1);

  JUMPOUT(0x1C6902A30);
}

float protocol witness for static Component.__load(from:) in conformance SpotLightComponent.Shadow@<S0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *a1;
  v3 = *(a1 + 4);
  v4 = *(a1 + 8);
  v5 = *(a1 + 12);
  v6 = *(a1 + 16);
  v7 = *(a1 + 20);
  *a2 = *a1;
  *(a2 + 4) = v3;
  *(a2 + 8) = v4;
  *(a2 + 12) = v5;
  *(a2 + 16) = v6;
  *(a2 + 20) = v7;
  return result;
}

float protocol witness for static Component.__store(attribute:to:offset:deinitialize:) in conformance SpotLightComponent.Shadow(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  outlined init with copy of __REAssetService(a1, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  result = v7;
  *a2 = v7;
  *(a2 + 4) = v8;
  *(a2 + 8) = v9;
  *(a2 + 12) = v10;
  *(a2 + 16) = v11;
  *(a2 + 20) = v12;
  return result;
}

float protocol witness for static Component.__store(attribute:to:offset:) in conformance SpotLightComponent.Shadow(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  outlined init with copy of __REAssetService(a1, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  result = v6;
  *a2 = v6;
  *(a2 + 4) = v7;
  *(a2 + 8) = v8;
  *(a2 + 12) = v9;
  *(a2 + 16) = v10;
  *(a2 + 20) = v11;
  return result;
}

float protocol witness for static Component.__load(from:offset:) in conformance SpotLightComponent.Shadow@<S0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  *(a4 + 24) = a2;
  *(a4 + 32) = a3;
  result = *a1;
  v5 = *(a1 + 4);
  v6 = *(a1 + 8);
  v7 = *(a1 + 12);
  v8 = *(a1 + 16);
  v9 = *(a1 + 20);
  *a4 = *a1;
  *(a4 + 4) = v5;
  *(a4 + 8) = v6;
  *(a4 + 12) = v7;
  *(a4 + 16) = v8;
  *(a4 + 20) = v9;
  return result;
}

id protocol witness for static Component.__load(from:) in conformance SpotLightComponent@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v3 = *(a1 + 24);
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 24) = v3;
  return v2;
}

float protocol witness for static Component.__store(attribute:to:offset:deinitialize:) in conformance SpotLightComponent(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  if (a4)
  {
    v6 = a1;
    outlined destroy of SpotLightComponent(a2);
    a1 = v6;
  }

  outlined init with copy of __REAssetService(a1, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  result = v10;
  *a2 = v8;
  *(a2 + 8) = v9;
  *(a2 + 24) = v10;
  return result;
}

float protocol witness for static Component.__store(attribute:to:offset:) in conformance SpotLightComponent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  outlined destroy of SpotLightComponent(a2);
  outlined init with copy of __REAssetService(a1, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  result = v9;
  *a2 = v7;
  *(a2 + 8) = v8;
  *(a2 + 24) = v9;
  return result;
}

void protocol witness for static Component.__free(to:offset:) in conformance SpotLightComponent(uint64_t a1)
{
  outlined destroy of SpotLightComponent(a1);

  JUMPOUT(0x1C6902A30);
}

id protocol witness for static Component.__load(from:offset:) in conformance SpotLightComponent@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  a4[3] = a2;
  a4[4] = a3;
  v6 = swift_allocObject();
  *a4 = v6;
  v7 = *a1;
  v8 = *(a1 + 24);
  *(v6 + 16) = *a1;
  *(v6 + 24) = *(a1 + 8);
  *(v6 + 40) = v8;

  return v7;
}

void protocol witness for static Component.__free(to:offset:) in conformance AudioMixGroupsComponent(uint64_t a1)
{
  outlined destroy of AudioMixGroupsComponent(a1);

  JUMPOUT(0x1C6902A30);
}

uint64_t protocol witness for static Component.__load(from:) in conformance RKARSegmentationComponent@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  *a2 = v2;
  a2[1] = v3;
  a2[2] = v5;
  a2[3] = v4;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  return swift_unknownObjectRetain();
}

double protocol witness for static Component.__store(attribute:to:offset:deinitialize:) in conformance RKARSegmentationComponent(uint64_t a1, _OWORD *a2, uint64_t a3, char a4, uint64_t a5)
{
  if (a4)
  {
    v6 = a1;
    outlined destroy of RKARSegmentationComponent(a2);
    a1 = v6;
  }

  outlined init with copy of __REAssetService(a1, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  result = *&v8;
  *a2 = v8;
  a2[1] = v9;
  return result;
}

double protocol witness for static Component.__store(attribute:to:offset:) in conformance RKARSegmentationComponent(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  outlined destroy of RKARSegmentationComponent(a2);
  outlined init with copy of __REAssetService(a1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  result = *&v7;
  *a2 = v7;
  a2[1] = v8;
  return result;
}

void protocol witness for static Component.__free(to:offset:) in conformance RKARSegmentationComponent(uint64_t a1)
{
  outlined destroy of RKARSegmentationComponent(a1);

  JUMPOUT(0x1C6902A30);
}

uint64_t protocol witness for static Component.__load(from:offset:) in conformance RKARSegmentationComponent@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  a4[3] = a2;
  a4[4] = a3;
  v6 = swift_allocObject();
  *a4 = v6;
  v7 = a1[1];
  v9 = a1[2];
  v8 = a1[3];
  v6[2] = *a1;
  v6[3] = v7;
  v6[4] = v9;
  v6[5] = v8;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  return swift_unknownObjectRetain();
}

void *static Component.registerComponent()(uint64_t a1, uint64_t a2)
{
  result = (*(a2 + 80))(&v7);
  if (v7 == 36)
  {
    result = (*(a2 + 104))(&v6, a1, a2);
    if (!v6)
    {

      return specialized static SceneManager.customComponentType(_:)(v2, a2);
    }
  }

  return result;
}

uint64_t protocol witness for static Component.__load(from:) in conformance VFXComponent@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 48);
  v9 = *(a1 + 32);
  v10 = v2;
  v11 = *(a1 + 64);
  v3 = v11;
  v4 = *(a1 + 16);
  v8[0] = *a1;
  v5 = v8[0];
  v8[1] = v4;
  *(a2 + 32) = v9;
  *(a2 + 48) = v2;
  *(a2 + 64) = v3;
  *a2 = v5;
  *(a2 + 16) = v4;
  return outlined init with copy of VFXComponent(v8, v7);
}

__n128 protocol witness for static Component.__store(attribute:to:offset:deinitialize:) in conformance VFXComponent(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  if (a4)
  {
    v6 = a1;
    outlined destroy of VFXComponent(a2);
    a1 = v6;
  }

  outlined init with copy of __REAssetService(a1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  v7 = v12;
  *(a2 + 32) = v11;
  *(a2 + 48) = v7;
  *(a2 + 64) = v13;
  result = v10;
  *a2 = *&v9[40];
  *(a2 + 16) = result;
  return result;
}

__n128 protocol witness for static Component.__store(attribute:to:offset:) in conformance VFXComponent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  outlined destroy of VFXComponent(a2);
  outlined init with copy of __REAssetService(a1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  v6 = v11;
  *(a2 + 32) = v10;
  *(a2 + 48) = v6;
  *(a2 + 64) = v12;
  result = v9;
  *a2 = *&v8[40];
  *(a2 + 16) = result;
  return result;
}

void protocol witness for static Component.__free(to:offset:) in conformance VFXComponent(uint64_t a1)
{
  outlined destroy of VFXComponent(a1);

  JUMPOUT(0x1C6902A30);
}

uint64_t protocol witness for static Component.__load(from:offset:) in conformance VFXComponent@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  a4[3] = a2;
  a4[4] = a3;
  v6 = swift_allocObject();
  *a4 = v6;
  v7 = *(a1 + 48);
  v14 = *(a1 + 32);
  v15 = v7;
  v16 = *(a1 + 64);
  v8 = v16;
  v9 = *(a1 + 16);
  v13[0] = *a1;
  v10 = v13[0];
  v13[1] = v9;
  *(v6 + 48) = v14;
  *(v6 + 64) = v7;
  *(v6 + 80) = v8;
  *(v6 + 16) = v10;
  *(v6 + 32) = v9;
  return outlined init with copy of VFXComponent(v13, v12);
}

uint64_t protocol witness for static Component.__load(from:) in conformance HoverEffectComponent@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 2);
  v3 = *(a1 + 12);
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 12) = v3;
}

uint64_t protocol witness for static Component.__store(attribute:to:offset:deinitialize:) in conformance HoverEffectComponent(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  if (a4)
  {
    v6 = a1;
    outlined destroy of HoverEffectComponent(a2);
    a1 = v6;
  }

  outlined init with copy of __REAssetService(a1, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  result = swift_dynamicCast();
  *a2 = v8;
  *(a2 + 8) = v9;
  *(a2 + 12) = v10;
  return result;
}

uint64_t protocol witness for static Component.__store(attribute:to:offset:) in conformance HoverEffectComponent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  outlined destroy of HoverEffectComponent(a2);
  outlined init with copy of __REAssetService(a1, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  result = swift_dynamicCast();
  *a2 = v7;
  *(a2 + 8) = v8;
  *(a2 + 12) = v9;
  return result;
}

void protocol witness for static Component.__free(to:offset:) in conformance HoverEffectComponent(uint64_t a1)
{
  outlined destroy of HoverEffectComponent(a1);

  JUMPOUT(0x1C6902A30);
}

uint64_t protocol witness for static Component.__load(from:offset:) in conformance HoverEffectComponent@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  *(a4 + 24) = a2;
  *(a4 + 32) = a3;
  v4 = *(a1 + 2);
  v5 = *(a1 + 12);
  *a4 = *a1;
  *(a4 + 8) = v4;
  *(a4 + 12) = v5;
}

uint64_t protocol witness for static Component.__load(from:) in conformance SkeletalPosesComponent@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
}

uint64_t protocol witness for static Component.__store(attribute:to:offset:deinitialize:) in conformance SkeletalPosesComponent(uint64_t a1, void *a2, uint64_t a3, char a4, uint64_t a5)
{
  if (a4)
  {
    v6 = a1;
    outlined destroy of SkeletalPosesComponent(a2);
    a1 = v6;
  }

  outlined init with copy of __REAssetService(a1, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  result = swift_dynamicCast();
  *a2 = v8;
  a2[1] = v9;
  return result;
}

uint64_t protocol witness for static Component.__store(attribute:to:offset:) in conformance SkeletalPosesComponent(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  outlined destroy of SkeletalPosesComponent(a2);
  outlined init with copy of __REAssetService(a1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  result = swift_dynamicCast();
  *a2 = v7;
  a2[1] = v8;
  return result;
}

void protocol witness for static Component.__free(to:offset:) in conformance SkeletalPosesComponent(uint64_t a1)
{
  outlined destroy of SkeletalPosesComponent(a1);

  JUMPOUT(0x1C6902A30);
}

uint64_t protocol witness for static Component.__load(from:offset:) in conformance SkeletalPosesComponent@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  a4[3] = a2;
  a4[4] = a3;
  v4 = a1[1];
  *a4 = *a1;
  a4[1] = v4;
}

id protocol witness for static Component.__load(from:) in conformance PointLightComponent@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 16) = v3;
  return v2;
}

float protocol witness for static Component.__store(attribute:to:offset:deinitialize:) in conformance PointLightComponent(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  if (a4)
  {
    v6 = a1;
    outlined destroy of PointLightComponent(a2);
    a1 = v6;
  }

  outlined init with copy of __REAssetService(a1, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  result = v10;
  *a2 = v8;
  *(a2 + 8) = v9;
  *(a2 + 16) = v10;
  return result;
}

float protocol witness for static Component.__store(attribute:to:offset:) in conformance PointLightComponent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  outlined destroy of PointLightComponent(a2);
  outlined init with copy of __REAssetService(a1, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  result = v9;
  *a2 = v7;
  *(a2 + 8) = v8;
  *(a2 + 16) = v9;
  return result;
}

void protocol witness for static Component.__free(to:offset:) in conformance PointLightComponent(uint64_t a1)
{
  outlined destroy of PointLightComponent(a1);

  JUMPOUT(0x1C6902A30);
}

id protocol witness for static Component.__load(from:offset:) in conformance PointLightComponent@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  *(a4 + 24) = a2;
  *(a4 + 32) = a3;
  v4 = *a1;
  v5 = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 8) = *(a1 + 8);
  *(a4 + 16) = v5;
  return v4;
}

double protocol witness for static Component.__load(from:) in conformance PointLightComponent.Shadow@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 12);
  v4 = *(a1 + 16);
  v5 = *(a1 + 20);
  v6 = *(a1 + 24);
  result = *a1;
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 12) = v3;
  *(a2 + 16) = v4;
  *(a2 + 20) = v5;
  *(a2 + 24) = v6;
  return result;
}

double protocol witness for static Component.__store(attribute:to:offset:deinitialize:) in conformance PointLightComponent.Shadow(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  outlined init with copy of __REAssetService(a1, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  result = v7;
  *a2 = v7;
  *(a2 + 8) = v8;
  *(a2 + 12) = v9;
  *(a2 + 16) = v10;
  *(a2 + 20) = v11;
  *(a2 + 24) = v12;
  return result;
}

double protocol witness for static Component.__store(attribute:to:offset:) in conformance PointLightComponent.Shadow(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  outlined init with copy of __REAssetService(a1, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  result = v6;
  *a2 = v6;
  *(a2 + 8) = v7;
  *(a2 + 12) = v8;
  *(a2 + 16) = v9;
  *(a2 + 20) = v10;
  *(a2 + 24) = v11;
  return result;
}

double protocol witness for static Component.__load(from:offset:) in conformance PointLightComponent.Shadow@<D0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  a4[3] = a2;
  a4[4] = a3;
  v6 = swift_allocObject();
  *a4 = v6;
  v7 = *(a1 + 8);
  v8 = *(a1 + 12);
  v9 = *(a1 + 16);
  v10 = *(a1 + 20);
  v11 = *(a1 + 24);
  result = *a1;
  *(v6 + 16) = *a1;
  *(v6 + 24) = v7;
  *(v6 + 28) = v8;
  *(v6 + 32) = v9;
  *(v6 + 36) = v10;
  *(v6 + 40) = v11;
  return result;
}

uint64_t protocol witness for static Component.__store(attribute:to:offset:deinitialize:) in conformance ImageBasedLightReceiverComponent(uint64_t a1, void *a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, void (*a7)(void *))
{
  if (a4)
  {
    v8 = a1;
    (a7)(a2, a2, a3);
    a1 = v8;
  }

  outlined init with copy of __REAssetService(a1, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  result = swift_dynamicCast();
  *a2 = v10;
  return result;
}

uint64_t protocol witness for static Component.__store(attribute:to:offset:) in conformance ImageBasedLightReceiverComponent(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void *))
{
  a6(a2);
  outlined init with copy of __REAssetService(a1, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  result = swift_dynamicCast();
  *a2 = v9;
  return result;
}

void protocol witness for static Component.__free(to:offset:) in conformance WorldComponent(uint64_t a1)
{
  outlined destroy of WorldComponent(a1);

  JUMPOUT(0x1C6902A30);
}

__n128 protocol witness for static Component.__load(from:) in conformance DockingRegionComponent@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *a1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 32);
  *a2 = *a1;
  *(a2 + 16) = v3;
  *(a2 + 32) = v4;
  return result;
}

double protocol witness for static Component.__store(attribute:to:offset:deinitialize:) in conformance DockingRegionComponent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  outlined init with copy of __REAssetService(a1, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  result = *&v7;
  *a2 = v7;
  *(a2 + 16) = v8;
  *(a2 + 32) = v9;
  return result;
}

double protocol witness for static Component.__store(attribute:to:offset:) in conformance DockingRegionComponent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  outlined init with copy of __REAssetService(a1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  result = *&v6;
  *a2 = v6;
  *(a2 + 16) = v7;
  *(a2 + 32) = v8;
  return result;
}

__n128 protocol witness for static Component.__load(from:offset:) in conformance DockingRegionComponent@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  a4[3] = a2;
  a4[4] = a3;
  v6 = swift_allocObject();
  *a4 = v6;
  result = *a1;
  v8 = *(a1 + 16);
  v9 = *(a1 + 32);
  *(v6 + 16) = *a1;
  *(v6 + 32) = v8;
  *(v6 + 48) = v9;
  return result;
}

__n128 protocol witness for static Component.__load(from:) in conformance SpatialAudioComponent@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v2;
  *(a2 + 96) = *(a1 + 96);
  *(a2 + 105) = *(a1 + 105);
  v3 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v3;
  result = *(a1 + 32);
  v5 = *(a1 + 48);
  *(a2 + 32) = result;
  *(a2 + 48) = v5;
  return result;
}

double protocol witness for static Component.__store(attribute:to:offset:deinitialize:) in conformance SpatialAudioComponent(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  outlined init with copy of __REAssetService(a1, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  v6 = v16;
  a2[4] = v15;
  a2[5] = v6;
  a2[6] = v17[0];
  *(a2 + 105) = *(v17 + 9);
  v7 = v12;
  *a2 = v11;
  a2[1] = v7;
  result = *&v13;
  v9 = v14;
  a2[2] = v13;
  a2[3] = v9;
  return result;
}

double protocol witness for static Component.__store(attribute:to:offset:) in conformance SpatialAudioComponent(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  outlined init with copy of __REAssetService(a1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  v5 = v15;
  a2[4] = v14;
  a2[5] = v5;
  a2[6] = v16[0];
  *(a2 + 105) = *(v16 + 9);
  v6 = v11;
  *a2 = v10;
  a2[1] = v6;
  result = *&v12;
  v8 = v13;
  a2[2] = v12;
  a2[3] = v8;
  return result;
}

__n128 protocol witness for static Component.__load(from:offset:) in conformance SpatialAudioComponent@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  a4[3] = a2;
  a4[4] = a3;
  v6 = swift_allocObject();
  *a4 = v6;
  v7 = *(a1 + 80);
  *(v6 + 80) = *(a1 + 64);
  *(v6 + 96) = v7;
  *(v6 + 112) = *(a1 + 96);
  *(v6 + 121) = *(a1 + 105);
  v8 = *(a1 + 16);
  *(v6 + 16) = *a1;
  *(v6 + 32) = v8;
  result = *(a1 + 32);
  v10 = *(a1 + 48);
  *(v6 + 48) = result;
  *(v6 + 64) = v10;
  return result;
}

__n128 protocol witness for static Component.__load(from:) in conformance ProjectiveTransformCameraComponent@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 112);
  *(a2 + 96) = *(a1 + 96);
  *(a2 + 112) = v2;
  *(a2 + 128) = *(a1 + 128);
  v3 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v3;
  v4 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v4;
  result = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = result;
  return result;
}

__n128 protocol witness for static Component.__store(attribute:to:offset:deinitialize:) in conformance ProjectiveTransformCameraComponent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  outlined init with copy of __REAssetService(a1, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  v6 = v18;
  *(a2 + 96) = v17;
  *(a2 + 112) = v6;
  *(a2 + 128) = v19;
  v7 = v14;
  *(a2 + 32) = v13;
  *(a2 + 48) = v7;
  v8 = v16;
  *(a2 + 64) = v15;
  *(a2 + 80) = v8;
  result = v12;
  *a2 = v11;
  *(a2 + 16) = result;
  return result;
}

__n128 protocol witness for static Component.__store(attribute:to:offset:) in conformance ProjectiveTransformCameraComponent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  outlined init with copy of __REAssetService(a1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  v5 = v17;
  *(a2 + 96) = v16;
  *(a2 + 112) = v5;
  *(a2 + 128) = v18;
  v6 = v13;
  *(a2 + 32) = v12;
  *(a2 + 48) = v6;
  v7 = v15;
  *(a2 + 64) = v14;
  *(a2 + 80) = v7;
  result = v11;
  *a2 = v10;
  *(a2 + 16) = result;
  return result;
}

__n128 protocol witness for static Component.__load(from:offset:) in conformance ProjectiveTransformCameraComponent@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  a4[3] = a2;
  a4[4] = a3;
  v6 = swift_allocObject();
  *a4 = v6;
  v7 = *(a1 + 112);
  *(v6 + 112) = *(a1 + 96);
  *(v6 + 128) = v7;
  *(v6 + 144) = *(a1 + 128);
  v8 = *(a1 + 48);
  *(v6 + 48) = *(a1 + 32);
  *(v6 + 64) = v8;
  v9 = *(a1 + 80);
  *(v6 + 80) = *(a1 + 64);
  *(v6 + 96) = v9;
  result = *(a1 + 16);
  *(v6 + 16) = *a1;
  *(v6 + 32) = result;
  return result;
}

double protocol witness for static Component.__load(from:) in conformance ManipulationComponent.HitTarget@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v2;

  return result;
}

double protocol witness for static Component.__store(attribute:to:offset:deinitialize:) in conformance ManipulationComponent.HitTarget(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  if (a4)
  {
    v6 = a1;
    outlined destroy of ManipulationComponent.HitTarget(a2);
    a1 = v6;
  }

  outlined init with copy of __REAssetService(a1, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  result = *&v8;
  *a2 = v8;
  *(a2 + 16) = v9;
  return result;
}

double protocol witness for static Component.__store(attribute:to:offset:) in conformance ManipulationComponent.HitTarget(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  outlined destroy of ManipulationComponent.HitTarget(a2);
  outlined init with copy of __REAssetService(a1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  result = *&v7;
  *a2 = v7;
  *(a2 + 16) = v8;
  return result;
}

void protocol witness for static Component.__free(to:offset:) in conformance ManipulationComponent.HitTarget(uint64_t a1)
{
  outlined destroy of ManipulationComponent.HitTarget(a1);

  JUMPOUT(0x1C6902A30);
}

double protocol witness for static Component.__load(from:offset:) in conformance ManipulationComponent.HitTarget@<D0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  *(a4 + 24) = a2;
  *(a4 + 32) = a3;
  v4 = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = v4;

  return result;
}

uint64_t protocol witness for static Component.__store(attribute:to:offset:deinitialize:) in conformance ManipulationComponent(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  if (a4)
  {
    v6 = a1;
    outlined destroy of ManipulationComponent(a2);
    a1 = v6;
  }

  outlined init with copy of __REAssetService(a1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  return outlined init with take of ManipulationComponent(v8, a2);
}

uint64_t protocol witness for static Component.__store(attribute:to:offset:) in conformance ManipulationComponent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  outlined destroy of ManipulationComponent(a2);
  outlined init with copy of __REAssetService(a1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  return outlined init with take of ManipulationComponent(v7, a2);
}

void protocol witness for static Component.__free(to:offset:) in conformance ManipulationComponent(uint64_t a1)
{
  outlined destroy of ManipulationComponent(a1);

  JUMPOUT(0x1C6902A30);
}

uint64_t static Component.registerComponentProxy(componentName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(a4 + 80))(&v9, a3, a4);
  if (v9 == 36)
  {
    return specialized static SceneManager.customComponentTypeHelper(_:typeName:)(v4, a4, a1, a2);
  }

  else
  {
    return 0;
  }
}

double protocol witness for static Component.__load(from:) in conformance AREnvironmentProbeComponent@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 32);
  *a2 = *a1;
  *(a2 + 16) = v2;
  *(a2 + 32) = v3;

  return result;
}

__n128 protocol witness for static Component.__store(attribute:to:offset:deinitialize:) in conformance AREnvironmentProbeComponent(uint64_t a1, __n128 *a2, uint64_t a3, char a4, uint64_t a5)
{
  if (a4)
  {
    v6 = a1;
    outlined destroy of AREnvironmentProbeComponent(a2);
    a1 = v6;
  }

  outlined init with copy of __REAssetService(a1, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  result = v9;
  a2->n128_u64[0] = v8;
  a2[1] = v9;
  a2[2].n128_u8[0] = v10;
  return result;
}

__n128 protocol witness for static Component.__store(attribute:to:offset:) in conformance AREnvironmentProbeComponent(uint64_t a1, __n128 *a2, uint64_t a3, uint64_t a4)
{
  outlined destroy of AREnvironmentProbeComponent(a2);
  outlined init with copy of __REAssetService(a1, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  result = v8;
  a2->n128_u64[0] = v7;
  a2[1] = v8;
  a2[2].n128_u8[0] = v9;
  return result;
}

void protocol witness for static Component.__free(to:offset:) in conformance AREnvironmentProbeComponent(uint64_t a1)
{
  outlined destroy of AREnvironmentProbeComponent(a1);

  JUMPOUT(0x1C6902A30);
}

double protocol witness for static Component.__load(from:offset:) in conformance AREnvironmentProbeComponent@<D0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  a4[3] = a2;
  a4[4] = a3;
  v6 = swift_allocObject();
  *a4 = v6;
  v7 = *(a1 + 16);
  v8 = *(a1 + 32);
  *(v6 + 16) = *a1;
  *(v6 + 32) = v7;
  *(v6 + 48) = v8;

  return result;
}

uint64_t protocol witness for static Component.__load(from:) in conformance StateMachineComponent@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
}

uint64_t protocol witness for static Component.__store(attribute:to:offset:deinitialize:) in conformance StateMachineComponent(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  if (a4)
  {
    v6 = a1;
    outlined destroy of StateMachineComponent(a2);
    a1 = v6;
  }

  outlined init with copy of __REAssetService(a1, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  result = swift_dynamicCast();
  *a2 = v8;
  *(a2 + 8) = v9;
  *(a2 + 16) = v10;
  return result;
}

uint64_t protocol witness for static Component.__store(attribute:to:offset:) in conformance StateMachineComponent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  outlined destroy of StateMachineComponent(a2);
  outlined init with copy of __REAssetService(a1, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  result = swift_dynamicCast();
  *a2 = v7;
  *(a2 + 8) = v8;
  *(a2 + 16) = v9;
  return result;
}

void protocol witness for static Component.__free(to:offset:) in conformance StateMachineComponent(uint64_t a1)
{
  outlined destroy of StateMachineComponent(a1);

  JUMPOUT(0x1C6902A30);
}

uint64_t protocol witness for static Component.__load(from:offset:) in conformance StateMachineComponent@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  *(a4 + 24) = a2;
  *(a4 + 32) = a3;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 8) = v4;
  *(a4 + 16) = v5;
}

uint64_t protocol witness for static Component.__store(attribute:to:offset:deinitialize:) in conformance __SkyboxComponent(uint64_t a1, void *a2, uint64_t a3, char a4, uint64_t a5)
{
  if (a4)
  {
    v6 = a1;
    outlined destroy of __SkyboxComponent(a2);
    a1 = v6;
  }

  outlined init with copy of __REAssetService(a1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  result = swift_dynamicCast();
  *a2 = v8;
  return result;
}

uint64_t protocol witness for static Component.__store(attribute:to:offset:) in conformance __SkyboxComponent(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  outlined destroy of __SkyboxComponent(a2);
  outlined init with copy of __REAssetService(a1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  result = swift_dynamicCast();
  *a2 = v7;
  return result;
}

void protocol witness for static Component.__free(to:offset:) in conformance __SkyboxComponent(uint64_t a1)
{
  outlined destroy of __SkyboxComponent(a1);

  JUMPOUT(0x1C6902A30);
}

void protocol witness for static Component.__free(to:offset:) in conformance TextComponent(uint64_t a1)
{
  _s10RealityKit21BodyTrackingComponentVWOhTm_0(a1, type metadata accessor for TextComponent);

  JUMPOUT(0x1C6902A30);
}

__n128 protocol witness for static Component.__load(from:) in conformance SpatialMediaComponent@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v2;
  result = *(a1 + 32);
  v4 = *(a1 + 48);
  *(a2 + 32) = result;
  *(a2 + 48) = v4;
  return result;
}

double protocol witness for static Component.__store(attribute:to:offset:deinitialize:) in conformance SpatialMediaComponent(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  outlined init with copy of __REAssetService(a1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  v6 = v11;
  *a2 = v10;
  a2[1] = v6;
  result = *&v12;
  v8 = v13;
  a2[2] = v12;
  a2[3] = v8;
  return result;
}

double protocol witness for static Component.__store(attribute:to:offset:) in conformance SpatialMediaComponent(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  outlined init with copy of __REAssetService(a1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  v5 = v10;
  *a2 = v9;
  a2[1] = v5;
  result = *&v11;
  v7 = v12;
  a2[2] = v11;
  a2[3] = v7;
  return result;
}

__n128 protocol witness for static Component.__load(from:offset:) in conformance SpatialMediaComponent@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  a4[3] = a2;
  a4[4] = a3;
  v6 = swift_allocObject();
  *a4 = v6;
  v7 = *(a1 + 16);
  *(v6 + 16) = *a1;
  *(v6 + 32) = v7;
  result = *(a1 + 32);
  v9 = *(a1 + 48);
  *(v6 + 48) = result;
  *(v6 + 64) = v9;
  return result;
}

double protocol witness for static Component.__load(from:) in conformance ModelComponent@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;

  return result;
}

float protocol witness for static Component.__store(attribute:to:offset:deinitialize:) in conformance ModelComponent(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  if (a4)
  {
    v6 = a1;
    outlined destroy of ModelComponent(a2);
    a1 = v6;
  }

  outlined init with copy of __REAssetService(a1, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  result = v9;
  *a2 = v8;
  *(a2 + 16) = v9;
  *(a2 + 24) = v10;
  return result;
}

float protocol witness for static Component.__store(attribute:to:offset:) in conformance ModelComponent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  outlined destroy of ModelComponent(a2);
  outlined init with copy of __REAssetService(a1, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  result = v8;
  *a2 = v7;
  *(a2 + 16) = v8;
  *(a2 + 24) = v9;
  return result;
}

void protocol witness for static Component.__free(to:offset:) in conformance ModelComponent(uint64_t a1)
{
  outlined destroy of ModelComponent(a1);

  JUMPOUT(0x1C6902A30);
}

double protocol witness for static Component.__load(from:offset:) in conformance ModelComponent@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  a4[3] = a2;
  a4[4] = a3;
  v6 = swift_allocObject();
  *a4 = v6;
  v7 = *a1;
  v8 = a1[1];
  v9 = *(a1 + 4);
  v10 = a1[3];
  *(v6 + 16) = v7;
  *(v6 + 24) = v8;
  *(v6 + 32) = v9;
  *(v6 + 40) = v10;

  return result;
}

uint64_t protocol witness for static Component.__load(from:) in conformance IKComponent@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;
}

double protocol witness for static Component.__store(attribute:to:offset:deinitialize:) in conformance IKComponent(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  if (a4)
  {
    v6 = a1;
    outlined destroy of IKComponent(a2);
    a1 = v6;
  }

  outlined init with copy of __REAssetService(a1, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  *a2 = v8;
  result = *&v9;
  *(a2 + 8) = v9;
  return result;
}

double protocol witness for static Component.__store(attribute:to:offset:) in conformance IKComponent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  outlined destroy of IKComponent(a2);
  outlined init with copy of __REAssetService(a1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  *a2 = v7;
  result = *&v8;
  *(a2 + 8) = v8;
  return result;
}

void protocol witness for static Component.__free(to:offset:) in conformance IKComponent(uint64_t a1)
{
  outlined destroy of IKComponent(a1);

  JUMPOUT(0x1C6902A30);
}

uint64_t protocol witness for static Component.__load(from:offset:) in conformance IKComponent@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  a4[3] = a2;
  a4[4] = a3;
  v4 = a1[1];
  v5 = a1[2];
  *a4 = *a1;
  a4[1] = v4;
  a4[2] = v5;
}

double protocol witness for static Component.__store(attribute:to:offset:deinitialize:) in conformance GroundingShadowComponent(uint64_t a1, _OWORD *a2, uint64_t a3, char a4, uint64_t a5)
{
  if (a4)
  {
    v6 = a1;
    outlined destroy of GroundingShadowComponent(a2);
    a1 = v6;
  }

  outlined init with copy of __REAssetService(a1, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  *a2 = v8;
  a2[1] = v9;
  result = *&v10;
  a2[2] = v10;
  return result;
}

double protocol witness for static Component.__store(attribute:to:offset:) in conformance GroundingShadowComponent(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  outlined destroy of GroundingShadowComponent(a2);
  outlined init with copy of __REAssetService(a1, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  *a2 = v7;
  a2[1] = v8;
  result = *&v9;
  a2[2] = v9;
  return result;
}

void protocol witness for static Component.__free(to:offset:) in conformance GroundingShadowComponent(uint64_t a1)
{
  outlined destroy of GroundingShadowComponent(a1);

  JUMPOUT(0x1C6902A30);
}

uint64_t protocol witness for static Component.__load(from:) in conformance AcousticModelComponent@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;
  a2[3] = v4;
}

double protocol witness for static Component.__store(attribute:to:offset:deinitialize:) in conformance AcousticModelComponent(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  if (a4)
  {
    v6 = a1;
    outlined destroy of AcousticModelComponent(a2);
    a1 = v6;
  }

  outlined init with copy of __REAssetService(a1, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  *a2 = v8;
  result = *&v9;
  *(a2 + 8) = v9;
  *(a2 + 24) = v10;
  return result;
}

double protocol witness for static Component.__store(attribute:to:offset:) in conformance AcousticModelComponent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  outlined destroy of AcousticModelComponent(a2);
  outlined init with copy of __REAssetService(a1, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  *a2 = v7;
  result = *&v8;
  *(a2 + 8) = v8;
  *(a2 + 24) = v9;
  return result;
}

void protocol witness for static Component.__free(to:offset:) in conformance AcousticModelComponent(uint64_t a1)
{
  outlined destroy of AcousticModelComponent(a1);

  JUMPOUT(0x1C6902A30);
}

uint64_t protocol witness for static Component.__load(from:offset:) in conformance AcousticModelComponent@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  a4[3] = a2;
  a4[4] = a3;
  v6 = swift_allocObject();
  *a4 = v6;
  v7 = *a1;
  v8 = a1[1];
  v10 = a1[2];
  v9 = a1[3];
  v6[2] = v7;
  v6[3] = v8;
  v6[4] = v10;
  v6[5] = v9;
}

uint64_t protocol witness for static Component.__load(from:) in conformance InputTargetComponent@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *(a1 + 1);
  *a2 = v2;
  *(a2 + 4) = v3;
  *(a2 + 8) = v4;
}

uint64_t protocol witness for static Component.__store(attribute:to:offset:deinitialize:) in conformance InputTargetComponent(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  if (a4)
  {
    v6 = a1;
    outlined destroy of InputTargetComponent(a2);
    a1 = v6;
  }

  outlined init with copy of __REAssetService(a1, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  result = swift_dynamicCast();
  *a2 = v8;
  *(a2 + 4) = v9;
  *(a2 + 8) = v10;
  return result;
}

uint64_t protocol witness for static Component.__store(attribute:to:offset:) in conformance InputTargetComponent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  outlined destroy of InputTargetComponent(a2);
  outlined init with copy of __REAssetService(a1, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  result = swift_dynamicCast();
  *a2 = v7;
  *(a2 + 4) = v8;
  *(a2 + 8) = v9;
  return result;
}

void protocol witness for static Component.__free(to:offset:) in conformance InputTargetComponent(uint64_t a1)
{
  outlined destroy of InputTargetComponent(a1);

  JUMPOUT(0x1C6902A30);
}

uint64_t protocol witness for static Component.__load(from:offset:) in conformance InputTargetComponent@<X0>(char *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  *(a4 + 24) = a2;
  *(a4 + 32) = a3;
  v4 = *a1;
  v5 = *(a1 + 1);
  v6 = *(a1 + 1);
  *a4 = v4;
  *(a4 + 4) = v5;
  *(a4 + 8) = v6;
}

double protocol witness for static Component.__load(from:) in conformance ModelSortGroupComponent@<D0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v3 = *(a1 + 4);
  v4 = *(a1 + 2);
  *a2 = v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;

  return result;
}

uint64_t protocol witness for static Component.__store(attribute:to:offset:deinitialize:) in conformance ModelSortGroupComponent(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  if (a4)
  {
    v6 = a1;
    outlined destroy of ModelSortGroupComponent(a2);
    a1 = v6;
  }

  outlined init with copy of __REAssetService(a1, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  result = swift_dynamicCast();
  *a2 = v8;
  *(a2 + 8) = v9;
  *(a2 + 16) = v10;
  return result;
}

uint64_t protocol witness for static Component.__store(attribute:to:offset:) in conformance ModelSortGroupComponent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  outlined destroy of ModelSortGroupComponent(a2);
  outlined init with copy of __REAssetService(a1, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  result = swift_dynamicCast();
  *a2 = v7;
  *(a2 + 8) = v8;
  *(a2 + 16) = v9;
  return result;
}

void protocol witness for static Component.__free(to:offset:) in conformance ModelSortGroupComponent(uint64_t a1)
{
  outlined destroy of ModelSortGroupComponent(a1);

  JUMPOUT(0x1C6902A30);
}

double protocol witness for static Component.__load(from:offset:) in conformance ModelSortGroupComponent@<D0>(int *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  *(a4 + 24) = a2;
  *(a4 + 32) = a3;
  v4 = *a1;
  v5 = *(a1 + 4);
  v6 = *(a1 + 2);
  *a4 = v4;
  *(a4 + 8) = v5;
  *(a4 + 16) = v6;

  return result;
}

__n128 protocol witness for static Component.__load(from:) in conformance CharacterControllerStateComponent@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  v3 = a1[1].n128_u8[0];
  *a2 = *a1;
  a2[1].n128_u8[0] = v3;
  return result;
}

double protocol witness for static Component.__store(attribute:to:offset:deinitialize:) in conformance CharacterControllerStateComponent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  outlined init with copy of __REAssetService(a1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  result = *&v7;
  *a2 = v7;
  *(a2 + 16) = v8;
  return result;
}

double protocol witness for static Component.__store(attribute:to:offset:) in conformance CharacterControllerStateComponent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  outlined init with copy of __REAssetService(a1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  result = *&v6;
  *a2 = v6;
  *(a2 + 16) = v7;
  return result;
}

__n128 protocol witness for static Component.__load(from:offset:) in conformance CharacterControllerStateComponent@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X2>, __n128 *a3@<X3>, __n128 **a4@<X8>)
{
  a4[3] = a2;
  a4[4] = a3;
  v6 = swift_allocObject();
  *a4 = v6;
  result = *a1;
  v8 = a1[1].n128_u8[0];
  v6[1] = *a1;
  v6[2].n128_u8[0] = v8;
  return result;
}

__n128 protocol witness for static Component.__load(from:) in conformance PhysicsMotionComponent@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

double protocol witness for static Component.__store(attribute:to:offset:deinitialize:) in conformance PhysicsMotionComponent(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  outlined init with copy of __REAssetService(a1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  result = *&v7;
  *a2 = v7;
  a2[1] = v8;
  return result;
}

double protocol witness for static Component.__store(attribute:to:offset:) in conformance PhysicsMotionComponent(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  outlined init with copy of __REAssetService(a1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  result = *&v6;
  *a2 = v6;
  a2[1] = v7;
  return result;
}

__n128 protocol witness for static Component.__load(from:offset:) in conformance PhysicsMotionComponent@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  a4[3] = a2;
  a4[4] = a3;
  v6 = swift_allocObject();
  *a4 = v6;
  result = *a1;
  v8 = *(a1 + 16);
  *(v6 + 16) = *a1;
  *(v6 + 32) = v8;
  return result;
}

uint64_t protocol witness for static Component.__load(from:) in conformance AnimationLibraryComponent@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;
  a2[3] = v4;
  a2[4] = v5;

  outlined copy of String??(v3, v4);
}

double protocol witness for static Component.__store(attribute:to:offset:deinitialize:) in conformance AnimationLibraryComponent(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  if (a4)
  {
    v6 = a1;
    outlined destroy of AnimationLibraryComponent(a2);
    a1 = v6;
  }

  outlined init with copy of __REAssetService(a1, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  result = *&v8;
  *a2 = v8;
  *(a2 + 16) = v9;
  *(a2 + 32) = v10;
  return result;
}

double protocol witness for static Component.__store(attribute:to:offset:) in conformance AnimationLibraryComponent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  outlined destroy of AnimationLibraryComponent(a2);
  outlined init with copy of __REAssetService(a1, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  result = *&v7;
  *a2 = v7;
  *(a2 + 16) = v8;
  *(a2 + 32) = v9;
  return result;
}

void protocol witness for static Component.__free(to:offset:) in conformance AnimationLibraryComponent(uint64_t a1)
{
  outlined destroy of AnimationLibraryComponent(a1);

  JUMPOUT(0x1C6902A30);
}

double protocol witness for static Component.__store(attribute:to:offset:deinitialize:) in conformance _Proto_AnimationLibraryComponent_v1(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  if (a4)
  {
    v6 = a1;
    outlined destroy of _Proto_AnimationLibraryComponent_v1(a2);
    a1 = v6;
  }

  outlined init with copy of __REAssetService(a1, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  result = *&v8;
  *a2 = v8;
  *(a2 + 16) = v9;
  *(a2 + 32) = v10;
  return result;
}

double protocol witness for static Component.__store(attribute:to:offset:) in conformance _Proto_AnimationLibraryComponent_v1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  outlined destroy of _Proto_AnimationLibraryComponent_v1(a2);
  outlined init with copy of __REAssetService(a1, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  result = *&v7;
  *a2 = v7;
  *(a2 + 16) = v8;
  *(a2 + 32) = v9;
  return result;
}

void protocol witness for static Component.__free(to:offset:) in conformance _Proto_AnimationLibraryComponent_v1(uint64_t a1)
{
  outlined destroy of _Proto_AnimationLibraryComponent_v1(a1);

  JUMPOUT(0x1C6902A30);
}

uint64_t protocol witness for static Component.__load(from:offset:) in conformance AnimationLibraryComponent@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a5@<X8>)
{
  a5[3] = a2;
  a5[4] = a3;
  v7 = swift_allocObject();
  *a5 = v7;
  v9 = *a1;
  v8 = a1[1];
  v10 = a1[2];
  v11 = a1[3];
  v12 = a1[4];
  v7[2] = v9;
  v7[3] = v8;
  v7[4] = v10;
  v7[5] = v11;
  v7[6] = v12;

  outlined copy of String??(v10, v11);
}

double protocol witness for static Component.__store(attribute:to:offset:deinitialize:) in conformance VideoComponent(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  if (a4)
  {
    v6 = a1;
    outlined destroy of VideoComponent(a2);
    a1 = v6;
  }

  outlined init with copy of __REAssetService(a1, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  *a2 = v8;
  *(a2 + 16) = v9;
  result = *&v10;
  *(a2 + 32) = v10;
  *(a2 + 48) = v11;
  return result;
}

double protocol witness for static Component.__store(attribute:to:offset:) in conformance VideoComponent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  outlined destroy of VideoComponent(a2);
  outlined init with copy of __REAssetService(a1, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  *a2 = v7;
  *(a2 + 16) = v8;
  result = *&v9;
  *(a2 + 32) = v9;
  *(a2 + 48) = v10;
  return result;
}

void protocol witness for static Component.__free(to:offset:) in conformance VideoComponent(uint64_t a1)
{
  outlined destroy of VideoComponent(a1);

  JUMPOUT(0x1C6902A30);
}

double protocol witness for static Component.__load(from:) in conformance VirtualEnvironmentProbeComponent@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v4;
  a2[3] = v5;
  return outlined copy of VirtualEnvironmentProbeComponent.Source(v3, v2, v4);
}

double protocol witness for static Component.__store(attribute:to:offset:deinitialize:) in conformance VirtualEnvironmentProbeComponent(uint64_t a1, _OWORD *a2, uint64_t a3, char a4, uint64_t a5)
{
  if (a4)
  {
    v6 = a1;
    outlined destroy of VirtualEnvironmentProbeComponent(a2);
    a1 = v6;
  }

  outlined init with copy of __REAssetService(a1, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  result = *&v8;
  *a2 = v8;
  a2[1] = v9;
  return result;
}

double protocol witness for static Component.__store(attribute:to:offset:) in conformance VirtualEnvironmentProbeComponent(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  outlined destroy of VirtualEnvironmentProbeComponent(a2);
  outlined init with copy of __REAssetService(a1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  result = *&v7;
  *a2 = v7;
  a2[1] = v8;
  return result;
}

void protocol witness for static Component.__free(to:offset:) in conformance VirtualEnvironmentProbeComponent(uint64_t a1)
{
  outlined destroy of VirtualEnvironmentProbeComponent(a1);

  JUMPOUT(0x1C6902A30);
}

double protocol witness for static Component.__load(from:offset:) in conformance VirtualEnvironmentProbeComponent@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  a4[3] = a2;
  a4[4] = a3;
  v6 = swift_allocObject();
  *a4 = v6;
  v8 = *a1;
  v7 = a1[1];
  v9 = a1[2];
  v10 = a1[3];
  v6[2] = *a1;
  v6[3] = v7;
  v6[4] = v9;
  v6[5] = v10;

  return outlined copy of VirtualEnvironmentProbeComponent.Source(v8, v7, v9);
}

void *protocol witness for static Component.__store(attribute:to:offset:deinitialize:) in conformance MXIComponent(uint64_t a1, void *a2, uint64_t a3, char a4, uint64_t a5)
{
  if (a4)
  {
    v6 = a1;
    outlined destroy of MXIComponent(a2);
    a1 = v6;
  }

  outlined init with copy of __REAssetService(a1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  return memcpy(a2, v8, 0x105uLL);
}

void *protocol witness for static Component.__store(attribute:to:offset:) in conformance MXIComponent(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  outlined destroy of MXIComponent(a2);
  outlined init with copy of __REAssetService(a1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  return memcpy(a2, v7, 0x105uLL);
}

void protocol witness for static Component.__free(to:offset:) in conformance MXIComponent(uint64_t a1)
{
  outlined destroy of MXIComponent(a1);

  JUMPOUT(0x1C6902A30);
}

float protocol witness for static Component.__store(attribute:to:offset:deinitialize:) in conformance EnvironmentLightingConfigurationComponent(uint64_t a1, float *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  outlined init with copy of __REAssetService(a1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  result = v7;
  *a2 = v7;
  return result;
}

float protocol witness for static Component.__store(attribute:to:offset:) in conformance EnvironmentLightingConfigurationComponent(uint64_t a1, float *a2, uint64_t a3, uint64_t a4)
{
  outlined init with copy of __REAssetService(a1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  result = v6;
  *a2 = v6;
  return result;
}

uint64_t protocol witness for static Component.__load(from:) in conformance _proto_StereoProjectiveTransformCameraComponent_v1@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;
}

double protocol witness for static Component.__store(attribute:to:offset:deinitialize:) in conformance _proto_StereoProjectiveTransformCameraComponent_v1(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  if (a4)
  {
    v6 = a1;
    outlined destroy of _proto_StereoProjectiveTransformCameraComponent_v1(a2);
    a1 = v6;
  }

  outlined init with copy of __REAssetService(a1, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  result = *&v8;
  *a2 = v8;
  *(a2 + 16) = v9;
  return result;
}

double protocol witness for static Component.__store(attribute:to:offset:) in conformance _proto_StereoProjectiveTransformCameraComponent_v1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  outlined destroy of _proto_StereoProjectiveTransformCameraComponent_v1(a2);
  outlined init with copy of __REAssetService(a1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  result = *&v7;
  *a2 = v7;
  *(a2 + 16) = v8;
  return result;
}

void protocol witness for static Component.__free(to:offset:) in conformance _proto_StereoProjectiveTransformCameraComponent_v1(uint64_t a1)
{
  outlined destroy of _proto_StereoProjectiveTransformCameraComponent_v1(a1);

  JUMPOUT(0x1C6902A30);
}

uint64_t protocol witness for static Component.__load(from:offset:) in conformance _proto_StereoProjectiveTransformCameraComponent_v1@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  a4[3] = a2;
  a4[4] = a3;
  v4 = a1[1];
  v5 = a1[2];
  *a4 = *a1;
  a4[1] = v4;
  a4[2] = v5;
}

uint64_t protocol witness for static Component.__load(from:) in conformance ParticleEmitterComponent@<X0>(void *__src@<X0>, void *a2@<X8>)
{
  memcpy(__dst, __src, 0x382uLL);
  memcpy(a2, __src, 0x382uLL);
  return outlined init with copy of ParticleEmitterComponent(__dst, &v5);
}

void *protocol witness for static Component.__store(attribute:to:offset:deinitialize:) in conformance ParticleEmitterComponent(uint64_t a1, void *a2, uint64_t a3, char a4, uint64_t a5)
{
  if (a4)
  {
    v6 = a1;
    outlined destroy of ParticleEmitterComponent(a2);
    a1 = v6;
  }

  outlined init with copy of __REAssetService(a1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  return memcpy(a2, __src, 0x382uLL);
}

void *protocol witness for static Component.__store(attribute:to:offset:) in conformance ParticleEmitterComponent(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  outlined destroy of ParticleEmitterComponent(a2);
  outlined init with copy of __REAssetService(a1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  return memcpy(a2, __src, 0x382uLL);
}

void protocol witness for static Component.__free(to:offset:) in conformance ParticleEmitterComponent(uint64_t a1)
{
  outlined destroy of ParticleEmitterComponent(a1);

  JUMPOUT(0x1C6902A30);
}

uint64_t protocol witness for static Component.__load(from:offset:) in conformance ParticleEmitterComponent@<X0>(const void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  a4[3] = a2;
  a4[4] = a3;
  v6 = swift_allocObject();
  *a4 = v6;
  memcpy(__dst, a1, 0x382uLL);
  memcpy((v6 + 16), a1, 0x382uLL);
  return outlined init with copy of ParticleEmitterComponent(__dst, &v8);
}

void protocol witness for static Component.__free(to:offset:) in conformance MeshInstancesComponent(uint64_t a1)
{
  outlined destroy of MeshInstancesComponent(a1);

  JUMPOUT(0x1C6902A30);
}

void protocol witness for static Component.__free(to:offset:) in conformance _proto_MeshInstancesComponent(uint64_t a1)
{
  outlined destroy of _proto_MeshInstancesComponent(a1);

  JUMPOUT(0x1C6902A30);
}

uint64_t protocol witness for static Component.__load(from:) in conformance ForceEffectComponent@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  *a2 = *a1;
  *(a2 + 8) = v2;
}

uint64_t protocol witness for static Component.__store(attribute:to:offset:deinitialize:) in conformance ForceEffectComponent(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  if (a4)
  {
    v6 = a1;
    outlined destroy of ForceEffectComponent(a2);
    a1 = v6;
  }

  outlined init with copy of __REAssetService(a1, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  result = swift_dynamicCast();
  *a2 = v8;
  *(a2 + 8) = v9;
  return result;
}

uint64_t protocol witness for static Component.__store(attribute:to:offset:) in conformance ForceEffectComponent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  outlined destroy of ForceEffectComponent(a2);
  outlined init with copy of __REAssetService(a1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  result = swift_dynamicCast();
  *a2 = v7;
  *(a2 + 8) = v8;
  return result;
}

void protocol witness for static Component.__free(to:offset:) in conformance ForceEffectComponent(uint64_t a1)
{
  outlined destroy of ForceEffectComponent(a1);

  JUMPOUT(0x1C6902A30);
}

uint64_t protocol witness for static Component.__load(from:offset:) in conformance ForceEffectComponent@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  *(a4 + 24) = a2;
  *(a4 + 32) = a3;
  v4 = *(a1 + 8);
  *a4 = *a1;
  *(a4 + 8) = v4;
}

uint64_t protocol witness for static Component.__store(attribute:to:offset:deinitialize:) in conformance AudioLibraryComponent(uint64_t a1, void *a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, void (*a7)(void *))
{
  if (a4)
  {
    v8 = a1;
    (a7)(a2, a2, a3);
    a1 = v8;
  }

  outlined init with copy of __REAssetService(a1, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  result = swift_dynamicCast();
  *a2 = v10;
  return result;
}

uint64_t protocol witness for static Component.__store(attribute:to:offset:) in conformance AudioLibraryComponent(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void *))
{
  a6(a2);
  outlined init with copy of __REAssetService(a1, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  result = swift_dynamicCast();
  *a2 = v9;
  return result;
}

void protocol witness for static Component.__free(to:offset:) in conformance GeometricPinsComponent(uint64_t a1)
{
  outlined destroy of GeometricPinsComponent(a1);

  JUMPOUT(0x1C6902A30);
}

__n128 protocol witness for static Component.__load(from:) in conformance ClippingPrimitiveComponent@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *a1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  v6 = *(a1 + 64);
  v7 = *(a1 + 80);
  v8 = *(a1 + 81);
  *a2 = *a1;
  *(a2 + 16) = v3;
  *(a2 + 32) = v4;
  *(a2 + 48) = v5;
  *(a2 + 64) = v6;
  *(a2 + 80) = v7;
  *(a2 + 81) = v8;
  return result;
}

double protocol witness for static Component.__store(attribute:to:offset:deinitialize:) in conformance ClippingPrimitiveComponent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  outlined init with copy of __REAssetService(a1, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  result = *&v7;
  *a2 = v7;
  *(a2 + 16) = v8;
  *(a2 + 32) = v9;
  *(a2 + 48) = v10;
  *(a2 + 64) = v11;
  *(a2 + 80) = v12;
  *(a2 + 81) = v13;
  return result;
}

double protocol witness for static Component.__store(attribute:to:offset:) in conformance ClippingPrimitiveComponent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  outlined init with copy of __REAssetService(a1, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  result = *&v6;
  *a2 = v6;
  *(a2 + 16) = v7;
  *(a2 + 32) = v8;
  *(a2 + 48) = v9;
  *(a2 + 64) = v10;
  *(a2 + 80) = v11;
  *(a2 + 81) = v12;
  return result;
}

__n128 protocol witness for static Component.__load(from:offset:) in conformance ClippingPrimitiveComponent@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  a4[3] = a2;
  a4[4] = a3;
  v6 = swift_allocObject();
  *a4 = v6;
  result = *a1;
  v8 = *(a1 + 16);
  v9 = *(a1 + 32);
  v10 = *(a1 + 48);
  v11 = *(a1 + 64);
  v12 = *(a1 + 80);
  v13 = *(a1 + 81);
  *(v6 + 16) = *a1;
  *(v6 + 32) = v8;
  *(v6 + 48) = v9;
  *(v6 + 64) = v10;
  *(v6 + 80) = v11;
  *(v6 + 96) = v12;
  *(v6 + 97) = v13;
  return result;
}

uint64_t protocol witness for static Component.__load(from:) in conformance VideoPlayerComponent@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 80);
  v3 = *(a1 + 112);
  v20 = *(a1 + 96);
  v21[0] = v3;
  v4 = *(a1 + 16);
  v5 = *(a1 + 48);
  v16 = *(a1 + 32);
  v6 = v16;
  v17 = v5;
  v7 = *(a1 + 48);
  v8 = *(a1 + 80);
  v18 = *(a1 + 64);
  v9 = v18;
  v19 = v8;
  v10 = *(a1 + 16);
  v15[0] = *a1;
  v11 = v15[0];
  v15[1] = v10;
  v12 = *(a1 + 112);
  *(a2 + 96) = v20;
  *(a2 + 112) = v12;
  *(a2 + 32) = v6;
  *(a2 + 48) = v7;
  *(a2 + 64) = v9;
  *(a2 + 80) = v2;
  *(v21 + 13) = *(a1 + 125);
  *(a2 + 125) = *(a1 + 125);
  *a2 = v11;
  *(a2 + 16) = v4;
  return outlined init with copy of VideoPlayerComponent(v15, &v14);
}

__n128 protocol witness for static Component.__store(attribute:to:offset:deinitialize:) in conformance VideoPlayerComponent(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  if (a4)
  {
    v6 = a1;
    outlined destroy of VideoPlayerComponent(a2);
    a1 = v6;
  }

  outlined init with copy of __REAssetService(a1, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  v7 = v19[0];
  *(a2 + 96) = v18;
  *(a2 + 112) = v7;
  *(a2 + 125) = *(v19 + 13);
  v8 = v15;
  *(a2 + 32) = v14;
  *(a2 + 48) = v8;
  v9 = v17;
  *(a2 + 64) = v16;
  *(a2 + 80) = v9;
  result = v13;
  *a2 = v12;
  *(a2 + 16) = result;
  return result;
}

__n128 protocol witness for static Component.__store(attribute:to:offset:) in conformance VideoPlayerComponent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  outlined destroy of VideoPlayerComponent(a2);
  outlined init with copy of __REAssetService(a1, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  v6 = v18[0];
  *(a2 + 96) = v17;
  *(a2 + 112) = v6;
  *(a2 + 125) = *(v18 + 13);
  v7 = v14;
  *(a2 + 32) = v13;
  *(a2 + 48) = v7;
  v8 = v16;
  *(a2 + 64) = v15;
  *(a2 + 80) = v8;
  result = v12;
  *a2 = v11;
  *(a2 + 16) = result;
  return result;
}

void protocol witness for static Component.__free(to:offset:) in conformance VideoPlayerComponent(uint64_t a1)
{
  outlined destroy of VideoPlayerComponent(a1);

  JUMPOUT(0x1C6902A30);
}

uint64_t protocol witness for static Component.__load(from:offset:) in conformance VideoPlayerComponent@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  a4[3] = a2;
  a4[4] = a3;
  v6 = swift_allocObject();
  v7 = *(a1 + 80);
  v8 = *(a1 + 112);
  v25 = *(a1 + 96);
  v26[0] = v8;
  v9 = *(a1 + 16);
  v10 = *(a1 + 48);
  v21 = *(a1 + 32);
  v11 = v21;
  v22 = v10;
  v12 = *(a1 + 48);
  v13 = *(a1 + 80);
  v23 = *(a1 + 64);
  v14 = v23;
  v24 = v13;
  v15 = *(a1 + 16);
  v20[0] = *a1;
  v16 = v20[0];
  v20[1] = v15;
  v17 = *(a1 + 112);
  *(v6 + 112) = v25;
  *(v6 + 128) = v17;
  *(v6 + 48) = v11;
  *(v6 + 64) = v12;
  *(v6 + 80) = v14;
  *(v6 + 96) = v7;
  *a4 = v6;
  *(v26 + 13) = *(a1 + 125);
  *(v6 + 141) = *(a1 + 125);
  *(v6 + 16) = v16;
  *(v6 + 32) = v9;
  return outlined init with copy of VideoPlayerComponent(v20, &v19);
}

uint64_t protocol witness for static Component.__load(from:) in conformance __AccessibilityComponent@<X0>(_OWORD *a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v4 = a1[3];
  v8 = a1[2];
  v3 = v8;
  v9 = v4;
  *a2 = v7[0];
  a2[1] = v2;
  a2[2] = v3;
  a2[3] = v4;
  return outlined init with copy of __AccessibilityComponent(v7, &v6);
}

double protocol witness for static Component.__store(attribute:to:offset:deinitialize:) in conformance __AccessibilityComponent(uint64_t a1, _OWORD *a2, uint64_t a3, char a4, uint64_t a5)
{
  if (a4)
  {
    v6 = a1;
    outlined destroy of __AccessibilityComponent(a2);
    a1 = v6;
  }

  outlined init with copy of __REAssetService(a1, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  v7 = v12;
  *a2 = v11;
  a2[1] = v7;
  result = *&v13;
  v9 = v14;
  a2[2] = v13;
  a2[3] = v9;
  return result;
}

double protocol witness for static Component.__store(attribute:to:offset:) in conformance __AccessibilityComponent(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  outlined destroy of __AccessibilityComponent(a2);
  outlined init with copy of __REAssetService(a1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  v6 = v11;
  *a2 = v10;
  a2[1] = v6;
  result = *&v12;
  v8 = v13;
  a2[2] = v12;
  a2[3] = v8;
  return result;
}

void protocol witness for static Component.__free(to:offset:) in conformance __AccessibilityComponent(uint64_t a1)
{
  outlined destroy of __AccessibilityComponent(a1);

  JUMPOUT(0x1C6902A30);
}

uint64_t protocol witness for static Component.__load(from:offset:) in conformance __AccessibilityComponent@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  a4[3] = a2;
  a4[4] = a3;
  v6 = swift_allocObject();
  *a4 = v6;
  v7 = a1[1];
  v12[0] = *a1;
  v12[1] = v7;
  v9 = a1[3];
  v13 = a1[2];
  v8 = v13;
  v14 = v9;
  v6[1] = v12[0];
  v6[2] = v7;
  v6[3] = v8;
  v6[4] = v9;
  return outlined init with copy of __AccessibilityComponent(v12, &v11);
}

uint64_t protocol witness for static Component.__store(attribute:to:offset:deinitialize:) in conformance TextComponent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void))
{
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v16[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  if (v12)
  {
    v13 = v9;
    _s10RealityKit21BodyTrackingComponentVWOhTm_0(a2, a7);
    v9 = v13;
  }

  outlined init with copy of __REAssetService(v9, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  return _s10RealityKit21BodyTrackingComponentVWObTm_0(v11, a2, a7);
}

uint64_t protocol witness for static Component.__store(attribute:to:offset:) in conformance TextComponent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void))
{
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v15[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  _s10RealityKit21BodyTrackingComponentVWOhTm_0(v11, v12);
  outlined init with copy of __REAssetService(a1, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  return _s10RealityKit21BodyTrackingComponentVWObTm_0(v10, a2, a6);
}

void protocol witness for static Component.__free(to:offset:) in conformance AccessibilityComponent(uint64_t a1)
{
  _s10RealityKit21BodyTrackingComponentVWOhTm_0(a1, type metadata accessor for AccessibilityComponent);

  JUMPOUT(0x1C6902A30);
}

uint64_t protocol witness for static Component.__load(from:offset:) in conformance TextComponent@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t (*a4)(void)@<X4>, uint64_t *a5@<X8>)
{
  a5[3] = a2;
  a5[4] = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a5);
  return outlined init with copy of BodyTrackingComponent(a1, boxed_opaque_existential_1, a4);
}

uint64_t protocol witness for static Component.__load(from:) in conformance ImagePresentationComponent@<X0>(_OWORD *a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = a1[3];
  v9 = a1[2];
  v10 = v2;
  v11 = a1[4];
  v3 = v11;
  v4 = a1[1];
  v8[0] = *a1;
  v5 = v8[0];
  v8[1] = v4;
  a2[2] = v9;
  a2[3] = v2;
  a2[4] = v3;
  *a2 = v5;
  a2[1] = v4;
  return outlined init with copy of ImagePresentationComponent(v8, &v7);
}

__n128 protocol witness for static Component.__store(attribute:to:offset:deinitialize:) in conformance ImagePresentationComponent(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  if (a4)
  {
    v6 = a1;
    outlined destroy of ImagePresentationComponent(a2);
    a1 = v6;
  }

  outlined init with copy of __REAssetService(a1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  v7 = v13;
  *(a2 + 32) = v12;
  *(a2 + 48) = v7;
  *(a2 + 64) = v14;
  result = v11;
  *a2 = v10;
  *(a2 + 16) = result;
  return result;
}

__n128 protocol witness for static Component.__store(attribute:to:offset:) in conformance ImagePresentationComponent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  outlined destroy of ImagePresentationComponent(a2);
  outlined init with copy of __REAssetService(a1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  v6 = v12;
  *(a2 + 32) = v11;
  *(a2 + 48) = v6;
  *(a2 + 64) = v13;
  result = v10;
  *a2 = v9;
  *(a2 + 16) = result;
  return result;
}

void protocol witness for static Component.__free(to:offset:) in conformance ImagePresentationComponent(uint64_t a1)
{
  outlined destroy of ImagePresentationComponent(a1);

  JUMPOUT(0x1C6902A30);
}

uint64_t protocol witness for static Component.__load(from:offset:) in conformance ImagePresentationComponent@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  a4[3] = a2;
  a4[4] = a3;
  v6 = swift_allocObject();
  *a4 = v6;
  v7 = a1[3];
  v14 = a1[2];
  v15 = v7;
  v16 = a1[4];
  v8 = v16;
  v9 = a1[1];
  v13[0] = *a1;
  v10 = v13[0];
  v13[1] = v9;
  v6[3] = v14;
  v6[4] = v7;
  v6[5] = v8;
  v6[1] = v10;
  v6[2] = v9;
  return outlined init with copy of ImagePresentationComponent(v13, &v12);
}

double protocol witness for static Component.__store(attribute:to:offset:deinitialize:) in conformance ChannelAudioComponent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  outlined init with copy of __REAssetService(a1, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  result = v8;
  *a2 = v7;
  *(a2 + 16) = v8;
  *(a2 + 24) = v9;
  return result;
}

double protocol witness for static Component.__store(attribute:to:offset:) in conformance ChannelAudioComponent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  outlined init with copy of __REAssetService(a1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  result = v7;
  *a2 = v6;
  *(a2 + 16) = v7;
  *(a2 + 24) = v8;
  return result;
}

double protocol witness for static Component.__load(from:offset:) in conformance ChannelAudioComponent@<D0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  a4[3] = a2;
  a4[4] = a3;
  v6 = swift_allocObject();
  *a4 = v6;
  result = *(a1 + 16);
  v8 = *(a1 + 24);
  *(v6 + 16) = *a1;
  *(v6 + 32) = result;
  *(v6 + 40) = v8;
  return result;
}

float protocol witness for static Component.__store(attribute:to:offset:deinitialize:) in conformance OrthographicCameraComponent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  outlined init with copy of __REAssetService(a1, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  result = v8;
  *a2 = v7;
  *(a2 + 8) = v8;
  *(a2 + 12) = v9;
  return result;
}

float protocol witness for static Component.__store(attribute:to:offset:) in conformance OrthographicCameraComponent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  outlined init with copy of __REAssetService(a1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  result = v7;
  *a2 = v6;
  *(a2 + 8) = v7;
  *(a2 + 12) = v8;
  return result;
}

float protocol witness for static Component.__load(from:offset:) in conformance OrthographicCameraComponent@<S0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  *(a4 + 24) = a2;
  *(a4 + 32) = a3;
  result = *(a1 + 8);
  v5 = *(a1 + 12);
  *a4 = *a1;
  *(a4 + 8) = result;
  *(a4 + 12) = v5;
  return result;
}

double protocol witness for static Component.__store(attribute:to:offset:deinitialize:) in conformance __EntityInfoComponent(uint64_t a1, _OWORD *a2, uint64_t a3, char a4, uint64_t a5)
{
  if (a4)
  {
    v6 = a1;
    outlined destroy of __EntityInfoComponent(a2);
    a1 = v6;
  }

  outlined init with copy of __REAssetService(a1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  result = *&v8;
  *a2 = v8;
  return result;
}

double protocol witness for static Component.__store(attribute:to:offset:) in conformance __EntityInfoComponent(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  outlined destroy of __EntityInfoComponent(a2);
  outlined init with copy of __REAssetService(a1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  result = *&v7;
  *a2 = v7;
  return result;
}

uint64_t protocol witness for static Component.__store(attribute:to:offset:deinitialize:) in conformance AttachedTransformComponent(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  if (a4)
  {
    v6 = a1;
    outlined destroy of AttachedTransformComponent(a2);
    a1 = v6;
  }

  outlined init with copy of __REAssetService(a1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  return outlined init with take of AttachedTransformComponent(&v8, a2);
}

uint64_t protocol witness for static Component.__store(attribute:to:offset:) in conformance AttachedTransformComponent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  outlined destroy of AttachedTransformComponent(a2);
  outlined init with copy of __REAssetService(a1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  return outlined init with take of AttachedTransformComponent(&v7, a2);
}

void protocol witness for static Component.__free(to:offset:) in conformance AttachedTransformComponent(uint64_t a1)
{
  outlined destroy of AttachedTransformComponent(a1);

  JUMPOUT(0x1C6902A30);
}

uint64_t protocol witness for static Component.__load(from:) in conformance ReferenceComponent@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(a1 + 32);
  v7 = *(a1 + 33);
  v8 = a1[5];
  *a2 = v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  *(a2 + 32) = v6;
  *(a2 + 33) = v7;
  *(a2 + 40) = v8;
}

double protocol witness for static Component.__store(attribute:to:offset:deinitialize:) in conformance ReferenceComponent(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  if (a4)
  {
    v6 = a1;
    outlined destroy of ReferenceComponent(a2);
    a1 = v6;
  }

  outlined init with copy of __REAssetService(a1, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  result = *&v8;
  *a2 = v8;
  *(a2 + 16) = v9;
  *(a2 + 24) = v10;
  *(a2 + 32) = v11;
  *(a2 + 33) = v12;
  *(a2 + 40) = v13;
  return result;
}

double protocol witness for static Component.__store(attribute:to:offset:) in conformance ReferenceComponent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  outlined destroy of ReferenceComponent(a2);
  outlined init with copy of __REAssetService(a1, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  result = *&v7;
  *a2 = v7;
  *(a2 + 16) = v8;
  *(a2 + 24) = v9;
  *(a2 + 32) = v10;
  *(a2 + 33) = v11;
  *(a2 + 40) = v12;
  return result;
}

void protocol witness for static Component.__free(to:offset:) in conformance ReferenceComponent(uint64_t a1)
{
  outlined destroy of ReferenceComponent(a1);

  JUMPOUT(0x1C6902A30);
}

uint64_t protocol witness for static Component.__load(from:offset:) in conformance ReferenceComponent@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  a4[3] = a2;
  a4[4] = a3;
  v6 = swift_allocObject();
  *a4 = v6;
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  v11 = *(a1 + 33);
  v12 = *(a1 + 40);
  *(v6 + 16) = *a1;
  *(v6 + 24) = v7;
  *(v6 + 32) = v8;
  *(v6 + 40) = v9;
  *(v6 + 48) = v10;
  *(v6 + 49) = v11;
  *(v6 + 56) = v12;
}

id protocol witness for static Component.__load(from:) in conformance PhysicsSimulationComponent@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v4;
  *(a2 + 32) = v2;
  *(a2 + 40) = v3;
  return v3;
}

__n128 protocol witness for static Component.__store(attribute:to:offset:deinitialize:) in conformance PhysicsSimulationComponent(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  if (a4)
  {
    v6 = a1;
    outlined destroy of PhysicsSimulationComponent(a2);
    a1 = v6;
  }

  outlined init with copy of __REAssetService(a1, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  result = v9;
  *a2 = v8;
  *(a2 + 16) = v9;
  *(a2 + 32) = v10;
  *(a2 + 40) = v11;
  return result;
}

__n128 protocol witness for static Component.__store(attribute:to:offset:) in conformance PhysicsSimulationComponent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  outlined destroy of PhysicsSimulationComponent(a2);
  outlined init with copy of __REAssetService(a1, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  result = v8;
  *a2 = v7;
  *(a2 + 16) = v8;
  *(a2 + 32) = v9;
  *(a2 + 40) = v10;
  return result;
}

void protocol witness for static Component.__free(to:offset:) in conformance PhysicsSimulationComponent(uint64_t a1)
{
  outlined destroy of PhysicsSimulationComponent(a1);

  JUMPOUT(0x1C6902A30);
}

id protocol witness for static Component.__load(from:offset:) in conformance PhysicsSimulationComponent@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  a4[3] = a2;
  a4[4] = a3;
  v6 = swift_allocObject();
  *a4 = v6;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 16);
  *(v6 + 16) = *a1;
  *(v6 + 32) = v9;
  *(v6 + 48) = v7;
  *(v6 + 56) = v8;

  return v8;
}

uint64_t protocol witness for static Component.__load(from:) in conformance CollisionComponent@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 5);
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 12) = *(a1 + 12);
  *(a2 + 20) = v3;
}

double protocol witness for static Component.__store(attribute:to:offset:deinitialize:) in conformance CollisionComponent(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  if (a4)
  {
    v6 = a1;
    outlined destroy of CollisionComponent(a2);
    a1 = v6;
  }

  outlined init with copy of __REAssetService(a1, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  *a2 = v8;
  *(a2 + 8) = v9;
  result = v10;
  *(a2 + 12) = v10;
  *(a2 + 20) = v11;
  return result;
}

double protocol witness for static Component.__store(attribute:to:offset:) in conformance CollisionComponent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  outlined destroy of CollisionComponent(a2);
  outlined init with copy of __REAssetService(a1, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  *a2 = v7;
  *(a2 + 8) = v8;
  result = v9;
  *(a2 + 12) = v9;
  *(a2 + 20) = v10;
  return result;
}

void protocol witness for static Component.__free(to:offset:) in conformance CollisionComponent(uint64_t a1)
{
  outlined destroy of CollisionComponent(a1);

  JUMPOUT(0x1C6902A30);
}

uint64_t protocol witness for static Component.__load(from:offset:) in conformance CollisionComponent@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  *(a4 + 24) = a2;
  *(a4 + 32) = a3;
  v4 = *(a1 + 8);
  v5 = *(a1 + 5);
  *a4 = *a1;
  *(a4 + 8) = v4;
  *(a4 + 12) = *(a1 + 12);
  *(a4 + 20) = v5;
}

void protocol witness for static Component.__free(to:offset:) in conformance AnchoringComponent(uint64_t a1)
{
  _s10RealityKit21BodyTrackingComponentVWOhTm_0(a1, type metadata accessor for AnchoringComponent);

  JUMPOUT(0x1C6902A30);
}

__n128 protocol witness for static Component.__load(from:) in conformance CharacterControllerComponent@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v2;
  result = *(a1 + 32);
  *(a2 + 32) = result;
  *(a2 + 48) = *(a1 + 48);
  return result;
}

double protocol witness for static Component.__store(attribute:to:offset:deinitialize:) in conformance CharacterControllerComponent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  outlined init with copy of __REAssetService(a1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  v6 = v10;
  *a2 = v9;
  *(a2 + 16) = v6;
  result = *&v11;
  *(a2 + 32) = v11;
  *(a2 + 48) = v12;
  return result;
}

double protocol witness for static Component.__store(attribute:to:offset:) in conformance CharacterControllerComponent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  outlined init with copy of __REAssetService(a1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  v5 = v9;
  *a2 = v8;
  *(a2 + 16) = v5;
  result = *&v10;
  *(a2 + 32) = v10;
  *(a2 + 48) = v11;
  return result;
}

__n128 protocol witness for static Component.__load(from:offset:) in conformance CharacterControllerComponent@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  a4[3] = a2;
  a4[4] = a3;
  v6 = swift_allocObject();
  *a4 = v6;
  v7 = *(a1 + 16);
  *(v6 + 16) = *a1;
  *(v6 + 32) = v7;
  result = *(a1 + 32);
  *(v6 + 48) = result;
  *(v6 + 64) = *(a1 + 48);
  return result;
}

void protocol witness for static Component.__free(to:offset:) in conformance BodyTrackingComponent(uint64_t a1)
{
  _s10RealityKit21BodyTrackingComponentVWOhTm_0(a1, type metadata accessor for BodyTrackingComponent);

  JUMPOUT(0x1C6902A30);
}

double protocol witness for static Component.__store(attribute:to:offset:deinitialize:) in conformance EventSubscriptionComponent(uint64_t a1, _OWORD *a2, uint64_t a3, char a4, uint64_t a5)
{
  if (a4)
  {
    v6 = a1;
    outlined destroy of EventSubscriptionComponent(a2);
    a1 = v6;
  }

  outlined init with copy of __REAssetService(a1, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  *a2 = v8;
  a2[1] = v9;
  result = *&v10;
  a2[2] = v10;
  return result;
}

double protocol witness for static Component.__store(attribute:to:offset:) in conformance EventSubscriptionComponent(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  outlined destroy of EventSubscriptionComponent(a2);
  outlined init with copy of __REAssetService(a1, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  *a2 = v7;
  a2[1] = v8;
  result = *&v9;
  a2[2] = v9;
  return result;
}

void protocol witness for static Component.__free(to:offset:) in conformance EventSubscriptionComponent(uint64_t a1)
{
  outlined destroy of EventSubscriptionComponent(a1);

  JUMPOUT(0x1C6902A30);
}

uint64_t protocol witness for static Component.__load(from:offset:) in conformance ManipulationComponent@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t (*a7)(uint64_t, uint64_t)@<X7>, uint64_t *a8@<X8>)
{
  a8[3] = a2;
  a8[4] = a3;
  v10 = swift_allocObject();
  *a8 = v10;

  return a7(a1, v10 + 16);
}

double protocol witness for static Component.__load(from:) in conformance _Proto_BlendShapeWeightsComponent_v1@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;

  return result;
}

double protocol witness for static Component.__store(attribute:to:offset:deinitialize:) in conformance _Proto_BlendShapeWeightsComponent_v1(uint64_t a1, _OWORD *a2, uint64_t a3, char a4, uint64_t a5)
{
  if (a4)
  {
    v6 = a1;
    outlined destroy of _Proto_BlendShapeWeightsComponent_v1(a2);
    a1 = v6;
  }

  outlined init with copy of __REAssetService(a1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  result = *&v8;
  *a2 = v8;
  return result;
}

double protocol witness for static Component.__store(attribute:to:offset:) in conformance _Proto_BlendShapeWeightsComponent_v1(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  outlined destroy of _Proto_BlendShapeWeightsComponent_v1(a2);
  outlined init with copy of __REAssetService(a1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  result = *&v7;
  *a2 = v7;
  return result;
}

void protocol witness for static Component.__free(to:offset:) in conformance _Proto_BlendShapeWeightsComponent_v1(uint64_t a1)
{
  outlined destroy of _Proto_BlendShapeWeightsComponent_v1(a1);

  JUMPOUT(0x1C6902A30);
}

double protocol witness for static Component.__load(from:offset:) in conformance _Proto_BlendShapeWeightsComponent_v1@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  a4[3] = a2;
  a4[4] = a3;
  v4 = a1[1];
  *a4 = *a1;
  a4[1] = v4;

  return result;
}

uint64_t protocol witness for static Component.__load(from:) in conformance BlendShapeWeightsComponent@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
}

double protocol witness for static Component.__store(attribute:to:offset:deinitialize:) in conformance BlendShapeWeightsComponent(uint64_t a1, _OWORD *a2, uint64_t a3, char a4, uint64_t a5)
{
  if (a4)
  {
    v6 = a1;
    outlined destroy of BlendShapeWeightsComponent(a2);
    a1 = v6;
  }

  outlined init with copy of __REAssetService(a1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  result = *&v8;
  *a2 = v8;
  return result;
}

double protocol witness for static Component.__store(attribute:to:offset:) in conformance BlendShapeWeightsComponent(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  outlined destroy of BlendShapeWeightsComponent(a2);
  outlined init with copy of __REAssetService(a1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  result = *&v7;
  *a2 = v7;
  return result;
}

void protocol witness for static Component.__free(to:offset:) in conformance BlendShapeWeightsComponent(uint64_t a1)
{
  outlined destroy of BlendShapeWeightsComponent(a1);

  JUMPOUT(0x1C6902A30);
}

uint64_t protocol witness for static Component.__load(from:offset:) in conformance BlendShapeWeightsComponent@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  a4[3] = a2;
  a4[4] = a3;
  v4 = a1[1];
  *a4 = *a1;
  a4[1] = v4;
}

__n128 protocol witness for static Component.__load(from:) in conformance Transform@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  result = *a1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 32);
  *a2 = *a1;
  a2[1] = v3;
  a2[2] = v4;
  return result;
}

double protocol witness for static Component.__store(attribute:to:offset:deinitialize:) in conformance Transform(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  outlined init with copy of __REAssetService(a1, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  result = *&v7;
  *a2 = v7;
  a2[1] = v8;
  a2[2] = v9;
  return result;
}

double protocol witness for static Component.__store(attribute:to:offset:) in conformance Transform(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  outlined init with copy of __REAssetService(a1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  result = *&v6;
  *a2 = v6;
  a2[1] = v7;
  a2[2] = v8;
  return result;
}

__n128 protocol witness for static Component.__load(from:offset:) in conformance Transform@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  a4[3] = a2;
  a4[4] = a3;
  v6 = swift_allocObject();
  *a4 = v6;
  result = *a1;
  v8 = *(a1 + 16);
  v9 = *(a1 + 32);
  v6[1] = *a1;
  v6[2] = v8;
  v6[3] = v9;
  return result;
}

uint64_t protocol witness for static Component.__store(attribute:to:offset:deinitialize:) in conformance ClippingExceptionComponent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  outlined init with copy of __REAssetService(a1, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  return swift_dynamicCast();
}

uint64_t protocol witness for static Component.__store(attribute:to:offset:) in conformance ClippingExceptionComponent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  outlined init with copy of __REAssetService(a1, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  return swift_dynamicCast();
}

uint64_t protocol witness for static Component.__load(from:) in conformance PhysicsJointsComponent@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2;
  a2[1] = v3;
}

uint64_t protocol witness for static Component.__store(attribute:to:offset:deinitialize:) in conformance PhysicsJointsComponent(uint64_t a1, void *a2, uint64_t a3, char a4, uint64_t a5)
{
  if (a4)
  {
    v6 = a1;
    outlined destroy of PhysicsJointsComponent(a2);
    a1 = v6;
  }

  outlined init with copy of __REAssetService(a1, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  result = swift_dynamicCast();
  *a2 = v8;
  a2[1] = v9;
  return result;
}

uint64_t protocol witness for static Component.__store(attribute:to:offset:) in conformance PhysicsJointsComponent(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  outlined destroy of PhysicsJointsComponent(a2);
  outlined init with copy of __REAssetService(a1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  result = swift_dynamicCast();
  *a2 = v7;
  a2[1] = v8;
  return result;
}

void protocol witness for static Component.__free(to:offset:) in conformance PhysicsJointsComponent(uint64_t a1)
{
  outlined destroy of PhysicsJointsComponent(a1);

  JUMPOUT(0x1C6902A30);
}

uint64_t protocol witness for static Component.__load(from:offset:) in conformance PhysicsJointsComponent@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  a4[3] = a2;
  a4[4] = a3;
  v5 = *a1;
  v4 = a1[1];
  *a4 = v5;
  a4[1] = v4;
}

uint64_t specialized static Component.__store(attribute:to:offset:deinitialize:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v14[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  if (v10)
  {
    v11 = v7;
    UnsafeMutablePointer.deinitialize(count:)();
    v7 = v11;
  }

  outlined init with copy of __REAssetService(v7, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  return (*(v6 + 32))(a2, v9, a4);
}

uint64_t specialized static Component.__store(attribute:to:offset:)(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for Data.Deallocator();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of __REAssetService(a1, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
  swift_dynamicCast();
  v8 = v15;
  if (v15)
  {
    v9 = strlen(v15);
    (*(v5 + 104))(v7, *MEMORY[0x1E6969010], v4);
    v10 = specialized Data.init(bytesNoCopy:count:deallocator:)(v8, v9, v7);
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0xF000000000000000;
  }

  v16[0] = 0;
  CustomComponentProxy.updateJSON(with:)(v10, v12);
  outlined consume of Data?(v10, v12);
  v13 = v16[0];
  result = *a2;
  if (*a2)
  {
    result = RECIntrospectionFree();
  }

  *a2 = v13;
  return result;
}

void specialized static Component.__free(to:offset:)(uint64_t a1, uint64_t a2, __n128 a3)
{
  UnsafeMutablePointer.deinitialize(count:)();

  JUMPOUT(0x1C68F3DA0);
}

uint64_t outlined consume of ImagePresentationComponent.DataSource(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v7 = a7 >> 62;
  if ((a7 >> 62) <= 1)
  {
    if (!v7)
    {
      return result;
    }

    goto LABEL_6;
  }

  if (v7 != 2)
  {

LABEL_6:
  }
}

uint64_t outlined consume of VirtualEnvironmentProbeComponent.Source(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    if (a3 >> 62 != 1)
    {
      return result;
    }
  }
}

double outlined copy of VirtualEnvironmentProbeComponent.Source(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    if (a3 >> 62 != 1)
    {
      return result;
    }
  }

  return result;
}

uint64_t objectdestroy_45Tm()
{

  if (*(v0 + 40) != 1)
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t outlined init with copy of BodyTrackingComponent(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s10RealityKit21BodyTrackingComponentVWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s10RealityKit21BodyTrackingComponentVWObTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_55Tm(void (*a1)(void), void (*a2)(void))
{
  a1(v2[2]);
  a2(v2[3]);
  a2(v2[4]);
  a2(v2[5]);

  return MEMORY[0x1EEE6BDD0](v2, 48, 7);
}

uint64_t dispatch thunk of ARKitRunnable.runARKitSession(withSupportedCapabilities:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 24) + **(a4 + 24));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = partial apply for closure #1 in TextureResource.PartialContents.init(source:mipmaps:);

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of ARKitRunnable.stop()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 40) + **(a2 + 40));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for specialized closure #1 in ShaderCacheLoader.loadResource(forKey:);

  return v7(a1, a2);
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSD6ValuesVySS10RealityKit6EntityC0E10FoundationE20ConfigurationCatalogV0I3SetV_G_AM0iK5CacheCs5NeverOTg504_s10e4Kit6g5C0A10h3E20ij63V06CachedC6ReaderC17configurationSets12combinationsAHSDySSAF0E3k36VG_SayAF0E11CombinationVGtKcfcAF0eL5L9CALXEfU0_Tf1cn_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  v27 = v1;
  if (v1)
  {
    v33 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    v3 = a1 + 64;
    result = _HashTable.startBucket.getter();
    v4 = result;
    v5 = 0;
    v6 = *(a1 + 36);
    v26 = v6;
    while ((v4 & 0x8000000000000000) == 0 && v4 < 1 << *(a1 + 32))
    {
      if ((*(v3 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
      {
        goto LABEL_27;
      }

      if (v6 != *(a1 + 36))
      {
        goto LABEL_28;
      }

      v30 = v4 >> 6;
      v29 = v5;
      v8 = (*(a1 + 56) + 40 * v4);
      v9 = *v8;
      v10 = v8[1];
      v11 = v8[2];
      v12 = v8[3];
      v13 = v8[4];
      type metadata accessor for Entity.ConfigurationCatalog.ConfigurationSetCache();
      v14 = swift_allocObject();
      v14[2] = v9;
      v14[3] = v10;
      v14[4] = v11;
      v14[5] = v12;
      v14[6] = v13;
      v15 = *(v13 + 16);
      if (v15)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit6EntityC0D10FoundationE20ConfigurationCatalogV0H0VGMd, &_ss23_ContiguousArrayStorageCy10RealityKit6EntityC0D10FoundationE20ConfigurationCatalogV0H0VGMR);
        v16 = swift_allocObject();
        v17 = _swift_stdlib_malloc_size(v16);
        v18 = v17 - 32;
        if (v17 < 32)
        {
          v18 = v17 - 17;
        }

        v16[2] = v15;
        v16[3] = 2 * (v18 >> 4);
        v28 = specialized Sequence._copySequenceContents(initializing:)(&v32, v16 + 4, v15, v13);
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        result = outlined consume of [String : AnimationResource].Iterator._Variant();
        if (v28 != v15)
        {
          goto LABEL_32;
        }
      }

      else
      {
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        v16 = MEMORY[0x1E69E7CC0];
      }

      v14[7] = v16;
      v14[8] = v13;

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = specialized ContiguousArray._endMutation()();
      v7 = 1 << *(a1 + 32);
      if (v4 >= v7)
      {
        goto LABEL_29;
      }

      v3 = a1 + 64;
      v19 = *(a1 + 64 + 8 * v30);
      if ((v19 & (1 << v4)) == 0)
      {
        goto LABEL_30;
      }

      v6 = v26;
      if (v26 != *(a1 + 36))
      {
        goto LABEL_31;
      }

      v20 = v19 & (-2 << (v4 & 0x3F));
      if (v20)
      {
        v7 = __clz(__rbit64(v20)) | v4 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v21 = v30 << 6;
        v22 = v30 + 1;
        v23 = (a1 + 72 + 8 * v30);
        while (v22 < (v7 + 63) >> 6)
        {
          v25 = *v23++;
          v24 = v25;
          v21 += 64;
          ++v22;
          if (v25)
          {
            result = outlined consume of [String : AudioResource].Index._Variant(v4, v26, 0);
            v7 = __clz(__rbit64(v24)) + v21;
            goto LABEL_4;
          }
        }

        result = outlined consume of [String : AudioResource].Index._Variant(v4, v26, 0);
      }

LABEL_4:
      v5 = v29 + 1;
      v4 = v7;
      if (v29 + 1 == v27)
      {
        return v33;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
  }

  return result;
}

unint64_t Entity.ConfigurationCatalog.CachedEntityError.errorDescription.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 48);
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      _StringGuts.grow(_:)(71);
      MEMORY[0x1C68F3410](0xD000000000000044, 0x80000001C18E79A0);
      MEMORY[0x1C68F3410](v2, v1);
      v12 = 46;
      v13 = 0xE100000000000000;
    }

    else
    {
      if (v3 != 4)
      {
        return 0xD000000000000026;
      }

      _StringGuts.grow(_:)(245);
      MEMORY[0x1C68F3410](0xD000000000000023, 0x80000001C18E7890);
      v10 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1C68F3410](v10);

      MEMORY[0x1C68F3410](0xD00000000000002BLL, 0x80000001C18E78C0);
      v11 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1C68F3410](v11);

      v12 = 0xD0000000000000A3;
      v13 = 0x80000001C18E78F0;
    }
  }

  else
  {
    v4 = *(v0 + 16);
    v5 = *(v0 + 24);
    if (*(v0 + 48))
    {
      if (v3 != 1)
      {
        _StringGuts.grow(_:)(78);
        MEMORY[0x1C68F3410](0xD00000000000004CLL, 0x80000001C18E7A20);
        v12 = v2;
        v13 = v1;
        goto LABEL_12;
      }

      v7 = *(v0 + 32);
      v6 = *(v0 + 40);
      _StringGuts.grow(_:)(154);
      MEMORY[0x1C68F3410](0xD000000000000018, 0x80000001C18E7A70);
      MEMORY[0x1C68F3410](v2, v1);
      MEMORY[0x1C68F3410](0xD00000000000002CLL, 0x80000001C18E7A90);
      MEMORY[0x1C68F3410](v4, v5);
      MEMORY[0x1C68F3410](0xD00000000000004ELL, 0x80000001C18E7AC0);
      v8 = v7;
      v9 = v6;
    }

    else
    {
      _StringGuts.grow(_:)(188);
      MEMORY[0x1C68F3410](0xD00000000000001CLL, 0x80000001C18E7B10);
      MEMORY[0x1C68F3410](v2, v1);
      MEMORY[0x1C68F3410](0xD00000000000009ALL, 0x80000001C18E7B30);
      v8 = v4;
      v9 = v5;
    }

    MEMORY[0x1C68F3410](v8, v9);
    v12 = 11815;
    v13 = 0xE200000000000000;
  }

LABEL_12:
  MEMORY[0x1C68F3410](v12, v13);
  return 0;
}

unint64_t lazy protocol witness table accessor for type Entity.ConfigurationCatalog.CachedEntityError and conformance Entity.ConfigurationCatalog.CachedEntityError()
{
  result = lazy protocol witness table cache variable for type Entity.ConfigurationCatalog.CachedEntityError and conformance Entity.ConfigurationCatalog.CachedEntityError;
  if (!lazy protocol witness table cache variable for type Entity.ConfigurationCatalog.CachedEntityError and conformance Entity.ConfigurationCatalog.CachedEntityError)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Entity.ConfigurationCatalog.CachedEntityError, &type metadata for Entity.ConfigurationCatalog.CachedEntityError, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Entity.ConfigurationCatalog.CachedEntityError and conformance Entity.ConfigurationCatalog.CachedEntityError);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV06CachedC5ErrorO(uint64_t a1)
{
  if ((*(a1 + 48) & 7u) <= 4)
  {
    return *(a1 + 48) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Entity.ConfigurationCatalog.CachedEntityError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 49))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 48);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for Entity.ConfigurationCatalog.CachedEntityError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for Entity.ConfigurationCatalog.CachedEntityError(uint64_t result, unsigned int a2)
{
  if (a2 >= 5)
  {
    *result = a2 - 5;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0;
    LOBYTE(a2) = 5;
  }

  *(result + 48) = a2;
  return result;
}

uint64_t Entity.ConfigurationCatalog.CachedEntityReader.init(configurationSets:combinations:)(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = REGetMaxRealityFileConfigurationSceneCount();
  v8 = *(a2 + 16);
  v9 = v7;
  if (v8 <= v7)
  {
    v63 = *(a2 + 16);
    v64 = a2;
    v65 = v4;
    v11 = a1 + 64;
    v12 = 1 << *(a1 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(a1 + 64);
    v15 = (v12 + 63) >> 6;

    v16 = 0;
    v17 = MEMORY[0x1E69E7CC0];
    while (v14)
    {
LABEL_11:
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      v20 = v19 | (v16 << 6);
      v21 = (*(a1 + 48) + 16 * v20);
      v22 = *v21;
      v4 = v21[1];
      v23 = *(a1 + 56) + 40 * v20;
      v24 = *v21 == *(v23 + 16) && v4 == *(v23 + 24);
      if (!v24 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v17 + 2) + 1, 1, v17);
        }

        v26 = *(v17 + 2);
        v25 = *(v17 + 3);
        v27 = v26 + 1;
        if (v26 >= v25 >> 1)
        {
          v62 = v26 + 1;
          v29 = v17;
          v30 = *(v17 + 2);
          v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1, v29);
          v27 = v62;
          v26 = v30;
          v17 = v31;
        }

        *(v17 + 2) = v27;
        v28 = &v17[16 * v26];
        *(v28 + 4) = v22;
        *(v28 + 5) = v4;
      }
    }

    while (1)
    {
      v18 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v18 >= v15)
      {

        v32 = *(v17 + 2);
        if (v32)
        {
          if (*(a1 + 16))
          {
            v33 = *(v17 + 4);
            v34 = *(v17 + 5);

            v35 = specialized __RawDictionaryStorage.find<A>(_:)(v33, v34);
            v37 = v36;

            if (v37)
            {
              v38 = *(a1 + 56) + 40 * v35;
              v40 = *(v38 + 16);
              v39 = *(v38 + 24);

              lazy protocol witness table accessor for type Entity.ConfigurationCatalog.ConfigurableEntityError and conformance Entity.ConfigurationCatalog.ConfigurableEntityError();
              swift_allocError();
              *v41 = v32;
              *(v41 + 8) = v33;
              *(v41 + 16) = v34;
              *(v41 + 24) = v40;
              *(v41 + 32) = v39;
              *(v41 + 40) = 8;
              swift_willThrow();
              v4 = v65;
              goto LABEL_27;
            }
          }

          else
          {
LABEL_53:
            __break(1u);
          }

          __break(1u);
          goto LABEL_55;
        }

        v43 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSD6ValuesVySS10RealityKit6EntityC0E10FoundationE20ConfigurationCatalogV0I3SetV_G_AM0iK5CacheCs5NeverOTg504_s10e4Kit6g5C0A10h3E20ij63V06CachedC6ReaderC17configurationSets12combinationsAHSDySSAF0E3k36VG_SayAF0E11CombinationVGtKcfcAF0eL5L9CALXEfU0_Tf1cn_n(v42);
        v4 = v65;
        if (!v3)
        {
          v44 = v43;

          type metadata accessor for Entity.ConfigurationCatalog.ConfigurationCollectionCache();
          swift_allocObject();
          v45 = Entity.ConfigurationCatalog.ConfigurationCollectionCache.init(sourcePath:configurationSetCaches:)(0x2FuLL, 0xE100000000000000, v44);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
          v46 = swift_allocObject();
          *(v46 + 16) = xmmword_1C1898160;
          *(v46 + 32) = v45;
          type metadata accessor for Entity.ConfigurationCatalog.ConfigurationMapCache();
          swift_allocObject();

          *(v65 + 16) = Entity.ConfigurationCatalog.ConfigurationMapCache.init(configurationCollectionCaches:)(v46);
          if (*(a1 + 16))
          {
            v48 = 0;
            v49 = 1;
            v50 = 1 << *(a1 + 32);
            v51 = -1;
            if (v50 < 64)
            {
              v51 = ~(-1 << v50);
            }

            v52 = v51 & *(a1 + 64);
            v53 = (v50 + 63) >> 6;
            do
            {
              if (!v52)
              {
                while (1)
                {
                  v54 = v48 + 1;
                  if (__OFADD__(v48, 1))
                  {
                    break;
                  }

                  if (v54 >= v53)
                  {
                    goto LABEL_41;
                  }

                  v52 = *(v11 + 8 * v54);
                  ++v48;
                  if (v52)
                  {
                    v48 = v54;
                    goto LABEL_39;
                  }
                }

                __break(1u);
                goto LABEL_53;
              }

              v54 = v48;
LABEL_39:
              v55 = __clz(__rbit64(v52));
              v52 &= v52 - 1;
              v56 = *(*(*(a1 + 56) + 40 * (v55 | (v54 << 6)) + 32) + 16);
              v57 = (v49 * v56) >> 64;
              v49 *= v56;
            }

            while (v57 == v49 >> 63);
            __break(1u);
LABEL_41:

            if (v63 < v49)
            {

              lazy protocol witness table accessor for type Entity.ConfigurationCatalog.CachedEntityError and conformance Entity.ConfigurationCatalog.CachedEntityError();
              swift_allocError();
              *v58 = v63;
              *(v58 + 8) = v49;
              *(v58 + 16) = 0u;
              *(v58 + 32) = 0u;
              *(v58 + 48) = 4;
              swift_willThrow();

              goto LABEL_51;
            }
          }

          else
          {
          }

          v59 = MEMORY[0x1E69E7CC8];
          v67 = MEMORY[0x1E69E7CC8];
          v60 = *(v64 + 16);
          if (!v60)
          {
LABEL_49:

            *(v65 + 24) = v59;
            return v4;
          }

          v61 = 0;
          while (v61 < *(v64 + 16))
          {
            v66 = *(v64 + 16 * v61 + 32);

            closure #3 in Entity.ConfigurationCatalog.CachedEntityReader.init(configurationSets:combinations:)(&v67, &v66, v45);
            ++v61;

            if (v60 == v61)
            {
              v59 = v67;
              goto LABEL_49;
            }
          }

LABEL_55:
          __break(1u);
        }

        type metadata accessor for Entity.ConfigurationCatalog.CachedEntityReader();
        result = swift_deallocPartialClassInstance();
        __break(1u);
        return result;
      }

      v14 = *(v11 + 8 * v18);
      ++v16;
      if (v14)
      {
        v16 = v18;
        goto LABEL_11;
      }
    }

    __break(1u);

LABEL_51:
  }

  else
  {

    lazy protocol witness table accessor for type Entity.ConfigurationCatalog.ConfigurableEntityError and conformance Entity.ConfigurationCatalog.ConfigurableEntityError();
    swift_allocError();
    *v10 = v8;
    *(v10 + 8) = v9;
    *(v10 + 24) = 0;
    *(v10 + 32) = 0;
    *(v10 + 16) = 0;
    *(v10 + 40) = 11;
    swift_willThrow();
  }

LABEL_27:
  type metadata accessor for Entity.ConfigurationCatalog.CachedEntityReader();
  swift_deallocPartialClassInstance();
  return v4;
}

unint64_t closure #3 in Entity.ConfigurationCatalog.CachedEntityReader.init(configurationSets:combinations:)(uint64_t *a1, uint64_t *a2, unint64_t a3)
{
  v5 = a2[1];
  v61 = *a2;
  v6 = v5 + 64;
  v7 = 1 << *(v5 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v5 + 64);
  v10 = (v7 + 63) >> 6;
  v64 = a2[1];

  v11 = 0;
  if (v9)
  {
    while (1)
    {
      v12 = v11;
LABEL_8:
      v13 = (*(v64 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v3 = *v13;
      v14 = v13[1];
      v15 = *(*(a3 + 40) + 16);

      if (!v15)
      {
        break;
      }

      specialized __RawDictionaryStorage.find<A>(_:)(v3, v14);
      if ((v16 & 1) == 0)
      {
        break;
      }

      v9 &= v9 - 1;

      v11 = v12;
      if (!v9)
      {
        goto LABEL_5;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSD4KeysVySS10RealityKit6EntityC0B10FoundationE20ConfigurationCatalogV0F8SetCacheC_GMd, &_sSD4KeysVySS10RealityKit6EntityC0B10FoundationE20ConfigurationCatalogV0F8SetCacheC_GMR);
    lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type [String : Entity.ConfigurationCatalog.ConfigurationSetCache].Keys and conformance [A : B].Keys, &_sSD4KeysVySS10RealityKit6EntityC0B10FoundationE20ConfigurationCatalogV0F8SetCacheC_GMd, &_sSD4KeysVySS10RealityKit6EntityC0B10FoundationE20ConfigurationCatalogV0F8SetCacheC_GMR, MEMORY[0x1E69E5D90]);
    lazy protocol witness table accessor for type String and conformance String();
    v34 = Sequence<>.joined(separator:)();
    v36 = v35;

    lazy protocol witness table accessor for type Entity.ConfigurationCatalog.CachedEntityError and conformance Entity.ConfigurationCatalog.CachedEntityError();
    swift_allocError();
    *v37 = v3;
    *(v37 + 8) = v14;
    *(v37 + 16) = v34;
    *(v37 + 24) = v36;
    *(v37 + 32) = 0;
    *(v37 + 40) = 0;
    *(v37 + 48) = 0;
    swift_willThrow();
  }

  else
  {
    while (1)
    {
LABEL_5:
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
        goto LABEL_43;
      }

      if (v12 >= v10)
      {
        break;
      }

      v9 = *(v6 + 8 * v12);
      ++v11;
      if (v9)
      {
        goto LABEL_8;
      }
    }

    v3 = v64;

    Hasher.init()();
    a3 = *(a3 + 32);
    if (a3 >> 62)
    {
      goto LABEL_45;
    }

    for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v18 = 0;
        while (1)
        {
          v19 = i;
          v20 = MEMORY[0x1C68F41F0](v18, a3);
          v21 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            break;
          }

          v22 = v20;
          v23 = *(v20 + 32);
          v24 = *(v20 + 40);
          v25 = *(v3 + 16);

          v63 = v23;
          if (v25 && (v26 = specialized __RawDictionaryStorage.find<A>(_:)(v23, v24), (v27 & 1) != 0))
          {
            v28 = (*(v3 + 56) + 16 * v26);
            v29 = v28 + 1;
          }

          else
          {
            v28 = v22 + 2;
            v29 = v22 + 3;
          }

          v30 = *v28;
          v31 = *v29;

          if (!*(v22[8] + 16))
          {
            goto LABEL_39;
          }

          specialized __RawDictionaryStorage.find<A>(_:)(v30, v31);
          if ((v32 & 1) == 0)
          {
            goto LABEL_39;
          }

          String.hash(into:)();

          swift_unknownObjectRelease();
          ++v18;
          v33 = v21 == v19;
          i = v19;
          v3 = v64;
          if (v33)
          {
            goto LABEL_36;
          }
        }

LABEL_43:
        __break(1u);
      }

      else
      {
        v38 = 0;
        v39 = a3 & 0xFFFFFFFFFFFFFF8;
        a3 += 32;
        while (v38 < *(v39 + 16))
        {
          v40 = *(a3 + 8 * v38);
          v41 = v40[4];
          v24 = v40[5];
          v42 = *(v3 + 16);

          v63 = v41;
          if (v42 && (v43 = specialized __RawDictionaryStorage.find<A>(_:)(v41, v24), (v44 & 1) != 0))
          {
            v45 = (*(v3 + 56) + 16 * v43);
            v46 = v45 + 1;
          }

          else
          {
            v45 = v40 + 2;
            v46 = v40 + 3;
          }

          v30 = *v45;
          v31 = *v46;

          if (!*(v40[8] + 16) || (specialized __RawDictionaryStorage.find<A>(_:)(v30, v31), (v47 & 1) == 0))
          {
LABEL_39:

            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSD4KeysVySS10RealityKit6EntityC0B10FoundationE20ConfigurationCatalogV0F0V_GMd, &_sSD4KeysVySS10RealityKit6EntityC0B10FoundationE20ConfigurationCatalogV0F0V_GMR);
            lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type [String : Entity.ConfigurationCatalog.Configuration].Keys and conformance [A : B].Keys, &_sSD4KeysVySS10RealityKit6EntityC0B10FoundationE20ConfigurationCatalogV0F0V_GMd, &_sSD4KeysVySS10RealityKit6EntityC0B10FoundationE20ConfigurationCatalogV0F0V_GMR, MEMORY[0x1E69E5D90]);
            lazy protocol witness table accessor for type String and conformance String();
            v56 = Sequence<>.joined(separator:)();
            v58 = v57;

            lazy protocol witness table accessor for type Entity.ConfigurationCatalog.CachedEntityError and conformance Entity.ConfigurationCatalog.CachedEntityError();
            swift_allocError();
            *v59 = v30;
            *(v59 + 8) = v31;
            *(v59 + 16) = v63;
            *(v59 + 24) = v24;
            *(v59 + 32) = v56;
            *(v59 + 40) = v58;
            *(v59 + 48) = 1;
            swift_willThrow();
          }

          ++v38;

          String.hash(into:)();

          v3 = v64;
          if (i == v38)
          {
            goto LABEL_36;
          }
        }
      }

      __break(1u);
LABEL_45:
      ;
    }

LABEL_36:
    v48 = Hasher.finalize()();
    v49 = v48;
    if (*(*a1 + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(v48), (v50 & 1) != 0))
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSD6ValuesVyS2S_GMd, &_sSD6ValuesVyS2S_GMR);
      lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type [String : String].Values and conformance [A : B].Values, &_sSD6ValuesVyS2S_GMd, &_sSD6ValuesVyS2S_GMR, MEMORY[0x1E69E5DE8]);
      lazy protocol witness table accessor for type String and conformance String();
      v51 = Sequence<>.joined(separator:)();
      v53 = v52;

      lazy protocol witness table accessor for type Entity.ConfigurationCatalog.CachedEntityError and conformance Entity.ConfigurationCatalog.CachedEntityError();
      swift_allocError();
      *v54 = v51;
      *(v54 + 8) = v53;
      *(v54 + 16) = 0u;
      *(v54 + 32) = 0u;
      *(v54 + 48) = 2;
      return swift_willThrow();
    }

    else
    {

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v65 = *a1;
      result = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v61, v49, isUniquelyReferenced_nonNull_native);
      *a1 = v65;
    }
  }

  return result;
}

uint64_t Entity.ConfigurationCatalog.CachedEntityReader.loadEntity(into:withConfigurations:loadOptions:)(uint64_t a1, uint64_t a2)
{
  v3[22] = a2;
  v3[23] = v2;
  v3[21] = a1;
  return MEMORY[0x1EEE6DFA0](Entity.ConfigurationCatalog.CachedEntityReader.loadEntity(into:withConfigurations:loadOptions:), 0, 0);
}

uint64_t Entity.ConfigurationCatalog.CachedEntityReader.loadEntity(into:withConfigurations:loadOptions:)()
{
  v1 = *(v0 + 176);
  if (!v1)
  {
    lazy protocol witness table accessor for type Entity.ConfigurationCatalog.CachedEntityError and conformance Entity.ConfigurationCatalog.CachedEntityError();
    swift_allocError();
    *v19 = 0u;
    *(v19 + 16) = 0u;
    *(v19 + 32) = 0u;
    *(v19 + 48) = 5;
    goto LABEL_24;
  }

  if (!*(v1 + 16) || (v2 = specialized __RawDictionaryStorage.find<A>(_:)(47, 0xE100000000000000), (v3 & 1) == 0))
  {
LABEL_20:
    lazy protocol witness table accessor for type Entity.ConfigurationCatalog.ConfigurableEntityError and conformance Entity.ConfigurationCatalog.ConfigurableEntityError();
    swift_allocError();
    *v18 = xmmword_1C18B1D60;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0;
    *(v18 + 16) = 0;
    *(v18 + 40) = 1;
LABEL_24:
    swift_willThrow();
    goto LABEL_25;
  }

  v4 = *(*(*(v0 + 184) + 16) + 24);
  if (!*(v4 + 16))
  {
LABEL_23:
    lazy protocol witness table accessor for type Entity.ConfigurationCatalog.ConfigurableEntityError and conformance Entity.ConfigurationCatalog.ConfigurableEntityError();
    swift_allocError();
    *v20 = xmmword_1C18B1D60;
    *(v20 + 24) = 0;
    *(v20 + 32) = 0;
    *(v20 + 16) = 0;
    *(v20 + 40) = 0;
    goto LABEL_24;
  }

  v5 = *(*(v1 + 56) + 8 * v2);

  v6 = specialized __RawDictionaryStorage.find<A>(_:)(47, 0xE100000000000000);
  if ((v7 & 1) == 0)
  {

    goto LABEL_23;
  }

  v8 = *(*(v4 + 56) + 8 * v6);
  *(v0 + 192) = v8;

  Hasher.init()();
  v9 = *(v8 + 32);
  if (v9 >> 62)
  {
    goto LABEL_37;
  }

  v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_8:

  if (v10)
  {
    v11 = 0;
    do
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x1C68F41F0](v11, v9);
        v13 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
LABEL_19:
          __break(1u);
          goto LABEL_20;
        }
      }

      else
      {
        if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_37:
          v10 = __CocoaSet.count.getter();
          goto LABEL_8;
        }

        v12 = *(v9 + 8 * v11 + 32);

        v13 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_19;
        }
      }

      if (!*(v5 + 16) || (v14 = *(v12 + 32), v15 = *(v12 + 40), , specialized __RawDictionaryStorage.find<A>(_:)(v14, v15), v17 = v16, , (v17 & 1) == 0))
      {

        v33 = *(v12 + 32);
        v34 = *(v12 + 40);
        lazy protocol witness table accessor for type Entity.ConfigurationCatalog.ConfigurableEntityError and conformance Entity.ConfigurationCatalog.ConfigurableEntityError();
        swift_allocError();
        *v35 = v33;
        *(v35 + 8) = v34;
        *(v35 + 24) = 0;
        *(v35 + 32) = 0;
        *(v35 + 16) = 0;
        *(v35 + 40) = 4;
        swift_willThrow();

        goto LABEL_35;
      }

      String.hash(into:)();

      ++v11;
    }

    while (v13 != v10);
  }

  v23 = *(v0 + 184);

  v24 = *(v0 + 104);
  v25 = *(v0 + 136);
  *(v0 + 48) = *(v0 + 120);
  *(v0 + 64) = v25;
  *(v0 + 80) = *(v0 + 152);
  *(v0 + 16) = *(v0 + 88);
  *(v0 + 32) = v24;
  v26 = Hasher.finalize()();
  v27 = *(v23 + 24);
  if (*(v27 + 16))
  {
    v28 = specialized __RawDictionaryStorage.find<A>(_:)(v26);
    if (v29)
    {
      v30 = v28;

      *(v0 + 200) = *(*(v27 + 56) + 8 * v30);
      type metadata accessor for MainActor();

      *(v0 + 208) = static MainActor.shared.getter();
      v32 = dispatch thunk of Actor.unownedExecutor.getter();

      return MEMORY[0x1EEE6DFA0](Entity.ConfigurationCatalog.CachedEntityReader.loadEntity(into:withConfigurations:loadOptions:), v32, v31);
    }
  }

  *(v0 + 160) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSD6ValuesVyS2S_GMd, &_sSD6ValuesVyS2S_GMR);
  lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type [String : String].Values and conformance [A : B].Values, &_sSD6ValuesVyS2S_GMd, &_sSD6ValuesVyS2S_GMR, MEMORY[0x1E69E5DE8]);
  lazy protocol witness table accessor for type String and conformance String();
  v36 = Sequence<>.joined(separator:)();
  v38 = v37;

  lazy protocol witness table accessor for type Entity.ConfigurationCatalog.CachedEntityError and conformance Entity.ConfigurationCatalog.CachedEntityError();
  swift_allocError();
  *v39 = v36;
  *(v39 + 8) = v38;
  *(v39 + 16) = 0u;
  *(v39 + 32) = 0u;
  *(v39 + 48) = 3;
  swift_willThrow();
LABEL_35:

LABEL_25:
  v21 = *(v0 + 8);

  return v21();
}

{
  v1 = *(v0 + 168);

  Entity.copy(to:recursive:)(v1, 1);

  return MEMORY[0x1EEE6DFA0](Entity.ConfigurationCatalog.CachedEntityReader.loadEntity(into:withConfigurations:loadOptions:), 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t protocol witness for Entity.ConfigurationCatalog.FormatReader.loadEntity(into:withConfigurations:loadOptions:) in conformance Entity.ConfigurationCatalog.CachedEntityReader(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in TextureResource.PartialContents.init(source:mipmaps:);

  return Entity.ConfigurationCatalog.CachedEntityReader.loadEntity(into:withConfigurations:loadOptions:)(a1, a2);
}

uint64_t QueryType.init(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t type metadata instantiation function for QueryType(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t one-time initialization function for ImageLogger()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, ImageLogger);
  __swift_project_value_buffer(v0, ImageLogger);
  if (one-time initialization token for ImageLog != -1)
  {
    swift_once();
  }

  v1 = ImageLog;
  return Logger.init(_:)();
}

uint64_t one-time initialization function for ImageLog()
{
  type metadata accessor for OS_os_log();
  result = OS_os_log.init(subsystem:category:)();
  ImageLog = result;
  return result;
}

uint64_t AREnvironmentProbeComponent.texture.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

unint64_t AREnvironmentProbeComponent.init(texture:extent:useAsBackground:)@<X0>(unint64_t result@<X0>, unsigned __int8 a2@<W1>, __n128 *a3@<X8>, __n128 a4@<Q0>)
{
  a3->n128_u64[0] = result;
  a3[1] = a4;
  a3[2].n128_u8[0] = a2;
  return result;
}

__n128 static AREnvironmentProbeComponent.__fromCore(_:)@<Q0>(__n128 *a2@<X8>)
{
  Texture = REAREnvironmentProbeComponentGetTexture();
  if (Texture)
  {
    v4 = Texture;
    type metadata accessor for TextureResource();
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    *(v5 + 24) = 0;
    RERetain();
    REAssetSetSwiftObject();
  }

  else
  {
    v5 = 0;
  }

  REAREnvironmentProbeComponentGetExtents();
  v9 = v6;
  UseAsBackground = REAREnvironmentProbeComponentGetUseAsBackground();

  a2->n128_u64[0] = v5;
  result = v9;
  a2[1] = v9;
  a2[2].n128_u8[0] = UseAsBackground;
  return result;
}

uint64_t AREnvironmentProbeComponent.__toCore(_:)(uint64_t *a1)
{
  REAREnvironmentProbeComponentSetTexture();
  REAREnvironmentProbeComponentSetExtents();
  REAREnvironmentProbeComponentSetUseAsBackground();

  return RENetworkMarkComponentDirty();
}

uint64_t protocol witness for Component.__toCore(_:) in conformance AREnvironmentProbeComponent(uint64_t *a1)
{
  REAREnvironmentProbeComponentSetTexture();
  REAREnvironmentProbeComponentSetExtents();
  REAREnvironmentProbeComponentSetUseAsBackground();

  return RENetworkMarkComponentDirty();
}

uint64_t getEnumTagSinglePayload for AREnvironmentProbeComponent(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 33))
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

uint64_t storeEnumTagSinglePayload for AREnvironmentProbeComponent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t __RKActiveSceneManager.__allocating_init()()
{
  result = swift_allocObject();
  v1 = MEMORY[0x1E69E7CC0];
  *(result + 16) = 0;
  *(result + 24) = v1;
  return result;
}

double static __RKActiveSceneManager.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t __RKActiveSceneManager.init()()
{
  result = v0;
  v2 = MEMORY[0x1E69E7CC0];
  *(v0 + 16) = 0;
  *(v0 + 24) = v2;
  return result;
}

uint64_t __RKActiveSceneManager.activeScene.setter(uint64_t a1)
{
  specialized __RKActiveSceneManager.activeScene.setter(a1);
}

double (*__RKActiveSceneManager.activeScene.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return __RKActiveSceneManager.activeScene.modify;
}

double __RKActiveSceneManager.activeScene.modify(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    swift_beginAccess();
    v6 = *(*(v5 + 24) + 16);
    if (v6)
    {
      v7 = ( + 40);
      do
      {
        v8 = *(a1 + 24);
        v9 = *v7;
        ObjectType = swift_getObjectType();
        v11 = *(v8 + 16);
        v12 = *(v9 + 8);

        swift_unknownObjectRetain();
        v12(v8, v11, ObjectType, v9);

        swift_unknownObjectRelease();
        v7 += 2;
        --v6;
      }

      while (v6);
    }
  }

  return result;
}

uint64_t __RKActiveSceneManager.addObserver(observer:)(uint64_t a1, uint64_t a2)
{
  result = swift_beginAccess();
  v6 = *(v2 + 24);
  v7 = v6[2];
  v8 = v7 + 1;
  v9 = 4;
  while (--v8)
  {
    v10 = v6[v9];
    v9 += 2;
    if (v10 == a1)
    {
      return result;
    }
  }

  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + 24) = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7 + 1, 1, v6);
    *(v2 + 24) = v6;
  }

  v13 = v6[2];
  v12 = v6[3];
  if (v13 >= v12 >> 1)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v6);
  }

  v6[2] = v13 + 1;
  v14 = &v6[2 * v13];
  v14[4] = a1;
  v14[5] = a2;
  *(v2 + 24) = v6;
  swift_endAccess();
  return swift_unknownObjectRetain();
}

uint64_t __RKActiveSceneManager.removeObserver(observer:)(uint64_t a1)
{
  result = swift_beginAccess();
  v4 = *(v1 + 24);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = 0;
    for (i = (v4 + 32); *i != a1; i += 2)
    {
      if (v5 == ++v6)
      {
        return result;
      }
    }

    swift_beginAccess();
    specialized Array.remove(at:)(v6);
    swift_endAccess();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t __RKActiveSceneManager.deinit()
{

  return v0;
}

uint64_t __RKActiveSceneManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

double specialized __RKActiveSceneManager.activeScene.setter(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  *(v2 + 16) = a1;

  swift_beginAccess();
  v5 = *(v2 + 24);
  v6 = *(v5 + 16);
  if (v6)
  {

    v7 = (v5 + 40);
    do
    {
      v8 = *v7;
      ObjectType = swift_getObjectType();
      v10 = *(v2 + 16);
      v11 = *(v8 + 8);

      swift_unknownObjectRetain();
      v11(v2, v10, ObjectType, v8);
      swift_unknownObjectRelease();

      v7 += 2;
      --v6;
    }

    while (v6);
  }

  return result;
}

uint64_t HasModel.blendWeights.getter()
{
  REBlendShapeWeightsComponentGetComponentType();
  if (REEntityGetComponentByClass() && (BlendShapeWeightsCount = REBlendShapeWeightsComponentGetBlendShapeWeightsCount()) != 0)
  {
    v1 = BlendShapeWeightsCount;
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, BlendShapeWeightsCount & ~(BlendShapeWeightsCount >> 63), 0, MEMORY[0x1E69E7CC0]);
    if ((v1 & 0x8000000000000000) == 0)
    {
      v3 = result;
      v4 = 0;
      v5 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        result = REBlendShapeWeightsComponentGetBlendWeightCount();
        if (result < 0)
        {
          break;
        }

        v6 = result;
        if (result)
        {
          v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
          *(v7 + 16) = v6;
        }

        else
        {
          v7 = v5;
        }

        REBlendShapeWeightsComponentGetBlendWeights();
        *(v7 + 16) = v6;
        v9 = v3[2];
        v8 = v3[3];
        if (v9 >= v8 >> 1)
        {
          v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1, v3);
        }

        ++v4;
        v3[2] = v9 + 1;
        v3[v9 + 4] = v7;
        if (v1 == v4)
        {
          return v3;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySaySfGGMd, &_ss23_ContiguousArrayStorageCySaySfGGMR);
    v3 = swift_allocObject();
    *(v3 + 1) = xmmword_1C1887600;
    v3[4] = MEMORY[0x1E69E7CC0];
    return v3;
  }

  return result;
}

void HasModel.blendWeights.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2 && (REBlendShapeWeightsComponentGetComponentType(), REEntityGetComponentByClass()) && (BlendShapeWeightsCount = REBlendShapeWeightsComponentGetBlendShapeWeightsCount()) != 0 && BlendShapeWeightsCount == v2)
  {
    v4 = 0;
    v5 = a1 + 32;
    while (v2 != v4)
    {
      BlendWeightCount = REBlendShapeWeightsComponentGetBlendWeightCount();
      if (v4 >= *(a1 + 16))
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v7 = a1 + 8 * v4++;
      if (BlendWeightCount != *(*(v7 + 32) + 16))
      {
        goto LABEL_9;
      }
    }

    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0, MEMORY[0x1E69E7CC0]);

    v8 = 0;
    while (v8 != v2)
    {
      if (v8 >= *(a1 + 16))
      {
        goto LABEL_27;
      }

      v9 = *(*(v5 + 8 * v8) + 16);
      if (v9)
      {
        v10 = 0;
        while (v10 < *(*(v5 + 8 * v8) + 16))
        {
          v11 = v10 + 1;
          REBlendShapeWeightsComponentSetBlendWeight();
          v10 = v11;
          if (v9 == v11)
          {
            goto LABEL_13;
          }
        }

        __break(1u);
        goto LABEL_25;
      }

LABEL_13:
      if (++v8 == v2)
      {

        RENetworkMarkComponentDirty();
        return;
      }
    }

LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  else
  {
LABEL_9:
  }
}

void (*HasModel.blendWeights.modify(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t *a1, char a2)
{
  a1[2] = a3;
  a1[3] = v3;
  a1[1] = a2;
  *a1 = HasModel.blendWeights.getter();
  return HasModel.blendWeights.modify;
}

void HasModel.blendWeights.modify(uint64_t *a1, char a2)
{
  if (a2)
  {

    HasModel.blendWeights.setter(v2);
  }

  else
  {
    HasModel.blendWeights.setter(*a1);
  }
}

void *HasModel.blendWeightNames.getter()
{
  REBlendShapeWeightsComponentGetComponentType();
  if (REEntityGetComponentByClass() && REBlendShapeWeightsComponentGetBlendShapeWeightsDefinition() && (BlendShapeWeightsCount = REBlendShapeWeightsDefinitionAssetGetBlendShapeWeightsCount()) != 0)
  {
    v1 = BlendShapeWeightsCount;
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, BlendShapeWeightsCount & ~(BlendShapeWeightsCount >> 63), 0, MEMORY[0x1E69E7CC0]);
    if ((v1 & 0x8000000000000000) == 0)
    {
      v3 = result;
      for (i = 0; ; ++i)
      {
        v5 = i + 1;
        if (__OFADD__(i, 1))
        {
          break;
        }

        BlendWeightCount = REBlendShapeWeightsDefinitionAssetGetBlendWeightCount();
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, BlendWeightCount & ~(BlendWeightCount >> 63), 0, MEMORY[0x1E69E7CC0]);
        if (BlendWeightCount < 0)
        {
          goto LABEL_20;
        }

        v7 = result;
        if (BlendWeightCount)
        {
          v8 = 0;
          do
          {
            REBlendShapeWeightsDefinitionAssetGetBlendWeightName();
            result = String.init(cString:)();
            v11 = *(v7 + 2);
            v10 = *(v7 + 3);
            if (v11 >= v10 >> 1)
            {
              v15 = v9;
              v16 = result;
              v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v7);
              v9 = v15;
              result = v16;
            }

            ++v8;
            *(v7 + 2) = v11 + 1;
            v12 = &v7[16 * v11];
            *(v12 + 4) = result;
            *(v12 + 5) = v9;
          }

          while (BlendWeightCount != v8);
        }

        v14 = v3[2];
        v13 = v3[3];
        if (v14 >= v13 >> 1)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v3);
          v3 = result;
        }

        v3[2] = v14 + 1;
        v3[v14 + 4] = v7;
        if (v5 == v1)
        {
          return v3;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySaySSGGMd, &_ss23_ContiguousArrayStorageCySaySSGGMR);
    v3 = swift_allocObject();
    *(v3 + 1) = xmmword_1C1887600;
    v3[4] = MEMORY[0x1E69E7CC0];
    return v3;
  }

  return result;
}

void StateMachineComponent.init()(uint64_t a1@<X8>)
{
  v1 = MEMORY[0x1E69E7CC0];
  *a1 = 0;
  *(a1 + 8) = v1;
  *(a1 + 16) = 0;
}

uint64_t StateMachineComponent.init(stateMachine:explicitParameterBindings:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 16) = 0;
  *a3 = result;
  *(a3 + 8) = a2;
  return result;
}

uint64_t StateMachineComponent.stateMachineResource.setter(uint64_t a1)
{

  *v1 = a1;
  *(v1 + 16) = 0;
  return result;
}

uint64_t StateMachineComponent.stateMachineResource.modify(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
    *(*result + 16) = 0;
  }

  return result;
}

void StateMachineComponent.parameters.getter()
{
  if ((*(v0 + 16) & 1) == 0)
  {
    v1 = *v0;
    if (*v0)
    {
      v2 = v1[3];
      if (!v2)
      {
        static StateMachineGraphCreator.createGraph(from:)(&v8);
        v3 = *&v9[16];
        v4 = v1[2];
        v5 = v1[3];
        v6 = v1[4];
        v7 = v1[5];
        v1[2] = v8;
        *(v1 + 3) = *v9;
        v1[5] = v3;
        outlined consume of StateMachineGraph?(v4, v5, v6, v7);
        v2 = v1[3];
        if (!v2)
        {
          __break(1u);
          return;
        }
      }

      v8 = v1[2];
      *v9 = v2;
      *&v9[8] = *(v1 + 2);
      specialized static StateMachineParametersCreator.syncUp(parameters:with:)((v0 + 8), &v8);
      *(v0 + 16) = 1;
    }
  }
}

void StateMachineComponent.parameters.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  *(v1 + 16) = 0;
}

void StateMachineComponent.parameters.modify(void *a1)
{
  a1[1] = v1;
  if (*(v1 + 16))
  {
    goto LABEL_6;
  }

  v3 = *v1;
  if (!*v1)
  {
    goto LABEL_6;
  }

  v4 = v3[3];
  if (v4 || (static StateMachineGraphCreator.createGraph(from:)(&v11), v5 = *&v12[16], v6 = v3[2], v7 = v3[3], v8 = v3[4], v9 = v3[5], v3[2] = v11, *(v3 + 3) = *v12, v3[5] = v5, outlined consume of StateMachineGraph?(v6, v7, v8, v9), (v4 = v3[3]) != 0))
  {
    v11 = v3[2];
    *v12 = v4;
    *&v12[8] = *(v3 + 2);
    specialized static StateMachineParametersCreator.syncUp(parameters:with:)((v1 + 8), &v11);
    *(v1 + 16) = 1;
LABEL_6:
    v10 = *(v1 + 8);
    a1[2] = v10;
    *a1 = v10;

    return;
  }

  __break(1u);
}

void StateMachineComponent.parameters.modify(void *a1, char a2)
{
  v2 = a1[1];
  v3 = *a1;
  if (a2)
  {

    *(v2 + 8) = v3;
    *(v2 + 16) = 0;
  }

  else
  {

    *(v2 + 8) = v3;
    *(v2 + 16) = 0;
  }
}

uint64_t static StateMachineComponent.__fromCore(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  StateMachineAsset = REStateMachineComponentGetStateMachineAsset();
  if (!REAssetGetSwiftObject())
  {
    goto LABEL_4;
  }

  type metadata accessor for StateMachineResource();
  v5 = swift_dynamicCastClass();
  if (!v5)
  {
    swift_unknownObjectRelease();
LABEL_4:
    type metadata accessor for StateMachineResource();
    v5 = swift_allocObject();
    *(v5 + 48) = StateMachineAsset;
    *(v5 + 16) = 0u;
    *(v5 + 32) = 0u;
    outlined consume of StateMachineGraph?(0, 0, 0, 0);
    RERetain();
    REAssetSetSwiftObject();
  }

  result = specialized static StateMachineParametersCreator.createBoundParameters(from:)(v3);
  *(a2 + 16) = 0;
  *a2 = v5;
  *(a2 + 8) = result;
  return result;
}

uint64_t protocol witness for Component.__toCore(_:) in conformance StateMachineComponent(uint64_t *a1)
{
  if (*v1)
  {
    v2 = v1[1];
    v3 = *a1;
    REStateMachineComponentAssignAsset();

    return specialized static StateMachineParametersCreator.updateInCoreComponent(coreComponent:from:)(v3, v2);
  }

  else
  {

    return specialized static StateMachineUtils.logError(_:)(0xD000000000000025, 0x80000001C18E7CB0);
  }
}

uint64_t StateMachineComponent.__toCore(_:)(uint64_t *a1)
{
  if (*v1)
  {
    v2 = v1[1];
    v3 = *a1;
    REStateMachineComponentAssignAsset();

    return specialized static StateMachineParametersCreator.updateInCoreComponent(coreComponent:from:)(v3, v2);
  }

  else
  {

    return specialized static StateMachineUtils.logError(_:)(0xD000000000000025, 0x80000001C18E7CB0);
  }
}

uint64_t getEnumTagSinglePayload for StateMachineComponent(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for StateMachineComponent(uint64_t result, int a2, int a3)
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

uint64_t __SkyboxComponent.environment.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

BOOL static __SkyboxComponent.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1)
  {
    if (v3)
    {
      v4 = *(v2 + 16);
      v5 = *(v3 + 16);
      if (v4)
      {
        if (v4 == v5)
        {
          goto LABEL_5;
        }
      }

      else if (!v5)
      {
LABEL_5:
        swift_beginAccess();
        v6 = *(v2 + 24);
        swift_beginAccess();
        v7 = *(v3 + 24);
        if (v6)
        {
          return v7 && v6 == v7;
        }

        else
        {
          return v7 == 0;
        }
      }
    }

    return 0;
  }

  return v3 == 0;
}

uint64_t static __SkyboxComponent.__fromCore(_:)@<X0>(uint64_t *a2@<X8>)
{
  result = RESkyboxComponentGetMaterial();
  if (result)
  {
    type metadata accessor for EnvironmentResource();
    v4 = swift_allocObject();
    *(v4 + 16) = 0;
    *(v4 + 24) = 0;
    result = swift_beginAccess();
    *(v4 + 24) = 0;
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t __SkyboxComponent.__toCore(_:)(uint64_t *a1, __n128 a2)
{
  v2 = REMaterialParameterBlockValueCreate();
  _s17RealityFoundation16LoadableResourcePAAE010loadEngineD09assetPathxSS_tFZ0A3Kit010__MaterialD0C_Tt1g5(0xD000000000000018, 0x80000001C18E7CE0, v3);

  swift_beginAccess();
  RESkyboxComponentSetMaterial();
  RENetworkMarkComponentDirty();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance __SkyboxComponent(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    return (v2 | v3) == 0;
  }

  else
  {
    return specialized static EnvironmentResource.areEqual(_:_:)(v2, v3);
  }
}

Swift::Int StateMachineCommandExecutionTiming.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](0);
  return Hasher._finalize()();
}

uint64_t StateMachineCommand.parameters.getter()
{
  return MEMORY[0x1E69E7CC0];
}

{
  return MEMORY[0x1E69E7CC0];
}

uint64_t StateMachineAnimationPlayCommand.init(targetEntity:animationName:playToCompletion:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v9 = *a1;
  v10 = a1[1];
  v11 = *(a1 + 16);
  result = outlined consume of BindTarget?(0, 0, 0xFFu);
  *a5 = v9;
  *(a5 + 8) = v10;
  *(a5 + 16) = v11;
  *(a5 + 24) = a2;
  *(a5 + 32) = a3;
  *(a5 + 40) = a4;
  return result;
}

uint64_t StateMachineAnimationPlayCommand.parameters.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v5 = *(v0 + 24);
  v4 = *(v0 + 32);
  v6 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation36StateMachineCommandParameterProtocol_pGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation36StateMachineCommandParameterProtocol_pGMR);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1C1897FC0;
  *(v7 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation28StateMachineCommandParameterVySSGMd, &_s17RealityFoundation28StateMachineCommandParameterVySSGMR);
  *(v7 + 64) = &protocol witness table for StateMachineCommandParameter<A>;
  v8 = swift_allocObject();
  *(v7 + 32) = v8;
  *(v8 + 32) = v5;
  *(v8 + 40) = v4;
  strcpy((v8 + 16), "AnimationName");
  *(v8 + 30) = -4864;
  *(v7 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation28StateMachineCommandParameterVySbGMd, &_s17RealityFoundation28StateMachineCommandParameterVySbGMR);
  *(v7 + 104) = &protocol witness table for StateMachineCommandParameter<A>;
  *(v7 + 88) = v6;
  *(v7 + 72) = 0xD000000000000018;
  *(v7 + 80) = 0x80000001C18E7D00;

  if (v3 != 255)
  {
    outlined copy of BindTarget?(v1, v2, v3);
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(1, 3, 1, v7);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation28StateMachineCommandParameterVyAA10BindTargetOGMd, &_s17RealityFoundation28StateMachineCommandParameterVyAA10BindTargetOGMR);
    v13 = &protocol witness table for StateMachineCommandParameter<A>;
    v9 = swift_allocObject();
    *&v11 = v9;
    strcpy((v9 + 16), "TargetEntity");
    *(v9 + 29) = 0;
    *(v9 + 30) = -5120;
    *(v9 + 32) = v1;
    *(v9 + 40) = v2;
    *(v9 + 48) = v3;
    *(v7 + 16) = 3;
    outlined init with take of ForceEffectBase(&v11, v7 + 112);

    outlined copy of BindTarget(v1, v2, v3);

    outlined consume of BindTarget(v1, v2, v3);
  }

  return v7;
}

uint64_t StateMachineAnimationPlayCommand.targetEntity.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + 16);
  *(a1 + 16) = v4;
  return outlined copy of BindTarget?(v2, v3, v4);
}

uint64_t StateMachineAnimationPlayCommand.targetEntity.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = outlined consume of BindTarget?(*v1, *(v1 + 8), *(v1 + 16));
  *v1 = v2;
  *(v1 + 8) = v3;
  *(v1 + 16) = v4;
  return result;
}

uint64_t StateMachineAnimationPlayCommand.animationName.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

void StateMachineAnimationPlayCommand.animationName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
}

uint64_t StateMachineAnimationStopCommand.init(targetEntity:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 16);
  result = outlined consume of BindTarget?(0, 0, 0xFFu);
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  return result;
}

uint64_t StateMachineAnimationStopCommand.targetEntity.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = outlined consume of BindTarget?(*v1, *(v1 + 8), *(v1 + 16));
  *v1 = v2;
  *(v1 + 8) = v3;
  *(v1 + 16) = v4;
  return result;
}

__n128 StateMachineAnimationStopAllCommand.init(targetEntity:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  v2 = a1[1].n128_u8[0];
  result = *a1;
  *a2 = *a1;
  a2[1].n128_u8[0] = v2;
  return result;
}

uint64_t StateMachineAnimationStopCommand.parameters.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  if (v3 == 255)
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation36StateMachineCommandParameterProtocol_pGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation36StateMachineCommandParameterProtocol_pGMR);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1C1887600;
    *(v4 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation28StateMachineCommandParameterVyAA10BindTargetOGMd, &_s17RealityFoundation28StateMachineCommandParameterVyAA10BindTargetOGMR);
    *(v4 + 64) = &protocol witness table for StateMachineCommandParameter<A>;
    v5 = swift_allocObject();
    *(v4 + 32) = v5;
    *(v5 + 32) = v2;
    *(v5 + 40) = v1;
    *(v5 + 48) = v3;
    strcpy((v5 + 16), "TargetEntity");
    *(v5 + 29) = 0;
    *(v5 + 30) = -5120;
  }

  outlined copy of BindTarget?(v2, v1, v3);
  return v4;
}

uint64_t StateMachineAnimationStopCommand.targetEntity.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + 16);
  *(a1 + 16) = v4;
  return outlined copy of BindTarget?(v2, v3, v4);
}

uint64_t StateMachineAnimationSetPlaybackTimeCommand.init(targetEntity:playbackTime:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = *(a1 + 16);
  result = outlined consume of BindTarget?(0, 0, 0xFFu);
  *a2 = v5;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7;
  *(a2 + 24) = a3;
  return result;
}

uint64_t StateMachineAnimationSetPlaybackTimeCommand.parameters.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation36StateMachineCommandParameterProtocol_pGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation36StateMachineCommandParameterProtocol_pGMR);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C1887600;
  *(v5 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation28StateMachineCommandParameterVySdGMd, &_s17RealityFoundation28StateMachineCommandParameterVySdGMR);
  *(v5 + 64) = &protocol witness table for StateMachineCommandParameter<A>;
  *(v5 + 48) = v4;
  strcpy((v5 + 32), "PlaybackTime");
  *(v5 + 45) = 0;
  *(v5 + 46) = -5120;
  if (v3 != 255)
  {
    outlined copy of BindTarget(v1, v2, v3);
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(1, 2, 1, v5);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation28StateMachineCommandParameterVyAA10BindTargetOGMd, &_s17RealityFoundation28StateMachineCommandParameterVyAA10BindTargetOGMR);
    v10 = &protocol witness table for StateMachineCommandParameter<A>;
    v6 = swift_allocObject();
    *&v8 = v6;
    strcpy((v6 + 16), "TargetEntity");
    *(v6 + 29) = 0;
    *(v6 + 30) = -5120;
    *(v6 + 32) = v1;
    *(v6 + 40) = v2;
    *(v6 + 48) = v3;
    *(v5 + 16) = 2;
    outlined init with take of ForceEffectBase(&v8, v5 + 72);

    outlined copy of BindTarget(v1, v2, v3);

    outlined consume of BindTarget(v1, v2, v3);
  }

  return v5;
}

uint64_t StateMachineAnimationSetPlaybackTimeCommand.targetEntity.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + 16);
  *(a1 + 16) = v4;
  return outlined copy of BindTarget?(v2, v3, v4);
}

uint64_t StateMachineAnimationSetPlaybackTimeCommand.targetEntity.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = outlined consume of BindTarget?(*v1, *(v1 + 8), *(v1 + 16));
  *v1 = v2;
  *(v1 + 8) = v3;
  *(v1 + 16) = v4;
  return result;
}

unint64_t lazy protocol witness table accessor for type StateMachineCommandExecutionTiming and conformance StateMachineCommandExecutionTiming()
{
  result = lazy protocol witness table cache variable for type StateMachineCommandExecutionTiming and conformance StateMachineCommandExecutionTiming;
  if (!lazy protocol witness table cache variable for type StateMachineCommandExecutionTiming and conformance StateMachineCommandExecutionTiming)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StateMachineCommandExecutionTiming, &type metadata for StateMachineCommandExecutionTiming, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type StateMachineCommandExecutionTiming and conformance StateMachineCommandExecutionTiming);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StateMachineAnimationPlayCommand(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for StateMachineAnimationPlayCommand(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StateMachineAnimationStopCommand(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF9 && *(a1 + 17))
  {
    return (*a1 + 249);
  }

  v3 = *(a1 + 16);
  if (v3 <= 6)
  {
    v4 = -1;
  }

  else
  {
    v4 = (v3 ^ 0xFF) - 1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for StateMachineAnimationStopCommand(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 16) = 0;
    *result = a2 - 249;
    *(result + 8) = 0;
    if (a3 >= 0xF9)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = ~a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StateMachineAnimationSetPlaybackTimeCommand(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF9 && *(a1 + 32))
  {
    return (*a1 + 249);
  }

  v3 = *(a1 + 16);
  if (v3 <= 6)
  {
    v4 = -1;
  }

  else
  {
    v4 = (v3 ^ 0xFF) - 1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for StateMachineAnimationSetPlaybackTimeCommand(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 249;
    *(result + 8) = 0;
    if (a3 >= 0xF9)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 16) = ~a2;
    }
  }

  return result;
}

uint64_t BlendShapeWeightsMapping.__allocating_init(meshResource:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = *(a1 + 16);
  specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  swift_unownedRetainStrong();

  ServiceLocator = REEngineGetServiceLocator();
  result = MEMORY[0x1C68FE1F0](ServiceLocator);
  if (result)
  {
    if (v3)
    {
      *(v2 + 16) = REBlendShapeWeightsDefinitionAssetCreateAssetForMesh();
      RERetain();
      REAssetSetSwiftObject();

      return v2;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t BlendShapeWeightsMapping.init(meshResource:)(uint64_t a1)
{
  v1 = specialized BlendShapeWeightsMapping.init(meshResource:)(a1);

  return v1;
}

uint64_t BlendShapeWeightsMapping.__allocating_init(blendShapeName:weightNames:)(char *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  BlendShapeWeightsMapping.init(blendShapeName:weightNames:)(a1, a2, a3);
  return v6;
}

uint64_t BlendShapeWeightsMapping.init(blendShapeName:weightNames:)(char *a1, uint64_t a2, uint64_t a3)
{
  v42 = *MEMORY[0x1E69E9840];
  specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v6 = *(swift_unownedRetainStrong() + 24);

  ServiceLocator = REEngineGetServiceLocator();
  if (!MEMORY[0x1C68FE1F0](ServiceLocator))
  {
    __break(1u);
LABEL_43:
    __break(1u);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySaySPys4Int8VGGGMd, &_ss23_ContiguousArrayStorageCySaySPys4Int8VGGGMR);
  inited = swift_initStackObject();
  v9 = 0;
  *(inited + 16) = xmmword_1C1887600;
  v10 = MEMORY[0x1E69E7CC0];
  *(inited + 32) = MEMORY[0x1E69E7CC0];
  v11 = *(a3 + 16);
  v12 = (a3 + 40);
LABEL_3:
  v13 = &v12[2 * v9];
  while (1)
  {
    if (v11 == v9)
    {
      v12 = *(v10 + 2);
      v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v9 = *(v3 + 2);
      v13 = *(v3 + 3);
      v6 = v9 + 1;
      if (v9 >= v13 >> 1)
      {
        goto LABEL_41;
      }

      goto LABEL_13;
    }

    if (v9 >= *(a3 + 16))
    {
      break;
    }

    ++v9;
    v14 = v13 + 16;
    v6 = String.utf8CString.getter();
    v3 = strdup((v6 + 32));

    v13 = v14;
    if (v3)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2) + 1, 1, v10);
      }

      v16 = *(v10 + 2);
      v15 = *(v10 + 3);
      v6 = v16 + 1;
      if (v16 >= v15 >> 1)
      {
        v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v10);
      }

      *(v10 + 2) = v6;
      *&v10[8 * v16 + 32] = v3;
      goto LABEL_3;
    }
  }

LABEL_39:
  __break(1u);
  while (1)
  {
    __break(1u);
LABEL_41:
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v6, 1, v3);
LABEL_13:
    *(v3 + 2) = v6;
    v17 = &v3[16 * v9 + 32];
    *v17 = v12;
    *(v17 + 1) = v10 + 32;

    v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(1, 2, 1, inited);
    *(v9 + 16) = 2;
    *(v9 + 40) = v10;
    type metadata accessor for NSString();
    v18 = NSString.init(stringLiteral:)();
    v19 = [v18 UTF8String];
    v20 = v18;
    if (!v19)
    {
      goto LABEL_43;
    }

    v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v23 = *(v21 + 2);
    v22 = *(v21 + 3);
    if (v23 >= v22 >> 1)
    {
      v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v21);
    }

    *(v21 + 2) = v23 + 1;
    v24 = &v21[32 * v23 + 32];
    *v24 = 3;
    *(v24 + 8) = v19;
    *(v24 + 16) = 0;
    *(v24 + 24) = 0;
    v41[0] = a1;
    v41[1] = a2;
    v25 = String.utf8CString.getter();
    v26 = strdup((v25 + 32));

    v27 = MEMORY[0x1E69E7CC0];
    if (v26)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v27 + 2) + 1, 1, v27);
      }

      v29 = *(v27 + 2);
      v28 = *(v27 + 3);
      if (v29 >= v28 >> 1)
      {
        v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1, v27);
      }

      *(v27 + 2) = v29 + 1;
      *&v27[8 * v29 + 32] = v26;
    }

    outlined destroy of String(v41);
    a1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v31 = *(a1 + 2);
    v30 = *(a1 + 3);
    if (v31 >= v30 >> 1)
    {
      a1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1, a1);
    }

    v32 = (v27 + 32);
    *(a1 + 2) = v31 + 1;
    *&a1[8 * v31 + 32] = v27 + 32;
    v10 = *(a1 + 4);

    AssetWithDefinitionsAndWeightNames = REBlendShapeWeightsDefinitionAssetCreateAssetWithDefinitionsAndWeightNames();

    *(v40 + 16) = AssetWithDefinitionsAndWeightNames;
    for (i = *(v27 + 2); i; --i)
    {
      v35 = *v32++;
      free(v35);
    }

    v6 = *(v9 + 16);
    if (!v6)
    {
      break;
    }

    inited = 0;
    v12 = (v9 + 32);
    while (1)
    {
      v13 = *(v9 + 16);
      if (inited >= v13)
      {
        break;
      }

      v36 = *(v12[inited] + 16);
      if (v36)
      {
        v13 = 0;
        while (inited < *(v9 + 16))
        {
          v37 = v12[inited];
          if (v13 >= *(v37 + 16))
          {
            goto LABEL_38;
          }

          a1 = (v13 + 1);
          free(*(v37 + 8 * v13 + 32));
          v13 = a1;
          if (v36 == a1)
          {
            goto LABEL_28;
          }
        }

        __break(1u);
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

LABEL_28:
      if (++inited == v6)
      {
        goto LABEL_36;
      }
    }
  }

LABEL_36:

  return v40;
}

uint64_t BlendShapeWeightsMapping.init(_:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  RERetain();
  REAssetSetSwiftObject();
  return v1;
}

uint64_t BlendShapeWeightsMapping.deinit()
{
  REAssetSetSwiftObject();
  RERelease();
  return v0;
}

uint64_t BlendShapeWeightsMapping.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  RERetain();
  REAssetSetSwiftObject();
  return v2;
}

uint64_t BlendShapeWeightsMapping.__deallocating_deinit()
{
  REAssetSetSwiftObject();
  RERelease();

  return swift_deallocClassInstance();
}

void _Proto_BlendShapeWeightsMappingResource_v1.definition.getter(char **a1@<X8>)
{

  _Proto_BlendShapeWeightsMappingDefinition_v1.init(_:)(a1);
}

uint64_t specialized BlendShapeWeightsMapping.init(meshResource:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  swift_unownedRetainStrong();

  ServiceLocator = REEngineGetServiceLocator();
  result = MEMORY[0x1C68FE1F0](ServiceLocator);
  if (result)
  {
    if (v2)
    {
      *(v1 + 16) = REBlendShapeWeightsDefinitionAssetCreateAssetForMesh();
      RERetain();
      REAssetSetSwiftObject();
      return v1;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
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

uint64_t one-time initialization function for ecsCoreLogger()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, ecsCoreLogger);
  __swift_project_value_buffer(v0, ecsCoreLogger);
  return Logger.init(subsystem:category:)();
}

uint64_t static AnalyticsManager.shared.getter()
{
  v0 = type metadata accessor for AnalyticsManager();

  return MEMORY[0x1EEE6C000](v0, &unk_1EBEA72B8);
}

uint64_t AnalyticsManager.ObjectCaptureSessionInitEvent.init(sessionID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t AnalyticsManager.ObjectCaptureSessionImageStatsEvent.init(sessionID:numImages:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for AnalyticsManager.ObjectCaptureSessionImageStatsEvent(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

RealityFoundation::AnalyticsManager::ObjectCaptureSessionCaptureModeEvent::CaptureMode_optional __swiftcall AnalyticsManager.ObjectCaptureSessionCaptureModeEvent.CaptureMode.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t AnalyticsManager.ObjectCaptureSessionCaptureModeEvent.init(sessionID:captureMode:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v7 = *a2;
  v8 = type metadata accessor for UUID();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  result = a3(0);
  *(a4 + *(result + 20)) = v7;
  return result;
}

uint64_t AnalyticsManager.ObjectCaptureSessionBundleIdentifierEvent.init(sessionID:bundleID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for UUID();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  result = type metadata accessor for AnalyticsManager.ObjectCaptureSessionBundleIdentifierEvent(0);
  v10 = (a4 + *(result + 20));
  *v10 = a2;
  v10[1] = a3;
  return result;
}

void AnalyticsManager.sendObjectCaptureSessionInitEvent(event:)(uint64_t a1)
{
  inited = type metadata accessor for AnalyticsManager.ObjectCaptureSessionInitEvent(0);
  v3 = *(inited - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](inited);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v23 - v7;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, logger);
  outlined init with copy of AnalyticsManager.ObjectCaptureSessionInitEvent(a1, v8, type metadata accessor for AnalyticsManager.ObjectCaptureSessionInitEvent);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    aBlock[0] = v13;
    *v12 = 136315138;
    v23[0] = v3;
    outlined init with copy of AnalyticsManager.ObjectCaptureSessionInitEvent(v8, v5, type metadata accessor for AnalyticsManager.ObjectCaptureSessionInitEvent);
    v14 = String.init<A>(describing:)();
    v23[1] = v4;
    v15 = a1;
    v17 = v16;
    outlined destroy of AnalyticsManager.ObjectCaptureSessionInitEvent(v8, type metadata accessor for AnalyticsManager.ObjectCaptureSessionInitEvent);
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v17, aBlock);
    a1 = v15;
    v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);

    *(v12 + 4) = v18;
    v3 = v23[0];
    _os_log_impl(&dword_1C1358000, v10, v11, "Sending %s...", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x1C6902A30](v13, -1, -1);
    MEMORY[0x1C6902A30](v12, -1, -1);
  }

  else
  {

    outlined destroy of AnalyticsManager.ObjectCaptureSessionInitEvent(v8, type metadata accessor for AnalyticsManager.ObjectCaptureSessionInitEvent);
  }

  v19 = MEMORY[0x1C68F3280](0xD000000000000030, 0x80000001C18E7DB0);
  outlined init with copy of AnalyticsManager.ObjectCaptureSessionInitEvent(a1, v5, type metadata accessor for AnalyticsManager.ObjectCaptureSessionInitEvent);
  v20 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v21 = swift_allocObject();
  outlined init with take of AnalyticsManager.ObjectCaptureSessionInitEvent(v5, v21 + v20, type metadata accessor for AnalyticsManager.ObjectCaptureSessionInitEvent);
  aBlock[4] = partial apply for closure #1 in AnalyticsManager.sendObjectCaptureSessionInitEvent(event:);
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
  aBlock[3] = &block_descriptor_20;
  v22 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v22);
}

uint64_t closure #1 in AnalyticsManager.sendObjectCaptureSessionInitEvent(event:)()
{
  v0 = UUID.uuidString.getter();
  v1 = MEMORY[0x1C68F3280](v0);

  v2 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v1, 0x496E6F6973736573, 0xE900000000000044, isUniquelyReferenced_nonNull_native);
  return v2;
}

void AnalyticsManager.sendObjectCaptureSessionImageStatsEvent(event:)(uint64_t a1)
{
  v2 = type metadata accessor for AnalyticsManager.ObjectCaptureSessionImageStatsEvent(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v23 - v7;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, logger);
  outlined init with copy of AnalyticsManager.ObjectCaptureSessionInitEvent(a1, v8, type metadata accessor for AnalyticsManager.ObjectCaptureSessionImageStatsEvent);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    aBlock[0] = v13;
    *v12 = 136315138;
    v23[0] = v3;
    outlined init with copy of AnalyticsManager.ObjectCaptureSessionInitEvent(v8, v5, type metadata accessor for AnalyticsManager.ObjectCaptureSessionImageStatsEvent);
    v14 = String.init<A>(describing:)();
    v23[1] = v4;
    v15 = a1;
    v17 = v16;
    outlined destroy of AnalyticsManager.ObjectCaptureSessionInitEvent(v8, type metadata accessor for AnalyticsManager.ObjectCaptureSessionImageStatsEvent);
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v17, aBlock);
    a1 = v15;
    v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);

    *(v12 + 4) = v18;
    v3 = v23[0];
    _os_log_impl(&dword_1C1358000, v10, v11, "Sending %s...", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x1C6902A30](v13, -1, -1);
    MEMORY[0x1C6902A30](v12, -1, -1);
  }

  else
  {

    outlined destroy of AnalyticsManager.ObjectCaptureSessionInitEvent(v8, type metadata accessor for AnalyticsManager.ObjectCaptureSessionImageStatsEvent);
  }

  v19 = MEMORY[0x1C68F3280](0xD000000000000036, 0x80000001C18E7DF0);
  outlined init with copy of AnalyticsManager.ObjectCaptureSessionInitEvent(a1, v5, type metadata accessor for AnalyticsManager.ObjectCaptureSessionImageStatsEvent);
  v20 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v21 = swift_allocObject();
  outlined init with take of AnalyticsManager.ObjectCaptureSessionInitEvent(v5, v21 + v20, type metadata accessor for AnalyticsManager.ObjectCaptureSessionImageStatsEvent);
  aBlock[4] = partial apply for closure #1 in AnalyticsManager.sendObjectCaptureSessionImageStatsEvent(event:);
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
  aBlock[3] = &block_descriptor_6;
  v22 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v22);
}

uint64_t closure #1 in AnalyticsManager.sendObjectCaptureSessionImageStatsEvent(event:)()
{
  v0 = UUID.uuidString.getter();
  v1 = MEMORY[0x1C68F3280](v0);

  v2 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v1, 0x496E6F6973736573, 0xE900000000000044, isUniquelyReferenced_nonNull_native);
  type metadata accessor for AnalyticsManager.ObjectCaptureSessionImageStatsEvent(0);
  isa = Int._bridgeToObjectiveC()().super.super.isa;
  v5 = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(isa, 0x6567616D496D756ELL, 0xE900000000000073, v5);
  return v2;
}

void AnalyticsManager.sendObjectCaptureSessionCaptureModeEvent(event:)(uint64_t a1)
{
  v2 = type metadata accessor for AnalyticsManager.ObjectCaptureSessionCaptureModeEvent(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v23 - v7;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, logger);
  outlined init with copy of AnalyticsManager.ObjectCaptureSessionInitEvent(a1, v8, type metadata accessor for AnalyticsManager.ObjectCaptureSessionCaptureModeEvent);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    aBlock[0] = v13;
    *v12 = 136315138;
    v23[0] = v3;
    outlined init with copy of AnalyticsManager.ObjectCaptureSessionInitEvent(v8, v5, type metadata accessor for AnalyticsManager.ObjectCaptureSessionCaptureModeEvent);
    v14 = String.init<A>(describing:)();
    v23[1] = v4;
    v15 = a1;
    v17 = v16;
    outlined destroy of AnalyticsManager.ObjectCaptureSessionInitEvent(v8, type metadata accessor for AnalyticsManager.ObjectCaptureSessionCaptureModeEvent);
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v17, aBlock);
    a1 = v15;
    v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);

    *(v12 + 4) = v18;
    v3 = v23[0];
    _os_log_impl(&dword_1C1358000, v10, v11, "Sending %s...", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x1C6902A30](v13, -1, -1);
    MEMORY[0x1C6902A30](v12, -1, -1);
  }

  else
  {

    outlined destroy of AnalyticsManager.ObjectCaptureSessionInitEvent(v8, type metadata accessor for AnalyticsManager.ObjectCaptureSessionCaptureModeEvent);
  }

  v19 = MEMORY[0x1C68F3280](0xD000000000000037, 0x80000001C18E7E30);
  outlined init with copy of AnalyticsManager.ObjectCaptureSessionInitEvent(a1, v5, type metadata accessor for AnalyticsManager.ObjectCaptureSessionCaptureModeEvent);
  v20 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v21 = swift_allocObject();
  outlined init with take of AnalyticsManager.ObjectCaptureSessionInitEvent(v5, v21 + v20, type metadata accessor for AnalyticsManager.ObjectCaptureSessionCaptureModeEvent);
  aBlock[4] = partial apply for closure #1 in AnalyticsManager.sendObjectCaptureSessionCaptureModeEvent(event:);
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
  aBlock[3] = &block_descriptor_12;
  v22 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v22);
}

void AnalyticsManager.sendObjectCaptureSessionStatusEvent(event:)(uint64_t a1)
{
  v2 = type metadata accessor for AnalyticsManager.ObjectCaptureSessionStatusEvent(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v23 - v7;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, logger);
  outlined init with copy of AnalyticsManager.ObjectCaptureSessionInitEvent(a1, v8, type metadata accessor for AnalyticsManager.ObjectCaptureSessionStatusEvent);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    aBlock[0] = v13;
    *v12 = 136315138;
    v23[0] = v3;
    outlined init with copy of AnalyticsManager.ObjectCaptureSessionInitEvent(v8, v5, type metadata accessor for AnalyticsManager.ObjectCaptureSessionStatusEvent);
    v14 = String.init<A>(describing:)();
    v23[1] = v4;
    v15 = a1;
    v17 = v16;
    outlined destroy of AnalyticsManager.ObjectCaptureSessionInitEvent(v8, type metadata accessor for AnalyticsManager.ObjectCaptureSessionStatusEvent);
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v17, aBlock);
    a1 = v15;
    v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);

    *(v12 + 4) = v18;
    v3 = v23[0];
    _os_log_impl(&dword_1C1358000, v10, v11, "Sending %s...", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x1C6902A30](v13, -1, -1);
    MEMORY[0x1C6902A30](v12, -1, -1);
  }

  else
  {

    outlined destroy of AnalyticsManager.ObjectCaptureSessionInitEvent(v8, type metadata accessor for AnalyticsManager.ObjectCaptureSessionStatusEvent);
  }

  v19 = MEMORY[0x1C68F3280](0xD000000000000032, 0x80000001C18E7E70);
  outlined init with copy of AnalyticsManager.ObjectCaptureSessionInitEvent(a1, v5, type metadata accessor for AnalyticsManager.ObjectCaptureSessionStatusEvent);
  v20 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v21 = swift_allocObject();
  outlined init with take of AnalyticsManager.ObjectCaptureSessionInitEvent(v5, v21 + v20, type metadata accessor for AnalyticsManager.ObjectCaptureSessionStatusEvent);
  aBlock[4] = partial apply for closure #1 in AnalyticsManager.sendObjectCaptureSessionStatusEvent(event:);
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
  aBlock[3] = &block_descriptor_18_1;
  v22 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v22);
}

uint64_t closure #1 in AnalyticsManager.sendObjectCaptureSessionCaptureModeEvent(event:)(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  v7 = UUID.uuidString.getter();
  v8 = MEMORY[0x1C68F3280](v7);

  v9 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v8, 0x496E6F6973736573, 0xE900000000000044, isUniquelyReferenced_nonNull_native);
  a2(0);
  isa = Int._bridgeToObjectiveC()().super.super.isa;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(isa, a3, a4, v12);
  return v9;
}

void AnalyticsManager.sendObjectCaptureSessionBundleIdentifierEvent(event:)(uint64_t a1)
{
  v2 = type metadata accessor for AnalyticsManager.ObjectCaptureSessionBundleIdentifierEvent(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v23 - v7;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, logger);
  outlined init with copy of AnalyticsManager.ObjectCaptureSessionInitEvent(a1, v8, type metadata accessor for AnalyticsManager.ObjectCaptureSessionBundleIdentifierEvent);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    aBlock[0] = v13;
    *v12 = 136315138;
    v23[0] = v3;
    outlined init with copy of AnalyticsManager.ObjectCaptureSessionInitEvent(v8, v5, type metadata accessor for AnalyticsManager.ObjectCaptureSessionBundleIdentifierEvent);
    v14 = String.init<A>(describing:)();
    v23[1] = v4;
    v15 = a1;
    v17 = v16;
    outlined destroy of AnalyticsManager.ObjectCaptureSessionInitEvent(v8, type metadata accessor for AnalyticsManager.ObjectCaptureSessionBundleIdentifierEvent);
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v17, aBlock);
    a1 = v15;
    v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);

    *(v12 + 4) = v18;
    v3 = v23[0];
    _os_log_impl(&dword_1C1358000, v10, v11, "Sending %s...", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x1C6902A30](v13, -1, -1);
    MEMORY[0x1C6902A30](v12, -1, -1);
  }

  else
  {

    outlined destroy of AnalyticsManager.ObjectCaptureSessionInitEvent(v8, type metadata accessor for AnalyticsManager.ObjectCaptureSessionBundleIdentifierEvent);
  }

  v19 = MEMORY[0x1C68F3280](0xD00000000000003CLL, 0x80000001C18E7EB0);
  outlined init with copy of AnalyticsManager.ObjectCaptureSessionInitEvent(a1, v5, type metadata accessor for AnalyticsManager.ObjectCaptureSessionBundleIdentifierEvent);
  v20 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v21 = swift_allocObject();
  outlined init with take of AnalyticsManager.ObjectCaptureSessionInitEvent(v5, v21 + v20, type metadata accessor for AnalyticsManager.ObjectCaptureSessionBundleIdentifierEvent);
  aBlock[4] = partial apply for closure #1 in AnalyticsManager.sendObjectCaptureSessionBundleIdentifierEvent(event:);
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
  aBlock[3] = &block_descriptor_24;
  v22 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v22);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AnalyticsManager.PhotogrammetrySessionInitEvent.SourceType(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x65636E6575716573;
  }

  else
  {
    v3 = 0x7265646C6F66;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x65636E6575716573;
  }

  else
  {
    v5 = 0x7265646C6F66;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AnalyticsManager.PhotogrammetrySessionInitEvent.SourceType()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double protocol witness for Hashable.hash(into:) in conformance AnalyticsManager.PhotogrammetrySessionInitEvent.SourceType(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AnalyticsManager.PhotogrammetrySessionInitEvent.SourceType()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void protocol witness for RawRepresentable.init(rawValue:) in conformance AnalyticsManager.PhotogrammetrySessionInitEvent.SourceType(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of AnalyticsManager.PhotogrammetrySessionInitEvent.SourceType.init(rawValue:), *a1);

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance AnalyticsManager.PhotogrammetrySessionInitEvent.SourceType(uint64_t *a1@<X8>)
{
  v2 = 0x7265646C6F66;
  if (*v1)
  {
    v2 = 0x65636E6575716573;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t closure #1 in AnalyticsManager.sendPhotogrammetrySessionInitEvent(event:)(uint64_t a1)
{
  v2 = UUID.uuidString.getter();
  v3 = MEMORY[0x1C68F3280](v2);

  v4 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v3, 0x496E6F6973736573, 0xE900000000000044, isUniquelyReferenced_nonNull_native);
  inited = type metadata accessor for AnalyticsManager.PhotogrammetrySessionInitEvent(0);
  v7 = *(a1 + *(inited + 20)) == 0;
  if (*(a1 + *(inited + 20)))
  {
    v8 = 0x65636E6575716573;
  }

  else
  {
    v8 = 0x7265646C6F66;
  }

  if (v7)
  {
    v9 = 0xE600000000000000;
  }

  else
  {
    v9 = 0xE800000000000000;
  }

  v10 = MEMORY[0x1C68F3280](v8, v9);

  v11 = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v10, 0x7954656372756F73, 0xEA00000000006570, v11);
  return v4;
}

uint64_t closure #1 in AnalyticsManager.sendPhotogrammetrySessionReconstructionResultEvent(event:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PhotogrammetrySession.Request(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = UUID.uuidString.getter();
  v10 = MEMORY[0x1C68F3280](v9);

  v11 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v38 = v11;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v10, 0x496E6F6973736573, 0xE900000000000044, isUniquelyReferenced_nonNull_native);
  v13 = v38;
  v14 = type metadata accessor for AnalyticsManager.PhotogrammetrySessionReconstructionResultEvent(0);
  outlined init with copy of AnalyticsManager.ObjectCaptureSessionInitEvent(a1 + v14[5], v8, type metadata accessor for PhotogrammetrySession.Request);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v16 = 0xEB00000000797469;
      v17 = 0x746E456C65646F6DLL;
    }

    else
    {
      v18 = type metadata accessor for URL();
      (*(*(v18 - 8) + 8))(v8, v18);
      v17 = 0x6C69466C65646F6DLL;
      v16 = 0xE900000000000065;
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v16 = 0xE600000000000000;
    v17 = 0x73646E756F62;
  }

  else if (EnumCaseMultiPayload == 3)
  {
    v16 = 0xEA00000000006475;
    v17 = 0x6F6C43746E696F70;
  }

  else
  {
    v16 = 0xE500000000000000;
    v17 = 0x7365736F70;
  }

  v19 = MEMORY[0x1C68F3280](v17, v16);

  v20 = swift_isUniquelyReferenced_nonNull_native();
  v38 = v13;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v19, 0x5474736575716572, 0xEB00000000657079, v20);
  v21 = v38;
  v22 = String.init<A>(describing:)();
  v23 = MEMORY[0x1C68F3280](v22);

  v24 = swift_isUniquelyReferenced_nonNull_native();
  v38 = v21;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v23, 0x6C6961746564, 0xE600000000000000, v24);
  v25 = v38;
  v26 = *(a1 + v14[7]);
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
  isa = NSNumber.init(integerLiteral:)(v26).super.super.isa;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v38 = v25;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(isa, 0x73736563637573, 0xE700000000000000, v28);
  v29 = v38;
  v30 = MEMORY[0x1C68F3280](a2, a3);
  v31 = swift_isUniquelyReferenced_nonNull_native();
  v38 = v29;
  v32 = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v30, 0x707954726F727265, 0xE900000000000065, v31);
  v33 = v38;
  v34 = MEMORY[0x1C68F3940](v32, *(a1 + v14[9]));
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v38 = v33;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v34, 0xD000000000000019, 0x80000001C18E7F60, v35);
  return v38;
}

uint64_t closure #1 in AnalyticsManager.sendObjectCaptureSessionBundleIdentifierEvent(event:)(uint64_t a1, uint64_t (*a2)(void), __n128 a3)
{
  v5 = UUID.uuidString.getter();
  v6 = MEMORY[0x1C68F3280](v5);

  v7 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v6, 0x496E6F6973736573, 0xE900000000000044, isUniquelyReferenced_nonNull_native);
  v9 = a2(0);
  v10 = MEMORY[0x1C68F3280](*(a1 + *(v9 + 20)), *(a1 + *(v9 + 20) + 8));
  v11 = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v10, 0x4449656C646E7562, 0xE800000000000000, v11);
  return v7;
}

double block_copy_helper_20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t outlined init with copy of AnalyticsManager.ObjectCaptureSessionInitEvent(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of AnalyticsManager.ObjectCaptureSessionInitEvent(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroyTm_2(uint64_t (*a1)(void))
{
  v2 = *(a1(0) - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v1 + v4, v6);

  return MEMORY[0x1EEE6BDD0](v1, v4 + v5, v3 | 7);
}

uint64_t outlined init with take of AnalyticsManager.ObjectCaptureSessionInitEvent(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t partial apply for closure #1 in AnalyticsManager.sendObjectCaptureSessionInitEvent(event:)(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

unint64_t lazy protocol witness table accessor for type AnalyticsManager.ObjectCaptureSessionCaptureModeEvent.CaptureMode and conformance AnalyticsManager.ObjectCaptureSessionCaptureModeEvent.CaptureMode()
{
  result = lazy protocol witness table cache variable for type AnalyticsManager.ObjectCaptureSessionCaptureModeEvent.CaptureMode and conformance AnalyticsManager.ObjectCaptureSessionCaptureModeEvent.CaptureMode;
  if (!lazy protocol witness table cache variable for type AnalyticsManager.ObjectCaptureSessionCaptureModeEvent.CaptureMode and conformance AnalyticsManager.ObjectCaptureSessionCaptureModeEvent.CaptureMode)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AnalyticsManager.ObjectCaptureSessionCaptureModeEvent.CaptureMode, &type metadata for AnalyticsManager.ObjectCaptureSessionCaptureModeEvent.CaptureMode, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AnalyticsManager.ObjectCaptureSessionCaptureModeEvent.CaptureMode and conformance AnalyticsManager.ObjectCaptureSessionCaptureModeEvent.CaptureMode);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AnalyticsManager.ObjectCaptureSessionStatusEvent.Status and conformance AnalyticsManager.ObjectCaptureSessionStatusEvent.Status()
{
  result = lazy protocol witness table cache variable for type AnalyticsManager.ObjectCaptureSessionStatusEvent.Status and conformance AnalyticsManager.ObjectCaptureSessionStatusEvent.Status;
  if (!lazy protocol witness table cache variable for type AnalyticsManager.ObjectCaptureSessionStatusEvent.Status and conformance AnalyticsManager.ObjectCaptureSessionStatusEvent.Status)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AnalyticsManager.ObjectCaptureSessionStatusEvent.Status, &type metadata for AnalyticsManager.ObjectCaptureSessionStatusEvent.Status, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AnalyticsManager.ObjectCaptureSessionStatusEvent.Status and conformance AnalyticsManager.ObjectCaptureSessionStatusEvent.Status);
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_47Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 3)
    {
      return v10 - 2;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t __swift_store_extra_inhabitant_index_48Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 2;
  }

  return result;
}

void specialized AnalyticsManager.sendPhotogrammetrySessionReconstructionResultEvent(event:)(uint64_t a1)
{
  v69 = type metadata accessor for PhotogrammetrySession.Request(0);
  MEMORY[0x1EEE9AC00](v69);
  v3 = &v62 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AnalyticsManager.PhotogrammetrySessionReconstructionResultEvent(0);
  v65 = *(v4 - 8);
  v5 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v4);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v62 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v62 - v10;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  v13 = __swift_project_value_buffer(v12, logger);
  outlined init with copy of AnalyticsManager.ObjectCaptureSessionInitEvent(a1, v11, type metadata accessor for AnalyticsManager.PhotogrammetrySessionReconstructionResultEvent);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  v16 = os_log_type_enabled(v14, v15);
  v66 = v8;
  v67 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v16)
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v64 = a1;
    v19 = v18;
    aBlock[0] = v18;
    *v17 = 136315138;
    v68 = v13;
    v63 = v5;
    outlined init with copy of AnalyticsManager.ObjectCaptureSessionInitEvent(v11, v8, type metadata accessor for AnalyticsManager.PhotogrammetrySessionReconstructionResultEvent);
    v20 = v3;
    v21 = String.init<A>(describing:)();
    v22 = v4;
    v24 = v23;
    outlined destroy of AnalyticsManager.ObjectCaptureSessionInitEvent(v11, type metadata accessor for AnalyticsManager.PhotogrammetrySessionReconstructionResultEvent);
    v25 = v21;
    v3 = v20;
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v24, aBlock);
    v4 = v22;

    *(v17 + 4) = v26;
    v5 = v63;
    v13 = v68;
    _os_log_impl(&dword_1C1358000, v14, v15, "Sending PhotogrammetrySessionReconstructionResultEvent: %s...", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    v27 = v19;
    a1 = v64;
    MEMORY[0x1C6902A30](v27, -1, -1);
    MEMORY[0x1C6902A30](v17, -1, -1);
  }

  else
  {

    outlined destroy of AnalyticsManager.ObjectCaptureSessionInitEvent(v11, type metadata accessor for AnalyticsManager.PhotogrammetrySessionReconstructionResultEvent);
  }

  outlined init with copy of AnalyticsManager.ObjectCaptureSessionInitEvent(a1 + *(v4 + 20), v3, type metadata accessor for PhotogrammetrySession.Request);
  if (swift_getEnumCaseMultiPayload())
  {
    outlined destroy of AnalyticsManager.ObjectCaptureSessionInitEvent(v3, type metadata accessor for PhotogrammetrySession.Request);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_1C1358000, v28, v29, "sendPhotogrammetrySessionReconstructionResultEvent got non .modelFile request! Punting...", v30, 2u);
      MEMORY[0x1C6902A30](v30, -1, -1);
    }
  }

  else
  {
    v31 = type metadata accessor for URL();
    (*(*(v31 - 8) + 8))(v3, v31);
    v32 = *(a1 + *(v4 + 32));
    v62 = v4;
    if (v32)
    {
      aBlock[0] = v32;
      v33 = v32;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v34 = String.init<A>(describing:)();
      v36 = v35;
    }

    else
    {
      v34 = 0;
      v36 = 0xE000000000000000;
    }

    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();
    v39 = os_log_type_enabled(v37, v38);
    v68 = v13;
    if (v39)
    {
      v40 = swift_slowAlloc();
      v41 = a1;
      v42 = swift_slowAlloc();
      aBlock[0] = v42;
      *v40 = 136315138;
      *(v40 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000033, 0x80000001C18E7F20, aBlock);
      _os_log_impl(&dword_1C1358000, v37, v38, "AnalyticsManaLogging eventName: %s...", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v42);
      v43 = v42;
      a1 = v41;
      MEMORY[0x1C6902A30](v43, -1, -1);
      MEMORY[0x1C6902A30](v40, -1, -1);
    }

    v44 = MEMORY[0x1C68F3280](0xD000000000000033, 0x80000001C18E7F20);
    v45 = v66;
    outlined init with copy of AnalyticsManager.ObjectCaptureSessionInitEvent(a1, v66, type metadata accessor for AnalyticsManager.PhotogrammetrySessionReconstructionResultEvent);
    v46 = (*(v65 + 80) + 16) & ~*(v65 + 80);
    v47 = v5 + v46 + 7;
    v48 = a1;
    v49 = v47 & 0xFFFFFFFFFFFFFFF8;
    v50 = swift_allocObject();
    outlined init with take of AnalyticsManager.ObjectCaptureSessionInitEvent(v45, v50 + v46, type metadata accessor for AnalyticsManager.PhotogrammetrySessionReconstructionResultEvent);
    v51 = (v50 + v49);
    *v51 = v34;
    v51[1] = v36;
    aBlock[4] = partial apply for closure #1 in AnalyticsManager.sendPhotogrammetrySessionReconstructionResultEvent(event:);
    aBlock[5] = v50;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
    aBlock[3] = &block_descriptor_83_0;
    v52 = _Block_copy(aBlock);

    AnalyticsSendEventLazy();
    _Block_release(v52);

    v53 = v67;
    outlined init with copy of AnalyticsManager.ObjectCaptureSessionInitEvent(v48, v67, type metadata accessor for AnalyticsManager.PhotogrammetrySessionReconstructionResultEvent);
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      aBlock[0] = v57;
      *v56 = 136315138;
      outlined init with copy of AnalyticsManager.ObjectCaptureSessionInitEvent(v53, v45, type metadata accessor for AnalyticsManager.PhotogrammetrySessionReconstructionResultEvent);
      v58 = String.init<A>(describing:)();
      v60 = v59;
      outlined destroy of AnalyticsManager.ObjectCaptureSessionInitEvent(v53, type metadata accessor for AnalyticsManager.PhotogrammetrySessionReconstructionResultEvent);
      v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v60, aBlock);

      *(v56 + 4) = v61;
      _os_log_impl(&dword_1C1358000, v54, v55, "... event sent! PhotogrammetrySessionReconstructionResultEvent: %s.", v56, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v57);
      MEMORY[0x1C6902A30](v57, -1, -1);
      MEMORY[0x1C6902A30](v56, -1, -1);
    }

    else
    {

      outlined destroy of AnalyticsManager.ObjectCaptureSessionInitEvent(v53, type metadata accessor for AnalyticsManager.PhotogrammetrySessionReconstructionResultEvent);
    }
  }
}

uint64_t partial apply for closure #1 in AnalyticsManager.sendPhotogrammetrySessionReconstructionResultEvent(event:)()
{
  v1 = *(type metadata accessor for AnalyticsManager.PhotogrammetrySessionReconstructionResultEvent(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v4 = *v3;
  v5 = v3[1];

  return closure #1 in AnalyticsManager.sendPhotogrammetrySessionReconstructionResultEvent(event:)(v0 + v2, v4, v5);
}

void specialized AnalyticsManager.sendPhotogrammetrySessionBundleIdentifierEvent(event:)(uint64_t a1)
{
  v2 = type metadata accessor for AnalyticsManager.PhotogrammetrySessionBundleIdentifierEvent(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v23 - v7;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, logger);
  outlined init with copy of AnalyticsManager.ObjectCaptureSessionInitEvent(a1, v8, type metadata accessor for AnalyticsManager.PhotogrammetrySessionBundleIdentifierEvent);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    aBlock[0] = v13;
    *v12 = 136315138;
    v23[0] = v3;
    outlined init with copy of AnalyticsManager.ObjectCaptureSessionInitEvent(v8, v5, type metadata accessor for AnalyticsManager.PhotogrammetrySessionBundleIdentifierEvent);
    v14 = String.init<A>(describing:)();
    v23[1] = v4;
    v15 = a1;
    v17 = v16;
    outlined destroy of AnalyticsManager.ObjectCaptureSessionInitEvent(v8, type metadata accessor for AnalyticsManager.PhotogrammetrySessionBundleIdentifierEvent);
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v17, aBlock);
    a1 = v15;
    v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);

    *(v12 + 4) = v18;
    v3 = v23[0];
    _os_log_impl(&dword_1C1358000, v10, v11, "Sending %s...", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x1C6902A30](v13, -1, -1);
    MEMORY[0x1C6902A30](v12, -1, -1);
  }

  else
  {

    outlined destroy of AnalyticsManager.ObjectCaptureSessionInitEvent(v8, type metadata accessor for AnalyticsManager.PhotogrammetrySessionBundleIdentifierEvent);
  }

  v19 = MEMORY[0x1C68F3280](0xD00000000000003DLL, 0x80000001C18E7F80);
  outlined init with copy of AnalyticsManager.ObjectCaptureSessionInitEvent(a1, v5, type metadata accessor for AnalyticsManager.PhotogrammetrySessionBundleIdentifierEvent);
  v20 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v21 = swift_allocObject();
  outlined init with take of AnalyticsManager.ObjectCaptureSessionInitEvent(v5, v21 + v20, type metadata accessor for AnalyticsManager.PhotogrammetrySessionBundleIdentifierEvent);
  aBlock[4] = partial apply for closure #1 in AnalyticsManager.sendPhotogrammetrySessionBundleIdentifierEvent(event:);
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
  aBlock[3] = &block_descriptor_89;
  v22 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v22);
}

uint64_t objectdestroy_20Tm_0(uint64_t (*a1)(void))
{
  v2 = *(a1(0) - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v1 + v4, v6);

  return MEMORY[0x1EEE6BDD0](v1, v4 + v5, v3 | 7);
}

uint64_t type metadata completion function for AnalyticsManager.ObjectCaptureSessionImageStatsEvent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void type metadata completion function for AnalyticsManager.PhotogrammetrySessionReconstructionResultEvent(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    type metadata accessor for PhotogrammetrySession.Request(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Error?(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for Error?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Error?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Error?);
    }
  }
}

unint64_t lazy protocol witness table accessor for type AnalyticsManager.PhotogrammetrySessionInitEvent.SourceType and conformance AnalyticsManager.PhotogrammetrySessionInitEvent.SourceType()
{
  result = lazy protocol witness table cache variable for type AnalyticsManager.PhotogrammetrySessionInitEvent.SourceType and conformance AnalyticsManager.PhotogrammetrySessionInitEvent.SourceType;
  if (!lazy protocol witness table cache variable for type AnalyticsManager.PhotogrammetrySessionInitEvent.SourceType and conformance AnalyticsManager.PhotogrammetrySessionInitEvent.SourceType)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AnalyticsManager.PhotogrammetrySessionInitEvent.SourceType, &type metadata for AnalyticsManager.PhotogrammetrySessionInitEvent.SourceType, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AnalyticsManager.PhotogrammetrySessionInitEvent.SourceType and conformance AnalyticsManager.PhotogrammetrySessionInitEvent.SourceType);
  }

  return result;
}

__n128 Transform.init(_:)(__n128 *a1, double a2, double a3, double a4, __n128 a5, double a6, __n128 a7)
{
  v7 = a1[5];
  v14[4] = a1[4];
  v14[5] = v7;
  v8 = a1[7];
  v14[6] = a1[6];
  v14[7] = v8;
  v9 = a1[1];
  v14[0] = *a1;
  v14[1] = v9;
  v10 = a1[3];
  v14[2] = a1[2];
  v14[3] = v10;
  SPAffineTransform3DGet4x4Matrix(v14, &v13, v10, a5, a7);
  REMakeSRTFromMatrix();
  if (one-time initialization token for identity != -1)
  {
    v12 = result;
    swift_once();
    return v12;
  }

  return result;
}

__n128 SPAffineTransform3DGet4x4Matrix@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q1>, __n128 a4@<Q3>, __n128 a5@<Q5>)
{
  result = *a1;
  a3.n128_u64[0] = *(a1 + 16);
  v6 = *(a1 + 32);
  a4.n128_u64[0] = *(a1 + 48);
  v7 = *(a1 + 64);
  a5.n128_u64[0] = *(a1 + 80);
  v8 = *(a1 + 96);
  __asm { FMOV            V7.2D, #1.0 }

  *&_Q7 = *(a1 + 112);
  *a2 = *a1;
  *(a2 + 16) = a3;
  *(a2 + 32) = v6;
  *(a2 + 48) = a4;
  *(a2 + 64) = v7;
  *(a2 + 80) = a5;
  *(a2 + 96) = v8;
  *(a2 + 112) = _Q7;
  return result;
}

float64_t SPAffineTransform3D.init(_:)@<D0>(float64x2_t *a1@<X8>, __n128 a2@<Q0>, __n128 a3@<Q2>)
{
  v22 = vcvtq_f64_f32(a2.n128_u64[0]);
  v23 = COERCE_UNSIGNED_INT64(a2.n128_f32[2]);
  SPSize3DMakeWithVector(&v22, &v21);
  SPRotation3D.init(_:)(v5, v4);
  v16 = v7;
  v17 = v6;
  v22 = vcvtq_f64_f32(a3.n128_u64[0]);
  v23 = COERCE_UNSIGNED_INT64(a3.n128_f32[2]);
  SPSize3DMakeWithVector(&v22, v19);
  *v30.vector.f64 = v16;
  *&v20.x = v17;
  *&v20.vector.f64[2] = v16;
  SPAffineTransform3DMake(&v22, &v21, v30, &v20, v19, v8, v9, v10);
  v11 = v27;
  a1[4] = v26;
  a1[5] = v11;
  v12 = v29;
  a1[6] = v28;
  a1[7] = v12;
  v13 = v23;
  *a1 = v22;
  a1[1] = v13;
  result = v24.f64[0];
  v15 = v25;
  a1[2] = v24;
  a1[3] = v15;
  return result;
}

__n128 SPSize3DMakeWithVector@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  v3 = a1[1].n128_u64[0];
  *a2 = *a1;
  a2[1].n128_u64[0] = v3;
  return result;
}

uint64_t *SPAffineTransform3DMake@<X0>(uint64_t *__return_ptr a1@<X8>, SPSize3D *a2@<X0>, SPRotation3D a3@<0:Q0, 16:Q1>, SPVector3D *a4@<X1>, float64x2_t *a5@<X2>, float64x2_t a6@<Q3>, float64x2_t _Q5@<Q5>, float64x2_t a8@<Q7>)
{
  a8.f64[0] = a2->depth;
  v10 = *&a2->width;
  result = &a2->height;
  v11.f64[0] = 0.0;
  *&v11.f64[1] = *result;
  _Q1 = *&a4->x;
  _Q0 = *&a4->vector.f64[2];
  _D18 = a4->y;
  _Q17.f64[0] = _Q0.f64[1];
  __asm { FMLA            D2, D17, V0.D[1] }

  v17 = vmuld_lane_f64(_Q0.f64[0], _Q0, 1);
  v18.f64[0] = vmuld_lane_f64(_D18, _Q0, 1);
  a6.f64[0] = -(v18.f64[0] - a4->x * _Q0.f64[0]) - (v18.f64[0] - a4->x * _Q0.f64[0]);
  _Q2.f64[1] = v17 + a4->x * _D18 + v17 + a4->x * _D18;
  v21.f64[0] = -(v17 - a4->x * _D18) - (v17 - a4->x * _D18);
  __asm
  {
    FMLA            D5, D18, V1.D[1]
    FMLA            D5, D17, V0.D[1]
  }

  v20 = _Q5.f64[0] - *&_Q1 * *&_Q1;
  _Q5.f64[0] = vmuld_lane_f64(a4->x, _Q0, 1);
  _Q5.f64[0] = _Q5.f64[0] + _D18 * _Q0.f64[0] + _Q5.f64[0] + _D18 * _Q0.f64[0];
  v21.f64[1] = v20;
  v18.f64[1] = -(a4->x * _Q0.f64[1]);
  v22 = vmlaq_n_f64(v18, *&a4->x, _Q0.f64[0]);
  v23 = vaddq_f64(v22, v22);
  __asm { FMLS            D17, D18, V1.D[1] }

  v25 = *a5;
  _Q0.f64[0] = a5[1].f64[0];
  *a1 = 0u;
  *(a1 + 1) = 0u;
  *(a1 + 2) = 0u;
  *(a1 + 3) = 0u;
  *(a1 + 4) = 0u;
  *(a1 + 5) = 0u;
  *(a1 + 6) = 0u;
  *(a1 + 7) = 0u;
  v28 = *MEMORY[0x1E69E9B00];
  v27 = *(MEMORY[0x1E69E9B00] + 16);
  v30 = *(MEMORY[0x1E69E9B00] + 32);
  v29 = *(MEMORY[0x1E69E9B00] + 48);
  v32 = *(MEMORY[0x1E69E9B00] + 64);
  v31 = *(MEMORY[0x1E69E9B00] + 80);
  v33 = vandq_s8(vandq_s8(vceqq_f64(v32, v23), vceqq_f64(v30, v21)), vceqq_f64(*MEMORY[0x1E69E9B00], _Q2));
  if (((v33.i64[0] & v33.i64[1] & vandq_s8(vceqq_f64(v31, _Q17), vandq_s8(vceqq_f64(v29, _Q5), vceqq_f64(v27, a6))).u64[0] & 0x8000000000000000) != 0) == _VF || (v34 = vandq_s8(vceqq_f64(v30, v11), vandq_s8(vceqq_f64(v28, v10), vceqq_f64(v32, 0))), ((v34.i64[0] & v34.i64[1] & vandq_s8(vandq_s8(vceqq_f64(v29, 0), vceqq_f64(v27, 0)), vceqq_f64(v31, a8)).u64[0] & 0x8000000000000000) != 0) == _VF))
  {
    v35 = 0;
    v58 = v10;
    v59 = 0uLL;
    v60 = v11;
    v61 = 0uLL;
    v62 = 0uLL;
    v63 = a8;
    v67 = 0uLL;
    v68 = 0uLL;
    v69 = 0uLL;
    v70 = 0uLL;
    v71 = 0uLL;
    v72 = 0uLL;
    do
    {
      v37 = *(&v58 + v35);
      v36 = *(&v58 + v35 + 16);
      v38 = (&v67 + v35);
      *v38 = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(_Q2, v37.f64[0]), v21, v37, 1), v23, *&v36);
      v38[1] = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(a6, v37.f64[0]), _Q5, v37, 1), _Q17, *&v36);
      v35 += 32;
    }

    while (v35 != 96);
    _Q2 = v67;
    a6 = v68;
    v21 = v69;
    _Q5 = v70;
    v23 = v71;
    _Q17 = v72;
    *a1 = v67;
    *(a1 + 1) = a6;
  }

  v39 = xmmword_1C18B41F0;
  v40 = xmmword_1C18B1340;
  __asm { FMOV            V21.2D, #1.0 }

  v43 = vandq_s8(vandq_s8(vceqq_f64(v30, xmmword_1C18B1340), vceqq_f64(v28, xmmword_1C18B41F0)), vceqzq_f64(v32));
  if (((v43.i64[0] & v43.i64[1] & vandq_s8(vandq_s8(vceqzq_f64(v29), vceqzq_f64(v27)), vceqq_f64(v31, _Q21)).u64[0] & 0x8000000000000000) != 0) != _VF && (v44 = vandq_s8(vandq_s8(vceqq_f64(v29, _Q5), vceqq_f64(v27, a6)), vceqq_f64(v31, _Q17)).u64[0], v45 = vandq_s8(vandq_s8(vceqq_f64(v30, v21), vceqq_f64(v28, _Q2)), vceqq_f64(v32, v23)), ((v45.i64[0] & v45.i64[1] & v44 & 0x8000000000000000) != 0) ^ _VF))
  {
    v53 = 0uLL;
    v25 = vaddq_f64(v25, 0);
    _Q0 = vaddq_f64(_Q0, 0);
    v52 = 0uLL;
    v51 = 0uLL;
  }

  else
  {
    v46 = vceqzq_f64(v25);
    if (((v46.i64[0] & v46.i64[1] & vceqzq_f64(_Q0).u64[0] & 0x8000000000000000) != 0) != _VF)
    {
      v54 = 0;
      v58 = _Q2;
      v59 = a6;
      v60 = v21;
      v61 = _Q5;
      v62 = v23;
      v63 = _Q17;
      v67 = 0u;
      v68 = 0u;
      v69 = 0u;
      v70 = 0u;
      v71 = 0u;
      v72 = 0u;
      do
      {
        v56 = *(&v58 + v54);
        v55 = *(&v58 + v54 + 16);
        v57 = (&v67 + v54);
        *v57 = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(xmmword_1C18B41F0, v56.f64[0]), xmmword_1C18B1340, v56, 1), 0, v55.f64[0]);
        v57[1] = vmlaq_f64(vmlaq_laneq_f64(vmulq_f64(v56, 0), 0, v56, 1), _Q21, v55);
        v54 += 32;
      }

      while (v54 != 96);
      v39 = v67;
      v51 = v68;
      v40 = v69;
      v52 = v70;
      v53 = v71;
      _Q21 = v72;
    }

    else
    {
      v47 = 0;
      _Q0.f64[1] = 1.0;
      v58 = _Q2;
      v59 = *&a6.f64[0];
      v60 = v21;
      v61 = *&_Q5.f64[0];
      v62 = v23;
      v63 = *&_Q17.f64[0];
      v64 = 0;
      v65 = 0;
      v66 = xmmword_1C18B1340;
      v67 = 0u;
      v68 = 0u;
      v69 = 0u;
      v70 = 0u;
      v71 = 0u;
      v72 = 0u;
      v73 = 0u;
      v74 = 0u;
      do
      {
        v49 = *(&v58 + v47);
        v48 = *(&v58 + v47 + 16);
        v50 = (&v67 + v47);
        *v50 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(xmmword_1C18B41F0, v49.f64[0]), xmmword_1C18B1340, v49, 1), 0, v48.f64[0]), v25, v48, 1);
        v50[1] = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(0, v49.f64[0]), 0, v49, 1), xmmword_1C18B41F0, v48.f64[0]), _Q0, v48, 1);
        v47 += 32;
      }

      while (v47 != 128);
      v39 = v67;
      v51 = v68;
      v40 = v69;
      v52 = v70;
      v53 = v71;
      _Q21 = v72;
      v25 = v73;
      _Q0 = v74;
    }
  }

  *a1 = v39;
  *(a1 + 1) = v51;
  *(a1 + 2) = v40;
  *(a1 + 3) = v52;
  *(a1 + 4) = v53;
  *(a1 + 5) = _Q21;
  *(a1 + 6) = v25;
  *(a1 + 7) = _Q0;
  return result;
}

uint64_t specialized Sequence.first(where:)@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for PhotogrammetrySessionImpl.RequestMap.Entry(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  if (v11)
  {
    v18 = a3;
    v12 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v13 = *(v8 + 72);
    while (1)
    {
      outlined init with copy of PhotogrammetrySession.Request(v12, v10, type metadata accessor for PhotogrammetrySessionImpl.RequestMap.Entry);
      v14 = a1(v10);
      if (v3)
      {
        return outlined destroy of PhotogrammetrySession.Request(v10, type metadata accessor for PhotogrammetrySessionImpl.RequestMap.Entry);
      }

      if (v14)
      {
        break;
      }

      outlined destroy of PhotogrammetrySession.Request(v10, type metadata accessor for PhotogrammetrySessionImpl.RequestMap.Entry);
      v12 += v13;
      if (!--v11)
      {
        v15 = 1;
        a3 = v18;
        return (*(v8 + 56))(a3, v15, 1, v7);
      }
    }

    a3 = v18;
    outlined init with take of PhotogrammetrySession.Request(v10, v18, type metadata accessor for PhotogrammetrySessionImpl.RequestMap.Entry);
    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  return (*(v8 + 56))(a3, v15, 1, v7);
}

unint64_t specialized Collection.firstIndex(where:)(unint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = a3;
  v6 = result;
  v7 = *(a4 + 16);
  for (i = a4 + 40 * a3 + 32; ; i += 40)
  {
    if (v7 == v5)
    {
      return 0;
    }

    if (v5 >= v7)
    {
      break;
    }

    result = v6(i, a2);
    if (v4)
    {
      return result;
    }

    if (result)
    {
      return v5;
    }

    if (__OFADD__(v5++, 1))
    {
      __break(1u);
      return 0;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized Collection.firstIndex(where:)(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(type metadata accessor for PhotogrammetrySessionImpl.RequestMap.Entry(0) - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (1)
  {
    v11 = a1(v9);
    if (v3 || (v11 & 1) != 0)
    {
      break;
    }

    ++v7;
    v9 += v10;
    if (v4 == v7)
    {
      return 0;
    }
  }

  return v7;
}

uint64_t PhotogrammetrySample.init(_:)(id *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6CoreOC20PhotogrammetrySampleVSgMd, &_s6CoreOC20PhotogrammetrySampleVSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v13[-v3];
  outlined init with copy of [String : String]((a1 + 9), v13, &_sypSgMd, &_sypSgMR);
  if (!v14)
  {
    goto LABEL_4;
  }

  v5 = type metadata accessor for PhotogrammetrySample();
  v6 = swift_dynamicCast();
  v7 = *(v5 - 8);
  (*(v7 + 56))(v4, v6 ^ 1u, 1, v5);
  if ((*(v7 + 48))(v4, 1, v5) != 1)
  {
    outlined destroy of BodyTrackingComponent?(v4, &_s6CoreOC20PhotogrammetrySampleVSgMd, &_s6CoreOC20PhotogrammetrySampleVSgMR);
    __break(1u);
LABEL_4:
    outlined destroy of BodyTrackingComponent?(v13, &_sypSgMd, &_sypSgMR);
    v8 = type metadata accessor for PhotogrammetrySample();
    (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  }

  outlined destroy of BodyTrackingComponent?(v4, &_s6CoreOC20PhotogrammetrySampleVSgMd, &_s6CoreOC20PhotogrammetrySampleVSgMR);
  v9 = a1[1];
  PhotogrammetrySample.init(id:image:)();

  PhotogrammetrySample.metadata.setter();
  v10 = a1[3];
  PhotogrammetrySample.depthDataMap.setter();
  PhotogrammetrySample.gravity.setter();
  v11 = a1[8];
  PhotogrammetrySample.objectMask.setter();
  return outlined destroy of PhotogrammetrySample(a1);
}

uint64_t PhotogrammetrySessionImpl.init(id:using:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v67 = a3;
  v53 = a2;
  v59 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy17RealityFoundation21PhotogrammetrySessionC6OutputOGSgMd, &_sScSy17RealityFoundation21PhotogrammetrySessionC6OutputOGSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v50 = &v46[-v6];
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy17RealityFoundation21PhotogrammetrySessionC6OutputO_GMd, &_sScS8IteratorVy17RealityFoundation21PhotogrammetrySessionC6OutputO_GMR);
  v48 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v47 = &v46[-v7];
  v8 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v57 = *(v8 - 8);
  v58 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v56 = &v46[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x1EEE9AC00](v10);
  v11 = type metadata accessor for DispatchQoS();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v12 = MEMORY[0x1E69E7CC0];
  *(v3 + OBJC_IVAR____TtC17RealityFoundation25PhotogrammetrySessionImpl_activeRequests) = MEMORY[0x1E69E7CC0];
  *(v3 + OBJC_IVAR____TtC17RealityFoundation25PhotogrammetrySessionImpl_isProcessing) = 0;
  v52 = OBJC_IVAR____TtC17RealityFoundation25PhotogrammetrySessionImpl_outputMonitor;
  *(v3 + OBJC_IVAR____TtC17RealityFoundation25PhotogrammetrySessionImpl_outputMonitor) = 0;
  v51 = OBJC_IVAR____TtC17RealityFoundation25PhotogrammetrySessionImpl_photogrammetrySession;
  *(v3 + OBJC_IVAR____TtC17RealityFoundation25PhotogrammetrySessionImpl_photogrammetrySession) = 0;
  v13 = OBJC_IVAR____TtC17RealityFoundation25PhotogrammetrySessionImpl_requestMap;
  type metadata accessor for PhotogrammetrySessionImpl.RequestMap();
  v14 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCySay17RealityFoundation25PhotogrammetrySessionImplC10RequestMapC5Entry33_372E864D6FBFC56F64A9656CCD500B7CLLVGSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCySay17RealityFoundation25PhotogrammetrySessionImplC10RequestMapC5Entry33_372E864D6FBFC56F64A9656CCD500B7CLLVGSo16os_unfair_lock_sVGMR);
  v15 = swift_allocObject();
  *(v15 + 24) = 0;
  *(v15 + 16) = v12;
  *(v14 + 16) = v15;
  *(v3 + v13) = v14;
  *(v3 + OBJC_IVAR____TtC17RealityFoundation25PhotogrammetrySessionImpl_timerToLogResourceUsage) = 0;
  *(v3 + OBJC_IVAR____TtC17RealityFoundation25PhotogrammetrySessionImpl_sortedImageFiles) = v12;
  *(v3 + OBJC_IVAR____TtC17RealityFoundation25PhotogrammetrySessionImpl_invalidSamples) = v12;
  *(v3 + OBJC_IVAR____TtC17RealityFoundation25PhotogrammetrySessionImpl_skippedSamples) = v12;
  *(v3 + OBJC_IVAR____TtC17RealityFoundation25PhotogrammetrySessionImpl_state) = 0;
  v55 = OBJC_IVAR____TtC17RealityFoundation25PhotogrammetrySessionImpl_serialExecutor;
  v54 = type metadata accessor for OS_dispatch_queue();
  static DispatchQoS.userInitiated.getter();
  *&aBlock = v12;
  lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  v16 = v59;
  lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR, MEMORY[0x1E69E6328]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v57 + 104))(v56, *MEMORY[0x1E69E8090], v58);
  *(v3 + v55) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v17 = OBJC_IVAR____TtC17RealityFoundation25PhotogrammetrySessionImpl_sessionID;
  v18 = type metadata accessor for UUID();
  v19 = *(v18 - 8);
  (*(v19 + 16))(v4 + v17, v16, v18);
  type metadata accessor for PhotogrammetrySession();
  result = static PhotogrammetrySession.isSupported.getter();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  *(v4 + v51) = v53;
  swift_retain_n();

  outlined init with copy of PhotogrammetrySession.Request(v67, v4 + OBJC_IVAR____TtC17RealityFoundation25PhotogrammetrySessionImpl_configuration, type metadata accessor for PhotogrammetrySession.Configuration);
  v21 = dispatch thunk of PhotogrammetrySession.outputPublisher.getter();

  type metadata accessor for OutputPublisherMonitor(0);
  v22 = swift_allocObject();
  OutputPublisherMonitor.init(publisher:)(v21);
  v23 = v52;
  *(v4 + v52) = v22;

  v24 = *(v4 + v23);
  if (!v24)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v25 = OBJC_IVAR____TtC17RealityFoundation22OutputPublisherMonitor_outputs;
  swift_beginAccess();
  v26 = v24 + v25;
  v27 = v50;
  outlined init with copy of [String : String](v26, v50, &_sScSy17RealityFoundation21PhotogrammetrySessionC6OutputOGSgMd, &_sScSy17RealityFoundation21PhotogrammetrySessionC6OutputOGSgMR);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy17RealityFoundation21PhotogrammetrySessionC6OutputOGMd, &_sScSy17RealityFoundation21PhotogrammetrySessionC6OutputOGMR);
  v29 = *(v28 - 8);
  result = (*(v29 + 48))(v27, 1, v28);
  if (result == 1)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v30 = v47;
  AsyncStream.makeAsyncIterator()();
  (*(v29 + 8))(v27, v28);
  v65 = type metadata accessor for AsyncOutputIterator(0);
  v66 = &protocol witness table for AsyncOutputIterator;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v64);
  (*(v48 + 32))(boxed_opaque_existential_1, v30, v49);
  result = outlined init with take of ForceEffectBase(&v64, &aBlock);
  v32 = v61;
  *(v4 + 16) = aBlock;
  *(v4 + 32) = v32;
  *(v4 + 48) = v62;
  v33 = OBJC_IVAR____TtC17RealityFoundation25PhotogrammetrySessionImpl_outputMonitor;
  v34 = *(v4 + OBJC_IVAR____TtC17RealityFoundation25PhotogrammetrySessionImpl_outputMonitor);
  if (!v34)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v35 = swift_allocObject();
  swift_weakInit();
  v36 = *(v34 + 24);
  v37 = *(v34 + 32);
  *(v34 + 24) = partial apply for closure #1 in PhotogrammetrySessionImpl.init(id:using:configuration:);
  *(v34 + 32) = v35;

  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v36, v37);

  v38 = *(v4 + v33);
  if (!v38)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v39 = swift_allocObject();
  swift_weakInit();

  v40 = *(v38 + 40);
  v41 = *(v38 + 48);
  *(v38 + 40) = partial apply for closure #2 in PhotogrammetrySessionImpl.init(id:using:configuration:);
  *(v38 + 48) = v39;

  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v40, v41);

  if (*(v4 + v33))
  {
    swift_weakAssign();
    v42 = objc_opt_self();
    v62 = closure #3 in PhotogrammetrySessionImpl.init(id:using:configuration:);
    v63 = 0;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v61 = thunk for @escaping @callee_guaranteed (@guaranteed RECancellationTokenRef) -> ();
    *(&v61 + 1) = &block_descriptor_161;
    v43 = _Block_copy(&aBlock);
    v44 = [v42 scheduledTimerWithTimeInterval:1 repeats:v43 block:5.0];
    _Block_release(v43);

    outlined destroy of PhotogrammetrySession.Request(v67, type metadata accessor for PhotogrammetrySession.Configuration);
    (*(v19 + 8))(v16, v18);
    v45 = *(v4 + OBJC_IVAR____TtC17RealityFoundation25PhotogrammetrySessionImpl_timerToLogResourceUsage);
    *(v4 + OBJC_IVAR____TtC17RealityFoundation25PhotogrammetrySessionImpl_timerToLogResourceUsage) = v44;

    return v4;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t closure #1 in PhotogrammetrySessionImpl.init(id:using:configuration:)(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = *(result + OBJC_IVAR____TtC17RealityFoundation25PhotogrammetrySessionImpl_serialExecutor);
    v3 = result;
    v4 = swift_allocObject();
    *(v4 + 16) = partial apply for closure #1 in PhotogrammetrySessionImpl.onProcessingComplete();
    *(v4 + 24) = v3;
    aBlock[4] = thunk for @callee_guaranteed () -> ()partial apply;
    aBlock[5] = v4;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_175;
    v5 = _Block_copy(aBlock);

    dispatch_sync(v2, v5);
    _Block_release(v5);
    LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

    if (v2)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t closure #2 in PhotogrammetrySessionImpl.init(id:using:configuration:)(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = *(result + OBJC_IVAR____TtC17RealityFoundation25PhotogrammetrySessionImpl_serialExecutor);
    v3 = result;
    v4 = swift_allocObject();
    *(v4 + 16) = partial apply for closure #1 in PhotogrammetrySessionImpl.onProcessingCancelled();
    *(v4 + 24) = v3;
    aBlock[4] = _sIg_Ieg_TRTA_0;
    aBlock[5] = v4;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_167;
    v5 = _Block_copy(aBlock);

    dispatch_sync(v2, v5);
    _Block_release(v5);
    LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

    if (v2)
    {
      __break(1u);
    }
  }

  return result;
}

void closure #3 in PhotogrammetrySessionImpl.init(id:using:configuration:)()
{
  act_list[1] = *MEMORY[0x1E69E9840];
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, logger);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 134349056;
    *(v3 + 4) = specialized static ResourceUsageHelper.memoryUsage(in:)(2);
    _os_log_impl(&dword_1C1358000, v1, v2, "Memory usage: %{public}llu MB", v3, 0xCu);
    MEMORY[0x1C6902A30](v3, -1, -1);
  }

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 134349056;
    act_list[0] = 0;
    act_listCnt[0] = 0;
    v7 = task_threads(*MEMORY[0x1E69E9A60], act_list, act_listCnt);
    if (act_list[0])
    {
      v8 = v7 == 0;
    }

    else
    {
      v8 = 0;
    }

    v9 = act_listCnt[0];
    if (!v8)
    {
      v9 = -1;
    }

    *(v6 + 4) = v9;
    _os_log_impl(&dword_1C1358000, v4, v5, "Thread count: %{public}ld", v6, 0xCu);
    MEMORY[0x1C6902A30](v6, -1, -1);
  }

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    act_list[0] = v13;
    *v12 = 136446210;
    v14 = [objc_opt_self() processInfo];
    v15 = [v14 thermalState];

    *act_listCnt = v15;
    type metadata accessor for NSProcessInfoThermalState(0);
    v16 = String.init<A>(describing:)();
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, act_list);

    *(v12 + 4) = v18;
    _os_log_impl(&dword_1C1358000, v10, v11, "Thermal state: %{public}s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x1C6902A30](v13, -1, -1);
    MEMORY[0x1C6902A30](v12, -1, -1);
  }
}

uint64_t PhotogrammetrySession.Configuration.init(_:)(unsigned __int8 *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v23 - v3;
  PhotogrammetrySession.Configuration.init()();
  PhotogrammetrySession.Configuration.isObjectMaskingEnabled.setter();
  v5 = a1[1];
  v6 = type metadata accessor for PhotogrammetrySession.Configuration.SampleOrdering();
  v9 = MEMORY[0x1EEE9AC00](v6);
  if (v5 == 1)
  {
    v10 = MEMORY[0x1E69982B8];
  }

  else
  {
    v10 = MEMORY[0x1E69982C0];
  }

  (*(v8 + 104))(&v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), *v10, v9);
  PhotogrammetrySession.Configuration.sampleOrdering.setter();
  v11 = a1[2];
  v12 = type metadata accessor for PhotogrammetrySession.Configuration.FeatureSensitivity();
  v15 = MEMORY[0x1EEE9AC00](v12);
  if (v11 == 1)
  {
    v16 = MEMORY[0x1E69982C8];
  }

  else
  {
    v16 = MEMORY[0x1E69982D0];
  }

  (*(v14 + 104))(&v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), *v16, v15);
  PhotogrammetrySession.Configuration.featureSensitivity.setter();
  v17 = type metadata accessor for PhotogrammetrySession.Configuration(0);
  outlined init with copy of [String : String](&a1[*(v17 + 28)], v4, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  PhotogrammetrySession.Configuration.snapshotURL.setter();
  PhotogrammetrySession.Configuration.ignoreBoundingBox.setter();
  if (PhotogrammetrySession.Configuration.ignoreBoundingBox.getter())
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, logger);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1C1358000, v19, v20, "Setting PhotogrammetrySession.Configuration to ignore bounding box!", v21, 2u);
      MEMORY[0x1C6902A30](v21, -1, -1);
    }
  }

  return outlined destroy of PhotogrammetrySession.Request(a1, type metadata accessor for PhotogrammetrySession.Configuration);
}

uint64_t closure #1 in PhotogrammetrySessionImpl.init<A>(id:input:configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6CoreOC20PhotogrammetrySampleVSgMd, &_s6CoreOC20PhotogrammetrySampleVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13[-1] - v5;
  outlined init with copy of [String : String](a1 + 72, v13, &_sypSgMd, &_sypSgMR);
  if (v13[3])
  {
    v7 = type metadata accessor for PhotogrammetrySample();
    v8 = swift_dynamicCast();
    v9 = *(v7 - 8);
    (*(v9 + 56))(v6, v8 ^ 1u, 1, v7);
    if ((*(v9 + 48))(v6, 1, v7) != 1)
    {
      return (*(v9 + 32))(a2, v6, v7);
    }
  }

  else
  {
    outlined destroy of BodyTrackingComponent?(v13, &_sypSgMd, &_sypSgMR);
    v11 = type metadata accessor for PhotogrammetrySample();
    (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  }

  outlined destroy of BodyTrackingComponent?(v6, &_s6CoreOC20PhotogrammetrySampleVSgMd, &_s6CoreOC20PhotogrammetrySampleVSgMR);
  outlined init with copy of PhotogrammetrySample(a1, v13);
  return PhotogrammetrySample.init(_:)(v13);
}

void PhotogrammetrySessionImpl.deinit()
{
  v1 = v0;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, logger);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1C1358000, v3, v4, "~~~ PhotogrammetrySession deinit was called! ~~~", v5, 2u);
    MEMORY[0x1C6902A30](v5, -1, -1);
  }

  v6 = *(v1 + OBJC_IVAR____TtC17RealityFoundation25PhotogrammetrySessionImpl_outputMonitor);
  if (v6)
  {
    v7 = *(v6 + 56);
    if (v7)
    {
      v8 = *(v6 + 64);

      v7(v9);
      outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v7, v8);
    }

    v10 = OBJC_IVAR____TtC17RealityFoundation25PhotogrammetrySessionImpl_timerToLogResourceUsage;
    v11 = *(v1 + OBJC_IVAR____TtC17RealityFoundation25PhotogrammetrySessionImpl_timerToLogResourceUsage);
    if (v11)
    {
      [v11 invalidate];
      v12 = *(v1 + v10);
    }

    else
    {
      v12 = 0;
    }

    *(v1 + v10) = 0;

    v13 = *(v1 + OBJC_IVAR____TtC17RealityFoundation25PhotogrammetrySessionImpl_requestMap);
    v14 = swift_beginAccess();
    v15 = *(v13 + 16);
    MEMORY[0x1EEE9AC00](v14);

    os_unfair_lock_lock((v15 + 24));
    closure #1 in Atomic.store(_:)specialized partial apply((v15 + 16));
    os_unfair_lock_unlock((v15 + 24));
    swift_endAccess();

    if (*(v1 + OBJC_IVAR____TtC17RealityFoundation25PhotogrammetrySessionImpl_photogrammetrySession))
    {

      dispatch thunk of PhotogrammetrySession.close()();

      outlined destroy of PhotogrammetrySession.Outputs(v1 + 16);
      outlined destroy of PhotogrammetrySession.Request(v1 + OBJC_IVAR____TtC17RealityFoundation25PhotogrammetrySessionImpl_configuration, type metadata accessor for PhotogrammetrySession.Configuration);

      v16 = OBJC_IVAR____TtC17RealityFoundation25PhotogrammetrySessionImpl_sessionID;
      v17 = type metadata accessor for UUID();
      (*(*(v17 - 8) + 8))(v1 + v16, v17);

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t PhotogrammetrySessionImpl.__deallocating_deinit()
{
  PhotogrammetrySessionImpl.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata completion function for PhotogrammetrySessionImpl(uint64_t a1)
{
  result = type metadata accessor for PhotogrammetrySession.Configuration(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for UUID();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

void closure #1 in PhotogrammetrySessionImpl.process(requests:)(uint64_t a1, Swift::OpaquePointer a2)
{
  v5 = type metadata accessor for PhotogrammetrySession.Request(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v33 = &rawValue - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &rawValue - v9;
  v11 = OBJC_IVAR____TtC17RealityFoundation25PhotogrammetrySessionImpl_state;
  if (*(a1 + OBJC_IVAR____TtC17RealityFoundation25PhotogrammetrySessionImpl_state) == 2)
  {
    __break(1u);
    goto LABEL_13;
  }

  specialized PhotogrammetrySessionImpl.throwIfInvalidRequests(_:)(a2._rawValue);
  if (v2)
  {
    return;
  }

  v12 = *(a2._rawValue + 2);
  v13._rawValue = MEMORY[0x1E69E7CC0];
  if (v12)
  {
    v26 = v11;
    v27 = a1;
    v34 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12, 0);
    v13._rawValue = v34;
    v14 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    rawValue = a2._rawValue;
    v15 = v6;
    v16 = a2._rawValue + v14;
    v17 = type metadata accessor for PhotogrammetrySession.Request();
    v31 = v17;
    v18 = *(v17 - 8);
    v32 = *(v18 + 64);
    v29 = *(v15 + 72);
    v30 = v18;
    v28 = v18 + 32;
    do
    {
      MEMORY[0x1EEE9AC00](v17);
      v20 = &rawValue - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
      outlined init with copy of PhotogrammetrySession.Request(v16, v10, type metadata accessor for PhotogrammetrySession.Request);
      v21 = v33;
      outlined init with copy of PhotogrammetrySession.Request(v10, v33, type metadata accessor for PhotogrammetrySession.Request);
      PhotogrammetrySession.Request.init(_:)(v21, v20);
      v22 = v10;
      outlined destroy of PhotogrammetrySession.Request(v10, type metadata accessor for PhotogrammetrySession.Request);
      v34 = v13._rawValue;
      v24 = *(v13._rawValue + 2);
      v23 = *(v13._rawValue + 3);
      if (v24 >= v23 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1);
        v13._rawValue = v34;
      }

      *(v13._rawValue + 2) = v24 + 1;
      v17 = (*(v30 + 32))(v13._rawValue + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v24, v20, v31);
      v16 += v29;
      --v12;
      v10 = v22;
    }

    while (v12);
    v11 = v26;
    a1 = v27;
    a2._rawValue = rawValue;
  }

  PhotogrammetrySessionImpl.RequestMap.addRequests(apiRequests:internalRequests:)(a2, v13);

  if (!*(a1 + OBJC_IVAR____TtC17RealityFoundation25PhotogrammetrySessionImpl_photogrammetrySession))
  {
LABEL_13:
    __break(1u);
    return;
  }

  dispatch thunk of PhotogrammetrySession.process(requests:)();

  *(a1 + v11) = 1;
  *(a1 + OBJC_IVAR____TtC17RealityFoundation25PhotogrammetrySessionImpl_isProcessing) = 1;
}

uint64_t PhotogrammetrySession.Request.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v131 = a2;
  v132[3] = *MEMORY[0x1E69E9840];
  v3 = type metadata accessor for UUID();
  v128 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v111 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for URL();
  v129.i64[0] = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v111 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v111 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v111 - v13;
  v15 = type metadata accessor for PhotogrammetrySession.Request(0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v111 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = a1;
  outlined init with copy of PhotogrammetrySession.Request(a1, v17, type metadata accessor for PhotogrammetrySession.Request);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v124.i64[0] = v5;
    v125.i64[0] = v3;
    *&v126 = v11;
    v21 = v129.i64[0];
    v127.i64[0] = v6;
    if (EnumCaseMultiPayload)
    {
      v50 = *(v17 + 1);
      v111 = *v17;
      v113 = v50;
      v51 = *(v17 + 3);
      v112 = *(v17 + 2);
      v115 = v51;
      v52 = *(v17 + 5);
      v114 = *(v17 + 4);
      v117.i64[0] = v52;
      v53 = *(v17 + 7);
      v116 = *(v17 + 6);
      v119.i64[0] = v53;
      v54 = *(v17 + 9);
      v118 = *(v17 + 8);
      v121.i64[0] = v54;
      v55 = *(v17 + 11);
      *&v120 = *(v17 + 10);
      *&v122 = v55;
      v123.i32[0] = v17[96];
      v56 = objc_opt_self();
      v57 = [v56 defaultManager];
      v58 = [v57 temporaryDirectory];

      static URL._unconditionallyBridgeFromObjectiveC(_:)();
      v59 = v124.i64[0];
      UUID.init()();
      UUID.uuidString.getter();
      v60 = v8;
      (*(v128 + 8))(v59, v125.i64[0]);
      v61 = v126;
      URL.appendingPathComponent(_:isDirectory:)();

      v62 = v21;
      v63 = v21 + 8;
      v64 = *(v21 + 8);
      v65 = v127.i64[0];
      v64(v60, v127.i64[0]);
      v66 = [v56 defaultManager];
      v67 = URL.path.getter();
      v68 = MEMORY[0x1C68F3280](v67);

      v132[0] = 0;
      LODWORD(v57) = [v66 createDirectoryAtPath:v68 withIntermediateDirectories:1 attributes:0 error:v132];

      if (v57)
      {
        v125.i64[0] = v64;
        v128 = v63;
        v69 = v132[0];
        URL.appendingPathComponent(_:)();
        (*(v62 + 40))(v61, v60, v65);
        if (one-time initialization token for logger != -1)
        {
          swift_once();
        }

        v70 = type metadata accessor for Logger();
        __swift_project_value_buffer(v70, logger);
        v71 = Logger.logObject.getter();
        v72 = static os_log_type_t.debug.getter();
        v73 = os_log_type_enabled(v71, v72);
        v74 = v131;
        if (v73)
        {
          v75 = swift_slowAlloc();
          v76 = swift_slowAlloc();
          v132[0] = v76;
          *v75 = 141558274;
          *(v75 + 4) = 1752392040;
          *(v75 + 12) = 2080;
          swift_beginAccess();
          lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
          v77 = dispatch thunk of CustomStringConvertible.description.getter();
          v79 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v77, v78, v132);

          *(v75 + 14) = v79;
          _os_log_impl(&dword_1C1358000, v71, v72, "outputURL for modelEntity: %{mask.hash}s", v75, 0x16u);
          __swift_destroy_boxed_opaque_existential_1(v76);
          MEMORY[0x1C6902A30](v76, -1, -1);
          v80 = v75;
          v65 = v127.i64[0];
          MEMORY[0x1C6902A30](v80, -1, -1);
        }

        v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV3url_6CoreOC21PhotogrammetrySessionC7RequestO6DetailO6detailAI8GeometryVSg8geometrytMd, &_s10Foundation3URLV3url_6CoreOC21PhotogrammetrySessionC7RequestO6DetailO6detailAI8GeometryVSg8geometrytMR);
        v82 = *(v81 + 48);
        v83 = *(v81 + 64);
        swift_beginAccess();
        (*(v62 + 16))(v74, v61, v65);
        v84 = *MEMORY[0x1E6998398];
        v85 = type metadata accessor for PhotogrammetrySession.Request.Detail();
        (*(*(v85 - 8) + 104))(v74 + v82, v84, v85);
        v86 = v125.i64[0];
        if (v123.i8[0])
        {
          v87 = 1;
        }

        else
        {
          v100.i64[0] = v111;
          v100.i64[1] = v113;
          v129 = v100;
          v100.i64[0] = v112;
          v100.i64[1] = v115;
          v127 = v100;
          v100.i64[0] = v114;
          v100.i64[1] = v117.i64[0];
          v124 = v100;
          v100.i64[0] = v116;
          v100.i64[1] = v119.i64[0];
          v123 = v100;
          v100.i64[0] = v118;
          v100.i64[1] = v121.i64[0];
          v121 = v100;
          *&v101 = v120;
          *(&v101 + 1) = v122;
          v120 = v101;
          REAABBExtents();
          v122 = v102;
          REAABBCenter();
          if (one-time initialization token for identity != -1)
          {
            v121 = v103;
            swift_once();
            v103.i64[0] = v121.i64[0];
          }

          *v104.i64 = specialized simd_float4x4.init(translation:rotation:scale:)(*v103.i64, v123, *&v122);
          v123 = v104;
          v122 = v105;
          v121 = v106;
          v120 = v107;
          specialized simd_float4x4.init(translation:rotation:scale:)(*v124.i64, v127, v129.f32[0]);
          PhotogrammetrySession.Request.Geometry.init(orientedBoundsTransform:rootTransform:)();
          v87 = 0;
        }

        outlined destroy of PhotogrammetrySession.Request(v130, type metadata accessor for PhotogrammetrySession.Request);
        v108 = type metadata accessor for PhotogrammetrySession.Request.Geometry();
        (*(*(v108 - 8) + 56))(v74 + v83, v87, 1, v108);
        v109 = *MEMORY[0x1E69983A8];
        v110 = type metadata accessor for PhotogrammetrySession.Request();
        (*(*(v110 - 8) + 104))(v74, v109, v110);
        return v86(v61, v65);
      }

      else
      {
        v99 = v132[0];
        _convertNSErrorToError(_:)();

        swift_willThrow();
        outlined destroy of PhotogrammetrySession.Request(v130, type metadata accessor for PhotogrammetrySession.Request);
        return (v64)(v61, v65);
      }
    }

    else
    {
      v22 = v14;
      v23 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV3url_07RealityA021PhotogrammetrySessionC7RequestO6DetailO6detailAI8GeometryVSg8geometrytMd, &_s10Foundation3URLV3url_07RealityA021PhotogrammetrySessionC7RequestO6DetailO6detailAI8GeometryVSg8geometrytMR) + 64)];
      v24 = *v23;
      v25 = *(v23 + 1);
      v26 = *(v23 + 2);
      v119.i64[0] = *(v23 + 3);
      v27 = *(v23 + 5);
      v118 = *(v23 + 4);
      v121.i64[0] = v27;
      v28 = *(v23 + 7);
      *&v120 = *(v23 + 6);
      v123.i64[0] = v28;
      v29 = *(v23 + 9);
      *&v122 = *(v23 + 8);
      v125.i64[0] = v29;
      v30 = *(v23 + 11);
      v124.i64[0] = *(v23 + 10);
      *&v126 = v30;
      v31 = v23[96];
      v32 = v21;
      v33 = v17;
      v34 = v127.i64[0];
      (*(v21 + 32))(v22, v33, v127.i64[0]);
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV3url_6CoreOC21PhotogrammetrySessionC7RequestO6DetailO6detailAI8GeometryVSg8geometrytMd, &_s10Foundation3URLV3url_6CoreOC21PhotogrammetrySessionC7RequestO6DetailO6detailAI8GeometryVSg8geometrytMR);
      v36 = *(v35 + 48);
      v128 = *(v35 + 64);
      v37 = *(v21 + 16);
      v38 = v131;
      v37(v131, v22, v34);
      v39 = *MEMORY[0x1E6998398];
      v40 = type metadata accessor for PhotogrammetrySession.Request.Detail();
      (*(*(v40 - 8) + 104))(v38 + v36, v39, v40);
      if (v31)
      {
        v41 = 1;
        v42 = v131;
        v43 = v127.i64[0];
        v44 = v128;
      }

      else
      {
        v88.i64[0] = v24;
        v88.i64[1] = v25;
        v117 = v88;
        v88.i64[0] = v26;
        v88.i64[1] = v119.i64[0];
        v119 = v88;
        v88.i64[0] = v118;
        v88.i64[1] = v121.i64[0];
        v121 = v88;
        v88.i64[0] = v120;
        v88.i64[1] = v123.i64[0];
        v123 = v88;
        v88.i64[0] = v122;
        v88.i64[1] = v125.i64[0];
        v125 = v88;
        v89.i64[0] = v124.i64[0];
        v89.i64[1] = v126;
        v124 = v89;
        REAABBExtents();
        v126 = v90;
        REAABBCenter();
        if (one-time initialization token for identity != -1)
        {
          v125 = v91;
          swift_once();
          v91.i64[0] = v125.i64[0];
        }

        *&v92 = specialized simd_float4x4.init(translation:rotation:scale:)(*v91.i64, v123, *&v126);
        v125 = v93;
        v126 = v92;
        v124 = v94;
        v123 = v95;
        specialized simd_float4x4.init(translation:rotation:scale:)(*v121.i64, v119, v117.f32[0]);
        v42 = v131;
        v44 = v128;
        PhotogrammetrySession.Request.Geometry.init(orientedBoundsTransform:rootTransform:)();
        v41 = 0;
        v43 = v127.i64[0];
      }

      outlined destroy of PhotogrammetrySession.Request(v130, type metadata accessor for PhotogrammetrySession.Request);
      (*(v32 + 8))(v22, v43);
      v96 = type metadata accessor for PhotogrammetrySession.Request.Geometry();
      (*(*(v96 - 8) + 56))(v42 + v44, v41, 1, v96);
      v97 = *MEMORY[0x1E69983A8];
      v98 = type metadata accessor for PhotogrammetrySession.Request();
      return (*(*(v98 - 8) + 104))(v42, v97, v98);
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    outlined destroy of PhotogrammetrySession.Request(v130, type metadata accessor for PhotogrammetrySession.Request);
    v45 = *MEMORY[0x1E69983A0];
    v46 = type metadata accessor for PhotogrammetrySession.Request();
    return (*(*(v46 - 8) + 104))(v131, v45, v46);
  }

  else
  {
    v19 = v131;
    if (EnumCaseMultiPayload == 3)
    {
      outlined destroy of PhotogrammetrySession.Request(v130, type metadata accessor for PhotogrammetrySession.Request);
      v20 = MEMORY[0x1E6998388];
    }

    else
    {
      outlined destroy of PhotogrammetrySession.Request(v130, type metadata accessor for PhotogrammetrySession.Request);
      v20 = MEMORY[0x1E6998390];
    }

    v48 = *v20;
    v49 = type metadata accessor for PhotogrammetrySession.Request();
    return (*(*(v49 - 8) + 104))(v19, v48, v49);
  }
}

uint64_t closure #1 in PhotogrammetrySessionImpl.cancel()(uint64_t result)
{
  *(result + OBJC_IVAR____TtC17RealityFoundation25PhotogrammetrySessionImpl_state) = 2;
  if (*(result + OBJC_IVAR____TtC17RealityFoundation25PhotogrammetrySessionImpl_photogrammetrySession))
  {

    dispatch thunk of PhotogrammetrySession.cancel()();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void PhotogrammetrySessionImpl.addImageMappingDictionary(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for URL();
  v63 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v67 = (&v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v66 = &v57 - v8;
  v65 = OBJC_IVAR____TtC17RealityFoundation25PhotogrammetrySessionImpl_sortedImageFiles;
  if (!*(*(v1 + OBJC_IVAR____TtC17RealityFoundation25PhotogrammetrySessionImpl_sortedImageFiles) + 16))
  {
    if (one-time initialization token for logger == -1)
    {
LABEL_9:
      v18 = type metadata accessor for Logger();
      __swift_project_value_buffer(v18, logger);
      v67 = Logger.logObject.getter();
      v19 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v67, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_1C1358000, v67, v19, "There were no image files associated with this session -- not adding mapping.", v20, 2u);
        MEMORY[0x1C6902A30](v20, -1, -1);
      }

      v21 = v67;

      return;
    }

LABEL_47:
    swift_once();
    goto LABEL_9;
  }

  v64 = v7;

  v10 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSi_SD4KeysVySiSo13simd_float4x4aSg_GTt0g5(v9);
  v69 = v10;
  v11 = *(v1 + OBJC_IVAR____TtC17RealityFoundation25PhotogrammetrySessionImpl_invalidSamples);
  v12 = *(v11 + 16);
  if (v12)
  {

    v13 = 32;
    do
    {
      specialized Set._Variant.insert(_:)(v68, *(v11 + v13));
      v13 += 8;
      --v12;
    }

    while (v12);

    v14 = v69;
    v15 = *(v69 + 16);
    if (v15)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v14 = v10;
    v15 = *(v10 + 16);
    if (v15)
    {
LABEL_6:
      v16 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSi_Tt1g5(v15, 0);
      v17 = specialized Sequence._copySequenceContents(initializing:)(v68, v16 + 4, v15, v14);
      v62 = v68[4];

      outlined consume of [String : AnimationResource].Iterator._Variant();
      if (v17 == v15)
      {
        goto LABEL_16;
      }

LABEL_46:
      __break(1u);
      goto LABEL_47;
    }
  }

  v16 = MEMORY[0x1E69E7CC0];
LABEL_16:
  v68[0] = v16;
  specialized MutableCollection<>.sort(by:)(v68);

  v22 = v68[0];
  v23 = v64;
  v24 = *(*(v2 + v65) + 16);
  v62 = *(v68[0] + 2);
  if (v62 != v24)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, logger);

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 134218240;
      *(v28 + 4) = *(v22 + 2);

      *(v28 + 12) = 2048;
      *(v28 + 14) = *(*(v2 + v65) + 16);

      _os_log_impl(&dword_1C1358000, v26, v27, "sortedSampleID count=%ld  sortedImageFiles count=%ld", v28, 0x16u);
      v29 = v28;
      v23 = v64;
      MEMORY[0x1C6902A30](v29, -1, -1);
    }

    else
    {
    }

    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_1C1358000, v30, v31, "SampleID and sorted URL counts do not match!  The sampleID to URL mapping may be incorrect!", v32, 2u);
      v33 = v32;
      v23 = v64;
      MEMORY[0x1C6902A30](v33, -1, -1);
    }
  }

  if (v62)
  {
    v34 = 0;
    v58 = (v63 + 40);
    v59 = (v63 + 32);
    v60 = (v63 + 8);
    v61 = v63 + 16;
    while (1)
    {
      v35 = *(v2 + v65);
      if (v34 >= *(v35 + 16))
      {
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
        goto LABEL_46;
      }

      v36 = v2;
      v37 = v22;
      v38 = *&v22[8 * v34 + 32];
      v39 = *(v63 + 72);
      v40 = *(v63 + 16);
      v41 = v66;
      v40(v66, v35 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + v39 * v34, v23);
      v40(v67, v41, v23);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v43 = a1;
      v68[0] = *(a1 + 8);
      v44 = v68[0];
      v46 = specialized __RawDictionaryStorage.find<A>(_:)(v38);
      v47 = *(v44 + 2);
      v48 = (v45 & 1) == 0;
      v49 = v47 + v48;
      if (__OFADD__(v47, v48))
      {
        goto LABEL_44;
      }

      v50 = v45;
      if (*(v44 + 3) >= v49)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized _NativeDictionary.copy()();
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v49, isUniquelyReferenced_nonNull_native);
        v51 = specialized __RawDictionaryStorage.find<A>(_:)(v38);
        if ((v50 & 1) != (v52 & 1))
        {
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);

          __break(1u);
          return;
        }

        v46 = v51;
      }

      v23 = v64;
      v53 = v68[0];
      if (v50)
      {
        (*v58)(*(v68[0] + 7) + v46 * v39, v67, v64);
      }

      else
      {
        *&v68[0][8 * (v46 >> 6) + 64] |= 1 << v46;
        *(*(v53 + 6) + 8 * v46) = v38;
        (*v59)(*(v53 + 7) + v46 * v39, v67, v23);
        v54 = *(v53 + 2);
        v55 = __OFADD__(v54, 1);
        v56 = v54 + 1;
        if (v55)
        {
          goto LABEL_45;
        }

        *(v53 + 2) = v56;
      }

      ++v34;
      a1 = v43;
      *(v43 + 8) = v53;
      (*v60)(v66, v23);
      v2 = v36;
      v22 = v37;
      if (v62 == v34)
      {
        goto LABEL_42;
      }
    }
  }

LABEL_42:
}

Swift::Void __swiftcall PhotogrammetrySessionImpl.RequestMap.addRequests(apiRequests:internalRequests:)(Swift::OpaquePointer apiRequests, Swift::OpaquePointer internalRequests)
{
  v4 = type metadata accessor for PhotogrammetrySessionImpl.RequestMap.Entry(0);
  v41 = *(v4 - 8);
  v42 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PhotogrammetrySession.Request(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v44 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21PhotogrammetrySessionC7RequestO_6CoreOCABCADOtMd, &_s17RealityFoundation21PhotogrammetrySessionC7RequestO_6CoreOCABCADOtMR);
  MEMORY[0x1EEE9AC00](v40);
  v11 = &v37 - v10;
  v39 = *(apiRequests._rawValue + 2);
  if (v39)
  {
    v12 = 0;
    v13 = apiRequests._rawValue + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v37 = *(v8 + 72);
    rawValue = internalRequests._rawValue;
    while (1)
    {
      outlined init with copy of PhotogrammetrySession.Request(v13, v44, type metadata accessor for PhotogrammetrySession.Request);
      v14 = *(internalRequests._rawValue + 2);
      if (v12 == v14)
      {
        outlined destroy of PhotogrammetrySession.Request(v44, type metadata accessor for PhotogrammetrySession.Request);
        goto LABEL_12;
      }

      if (v12 >= v14)
      {
        break;
      }

      v15 = type metadata accessor for PhotogrammetrySession.Request();
      v16 = *(v15 - 8);
      v17 = internalRequests._rawValue + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v12;
      v18 = *(v40 + 48);
      outlined init with take of PhotogrammetrySession.Request(v44, v11, type metadata accessor for PhotogrammetrySession.Request);
      (*(v16 + 16))(&v11[v18], v17, v15);
      outlined init with take of PhotogrammetrySession.Request(v11, v6, type metadata accessor for PhotogrammetrySession.Request);
      (*(v16 + 32))(&v6[*(v42 + 20)], &v11[v18], v15);
      Date.init()();
      v19 = v43;
      swift_beginAccess();
      v20 = *(v19 + 16);
      os_unfair_lock_lock((v20 + 24));
      v21 = *(v20 + 16);

      os_unfair_lock_unlock((v20 + 24));
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v21[2] + 1, 1, v21);
      }

      v23 = v21[2];
      v22 = v21[3];
      if (v23 >= v22 >> 1)
      {
        v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v21);
      }

      ++v12;
      v21[2] = v23 + 1;
      v24 = outlined init with take of PhotogrammetrySession.Request(v6, v21 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v23, type metadata accessor for PhotogrammetrySessionImpl.RequestMap.Entry);
      v46 = v21;
      MEMORY[0x1EEE9AC00](v24);
      *(&v37 - 2) = &v46;
      os_unfair_lock_lock((v20 + 24));
      closure #1 in Atomic.store(_:)specialized partial apply((v20 + 16));
      os_unfair_lock_unlock((v20 + 24));

      swift_endAccess();
      internalRequests._rawValue = rawValue;
      v13 += v37;
      if (v39 == v12)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:
    if (one-time initialization token for logger == -1)
    {
      goto LABEL_13;
    }
  }

  swift_once();
LABEL_13:
  v25 = type metadata accessor for Logger();
  __swift_project_value_buffer(v25, logger);
  v26 = v43;

  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v46 = v30;
    *v29 = 136446210;
    swift_beginAccess();
    v31 = *(v26 + 16);

    os_unfair_lock_lock((v31 + 24));
    v32 = *(v31 + 16);

    os_unfair_lock_unlock((v31 + 24));

    v33 = *(v32 + 16);

    v45 = v33;
    v34 = dispatch thunk of CustomStringConvertible.description.getter();
    v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v35, &v46);

    *(v29 + 4) = v36;
    _os_log_impl(&dword_1C1358000, v27, v28, "Number of requests in the map: %{public}s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v30);
    MEMORY[0x1C6902A30](v30, -1, -1);
    MEMORY[0x1C6902A30](v29, -1, -1);
  }
}

uint64_t PhotogrammetrySessionImpl.RequestMap.findRequest(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = type metadata accessor for PhotogrammetrySessionImpl.RequestMap.Entry(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation25PhotogrammetrySessionImplC10RequestMapC5Entry33_372E864D6FBFC56F64A9656CCD500B7CLLVSgMd, &_s17RealityFoundation25PhotogrammetrySessionImplC10RequestMapC5Entry33_372E864D6FBFC56F64A9656CCD500B7CLLVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v21 - v12;
  swift_beginAccess();
  v14 = *(v2 + 16);

  os_unfair_lock_lock((v14 + 24));
  v15 = *(v14 + 16);

  os_unfair_lock_unlock((v14 + 24));

  v23 = a1;
  specialized Sequence.first(where:)(partial apply for closure #1 in PhotogrammetrySessionImpl.RequestMap.findRequest(for:), v15, v13);

  outlined init with take of AnySubscriber<EngineRenderEvent, Never>(v13, v10, &_s17RealityFoundation25PhotogrammetrySessionImplC10RequestMapC5Entry33_372E864D6FBFC56F64A9656CCD500B7CLLVSgMd, &_s17RealityFoundation25PhotogrammetrySessionImplC10RequestMapC5Entry33_372E864D6FBFC56F64A9656CCD500B7CLLVSgMR);
  v16 = 1;
  v17 = (*(v5 + 48))(v10, 1, v4);
  v18 = v22;
  if (v17 != 1)
  {
    outlined init with take of PhotogrammetrySession.Request(v10, v7, type metadata accessor for PhotogrammetrySessionImpl.RequestMap.Entry);
    outlined init with copy of PhotogrammetrySession.Request(v7, v18, type metadata accessor for PhotogrammetrySession.Request);
    outlined destroy of PhotogrammetrySession.Request(v7, type metadata accessor for PhotogrammetrySessionImpl.RequestMap.Entry);
    v16 = 0;
  }

  v19 = type metadata accessor for PhotogrammetrySession.Request(0);
  return (*(*(v19 - 8) + 56))(v18, v16, 1, v19);
}

void PhotogrammetrySessionImpl.RequestMap.removeRequest(internalRequest:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for PhotogrammetrySessionImpl.RequestMap.Entry(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v25[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  v7 = *(v2 + 16);

  os_unfair_lock_lock((v7 + 24));
  v8 = *(v7 + 16);

  os_unfair_lock_unlock((v7 + 24));

  v26 = a1;
  v9 = specialized Collection.firstIndex(where:)(partial apply for closure #1 in PhotogrammetrySessionImpl.RequestMap.getStartTimestamp(for:), v25, v8);
  LOBYTE(a1) = v10;

  if ((a1 & 1) == 0)
  {
    swift_beginAccess();
    v11 = *(v2 + 16);
    os_unfair_lock_lock((v11 + 24));
    v12 = *(v11 + 16);

    os_unfair_lock_unlock((v11 + 24));
    v29 = v12;
    specialized Array.remove(at:)(v9, v6);
    v13 = outlined destroy of PhotogrammetrySession.Request(v6, type metadata accessor for PhotogrammetrySessionImpl.RequestMap.Entry);
    v27 = v29;
    MEMORY[0x1EEE9AC00](v13);
    *&v25[-16] = &v27;
    os_unfair_lock_lock((v11 + 24));
    partial apply for specialized closure #1 in Atomic.store(_:)((v11 + 16));
    os_unfair_lock_unlock((v11 + 24));

    swift_endAccess();
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, logger);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v28[0] = v18;
    *v17 = 136446210;
    v19 = *(v2 + 16);

    os_unfair_lock_lock((v19 + 24));
    v20 = *(v19 + 16);

    os_unfair_lock_unlock((v19 + 24));

    v21 = *(v20 + 16);

    v29 = v21;
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, v28);

    *(v17 + 4) = v24;
    _os_log_impl(&dword_1C1358000, v15, v16, "Number of requests left: %{public}s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v18);
    MEMORY[0x1C6902A30](v18, -1, -1);
    MEMORY[0x1C6902A30](v17, -1, -1);
  }
}