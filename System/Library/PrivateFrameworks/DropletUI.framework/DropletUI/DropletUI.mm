uint64_t sub_249E9E888(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_249E9E8A8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for KeylineWidth(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for KeylineWidth(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_249E9E93C()
{
  MEMORY[0x24C206350](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_249E9E974()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

id sub_249E9E9B0@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 suppressCompositingFilterMultiply];
  *a2 = result;
  return result;
}

id sub_249E9E9F8@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 suppressCompositingFilterDestOut];
  *a2 = result;
  return result;
}

id sub_249E9EA40@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 suppressDropletEffectFilters];
  *a2 = result;
  return result;
}

id sub_249E9EA88@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 rightEdgeHintSize];
  *a2 = v4;
  return result;
}

id sub_249E9EAD0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 rightEdgeHintDropletRadius];
  *a2 = v4;
  return result;
}

id sub_249E9EB18@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 edgeHintKeylineInnerWidth];
  *a2 = v4;
  return result;
}

id sub_249E9EB60@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 edgeHintKeylineOuterWidth];
  *a2 = v4;
  return result;
}

id sub_249E9EBA8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 edgeHintKeylineAdaptiveColorMatrix];
  *a2 = result;
  return result;
}

id sub_249E9EBF8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 edgeHintCenterXAnimationSettings];
  *a2 = result;
  return result;
}

id sub_249E9EC48@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 edgeHintCenterYAnimationSettings];
  *a2 = result;
  return result;
}

id sub_249E9EC98@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 edgeHintContainerWidthAnimationSettings];
  *a2 = result;
  return result;
}

id sub_249E9ECE8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 edgeHintContainerHeightAnimationSettings];
  *a2 = result;
  return result;
}

id sub_249E9ED38@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 edgeHintKeylineStyleAnimationSettings];
  *a2 = result;
  return result;
}

id sub_249E9ED88@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 edgeContentPresentedKeylineInnerWidth];
  *a2 = v4;
  return result;
}

id sub_249E9EDD0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 edgeContentPresentedKeylineOuterWidth];
  *a2 = v4;
  return result;
}

id sub_249E9EE18@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 edgeContentPresentedKeylineAdaptiveColorMatrix];
  *a2 = result;
  return result;
}

id sub_249E9EE68@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 edgeContentPresentedCenterXAnimationSettings];
  *a2 = result;
  return result;
}

id sub_249E9EEB8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 edgeContentPresentedCenterYAnimationSettings];
  *a2 = result;
  return result;
}

id sub_249E9EF08@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 edgeContentPresentedContainerWidthAnimationSettings];
  *a2 = result;
  return result;
}

id sub_249E9EF58@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 edgeContentPresentedContainerHeightAnimationSettings];
  *a2 = result;
  return result;
}

id sub_249E9EFA8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 edgeContentPresentedKeylineStyleAnimationSettings];
  *a2 = result;
  return result;
}

id sub_249E9EFF8@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 intelligentEdgeLightKeylineStyleSoftScreenBlendMode];
  *a2 = result;
  return result;
}

id sub_249E9F040@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 intelligentEdgeLightKeylineStyleSoftAlpha];
  *a2 = v4;
  return result;
}

id sub_249E9F088@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 intelligentEdgeLightKeylineStyleSoftLargeBlurRadius];
  *a2 = v4;
  return result;
}

id sub_249E9F0D0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 intelligentEdgeLightKeylineStyleSoftLargeAmount];
  *a2 = v4;
  return result;
}

id sub_249E9F118@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 intelligentEdgeLightKeylineStyleSoftLargeStart];
  *a2 = v4;
  return result;
}

id sub_249E9F160@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 intelligentEdgeLightKeylineStyleSoftLargeEnd];
  *a2 = v4;
  return result;
}

id sub_249E9F1A8@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 intelligentEdgeLightKeylineStyleSoftRimIsSoft];
  *a2 = result;
  return result;
}

id sub_249E9F1F0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 intelligentEdgeLightKeylineStyleSoftSmallWidth];
  *a2 = v4;
  return result;
}

id sub_249E9F238@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 intelligentEdgeLightKeylineStyleHardScreenBlendMode];
  *a2 = result;
  return result;
}

id sub_249E9F280@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 intelligentEdgeLightKeylineStyleHardAlpha];
  *a2 = v4;
  return result;
}

id sub_249E9F2C8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 intelligentEdgeLightKeylineStyleHardLargeBlurRadius];
  *a2 = v4;
  return result;
}

id sub_249E9F310@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 intelligentEdgeLightKeylineStyleHardLargeAmount];
  *a2 = v4;
  return result;
}

id sub_249E9F358@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 intelligentEdgeLightKeylineStyleHardLargeStart];
  *a2 = v4;
  return result;
}

id sub_249E9F3A0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 intelligentEdgeLightKeylineStyleHardLargeEnd];
  *a2 = v4;
  return result;
}

id sub_249E9F3E8@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 intelligentEdgeLightKeylineStyleHardRimIsSoft];
  *a2 = result;
  return result;
}

id sub_249E9F430@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 intelligentEdgeLightKeylineStyleHardSmallWidth];
  *a2 = v4;
  return result;
}

id sub_249E9F478@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 intelligentEdgeLightEDRGainAmount];
  *a2 = v4;
  return result;
}

id sub_249E9F4C0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 intelligentEdgeLightKeylineStyleColorMatrix];
  *a2 = result;
  return result;
}

id sub_249E9F510@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 intelligentEdgeLightKeylineStyleDefaultBehaviorSettings];
  *a2 = result;
  return result;
}

uint64_t sub_249E9F560(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_249E9F570(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_249E9F580()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

id sub_249E9F5BC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 centerX];
  *a2 = v4;
  return result;
}

id sub_249E9F604@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 centerY];
  *a2 = v4;
  return result;
}

id sub_249E9F64C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 boundaryEdges];
  *a2 = result;
  return result;
}

id sub_249E9F694@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 containerCornerRadius];
  *a2 = v4;
  return result;
}

id sub_249E9F6DC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 containerHeight];
  *a2 = v4;
  return result;
}

id sub_249E9F724@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 containerWidth];
  *a2 = v4;
  return result;
}

double sub_249E9F76C@<D0>(id *a1@<X0>, _OWORD *a2@<X8>)
{
  [*a1 containerTransform];
  a2[4] = v8;
  a2[5] = v9;
  a2[6] = v10;
  a2[7] = v11;
  *a2 = v4;
  a2[1] = v5;
  result = *&v6;
  a2[2] = v6;
  a2[3] = v7;
  return result;
}

id sub_249E9F7C8(_OWORD *a1, id *a2)
{
  v2 = a1[5];
  v7[4] = a1[4];
  v7[5] = v2;
  v3 = a1[7];
  v7[6] = a1[6];
  v7[7] = v3;
  v4 = a1[1];
  v7[0] = *a1;
  v7[1] = v4;
  v5 = a1[3];
  v7[2] = a1[2];
  v7[3] = v5;
  return [*a2 setContainerTransform_];
}

id sub_249E9F818@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 dropletColor];
  *a2 = result;
  return result;
}

id sub_249E9F868@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 dropletRadius];
  *a2 = v4;
  return result;
}

id sub_249E9F8B0@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 disableDropletEffectFilters];
  *a2 = result;
  return result;
}

id sub_249E9F8F8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 boundaryOutsets];
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  return result;
}

id sub_249E9F948@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 keylineStyle];
  *a2 = result;
  return result;
}

uint64_t sub_249E9F998()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

id sub_249E9FA0C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 contentView];
  *a2 = result;
  return result;
}

id sub_249E9FA5C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 continuousCornerRadius];
  *a2 = v4;
  return result;
}

id sub_249E9FAA4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 boundaryEdges];
  *a2 = result;
  return result;
}

id sub_249E9FAEC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 boundaryOutsets];
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  return result;
}

uint64_t sub_249E9FB40()
{
  MEMORY[0x24C206350](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_249E9FB78()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

id sub_249E9FBCC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 width];
  *a2 = v4;
  return result;
}

id sub_249E9FC14@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 innerWidth];
  *a2 = v4;
  return result;
}

id sub_249E9FC5C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 normalizedStopLocation];
  *a2 = v4;
  return result;
}

id sub_249E9FCA4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 color];
  *a2 = result;
  return result;
}

id sub_249E9FD08@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 outerWidth];
  *a2 = v4;
  return result;
}

id sub_249E9FD80@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 normalizedStartLocation];
  *a2 = v4;
  return result;
}

__n128 sub_249E9FDB4@<Q0>(id *a1@<X0>, _OWORD *a2@<X8>)
{
  [*a1 adaptiveColorMatrix];
  a2[2] = v6;
  a2[3] = v7;
  a2[4] = v8;
  result = v5;
  *a2 = v4;
  a2[1] = v5;
  return result;
}

id sub_249E9FE08(_OWORD *a1, id *a2)
{
  v2 = a1[3];
  v5[2] = a1[2];
  v5[3] = v2;
  v5[4] = a1[4];
  v3 = a1[1];
  v5[0] = *a1;
  v5[1] = v3;
  return [*a2 setAdaptiveColorMatrix_];
}

id sub_249E9FE50@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 preferAudioReactivity];
  *a2 = result;
  return result;
}

id sub_249E9FE98@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 style];
  *a2 = result;
  return result;
}

id sub_249E9FEE0@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 softRim];
  *a2 = result;
  return result;
}

id sub_249E9FF28@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 screenBlendMode];
  *a2 = result;
  return result;
}

id sub_249E9FF70@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 alpha];
  *a2 = v4;
  return result;
}

id sub_249E9FFB8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 keylineBlurRadius];
  *a2 = v4;
  return result;
}

id sub_249EA0000@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 keylineInputAmount];
  *a2 = v4;
  return result;
}

id sub_249EA0048@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 keylineInputStart];
  *a2 = v4;
  return result;
}

id sub_249EA0090@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 keylineInputEnd];
  *a2 = v4;
  return result;
}

id sub_249EA00D8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 edrGain];
  *a2 = v4;
  return result;
}

uint64_t sub_249EA019C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_249EA01D4()
{
  MEMORY[0x24C206350](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

id sub_249EA020C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 defaultBehaviorSettings];
  *a2 = result;
  return result;
}

uint64_t sub_249EA035C()
{
  MEMORY[0x24C206350](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

id sub_249EA0394@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 disableDropletEffectFilters];
  *a2 = result;
  return result;
}

id sub_249EA03DC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 boundaryEdges];
  *a2 = result;
  return result;
}

id sub_249EA0424@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 dropletRadius];
  *a2 = v4;
  return result;
}

id sub_249EA046C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 dropletColor];
  *a2 = result;
  return result;
}

id sub_249EA04BC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 keylineStyle];
  *a2 = result;
  return result;
}

uint64_t sub_249EA050C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

id static DRPDropletPrototypeSettingsDomain.rootSettings()()
{
  v1.receiver = swift_getObjCClassFromMetadata();
  v1.super_class = &OBJC_METACLASS___DRPDropletPrototypeSettingsDomain;
  result = objc_msgSendSuper2(&v1, sel_rootSettings);
  if (result)
  {
    objc_opt_self();
    return swift_dynamicCastObjCClassUnconditional();
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t type metadata accessor for DRPDropletPrototypeSettingsDomain()
{
  result = qword_27EF29208;
  if (!qword_27EF29208)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EF29208);
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

__n128 __swift_memcpy80_4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_249EA07D4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 80))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_249EA07F4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 80) = v3;
  return result;
}

void *sub_249EA0884@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

BOOL sub_249EA08F8(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_249EA0928@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_249EA0954@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_249EA0A2C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable();

  return sub_249ED6BD0();
}

uint64_t sub_249EA0AE0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_249EA0DDC(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_249EA0BC4(uint64_t a1, uint64_t a2)
{
  sub_249ED6F10();
  swift_getWitnessTable();
  sub_249ED6BE0();
  return sub_249ED6F30();
}

uint64_t sub_249EA0C74(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_249EA0DDC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_249EA0E28(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_249EA0E48(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 48) = v3;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 __swift_memcpy128_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_249EA0EEC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 128))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_249EA0F0C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 128) = v3;
  return result;
}

void sub_249EA0F6C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

void sub_249EA0FD0(double a1)
{
  v2 = *&v1[OBJC_IVAR____TtC9DropletUI11BlurredView_gaussianBlurInputRadius];
  *&v1[OBJC_IVAR____TtC9DropletUI11BlurredView_gaussianBlurInputRadius] = a1;
  if (v2 != a1)
  {
    if (a1 > 0.0 == v2 <= 0.0)
    {
      if (a1 <= 0.0 || (v3 = 1.0, v1[OBJC_IVAR____TtC9DropletUI11BlurredView_disableBlurFilterOverride] == 1))
      {
        v3 = 0.0;
      }

      [*&v1[OBJC_IVAR____TtC9DropletUI11BlurredView_blurEnabledAnimatableProperty] setValue_];
    }

    v4 = [v1 layer];
    v5 = sub_249ED6BC0();
    if (qword_281252E20 != -1)
    {
      swift_once();
    }

    v6 = sub_249ED6C60();
    [v4 setValue:v5 forKeyPath:v6];
  }
}

char *sub_249EA111C(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v4[OBJC_IVAR____TtC9DropletUI11BlurredView_disableBlurFilterOverride] = 0;
  v10 = OBJC_IVAR____TtC9DropletUI11BlurredView_blurEnabledAnimatableProperty;
  *&v4[v10] = [objc_allocWithZone(MEMORY[0x277D75D38]) init];
  *&v4[OBJC_IVAR____TtC9DropletUI11BlurredView_gaussianBlurInputRadius] = 0;
  v39.receiver = v4;
  v39.super_class = type metadata accessor for BlurredView();
  v11 = objc_msgSendSuper2(&v39, sel_initWithFrame_, a1, a2, a3, a4);
  v12 = *MEMORY[0x277CDA328];
  v13 = objc_allocWithZone(MEMORY[0x277CD9EA0]);
  v14 = v11;
  v15 = [v13 initWithType_];
  v16 = sub_249ED6D20();
  [v15 setValue:v16 forKeyPath:*MEMORY[0x277CDA4F0]];

  [v15 setEnabled_];
  v17 = v14;
  v18 = [v17 layer];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF292D8, &unk_249ED8FF0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_249ED8C90;
  *(v19 + 56) = sub_249EA1BF8(0, &qword_281252C90, 0x277CD9EA0);
  *(v19 + 32) = v15;
  v20 = v15;
  v21 = sub_249ED6CC0();

  [v18 setFilters_];

  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v23 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF292E0, &qword_249ED9000);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_249ED8CA0;
  v25 = *&v17[OBJC_IVAR____TtC9DropletUI11BlurredView_blurEnabledAnimatableProperty];
  *(v24 + 32) = v25;
  sub_249EA1BF8(0, &qword_281252CE0, 0x277D75120);
  v26 = v25;
  v27 = sub_249ED6CC0();

  v28 = swift_allocObject();
  *(v28 + 16) = v22;
  *(v28 + 24) = ObjectType;
  v37 = sub_249EA1C40;
  v38 = v28;
  v33 = MEMORY[0x277D85DD0];
  v34 = 1107296256;
  v35 = sub_249EBF654;
  v36 = &block_descriptor;
  v29 = _Block_copy(&v33);

  v30 = swift_allocObject();
  *(v30 + 16) = v22;
  *(v30 + 24) = ObjectType;
  v37 = sub_249EA1C60;
  v38 = v30;
  v33 = MEMORY[0x277D85DD0];
  v34 = 1107296256;
  v35 = sub_249EBF654;
  v36 = &block_descriptor_14;
  v31 = _Block_copy(&v33);

  [v23 _createTransformerWithInputAnimatableProperties_modelValueSetter_presentationValueSetter_];
  _Block_release(v31);
  _Block_release(v29);

  return v17;
}

void sub_249EA1528(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong layer];
    [*&v2[OBJC_IVAR____TtC9DropletUI11BlurredView_blurEnabledAnimatableProperty] value];
    v4 = sub_249ED6D00();
    if (qword_281252E28 != -1)
    {
      swift_once();
    }

    v5 = sub_249ED6C60();
    [v3 setValue:v4 forKeyPath:v5];
  }
}

void sub_249EA162C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [*(Strong + OBJC_IVAR____TtC9DropletUI11BlurredView_blurEnabledAnimatableProperty) presentationValue];
    v3 = sub_249ED6D00();
    if (qword_281252E28 != -1)
    {
      swift_once();
    }

    v4 = sub_249ED6C60();
    [v2 _setPresentationValue_forKey_];
  }
}

id sub_249EA17D8()
{
  [*&v0[OBJC_IVAR____TtC9DropletUI11BlurredView_blurEnabledAnimatableProperty] invalidate];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BlurredView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_249EA1894(uint64_t a1, void *a2)
{
  v3 = a2;
  if (qword_281252E20 == -1)
  {
    if (!a2)
    {
      goto LABEL_8;
    }
  }

  else
  {
    swift_once();
    if (!v3)
    {
      goto LABEL_8;
    }
  }

  v5 = qword_2812533A0 == a1 && *algn_2812533A8 == v3;
  if (v5 || (sub_249ED6ED0() & 1) != 0)
  {
    return 1;
  }

LABEL_8:
  if (qword_281252E28 == -1)
  {
    if (!v3)
    {
      goto LABEL_17;
    }
  }

  else
  {
    swift_once();
    if (!v3)
    {
      goto LABEL_17;
    }
  }

  v6 = qword_2812533B0 == a1 && *algn_2812533B8 == v3;
  if (v6 || (sub_249ED6ED0() & 1) != 0)
  {
    return 1;
  }

  v3 = sub_249ED6C60();
LABEL_17:
  v9.receiver = v2;
  v9.super_class = type metadata accessor for BlurredView();
  v8 = objc_msgSendSuper2(&v9, sel__shouldAnimatePropertyWithKey_, v3);

  return v8;
}

uint64_t sub_249EA1A64(uint64_t a1, uint64_t a2)
{
  v2 = sub_249ED6C70();
  MEMORY[0x24C205AA0](v2);

  MEMORY[0x24C205AA0](46, 0xE100000000000000);
  v3 = sub_249ED6C70();
  MEMORY[0x24C205AA0](v3);

  qword_2812533A0 = 0x2E737265746C6966;
  *algn_2812533A8 = 0xE800000000000000;
  return result;
}

uint64_t sub_249EA1B08()
{
  sub_249ED6DC0();

  v0 = sub_249ED6C70();
  MEMORY[0x24C205AA0](v0);

  result = MEMORY[0x24C205AA0](0x64656C62616E652ELL, 0xE800000000000000);
  qword_2812533B0 = 0x2E737265746C6966;
  *algn_2812533B8 = 0xE800000000000000;
  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_249EA1BF8(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t getEnumTagSinglePayload for FrameRateReason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FrameRateReason(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_249EA1DFC()
{
  sub_249ED6F10();
  sub_249ED6F20();
  return sub_249ED6F30();
}

uint64_t sub_249EA1E70()
{
  sub_249ED6F10();
  sub_249ED6F20();
  return sub_249ED6F30();
}

_DWORD *sub_249EA1EB4@<X0>(_DWORD *result@<X0>, char *a2@<X8>)
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

unint64_t sub_249EA1EE4()
{
  result = qword_27EF292E8;
  if (!qword_27EF292E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF292E8);
  }

  return result;
}

unint64_t sub_249EA1F3C()
{
  result = qword_281252E08;
  if (!qword_281252E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281252E08);
  }

  return result;
}

uint64_t DRPDropletPrototypeSettings.suppressCompositingFilterMultiply.getter()
{
  v1 = OBJC_IVAR___DRPDropletPrototypeSettings_suppressCompositingFilterMultiply;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DRPDropletPrototypeSettings.suppressCompositingFilterMultiply.setter(char a1)
{
  v3 = OBJC_IVAR___DRPDropletPrototypeSettings_suppressCompositingFilterMultiply;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t DRPDropletPrototypeSettings.suppressCompositingFilterDestOut.getter()
{
  v1 = OBJC_IVAR___DRPDropletPrototypeSettings_suppressCompositingFilterDestOut;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DRPDropletPrototypeSettings.suppressCompositingFilterDestOut.setter(char a1)
{
  v3 = OBJC_IVAR___DRPDropletPrototypeSettings_suppressCompositingFilterDestOut;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t DRPDropletPrototypeSettings.suppressDropletEffectFilters.getter()
{
  v1 = OBJC_IVAR___DRPDropletPrototypeSettings_suppressDropletEffectFilters;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DRPDropletPrototypeSettings.suppressDropletEffectFilters.setter(char a1)
{
  v3 = OBJC_IVAR___DRPDropletPrototypeSettings_suppressDropletEffectFilters;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double DRPDropletPrototypeSettings.rightEdgeHintSize.getter()
{
  v1 = OBJC_IVAR___DRPDropletPrototypeSettings_rightEdgeHintSize;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DRPDropletPrototypeSettings.rightEdgeHintSize.setter(double a1)
{
  v3 = OBJC_IVAR___DRPDropletPrototypeSettings_rightEdgeHintSize;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double DRPDropletPrototypeSettings.rightEdgeHintDropletRadius.getter()
{
  v1 = OBJC_IVAR___DRPDropletPrototypeSettings_rightEdgeHintDropletRadius;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DRPDropletPrototypeSettings.rightEdgeHintDropletRadius.setter(double a1)
{
  v3 = OBJC_IVAR___DRPDropletPrototypeSettings_rightEdgeHintDropletRadius;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double DRPDropletPrototypeSettings.edgeHintKeylineInnerWidth.getter()
{
  v1 = OBJC_IVAR___DRPDropletPrototypeSettings_edgeHintKeylineInnerWidth;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DRPDropletPrototypeSettings.edgeHintKeylineInnerWidth.setter(double a1)
{
  v3 = OBJC_IVAR___DRPDropletPrototypeSettings_edgeHintKeylineInnerWidth;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double DRPDropletPrototypeSettings.edgeHintKeylineOuterWidth.getter()
{
  v1 = OBJC_IVAR___DRPDropletPrototypeSettings_edgeHintKeylineOuterWidth;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DRPDropletPrototypeSettings.edgeHintKeylineOuterWidth.setter(double a1)
{
  v3 = OBJC_IVAR___DRPDropletPrototypeSettings_edgeHintKeylineOuterWidth;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id DRPDropletPrototypeSettings.edgeHintKeylineAdaptiveColorMatrix.getter()
{
  v1 = OBJC_IVAR___DRPDropletPrototypeSettings_edgeHintKeylineAdaptiveColorMatrix;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void DRPDropletPrototypeSettings.edgeHintKeylineAdaptiveColorMatrix.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___DRPDropletPrototypeSettings_edgeHintKeylineAdaptiveColorMatrix;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id DRPDropletPrototypeSettings.edgeHintCenterXAnimationSettings.getter()
{
  v1 = OBJC_IVAR___DRPDropletPrototypeSettings_edgeHintCenterXAnimationSettings;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void DRPDropletPrototypeSettings.edgeHintCenterXAnimationSettings.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___DRPDropletPrototypeSettings_edgeHintCenterXAnimationSettings;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id DRPDropletPrototypeSettings.edgeHintCenterYAnimationSettings.getter()
{
  v1 = OBJC_IVAR___DRPDropletPrototypeSettings_edgeHintCenterYAnimationSettings;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void DRPDropletPrototypeSettings.edgeHintCenterYAnimationSettings.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___DRPDropletPrototypeSettings_edgeHintCenterYAnimationSettings;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id DRPDropletPrototypeSettings.edgeHintContainerWidthAnimationSettings.getter()
{
  v1 = OBJC_IVAR___DRPDropletPrototypeSettings_edgeHintContainerWidthAnimationSettings;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void DRPDropletPrototypeSettings.edgeHintContainerWidthAnimationSettings.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___DRPDropletPrototypeSettings_edgeHintContainerWidthAnimationSettings;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id DRPDropletPrototypeSettings.edgeHintContainerHeightAnimationSettings.getter()
{
  v1 = OBJC_IVAR___DRPDropletPrototypeSettings_edgeHintContainerHeightAnimationSettings;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void DRPDropletPrototypeSettings.edgeHintContainerHeightAnimationSettings.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___DRPDropletPrototypeSettings_edgeHintContainerHeightAnimationSettings;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id DRPDropletPrototypeSettings.edgeHintKeylineStyleAnimationSettings.getter()
{
  v1 = OBJC_IVAR___DRPDropletPrototypeSettings_edgeHintKeylineStyleAnimationSettings;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void DRPDropletPrototypeSettings.edgeHintKeylineStyleAnimationSettings.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___DRPDropletPrototypeSettings_edgeHintKeylineStyleAnimationSettings;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

double DRPDropletPrototypeSettings.edgeContentPresentedKeylineInnerWidth.getter()
{
  v1 = OBJC_IVAR___DRPDropletPrototypeSettings_edgeContentPresentedKeylineInnerWidth;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DRPDropletPrototypeSettings.edgeContentPresentedKeylineInnerWidth.setter(double a1)
{
  v3 = OBJC_IVAR___DRPDropletPrototypeSettings_edgeContentPresentedKeylineInnerWidth;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double DRPDropletPrototypeSettings.edgeContentPresentedKeylineOuterWidth.getter()
{
  v1 = OBJC_IVAR___DRPDropletPrototypeSettings_edgeContentPresentedKeylineOuterWidth;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DRPDropletPrototypeSettings.edgeContentPresentedKeylineOuterWidth.setter(double a1)
{
  v3 = OBJC_IVAR___DRPDropletPrototypeSettings_edgeContentPresentedKeylineOuterWidth;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id DRPDropletPrototypeSettings.edgeContentPresentedKeylineAdaptiveColorMatrix.getter()
{
  v1 = OBJC_IVAR___DRPDropletPrototypeSettings_edgeContentPresentedKeylineAdaptiveColorMatrix;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void DRPDropletPrototypeSettings.edgeContentPresentedKeylineAdaptiveColorMatrix.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___DRPDropletPrototypeSettings_edgeContentPresentedKeylineAdaptiveColorMatrix;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id DRPDropletPrototypeSettings.edgeContentPresentedCenterXAnimationSettings.getter()
{
  v1 = OBJC_IVAR___DRPDropletPrototypeSettings_edgeContentPresentedCenterXAnimationSettings;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void DRPDropletPrototypeSettings.edgeContentPresentedCenterXAnimationSettings.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___DRPDropletPrototypeSettings_edgeContentPresentedCenterXAnimationSettings;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id DRPDropletPrototypeSettings.edgeContentPresentedCenterYAnimationSettings.getter()
{
  v1 = OBJC_IVAR___DRPDropletPrototypeSettings_edgeContentPresentedCenterYAnimationSettings;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void DRPDropletPrototypeSettings.edgeContentPresentedCenterYAnimationSettings.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___DRPDropletPrototypeSettings_edgeContentPresentedCenterYAnimationSettings;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id DRPDropletPrototypeSettings.edgeContentPresentedContainerWidthAnimationSettings.getter()
{
  v1 = OBJC_IVAR___DRPDropletPrototypeSettings_edgeContentPresentedContainerWidthAnimationSettings;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void DRPDropletPrototypeSettings.edgeContentPresentedContainerWidthAnimationSettings.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___DRPDropletPrototypeSettings_edgeContentPresentedContainerWidthAnimationSettings;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id DRPDropletPrototypeSettings.edgeContentPresentedContainerHeightAnimationSettings.getter()
{
  v1 = OBJC_IVAR___DRPDropletPrototypeSettings_edgeContentPresentedContainerHeightAnimationSettings;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void DRPDropletPrototypeSettings.edgeContentPresentedContainerHeightAnimationSettings.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___DRPDropletPrototypeSettings_edgeContentPresentedContainerHeightAnimationSettings;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id DRPDropletPrototypeSettings.edgeContentPresentedKeylineStyleAnimationSettings.getter()
{
  v1 = OBJC_IVAR___DRPDropletPrototypeSettings_edgeContentPresentedKeylineStyleAnimationSettings;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void DRPDropletPrototypeSettings.edgeContentPresentedKeylineStyleAnimationSettings.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___DRPDropletPrototypeSettings_edgeContentPresentedKeylineStyleAnimationSettings;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t DRPDropletPrototypeSettings.intelligentEdgeLightKeylineStyleSoftScreenBlendMode.getter()
{
  v1 = OBJC_IVAR___DRPDropletPrototypeSettings_intelligentEdgeLightKeylineStyleSoftScreenBlendMode;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DRPDropletPrototypeSettings.intelligentEdgeLightKeylineStyleSoftScreenBlendMode.setter(char a1)
{
  v3 = OBJC_IVAR___DRPDropletPrototypeSettings_intelligentEdgeLightKeylineStyleSoftScreenBlendMode;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double DRPDropletPrototypeSettings.intelligentEdgeLightKeylineStyleSoftAlpha.getter()
{
  v1 = OBJC_IVAR___DRPDropletPrototypeSettings_intelligentEdgeLightKeylineStyleSoftAlpha;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DRPDropletPrototypeSettings.intelligentEdgeLightKeylineStyleSoftAlpha.setter(double a1)
{
  v3 = OBJC_IVAR___DRPDropletPrototypeSettings_intelligentEdgeLightKeylineStyleSoftAlpha;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double DRPDropletPrototypeSettings.intelligentEdgeLightKeylineStyleSoftLargeBlurRadius.getter()
{
  v1 = OBJC_IVAR___DRPDropletPrototypeSettings_intelligentEdgeLightKeylineStyleSoftLargeBlurRadius;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DRPDropletPrototypeSettings.intelligentEdgeLightKeylineStyleSoftLargeBlurRadius.setter(double a1)
{
  v3 = OBJC_IVAR___DRPDropletPrototypeSettings_intelligentEdgeLightKeylineStyleSoftLargeBlurRadius;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double DRPDropletPrototypeSettings.intelligentEdgeLightKeylineStyleSoftLargeAmount.getter()
{
  v1 = OBJC_IVAR___DRPDropletPrototypeSettings_intelligentEdgeLightKeylineStyleSoftLargeAmount;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DRPDropletPrototypeSettings.intelligentEdgeLightKeylineStyleSoftLargeAmount.setter(double a1)
{
  v3 = OBJC_IVAR___DRPDropletPrototypeSettings_intelligentEdgeLightKeylineStyleSoftLargeAmount;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double DRPDropletPrototypeSettings.intelligentEdgeLightKeylineStyleSoftLargeStart.getter()
{
  v1 = OBJC_IVAR___DRPDropletPrototypeSettings_intelligentEdgeLightKeylineStyleSoftLargeStart;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DRPDropletPrototypeSettings.intelligentEdgeLightKeylineStyleSoftLargeStart.setter(double a1)
{
  v3 = OBJC_IVAR___DRPDropletPrototypeSettings_intelligentEdgeLightKeylineStyleSoftLargeStart;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double DRPDropletPrototypeSettings.intelligentEdgeLightKeylineStyleSoftLargeEnd.getter()
{
  v1 = OBJC_IVAR___DRPDropletPrototypeSettings_intelligentEdgeLightKeylineStyleSoftLargeEnd;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DRPDropletPrototypeSettings.intelligentEdgeLightKeylineStyleSoftLargeEnd.setter(double a1)
{
  v3 = OBJC_IVAR___DRPDropletPrototypeSettings_intelligentEdgeLightKeylineStyleSoftLargeEnd;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t DRPDropletPrototypeSettings.intelligentEdgeLightKeylineStyleSoftRimIsSoft.getter()
{
  v1 = OBJC_IVAR___DRPDropletPrototypeSettings_intelligentEdgeLightKeylineStyleSoftRimIsSoft;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DRPDropletPrototypeSettings.intelligentEdgeLightKeylineStyleSoftRimIsSoft.setter(char a1)
{
  v3 = OBJC_IVAR___DRPDropletPrototypeSettings_intelligentEdgeLightKeylineStyleSoftRimIsSoft;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double DRPDropletPrototypeSettings.intelligentEdgeLightKeylineStyleSoftSmallWidth.getter()
{
  v1 = OBJC_IVAR___DRPDropletPrototypeSettings_intelligentEdgeLightKeylineStyleSoftSmallWidth;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DRPDropletPrototypeSettings.intelligentEdgeLightKeylineStyleSoftSmallWidth.setter(double a1)
{
  v3 = OBJC_IVAR___DRPDropletPrototypeSettings_intelligentEdgeLightKeylineStyleSoftSmallWidth;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t DRPDropletPrototypeSettings.intelligentEdgeLightKeylineStyleHardScreenBlendMode.getter()
{
  v1 = OBJC_IVAR___DRPDropletPrototypeSettings_intelligentEdgeLightKeylineStyleHardScreenBlendMode;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DRPDropletPrototypeSettings.intelligentEdgeLightKeylineStyleHardScreenBlendMode.setter(char a1)
{
  v3 = OBJC_IVAR___DRPDropletPrototypeSettings_intelligentEdgeLightKeylineStyleHardScreenBlendMode;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double DRPDropletPrototypeSettings.intelligentEdgeLightKeylineStyleHardAlpha.getter()
{
  v1 = OBJC_IVAR___DRPDropletPrototypeSettings_intelligentEdgeLightKeylineStyleHardAlpha;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DRPDropletPrototypeSettings.intelligentEdgeLightKeylineStyleHardAlpha.setter(double a1)
{
  v3 = OBJC_IVAR___DRPDropletPrototypeSettings_intelligentEdgeLightKeylineStyleHardAlpha;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double DRPDropletPrototypeSettings.intelligentEdgeLightKeylineStyleHardLargeBlurRadius.getter()
{
  v1 = OBJC_IVAR___DRPDropletPrototypeSettings_intelligentEdgeLightKeylineStyleHardLargeBlurRadius;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DRPDropletPrototypeSettings.intelligentEdgeLightKeylineStyleHardLargeBlurRadius.setter(double a1)
{
  v3 = OBJC_IVAR___DRPDropletPrototypeSettings_intelligentEdgeLightKeylineStyleHardLargeBlurRadius;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double DRPDropletPrototypeSettings.intelligentEdgeLightKeylineStyleHardLargeAmount.getter()
{
  v1 = OBJC_IVAR___DRPDropletPrototypeSettings_intelligentEdgeLightKeylineStyleHardLargeAmount;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DRPDropletPrototypeSettings.intelligentEdgeLightKeylineStyleHardLargeAmount.setter(double a1)
{
  v3 = OBJC_IVAR___DRPDropletPrototypeSettings_intelligentEdgeLightKeylineStyleHardLargeAmount;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double DRPDropletPrototypeSettings.intelligentEdgeLightKeylineStyleHardLargeStart.getter()
{
  v1 = OBJC_IVAR___DRPDropletPrototypeSettings_intelligentEdgeLightKeylineStyleHardLargeStart;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DRPDropletPrototypeSettings.intelligentEdgeLightKeylineStyleHardLargeStart.setter(double a1)
{
  v3 = OBJC_IVAR___DRPDropletPrototypeSettings_intelligentEdgeLightKeylineStyleHardLargeStart;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double DRPDropletPrototypeSettings.intelligentEdgeLightKeylineStyleHardLargeEnd.getter()
{
  v1 = OBJC_IVAR___DRPDropletPrototypeSettings_intelligentEdgeLightKeylineStyleHardLargeEnd;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DRPDropletPrototypeSettings.intelligentEdgeLightKeylineStyleHardLargeEnd.setter(double a1)
{
  v3 = OBJC_IVAR___DRPDropletPrototypeSettings_intelligentEdgeLightKeylineStyleHardLargeEnd;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t DRPDropletPrototypeSettings.intelligentEdgeLightKeylineStyleHardRimIsSoft.getter()
{
  v1 = OBJC_IVAR___DRPDropletPrototypeSettings_intelligentEdgeLightKeylineStyleHardRimIsSoft;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DRPDropletPrototypeSettings.intelligentEdgeLightKeylineStyleHardRimIsSoft.setter(char a1)
{
  v3 = OBJC_IVAR___DRPDropletPrototypeSettings_intelligentEdgeLightKeylineStyleHardRimIsSoft;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double DRPDropletPrototypeSettings.intelligentEdgeLightKeylineStyleHardSmallWidth.getter()
{
  v1 = OBJC_IVAR___DRPDropletPrototypeSettings_intelligentEdgeLightKeylineStyleHardSmallWidth;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DRPDropletPrototypeSettings.intelligentEdgeLightKeylineStyleHardSmallWidth.setter(double a1)
{
  v3 = OBJC_IVAR___DRPDropletPrototypeSettings_intelligentEdgeLightKeylineStyleHardSmallWidth;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double DRPDropletPrototypeSettings.intelligentEdgeLightEDRGainAmount.getter()
{
  v1 = OBJC_IVAR___DRPDropletPrototypeSettings_intelligentEdgeLightEDRGainAmount;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DRPDropletPrototypeSettings.intelligentEdgeLightEDRGainAmount.setter(double a1)
{
  v3 = OBJC_IVAR___DRPDropletPrototypeSettings_intelligentEdgeLightEDRGainAmount;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id DRPDropletPrototypeSettings.intelligentEdgeLightKeylineStyleColorMatrix.getter()
{
  v1 = OBJC_IVAR___DRPDropletPrototypeSettings_intelligentEdgeLightKeylineStyleColorMatrix;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void DRPDropletPrototypeSettings.intelligentEdgeLightKeylineStyleColorMatrix.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___DRPDropletPrototypeSettings_intelligentEdgeLightKeylineStyleColorMatrix;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id DRPDropletPrototypeSettings.intelligentEdgeLightKeylineStyleDefaultBehaviorSettings.getter()
{
  v1 = OBJC_IVAR___DRPDropletPrototypeSettings_intelligentEdgeLightKeylineStyleDefaultBehaviorSettings;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void DRPDropletPrototypeSettings.intelligentEdgeLightKeylineStyleDefaultBehaviorSettings.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___DRPDropletPrototypeSettings_intelligentEdgeLightKeylineStyleDefaultBehaviorSettings;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

Swift::Void __swiftcall DRPDropletPrototypeSettings.setDefaultValues()()
{
  v1 = v0;
  v2 = sub_249ED6C10();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v126 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131.receiver = v0;
  v131.super_class = DRPDropletPrototypeSettings;
  objc_msgSendSuper2(&v131, sel_setDefaultValues);
  [v0 setSuppressCompositingFilterMultiply_];
  [v0 setSuppressCompositingFilterDestOut_];
  [v0 setRightEdgeHintSize_];
  [v0 setRightEdgeHintDropletRadius_];
  [v0 setEdgeHintKeylineInnerWidth_];
  [v0 setEdgeHintKeylineOuterWidth_];
  v7 = [v0 edgeHintKeylineAdaptiveColorMatrix];
  sub_249EA60F4();

  v8 = [v1 edgeHintCenterXAnimationSettings];
  [v8 setDefaultValues];
  [v8 setDampingRatio_];
  [v8 setResponse_];
  [v8 setBehaviorType_];
  v9 = sub_249ED6C60();
  [v8 setName_];

  v10 = [objc_allocWithZone(MEMORY[0x277D43208]) initWithDefaultValues];
  if (!v10)
  {
    __break(1u);
    goto LABEL_11;
  }

  v11 = v10;
  v12 = *(v3 + 104);
  v130 = *MEMORY[0x277D6C040];
  v129 = v12;
  v12(v6);
  sub_249ED6C00();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v127 = *(v3 + 8);
  v127(v6, v2);
  LOBYTE(v132[0]) = 1;
  v128 = sub_249EA62D4();
  v19 = sub_249ED6C20();
  LODWORD(v20) = v14;
  LODWORD(v21) = v16;
  LODWORD(v22) = v18;
  [v11 setFrameRateRange:v19 highFrameRateReason:{v20, v21, v22}];
  [v8 setPreferredFrameRateRange_];

  v23 = [v1 edgeHintCenterYAnimationSettings];
  [v23 setDefaultValues];
  [v23 setDampingRatio_];
  [v23 setResponse_];
  [v23 setBehaviorType_];
  v24 = sub_249ED6C60();
  [v23 setName_];

  v25 = [objc_allocWithZone(MEMORY[0x277D43208]) initWithDefaultValues];
  if (!v25)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v26 = v25;
  v129(v6, v130, v2);
  sub_249ED6C00();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v127(v6, v2);
  LOBYTE(v132[0]) = 1;
  v33 = sub_249ED6C20();
  LODWORD(v34) = v28;
  LODWORD(v35) = v30;
  LODWORD(v36) = v32;
  [v26 setFrameRateRange:v33 highFrameRateReason:{v34, v35, v36}];
  [v23 setPreferredFrameRateRange_];

  v37 = [v1 edgeHintContainerWidthAnimationSettings];
  [v37 setDefaultValues];
  [v37 setDampingRatio_];
  [v37 setResponse_];
  [v37 setBehaviorType_];
  v38 = sub_249ED6C60();
  [v37 setName_];

  v39 = [objc_allocWithZone(MEMORY[0x277D43208]) initWithDefaultValues];
  if (!v39)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v40 = v39;
  v129(v6, v130, v2);
  sub_249ED6C00();
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v127(v6, v2);
  LOBYTE(v132[0]) = 1;
  v47 = sub_249ED6C20();
  LODWORD(v48) = v42;
  LODWORD(v49) = v44;
  LODWORD(v50) = v46;
  [v40 setFrameRateRange:v47 highFrameRateReason:{v48, v49, v50}];
  [v37 setPreferredFrameRateRange_];

  v51 = [v1 edgeHintContainerHeightAnimationSettings];
  [v51 setDefaultValues];
  [v51 setDampingRatio_];
  [v51 setResponse_];
  [v51 setBehaviorType_];
  v52 = sub_249ED6C60();
  [v51 setName_];

  v53 = [objc_allocWithZone(MEMORY[0x277D43208]) initWithDefaultValues];
  if (!v53)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v54 = v53;
  v129(v6, v130, v2);
  sub_249ED6C00();
  v56 = v55;
  v58 = v57;
  v60 = v59;
  v127(v6, v2);
  LOBYTE(v132[0]) = 1;
  v61 = sub_249ED6C20();
  LODWORD(v62) = v56;
  LODWORD(v63) = v58;
  LODWORD(v64) = v60;
  [v54 setFrameRateRange:v61 highFrameRateReason:{v62, v63, v64}];
  [v51 setPreferredFrameRateRange_];

  v65 = [v1 edgeHintKeylineStyleAnimationSettings];
  sub_249EA6328();

  [v1 setEdgeContentPresentedKeylineInnerWidth_];
  [v1 setEdgeContentPresentedKeylineOuterWidth_];
  v66 = [v1 edgeContentPresentedKeylineAdaptiveColorMatrix];
  sub_249EA60F4();

  v67 = [v1 edgeContentPresentedCenterXAnimationSettings];
  [v67 setDefaultValues];
  [v67 setDampingRatio_];
  [v67 setResponse_];
  [v67 setBehaviorType_];
  v68 = sub_249ED6C60();
  [v67 setName_];

  v69 = [objc_allocWithZone(MEMORY[0x277D43208]) initWithDefaultValues];
  if (!v69)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v70 = v69;
  v129(v6, v130, v2);
  sub_249ED6C00();
  v72 = v71;
  v74 = v73;
  v76 = v75;
  v127(v6, v2);
  LOBYTE(v132[0]) = 1;
  v77 = sub_249ED6C20();
  LODWORD(v78) = v72;
  LODWORD(v79) = v74;
  LODWORD(v80) = v76;
  [v70 setFrameRateRange:v77 highFrameRateReason:{v78, v79, v80}];
  [v67 setPreferredFrameRateRange_];

  v81 = [v1 edgeContentPresentedCenterYAnimationSettings];
  [v81 setDefaultValues];
  [v81 setDampingRatio_];
  [v81 setResponse_];
  [v81 setBehaviorType_];
  v82 = sub_249ED6C60();
  [v81 setName_];

  v83 = [objc_allocWithZone(MEMORY[0x277D43208]) initWithDefaultValues];
  if (!v83)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v84 = v83;
  v129(v6, v130, v2);
  sub_249ED6C00();
  v86 = v85;
  v88 = v87;
  v90 = v89;
  v127(v6, v2);
  LOBYTE(v132[0]) = 1;
  v91 = sub_249ED6C20();
  LODWORD(v92) = v86;
  LODWORD(v93) = v88;
  LODWORD(v94) = v90;
  [v84 setFrameRateRange:v91 highFrameRateReason:{v92, v93, v94}];
  [v81 setPreferredFrameRateRange_];

  v95 = [v1 edgeContentPresentedContainerWidthAnimationSettings];
  [v95 setDefaultValues];
  [v95 setDampingRatio_];
  [v95 setResponse_];
  [v95 setBehaviorType_];
  v96 = sub_249ED6C60();
  [v95 setName_];

  v97 = [objc_allocWithZone(MEMORY[0x277D43208]) initWithDefaultValues];
  if (!v97)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v98 = v97;
  v129(v6, v130, v2);
  sub_249ED6C00();
  v100 = v99;
  v102 = v101;
  v104 = v103;
  v127(v6, v2);
  LOBYTE(v132[0]) = 1;
  v105 = sub_249ED6C20();
  LODWORD(v106) = v100;
  LODWORD(v107) = v102;
  LODWORD(v108) = v104;
  [v98 setFrameRateRange:v105 highFrameRateReason:{v106, v107, v108}];
  [v95 setPreferredFrameRateRange_];

  v109 = [v1 edgeContentPresentedContainerHeightAnimationSettings];
  [v109 setDefaultValues];
  [v109 setDampingRatio_];
  [v109 setResponse_];
  [v109 setBehaviorType_];
  v110 = sub_249ED6C60();
  [v109 setName_];

  v111 = [objc_allocWithZone(MEMORY[0x277D43208]) initWithDefaultValues];
  if (v111)
  {
    v112 = v111;
    v129(v6, v130, v2);
    sub_249ED6C00();
    v114 = v113;
    v116 = v115;
    v118 = v117;
    v127(v6, v2);
    LOBYTE(v132[0]) = 1;
    v119 = sub_249ED6C20();
    LODWORD(v120) = v114;
    LODWORD(v121) = v116;
    LODWORD(v122) = v118;
    [v112 setFrameRateRange:v119 highFrameRateReason:{v120, v121, v122}];
    [v109 setPreferredFrameRateRange_];

    v123 = [v1 edgeContentPresentedKeylineStyleAnimationSettings];
    sub_249EA6328();

    [v1 setIntelligentEdgeLightKeylineStyleSoftScreenBlendMode_];
    [v1 setIntelligentEdgeLightKeylineStyleSoftRimIsSoft_];
    [v1 setIntelligentEdgeLightKeylineStyleSoftAlpha_];
    [v1 setIntelligentEdgeLightKeylineStyleSoftLargeBlurRadius_];
    [v1 setIntelligentEdgeLightKeylineStyleSoftLargeAmount_];
    [v1 setIntelligentEdgeLightKeylineStyleSoftLargeStart_];
    [v1 setIntelligentEdgeLightKeylineStyleSoftLargeEnd_];
    [v1 setIntelligentEdgeLightKeylineStyleSoftSmallWidth_];
    [v1 setIntelligentEdgeLightKeylineStyleHardScreenBlendMode_];
    [v1 setIntelligentEdgeLightKeylineStyleHardRimIsSoft_];
    [v1 setIntelligentEdgeLightKeylineStyleHardAlpha_];
    [v1 setIntelligentEdgeLightKeylineStyleHardLargeBlurRadius_];
    [v1 setIntelligentEdgeLightKeylineStyleHardLargeAmount_];
    [v1 setIntelligentEdgeLightKeylineStyleHardLargeStart_];
    [v1 setIntelligentEdgeLightKeylineStyleHardLargeEnd_];
    [v1 setIntelligentEdgeLightKeylineStyleHardSmallWidth_];
    [v1 setIntelligentEdgeLightEDRGainAmount_];
    v124 = [v1 intelligentEdgeLightKeylineStyleColorMatrix];
    CAColorMatrixMakeMultiplyColor();
    sub_249ED6D50();

    v125 = [v1 intelligentEdgeLightKeylineStyleDefaultBehaviorSettings];
    sub_249EA6328();

    return;
  }

LABEL_17:
  __break(1u);
}

id sub_249EA60F4()
{
  [v0 setDefaultValues];
  [v0 setM11_];
  [v0 setM12_];
  [v0 setM13_];
  [v0 setM14_];
  [v0 setM15_];
  [v0 setM21_];
  [v0 setM22_];
  [v0 setM23_];
  [v0 setM24_];
  [v0 setM25_];
  [v0 setM31_];
  [v0 setM32_];
  [v0 setM33_];
  [v0 setM34_];
  [v0 setM35_];
  [v0 setM41_];
  [v0 setM42_];
  [v0 setM43_];
  [v0 setM44_];

  return [v0 setM45_];
}

unint64_t sub_249EA62D4()
{
  result = qword_281252E10;
  if (!qword_281252E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281252E10);
  }

  return result;
}

void sub_249EA6328()
{
  v1 = v0;
  v2 = sub_249ED6C10();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  [v1 setDefaultValues];
  [v1 setDampingRatio_];
  [v1 setResponse_];
  [v1 setTrackingDampingRatio_];
  [v1 setTrackingResponse_];
  [v1 setBehaviorType_];
  v7 = sub_249ED6C60();
  [v1 setName_];

  v8 = [objc_allocWithZone(MEMORY[0x277D43208]) initWithDefaultValues];
  if (v8)
  {
    v9 = v8;
    (*(v3 + 104))(v6, *MEMORY[0x277D6C040], v2);
    sub_249ED6C00();
    v11 = v10;
    v13 = v12;
    v15 = v14;
    (*(v3 + 8))(v6, v2);
    v20[15] = 1;
    sub_249EA62D4();
    v16 = sub_249ED6C20();
    LODWORD(v17) = v11;
    LODWORD(v18) = v13;
    LODWORD(v19) = v15;
    [v9 setFrameRateRange:v16 highFrameRateReason:{v17, v18, v19}];
    [v1 setPreferredFrameRateRange_];
  }

  else
  {
    __break(1u);
  }
}

void sub_249EA65C4(unint64_t a1, unint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF292D8, &unk_249ED8FF0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_249ED8E30;
  sub_249ED6DC0();

  *&v61[0] = 0xD000000000000020;
  *(&v61[0] + 1) = 0x8000000249EDABD0;
  MEMORY[0x24C205AA0](a1, a2);
  MEMORY[0x24C205AA0](0x6C426E6565726353, 0xEF65646F4D646E65);
  v5 = sub_249ED6C60();
  v6 = sub_249ED6C60();

  v7 = objc_opt_self();
  v8 = [v7 rowWithTitle:v5 valueKeyPath:v6];

  if (!v8)
  {
    __break(1u);
    goto LABEL_30;
  }

  v9 = sub_249EA1BF8(0, &qword_27EF29438, 0x277D432A0);
  *(v4 + 56) = v9;
  *(v4 + 32) = v8;
  sub_249ED6DC0();

  *&v61[0] = 0xD000000000000020;
  *(&v61[0] + 1) = 0x8000000249EDABD0;
  MEMORY[0x24C205AA0](a1, a2);
  MEMORY[0x24C205AA0](0x666F5373496D6952, 0xE900000000000074);
  v10 = sub_249ED6C60();
  v11 = sub_249ED6C60();

  v12 = [v7 rowWithTitle:v10 valueKeyPath:v11];

  if (!v12)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  *(v4 + 88) = v9;
  *(v4 + 64) = v12;
  sub_249ED6DC0();

  *&v61[0] = 0xD000000000000020;
  *(&v61[0] + 1) = 0x8000000249EDABD0;
  v55 = a2;
  MEMORY[0x24C205AA0](a1, a2);
  MEMORY[0x24C205AA0](0x6168706C41, 0xE500000000000000);
  v13 = sub_249ED6C60();
  v14 = sub_249ED6C60();

  v57 = objc_opt_self();
  v15 = [v57 rowWithTitle:v13 valueKeyPath:v14];

  if (!v15)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (![v15 between:0.0 and:1.0])
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  sub_249ED6D90();
  swift_unknownObjectRelease();

  sub_249EA90F4(v60, v61);
  v16 = sub_249EA1BF8(0, &qword_27EF29440, 0x277D431F0);
  swift_dynamicCast();
  *(v4 + 120) = v16;
  *(v4 + 96) = v59;
  *&v61[0] = 0;
  *(&v61[0] + 1) = 0xE000000000000000;
  sub_249ED6DC0();

  *&v61[0] = 0xD000000000000020;
  *(&v61[0] + 1) = 0x8000000249EDABD0;
  MEMORY[0x24C205AA0](a1, v55);
  MEMORY[0x24C205AA0](0x6168706C41, 0xE500000000000000);
  v17 = sub_249ED6C60();
  v18 = sub_249ED6C60();

  v56 = objc_opt_self();
  v19 = [v56 rowWithTitle:v17 valueKeyPath:v18];

  if (!v19)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (![v19 minValue:0.0 maxValue:1.0])
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  sub_249ED6D90();
  swift_unknownObjectRelease();

  sub_249EA90F4(v60, v61);
  v20 = sub_249EA1BF8(0, &qword_27EF29458, 0x277D43298);
  swift_dynamicCast();
  *(v4 + 152) = v20;
  *(v4 + 128) = v59;
  *&v61[0] = 0;
  *(&v61[0] + 1) = 0xE000000000000000;
  sub_249ED6DC0();

  *&v61[0] = 0xD000000000000020;
  *(&v61[0] + 1) = 0x8000000249EDABD0;
  v58 = a1;
  MEMORY[0x24C205AA0](a1, v55);
  MEMORY[0x24C205AA0](0x756C42656772614CLL, 0xEF73756964615272);
  v21 = sub_249ED6C60();
  v22 = sub_249ED6C60();

  v23 = [v57 rowWithTitle:v21 valueKeyPath:v22];

  if (!v23)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (![v23 between:0.0 and:60.0])
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  sub_249ED6D90();
  swift_unknownObjectRelease();

  sub_249EA90F4(v60, v61);
  swift_dynamicCast();
  *(v4 + 184) = v16;
  *(v4 + 160) = v59;
  *&v61[0] = 0;
  *(&v61[0] + 1) = 0xE000000000000000;
  sub_249ED6DC0();

  *&v61[0] = 0xD000000000000020;
  *(&v61[0] + 1) = 0x8000000249EDABD0;
  MEMORY[0x24C205AA0](v58, v55);
  MEMORY[0x24C205AA0](0x756C42656772614CLL, 0xEF73756964615272);
  v24 = sub_249ED6C60();
  v25 = sub_249ED6C60();

  v26 = [v56 rowWithTitle:v24 valueKeyPath:v25];

  if (!v26)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (![v26 minValue:0.0 maxValue:60.0])
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  sub_249ED6D90();
  swift_unknownObjectRelease();

  sub_249EA90F4(v60, v61);
  swift_dynamicCast();
  *(v4 + 216) = v20;
  *(v4 + 192) = v59;
  *&v61[0] = 0;
  *(&v61[0] + 1) = 0xE000000000000000;
  sub_249ED6DC0();

  *&v61[0] = 0xD000000000000020;
  *(&v61[0] + 1) = 0x8000000249EDABD0;
  MEMORY[0x24C205AA0](v58, v55);
  MEMORY[0x24C205AA0](0x6F6D41656772614CLL, 0xEB00000000746E75);
  v27 = sub_249ED6C60();
  v28 = sub_249ED6C60();

  v29 = [v57 rowWithTitle:v27 valueKeyPath:v28];

  if (!v29)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (![v29 between:0.0 and:1.0])
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  sub_249ED6D90();
  swift_unknownObjectRelease();

  sub_249EA90F4(v60, v61);
  swift_dynamicCast();
  *(v4 + 248) = v16;
  *(v4 + 224) = v59;
  *&v61[0] = 0;
  *(&v61[0] + 1) = 0xE000000000000000;
  sub_249ED6DC0();

  *&v61[0] = 0xD000000000000020;
  *(&v61[0] + 1) = 0x8000000249EDABD0;
  MEMORY[0x24C205AA0](v58, v55);
  MEMORY[0x24C205AA0](0x6F6D41656772614CLL, 0xEB00000000746E75);
  v30 = sub_249ED6C60();
  v31 = sub_249ED6C60();

  v32 = [v56 rowWithTitle:v30 valueKeyPath:v31];

  if (!v32)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (![v32 minValue:0.0 maxValue:1.0])
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  sub_249ED6D90();
  swift_unknownObjectRelease();

  sub_249EA90F4(v60, v61);
  swift_dynamicCast();
  *(v4 + 280) = v20;
  *(v4 + 256) = v59;
  *&v61[0] = 0;
  *(&v61[0] + 1) = 0xE000000000000000;
  sub_249ED6DC0();

  *&v61[0] = 0xD000000000000020;
  *(&v61[0] + 1) = 0x8000000249EDABD0;
  MEMORY[0x24C205AA0](v58, v55);
  MEMORY[0x24C205AA0](0x617453656772614CLL, 0xEA00000000007472);
  v33 = sub_249ED6C60();
  v34 = sub_249ED6C60();

  v35 = [v57 rowWithTitle:v33 valueKeyPath:v34];

  if (!v35)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  if (![v35 between:0.0 and:1.0])
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  sub_249ED6D90();
  swift_unknownObjectRelease();

  sub_249EA90F4(v60, v61);
  swift_dynamicCast();
  *(v4 + 312) = v16;
  *(v4 + 288) = v59;
  *&v61[0] = 0;
  *(&v61[0] + 1) = 0xE000000000000000;
  sub_249ED6DC0();

  *&v61[0] = 0xD000000000000020;
  *(&v61[0] + 1) = 0x8000000249EDABD0;
  MEMORY[0x24C205AA0](v58, v55);
  MEMORY[0x24C205AA0](0x617453656772614CLL, 0xEA00000000007472);
  v36 = sub_249ED6C60();
  v37 = sub_249ED6C60();

  v38 = [v56 rowWithTitle:v36 valueKeyPath:v37];

  if (!v38)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (![v38 minValue:0.0 maxValue:1.0])
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  sub_249ED6D90();
  swift_unknownObjectRelease();

  sub_249EA90F4(v60, v61);
  swift_dynamicCast();
  *(v4 + 344) = v20;
  *(v4 + 320) = v59;
  *&v61[0] = 0;
  *(&v61[0] + 1) = 0xE000000000000000;
  sub_249ED6DC0();

  *&v61[0] = 0xD000000000000020;
  *(&v61[0] + 1) = 0x8000000249EDABD0;
  MEMORY[0x24C205AA0](v58, v55);
  MEMORY[0x24C205AA0](0x646E45656772614CLL, 0xE800000000000000);
  v39 = sub_249ED6C60();
  v40 = sub_249ED6C60();

  v41 = [v57 rowWithTitle:v39 valueKeyPath:v40];

  if (!v41)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  if (![v41 between:0.0 and:1.0])
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  sub_249ED6D90();
  swift_unknownObjectRelease();

  sub_249EA90F4(v60, v61);
  swift_dynamicCast();
  *(v4 + 376) = v16;
  *(v4 + 352) = v59;
  *&v61[0] = 0;
  *(&v61[0] + 1) = 0xE000000000000000;
  sub_249ED6DC0();

  *&v61[0] = 0xD000000000000020;
  *(&v61[0] + 1) = 0x8000000249EDABD0;
  MEMORY[0x24C205AA0](v58, v55);
  MEMORY[0x24C205AA0](0x646E45656772614CLL, 0xE800000000000000);
  v42 = sub_249ED6C60();
  v43 = sub_249ED6C60();

  v44 = [v56 rowWithTitle:v42 valueKeyPath:v43];

  if (!v44)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  if (![v44 minValue:0.0 maxValue:1.0])
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  sub_249ED6D90();
  swift_unknownObjectRelease();

  sub_249EA90F4(v60, v61);
  swift_dynamicCast();
  *(v4 + 408) = v20;
  *(v4 + 384) = v59;
  *&v61[0] = 0;
  *(&v61[0] + 1) = 0xE000000000000000;
  sub_249ED6DC0();

  *&v61[0] = 0xD000000000000020;
  *(&v61[0] + 1) = 0x8000000249EDABD0;
  MEMORY[0x24C205AA0](v58, v55);
  MEMORY[0x24C205AA0](0x6469576C6C616D53, 0xEA00000000006874);
  v45 = sub_249ED6C60();
  v46 = sub_249ED6C60();

  v47 = [v57 rowWithTitle:v45 valueKeyPath:v46];

  if (!v47)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  if (![v47 between:0.0 and:40.0])
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  sub_249ED6D90();
  swift_unknownObjectRelease();

  sub_249EA90F4(v60, v61);
  swift_dynamicCast();
  *(v4 + 440) = v16;
  *(v4 + 416) = v59;
  *&v61[0] = 0;
  *(&v61[0] + 1) = 0xE000000000000000;
  sub_249ED6DC0();

  *&v61[0] = 0xD000000000000020;
  *(&v61[0] + 1) = 0x8000000249EDABD0;
  MEMORY[0x24C205AA0](v58, v55);
  MEMORY[0x24C205AA0](0x6469576C6C616D53, 0xEA00000000006874);
  v48 = sub_249ED6C60();
  v49 = sub_249ED6C60();

  v50 = [v56 rowWithTitle:v48 valueKeyPath:v49];

  if (!v50)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  if (![v50 minValue:0.0 maxValue:40.0])
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v51 = objc_opt_self();
  sub_249ED6D90();
  swift_unknownObjectRelease();

  sub_249EA90F4(v60, v61);
  swift_dynamicCast();
  *(v4 + 472) = v20;
  *(v4 + 448) = v59;
  v52 = sub_249ED6CC0();

  *&v61[0] = v58;
  *(&v61[0] + 1) = v55;

  MEMORY[0x24C205AA0](0x746867694C20, 0xE600000000000000);
  v53 = sub_249ED6C60();

  v54 = [v51 sectionWithRows:v52 title:v53];

  if (!v54)
  {
LABEL_55:
    __break(1u);
  }
}

void _sSo27DRPDropletPrototypeSettingsC9DropletUIE24settingsControllerModuleSo8PTModuleCSgyFZ_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF292D8, &unk_249ED8FF0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_249ED8C90;
  v1 = objc_opt_self();
  v2 = [v1 actionWithSettingsKeyPath_];
  v3 = sub_249ED6C60();
  v4 = objc_opt_self();
  v5 = [v4 rowWithTitle:v3 action:v2];

  if (!v5)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v6 = objc_opt_self();
  v7 = sub_249EA1BF8(0, &qword_27EF29430, 0x277D431A8);
  *(v0 + 56) = v7;
  *(v0 + 32) = v5;
  v8 = sub_249ED6CC0();

  v9 = [v6 sectionWithRows_];

  v132 = v9;
  if (!v9)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v136 = v6;
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_249ED8E40;
  v11 = sub_249ED6C60();
  v12 = sub_249ED6C60();
  v13 = objc_opt_self();
  v14 = [v13 rowWithTitle:v11 valueKeyPath:v12];

  if (!v14)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v15 = sub_249EA1BF8(0, &qword_27EF29438, 0x277D432A0);
  *(v10 + 56) = v15;
  *(v10 + 32) = v14;
  v16 = sub_249ED6C60();
  v17 = sub_249ED6C60();
  v18 = [v13 rowWithTitle:v16 valueKeyPath:v17];

  if (!v18)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  *(v10 + 88) = v15;
  *(v10 + 64) = v18;
  v19 = sub_249ED6C60();
  v20 = sub_249ED6C60();
  v21 = [v13 rowWithTitle:v19 valueKeyPath:v20];

  if (!v21)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  *(v10 + 120) = v15;
  *(v10 + 96) = v21;
  v22 = sub_249ED6CC0();

  v23 = sub_249ED6C60();
  v24 = [v136 sectionWithRows:v22 title:v23];

  if (!v24)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_249ED8E50;
  v26 = sub_249ED6C60();
  v27 = sub_249ED6C60();
  v140 = objc_opt_self();
  v28 = [v140 rowWithTitle:v26 valueKeyPath:v27];

  if (!v28)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v131 = v24;
  if (![v28 precision_])
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  sub_249ED6D90();
  swift_unknownObjectRelease();

  sub_249EA90F4(v143, &v144);
  v29 = sub_249EA1BF8(0, &qword_27EF29440, 0x277D431F0);
  swift_dynamicCast();
  v138 = v29;
  *(v25 + 56) = v29;
  *(v25 + 32) = v142;
  v30 = sub_249ED6C60();
  v31 = sub_249ED6C60();
  v32 = [v140 rowWithTitle:v30 valueKeyPath:v31];

  if (!v32)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  if (![v32 precision_])
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  sub_249ED6D90();
  swift_unknownObjectRelease();

  sub_249EA90F4(v143, &v144);
  swift_dynamicCast();
  *(v25 + 88) = v138;
  *(v25 + 64) = v142;
  v33 = sub_249ED6CC0();

  v34 = sub_249ED6C60();
  v35 = [v136 sectionWithRows:v33 title:v34];

  v130 = v35;
  if (!v35)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_249ED8E60;
  v37 = sub_249ED6C60();
  v38 = sub_249ED6C60();
  v39 = [v140 rowWithTitle:v37 valueKeyPath:v38];

  if (!v39)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  if (![v39 precision_])
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  sub_249ED6D90();
  swift_unknownObjectRelease();

  sub_249EA90F4(v143, &v144);
  swift_dynamicCast();
  *(v36 + 56) = v138;
  *(v36 + 32) = v142;
  v40 = sub_249ED6C60();
  v41 = sub_249ED6C60();
  v42 = [v140 rowWithTitle:v40 valueKeyPath:v41];

  if (!v42)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  if (![v42 precision_])
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  sub_249ED6D90();
  swift_unknownObjectRelease();

  sub_249EA90F4(v143, &v144);
  swift_dynamicCast();
  *(v36 + 88) = v138;
  *(v36 + 64) = v142;
  v43 = sub_249ED6C60();
  v44 = sub_249ED6C60();
  v45 = objc_opt_self();
  v46 = [v45 rowWithTitle:v43 childSettingsKeyPath:v44];

  if (!v46)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v47 = sub_249EA1BF8(0, &qword_27EF29448, 0x277D431E0);
  *(v36 + 120) = v47;
  *(v36 + 96) = v46;
  v48 = sub_249ED6C60();
  v49 = sub_249ED6C60();
  v50 = [v45 rowWithTitle:v48 childSettingsKeyPath:v49];

  if (!v50)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  *(v36 + 152) = v47;
  *(v36 + 128) = v50;
  v51 = sub_249ED6C60();
  v52 = sub_249ED6C60();
  v53 = [v45 rowWithTitle:v51 childSettingsKeyPath:v52];

  if (!v53)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  *(v36 + 184) = v47;
  *(v36 + 160) = v53;
  v54 = sub_249ED6C60();
  v55 = sub_249ED6C60();
  v56 = [v45 rowWithTitle:v54 childSettingsKeyPath:v55];

  if (!v56)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  *(v36 + 216) = v47;
  *(v36 + 192) = v56;
  v57 = sub_249ED6C60();
  v58 = sub_249ED6C60();
  v59 = [v45 rowWithTitle:v57 childSettingsKeyPath:v58];

  if (!v59)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  *(v36 + 248) = v47;
  *(v36 + 224) = v59;
  v60 = sub_249ED6C60();
  v61 = sub_249ED6C60();
  v62 = [v45 rowWithTitle:v60 childSettingsKeyPath:v61];

  if (!v62)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  *(v36 + 280) = v47;
  *(v36 + 256) = v62;
  v63 = sub_249ED6CC0();

  v64 = sub_249ED6C60();
  v65 = [v136 sectionWithRows:v63 title:v64];

  v129 = v65;
  if (!v65)
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v66 = swift_allocObject();
  *(v66 + 16) = xmmword_249ED8E60;
  v67 = sub_249ED6C60();
  v68 = sub_249ED6C60();
  v69 = [v140 rowWithTitle:v67 valueKeyPath:v68];

  if (!v69)
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  if (![v69 precision_])
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  sub_249ED6D90();
  swift_unknownObjectRelease();

  sub_249EA90F4(v143, &v144);
  swift_dynamicCast();
  *(v66 + 56) = v138;
  *(v66 + 32) = v142;
  v70 = sub_249ED6C60();
  v71 = sub_249ED6C60();
  v72 = [v140 rowWithTitle:v70 valueKeyPath:v71];

  if (!v72)
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  if (![v72 precision_])
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  sub_249ED6D90();
  swift_unknownObjectRelease();

  sub_249EA90F4(v143, &v144);
  swift_dynamicCast();
  *(v66 + 88) = v138;
  *(v66 + 64) = v142;
  v73 = sub_249ED6C60();
  v74 = sub_249ED6C60();
  v75 = [v45 rowWithTitle:v73 childSettingsKeyPath:v74];

  if (!v75)
  {
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  *(v66 + 120) = v47;
  *(v66 + 96) = v75;
  v76 = sub_249ED6C60();
  v77 = sub_249ED6C60();
  v78 = [v45 0x278FBCBAALL];

  if (!v78)
  {
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  *(v66 + 152) = v47;
  *(v66 + 128) = v78;
  v79 = sub_249ED6C60();
  v80 = sub_249ED6C60();
  v81 = [v45 0x278FBCBAALL];

  if (!v81)
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  *(v66 + 184) = v47;
  *(v66 + 160) = v81;
  v82 = sub_249ED6C60();
  v83 = sub_249ED6C60();
  v84 = [v45 0x278FBCBAALL];

  if (!v84)
  {
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  *(v66 + 216) = v47;
  *(v66 + 192) = v84;
  v85 = sub_249ED6C60();
  v86 = sub_249ED6C60();
  v87 = [v45 0x278FBCBAALL];

  if (!v87)
  {
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  *(v66 + 248) = v47;
  *(v66 + 224) = v87;
  v88 = sub_249ED6C60();
  v89 = sub_249ED6C60();
  v90 = [v45 0x278FBCBAALL];

  if (!v90)
  {
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  *(v66 + 280) = v47;
  *(v66 + 256) = v90;
  v91 = sub_249ED6CC0();

  v92 = sub_249ED6C60();
  v93 = [v136 sectionWithRows:v91 title:v92];

  v135 = v93;
  if (!v93)
  {
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  sub_249EA65C4(0x74666F53uLL, 0xE400000000000000);
  v134 = v94;
  sub_249EA65C4(0x64726148uLL, 0xE400000000000000);
  v133 = v95;
  v96 = swift_allocObject();
  *(v96 + 16) = xmmword_249ED8E40;
  v97 = sub_249ED6C60();
  v98 = sub_249ED6C60();
  v99 = [v140 rowWithTitle:v97 valueKeyPath:v98];

  if (!v99)
  {
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  *(v96 + 56) = v138;
  *(v96 + 32) = v99;
  v100 = sub_249ED6C60();
  v101 = sub_249ED6C60();
  v102 = [v45 rowWithTitle:v100 childSettingsKeyPath:v101];

  if (!v102)
  {
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  *(v96 + 88) = v47;
  *(v96 + 64) = v102;
  v103 = sub_249ED6C60();
  v104 = sub_249ED6C60();
  v105 = [v45 rowWithTitle:v103 childSettingsKeyPath:v104];

  if (!v105)
  {
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
    return;
  }

  *(v96 + 120) = v47;
  *(v96 + 96) = v105;
  v106 = sub_249ED6CC0();

  v107 = sub_249ED6C60();
  v108 = [v136 sectionWithRows:v106 title:v107];

  if (!v108)
  {
    goto LABEL_82;
  }

  *&v143[0] = MEMORY[0x277D84F90];
  v109 = 50;
  sub_249EB3DC8(0, 50, 0);
  v110 = *&v143[0];
  do
  {
    v111 = [v1 actionWithSettingsKeyPath_];
    v112 = sub_249ED6C60();
    v113 = [v4 rowWithTitle:v112 action:v111];

    if (!v113)
    {
      __break(1u);
      goto LABEL_46;
    }

    v145 = v7;
    *&v144 = v113;
    *&v143[0] = v110;
    v115 = *(v110 + 16);
    v114 = *(v110 + 24);
    if (v115 >= v114 >> 1)
    {
      sub_249EB3DC8((v114 > 1), v115 + 1, 1);
      v110 = *&v143[0];
    }

    *(v110 + 16) = v115 + 1;
    sub_249EA90F4(&v144, (v110 + 32 * v115 + 32));
    --v109;
  }

  while (v109);
  v116 = sub_249ED6CC0();

  v117 = sub_249ED6C60();
  v118 = [v136 sectionWithRows:v116 title:v117];

  if (!v118)
  {
    goto LABEL_83;
  }

  v119 = swift_allocObject();
  *(v119 + 16) = xmmword_249ED8E70;
  v120 = sub_249EA1BF8(0, &qword_27EF29450, 0x277D43270);
  *(v119 + 32) = v132;
  *(v119 + 56) = v120;
  *(v119 + 64) = v131;
  *(v119 + 88) = v120;
  *(v119 + 96) = v134;
  *(v119 + 120) = v120;
  *(v119 + 128) = v133;
  *(v119 + 152) = v120;
  *(v119 + 160) = v108;
  *(v119 + 184) = v120;
  *(v119 + 192) = v130;
  *(v119 + 216) = v120;
  *(v119 + 224) = v129;
  *(v119 + 248) = v120;
  *(v119 + 256) = v135;
  *(v119 + 312) = v120;
  *(v119 + 280) = v120;
  *(v119 + 288) = v118;
  v137 = v132;
  v121 = v131;
  v141 = v134;
  v139 = v133;
  v122 = v108;
  v123 = v130;
  v124 = v129;
  v125 = v135;
  v126 = v118;
  v127 = sub_249ED6C60();
  v128 = sub_249ED6CC0();

  [v136 moduleWithTitle:v127 contents:v128];
}

_OWORD *sub_249EA90F4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

double DRPDropletViewConfiguration.centerX.getter()
{
  v1 = OBJC_IVAR___DRPDropletViewConfiguration_centerX;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DRPDropletViewConfiguration.centerX.setter(double a1)
{
  v3 = OBJC_IVAR___DRPDropletViewConfiguration_centerX;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double DRPDropletViewConfiguration.centerY.getter()
{
  v1 = OBJC_IVAR___DRPDropletViewConfiguration_centerY;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DRPDropletViewConfiguration.centerY.setter(double a1)
{
  v3 = OBJC_IVAR___DRPDropletViewConfiguration_centerY;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t DRPDropletViewConfiguration.boundaryEdges.getter()
{
  v1 = OBJC_IVAR___DRPDropletViewConfiguration_boundaryEdges;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DRPDropletViewConfiguration.boundaryEdges.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___DRPDropletViewConfiguration_boundaryEdges;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double DRPDropletViewConfiguration.containerCornerRadius.getter()
{
  v1 = OBJC_IVAR___DRPDropletViewConfiguration_containerCornerRadius;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DRPDropletViewConfiguration.containerCornerRadius.setter(double a1)
{
  v3 = OBJC_IVAR___DRPDropletViewConfiguration_containerCornerRadius;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double DRPDropletViewConfiguration.containerHeight.getter()
{
  v1 = OBJC_IVAR___DRPDropletViewConfiguration_containerHeight;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DRPDropletViewConfiguration.containerHeight.setter(double a1)
{
  v3 = OBJC_IVAR___DRPDropletViewConfiguration_containerHeight;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double DRPDropletViewConfiguration.containerWidth.getter()
{
  v1 = OBJC_IVAR___DRPDropletViewConfiguration_containerWidth;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DRPDropletViewConfiguration.containerWidth.setter(double a1)
{
  v3 = OBJC_IVAR___DRPDropletViewConfiguration_containerWidth;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

__n128 DRPDropletViewConfiguration.containerTransform.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR___DRPDropletViewConfiguration_containerTransform;
  swift_beginAccess();
  v4 = *(v3 + 80);
  *(a1 + 64) = *(v3 + 64);
  *(a1 + 80) = v4;
  v5 = *(v3 + 112);
  *(a1 + 96) = *(v3 + 96);
  *(a1 + 112) = v5;
  v6 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v6;
  result = *(v3 + 32);
  v8 = *(v3 + 48);
  *(a1 + 32) = result;
  *(a1 + 48) = v8;
  return result;
}

__n128 DRPDropletViewConfiguration.containerTransform.setter(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR___DRPDropletViewConfiguration_containerTransform;
  swift_beginAccess();
  v4 = *(a1 + 80);
  *(v3 + 64) = *(a1 + 64);
  *(v3 + 80) = v4;
  v5 = *(a1 + 112);
  *(v3 + 96) = *(a1 + 96);
  *(v3 + 112) = v5;
  v6 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v6;
  result = *(a1 + 32);
  v8 = *(a1 + 48);
  *(v3 + 32) = result;
  *(v3 + 48) = v8;
  return result;
}

void *DRPDropletViewConfiguration.dropletColor.getter()
{
  v1 = OBJC_IVAR___DRPDropletViewConfiguration_dropletColor;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DRPDropletViewConfiguration.dropletColor.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___DRPDropletViewConfiguration_dropletColor;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

double DRPDropletViewConfiguration.dropletRadius.getter()
{
  v1 = OBJC_IVAR___DRPDropletViewConfiguration_dropletRadius;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DRPDropletViewConfiguration.dropletRadius.setter(double a1)
{
  v3 = OBJC_IVAR___DRPDropletViewConfiguration_dropletRadius;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t DRPDropletViewConfiguration.disableDropletEffectFilters.getter()
{
  v1 = OBJC_IVAR___DRPDropletViewConfiguration_disableDropletEffectFilters;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DRPDropletViewConfiguration.disableDropletEffectFilters.setter(char a1)
{
  v3 = OBJC_IVAR___DRPDropletViewConfiguration_disableDropletEffectFilters;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double DRPDropletViewConfiguration.boundaryOutsets.getter()
{
  v1 = v0 + OBJC_IVAR___DRPDropletViewConfiguration_boundaryOutsets;
  swift_beginAccess();
  return *v1;
}

uint64_t DRPDropletViewConfiguration.boundaryOutsets.setter(double a1, double a2, double a3, double a4)
{
  v9 = (v4 + OBJC_IVAR___DRPDropletViewConfiguration_boundaryOutsets);
  result = swift_beginAccess();
  *v9 = a1;
  v9[1] = a2;
  v9[2] = a3;
  v9[3] = a4;
  return result;
}

uint64_t DRPDropletViewConfiguration.keylineStyle.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___DRPDropletViewConfiguration_keylineStyle;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

uint64_t DRPDropletViewConfiguration.anyAnimationCompletionBlock()()
{
  v1 = *(v0 + OBJC_IVAR___DRPDropletViewConfiguration__anyAnimationCompletionBlock);
  sub_249E9F560(v1, *(v0 + OBJC_IVAR___DRPDropletViewConfiguration__anyAnimationCompletionBlock + 8));
  return v1;
}

uint64_t sub_249EAA184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  v7 = sub_249ED6C70();
  v9 = v8;

  v6(v7, v9, a3, a4);
}

Swift::Void __swiftcall DRPDropletViewConfiguration.removeAnyAnimationCompletionBlocks()()
{
  v1 = (v0 + OBJC_IVAR___DRPDropletViewConfiguration__anyAnimationCompletionBlock);
  v2 = *(v0 + OBJC_IVAR___DRPDropletViewConfiguration__anyAnimationCompletionBlock);
  v3 = *(v0 + OBJC_IVAR___DRPDropletViewConfiguration__anyAnimationCompletionBlock + 8);
  *v1 = 0;
  v1[1] = 0;
  sub_249E9F570(v2, v3);
}

uint64_t DRPDropletViewConfiguration.addAnyAnimationCompletionBlock(_:)(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___DRPDropletViewConfiguration__anyAnimationCompletionBlock);
  v6 = *(v2 + OBJC_IVAR___DRPDropletViewConfiguration__anyAnimationCompletionBlock);
  v7 = *(v2 + OBJC_IVAR___DRPDropletViewConfiguration__anyAnimationCompletionBlock + 8);
  if (v6)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = v6;
    *(v8 + 24) = v7;
    v9 = swift_allocObject();
    *(v9 + 16) = a1;
    *(v9 + 24) = a2;
    v10 = swift_allocObject();
    v10[2] = sub_249EB0FA0;
    v10[3] = v8;
    v10[4] = sub_249EB0FA0;
    v10[5] = v9;
    v11 = sub_249EAF774;
  }

  else
  {
    v10 = swift_allocObject();
    v10[2] = a1;
    v10[3] = a2;
    v11 = sub_249EAA3E8;
  }

  v12 = v11;
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = v10;
  *v5 = sub_249EAA3EC;
  v5[1] = v13;

  sub_249E9F560(v6, v7);

  return sub_249E9F570(v6, v7);
}

uint64_t sub_249EAA3EC(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v5 = *(v4 + 16);
  v9[0] = a1;
  v9[1] = a2;
  v8 = a3;
  v7 = a4;
  return v5(v9, &v8, &v7);
}

uint64_t (*DRPDropletViewConfiguration.animationBlock(forKeyPath:)(uint64_t a1, uint64_t a2))(uint64_t a1)
{
  v5 = OBJC_IVAR___DRPDropletViewConfiguration_animationBlockMap;
  swift_beginAccess();
  v6 = *(v2 + v5);
  if (*(v6 + 16) && (v7 = sub_249EAE3DC(a1, a2), (v8 & 1) != 0))
  {
    v9 = *(v6 + 56);
    *(swift_allocObject() + 16) = *(v9 + 16 * v7);

    v10 = sub_249EAF7F0;
  }

  else
  {
    v10 = 0;
  }

  swift_endAccess();
  return v10;
}

void sub_249EAA6AC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t DRPDropletViewConfiguration.addAlongsideAnimationBlock(forKeyPath:animationBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = OBJC_IVAR___DRPDropletViewConfiguration_animationBlockMap;
  swift_beginAccess();
  v10 = *(v4 + v9);
  if (!*(v10 + 16) || (v11 = sub_249EAE3DC(a1, a2), (v12 & 1) == 0))
  {
    swift_endAccess();
    if (a3)
    {
      v17 = swift_allocObject();
      v17[2] = a3;
      v17[3] = a4;
      v18 = sub_249EAF8AC;
      goto LABEL_7;
    }

    sub_249E9F560(0, a4);
LABEL_10:
    v21 = 0;
    v20 = 0;
    goto LABEL_11;
  }

  v13 = v11;
  v14 = *(v10 + 56);
  v15 = swift_allocObject();
  *(v15 + 16) = *(v14 + 16 * v13);

  swift_endAccess();
  if (!a3)
  {
    sub_249E9F560(0, a4);
    sub_249E9F570(sub_249EAF8D8, v15);
    goto LABEL_10;
  }

  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;
  v17 = swift_allocObject();
  v17[2] = sub_249EAF8D8;
  v17[3] = v15;
  v17[4] = sub_249EAF8AC;
  v17[5] = v16;
  v18 = sub_249EAF828;
LABEL_7:
  v19 = v18;
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  *(v20 + 24) = v17;
  sub_249E9F560(a3, a4);
  v21 = sub_249EAF884;
LABEL_11:
  swift_beginAccess();

  sub_249EAAA64(v21, v20, a1, a2, &qword_27EF29618, &unk_249ED8F00, sub_249EB7788);
  return swift_endAccess();
}

uint64_t sub_249EAA96C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_249EAEE3C(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_249EAE3DC(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_249EAF2D4();
        v14 = v16;
      }

      swift_unknownObjectRelease();
      result = sub_249EB69C4(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

uint64_t sub_249EAAA64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(uint64_t, uint64_t))
{
  v10 = v7;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v7;
    sub_249EAEFB8(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native, a5, a6);

    *v7 = v23;
  }

  else
  {
    v18 = sub_249EAE3DC(a3, a4);
    v20 = v19;

    if (v20)
    {
      v21 = swift_isUniquelyReferenced_nonNull_native();
      v22 = *v10;
      v24 = *v10;
      if (!v21)
      {
        sub_249EAF444(a5, a6);
        v22 = v24;
      }

      result = a7(v18, v22);
      *v10 = v22;
    }
  }

  return result;
}

uint64_t DRPDropletViewConfiguration.behaviorSettings(forKeyPath:)(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR___DRPDropletViewConfiguration_behaviorSettingsMap;
  swift_beginAccess();
  v6 = *(v2 + v5);
  if (*(v6 + 16) && (v7 = sub_249EAE3DC(a1, a2), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + 8 * v7);
    swift_unknownObjectRetain();
  }

  else
  {
    v9 = 0;
  }

  swift_endAccess();
  return v9;
}

uint64_t DRPDropletViewConfiguration.setBehaviorSettingsForKeyPath(_:behaviorSettings:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  swift_unknownObjectRetain();

  sub_249EAA96C(a3, a1, a2);
  return swift_endAccess();
}

uint64_t (*DRPDropletViewConfiguration.animationCompletionBlock(forKeyPath:)(uint64_t a1, uint64_t a2))(char a1, char a2)
{
  v5 = OBJC_IVAR___DRPDropletViewConfiguration_animationCompletionBlockMap;
  swift_beginAccess();
  v6 = *(v2 + v5);
  if (*(v6 + 16) && (v7 = sub_249EAE3DC(a1, a2), (v8 & 1) != 0))
  {
    v9 = *(v6 + 56);
    *(swift_allocObject() + 16) = *(v9 + 16 * v7);

    v10 = sub_249EAF900;
  }

  else
  {
    v10 = 0;
  }

  swift_endAccess();
  return v10;
}

uint64_t sub_249EAB03C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v5(a2, a3);
}

uint64_t DRPDropletViewConfiguration.addAnimationCompletionBlock(forKeyPath:animationCompletionBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = OBJC_IVAR___DRPDropletViewConfiguration_animationCompletionBlockMap;
  swift_beginAccess();
  v10 = *(v4 + v9);
  if (!*(v10 + 16) || (v11 = sub_249EAE3DC(a1, a2), (v12 & 1) == 0))
  {
    swift_endAccess();
    if (a3)
    {
      v17 = swift_allocObject();
      v17[2] = a3;
      v17[3] = a4;
      v18 = sub_249EAFA14;
      goto LABEL_7;
    }

    sub_249E9F560(0, a4);
LABEL_10:
    v21 = 0;
    v20 = 0;
    goto LABEL_11;
  }

  v13 = v11;
  v14 = *(v10 + 56);
  v15 = swift_allocObject();
  *(v15 + 16) = *(v14 + 16 * v13);

  swift_endAccess();
  if (!a3)
  {
    sub_249E9F560(0, a4);
    sub_249E9F570(sub_249EAFA44, v15);
    goto LABEL_10;
  }

  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;
  v17 = swift_allocObject();
  v17[2] = sub_249EAFA44;
  v17[3] = v15;
  v17[4] = sub_249EAFA14;
  v17[5] = v16;
  v18 = sub_249EAF980;
LABEL_7:
  v19 = v18;
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  *(v20 + 24) = v17;
  sub_249E9F560(a3, a4);
  v21 = sub_249EAF9EC;
LABEL_11:
  swift_beginAccess();

  sub_249EAAA64(v21, v20, a1, a2, &qword_27EF29610, &qword_249ED8EF8, sub_249EB7788);
  return swift_endAccess();
}

id DRPDropletViewConfiguration.init(centerX:centerY:boundaryEdges:containerCornerRadius:containerHeight:containerWidth:containerTransform:dropletColor:dropletRadius:disableDropletEffectFilters:boundaryOutsets:keylineStyle:)(uint64_t a1, _OWORD *a2, void *a3, char a4, uint64_t a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v20 = a2[5];
  v26[4] = a2[4];
  v26[5] = v20;
  v21 = a2[7];
  v26[6] = a2[6];
  v26[7] = v21;
  v22 = a2[1];
  v26[0] = *a2;
  v26[1] = v22;
  v23 = a2[3];
  v26[2] = a2[2];
  v26[3] = v23;
  v24 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCenterX:a1 centerY:v26 boundaryEdges:a3 containerCornerRadius:a4 & 1 containerHeight:a5 containerWidth:a6 containerTransform:a7 dropletColor:a8 dropletRadius:a9 disableDropletEffectFilters:a10 boundaryOutsets:a11 keylineStyle:{*&a12, *&a13, a17, a18}];

  swift_unknownObjectRelease();
  return v24;
}

id DRPDropletViewConfiguration.init(centerX:centerY:boundaryEdges:containerCornerRadius:containerHeight:containerWidth:containerTransform:dropletColor:dropletRadius:disableDropletEffectFilters:boundaryOutsets:keylineStyle:)(uint64_t a1, _OWORD *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, uint64_t a17, uint64_t a18)
{
  v19 = sub_249EAFC84(a1, a2, a3, a4, a5, a9, a10, a11, a12, a13, a14, a15, a16, a6, a7, a8, a17, a18);
  swift_unknownObjectRelease();

  return v19;
}

char *DRPDropletViewConfiguration.init(viewConfiguration:)(char *a1)
{
  [a1 centerX];
  v123 = v3;
  [a1 centerY];
  v120 = v4;
  v5 = [a1 boundaryEdges];
  [a1 containerCornerRadius];
  v7 = v6;
  [a1 containerHeight];
  v9 = v8;
  [a1 containerWidth];
  v11 = v10;
  [a1 containerTransform];
  v12 = [a1 dropletColor];
  [a1 dropletRadius];
  v14 = v13;
  v15 = [a1 disableDropletEffectFilters];
  [a1 boundaryOutsets];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v119 = a1;
  v24 = [a1 keylineStyle];
  if (v24)
  {
    objc_opt_self();
    [swift_dynamicCastObjCClassUnconditional() copy];
    sub_249ED6D90();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF29540, &qword_249ED8E98);
    swift_dynamicCast();
    v24 = v127;
  }

  v128[5] = v128[13];
  v128[6] = v128[14];
  v128[7] = v128[15];
  v128[0] = v128[8];
  v128[1] = v128[9];
  v128[2] = v128[10];
  v128[3] = v128[11];
  v128[4] = v128[12];
  v25 = [v1 initWithCenterX:v5 centerY:v128 boundaryEdges:v12 containerCornerRadius:v15 containerHeight:v24 containerWidth:v123 containerTransform:v120 dropletColor:v7 dropletRadius:v9 disableDropletEffectFilters:v11 boundaryOutsets:v14 keylineStyle:{v17, v19, v21, v23}];
  swift_unknownObjectRelease();

  v26 = OBJC_IVAR___DRPDropletViewConfiguration_animationBlockMap;
  swift_beginAccess();
  v27 = *&v119[v26];
  v118 = v25;

  v28 = sub_249EAFA6C(MEMORY[0x277D84F90], &qword_27EF29618, &unk_249ED8F00);
  v29 = v27 + 64;
  v30 = 1 << *(v27 + 32);
  v31 = -1;
  if (v30 < 64)
  {
    v31 = ~(-1 << v30);
  }

  v32 = v31 & *(v27 + 64);
  v33 = (v30 + 63) >> 6;
  v121 = v27;

  v34 = 0;
  if (v32)
  {
    goto LABEL_8;
  }

  while (1)
  {
LABEL_9:
    v36 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      __break(1u);
      goto LABEL_62;
    }

    if (v36 >= v33)
    {
      break;
    }

    v32 = *(v29 + 8 * v36);
    ++v34;
    if (v32)
    {
      while (1)
      {
        v37 = (v36 << 10) | (16 * __clz(__rbit64(v32)));
        v38 = (*(v121 + 48) + v37);
        v40 = *v38;
        v39 = v38[1];
        v124 = *(*(v121 + 56) + v37);
        swift_bridgeObjectRetain_n();
        swift_retain_n();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v42 = sub_249EAE3DC(v40, v39);
        v44 = v28[2];
        v45 = (v43 & 1) == 0;
        v46 = __OFADD__(v44, v45);
        v47 = v44 + v45;
        if (v46)
        {
          goto LABEL_64;
        }

        v48 = v43;
        if (v28[3] >= v47)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v53 = v42;
            sub_249EAF444(&qword_27EF29618, &unk_249ED8F00);
            v42 = v53;
          }
        }

        else
        {
          sub_249EAE864(v47, isUniquelyReferenced_nonNull_native, &qword_27EF29618, &unk_249ED8F00);
          v42 = sub_249EAE3DC(v40, v39);
          if ((v48 & 1) != (v49 & 1))
          {
            goto LABEL_70;
          }
        }

        v32 &= v32 - 1;
        if (v48)
        {
          v35 = v42;

          *(v28[7] + 16 * v35) = v124;

          v34 = v36;
          if (!v32)
          {
            goto LABEL_9;
          }
        }

        else
        {
          v28[(v42 >> 6) + 8] |= 1 << v42;
          v50 = (v28[6] + 16 * v42);
          *v50 = v40;
          v50[1] = v39;
          *(v28[7] + 16 * v42) = v124;

          v51 = v28[2];
          v46 = __OFADD__(v51, 1);
          v52 = v51 + 1;
          if (v46)
          {
            goto LABEL_67;
          }

          v28[2] = v52;
          v34 = v36;
          if (!v32)
          {
            goto LABEL_9;
          }
        }

LABEL_8:
        v36 = v34;
      }
    }
  }

  v54 = OBJC_IVAR___DRPDropletViewConfiguration_animationBlockMap;
  swift_beginAccess();
  *&v118[v54] = v28;

  v55 = OBJC_IVAR___DRPDropletViewConfiguration_animationCompletionBlockMap;
  swift_beginAccess();
  v56 = *&v119[v55];

  v57 = sub_249EAFA6C(MEMORY[0x277D84F90], &qword_27EF29610, &qword_249ED8EF8);
  v58 = v56 + 64;
  v59 = 1 << *(v56 + 32);
  v60 = -1;
  if (v59 < 64)
  {
    v60 = ~(-1 << v59);
  }

  v61 = v60 & *(v56 + 64);
  v62 = (v59 + 63) >> 6;
  v122 = v56;

  v63 = 0;
  if (v61)
  {
    goto LABEL_27;
  }

LABEL_28:
  while (1)
  {
    v65 = v63 + 1;
    if (__OFADD__(v63, 1))
    {
      break;
    }

    if (v65 >= v62)
    {

      v82 = OBJC_IVAR___DRPDropletViewConfiguration_animationCompletionBlockMap;
      swift_beginAccess();
      *&v118[v82] = v57;

      v83 = OBJC_IVAR___DRPDropletViewConfiguration_behaviorSettingsMap;
      swift_beginAccess();
      v84 = *&v119[v83];

      v85 = sub_249EAFB80(MEMORY[0x277D84F90]);
      v86 = v84 + 64;
      v87 = 1 << *(v84 + 32);
      v88 = -1;
      if (v87 < 64)
      {
        v88 = ~(-1 << v87);
      }

      v89 = v88 & *(v84 + 64);
      v90 = (v87 + 63) >> 6;
      v126 = v84;

      v91 = 0;
      if (v89)
      {
        goto LABEL_46;
      }

LABEL_47:
      while (1)
      {
        v93 = v91 + 1;
        if (__OFADD__(v91, 1))
        {
          goto LABEL_63;
        }

        if (v93 >= v90)
        {

          v111 = OBJC_IVAR___DRPDropletViewConfiguration_behaviorSettingsMap;
          swift_beginAccess();
          *&v118[v111] = v85;

          v112 = *&v119[OBJC_IVAR___DRPDropletViewConfiguration__anyAnimationCompletionBlock];
          v113 = *&v119[OBJC_IVAR___DRPDropletViewConfiguration__anyAnimationCompletionBlock + 8];
          sub_249E9F560(v112, v113);

          v114 = &v118[OBJC_IVAR___DRPDropletViewConfiguration__anyAnimationCompletionBlock];
          v115 = *&v118[OBJC_IVAR___DRPDropletViewConfiguration__anyAnimationCompletionBlock];
          v116 = *&v118[OBJC_IVAR___DRPDropletViewConfiguration__anyAnimationCompletionBlock + 8];
          *v114 = v112;
          v114[1] = v113;
          sub_249E9F570(v115, v116);

          return v118;
        }

        v89 = *(v86 + 8 * v93);
        ++v91;
        if (v89)
        {
          while (1)
          {
            v94 = __clz(__rbit64(v89)) | (v93 << 6);
            v95 = (*(v126 + 48) + 16 * v94);
            v97 = *v95;
            v96 = v95[1];
            v98 = *(*(v126 + 56) + 8 * v94);
            swift_bridgeObjectRetain_n();
            swift_unknownObjectRetain_n();
            v99 = swift_isUniquelyReferenced_nonNull_native();
            v100 = sub_249EAE3DC(v97, v96);
            v102 = v85[2];
            v103 = (v101 & 1) == 0;
            v46 = __OFADD__(v102, v103);
            v104 = v102 + v103;
            if (v46)
            {
              goto LABEL_66;
            }

            v105 = v101;
            if (v85[3] >= v104)
            {
              if ((v99 & 1) == 0)
              {
                v110 = v100;
                sub_249EAF2D4();
                v100 = v110;
              }
            }

            else
            {
              sub_249EAE5BC(v104, v99);
              v100 = sub_249EAE3DC(v97, v96);
              if ((v105 & 1) != (v106 & 1))
              {
                goto LABEL_70;
              }
            }

            v89 &= v89 - 1;
            if (v105)
            {
              v92 = v100;

              *(v85[7] + 8 * v92) = v98;
              swift_unknownObjectRelease();

              swift_unknownObjectRelease();
              v91 = v93;
              if (!v89)
              {
                goto LABEL_47;
              }
            }

            else
            {
              v85[(v100 >> 6) + 8] |= 1 << v100;
              v107 = (v85[6] + 16 * v100);
              *v107 = v97;
              v107[1] = v96;
              *(v85[7] + 8 * v100) = v98;
              swift_unknownObjectRelease();

              v108 = v85[2];
              v46 = __OFADD__(v108, 1);
              v109 = v108 + 1;
              if (v46)
              {
                goto LABEL_69;
              }

              v85[2] = v109;
              v91 = v93;
              if (!v89)
              {
                goto LABEL_47;
              }
            }

LABEL_46:
            v93 = v91;
          }
        }
      }
    }

    v61 = *(v58 + 8 * v65);
    ++v63;
    if (v61)
    {
      while (1)
      {
        v66 = (v65 << 10) | (16 * __clz(__rbit64(v61)));
        v67 = (*(v122 + 48) + v66);
        v69 = *v67;
        v68 = v67[1];
        v125 = *(*(v122 + 56) + v66);
        swift_bridgeObjectRetain_n();
        swift_retain_n();
        v70 = swift_isUniquelyReferenced_nonNull_native();
        v71 = sub_249EAE3DC(v69, v68);
        v73 = v57[2];
        v74 = (v72 & 1) == 0;
        v46 = __OFADD__(v73, v74);
        v75 = v73 + v74;
        if (v46)
        {
          goto LABEL_65;
        }

        v76 = v72;
        if (v57[3] >= v75)
        {
          if ((v70 & 1) == 0)
          {
            v81 = v71;
            sub_249EAF444(&qword_27EF29610, &qword_249ED8EF8);
            v71 = v81;
          }
        }

        else
        {
          sub_249EAE864(v75, v70, &qword_27EF29610, &qword_249ED8EF8);
          v71 = sub_249EAE3DC(v69, v68);
          if ((v76 & 1) != (v77 & 1))
          {
            goto LABEL_70;
          }
        }

        v61 &= v61 - 1;
        if (v76)
        {
          v64 = v71;

          *(v57[7] + 16 * v64) = v125;

          v63 = v65;
          if (!v61)
          {
            goto LABEL_28;
          }
        }

        else
        {
          v57[(v71 >> 6) + 8] |= 1 << v71;
          v78 = (v57[6] + 16 * v71);
          *v78 = v69;
          v78[1] = v68;
          *(v57[7] + 16 * v71) = v125;

          v79 = v57[2];
          v46 = __OFADD__(v79, 1);
          v80 = v79 + 1;
          if (v46)
          {
            goto LABEL_68;
          }

          v57[2] = v80;
          v63 = v65;
          if (!v61)
          {
            goto LABEL_28;
          }
        }

LABEL_27:
        v65 = v63;
      }
    }
  }

LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  result = sub_249ED6EF0();
  __break(1u);
  return result;
}

uint64_t DRPDropletViewConfiguration.copy()@<X0>(void *a1@<X8>)
{
  v3 = [objc_allocWithZone(DRPDropletViewConfiguration) initWithViewConfiguration_];
  result = type metadata accessor for DRPDropletViewConfiguration(v3);
  a1[3] = result;
  *a1 = v3;
  return result;
}

uint64_t DRPDropletViewConfiguration.description.getter()
{
  sub_249EAC358(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF29548, &qword_249ED8EA0);
  sub_249EAFF14(&qword_27EF29550, &qword_27EF29548, &qword_249ED8EA0, MEMORY[0x277D83958]);
  v0 = sub_249ED6C50();

  return v0;
}

char *sub_249EAC358(char a1)
{
  v2 = v1;
  v73[16] = *MEMORY[0x277D85DE8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF29840, &qword_249ED8EC8);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_249ED8E80;
  v68.receiver = v1;
  v68.super_class = DRPDropletViewConfiguration;
  v4 = objc_msgSendSuper2(&v68, sel_description);
  v5 = sub_249ED6C70();
  v7 = v6;

  *(v3 + 32) = v5;
  *(v3 + 40) = v7;
  strcpy(v73, "centerX: ");
  WORD1(v73[1]) = 0;
  HIDWORD(v73[1]) = -385875968;
  [v2 centerX];
  v8 = sub_249ED6D10();
  MEMORY[0x24C205AA0](v8);

  v9 = v73[1];
  *(v3 + 48) = v73[0];
  *(v3 + 56) = v9;
  strcpy(v73, "centerY: ");
  WORD1(v73[1]) = 0;
  HIDWORD(v73[1]) = -385875968;
  [v2 centerY];
  v10 = sub_249ED6D10();
  MEMORY[0x24C205AA0](v10);

  v11 = v73[1];
  *(v3 + 64) = v73[0];
  *(v3 + 72) = v11;
  v73[0] = 0;
  v73[1] = 0xE000000000000000;
  sub_249ED6DC0();
  MEMORY[0x24C205AA0](0x797261646E756F62, 0xEF203A7365676445);
  v71 = [v2 boundaryEdges];
  type metadata accessor for UIRectEdge(0);
  sub_249ED6E40();
  v12 = v73[1];
  *(v3 + 80) = v73[0];
  *(v3 + 88) = v12;
  v73[0] = 0;
  v73[1] = 0xE000000000000000;
  sub_249ED6DC0();

  v73[0] = 0xD000000000000017;
  v73[1] = 0x8000000249EDB460;
  [v2 containerCornerRadius];
  v13 = sub_249ED6D10();
  MEMORY[0x24C205AA0](v13);

  v14 = v73[1];
  *(v3 + 96) = v73[0];
  *(v3 + 104) = v14;
  v73[0] = 0;
  v73[1] = 0xE000000000000000;
  sub_249ED6DC0();

  v73[0] = 0xD000000000000011;
  v73[1] = 0x8000000249EDB480;
  [v2 containerHeight];
  v15 = sub_249ED6D10();
  MEMORY[0x24C205AA0](v15);

  v16 = v73[1];
  *(v3 + 112) = v73[0];
  *(v3 + 120) = v16;
  v73[0] = 0;
  v73[1] = 0xE000000000000000;
  sub_249ED6DC0();

  v73[0] = 0xD000000000000010;
  v73[1] = 0x8000000249EDB4A0;
  [v2 containerWidth];
  v17 = sub_249ED6D10();
  MEMORY[0x24C205AA0](v17);

  v18 = v73[1];
  *(v3 + 128) = v73[0];
  *(v3 + 136) = v18;
  v73[0] = 0;
  v73[1] = 0xE000000000000000;
  sub_249ED6DC0();
  v71 = v73[0];
  v72 = v73[1];
  MEMORY[0x24C205AA0](0xD000000000000014, 0x8000000249EDB4C0);
  [v2 containerTransform];
  type metadata accessor for CATransform3D(0);
  sub_249ED6E40();
  v19 = v72;
  *(v3 + 144) = v71;
  *(v3 + 152) = v19;
  v73[0] = 0;
  v73[1] = 0xE000000000000000;
  sub_249ED6DC0();

  strcpy(v73, "dropletColor: ");
  HIBYTE(v73[1]) = -18;
  v20 = [v2 dropletColor];
  v21 = sub_249ED6A2C(v20);
  v23 = v22;

  MEMORY[0x24C205AA0](v21, v23);

  v24 = v73[1];
  *(v3 + 160) = v73[0];
  *(v3 + 168) = v24;
  v73[0] = 0;
  v73[1] = 0xE000000000000000;
  sub_249ED6DC0();
  v71 = v73[0];
  v72 = v73[1];
  MEMORY[0x24C205AA0](0xD000000000000011, 0x8000000249EDB4E0);
  [v2 boundaryOutsets];
  v73[0] = v25;
  v73[1] = v26;
  v73[2] = v27;
  v73[3] = v28;
  type metadata accessor for UIEdgeInsets(0);
  sub_249ED6E40();
  v29 = v72;
  *(v3 + 176) = v71;
  *(v3 + 184) = v29;
  v73[0] = 0;
  v73[1] = 0xE000000000000000;
  sub_249ED6DC0();

  v73[0] = 0x5274656C706F7264;
  v73[1] = 0xEF203A7375696461;
  [v2 dropletRadius];
  v30 = sub_249ED6D10();
  MEMORY[0x24C205AA0](v30);

  v31 = v73[1];
  *(v3 + 192) = v73[0];
  *(v3 + 200) = v31;
  v73[0] = 0;
  v73[1] = 0xE000000000000000;
  sub_249ED6DC0();

  v73[0] = 0xD00000000000001DLL;
  v73[1] = 0x8000000249EDB500;
  v32 = [v2 disableDropletEffectFilters];
  v33 = v32 == 0;
  if (v32)
  {
    v34 = 1702195828;
  }

  else
  {
    v34 = 0x65736C6166;
  }

  if (v33)
  {
    v35 = 0xE500000000000000;
  }

  else
  {
    v35 = 0xE400000000000000;
  }

  MEMORY[0x24C205AA0](v34, v35);

  v36 = v73[1];
  *(v3 + 208) = v73[0];
  *(v3 + 216) = v36;
  v73[0] = 0;
  v73[1] = 0xE000000000000000;
  sub_249ED6DC0();

  v71 = 0xD000000000000010;
  v72 = 0x8000000249EDB520;
  swift_beginAccess();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF29590, &qword_249ED8ED0);
  v37 = sub_249ED6C40();
  v39 = v38;

  MEMORY[0x24C205AA0](v37, v39);

  v40 = v72;
  *(v3 + 224) = v71;
  *(v3 + 232) = v40;
  v71 = 0;
  v72 = 0xE000000000000000;
  sub_249ED6DC0();

  v69 = 0xD00000000000001ALL;
  v70 = 0x8000000249EDB540;
  swift_beginAccess();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF29598, &unk_249ED8ED8);
  v41 = sub_249ED6C40();
  v43 = v42;

  MEMORY[0x24C205AA0](v41, v43);
  v44 = 7104878;

  v45 = v70;
  *(v3 + 240) = v69;
  *(v3 + 248) = v45;
  v69 = 0;
  v70 = 0xE000000000000000;
  sub_249ED6DC0();

  v46 = *&v2[OBJC_IVAR___DRPDropletViewConfiguration__anyAnimationCompletionBlock];
  v69 = 0xD00000000000001DLL;
  v70 = 0x8000000249EDB560;
  if (v46)
  {
    v47 = 1701670771;
  }

  else
  {
    v47 = 7104878;
  }

  if (v46)
  {
    v48 = 0xE400000000000000;
  }

  else
  {
    v48 = 0xE300000000000000;
  }

  MEMORY[0x24C205AA0](v47, v48);

  v49 = v70;
  *(v3 + 256) = v69;
  *(v3 + 264) = v49;
  v69 = 0;
  v70 = 0xE000000000000000;
  sub_249ED6DC0();

  v67[1] = 0x8000000249EDB580;
  swift_beginAccess();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF29600, &qword_249ED8EE8);
  v50 = sub_249ED6C40();
  v52 = v51;

  MEMORY[0x24C205AA0](v50, v52);

  *(v3 + 272) = 0xD000000000000012;
  *(v3 + 280) = v67[1];
  if (a1)
  {
    v53 = [v2 keylineStyle];
    if (v53)
    {
      v54 = v53;
      if ([v53 respondsToSelector_])
      {
        v55 = [v54 debugDescription];
        swift_unknownObjectRelease();
        v56 = sub_249ED6C70();
        v58 = v57;

        sub_249ED6DC0();

        strcpy(v67, "keylineStyle: ");
        HIBYTE(v67[1]) = -18;
        MEMORY[0x24C205AA0](v56, v58);
        goto LABEL_22;
      }

      swift_unknownObjectRelease();
    }
  }

  sub_249ED6DC0();

  strcpy(v67, "keylineStyle: ");
  HIBYTE(v67[1]) = -18;
  v59 = [v2 keylineStyle];
  if (v59)
  {
    v60 = [v59 description];
    swift_unknownObjectRelease();
    v44 = sub_249ED6C70();
    v62 = v61;
  }

  else
  {
    v62 = 0xE300000000000000;
  }

  MEMORY[0x24C205AA0](v44, v62);
LABEL_22:

  v63 = v67[0];
  v64 = v67[1];
  result = sub_249ED5CA0(1, 17, 1, v3);
  *(result + 2) = 17;
  *(result + 36) = v63;
  *(result + 37) = v64;
  return result;
}

uint64_t DRPDropletViewConfiguration.debugDescription.getter()
{
  sub_249EAC358(1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF29558, &qword_249ED8EA8);
  sub_249EAFF14(&unk_27EF29560, &qword_27EF29558, &qword_249ED8EA8, MEMORY[0x277D83FA0]);
  v0 = sub_249ED6C50();

  return v0;
}

uint64_t DRPDropletViewConfiguration.isEqual(_:)(uint64_t a1)
{
  v2 = v1;
  v3 = sub_249EB0208(a1, v61, &unk_27EF299E0, &qword_249ED8EB0);
  if (!v62)
  {
    sub_249EAFF5C(v61);
    return 0;
  }

  type metadata accessor for DRPDropletViewConfiguration(v3);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v4 = sub_249EAD2D0(v1, v60);
  [v1 centerX];
  v6 = v5;
  [v60 centerX];
  if (v6 != v7)
  {
    goto LABEL_30;
  }

  [v1 centerY];
  v9 = v8;
  [v60 centerY];
  if (v9 != v10)
  {
    goto LABEL_30;
  }

  v11 = [v1 boundaryEdges];
  if (v11 != [v60 boundaryEdges])
  {
    goto LABEL_30;
  }

  [v2 containerCornerRadius];
  v13 = v12;
  [v60 containerCornerRadius];
  if (v13 != v14)
  {
    goto LABEL_30;
  }

  [v2 containerHeight];
  v16 = v15;
  [v60 containerHeight];
  if (v16 != v17)
  {
    goto LABEL_30;
  }

  [v2 containerWidth];
  v19 = v18;
  [v60 containerWidth];
  if (v19 != v20)
  {
    goto LABEL_30;
  }

  v21 = [v2 dropletColor];
  v22 = [v60 dropletColor];
  v23 = v22;
  if (v21)
  {
    if (v22)
    {
      sub_249EA1BF8(0, &qword_27EF29570, 0x277D75348);
      v24 = sub_249ED6D80();

      if (v24)
      {
        goto LABEL_16;
      }
    }

    else
    {
    }

LABEL_30:

    return 0;
  }

  if (v22)
  {

    goto LABEL_30;
  }

LABEL_16:
  [v2 dropletRadius];
  v26 = v25;
  [v60 dropletRadius];
  if (v26 != v27)
  {
    goto LABEL_30;
  }

  v28 = [v2 disableDropletEffectFilters];
  if (v28 != [v60 disableDropletEffectFilters])
  {
    goto LABEL_30;
  }

  [v2 boundaryOutsets];
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  [v60 boundaryOutsets];
  if (v30 != v40)
  {
    goto LABEL_30;
  }

  if (v32 != v37)
  {
    goto LABEL_30;
  }

  if (v34 != v38)
  {
    goto LABEL_30;
  }

  if (v36 != v39)
  {
    goto LABEL_30;
  }

  if ((v4 & 1) == 0)
  {
    goto LABEL_30;
  }

  v41 = OBJC_IVAR___DRPDropletViewConfiguration_animationBlockMap;
  swift_beginAccess();
  v42 = *&v2[v41];
  v43 = OBJC_IVAR___DRPDropletViewConfiguration_animationBlockMap;
  swift_beginAccess();
  v44 = *&v60[v43];

  v45 = sub_249EAD37C(v42, v44);

  if ((v45 & 1) == 0)
  {
    goto LABEL_30;
  }

  v46 = OBJC_IVAR___DRPDropletViewConfiguration_behaviorSettingsMap;
  swift_beginAccess();
  v47 = *&v2[v46];
  v48 = OBJC_IVAR___DRPDropletViewConfiguration_behaviorSettingsMap;
  swift_beginAccess();
  v49 = *&v60[v48];

  v50 = sub_249EAD37C(v47, v49);

  if ((v50 & 1) == 0)
  {
    goto LABEL_30;
  }

  v51 = OBJC_IVAR___DRPDropletViewConfiguration_animationCompletionBlockMap;
  swift_beginAccess();
  v52 = *&v2[v51];
  v53 = OBJC_IVAR___DRPDropletViewConfiguration_animationCompletionBlockMap;
  swift_beginAccess();
  v54 = *&v60[v53];

  v55 = sub_249EAD37C(v52, v54);

  if ((v55 & 1) == 0)
  {
    goto LABEL_30;
  }

  v56 = *&v2[OBJC_IVAR___DRPDropletViewConfiguration__anyAnimationCompletionBlock];
  v57 = *&v60[OBJC_IVAR___DRPDropletViewConfiguration__anyAnimationCompletionBlock];
  v58 = *&v60[OBJC_IVAR___DRPDropletViewConfiguration__anyAnimationCompletionBlock + 8];
  sub_249E9F560(v57, v58);

  if (v57)
  {
    sub_249E9F570(v57, v58);
  }

  return (v56 != 0) ^ (v57 == 0);
}

uint64_t sub_249EAD2D0(void *a1, void *a2)
{
  v3 = [a1 keylineStyle];
  v4 = [a2 keylineStyle];
  if (v3)
  {
    if (v4)
    {
      v5 = [v3 isEqual_];
      swift_unknownObjectRelease();
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    if (!v4)
    {
      return 1;
    }

    v5 = 0;
  }

  swift_unknownObjectRelease();
  return v5;
}

uint64_t sub_249EAD37C(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  while (1)
  {
    v10 = v9;
    if (!v6)
    {
      break;
    }

LABEL_10:
    if (*(a2 + 16))
    {
      v11 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v12 = (*(a1 + 48) + ((v9 << 10) | (16 * v11)));
      v14 = *v12;
      v13 = v12[1];

      sub_249EAE3DC(v14, v13);
      LOBYTE(v14) = v15;

      if (v14)
      {
        continue;
      }
    }

    return 0;
  }

  while (1)
  {
    v9 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v9 >= v7)
    {

      return 1;
    }

    v6 = *(a1 + 64 + 8 * v9);
    ++v10;
    if (v6)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

void __swiftcall DRPDropletViewConfiguration.init()(DRPDropletViewConfiguration *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

id DRPDropletViewConfiguration.change(to:preferAudioReactivity:canvasSize:)(uint64_t a1, char a2, double a3, double a4)
{
  v7 = [objc_allocWithZone(DRPDropletContextIntelligentEdgeLightKeylineStyle) initWithPreferringAudioReactivity:a2 & 1 style:a1];
  [v4 setKeylineStyle_];

  return [v4 defaultResetKeylineForCanvasSize_];
}

Swift::Void __swiftcall DRPDropletViewConfiguration.defaultResetKeyline(forCanvasSize:)(CGSize forCanvasSize)
{
  v2 = v1;
  v3 = [v1 keylineStyle];
  if (v3)
  {
    v4 = v3;
    [v1 containerWidth];
    [v1 containerHeight];
    BSRectWithSize();
    [v1 containerTransform];
    CA_CGRectApplyTransform();
    BSRectWithSize();
    [v1 centerX];
    [v1 centerY];
    UIRectCenteredAboutPoint();
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    BSRectWithSize();
    v42.origin.x = v6;
    v42.origin.y = v8;
    v42.size.width = v10;
    v42.size.height = v12;
    v41 = CGRectIntersection(v40, v42);
    width = v41.size.width;
    height = v41.size.height;
    v15 = [v1 boundaryEdges];
    if ((unk_285D0E680 & ~v15) == 0 || (qword_285D0E678 & ~v15) == 0)
    {
      v17 = height;
    }

    else
    {
      v17 = width;
    }

    v18 = 0.0;
    if (v17 < 0.0)
    {
      v19 = 0.0;
    }

    else
    {
      v19 = v17;
    }

    objc_opt_self();
    v20 = swift_dynamicCastObjCClass();
    if (v20)
    {
      swift_unknownObjectRetain();
    }

    v21 = [v2 boundaryEdges];
    [v4 innerWidth];
    v23 = v22;
    [v4 outerWidth];
    v25 = v24;
    [v2 dropletRadius];
    v27 = v26;
    if (v20 && ([v20 keylineInputStart], v29 = v28, objc_msgSend(v20, sel_keylineInputEnd), v18 = v30, v29 > v30))
    {
      __break(1u);
    }

    else
    {
      v31 = v27 * 2.8 * 1.5;
      if (v20)
      {
        v32 = 2.0;
      }

      else
      {
        v32 = v23 + v25 + 1.0 + v23 + v25 + 1.0;
      }

      if (v19 == 0.0)
      {
        v33 = 0.0;
      }

      else
      {
        v33 = v25 + 1.0 + v31 * v18;
      }

      if (v21 > 3)
      {
        if (v21 == 4)
        {
          v39 = v19 + v23 - v12;
          v36 = 0.0;
          v35 = 0.0;
          v37 = v32;
          v32 = 0.0;
          v34 = v33;
          v38 = v31;
          goto LABEL_30;
        }

        if (v21 == 8)
        {
          v34 = v31;
          v39 = v31;
          v31 = v19 + v23 - v10;
          v36 = 0.0;
          v35 = 0.0;
          v37 = 0.0;
          v38 = v33;
          goto LABEL_30;
        }
      }

      else
      {
        if (v21 == 1)
        {
          v34 = v19 + v23 - v12;
          v35 = 0.0;
          v36 = v32;
          v37 = 0.0;
          v32 = 0.0;
          v38 = v31;
          v39 = v33;
LABEL_30:
          [v4 setKeylineOutsets_];
          [v4 setKeylineFadeLengths_];
          [v4 setNormalizedStartLocation_];
          [v4 setNormalizedStopLocation_];
          swift_unknownObjectRelease();

          return;
        }

        if (v21 == 2)
        {
          v38 = v19 + v23 - v10;
          v36 = 0.0;
          v35 = v32;
          v37 = 0.0;
          v32 = 0.0;
          v34 = v31;
          v39 = v31;
          v31 = v33;
          goto LABEL_30;
        }
      }
    }

    sub_249ED6E50();
    __break(1u);
  }
}

id sub_249EADE54(int64_t a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  if (!a1)
  {
    __break(1u);
    goto LABEL_12;
  }

  v12 = vdupq_n_s64(a1);
  if ((vmaxv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(xmmword_285D0E6A8, v12), vceqq_s64(unk_285D0E6B8, v12)))) & 1) == 0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v16 = a7 * 20.0 + a5;
  if (a1 <= 3)
  {
    if (a1 != 1)
    {
      v17 = a7 * 20.0 + a5;
      if (a1 != 2)
      {
        goto LABEL_13;
      }

LABEL_10:
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v19 = *(MEMORY[0x277CD9DE8] + 80);
      v25[4] = *(MEMORY[0x277CD9DE8] + 64);
      v25[5] = v19;
      v20 = *(MEMORY[0x277CD9DE8] + 112);
      v25[6] = *(MEMORY[0x277CD9DE8] + 96);
      v25[7] = v20;
      v21 = *(MEMORY[0x277CD9DE8] + 16);
      v25[0] = *MEMORY[0x277CD9DE8];
      v25[1] = v21;
      v22 = *(MEMORY[0x277CD9DE8] + 48);
      v25[2] = *(MEMORY[0x277CD9DE8] + 32);
      v25[3] = v22;
      v23 = [ObjCClassFromMetadata edgeAdaptiveKeylineWithCanvasSize:a1 edge:v25 protrusionFromEdge:a2 centerAlongEdge:a3 containerSize:v16 containerCornerRadius:a6 transform3D:v17 dropletRadius:{a4, 0.0, a8}];
      sub_249EAE000(a5 == 0.0);
      return v23;
    }

LABEL_8:
    v17 = a4;
    a4 = a7 * 20.0 + a5;
    goto LABEL_10;
  }

  if (a1 == 4)
  {
    goto LABEL_8;
  }

  v17 = a7 * 20.0 + a5;
  if (a1 == 8)
  {
    goto LABEL_10;
  }

LABEL_13:
  result = sub_249ED6E50();
  __break(1u);
  return result;
}

id sub_249EAE000(char a1)
{
  result = [v1 keylineStyle];
  if (!result)
  {
    return result;
  }

  v4 = result;
  v5 = [v1 boundaryEdges];
  if (v5 <= 3)
  {
    if (v5 == 1)
    {
      if ((a1 & 1) == 0)
      {
        [v4 keylineFadeLengths];
        [v4 setKeylineFadeLengths_];
LABEL_10:
        [v4 setNormalizedStartLocation_];
        [v4 setNormalizedStopLocation_];
        goto LABEL_11;
      }

      goto LABEL_11;
    }

    if (v5 == 2)
    {
      if ((a1 & 1) == 0)
      {
        [v4 keylineFadeLengths];
        [v4 setKeylineFadeLengths_];
        [v4 setNormalizedStartLocation_];
        [v4 setNormalizedStopLocation_];
      }

      [v1 boundaryOutsets];
      v8 = v7;
      v9 = &_OBJC_LABEL_PROTOCOL___BSInvalidatable;
LABEL_20:
      [v4 v9[168]];
      [v4 setKeylineFadeLengths_];
      [v1 boundaryOutsets];
      [v4 v9[168]];
      goto LABEL_21;
    }

    goto LABEL_24;
  }

  if (v5 != 4)
  {
    if (v5 == 8)
    {
      v9 = &_OBJC_LABEL_PROTOCOL___BSInvalidatable;
      if ((a1 & 1) == 0)
      {
        [v4 keylineFadeLengths];
        [v4 setKeylineFadeLengths_];
        [v4 setNormalizedStartLocation_];
        [v4 setNormalizedStopLocation_];
      }

      [v1 boundaryOutsets];
      v8 = v10;
      goto LABEL_20;
    }

LABEL_24:
    result = sub_249ED6E50();
    __break(1u);
    return result;
  }

  if ((a1 & 1) == 0)
  {
    [v4 keylineFadeLengths];
    [v4 setKeylineFadeLengths_];
    goto LABEL_10;
  }

LABEL_11:
  [v1 boundaryOutsets];
  [v4 keylineFadeLengths];
  [v4 setKeylineFadeLengths_];
  [v1 boundaryOutsets];
  [v4 keylineFadeLengths];
LABEL_21:
  [v4 setKeylineFadeLengths_];

  return swift_unknownObjectRelease();
}

unint64_t sub_249EAE3DC(uint64_t a1, uint64_t a2)
{
  sub_249ED6F10();
  sub_249ED6C90();
  v4 = sub_249ED6F30();

  return sub_249EAE498(a1, a2, v4);
}

unint64_t sub_249EAE454(uint64_t a1)
{
  v2 = sub_249ED6F00();

  return sub_249EAE550(a1, v2);
}

unint64_t sub_249EAE498(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_249ED6ED0())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_249EAE550(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_249EAE5BC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF29608, &qword_249ED8EF0);
  v34 = v4;
  result = sub_249ED6E90();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {

        swift_unknownObjectRetain();
      }

      sub_249ED6F10();
      sub_249ED6C90();
      result = sub_249ED6F30();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_249EAE864(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v35 = v6;
  result = sub_249ED6E90();
  v9 = result;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v20 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v23 = 16 * (v20 | (v10 << 6));
      v24 = (*(v7 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v36 = *(*(v7 + 56) + v23);
      if ((v35 & 1) == 0)
      {
      }

      sub_249ED6F10();
      sub_249ED6C90();
      result = sub_249ED6F30();
      v27 = -1 << *(v9 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v16 + 8 * v29);
          if (v33 != -1)
          {
            v17 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = 16 * v17;
      v19 = (*(v9 + 48) + v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v9 + 56) + v18) = v36;
      ++*(v9 + 16);
    }

    v21 = v10;
    while (1)
    {
      v10 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v22 = v11[v10];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v14 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v34 = 1 << *(v7 + 32);
    v5 = v4;
    if (v34 >= 64)
    {
      bzero((v7 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

uint64_t sub_249EAEB14(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF29578, &qword_249ED8EB8);
  result = sub_249ED6E90();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (1)
    {
      if (v12)
      {
        v17 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
        v18 = v17 | (v8 << 6);
        if (v4)
        {
LABEL_10:
          v19 = *(*(v5 + 48) + 8 * v18);
          v20 = *(v5 + 56) + 88 * v18;
          v45 = *(v20 + 32);
          v46 = *(v20 + 48);
          v47 = *(v20 + 64);
          v48 = *(v20 + 80);
          v43 = *v20;
          v44 = *(v20 + 16);
          goto LABEL_17;
        }
      }

      else
      {
        v21 = v8;
        do
        {
          v8 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
            __break(1u);
            goto LABEL_35;
          }

          if (v8 >= v13)
          {
            if (v4)
            {
              v35 = 1 << *(v5 + 32);
              if (v35 >= 64)
              {
                bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
              }

              else
              {
                *v9 = -1 << v35;
              }

              *(v5 + 16) = 0;
            }

            v3 = v36;
            goto LABEL_33;
          }

          v22 = v9[v8];
          ++v21;
        }

        while (!v22);
        v12 = (v22 - 1) & v22;
        v18 = __clz(__rbit64(v22)) | (v8 << 6);
        if (v4)
        {
          goto LABEL_10;
        }
      }

      v19 = *(*(v5 + 48) + 8 * v18);
      v23 = *(v5 + 56) + 88 * v18;
      v24 = *(v23 + 16);
      v37 = *v23;
      v38 = v24;
      v26 = *(v23 + 48);
      v25 = *(v23 + 64);
      v27 = *(v23 + 32);
      v42 = *(v23 + 80);
      v40 = v26;
      v41 = v25;
      v39 = v27;
      sub_249EB0270(&v37, &v43);
      v45 = v39;
      v46 = v40;
      v47 = v41;
      v48 = v42;
      v43 = v37;
      v44 = v38;
LABEL_17:
      result = sub_249ED6F00();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v19;
      v16 = *(v7 + 56) + 88 * v15;
      *(v16 + 32) = v45;
      *(v16 + 48) = v46;
      *(v16 + 64) = v47;
      *(v16 + 80) = v48;
      *v16 = v43;
      *(v16 + 16) = v44;
      ++*(v7 + 16);
    }
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_249EAEE3C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_249EAE3DC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_249EAE5BC(v16, a4 & 1);
      v11 = sub_249EAE3DC(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_249ED6EF0();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_249EAF2D4();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return swift_unknownObjectRelease();
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

uint64_t sub_249EAEFB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t *a6, uint64_t *a7)
{
  v10 = v7;
  v16 = *v7;
  v17 = sub_249EAE3DC(a3, a4);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_17;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a5 & 1) == 0)
  {
    if (v24 < v22 || (a5 & 1) != 0)
    {
      sub_249EAE864(v22, a5 & 1, a6, a7);
      v17 = sub_249EAE3DC(a3, a4);
      if ((v23 & 1) != (v26 & 1))
      {
LABEL_18:
        result = sub_249ED6EF0();
        __break(1u);
        return result;
      }
    }

    else
    {
      v25 = v17;
      sub_249EAF444(a6, a7);
      v17 = v25;
    }
  }

  v27 = *v10;
  if (v23)
  {
    v28 = (v27[7] + 16 * v17);
    *v28 = a1;
    v28[1] = a2;
  }

  v27[(v17 >> 6) + 8] |= 1 << v17;
  v30 = (v27[6] + 16 * v17);
  *v30 = a3;
  v30[1] = a4;
  v31 = (v27[7] + 16 * v17);
  *v31 = a1;
  v31[1] = a2;
  v32 = v27[2];
  v21 = __OFADD__(v32, 1);
  v33 = v32 + 1;
  if (v21)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v27[2] = v33;
}

unint64_t sub_249EAF164(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_249EAE454(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_249EAEB14(v14, a3 & 1);
      result = sub_249EAE454(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_249ED6EF0();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_249EAF5B4();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a2;
    v21 = v19[7] + 88 * result;
    v22 = *(a1 + 16);
    *v21 = *a1;
    *(v21 + 16) = v22;
    v23 = *(a1 + 32);
    v24 = *(a1 + 48);
    v25 = *(a1 + 64);
    *(v21 + 80) = *(a1 + 80);
    *(v21 + 48) = v24;
    *(v21 + 64) = v25;
    *(v21 + 32) = v23;
    v26 = v19[2];
    v13 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (!v13)
    {
      v19[2] = v27;
      return result;
    }

    goto LABEL_15;
  }

  v20 = v19[7] + 88 * result;

  return sub_249EB02CC(a1, v20);
}

void sub_249EAF2D4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF29608, &qword_249ED8EF0);
  v2 = *v0;
  v3 = sub_249ED6E80();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        swift_unknownObjectRetain();
      }

      while (v12);
    }

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
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void *sub_249EAF444(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_249ED6E80();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = 16 * (v16 | (v10 << 6));
        v20 = (*(v4 + 48) + v19);
        v22 = *v20;
        v21 = v20[1];
        v23 = *(*(v4 + 56) + v19);
        v24 = (*(v6 + 48) + v19);
        *v24 = v22;
        v24[1] = v21;
        *(*(v6 + 56) + v19) = v23;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_249EAF5B4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF29578, &qword_249ED8EB8);
  v2 = *v0;
  v3 = sub_249ED6E80();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; result = sub_249EB0270(&v29, v28))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = *(*(v2 + 48) + 8 * v16);
      v18 = *(v2 + 56) + 88 * v16;
      v19 = *(v18 + 32);
      v20 = *(v18 + 48);
      v21 = *(v18 + 64);
      v34 = *(v18 + 80);
      v32 = v20;
      v33 = v21;
      v22 = *(v18 + 16);
      v29 = *v18;
      v30 = v22;
      v31 = v19;
      *(*(v4 + 48) + 8 * v16) = v17;
      v23 = *(v4 + 56) + 88 * v16;
      v24 = v30;
      *v23 = v29;
      *(v23 + 16) = v24;
      v25 = v31;
      v26 = v32;
      v27 = v33;
      *(v23 + 80) = v34;
      *(v23 + 48) = v26;
      *(v23 + 64) = v27;
      *(v23 + 32) = v25;
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_249EAF774(void *a1, char *a2, char *a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 32);
  v6 = a1[1];
  v7 = *a2;
  v8 = *a3;
  v12[0] = *a1;
  v12[1] = v6;
  v11 = v7;
  v10 = v8;
  v4(v12, &v11, &v10);
  return v5(v12, &v11, &v10);
}

uint64_t sub_249EAF7F0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_249EAF828(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 32);
  v5 = *a1;
  v2(&v5);
  return v3(&v5);
}

uint64_t sub_249EAF900(char a1, char a2)
{
  v3 = *(v2 + 16);
  v6 = a1;
  v5 = a2;
  return v3(&v6, &v5);
}

uint64_t objectdestroy_13Tm()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_249EAF980(char *a1, char *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 32);
  v5 = *a2;
  v8 = *a1;
  v7 = v5;
  v3(&v8, &v7);
  return v4(&v8, &v7);
}

unint64_t sub_249EAFA6C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_249ED6EA0();

    for (i = (a1 + 48); ; i += 2)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v15 = *i;

      result = sub_249EAE3DC(v7, v8);
      if (v10)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v5[6] + 16 * result);
      *v11 = v7;
      v11[1] = v8;
      *(v5[7] + 16 * result) = v15;
      v12 = v5[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v5[2] = v14;
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

unint64_t sub_249EAFB80(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF29608, &qword_249ED8EF0);
    v3 = sub_249ED6EA0();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      swift_unknownObjectRetain();
      result = sub_249EAE3DC(v5, v6);
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

id sub_249EAFC84(uint64_t a1, _OWORD *a2, void *a3, char a4, uint64_t a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v30 = OBJC_IVAR___DRPDropletViewConfiguration_dropletColor;
  *&v18[OBJC_IVAR___DRPDropletViewConfiguration_dropletColor] = 0;
  v31 = OBJC_IVAR___DRPDropletViewConfiguration_keylineStyle;
  *&v18[OBJC_IVAR___DRPDropletViewConfiguration_keylineStyle] = 0;
  v32 = &v18[OBJC_IVAR___DRPDropletViewConfiguration__anyAnimationCompletionBlock];
  *v32 = 0;
  v32[1] = 0;
  v33 = OBJC_IVAR___DRPDropletViewConfiguration_animationBlockMap;
  v34 = MEMORY[0x277D84F90];
  *&v18[v33] = sub_249EAFA6C(MEMORY[0x277D84F90], &qword_27EF29618, &unk_249ED8F00);
  v35 = OBJC_IVAR___DRPDropletViewConfiguration_animationCompletionBlockMap;
  *&v18[v35] = sub_249EAFA6C(v34, &qword_27EF29610, &qword_249ED8EF8);
  v36 = OBJC_IVAR___DRPDropletViewConfiguration_behaviorSettingsMap;
  *&v18[v36] = sub_249EAFB80(v34);
  *&v18[OBJC_IVAR___DRPDropletViewConfiguration_centerX] = a6;
  *&v18[OBJC_IVAR___DRPDropletViewConfiguration_centerY] = a7;
  *&v18[OBJC_IVAR___DRPDropletViewConfiguration_boundaryEdges] = a1;
  *&v18[OBJC_IVAR___DRPDropletViewConfiguration_containerCornerRadius] = a8;
  *&v18[OBJC_IVAR___DRPDropletViewConfiguration_containerHeight] = a9;
  *&v18[OBJC_IVAR___DRPDropletViewConfiguration_containerWidth] = a10;
  v37 = &v18[OBJC_IVAR___DRPDropletViewConfiguration_containerTransform];
  v38 = a2[5];
  v37[4] = a2[4];
  v37[5] = v38;
  v39 = a2[7];
  v37[6] = a2[6];
  v37[7] = v39;
  v40 = a2[1];
  *v37 = *a2;
  v37[1] = v40;
  v41 = a2[3];
  v37[2] = a2[2];
  v37[3] = v41;
  swift_beginAccess();
  v42 = *&v18[v30];
  *&v18[v30] = a3;
  v43 = a3;

  *&v18[OBJC_IVAR___DRPDropletViewConfiguration_dropletRadius] = a11;
  v18[OBJC_IVAR___DRPDropletViewConfiguration_disableDropletEffectFilters] = a4;
  v44 = &v18[OBJC_IVAR___DRPDropletViewConfiguration_boundaryOutsets];
  *v44 = a12;
  v44[1] = a13;
  *(v44 + 2) = a17;
  *(v44 + 3) = a18;
  swift_beginAccess();
  *&v18[v31] = a5;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v48.receiver = v18;
  v48.super_class = DRPDropletViewConfiguration;
  return objc_msgSendSuper2(&v48, sel_init);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_249EAFF14(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_249EAFF5C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF299E0, &qword_249ED8EB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_249EB0054(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF29578, &qword_249ED8EB8);
  v3 = sub_249ED6EA0();
  v4 = *(a1 + 80);
  *&v22[32] = *(a1 + 64);
  *&v22[48] = v4;
  *&v22[64] = *(a1 + 96);
  *&v22[73] = *(a1 + 105);
  v5 = *(a1 + 48);
  *v22 = *(a1 + 32);
  *&v22[16] = v5;
  v6 = *v22;
  result = sub_249EAE454(*v22);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    sub_249EB0208(v22, v21, &unk_27EF29580, &qword_249ED8EC0);
    return v3;
  }

  v9 = (a1 + 128);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v6;
    v10 = v3[7] + 88 * result;
    v11 = *&v22[24];
    *v10 = *&v22[8];
    *(v10 + 16) = v11;
    v12 = *&v22[40];
    v13 = *&v22[56];
    v14 = *&v22[72];
    *(v10 + 80) = v22[88];
    *(v10 + 48) = v13;
    *(v10 + 64) = v14;
    *(v10 + 32) = v12;
    v15 = v3[2];
    v16 = __OFADD__(v15, 1);
    v17 = v15 + 1;
    if (v16)
    {
      break;
    }

    v3[2] = v17;
    if (!--v1)
    {
      goto LABEL_8;
    }

    sub_249EB0208(v22, v21, &unk_27EF29580, &qword_249ED8EC0);
    v18 = v9[3];
    *&v22[32] = v9[2];
    *&v22[48] = v18;
    *&v22[64] = v9[4];
    *&v22[73] = *(v9 + 73);
    v19 = v9[1];
    *v22 = *v9;
    *&v22[16] = v19;
    v6 = *v22;
    result = sub_249EAE454(*v22);
    v9 += 6;
    if (v20)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_249EB0208(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

id sub_249EB0328(int64_t a1, double a2, double a3, double a4, double a5, double a6, double a7)
{
  if (!a1)
  {
    __break(1u);
    goto LABEL_33;
  }

  v11 = vdupq_n_s64(a1);
  if ((vmaxv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(xmmword_285D0E6A8, v11), vceqq_s64(unk_285D0E6B8, v11)))) & 1) == 0)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v15 = [objc_opt_self() rootSettings];
  v16 = v15;
  v17 = a4 * 0.5;
  if (a6 == 0.0)
  {
    v18 = 0.0;
  }

  else
  {
    v18 = 2.0;
  }

  v19 = a6 * 0.2 + v18;
  switch(a1)
  {
    case 1:
      v20 = v19 - v17;
LABEL_15:
      v51 = v20;
      v52 = a5;
LABEL_16:
      [v15 edgeHintKeylineInnerWidth];
      v23 = v22;
      [v16 edgeHintKeylineOuterWidth];
      v25 = v24;
      v26 = a7 * 2.8 * 1.5;
      if (v19 < 0.0)
      {
        v27 = 0.0;
      }

      else
      {
        v27 = v19;
      }

      v28 = v23 + v24 + 1.0 + v23 + v24 + 1.0;
      if (v27 == 0.0)
      {
        v29 = 0.0;
      }

      else
      {
        v29 = v26 * 0.0 + v24 + 1.0;
      }

      v57 = a7;
      if (a1 > 3)
      {
        if (a1 == 4)
        {
          v31 = v19 + v23 - a4;
          v55 = a7 * 2.8 * 1.5;
          v56 = 0.0;
          v53 = v29;
          v54 = 0.0;
          v30 = v23 + v24 + 1.0 + v23 + v24 + 1.0;
          v28 = 0.0;
          goto LABEL_27;
        }

        v55 = v29;
        v29 = v19 + v23 - a4;
        v56 = 0.0;
        v54 = 0.0;
        v30 = 0.0;
      }

      else
      {
        if (a1 == 1)
        {
          v53 = v19 + v23 - a4;
          v54 = 0.0;
          v55 = a7 * 2.8 * 1.5;
          v56 = v23 + v24 + 1.0 + v23 + v24 + 1.0;
          v30 = 0.0;
          v28 = 0.0;
          v31 = v29;
LABEL_27:
          v29 = v26;
LABEL_31:
          v32 = [v16 edgeHintKeylineAdaptiveColorMatrix];
          [v32 caColorMatrix];

          v33 = [objc_allocWithZone(DRPDropletContextAdaptiveKeylineStyle) initWithInnerWidth:v58 outerWidth:v23 keylineOutsets:v25 keylineFadeLengths:v53 normalizedStartLocation:v55 normalizedStopLocation:v31 adaptiveColorMatrix:{v29, *&v56, *&v54, *&v30, *&v28, 0, 0x3FE3333333333333}];
          v34 = objc_allocWithZone(DRPDropletViewConfiguration);
          v35 = *(MEMORY[0x277CD9DE8] + 80);
          v58[4] = *(MEMORY[0x277CD9DE8] + 64);
          v58[5] = v35;
          v36 = *(MEMORY[0x277CD9DE8] + 112);
          v58[6] = *(MEMORY[0x277CD9DE8] + 96);
          v58[7] = v36;
          v37 = *(MEMORY[0x277CD9DE8] + 16);
          v58[0] = *MEMORY[0x277CD9DE8];
          v58[1] = v37;
          v38 = *(MEMORY[0x277CD9DE8] + 48);
          v58[2] = *(MEMORY[0x277CD9DE8] + 32);
          v58[3] = v38;
          v39 = [v34 initWithCenterX:a1 centerY:v58 boundaryEdges:0 containerCornerRadius:0 containerHeight:v33 containerWidth:v52 containerTransform:v51 dropletColor:0.0 dropletRadius:a4 disableDropletEffectFilters:a4 boundaryOutsets:v57 keylineStyle:{*&v26, *&v26, *&v26, *&v26}];
          v40 = sub_249ED6C60();
          v41 = [v16 edgeHintCenterXAnimationSettings];
          [v39 setBehaviorSettingsForKeyPath:v40 behaviorSettings:v41];

          v42 = sub_249ED6C60();
          v43 = [v16 edgeHintCenterYAnimationSettings];
          [v39 setBehaviorSettingsForKeyPath:v42 behaviorSettings:v43];

          v44 = sub_249ED6C60();
          v45 = [v16 edgeHintContainerWidthAnimationSettings];
          [v39 setBehaviorSettingsForKeyPath:v44 behaviorSettings:v45];

          v46 = sub_249ED6C60();
          v47 = [v16 edgeHintContainerHeightAnimationSettings];
          [v39 setBehaviorSettingsForKeyPath:v46 behaviorSettings:v47];

          v48 = sub_249ED6C60();
          v49 = [v16 edgeHintKeylineStyleAnimationSettings];
          [v39 setBehaviorSettingsForKeyPath:v48 behaviorSettings:v49];

          return v39;
        }

        v55 = v19 + v23 - a4;
        v56 = 0.0;
        v54 = v23 + v24 + 1.0 + v23 + v24 + 1.0;
        v30 = 0.0;
        v28 = 0.0;
      }

      v53 = v26;
      v31 = v26;
      goto LABEL_31;
    case 2:
      v51 = a5;
      v21 = v19 - v17;
      goto LABEL_12;
    case 8:
      v51 = a5;
      v21 = v17 + a2 - v19;
LABEL_12:
      v52 = v21;
      goto LABEL_16;
    case 4:
      v20 = v17 + a3 - v19;
      goto LABEL_15;
  }

LABEL_34:
  result = sub_249ED6E50();
  __break(1u);
  return result;
}

id sub_249EB08F0(int64_t a1, __int128 *a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  if (!a1)
  {
    __break(1u);
    goto LABEL_31;
  }

  v14 = vdupq_n_s64(a1);
  if ((vmaxv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(xmmword_285D0E6A8, v14), vceqq_s64(unk_285D0E6B8, v14)))) & 1) == 0)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (a1 > 3)
  {
    if (a1 == 4)
    {
      v17 = 0;
      v60 = a8 * 0.5 + a4 - a5;
      v61 = a6;
      goto LABEL_13;
    }

    if (a1 != 8)
    {
      goto LABEL_32;
    }

    v17 = 0;
    v18 = a7 * 0.5 + a3 - a5;
LABEL_12:
    v60 = a6;
    v61 = v18;
    goto LABEL_13;
  }

  if (a1 != 1)
  {
    if (a1 != 2)
    {
      goto LABEL_32;
    }

    v17 = 0;
    v18 = a5 + a7 * -0.5;
    goto LABEL_12;
  }

  v60 = a5 + a8 * -0.5;
  v61 = a6;
  v17 = 1;
LABEL_13:
  v19 = [objc_opt_self() rootSettings];
  [v19 edgeContentPresentedKeylineInnerWidth];
  v21 = v20;
  [v19 edgeContentPresentedKeylineOuterWidth];
  v23 = v22;
  v63 = a8;
  v64 = a7;
  BSRectWithSize();
  v24 = a2[5];
  v75 = a2[4];
  v76 = v24;
  v25 = a2[7];
  v77 = a2[6];
  v78 = v25;
  v26 = a2[1];
  v71 = *a2;
  v72 = v26;
  v27 = a2[3];
  v73 = a2[2];
  v74 = v27;
  CA_CGRectApplyTransform();
  v30 = a10 * 2.8 * 1.5;
  v31 = 0.0;
  if (a5 < 0.0)
  {
    v32 = 0.0;
  }

  else
  {
    v32 = a5;
  }

  v33 = v21 + v23 + 1.0 + v21 + v23 + 1.0;
  if (v32 == 0.0)
  {
    v34 = 0.0;
  }

  else
  {
    v34 = v30 * 0.0 + v23 + 1.0;
  }

  v65 = a10;
  if (v17)
  {
    v57 = v21 - v29 + a5;
    v58 = a10 * 2.8 * 1.5;
    v59 = v21 + v23 + 1.0 + v21 + v23 + 1.0;
    v35 = 0.0;
    v33 = 0.0;
    v36 = v34;
LABEL_24:
    v34 = v30;
LABEL_29:
    v37 = [v19 edgeContentPresentedKeylineAdaptiveColorMatrix];
    [v37 caColorMatrix];

    v38 = objc_allocWithZone(DRPDropletContextAdaptiveKeylineStyle);
    v73 = v68;
    v74 = v69;
    v75 = v70;
    v71 = v66;
    v72 = v67;
    v39 = [v38 initWithInnerWidth:&v71 outerWidth:v21 keylineOutsets:v23 keylineFadeLengths:v57 normalizedStartLocation:v58 normalizedStopLocation:v36 adaptiveColorMatrix:{v34, *&v59, *&v31, *&v35, *&v33, 0, 0x3FE3333333333333}];
    v40 = objc_allocWithZone(DRPDropletViewConfiguration);
    v41 = a2[5];
    v75 = a2[4];
    v76 = v41;
    v42 = a2[7];
    v77 = a2[6];
    v78 = v42;
    v43 = a2[1];
    v71 = *a2;
    v72 = v43;
    v44 = a2[3];
    v73 = a2[2];
    v74 = v44;
    v45 = [v40 initWithCenterX:a1 centerY:&v71 boundaryEdges:0 containerCornerRadius:0 containerHeight:v39 containerWidth:v61 containerTransform:v60 dropletColor:a9 dropletRadius:v63 disableDropletEffectFilters:v64 boundaryOutsets:v65 keylineStyle:{*&v30, *&v30, *&v30, *&v30}];
    v46 = sub_249ED6C60();
    v47 = [v19 edgeContentPresentedCenterXAnimationSettings];
    [v45 setBehaviorSettingsForKeyPath:v46 behaviorSettings:v47];

    v48 = sub_249ED6C60();
    v49 = [v19 edgeContentPresentedCenterYAnimationSettings];
    [v45 setBehaviorSettingsForKeyPath:v48 behaviorSettings:v49];

    v50 = sub_249ED6C60();
    v51 = [v19 edgeContentPresentedContainerWidthAnimationSettings];
    [v45 setBehaviorSettingsForKeyPath:v50 behaviorSettings:v51];

    v52 = sub_249ED6C60();
    v53 = [v19 edgeContentPresentedContainerHeightAnimationSettings];
    [v45 setBehaviorSettingsForKeyPath:v52 behaviorSettings:v53];

    v54 = sub_249ED6C60();
    v55 = [v19 edgeContentPresentedKeylineStyleAnimationSettings];
    [v45 setBehaviorSettingsForKeyPath:v54 behaviorSettings:v55];

    return v45;
  }

  switch(a1)
  {
    case 2:
      v58 = v21 - v28 + a5;
      v59 = 0.0;
      v31 = v21 + v23 + 1.0 + v21 + v23 + 1.0;
      v35 = 0.0;
      v33 = 0.0;
LABEL_28:
      v57 = a10 * 2.8 * 1.5;
      v36 = v57;
      goto LABEL_29;
    case 4:
      v36 = v21 - v29 + a5;
      v58 = v30;
      v59 = 0.0;
      v35 = v21 + v23 + 1.0 + v21 + v23 + 1.0;
      v33 = 0.0;
      v57 = v34;
      goto LABEL_24;
    case 8:
      v58 = v34;
      v34 = v21 - v28 + a5;
      v59 = 0.0;
      v35 = 0.0;
      goto LABEL_28;
  }

LABEL_32:
  result = sub_249ED6E50();
  __break(1u);
  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_249EB0F28(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v7 = *(v4 + 16);
  v8 = sub_249ED6C60();
  (*(v7 + 16))(v7, v8, a3 & 1, a4 & 1);
}

char *sub_249EB0FAC(id a1, uint64_t a2)
{
  if (a1)
  {
    [a1 bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
  }

  else
  {
    v5 = 0.0;
    v7 = 0.0;
    v9 = 0.0;
    v11 = 0.0;
  }

  v12 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFrame_];
  v13 = sub_249ED6C60();
  [v12 setAccessibilityIdentifier_];

  v14 = OBJC_IVAR___DRPDropletContainerView_contentView;
  swift_beginAccess();
  v15 = *&v12[v14];
  *&v12[v14] = a1;
  v16 = a1;

  v17 = OBJC_IVAR___DRPDropletContainerView_participantViews;
  swift_beginAccess();
  *&v12[v17] = a2;

  v18 = v12;
  if (a1)
  {
    v19 = [v16 superview];
    if (!v19 || (v20 = v19, v19, v20 != v12))
    {
      [v12 addSubview_];
    }

    v18 = v16;
  }

  return v12;
}

void DRPDropletContainerView.init(coder:)()
{
  *(v0 + OBJC_IVAR___DRPDropletContainerView_contentView) = 0;
  *(v0 + OBJC_IVAR___DRPDropletContainerView_boundaryEdges) = 0;
  v1 = (v0 + OBJC_IVAR___DRPDropletContainerView_boundaryOutsets);
  v2 = *(MEMORY[0x277D768C8] + 16);
  *v1 = *MEMORY[0x277D768C8];
  v1[1] = v2;
  *(v0 + OBJC_IVAR___DRPDropletContainerView_participantViews) = MEMORY[0x277D84F90];
  sub_249ED6E50();
  __break(1u);
}

void *DRPDropletContainerView.contentView.getter()
{
  v1 = OBJC_IVAR___DRPDropletContainerView_contentView;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DRPDropletContainerView.contentView.setter(void *a1)
{
  v3 = OBJC_IVAR___DRPDropletContainerView_contentView;
  swift_beginAccess();
  v4 = *&v1[v3];
  *&v1[v3] = a1;
  if (a1)
  {
    if (v4)
    {
      v5 = v4 == a1;
    }

    else
    {
      v5 = 0;
    }

    if (!v5)
    {
      goto LABEL_9;
    }

LABEL_7:
    v6 = v4;
    goto LABEL_16;
  }

  if (!v4)
  {
    goto LABEL_7;
  }

LABEL_9:
  v7 = a1;
  [v4 removeFromSuperview];
  v8 = *&v1[v3];
  if (v8)
  {
    v6 = v8;
    v9 = [v6 superview];
    if (!v9 || (v10 = v9, v9, v10 != v1))
    {
      [v1 addSubview_];
    }

    v7 = v4;
  }

  else
  {
    v6 = v4;
  }

LABEL_16:
}

void sub_249EB1570(void *a1)
{
  v3 = OBJC_IVAR___DRPDropletContainerView_contentView;
  swift_beginAccess();
  v4 = *&v1[v3];
  if (v4)
  {
    if (v4 == a1)
    {
      return;
    }
  }

  else if (!a1)
  {
    return;
  }

  [a1 removeFromSuperview];
  v5 = *&v1[v3];
  if (v5)
  {
    v6 = v5;
    v7 = [v6 superview];
    if (!v7 || (v8 = v7, v7, v8 != v1))
    {
      [v1 addSubview_];
    }
  }
}

uint64_t DRPDropletContainerView._continuousCornerRadius.setter()
{
  v9.super_class = DRPDropletContainerView;
  objc_msgSendSuper2(&v9, sel__setContinuousCornerRadius_);
  v1 = OBJC_IVAR___DRPDropletContainerView_participantViews;
  swift_beginAccess();
  v2 = *&v0[v1];
  if (v2 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_249ED6E70())
  {

    if (!i)
    {
      break;
    }

    for (j = 0; ; ++j)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x24C205BD0](j, v2);
      }

      else
      {
        if (j >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v5 = *(v2 + 8 * j + 32);
      }

      v6 = v5;
      v7 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      [v0 _continuousCornerRadius];
      [v6 _setContinuousCornerRadius_];

      if (v7 == i)
      {
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }
}

void sub_249EB186C(void (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_249ED6E70())
  {
    v6 = 0;
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x24C205BD0](v6, a3);
      }

      else
      {
        if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v7 = *(a3 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v11 = v7;
      a1(&v11);

      if (!v3)
      {
        ++v6;
        if (v9 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

uint64_t DRPDropletContainerView.boundaryEdges.getter()
{
  v1 = OBJC_IVAR___DRPDropletContainerView_boundaryEdges;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DRPDropletContainerView.boundaryEdges.setter(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___DRPDropletContainerView_boundaryEdges;
  result = swift_beginAccess();
  v6 = *&v2[v4];
  *&v2[v4] = a1;
  if (v6 != a1)
  {
    v7 = OBJC_IVAR___DRPDropletContainerView_participantViews;
    swift_beginAccess();
    v8 = *&v2[v7];
    if (v8 >> 62)
    {
      goto LABEL_26;
    }

    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (1)
    {
      v26 = v8;

      if (!v9)
      {
      }

      v10 = 0;
      v11 = v26 & 0xC000000000000001;
      v12 = v26 & 0xFFFFFFFFFFFFFF8;
      v13 = MEMORY[0x277D85000];
      v27 = v9;
      v28 = v2;
      while (1)
      {
        if (v11)
        {
          v8 = MEMORY[0x24C205BD0](v10, v26);
        }

        else
        {
          if (v10 >= *(v12 + 16))
          {
            goto LABEL_25;
          }

          v8 = *(v26 + 32 + 8 * v10);
        }

        v14 = v8;
        if (__OFADD__(v10++, 1))
        {
          break;
        }

        v16 = [v2 boundaryEdges];
        v17 = OBJC_IVAR____TtC9DropletUI22DropletParticipantView_boundaryEdges;
        v18 = *&v14[OBJC_IVAR____TtC9DropletUI22DropletParticipantView_boundaryEdges];
        *&v14[OBJC_IVAR____TtC9DropletUI22DropletParticipantView_boundaryEdges] = v16;
        if (v16 == v18)
        {
        }

        else
        {
          v19 = OBJC_IVAR____TtC9DropletUI22DropletParticipantView_trackingViews;
          swift_beginAccess();
          v20 = *&v14[v19];
          v21 = *(v20 + 16);
          if (v21)
          {
            v22 = v20 + 32;

            do
            {
              sub_249EB0208(v22, v29, &qword_27EF296F0, &unk_249ED8F70);
              Strong = swift_unknownObjectWeakLoadStrong();
              if (Strong)
              {
                v24 = Strong;
                (*((*v13 & *Strong) + 0xC8))(v14, *&v14[v17]);
              }

              sub_249EB371C(v29, &qword_27EF296F0, &unk_249ED8F70);
              v22 += 8;
              --v21;
            }

            while (v21);

            v9 = v27;
            v2 = v28;
          }

          else
          {
          }

          v12 = v26 & 0xFFFFFFFFFFFFFF8;
          v11 = v26 & 0xC000000000000001;
        }

        if (v10 == v9)
        {
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      v25 = v8;
      v9 = sub_249ED6E70();
      v8 = v25;
    }
  }

  return result;
}

double DRPDropletContainerView.boundaryOutsets.getter()
{
  v1 = v0 + OBJC_IVAR___DRPDropletContainerView_boundaryOutsets;
  swift_beginAccess();
  return *v1;
}

uint64_t DRPDropletContainerView.boundaryOutsets.setter(float64_t a1, float64_t a2, float64_t a3, float64_t a4)
{
  v5 = v4;
  v6 = &v4[OBJC_IVAR___DRPDropletContainerView_boundaryOutsets];
  result = swift_beginAccess();
  v8 = *v6;
  v9 = v6[1];
  v10.f64[0] = a1;
  v6->f64[0] = a1;
  v6->f64[1] = a2;
  v11.f64[0] = a3;
  v6[1].f64[0] = a3;
  v6[1].f64[1] = a4;
  v10.f64[1] = a2;
  v11.f64[1] = a4;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v8, v10), vceqq_f64(v9, v11)))) & 1) == 0)
  {
    v12 = OBJC_IVAR___DRPDropletContainerView_participantViews;
    swift_beginAccess();
    v13 = *&v5[v12];
    if (v13 >> 62)
    {
      goto LABEL_26;
    }

    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (1)
    {
      v33 = v13;

      if (!v14)
      {
      }

      v15 = 0;
      v16 = MEMORY[0x277D85000];
      v34 = v5;
      v36 = v14;
      while (1)
      {
        if ((v33 & 0xC000000000000001) != 0)
        {
          v13 = MEMORY[0x24C205BD0](v15, v33);
        }

        else
        {
          if (v15 >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_25;
          }

          v13 = *(v33 + 32 + 8 * v15);
        }

        v17 = v13;
        if (__OFADD__(v15++, 1))
        {
          break;
        }

        [v5 boundaryOutsets];
        v19 = &v17[OBJC_IVAR____TtC9DropletUI22DropletParticipantView_boundaryOutsets];
        v20 = *&v17[OBJC_IVAR____TtC9DropletUI22DropletParticipantView_boundaryOutsets];
        v21 = *&v17[OBJC_IVAR____TtC9DropletUI22DropletParticipantView_boundaryOutsets + 16];
        *v19 = v22.f64[0];
        v19[1] = v23;
        v19[2] = v24.f64[0];
        v19[3] = v25;
        v22.f64[1] = v23;
        v24.f64[1] = v25;
        if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v22, v20), vceqq_f64(v24, v21)))))
        {

          if (v15 == v14)
          {
          }
        }

        else
        {
          v26 = OBJC_IVAR____TtC9DropletUI22DropletParticipantView_trackingViews;
          swift_beginAccess();
          v27 = *&v17[v26];
          v28 = *(v27 + 16);
          if (v28)
          {
            v29 = v27 + 32;

            do
            {
              sub_249EB0208(v29, v40, &qword_27EF296F0, &unk_249ED8F70);
              Strong = swift_unknownObjectWeakLoadStrong();
              if (Strong)
              {
                v31 = Strong;
                (*((*v16 & *Strong) + 0xD8))(v17, *v19, v19[1], v19[2], v19[3]);
              }

              sub_249EB371C(v40, &qword_27EF296F0, &unk_249ED8F70);
              v29 += 8;
              --v28;
            }

            while (v28);

            v5 = v34;
          }

          else
          {
          }

          v14 = v36;
          if (v15 == v36)
          {
          }
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      v32 = v13;
      v14 = sub_249ED6E70();
      v13 = v32;
    }
  }

  return result;
}

uint64_t sub_249EB226C(SEL *a1, SEL *a2)
{
  v13.super_class = DRPDropletContainerView;
  objc_msgSendSuper2(&v13, *a1);
  v5 = OBJC_IVAR___DRPDropletContainerView_participantViews;
  swift_beginAccess();
  v6 = *&v2[v5];
  if (v6 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_249ED6E70())
  {

    if (!i)
    {
      break;
    }

    for (j = 0; ; ++j)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x24C205BD0](j, v6);
      }

      else
      {
        if (j >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v9 = *(v6 + 8 * j + 32);
      }

      v10 = v9;
      v11 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      [v2 *a2];
      [v10 *a1];

      if (v11 == i)
      {
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }
}

uint64_t DRPDropletContainerView.center.setter()
{
  v9.super_class = DRPDropletContainerView;
  objc_msgSendSuper2(&v9, sel_setCenter_);
  v1 = OBJC_IVAR___DRPDropletContainerView_participantViews;
  swift_beginAccess();
  v2 = *&v0[v1];
  if (v2 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_249ED6E70())
  {

    if (!i)
    {
      break;
    }

    for (j = 0; ; ++j)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x24C205BD0](j, v2);
      }

      else
      {
        if (j >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v5 = *(v2 + 8 * j + 32);
      }

      v6 = v5;
      v7 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      [v0 center];
      [v6 setCenter_];

      if (v7 == i)
      {
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }
}

double DRPDropletContainerView.transform.getter@<D0>(_OWORD *a1@<X8>)
{
  v6.super_class = DRPDropletContainerView;
  objc_msgSendSuper2(&v6, sel_transform);
  result = *&v3;
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  return result;
}

uint64_t DRPDropletContainerView.transform.setter(_OWORD *a1)
{
  v12.super_class = DRPDropletContainerView;
  v2 = a1[1];
  v11[0] = *a1;
  v11[1] = v2;
  v11[2] = a1[2];
  objc_msgSendSuper2(&v12, sel_setTransform_, v11);
  v3 = OBJC_IVAR___DRPDropletContainerView_participantViews;
  swift_beginAccess();
  v4 = *&v1[v3];
  if (v4 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_249ED6E70())
  {

    if (!i)
    {
      break;
    }

    for (j = 0; ; ++j)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x24C205BD0](j, v4);
      }

      else
      {
        if (j >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v7 = *(v4 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      [v1 transform];
      [v8 setTransform_];

      if (v9 == i)
      {
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }
}

uint64_t DRPDropletContainerView.isHidden.setter(char a1)
{
  objc_msgSendSuper2(&v10, sel_setHidden_, a1 & 1);
  v2 = OBJC_IVAR___DRPDropletContainerView_participantViews;
  swift_beginAccess();
  v3 = *&v1[v2];
  if (v3 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_249ED6E70())
  {

    if (!i)
    {
      break;
    }

    for (j = 0; ; ++j)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x24C205BD0](j, v3);
      }

      else
      {
        if (j >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v6 = *(v3 + 8 * j + 32);
      }

      v7 = v6;
      v8 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      [v6 setHidden_];

      if (v8 == i)
      {
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }
}

double DRPDropletContainerView.transform3D.getter@<D0>(uint64_t a1@<X8>)
{
  v7[0].super_class = DRPDropletContainerView;
  [(objc_super *)v7 transform3D];
  v2 = v11;
  *(a1 + 64) = v10;
  *(a1 + 80) = v2;
  v3 = v13;
  *(a1 + 96) = v12;
  *(a1 + 112) = v3;
  v4 = v7[2];
  *a1 = v7[1];
  *(a1 + 16) = v4;
  result = *&v8;
  v6 = v9;
  *(a1 + 32) = v8;
  *(a1 + 48) = v6;
  return result;
}

uint64_t DRPDropletContainerView.transform3D.setter(__int128 *a1)
{
  v2 = a1[5];
  v19 = a1[4];
  v20 = v2;
  v3 = a1[7];
  v21 = a1[6];
  v22 = v3;
  v4 = a1[1];
  v15 = *a1;
  v16 = v4;
  v5 = a1[3];
  v17 = a1[2];
  v18 = v5;
  v23.super_class = DRPDropletContainerView;
  objc_msgSendSuper2(&v23, sel_setTransform3D_, &v15);
  v6 = OBJC_IVAR___DRPDropletContainerView_participantViews;
  swift_beginAccess();
  v7 = *&v1[v6];
  if (v7 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_249ED6E70())
  {

    if (!i)
    {
      break;
    }

    for (j = 0; ; ++j)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x24C205BD0](j, v7);
      }

      else
      {
        if (j >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v10 = *(v7 + 8 * j + 32);
      }

      v11 = v10;
      v12 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      [v1 transform3D];
      v14[4] = v19;
      v14[5] = v20;
      v14[6] = v21;
      v14[7] = v22;
      v14[0] = v15;
      v14[1] = v16;
      v14[2] = v17;
      v14[3] = v18;
      [v11 setTransform3D_];

      if (v12 == i)
      {
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }
}

uint64_t DRPDropletContainerView._setVelocity(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_249EB0208(a1, v22, &unk_27EF299E0, &qword_249ED8EB0);
  v7 = v23;
  if (!v23)
  {
    v12 = 0;
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_5:
    v13 = 0;
    goto LABEL_6;
  }

  v8 = __swift_project_boxed_opaque_existential_0(v22, v23);
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v8, v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v11);
  v12 = sub_249ED6EC0();
  (*(v9 + 8))(v11, v7);
  __swift_destroy_boxed_opaque_existential_0(v22);
  if (!a3)
  {
    goto LABEL_5;
  }

LABEL_3:
  v13 = sub_249ED6C60();
LABEL_6:
  v21.receiver = v3;
  v21.super_class = DRPDropletContainerView;
  objc_msgSendSuper2(&v21, sel__setVelocity_forKey_, v12, v13);
  swift_unknownObjectRelease();

  v14 = OBJC_IVAR___DRPDropletContainerView_participantViews;
  v15 = swift_beginAccess();
  v16 = *&v3[v14];
  MEMORY[0x28223BE20](v15, v17);
  v19[2] = a1;
  v19[3] = a2;
  v19[4] = a3;

  sub_249EB186C(sub_249EB3608, v19, v16);
}

void sub_249EB2EFC(void **a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *a1;
  sub_249EB0208(a2, v12, &unk_27EF299E0, &qword_249ED8EB0);
  v6 = v13;
  if (!v13)
  {
    v11 = 0;
    if (!a4)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7 = __swift_project_boxed_opaque_existential_0(v12, v13);
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v7, v7);
  v10 = v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v10);
  v11 = sub_249ED6EC0();
  (*(v8 + 8))(v10, v6);
  __swift_destroy_boxed_opaque_existential_0(v12);
  if (a4)
  {
LABEL_3:
    a4 = sub_249ED6C60();
  }

LABEL_4:
  [v5 _setVelocity_forKey_];
  swift_unknownObjectRelease();
}

Swift::Void __swiftcall DRPDropletContainerView._removeAllRetargetableAnimations(_:)(Swift::Bool a1)
{
  v10.super_class = DRPDropletContainerView;
  objc_msgSendSuper2(&v10, sel__removeAllRetargetableAnimations_, a1);
  v3 = OBJC_IVAR___DRPDropletContainerView_participantViews;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_249ED6E70())
  {

    if (!i)
    {
      break;
    }

    v6 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x24C205BD0](v6, v4);
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      [v7 _removeAllRetargetableAnimations_];

      ++v6;
      if (v9 == i)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_12:
}

Swift::Void __swiftcall DRPDropletContainerView.layoutSubviews()()
{
  v19.super_class = DRPDropletContainerView;
  objc_msgSendSuper2(&v19, sel_layoutSubviews);
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = OBJC_IVAR___DRPDropletContainerView_participantViews;
  swift_beginAccess();
  v10 = *&v0[v9];
  if (v10 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_249ED6E70())
  {

    if (!i)
    {
      break;
    }

    v12 = 0;
    while (1)
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x24C205BD0](v12, v10);
      }

      else
      {
        if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v13 = *(v10 + 8 * v12 + 32);
      }

      v14 = v13;
      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      [v13 setBounds_];
      [v0 center];
      [v14 setCenter_];
      [v0 transform];
      [v14 setTransform_];

      ++v12;
      if (v15 == i)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

LABEL_12:

  v16 = [v0 contentView];
  if (v16)
  {
    v17 = v16;
    UIRectGetCenter();
    [v17 setCenter_];
  }
}

void (*sub_249EB3580(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x24C205BD0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_249EB3600;
  }

  __break(1u);
  return result;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

unint64_t type metadata accessor for DRPDropletContainerView()
{
  result = qword_281252CE8;
  if (!qword_281252CE8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281252CE8);
  }

  return result;
}

uint64_t sub_249EB371C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void (*sub_249EB377C(void (*result)(id *), unint64_t a2, uint64_t a3))(id *)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x24C205BD0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_249EB37FC;
  }

  __break(1u);
  return result;
}

void sub_249EB383C(double a1)
{
  v9 = [v1 layer];
  objc_opt_self();
  v2 = swift_dynamicCastObjCClassUnconditional();
  sub_249EA1BF8(0, &unk_281252C80, 0x277CCABB0);
  v3 = sub_249ED6D70();
  v4 = [v2 locations];
  if (!v4)
  {
    goto LABEL_14;
  }

  v5 = v4;
  v6 = sub_249ED6CD0();

  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v6 & 0x8000000000000000) != 0 || (v6 & 0x4000000000000000) != 0)
  {
    v6 = sub_249ED603C(v6);
  }

  if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return;
  }

  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x20);
  *((v6 & 0xFFFFFFFFFFFFFF8) + 0x20) = v3;

  if (v6)
  {
    v8 = sub_249ED6CC0();
  }

  else
  {
    v8 = 0;
  }

  [v2 setLocations_];
}

void sub_249EB39A8(double a1)
{
  v9 = [v1 layer];
  objc_opt_self();
  v2 = swift_dynamicCastObjCClassUnconditional();
  sub_249EA1BF8(0, &unk_281252C80, 0x277CCABB0);
  v3 = sub_249ED6D70();
  v4 = [v2 locations];
  if (!v4)
  {
    goto LABEL_14;
  }

  v5 = v4;
  v6 = sub_249ED6CD0();

  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v6 & 0x8000000000000000) != 0 || (v6 & 0x4000000000000000) != 0)
  {
    v6 = sub_249ED603C(v6);
  }

  if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return;
  }

  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x28);
  *((v6 & 0xFFFFFFFFFFFFFF8) + 0x28) = v3;

  if (v6)
  {
    v8 = sub_249ED6CC0();
  }

  else
  {
    v8 = 0;
  }

  [v2 setLocations_];
}

char *sub_249EB3B18(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_249ED6E70();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v13 = MEMORY[0x277D84F90];
  result = sub_249EB3DC8(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        MEMORY[0x24C205BD0](i, a1);
        type metadata accessor for CGColor(0);
        swift_dynamicCast();
        v13 = v3;
        v7 = *(v3 + 16);
        v6 = *(v3 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_249EB3DC8((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v7 + 1;
        sub_249EA90F4(v12, (v3 + 32 * v7 + 32));
      }
    }

    else
    {
      v8 = (a1 + 32);
      type metadata accessor for CGColor(0);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = *(v3 + 16);
        v10 = *(v3 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_249EB3DC8((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v11 + 1;
        sub_249EA90F4(v12, (v3 + 32 * v11 + 32));
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

id sub_249EB3D70()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GradientView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_249EB3DC8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_249EB3DE8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_249EB3DE8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF292D8, &unk_249ED8FF0);
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

id sub_249EB3EF8(char a1, double a2, double a3, double a4, double a5, double a6, double a7)
{
  if (a1)
  {
    v11 = a7;
  }

  else
  {
    v11 = 0.0;
  }

  if (a1)
  {
    v12 = 0.0;
  }

  else
  {
    v12 = a7;
  }

  if (a1)
  {
    v13 = 0.0;
  }

  else
  {
    v13 = a6;
  }

  if (a1)
  {
    v14 = a6;
  }

  else
  {
    v14 = 0.0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF292E0, &qword_249ED9000);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_249ED8F10;
  v16 = objc_opt_self();
  v17 = [v16 whiteColor];
  v18 = [v17 CGColor];

  *(inited + 32) = v18;
  v19 = [v16 whiteColor];
  v20 = [v19 colorWithAlphaComponent_];

  v21 = [v20 CGColor];
  *(inited + 40) = v21;
  v22 = type metadata accessor for GradientView();
  v34.receiver = objc_allocWithZone(v22);
  v34.super_class = v22;
  v23 = objc_msgSendSuper2(&v34, sel_initWithFrame_, a2, a3, a4, a5);
  v24 = [v23 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setType_];

  v25 = [v23 layer];
  objc_opt_self();
  v26 = swift_dynamicCastObjCClassUnconditional();
  sub_249EB3B18(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  v27 = sub_249ED6CC0();

  [v26 setColors_];

  v28 = [v23 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setStartPoint_];

  v29 = [v23 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setEndPoint_];

  v30 = [v23 layer];
  objc_opt_self();
  v31 = swift_dynamicCastObjCClassUnconditional();
  sub_249ED6E10();
  sub_249EA1BF8(0, &unk_281252C80, 0x277CCABB0);
  sub_249ED6D70();
  sub_249ED6DF0();
  sub_249ED6E20();
  sub_249ED6E30();
  sub_249ED6E00();
  sub_249ED6D70();
  sub_249ED6DF0();
  sub_249ED6E20();
  sub_249ED6E30();
  sub_249ED6E00();
  v32 = sub_249ED6CC0();

  [v31 setLocations_];

  return v23;
}

void sub_249EB4360(void *a1)
{
  v2 = sub_249EB5820();
  v3 = *&v2[OBJC_IVAR____TtC9DropletUI17DropletEffectView_inputColor];
  *&v2[OBJC_IVAR____TtC9DropletUI17DropletEffectView_inputColor] = a1;
  v4 = a1;
  sub_249EB778C(v3);

  v5 = sub_249EB582C();
  v6 = *&v5[OBJC_IVAR____TtC9DropletUI17DropletEffectView_inputColor];
  *&v5[OBJC_IVAR____TtC9DropletUI17DropletEffectView_inputColor] = v4;
  v15 = v4;
  sub_249EB778C(v6);

  v7 = sub_249EB4680();
  v8 = v7;
  if (v7 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_249ED6E70())
  {
    v10 = 0;
    while (1)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x24C205BD0](v10, v8);
      }

      else
      {
        if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v11 = *(v8 + 8 * v10 + 32);
      }

      v12 = v11;
      v13 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      v14 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithCGColor_];
      [v12 setBackgroundColor_];

      ++v10;
      if (v13 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:
}

uint64_t sub_249EB4510()
{
  v0 = sub_249EB4680();
  v1 = v0;
  v10 = MEMORY[0x277D84F90];
  v2 = v0 & 0xFFFFFFFFFFFFFF8;
  if (!(v0 >> 62))
  {
    v3 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_20:
    v5 = MEMORY[0x277D84F90];
    goto LABEL_21;
  }

LABEL_19:
  v3 = sub_249ED6E70();
  if (!v3)
  {
    goto LABEL_20;
  }

LABEL_3:
  v4 = 0;
  v5 = MEMORY[0x277D84F90];
  do
  {
    v6 = v4;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x24C205BD0](v6, v1);
      }

      else
      {
        if (v6 >= *(v2 + 16))
        {
          goto LABEL_18;
        }

        v7 = *(v1 + 8 * v6 + 32);
      }

      v8 = v7;
      v4 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      type metadata accessor for DropletParticipantView();
      if (swift_dynamicCastClass())
      {
        break;
      }

      ++v6;
      if (v4 == v3)
      {
        goto LABEL_21;
      }
    }

    MEMORY[0x24C205AB0]();
    if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_249ED6CE0();
    }

    sub_249ED6CF0();
    v5 = v10;
  }

  while (v4 != v3);
LABEL_21:

  return v5;
}

uint64_t sub_249EB4680()
{
  v0 = sub_249EB5820();
  v1 = [v0 subviews];

  sub_249EA1BF8(0, &qword_281252CA0, 0x277D75D18);
  v2 = sub_249ED6CD0();

  v3 = sub_249EB59F4();
  v4 = [v3 subviews];

  v5 = sub_249ED6CD0();
  sub_249EB6F9C(v5);
  v6 = sub_249EB582C();
  v7 = [v6 subviews];

  v8 = sub_249ED6CD0();
  sub_249EB6F9C(v8);
  return v2;
}

void sub_249EB47A4(double a1)
{
  v2 = OBJC_IVAR____TtC9DropletUI30DropletParticipantTrackingView_dropletParticipantRadiusOfInfluence;
  v3 = *(v1 + OBJC_IVAR____TtC9DropletUI30DropletParticipantTrackingView_dropletParticipantRadiusOfInfluence);
  *(v1 + OBJC_IVAR____TtC9DropletUI30DropletParticipantTrackingView_dropletParticipantRadiusOfInfluence) = a1;
  if (v3 != a1)
  {
    v4 = v1;
    v29 = v2;
    v5 = sub_249EB4510();
    v27 = v5;
    if (v5 >> 62)
    {
      goto LABEL_22;
    }

    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    for (i = v29; v6; i = v29)
    {
      v8 = 0;
      v9 = v27 & 0xC000000000000001;
      v10 = MEMORY[0x277D85000];
      v28 = v4;
      v30 = v6;
      while (1)
      {
        if (v9)
        {
          v11 = MEMORY[0x24C205BD0](v8, v27);
        }

        else
        {
          if (v8 >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_21;
          }

          v11 = *(v27 + 32 + 8 * v8);
        }

        v12 = v11;
        if (__OFADD__(v8++, 1))
        {
          break;
        }

        v14 = *(v4 + i);
        v15 = OBJC_IVAR____TtC9DropletUI22DropletParticipantView_dropletParticipantRadiusOfInfluence;
        v16 = *&v11[OBJC_IVAR____TtC9DropletUI22DropletParticipantView_dropletParticipantRadiusOfInfluence];
        *&v11[OBJC_IVAR____TtC9DropletUI22DropletParticipantView_dropletParticipantRadiusOfInfluence] = v14;
        if (v14 == v16)
        {
        }

        else
        {
          v17 = OBJC_IVAR____TtC9DropletUI22DropletParticipantView_trackingViews;
          swift_beginAccess();
          v18 = *&v12[v17];
          v19 = *(v18 + 16);
          if (v19)
          {
            v20 = v18 + 32;

            do
            {
              sub_249EB7448(v20, v31);
              Strong = swift_unknownObjectWeakLoadStrong();
              if (Strong)
              {
                v22 = Strong;
                (*((*v10 & *Strong) + 0x68))(*&v12[v15]);
              }

              sub_249EB371C(v31, &qword_27EF296F0, &unk_249ED8F70);
              v20 += 8;
              --v19;
            }

            while (v19);

            v4 = v28;
            i = v29;
          }

          v9 = v27 & 0xC000000000000001;
          v6 = v30;
        }

        if (v8 == v6)
        {
          goto LABEL_23;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      v6 = sub_249ED6E70();
    }

LABEL_23:

    v23 = i;
    v24 = sub_249EB5820();
    sub_249EA0FD0(*(v4 + v23));

    v25 = sub_249EB59F4();
    sub_249EA0FD0(*(v4 + v23));

    v26 = sub_249EB582C();
    sub_249EA0FD0(*(v4 + v23));
  }
}

char *sub_249EB4A0C(void *a1, double a2, double a3, double a4, double a5, double a6)
{
  v7 = v6;
  swift_getObjectType();
  v14 = OBJC_IVAR____TtC9DropletUI16DropletGroupView_disableDropletEffectFilters;
  v15 = objc_opt_self();
  v16 = [v15 rootSettings];
  v17 = [v16 suppressDropletEffectFilters];

  v7[v14] = v17;
  v18 = &v7[OBJC_IVAR____TtC9DropletUI16DropletGroupView_mainKeylineStrokeWidth];
  *v18 = 0;
  v18[1] = 0;
  *&v7[OBJC_IVAR____TtC9DropletUI16DropletGroupView____lazy_storage___mainEffectView] = 0;
  *&v7[OBJC_IVAR____TtC9DropletUI16DropletGroupView____lazy_storage___shadowEffectView] = 0;
  *&v7[OBJC_IVAR____TtC9DropletUI16DropletGroupView____lazy_storage___blurredKeylineEffectView] = 0;
  *&v7[OBJC_IVAR____TtC9DropletUI16DropletGroupView____lazy_storage___keylineEffectView] = 0;
  v19 = OBJC_IVAR____TtC9DropletUI16DropletGroupView_participantKeylineTypes;
  *&v7[v19] = sub_249EB0054(MEMORY[0x277D84F90]);
  v20 = &v7[OBJC_IVAR____TtC9DropletUI30DropletParticipantTrackingView_lastParticipantGeometry];
  sub_249EB72C0(v45);
  v21 = v45[11];
  *(v20 + 10) = v45[10];
  *(v20 + 11) = v21;
  *(v20 + 12) = v45[12];
  *(v20 + 26) = v46;
  v22 = v45[7];
  *(v20 + 6) = v45[6];
  *(v20 + 7) = v22;
  v23 = v45[9];
  *(v20 + 8) = v45[8];
  *(v20 + 9) = v23;
  v24 = v45[3];
  *(v20 + 2) = v45[2];
  *(v20 + 3) = v24;
  v25 = v45[5];
  *(v20 + 4) = v45[4];
  *(v20 + 5) = v25;
  v26 = v45[1];
  *v20 = v45[0];
  *(v20 + 1) = v26;
  *&v7[OBJC_IVAR____TtC9DropletUI30DropletParticipantTrackingView_dropletParticipantRadiusOfInfluence] = a6;
  v44.receiver = v7;
  v44.super_class = type metadata accessor for DropletParticipantTrackingView();
  v27 = objc_msgSendSuper2(&v44, sel_initWithFrame_, a2, a3, a4, a5);
  v28 = [v15 rootSettings];
  [v28 addKeyObserver_];

  v29 = sub_249EB582C();
  [a1 addSubview_];

  v30 = sub_249EB5940();
  v31 = sub_249EB59F4();
  [v30 addSubview_];

  v32 = *&v27[OBJC_IVAR____TtC9DropletUI16DropletGroupView____lazy_storage___blurredKeylineEffectView];
  v33 = v27;
  [v33 addSubview_];
  v34 = sub_249EB5820();
  [v33 addSubview_];

  v35 = [v33 traitCollection];
  [v35 displayScale];
  v37 = v36;

  v38 = [v33 layer];
  [v38 setRasterizationScale_];

  v39 = [*&v33[OBJC_IVAR____TtC9DropletUI16DropletGroupView____lazy_storage___shadowEffectView] layer];
  [v39 setRasterizationScale_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF296E0, "\bT");
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_249ED8C90;
  v41 = sub_249ED6C30();
  v42 = MEMORY[0x277D74B68];
  *(v40 + 32) = v41;
  *(v40 + 40) = v42;
  sub_249ED6D60();
  swift_unknownObjectRelease();

  sub_249EB5B0C();
  sub_249EB6040();
  sub_249EB6188();

  return v33;
}

void sub_249EB4DE8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC9DropletUI16DropletGroupView_participantKeylineTypes;
  v7 = *(v2 + OBJC_IVAR____TtC9DropletUI16DropletGroupView_participantKeylineTypes);
  sub_249EB0270(a2, v11);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11[0] = v7;
  sub_249EAF164(a2, a1, isUniquelyReferenced_nonNull_native);
  v9 = *(v3 + v6);
  *(v3 + v6) = v11[0];

  LOBYTE(a1) = sub_249EB6508(v10, v9);

  if ((a1 & 1) == 0)
  {
    sub_249EB5B0C();
    sub_249EB6040();
  }
}

void sub_249EB4EA4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9DropletUI16DropletGroupView_participantKeylineTypes;
  v6 = *(v1 + OBJC_IVAR____TtC9DropletUI16DropletGroupView_participantKeylineTypes);

  sub_249EB6904(a1, v7);
  sub_249EB371C(v7, &qword_27EF296E8, &unk_249ED8F60);
  v4 = *(v1 + v3);
  *(v1 + v3) = v6;

  LOBYTE(v3) = sub_249EB6508(v5, v4);

  if ((v3 & 1) == 0)
  {
    sub_249EB5B0C();
    sub_249EB6040();
  }
}

void sub_249EB4FD8()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for DropletGroupView();
  objc_msgSendSuper2(&v4, sel_layoutSubviews);
  v1 = sub_249EB5940();
  [v0 bounds];
  [v1 setFrame_];

  v2 = sub_249EB59F4();
  [v0 bounds];
  [v2 setFrame_];

  v3 = sub_249EB5820();
  [v0 bounds];
  [v3 setFrame_];
}

char *sub_249EB50D8(void *a1, uint64_t a2, char a3)
{
  v5 = OBJC_IVAR____TtC9DropletUI30DropletParticipantTrackingView_dropletParticipantRadiusOfInfluence;
  v6 = *(v3 + OBJC_IVAR____TtC9DropletUI30DropletParticipantTrackingView_dropletParticipantRadiusOfInfluence);
  v7 = type metadata accessor for DropletParticipantView();
  v8 = objc_allocWithZone(v7);
  swift_unknownObjectWeakInit();
  v8[OBJC_IVAR____TtC9DropletUI22DropletParticipantView_isIntelligentLightViewHidden] = 1;
  *&v8[OBJC_IVAR____TtC9DropletUI22DropletParticipantView_boundaryEdges] = 0;
  v9 = &v8[OBJC_IVAR____TtC9DropletUI22DropletParticipantView_boundaryOutsets];
  v10 = *MEMORY[0x277D768C8];
  v11 = *(MEMORY[0x277D768C8] + 8);
  v12 = *(MEMORY[0x277D768C8] + 16);
  v13 = *(MEMORY[0x277D768C8] + 24);
  *v9 = *MEMORY[0x277D768C8];
  v9[1] = v11;
  v9[2] = v12;
  v9[3] = v13;
  v14 = &v8[OBJC_IVAR____TtC9DropletUI22DropletParticipantView_keylineFadeLengths];
  *v14 = v10;
  v14[1] = v11;
  v14[2] = v12;
  v14[3] = v13;
  v15 = &v8[OBJC_IVAR____TtC9DropletUI22DropletParticipantView_keylineOutsets];
  *v15 = v10;
  v15[1] = v11;
  v15[2] = v12;
  v15[3] = v13;
  v16 = &v8[OBJC_IVAR____TtC9DropletUI22DropletParticipantView_keylineType];
  *v16 = 0;
  v16[80] = 1;
  *&v8[OBJC_IVAR____TtC9DropletUI22DropletParticipantView_keylineEDRGain] = 0;
  *&v8[OBJC_IVAR____TtC9DropletUI22DropletParticipantView_normalizedStartLocation] = 0;
  *&v8[OBJC_IVAR____TtC9DropletUI22DropletParticipantView_normalizedStopLocation] = 0x3FF0000000000000;
  *&v8[OBJC_IVAR____TtC9DropletUI22DropletParticipantView_trackingViews] = MEMORY[0x277D84F90];
  *&v8[OBJC_IVAR____TtC9DropletUI22DropletParticipantView_dropletParticipantRadiusOfInfluence] = v6;
  v75.receiver = v8;
  v75.super_class = v7;
  v17 = objc_msgSendSuper2(&v75, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v18 = *(v3 + v5);
  v19 = OBJC_IVAR____TtC9DropletUI22DropletParticipantView_dropletParticipantRadiusOfInfluence;
  v20 = *&v17[OBJC_IVAR____TtC9DropletUI22DropletParticipantView_dropletParticipantRadiusOfInfluence];
  *&v17[OBJC_IVAR____TtC9DropletUI22DropletParticipantView_dropletParticipantRadiusOfInfluence] = v18;
  if (v18 != v20)
  {
    v21 = OBJC_IVAR____TtC9DropletUI22DropletParticipantView_trackingViews;
    swift_beginAccess();
    v22 = *&v17[v21];
    v23 = *(v22 + 16);
    if (v23)
    {
      v24 = v22 + 32;

      v25 = MEMORY[0x277D85000];
      do
      {
        sub_249EB7448(v24, v76);
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v27 = Strong;
          (*((*v25 & *Strong) + 0x68))(*&v17[v19]);
        }

        sub_249EB371C(v76, &qword_27EF296F0, &unk_249ED8F70);
        v24 += 8;
        --v23;
      }

      while (v23);
    }
  }

  v28 = type metadata accessor for DropletBoundaryView();
  v29 = objc_allocWithZone(v28);
  v30 = v17;
  v31 = sub_249ED6760(v30, 1);
  v32 = objc_allocWithZone(v28);
  v33 = v30;
  v34 = sub_249ED6760(v33, 2);
  v35 = objc_allocWithZone(v28);
  v36 = v33;
  v37 = sub_249ED6760(v36, 4);
  v38 = objc_allocWithZone(v28);
  v70 = v36;
  v39 = sub_249ED6760(v70, 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF292E0, &qword_249ED9000);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_249ED8F30;
  *(inited + 32) = v31;
  *(inited + 40) = v34;
  *(inited + 48) = v37;
  *(inited + 56) = v39;
  v69 = v31;
  v68 = v34;
  v67 = v37;
  v66 = v39;
  v41 = 0;
  do
  {
    if ((inited & 0xC000000000000001) != 0)
    {
      v45 = MEMORY[0x24C205BD0](v41, inited);
    }

    else
    {
      v45 = *(inited + 8 * v41 + 32);
    }

    v46 = v45;
    [a1 bounds];
    v79 = *&v46[OBJC_IVAR____TtC9DropletUI19DropletBoundaryView_boundaryReferenceBounds];
    *&v46[OBJC_IVAR____TtC9DropletUI19DropletBoundaryView_boundaryReferenceBounds] = v78;
    if (!CGRectEqualToRect(v78, v79))
    {
      memmove(__dst, &v46[OBJC_IVAR____TtC9DropletUI30DropletParticipantTrackingView_lastParticipantGeometry], 0xD8uLL);
      if (!sub_249EB74B8(__dst))
      {
        v76[10] = __dst[10];
        v76[11] = __dst[11];
        v76[12] = __dst[12];
        v77 = v74;
        v76[6] = __dst[6];
        v76[7] = __dst[7];
        v76[8] = __dst[8];
        v76[9] = __dst[9];
        v76[2] = __dst[2];
        v76[3] = __dst[3];
        v76[4] = __dst[4];
        v76[5] = __dst[5];
        v76[0] = __dst[0];
        v76[1] = __dst[1];
        sub_249ED6410(v76);
      }
    }

    ++v41;
    v42 = sub_249EB5820();
    v43 = *&v42[OBJC_IVAR____TtC9DropletUI17DropletEffectView_inputColor];

    v44 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithCGColor_];
    [v46 setBackgroundColor_];

    [a1 addSubview_];
  }

  while (v41 != 4);
  swift_setDeallocating();
  swift_arrayDestroy();
  v47 = sub_249EB5820();
  v48 = *&v47[OBJC_IVAR____TtC9DropletUI17DropletEffectView_inputColor];

  v49 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithCGColor_];
  [v70 setBackgroundColor_];

  [a1 addSubview_];
  if ((a3 & 1) == 0)
  {
    v50 = OBJC_IVAR____TtC9DropletUI22DropletParticipantView_boundaryEdges;
    v51 = *&v70[OBJC_IVAR____TtC9DropletUI22DropletParticipantView_boundaryEdges];
    *&v70[OBJC_IVAR____TtC9DropletUI22DropletParticipantView_boundaryEdges] = a2;
    if (v51 != a2)
    {
      v52 = OBJC_IVAR____TtC9DropletUI22DropletParticipantView_trackingViews;
      swift_beginAccess();
      v53 = *&v70[v52];
      v54 = *(v53 + 16);
      if (v54)
      {
        v55 = v53 + 32;

        v56 = MEMORY[0x277D85000];
        do
        {
          sub_249EB7448(v55, __dst);
          v57 = swift_unknownObjectWeakLoadStrong();
          if (v57)
          {
            v58 = v57;
            (*((*v56 & *v57) + 0xC8))(v70, *&v70[v50]);
          }

          sub_249EB371C(__dst, &qword_27EF296F0, &unk_249ED8F70);
          v55 += 8;
          --v54;
        }

        while (v54);
      }
    }
  }

  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v59 = OBJC_IVAR____TtC9DropletUI22DropletParticipantView_trackingViews;
  swift_beginAccess();
  v60 = *&v70[v59];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v70[v59] = v60;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v60 = sub_249ED5EBC(0, v60[2] + 1, 1, v60);
    *&v70[v59] = v60;
  }

  v63 = v60[2];
  v62 = v60[3];
  if (v63 >= v62 >> 1)
  {
    v60 = sub_249ED5EBC((v62 > 1), v63 + 1, 1, v60);
  }

  v60[2] = v63 + 1;
  sub_249EB74C8(v72, &v60[v63 + 4]);
  *&v70[v59] = v60;
  swift_endAccess();

  return v70;
}

char *sub_249EB5838(uint64_t *a1)
{
  v2 = *a1;
  v3 = *&v1[*a1];
  if (v3)
  {
    v4 = *&v1[*a1];
  }

  else
  {
    [v1 bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v13 = [objc_opt_self() blackColor];
    v14 = [v13 CGColor];

    v15 = objc_allocWithZone(type metadata accessor for DropletEffectView());
    v16 = v1;
    v17 = sub_249EB7B34(0x3FE0000000000000, 0, 0, 0, v14, v6, v8, v10, v12);
    v18 = *&v1[v2];
    *&v16[v2] = v17;
    v4 = v17;

    v3 = 0;
  }

  v19 = v3;
  return v4;
}

id sub_249EB5940()
{
  v1 = OBJC_IVAR____TtC9DropletUI16DropletGroupView____lazy_storage___blurredKeylineEffectView;
  v2 = *&v0[OBJC_IVAR____TtC9DropletUI16DropletGroupView____lazy_storage___blurredKeylineEffectView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC9DropletUI16DropletGroupView____lazy_storage___blurredKeylineEffectView];
  }

  else
  {
    [v0 bounds];
    v8 = [objc_allocWithZone(type metadata accessor for BlurredView()) initWithFrame_];
    v9 = *&v0[v1];
    *&v0[v1] = v8;
    v3 = v8;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

char *sub_249EB59F4()
{
  v1 = OBJC_IVAR____TtC9DropletUI16DropletGroupView____lazy_storage___keylineEffectView;
  v2 = *&v0[OBJC_IVAR____TtC9DropletUI16DropletGroupView____lazy_storage___keylineEffectView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC9DropletUI16DropletGroupView____lazy_storage___keylineEffectView];
  }

  else
  {
    if (qword_281252E80 != -1)
    {
      swift_once();
    }

    v4 = qword_281253438;
    [v0 bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v13 = objc_allocWithZone(type metadata accessor for DropletEffectView());
    v14 = v4;
    v15 = v0;
    v16 = sub_249EB7B34(0x3FE0000000000000, 0x3FE0000000000000, 0x3FDF5C28F5C28F5CLL, 1, v14, v6, v8, v10, v12);
    v17 = *&v0[v1];
    *&v15[v1] = v16;
    v3 = v16;

    v2 = 0;
  }

  v18 = v2;
  return v3;
}

void sub_249EB5B0C()
{
  v1 = v0;
  v50 = *MEMORY[0x277D85DE8];
  v2 = *&v0[OBJC_IVAR____TtC9DropletUI16DropletGroupView_participantKeylineTypes];
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v7 = 0;
  while (v5)
  {
    v8 = v7;
LABEL_11:
    v9 = *(v2 + 56) + 88 * (__clz(__rbit64(v5)) | (v8 << 6));
    v10 = *(v9 + 16);
    v44 = *v9;
    v45 = v10;
    v12 = *(v9 + 48);
    v11 = *(v9 + 64);
    v13 = *(v9 + 32);
    v49 = *(v9 + 80);
    v47 = v12;
    v48 = v11;
    v46 = v13;
    if (v49 != 1)
    {
LABEL_16:

      v21 = 1;
      goto LABEL_18;
    }

    v5 &= v5 - 1;
    v14 = v44;
    if (!v44 || (v15 = objc_opt_self(), v16 = v44, (v17 = [v15 clearColor]) != 0) && (v18 = v17, sub_249EA1BF8(0, &qword_27EF29570, 0x277D75348), v19 = v44, v20 = sub_249ED6D80(), sub_249EB73F4(&v44), v18, (v20 & 1) != 0))
    {
      sub_249EB73F4(&v44);
    }

    else
    {
      *&v42 = 0;
      [v14 getRed:0 green:0 blue:0 alpha:&v42];
      sub_249EB73F4(&v44);
      if (*&v42 != 0.0)
      {
        goto LABEL_16;
      }
    }

    v7 = v8;
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
    }

    if (v8 >= v6)
    {
      break;
    }

    v5 = *(v2 + 64 + 8 * v8);
    ++v7;
    if (v5)
    {
      goto LABEL_11;
    }
  }

  v21 = 0;
LABEL_18:
  v22 = [objc_opt_self() rootSettings];
  v23 = [v22 suppressCompositingFilterMultiply];

  if ((v23 & 1) == 0 && ((v21 & 1) != 0 || *&v1[OBJC_IVAR____TtC9DropletUI16DropletGroupView_mainKeylineStrokeWidth] != 0.0 || *&v1[OBJC_IVAR____TtC9DropletUI16DropletGroupView_mainKeylineStrokeWidth + 8] != 0.0))
  {
    v29 = sub_249EB582C();
    v30 = [v29 isHidden];

    if (v30)
    {
      [*&v1[OBJC_IVAR____TtC9DropletUI16DropletGroupView____lazy_storage___shadowEffectView] setHidden_];
    }

    v31 = *MEMORY[0x277CDA5A0];
    v32 = sub_249ED6C70();
    v34 = v33;
    v35 = v31;
    v36 = [v1 layer];
    v37 = [v36 compositingFilter];

    if (v37)
    {
      sub_249ED6D90();
      swift_unknownObjectRelease();
    }

    else
    {
      v42 = 0u;
      v43 = 0u;
    }

    v44 = v42;
    v45 = v43;
    if (*(&v43 + 1))
    {
      if (swift_dynamicCast())
      {
        if (v40 == v32 && v41 == v34)
        {

          return;
        }

        v39 = sub_249ED6ED0();

        if (v39)
        {
          goto LABEL_41;
        }

        goto LABEL_40;
      }
    }

    else
    {
      sub_249EB371C(&v44, &unk_27EF299E0, &qword_249ED8EB0);
    }

LABEL_40:
    v38 = [v1 layer];
    [v38 setCompositingFilter_];

LABEL_41:
    return;
  }

  v24 = sub_249EB582C();
  v25 = [v24 isHidden];

  if ((v25 & 1) == 0)
  {
    [*&v1[OBJC_IVAR____TtC9DropletUI16DropletGroupView____lazy_storage___shadowEffectView] setHidden_];
  }

  v26 = [v1 layer];
  v27 = [v26 compositingFilter];

  if (v27)
  {
    sub_249ED6D90();
    swift_unknownObjectRelease();
    sub_249EB371C(&v44, &unk_27EF299E0, &qword_249ED8EB0);
    v28 = [v1 layer];
    [v28 setCompositingFilter_];
  }

  else
  {
    v44 = 0u;
    v45 = 0u;
    sub_249EB371C(&v44, &unk_27EF299E0, &qword_249ED8EB0);
  }
}