uint64_t storeEnumTagSinglePayload for FindingModel(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for FMFindingDistance.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FMFindingDistance.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24A51CE30()
{
  result = qword_27EF4F760;
  if (!qword_27EF4F760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF4F760);
  }

  return result;
}

unint64_t sub_24A51CE88()
{
  result = qword_27EF4F768;
  if (!qword_27EF4F768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF4F768);
  }

  return result;
}

unint64_t sub_24A51CEE0()
{
  result = qword_27EF4F770;
  if (!qword_27EF4F770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF4F770);
  }

  return result;
}

unint64_t sub_24A51CF38()
{
  result = qword_27EF4F778;
  if (!qword_27EF4F778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF4F778);
  }

  return result;
}

unint64_t sub_24A51CF90()
{
  result = qword_27EF4F780;
  if (!qword_27EF4F780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF4F780);
  }

  return result;
}

unint64_t sub_24A51CFE8()
{
  result = qword_27EF4F788;
  if (!qword_27EF4F788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF4F788);
  }

  return result;
}

unint64_t sub_24A51D040()
{
  result = qword_27EF4F790;
  if (!qword_27EF4F790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF4F790);
  }

  return result;
}

unint64_t sub_24A51D098()
{
  result = qword_27EF4F798;
  if (!qword_27EF4F798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF4F798);
  }

  return result;
}

unint64_t sub_24A51D0F0()
{
  result = qword_27EF4F7A0;
  if (!qword_27EF4F7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF4F7A0);
  }

  return result;
}

unint64_t sub_24A51D148()
{
  result = qword_27EF4F7A8;
  if (!qword_27EF4F7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF4F7A8);
  }

  return result;
}

uint64_t sub_24A51D1DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 48) = a6;
  *(v7 + 56) = a7;
  *(v7 + 64) = a5;
  *(v7 + 40) = a4;
  return MEMORY[0x2822009F8](sub_24A51D204, a4, 0);
}

uint64_t sub_24A51D204()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);
  v4 = *(v0 + 64);
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = v1;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v3 + 112);
  *(v3 + 112) = 0x8000000000000000;
  sub_24A557780(sub_24A517E48, v5, v4, isUniquelyReferenced_nonNull_native);
  *(v3 + 112) = v9;
  swift_endAccess();
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_24A51D300()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t getEnumTagSinglePayload for FMFindingType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FMFindingType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24A51D4B0()
{
  result = qword_27EF4F7B0;
  if (!qword_27EF4F7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF4F7B0);
  }

  return result;
}

uint64_t sub_24A51D510()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unint64_t sub_24A51D55C()
{
  result = qword_27EF4F7B8;
  if (!qword_27EF4F7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF4F7B8);
  }

  return result;
}

void sub_24A51D5B0()
{
  v1 = [v0 navigationBar];
  [v1 setTranslucent_];

  v2 = [v0 navigationBar];
  v3 = [objc_allocWithZone(MEMORY[0x277D755B8]) init];
  [v2 setBackgroundImage:v3 forBarMetrics:0];

  v4 = [v0 navigationBar];
  v5 = [objc_opt_self() clearColor];
  [v4 setBackgroundColor_];

  v6 = [v0 navigationBar];
  v7 = [objc_allocWithZone(MEMORY[0x277D755B8]) init];
  [v6 setShadowImage_];
}

char *sub_24A51D718(unsigned __int8 *a1, unsigned __int16 *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, char a7, uint64_t a8, double a9, char a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, char a17)
{
  v18 = v17;
  v20 = *a1;
  v21 = *a2;
  v22 = OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_gimbalNode;
  v23 = type metadata accessor for FMPFSKNode();
  *&v18[v22] = [objc_allocWithZone(v23) init];
  v24 = OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_diskNode;
  *&v18[v24] = [objc_allocWithZone(v23) init];
  v25 = OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_dotNode;
  *&v18[v25] = [objc_allocWithZone(v23) init];
  v26 = OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_dotCGPathNode;
  type metadata accessor for FMPFSKSpriteNode();
  v108 = v26;
  *&v18[v26] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v18[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_interativeRadiusBeaconNode] = 0;
  v18[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_isPlayingInitialPulse] = 0;
  v18[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_hasPlayedInitialPulse] = 0;
  *&v18[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_perimeterRotateOnceAction] = 0;
  v18[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_shouldApplyDiskRadius] = 1;
  v27 = &v18[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_diskRadius];
  *v27 = 0;
  v27[8] = 1;
  v28 = &v18[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_presentedDiskRadius];
  *v28 = 0;
  v28[8] = 1;
  v18[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_shouldApplyDotScale] = 1;
  v29 = &v18[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_dotScale];
  *v29 = 0;
  v29[8] = 1;
  v30 = &v18[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_presentedDotScale];
  *v30 = 0;
  v30[8] = 1;
  v18[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_shouldApplyAngle] = 1;
  v31 = &v18[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_angle];
  *v31 = 0;
  v31[8] = 1;
  v32 = &v18[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_presentedAngle];
  *v32 = 0;
  v32[8] = 1;
  v18[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_shouldApplyOpacity] = 1;
  v33 = &v18[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_opacity];
  *v33 = 0;
  v33[8] = 1;
  v34 = &v18[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_presentedOpacity];
  *v34 = 0;
  v34[8] = 1;
  v18[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_shouldApplyBrightness] = 1;
  v35 = &v18[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_brightness];
  *v35 = 0;
  v35[8] = 1;
  v36 = &v18[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_presentedBrightness];
  *v36 = 0;
  v36[8] = 1;
  v18[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_shouldApplyOffset] = 1;
  v37 = &v18[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_offset];
  *v37 = 0;
  *(v37 + 1) = 0;
  v37[16] = 1;
  v38 = &v18[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_presentedOffset];
  *v38 = 0;
  *(v38 + 1) = 0;
  v38[16] = 1;
  *&v18[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_presentedAbsoluteHeading] = 0;
  v39 = &v18[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_interactiveAngleFactor];
  *v39 = 0;
  v39[8] = 1;
  v18[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_shouldApplyRadiusFactor] = 1;
  v40 = &v18[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_radiusFactor];
  *v40 = 0;
  v40[8] = 1;
  v41 = &v18[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_presentedRadiusFactor];
  *v41 = 0;
  v41[8] = 1;
  v18[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_experienceType] = v20;
  v104 = v21;
  *&v18[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_findingType] = v21;
  if (v20 == 1)
  {
    if (qword_27EF4E9B8 != -1)
    {
      swift_once();
    }

    v42 = &xmmword_27EF50328;
  }

  else
  {
    if (qword_27EF4E9B0 != -1)
    {
      swift_once();
    }

    v42 = &xmmword_27EF502D0;
  }

  v43 = v42[3];
  v118 = v42[2];
  v119 = v43;
  v120 = v42[4];
  v121 = *(v42 + 10);
  v44 = v42[1];
  v116 = *v42;
  v117 = v44;
  v45 = &v18[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_style];
  v46 = v119;
  *(v45 + 2) = v118;
  *(v45 + 3) = v46;
  *(v45 + 4) = v120;
  *(v45 + 10) = v121;
  v47 = v117;
  *v45 = v116;
  *(v45 + 1) = v47;
  *&v18[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_dotDiameter] = a9;
  v48 = objc_opt_self();
  sub_24A51FFE0(&v116, v115);

  v49 = sub_24A62EBE4();
  v50 = MGGetSInt32Answer();

  *&v18[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_pixelsPerInch] = v50;
  v51 = a5;
  if (a5)
  {
    v52 = a5;
  }

  else
  {
    v52 = [objc_opt_self() whiteColor];
    v51 = 0;
  }

  *&v18[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_renderingColor] = v52;
  v111 = v51;
  v113 = sub_24A5F1D08(0xD000000000000016, 0x800000024A63E380);
  [v113 size];
  *&v18[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_subScale] = 1.0 / (v53 / a9);
  v115[0] = v104;
  v54 = objc_allocWithZone(type metadata accessor for FMPFSKBTRangingNode());
  *&v18[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_btRangingNode] = sub_24A595034(v115);
  *v27 = a6;
  v27[8] = a7 & 1;
  *v29 = a8;
  v29[8] = a10 & 1;
  *v31 = a11;
  v31[8] = a12 & 1;
  *v33 = a13;
  v33[8] = a14 & 1;
  *v35 = *(v45 + 3);
  v35[8] = 0;
  *v37 = a15;
  *(v37 + 1) = a16;
  v37[16] = a17 & 1;
  *&v18[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_diskRadiusSpring] = sub_24A5B1B3C(a6, a7 & 1, 0x3FE0000000000000, 0, 0, 1);
  *&v18[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_dotScaleSpring] = sub_24A5B1B3C(*v29, v29[8], 0x3F847AE147AE147BLL, 0, 0, 1);
  *&v18[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_angleSpring] = sub_24A5B1B3C(*v31, v31[8], 0x3FA015BF9217271ALL, 0, 0, 1);
  *&v18[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_opacitySpring] = sub_24A5B1B3C(*v33, v33[8], 0x3F847AE147AE147BLL, 0, 0, 1);
  v55 = sub_24A5B1B2C(*v35, v35[8], 0x3F847AE147AE147BLL, 0);
  v56 = 0;
  *&v18[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_brightnessSpring] = v55;
  if ((v37[16] & 1) == 0)
  {
    v56 = *v37;
  }

  v57 = sub_24A5B1B3C(v56, v37[16], 0x3FE0000000000000, 0, 0, 1);
  v58 = 0;
  *&v18[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_xOffsetSpring] = v57;
  if ((v37[16] & 1) == 0)
  {
    v58 = *(v37 + 1);
  }

  *&v18[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_yOffsetSpring] = sub_24A5B1B3C(v58, v37[16], 0x3FE0000000000000, 0, 0, 1);
  *&v18[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_headingSpring] = sub_24A5B1D38(0, 0, 0, 1, 0x3FE0000000000000, 0);
  *&v18[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_radiusFactorSpring] = sub_24A5B1B3C(0, 0, 0x3F847AE147AE147BLL, 0, 0, 1);
  [*&v18[v108] setTexture_];
  v59 = *&v18[v108];
  [v113 size];
  [v59 setSize_];

  [*&v18[v108] setColorBlendFactor_];
  v114.receiver = v18;
  v114.super_class = type metadata accessor for FMPFSKPeripheralDotNode();
  v60 = objc_msgSendSuper2(&v114, sel_init);
  v61 = v60;
  if (a4)
  {
    v62 = sub_24A62EBE4();
  }

  else
  {
    v62 = 0;
  }

  [v60 setName_];

  v63 = OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_gimbalNode;
  [v60 addChild_];
  v64 = OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_diskNode;
  [*&v60[v63] addChild_];
  v65 = OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_dotNode;
  [*&v60[v64] addChild_];
  v66 = OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_dotCGPathNode;
  [*&v60[v65] addChild_];
  v67 = OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_btRangingNode;
  [v60 addChild_];
  v110 = v67;
  v68 = *&v60[v67];
  sub_24A508FA4(&qword_27EF50790, &qword_24A6338D0);
  v69 = swift_allocObject();
  *(v69 + 16) = xmmword_24A6339F0;
  v70 = objc_opt_self();
  v71 = objc_opt_self();
  v72 = v68;
  v73 = [v71 rangeWithConstantValue_];
  v74 = [v70 distance:v73 toNode:*&v60[v65]];

  *(v69 + 32) = v74;
  sub_24A50D7EC(0, &qword_27EF4F940, 0x277CDCF38);
  v75 = sub_24A62ED54();

  [v72 setConstraints_];

  v76 = *&v60[v63];
  v77 = sub_24A62EBE4();
  [v76 setName_];

  v78 = *&v60[v65];
  v79 = sub_24A62EBE4();
  [v78 setName_];

  v80 = *&v60[v66];
  v81 = sub_24A62EBE4();
  [v80 setName_];

  if ((v60[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_diskRadius + 8] & 1) == 0)
  {
    v82 = *&v60[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_diskRadius];
    v83 = &v60[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_presentedDiskRadius];
    *v83 = v82;
    v83[8] = 0;
    [*&v60[v64] setPosition_];
  }

  if ((v60[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_dotScale + 8] & 1) == 0)
  {
    v84 = *&v60[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_dotScale];
    v85 = &v60[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_presentedDotScale];
    *v85 = v84;
    v85[8] = 0;
    [*&v60[v65] setScale_];
  }

  if ((v60[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_angle + 8] & 1) == 0)
  {
    v86 = *&v60[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_angle];
    v87 = &v60[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_presentedAngle];
    *v87 = v86;
    v87[8] = 0;
    if (!*&v60[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_perimeterRotateOnceAction])
    {
      [*&v60[v63] setZRotation_];
    }
  }

  if ((v60[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_opacity + 8] & 1) == 0)
  {
    v88 = *&v60[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_opacity];
    v89 = &v60[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_presentedOpacity];
    *v89 = v88;
    v90 = v88;
    v89[8] = 0;
    [*&v60[v65] setAlpha_];
    [*&v60[v110] setAlpha_];
  }

  if ((v60[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_brightness + 8] & 1) == 0)
  {
    v91 = *&v60[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_brightness];
    v92 = &v60[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_presentedBrightness];
    *v92 = v91;
    v93 = v91;
    v92[8] = 0;
    v94 = *&v60[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_renderingColor];
    v95 = *&v60[v66];
    v96 = v94;
    sub_24A60CFCC(v96, v93);
  }

  v97 = v113;
  if (v60[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_offset + 16])
  {
    v98 = v60;
    v99 = v111;
  }

  else
  {
    v100 = *&v60[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_offset + 8];
    v101 = *&v60[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_offset];
    v102 = &v60[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_presentedOffset];
    *v102 = v101;
    *(v102 + 1) = v100;
    v102[16] = 0;
    [v60 setPosition_];
    v98 = v111;
    v99 = v113;
    v97 = v60;
  }

  return v60;
}

uint64_t sub_24A51E3CC()
{
  v1 = 0xE000000000000000;
  sub_24A62F384();

  v2 = sub_24A62F784();
  v4 = sub_24A516B88(6, v2, v3);
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = MEMORY[0x24C21A580](v4, v6, v8, v10);
  v13 = v12;

  MEMORY[0x24C21A5D0](v11, v13);

  MEMORY[0x24C21A5D0](30768, 0xE200000000000000);

  MEMORY[0x24C21A5D0](32, 0xE100000000000000);
  v14 = [v0 name];
  if (v14)
  {
    v15 = v14;
    v16 = sub_24A62EC14();
    v1 = v17;
  }

  else
  {
    v16 = 0;
  }

  MEMORY[0x24C21A5D0](v16, v1);

  MEMORY[0x24C21A5D0](62, 0xE100000000000000);
  v18 = sub_24A62EC24();

  return v18;
}

id sub_24A51E58C()
{
  type metadata accessor for FMPFSKSpriteNode();
  v1 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v2 = sub_24A5F1D08(0xD000000000000016, 0x800000024A63E380);
  v3 = v1;
  [v3 setTexture_];
  [v2 size];
  [v3 setSize_];
  v4 = v0 + OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_style;
  [v3 setColor_];
  [v3 setColorBlendFactor_];

  v5 = *(v4 + 40);
  v6 = v3;
  [v6 setAlpha_];
  [v6 setScale_];
  v7 = sub_24A62EBE4();
  [v6 setName_];

  return v6;
}

void sub_24A51E6D4(void *a1, char *a2, double a3)
{
  [a1 setSpeed_];
  if ((a2[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_presentedBrightness + 8] & 1) == 0)
  {
    v5 = *&a2[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_presentedBrightness];
    if (!UIAccessibilityIsReduceMotionEnabled())
    {
      v6 = *&a2[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_gimbalNode];
      v7 = swift_allocObject();
      v7[2] = a1;
      v7[3] = v5;
      v7[4] = a2;
      v12[4] = sub_24A52062C;
      v12[5] = v7;
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 1107296256;
      v12[2] = sub_24A5A8458;
      v12[3] = &unk_285DA1208;
      v8 = _Block_copy(v12);
      v9 = v6;
      v10 = a1;
      v11 = a2;

      [v9 runAction:v10 completion:v8];
      _Block_release(v8);
    }
  }
}

void sub_24A51E82C(void *a1)
{
  v2 = OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_renderingColor;
  v3 = *(v1 + OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_renderingColor);
  *(v1 + OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_renderingColor) = a1;
  v10 = a1;

  v4 = *(v1 + OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_dotCGPathNode);
  v5 = &v4[OBJC_IVAR____TtC11FMFindingUI16FMPFSKSpriteNode_previousBrightness];
  *v5 = 0;
  v5[8] = 1;
  if ((*(v1 + OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_presentedBrightness + 8) & 1) == 0)
  {
    v6 = *(v1 + OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_presentedBrightness);
    v7 = *(v1 + v2);
    v8 = v4;
    v9 = v7;
    sub_24A60CFCC(v9, v6);
  }
}

void sub_24A51E8F0()
{
  v1 = OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_perimeterRotateOnceAction;
  if (!*&v0[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_perimeterRotateOnceAction])
  {
    v2 = &v0[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_presentedBrightness];
    if ((v0[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_presentedBrightness + 8] & 1) == 0 && (v0[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_diskRadius + 8] & 1) == 0)
    {
      v3 = *v2;
      v4 = &v0[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_style];
      v5 = (*&v0[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_diskRadius] + *&v0[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_diskRadius]) * 3.14159265 / (*&v0[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_style] * 0.5);
      v6 = dbl_24A634820[(sub_24A5EB5CC() & 1) == 0];
      v7 = [objc_opt_self() rotateByAngle:v6 / v4[2] duration:v5 / v4[2]];
      [v7 setTimingMode_];
      [v7 setSpeed_];
      v8 = *&v0[v1];
      *&v0[v1] = v7;
      v16 = v7;

      if ((v2[1] & 1) != 0 || (v9 = *v2, UIAccessibilityIsReduceMotionEnabled()))
      {
      }

      else
      {
        v10 = *&v0[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_gimbalNode];
        v11 = swift_allocObject();
        *(v11 + 2) = v16;
        v11[3] = v9;
        *(v11 + 4) = v0;
        aBlock[4] = sub_24A520354;
        aBlock[5] = v11;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_24A5A8458;
        aBlock[3] = &unk_285DA11B8;
        v12 = _Block_copy(aBlock);
        v13 = v16;
        v14 = v10;
        v15 = v0;

        [v14 runAction:v13 completion:v12];

        _Block_release(v12);
      }
    }
  }
}

void sub_24A51EB58()
{
  v1 = OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_perimeterRotateOnceAction;
  if (*&v0[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_perimeterRotateOnceAction])
  {
    v2 = &v0[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_angle];
    if ((v0[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_angle + 8] & 1) == 0)
    {
      v3 = *v2;
      v4 = OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_gimbalNode;
      [*&v0[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_gimbalNode] removeAllActions];
      v5 = *&v0[v1];
      *&v0[v1] = 0;

      v6 = fmod(*&v0[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_presentedAbsoluteHeading] / 180.0 * 3.14159265, 6.28318531);
      if (v6 <= 3.14159265)
      {
        if (v6 < -3.14159265)
        {
          v6 = v6 + 6.28318531;
        }
      }

      else
      {
        v6 = v6 + -6.28318531;
      }

      [*&v0[v4] zRotation];
      v8 = fmod(v7, 6.28318531);
      if (v8 <= 3.14159265)
      {
        if (v8 < -3.14159265)
        {
          v8 = v8 + 6.28318531;
        }
      }

      else
      {
        v8 = v8 + -6.28318531;
      }

      v9 = v6 + v8;
      v10 = v3 - (v6 + v8);
      if (vabdd_f64(v3, v9) > 3.14159265)
      {
        if (v9 >= 0.0 || v3 < 0.0)
        {
          if (v3 < 0.0 && v9 >= 0.0)
          {
            v10 = v10 + 6.28318531;
          }
        }

        else
        {
          v10 = v10 + -6.28318531;
        }
      }

      v12 = v3 - v10;
      *v2 = v3 - v10;
      *(v2 + 8) = 0;
      [*&v0[v4] setZRotation_];
      v13 = *&v0[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_angleSpring];
      sub_24A55C6B4(v12);
      *(v13 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 0;
      [v0 setZRotation_];
      v14 = *&v0[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_headingSpring];
      sub_24A55C6B4(0.0);
      *(v14 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 0;

      sub_24A51F664(1, v3);
    }
  }
}

uint64_t sub_24A51ED78()
{
  v1 = v0;
  v20 = *(v0 + OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_isPlayingInitialPulse);
  v2 = [*(v0 + OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_dotNode) children];
  sub_24A50D7EC(0, &qword_27EF4F948, 0x277CDCF58);
  v3 = sub_24A62ED64();

  v4 = v3 & 0xFFFFFFFFFFFFFF8;
  if (v3 >> 62)
  {
LABEL_24:
    v5 = sub_24A62F464();
  }

  else
  {
    v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  v23 = OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_dotCGPathNode;
  v24 = OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_interativeRadiusBeaconNode;
  v25 = v3 & 0xC000000000000001;
  v21 = v5;
  v22 = v1;
LABEL_4:
  if (v6 != v5)
  {
    do
    {
      if (v25)
      {
        v7 = MEMORY[0x24C21ACB0](v6, v3);
      }

      else
      {
        if (v6 >= *(v4 + 16))
        {
          goto LABEL_23;
        }

        v7 = *(v3 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      objc_opt_self();
      if (!swift_dynamicCastObjCClass() || (v10 = *(v1 + v24)) != 0 && (v11 = v8, v12 = v4, v13 = v3, v14 = v10, v15 = sub_24A62F164(), v11, v1 = v22, v14, v3 = v13, v4 = v12, v5 = v21, (v15 & 1) != 0))
      {
      }

      else
      {
        v16 = *(v1 + v23);
        v17 = sub_24A62F164();

        if ((v17 & 1) == 0)
        {
          ++v6;
          if (!__OFADD__(v20++, 1))
          {
            goto LABEL_4;
          }

          __break(1u);
          break;
        }
      }

      ++v6;
    }

    while (v9 != v5);
  }

  return v20;
}

void sub_24A51EF90(char a1, char a2)
{
  if (a1)
  {
    v3 = objc_opt_self();
    v4 = &v2[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_style];
    v5 = *&v2[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_style + 64];
    v6 = [v3 fadeAlphaTo:*&v2[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_style + 48] duration:v5];
    [v6 setTimingMode_];
    if (v2[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_hasPlayedInitialPulse])
    {
      v7 = sub_24A51E58C();
      v8 = [v3 scaleTo:v4[4] duration:v5];
      [v8 setTimingMode_];
      sub_24A508FA4(&qword_27EF50790, &qword_24A6338D0);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_24A633810;
      *(v9 + 32) = v6;
      *(v9 + 40) = v8;
      sub_24A50D7EC(0, &unk_27EF4F950, 0x277CDCF30);
      v10 = v6;
      v11 = v8;
      v12 = sub_24A62ED54();

      v13 = [v3 group_];

      [*&v2[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_dotNode] addChild_];
      v14 = swift_allocObject();
      *(v14 + 16) = v7;
      v43 = sub_24A520304;
      v44 = v14;
      aBlock = MEMORY[0x277D85DD0];
      v40 = 1107296256;
      v41 = sub_24A5A8458;
      v42 = &unk_285DA1168;
      v15 = _Block_copy(&aBlock);
      v16 = v7;

      [v16 runAction:v13 completion:v15];

      _Block_release(v15);
    }

    else
    {
      v2[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_hasPlayedInitialPulse] = 1;
      v2[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_isPlayingInitialPulse] = 1;
      v26 = [v3 scaleTo:v4[4] duration:v5];
      [v26 setTimingMode_];
      sub_24A508FA4(&qword_27EF50790, &qword_24A6338D0);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_24A633810;
      *(v27 + 32) = v6;
      *(v27 + 40) = v26;
      sub_24A50D7EC(0, &unk_27EF4F950, 0x277CDCF30);
      v28 = v6;
      v29 = v26;
      v30 = sub_24A62ED54();

      v31 = [v3 group_];

      v32 = *&v2[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_dotCGPathNode];
      v33 = swift_allocObject();
      *(v33 + 16) = v2;
      v43 = sub_24A520284;
      v44 = v33;
      aBlock = MEMORY[0x277D85DD0];
      v40 = 1107296256;
      v41 = sub_24A5A8458;
      v42 = &unk_285DA1118;
      v34 = _Block_copy(&aBlock);
      v35 = v32;
      v36 = v2;

      [v35 runAction:v31 completion:v34];

      _Block_release(v34);
    }
  }

  else if ((a2 & 1) == 0)
  {
    aBlock = MEMORY[0x277D84F90];
    v17 = [*&v2[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_dotNode] children];
    sub_24A50D7EC(0, &qword_27EF4F948, 0x277CDCF58);
    v18 = sub_24A62ED64();

    v19 = v2;
    sub_24A52003C(v18, v19, &aBlock);

    v20 = aBlock;
    if (aBlock >> 62)
    {
      goto LABEL_18;
    }

    for (i = *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_24A62F464())
    {
      v22 = 0;
      while (1)
      {
        if ((v20 & 0xC000000000000001) != 0)
        {
          v23 = MEMORY[0x24C21ACB0](v22, v20);
        }

        else
        {
          if (v22 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_17;
          }

          v23 = *(v20 + 8 * v22 + 32);
        }

        v24 = v23;
        v25 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          break;
        }

        [v23 removeFromParent];

        ++v22;
        if (v25 == i)
        {
          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      ;
    }

LABEL_19:
    v37 = OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_isPlayingInitialPulse;
    if (v19[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_isPlayingInitialPulse] == 1)
    {
      v38 = OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_dotCGPathNode;
      [*&v19[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_dotCGPathNode] removeAllActions];
      [*&v19[v38] setScale_];
      [*&v19[v38] setAlpha_];
    }

    v19[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_hasPlayedInitialPulse] = 0;
    v19[v37] = 0;
  }
}

void sub_24A51F53C(uint64_t a1, double a2)
{
  v3 = v2;
  v5 = v2 + OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_dotScale;
  *v5 = a2;
  *(v5 + 8) = 0;
  if ((a1 & 1) != 0 && (v6 = *(v2 + OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_dotScaleSpring), v7 = v6 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__s, swift_beginAccess(), *(v7 + 280) + *(v6 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40) != 1.79769313e308))
  {
    v10 = v6 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ftarget;
    *v10 = a2;
    *(v10 + 8) = 0;
    sub_24A5B18FC();
  }

  else
  {
    v8 = *(v3 + OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_dotScaleSpring);
    sub_24A55C6B4(a2);
    *(v8 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 0;
    v9 = v3 + OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_presentedDotScale;
    *v9 = a2;
    *(v9 + 8) = 0;
    [*(v3 + OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_dotNode) setScale_];
  }
}

void sub_24A51F664(uint64_t a1, double a2)
{
  v3 = v2;
  v5 = v2 + OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_angle;
  *v5 = a2;
  *(v5 + 8) = 0;
  if ((a1 & 1) != 0 && (v6 = *(v2 + OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_angleSpring), v7 = v6 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__s, swift_beginAccess(), *(v7 + 280) + *(v6 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40) != 1.79769313e308))
  {
    v10 = v6 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ftarget;
    *v10 = a2;
    *(v10 + 8) = 0;
    sub_24A5B18FC();
  }

  else
  {
    v8 = *(v3 + OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_angleSpring);
    sub_24A55C6B4(a2);
    *(v8 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 0;
    v9 = v3 + OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_presentedAngle;
    *v9 = a2;
    *(v9 + 8) = 0;
    if (!*(v3 + OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_perimeterRotateOnceAction))
    {
      [*(v3 + OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_gimbalNode) setZRotation_];
    }
  }
}

void sub_24A51F790(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  v7 = &v3[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_offset];
  *v7 = a2;
  v7[1] = a3;
  *(v7 + 16) = 0;
  if ((a1 & 1) == 0 || (v8 = *&v3[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_xOffsetSpring], v9 = v8 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__s, swift_beginAccess(), *(v9 + 280) + *(v8 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40) == 1.79769313e308) || (v10 = OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_yOffsetSpring, v11 = *&v4[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_yOffsetSpring], v12 = v11 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__s, swift_beginAccess(), *(v12 + 280) + *(v11 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40) == 1.79769313e308))
  {
    v13 = *&v4[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_xOffsetSpring];
    sub_24A55C6B4(a2);
    *(v13 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 0;
    v14 = *&v4[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_yOffsetSpring];
    sub_24A55C6B4(a3);
    *(v14 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 0;
    v15 = &v4[OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_presentedOffset];
    *v15 = a2;
    v15[1] = a3;
    *(v15 + 16) = 0;
    [v4 setPosition_];
  }

  else
  {
    v16 = v8 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ftarget;
    *v16 = a2;
    *(v16 + 8) = 0;
    sub_24A5B18FC();
    v17 = *&v4[v10] + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ftarget;
    *v17 = a3;
    *(v17 + 8) = 0;
    sub_24A5B18FC();
  }
}

double sub_24A51F940(double a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_headingSpring);
  v4 = v3 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__s;
  swift_beginAccess();
  v5 = v3 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o;
  v6 = *(v3 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40);
  v7 = *(v4 + 280) + v6;
  v8 = v7 + a1;
  if (v7 == 1.79769313e308)
  {
    sub_24A55C6B4(v8);
    *(v3 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 0;
    v6 = *(v5 + 40);
  }

  result = v8 - v6;
  *(v4 + 280) = result;
  *(v4 + 240) = result;
  *(v4 + 248) = 0;
  return result;
}

id sub_24A51FA00(id result, char a2)
{
  v3 = v2 + OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_interactiveAngleFactor;
  *v3 = *&result;
  *(v3 + 8) = a2 & 1;
  if ((a2 & 1) == 0 && (*(v2 + OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_angle + 8) & 1) == 0)
  {
    v4 = *(v2 + OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_angle);
    v5 = *&result;
    v6 = *(v2 + OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_angleSpring);
    v7 = (v6 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__s);
    *&result = COERCE_DOUBLE(swift_beginAccess());
    v8 = *v7 + *(v6 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o);
    if (vabdd_f64(v7[35] + *(v6 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40), v8) <= *(v6 + OBJC_IVAR____TtC11FMFindingUI8FLSpring_stableValueThreshold))
    {
      v8 = v7[35] + *(v6 + OBJC_IVAR____TtC11FMFindingUI8FLSpring__o + 40);
    }

    v9 = v2 + OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_presentedAngle;
    *v9 = v4 * v5 + (1.0 - v5) * v8;
    *(v9 + 8) = 0;
    if (!*(v2 + OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_perimeterRotateOnceAction))
    {
      *&result = COERCE_DOUBLE([*(v2 + OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_gimbalNode) setZRotation_]);
    }
  }

  return result;
}

void sub_24A51FB30(uint64_t a1, char a2, uint64_t a3)
{
  v4 = v3;
  v5 = v3 + OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_radiusFactor;
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  if (a2)
  {
    v6 = OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_interativeRadiusBeaconNode;
    v7 = *(v4 + OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_interativeRadiusBeaconNode);
    if (v7)
    {
      [v7 removeFromParent];
      v8 = *(v4 + v6);
    }

    else
    {
      v8 = 0;
    }

    *(v4 + v6) = 0;

    v19 = *(v4 + OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_radiusFactorSpring);
    sub_24A55C6B4(0.0);
    *(v19 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 0;
    v20 = v4 + OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_presentedRadiusFactor;
    *v20 = 0;
    *(v20 + 8) = 1;
  }

  else
  {
    v9 = OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_interativeRadiusBeaconNode;
    if (!*(v3 + OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_interativeRadiusBeaconNode))
    {
      v10 = a1;
      v11 = a3;
      v12 = sub_24A51E58C();
      v13 = *(v3 + v9);
      *(v3 + v9) = v12;
      v14 = v12;

      v15 = v14;
      v16 = sub_24A62EBE4();
      [v15 setName_];

      [*(v4 + OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_dotNode) addChild_];
      LOBYTE(a3) = v11;
      a1 = v10;
    }

    v17 = *(v4 + OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_radiusFactorSpring);
    if (a3)
    {
      v18 = v17 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ftarget;
      *v18 = a1;
      *(v18 + 8) = 0;
      sub_24A5B18FC();
    }

    else
    {
      sub_24A55C6B4(*&a1);
      *(v17 + OBJC_IVAR____TtC11FMFindingUI15FMPFFluidSpring_ready) = 0;
    }
  }
}

void sub_24A51FCF4()
{
  v1 = *(v0 + OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_renderingColor);
}

id sub_24A51FE38(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for FMPFSKPeripheralDotNode();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_24A52003C(unint64_t a1, uint64_t a2, void *a3)
{
  if (a1 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_24A62F464())
  {
    v5 = 0;
    v20 = OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_dotCGPathNode;
    v21 = OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_interativeRadiusBeaconNode;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x24C21ACB0](v5, a1);
      }

      else
      {
        if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v6 = *(a1 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      objc_opt_self();
      v9 = swift_dynamicCastObjCClass();
      if (!v9)
      {
        goto LABEL_6;
      }

      v10 = v9;
      v11 = *(a2 + v21);
      if (!v11)
      {
        v15 = v7;
LABEL_16:
        v16 = *(a2 + v20);
        sub_24A50D7EC(0, &qword_27EF4F948, 0x277CDCF58);
        v17 = v16;
        v18 = sub_24A62F164();

        if ((v18 & 1) == 0)
        {
          [v10 removeAllActions];
          MEMORY[0x24C21A660](v7);
          if (*((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_24A62ED84();
          }

          sub_24A62EDA4();
        }

        goto LABEL_5;
      }

      sub_24A50D7EC(0, &qword_27EF4F948, 0x277CDCF58);
      v12 = v7;
      v13 = v11;
      v14 = sub_24A62F164();

      if ((v14 & 1) == 0)
      {
        goto LABEL_16;
      }

LABEL_5:

LABEL_6:
      ++v5;
      if (v8 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }
}

uint64_t sub_24A52024C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

id sub_24A520284()
{
  v1 = *(v0 + 16);
  *(v1 + OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_isPlayingInitialPulse) = 0;
  v2 = OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_dotCGPathNode;
  [*(v1 + OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_dotCGPathNode) setScale_];
  v3 = *(v1 + v2);

  return [v3 setAlpha_];
}

uint64_t sub_24A5202EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A520314()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

void sub_24A520364()
{
  v1 = OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_gimbalNode;
  v2 = type metadata accessor for FMPFSKNode();
  *(v0 + v1) = [objc_allocWithZone(v2) init];
  v3 = OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_diskNode;
  *(v0 + v3) = [objc_allocWithZone(v2) init];
  v4 = OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_dotNode;
  *(v0 + v4) = [objc_allocWithZone(v2) init];
  v5 = OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_dotCGPathNode;
  type metadata accessor for FMPFSKSpriteNode();
  *(v0 + v5) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v0 + OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_interativeRadiusBeaconNode) = 0;
  *(v0 + OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_isPlayingInitialPulse) = 0;
  *(v0 + OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_hasPlayedInitialPulse) = 0;
  *(v0 + OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_perimeterRotateOnceAction) = 0;
  *(v0 + OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_shouldApplyDiskRadius) = 1;
  v6 = v0 + OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_diskRadius;
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = v0 + OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_presentedDiskRadius;
  *v7 = 0;
  *(v7 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_shouldApplyDotScale) = 1;
  v8 = v0 + OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_dotScale;
  *v8 = 0;
  *(v8 + 8) = 1;
  v9 = v0 + OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_presentedDotScale;
  *v9 = 0;
  *(v9 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_shouldApplyAngle) = 1;
  v10 = v0 + OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_angle;
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = v0 + OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_presentedAngle;
  *v11 = 0;
  *(v11 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_shouldApplyOpacity) = 1;
  v12 = v0 + OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_opacity;
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = v0 + OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_presentedOpacity;
  *v13 = 0;
  *(v13 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_shouldApplyBrightness) = 1;
  v14 = v0 + OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_brightness;
  *v14 = 0;
  *(v14 + 8) = 1;
  v15 = v0 + OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_presentedBrightness;
  *v15 = 0;
  *(v15 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_shouldApplyOffset) = 1;
  v16 = v0 + OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_offset;
  *v16 = 0;
  *(v16 + 8) = 0;
  *(v16 + 16) = 1;
  v17 = v0 + OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_presentedOffset;
  *v17 = 0;
  *(v17 + 8) = 0;
  *(v17 + 16) = 1;
  *(v0 + OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_presentedAbsoluteHeading) = 0;
  v18 = v0 + OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_interactiveAngleFactor;
  *v18 = 0;
  *(v18 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_shouldApplyRadiusFactor) = 1;
  v19 = v0 + OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_radiusFactor;
  *v19 = 0;
  *(v19 + 8) = 1;
  v20 = v0 + OBJC_IVAR____TtC11FMFindingUI23FMPFSKPeripheralDotNode_presentedRadiusFactor;
  *v20 = 0;
  *(v20 + 8) = 1;
  sub_24A62F444();
  __break(1u);
}

uint64_t FMItemActionStatus.description.getter()
{
  v1 = *v0;
  v2 = 0x726F727265;
  v3 = 0x73736563637573;
  v4 = 0x676E69646E6570;
  if (v1 != 3)
  {
    v4 = 0x64656C696166;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6E776F6E6B6E75;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

FMFindingUI::FMItemActionStatus_optional __swiftcall FMItemActionStatus.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue <= 199)
  {
    if (rawValue == -1)
    {
      *v1 = 0;
      return rawValue;
    }

    if (!rawValue)
    {
      *v1 = 1;
      return rawValue;
    }

LABEL_12:
    *v1 = 5;
    return rawValue;
  }

  if (rawValue == 500)
  {
    *v1 = 4;
    return rawValue;
  }

  if (rawValue == 205)
  {
    *v1 = 3;
    return rawValue;
  }

  if (rawValue != 200)
  {
    goto LABEL_12;
  }

  *v1 = 2;
  return rawValue;
}

uint64_t sub_24A52077C()
{
  v1 = *v0;
  sub_24A62F714();
  MEMORY[0x24C21B040](qword_24A634A18[v1]);
  return sub_24A62F754();
}

uint64_t sub_24A520804(uint64_t a1)
{
  v2 = *v1;
  sub_24A62F714();
  MEMORY[0x24C21B040](qword_24A634A18[v2]);
  return sub_24A62F754();
}

unint64_t sub_24A520874()
{
  result = qword_27EF4F960;
  if (!qword_27EF4F960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF4F960);
  }

  return result;
}

uint64_t sub_24A5208C8()
{
  v1 = *v0;
  v2 = 0x726F727265;
  v3 = 0x73736563637573;
  v4 = 0x676E69646E6570;
  if (v1 != 3)
  {
    v4 = 0x64656C696166;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6E776F6E6B6E75;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t getEnumTagSinglePayload for FMItemActionStatus(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FMItemActionStatus(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void *sub_24A520AAC(void *a1)
{
  v18 = a1;
  v16 = sub_24A62F004();
  v1 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v3 = v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24A62EFD4();
  MEMORY[0x28223BE20](v4);
  v5 = sub_24A62EAD4();
  MEMORY[0x28223BE20](v5 - 8);
  v15[1] = sub_24A50D7EC(0, &qword_27EF4F9C0, 0x277D85C78);
  sub_24A62EAB4();
  v19 = MEMORY[0x277D84F90];
  sub_24A523864(&unk_27EF4F9E0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  sub_24A508FA4(&unk_27EF50240, &unk_24A634A08);
  sub_24A5238AC(&qword_27EF4F9F0, &unk_27EF50240, &unk_24A634A08);
  sub_24A62F254();
  (*(v1 + 104))(v3, *MEMORY[0x277D85260], v16);
  v6 = v17;
  v6[3] = sub_24A62F044();
  v6[4] = MEMORY[0x277D84F90];
  swift_unknownObjectWeakInit();
  v7 = v18;
  v6[2] = v18;
  v8 = qword_27EF4E998;
  v9 = v7;
  if (v8 != -1)
  {
    swift_once();
  }

  v10 = sub_24A62E314();
  sub_24A506EB8(v10, qword_27EF5C100);
  v11 = sub_24A62E2F4();
  v12 = sub_24A62EF64();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_24A503000, v11, v12, "☎︎ FMIPConnectionManager: initialized", v13, 2u);
    MEMORY[0x24C21BBE0](v13, -1, -1);
  }

  return v6;
}

uint64_t sub_24A520DF4(uint64_t a1, uint64_t a2)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    sub_24A62F094();
    swift_unknownObjectRelease();
  }

  sub_24A52358C(v2 + 40);

  return swift_deallocClassInstance();
}

void sub_24A520E94(uint64_t a1, char a2, void (*a3)(void), uint64_t a4)
{
  if (a2)
  {
    v7 = v4;
    if (qword_27EF4E998 != -1)
    {
      swift_once();
    }

    v8 = sub_24A62E314();
    sub_24A506EB8(v8, qword_27EF5C100);
    v9 = sub_24A62E2F4();
    v10 = sub_24A62EF64();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_24A503000, v9, v10, "☎︎ FMIPConnectionManager: connect", v11, 2u);
      MEMORY[0x24C21BBE0](v11, -1, -1);
    }

    v12 = objc_opt_self();
    v13 = sub_24A62E1D4();
    v14 = [v12 connectToBeaconUUID_];

    v15 = [*(v7 + 16) executeCommand_];
    v16 = *(v7 + 24);
    v17 = swift_allocObject();
    *(v17 + 16) = v7;
    *(v17 + 24) = v15;
    v18 = swift_allocObject();
    *(v18 + 16) = sub_24A523464;
    *(v18 + 24) = v17;
    v37 = sub_24A517E48;
    v38 = v18;
    aBlock = MEMORY[0x277D85DD0];
    v34 = 1107296256;
    v35 = sub_24A592ED8;
    v36 = &unk_285DA1310;
    v19 = _Block_copy(&aBlock);

    v20 = v15;

    dispatch_sync(v16, v19);
    _Block_release(v19);
    LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

    if ((v16 & 1) == 0)
    {
      v21 = swift_allocObject();
      *(v21 + 16) = 1;
      *(v21 + 24) = v7;
      *(v21 + 32) = v20;
      *(v21 + 40) = a3;
      *(v21 + 48) = a4;
      v37 = sub_24A523498;
      v38 = v21;
      aBlock = MEMORY[0x277D85DD0];
      v34 = 1107296256;
      v35 = sub_24A521AA4;
      v36 = &unk_285DA1360;
      v22 = _Block_copy(&aBlock);

      v23 = v20;
      sub_24A5173CC(a3, a4);

      v24 = [v23 addFailureBlock_];
      _Block_release(v22);

      v25 = swift_allocObject();
      *(v25 + 16) = 1;
      *(v25 + 24) = v7;
      *(v25 + 32) = v23;
      *(v25 + 40) = a3;
      *(v25 + 48) = a4;
      v37 = sub_24A523500;
      v38 = v25;
      aBlock = MEMORY[0x277D85DD0];
      v34 = 1107296256;
      v35 = sub_24A521F78;
      v36 = &unk_285DA13B0;
      v26 = _Block_copy(&aBlock);

      v27 = v23;
      sub_24A5173CC(a3, a4);

      v28 = [v27 addSuccessBlock_];

      _Block_release(v26);

      return;
    }

    __break(1u);
    goto LABEL_15;
  }

  if (qword_27EF4E998 != -1)
  {
LABEL_15:
    swift_once();
  }

  v29 = sub_24A62E314();
  sub_24A506EB8(v29, qword_27EF5C100);
  v30 = sub_24A62E2F4();
  v31 = sub_24A62EF64();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_24A503000, v30, v31, "☎︎ FMIPConnectionManager: disconnect is not supported on this platform!", v32, 2u);
    MEMORY[0x24C21BBE0](v32, -1, -1);
  }

  if (a3)
  {
    a3(0);
  }
}

uint64_t sub_24A521398(uint64_t a1, void *a2)
{
  swift_beginAccess();
  v4 = a2;
  MEMORY[0x24C21A660]();
  if (*((*(a1 + 32) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a1 + 32) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_24A62ED84();
  }

  sub_24A62EDA4();
  return swift_endAccess();
}

uint64_t sub_24A521440(void *a1, char a2, uint64_t a3, void *a4, uint64_t (*a5)(void *), uint64_t a6)
{
  v42 = a6;
  v45 = a5;
  v10 = sub_24A62EA94();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24A62EAD4();
  v43 = *(v14 - 8);
  v44 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EF4E998 != -1)
  {
    swift_once();
  }

  v17 = sub_24A62E314();
  sub_24A506EB8(v17, qword_27EF5C100);
  v18 = a1;
  v19 = sub_24A62E2F4();
  v20 = sub_24A62EF64();

  v21 = os_log_type_enabled(v19, v20);
  v41 = a1;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v40 = v11;
    v23 = v22;
    v24 = swift_slowAlloc();
    v38 = a3;
    v25 = v24;
    v47 = v24;
    *v23 = 136315394;
    if (a2)
    {
      v26 = 0x7463656E6E6F63;
    }

    else
    {
      v26 = 0x656E6E6F63736964;
    }

    if (a2)
    {
      v27 = 0xE700000000000000;
    }

    else
    {
      v27 = 0xEA00000000007463;
    }

    v28 = sub_24A509BA8(v26, v27, &v47);
    v39 = v10;
    v29 = a4;
    v30 = v28;

    *(v23 + 4) = v30;
    *(v23 + 12) = 2080;
    aBlock = 0;
    v49 = 0xE000000000000000;
    v46 = a1;
    sub_24A508FA4(&unk_27EF4F990, &unk_24A6349E0);
    sub_24A62F434();
    v31 = sub_24A509BA8(aBlock, v49, &v47);

    *(v23 + 14) = v31;
    a4 = v29;
    v10 = v39;
    _os_log_impl(&dword_24A503000, v19, v20, "☎︎ FMIPConnectionManager: %s action failed %s", v23, 0x16u);
    swift_arrayDestroy();
    v32 = v25;
    a3 = v38;
    MEMORY[0x24C21BBE0](v32, -1, -1);
    v33 = v23;
    v11 = v40;
    MEMORY[0x24C21BBE0](v33, -1, -1);
  }

  v34 = swift_allocObject();
  *(v34 + 16) = a3;
  *(v34 + 24) = a4;
  v52 = sub_24A523924;
  v53 = v34;
  aBlock = MEMORY[0x277D85DD0];
  v49 = 1107296256;
  v50 = sub_24A5A8458;
  v51 = &unk_285DA1450;
  v35 = _Block_copy(&aBlock);

  v36 = a4;
  sub_24A62EAB4();
  v47 = MEMORY[0x277D84F90];
  sub_24A523864(&qword_27EF4F970, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_24A508FA4(&unk_27EF50510, &unk_24A633E30);
  sub_24A5238AC(&qword_27EF4F980, &unk_27EF50510, &unk_24A633E30);
  sub_24A62F254();
  MEMORY[0x24C21A950](0, v16, v13, v35);
  _Block_release(v35);
  (*(v11 + 8))(v13, v10);
  (*(v43 + 8))(v16, v44);

  if (v45)
  {
    return v45(v41);
  }

  return result;
}

unint64_t sub_24A521908(uint64_t a1, unint64_t a2)
{
  v3 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_17:
    v4 = sub_24A62F464();
  }

  else
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
      return 0;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x24C21ACB0](v5, a2);
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v6 = *(a2 + 8 * v5 + 32);
    }

    v7 = v6;
    sub_24A508FA4(&qword_27EF4F988, &qword_24A6349D8);
    v8 = sub_24A62F164();

    if (v8)
    {
      return v5;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_16;
    }
  }
}

uint64_t sub_24A521A14(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_24A5EB5C8();
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v5 - 1 - a1));
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

uint64_t sub_24A521AAC(uint64_t a1, char a2, uint64_t a3, void *a4, uint64_t (*a5)(void), uint64_t a6)
{
  v31 = a6;
  v35 = a5;
  v9 = sub_24A62EA94();
  v34 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24A62EAD4();
  v32 = *(v12 - 8);
  v33 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EF4E998 != -1)
  {
    swift_once();
  }

  v15 = sub_24A62E314();
  sub_24A506EB8(v15, qword_27EF5C100);
  v16 = sub_24A62E2F4();
  v17 = sub_24A62EF64();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v30 = a4;
    v20 = v19;
    aBlock[0] = v19;
    *v18 = 136315138;
    if (a2)
    {
      v21 = 0x7463656E6E6F63;
    }

    else
    {
      v21 = 0x656E6E6F63736964;
    }

    if (a2)
    {
      v22 = 0xE700000000000000;
    }

    else
    {
      v22 = 0xEA00000000007463;
    }

    v23 = sub_24A509BA8(v21, v22, aBlock);

    *(v18 + 4) = v23;
    _os_log_impl(&dword_24A503000, v16, v17, "☎︎ FMIPConnectionManager: %s action succeeded", v18, 0xCu);
    sub_24A508C54(v20);
    v24 = v20;
    a4 = v30;
    MEMORY[0x24C21BBE0](v24, -1, -1);
    MEMORY[0x24C21BBE0](v18, -1, -1);
  }

  v25 = swift_allocObject();
  *(v25 + 16) = a3;
  *(v25 + 24) = a4;
  aBlock[4] = sub_24A523530;
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A5A8458;
  aBlock[3] = &unk_285DA1400;
  v26 = _Block_copy(aBlock);

  v27 = a4;
  sub_24A62EAB4();
  v36 = MEMORY[0x277D84F90];
  sub_24A523864(&qword_27EF4F970, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_24A508FA4(&unk_27EF50510, &unk_24A633E30);
  sub_24A5238AC(&qword_27EF4F980, &unk_27EF50510, &unk_24A633E30);
  sub_24A62F254();
  MEMORY[0x24C21A950](0, v14, v11, v26);
  _Block_release(v26);
  (*(v34 + 8))(v11, v9);
  (*(v32 + 8))(v14, v33);

  if (v35)
  {
    return v35(0);
  }

  return result;
}

void sub_24A521ED4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 32);

  v5 = sub_24A521908(a2, v4);
  LOBYTE(a2) = v6;

  if ((a2 & 1) == 0)
  {
    swift_beginAccess();
    v7 = sub_24A521A14(v5);
    swift_endAccess();
  }
}

void sub_24A521F80(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_24A521FEC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = sub_24A62EA94();
  v87 = *(v6 - 8);
  v88 = v6;
  MEMORY[0x28223BE20](v6);
  v85 = v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_24A62EAD4();
  v84 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v83 = v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_24A62EA74();
  v82 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v80 = (v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v81 = sub_24A62EAF4();
  v79 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v77 = v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_24A62F064();
  v73 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v72 = v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24A508FA4(&unk_27EF4FEE0, &qword_24A6369F0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v67 - v13;
  v15 = sub_24A62E214();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v76 = v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = v17;
  MEMORY[0x28223BE20](v18);
  v89 = v67 - v19;
  if (qword_27EF4E998 != -1)
  {
    swift_once();
  }

  v20 = sub_24A62E314();
  v21 = sub_24A506EB8(v20, qword_27EF5C100);

  v22 = sub_24A62E2F4();
  v23 = sub_24A62EF64();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v71 = v21;
    v25 = v24;
    v26 = v16;
    v27 = v15;
    v28 = a3;
    v29 = swift_slowAlloc();
    aBlock[0] = v29;
    *v25 = 136315138;
    *(v25 + 4) = sub_24A509BA8(a1, a2, aBlock);
    _os_log_impl(&dword_24A503000, v22, v23, "☎︎ FMIPConnectionManager: performing connect %s", v25, 0xCu);
    sub_24A508C54(v29);
    v30 = v29;
    a3 = v28;
    v15 = v27;
    v16 = v26;
    MEMORY[0x24C21BBE0](v30, -1, -1);
    MEMORY[0x24C21BBE0](v25, -1, -1);
  }

  sub_24A62E1B4();
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_24A5235B4(v14);
    v31 = sub_24A62E2F4();
    v32 = sub_24A62EF64();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_24A503000, v31, v32, "☎︎ FMIPConnectionManager: cannot connect for item with an invalid identifier", v33, 2u);
      MEMORY[0x24C21BBE0](v33, -1, -1);
    }

    sub_24A508FA4(&qword_27EF4F9A0, &unk_24A6349F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24A633830;
    *(inited + 32) = a1;
    *(inited + 40) = a2;
    sub_24A52361C();
    v35 = swift_allocError();

    v36 = v35;
    v37 = sub_24A62E2F4();
    v38 = sub_24A62EF64();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      aBlock[0] = v40;
      *v39 = 136315138;
      aBlock[6] = v35;
      v41 = v35;
      sub_24A508FA4(&qword_27EF4F9B0, qword_24A6389A0);
      v42 = sub_24A62EC44();
      v44 = sub_24A509BA8(v42, v43, aBlock);

      *(v39 + 4) = v44;
      _os_log_impl(&dword_24A503000, v37, v38, "FMItemsActionController: Connect completed with error? %s", v39, 0xCu);
      sub_24A508C54(v40);
      MEMORY[0x24C21BBE0](v40, -1, -1);
      MEMORY[0x24C21BBE0](v39, -1, -1);
    }
  }

  else
  {
    v70 = a1;
    v71 = a2;
    v46 = *(v16 + 32);
    v69 = v15;
    v68 = v46;
    v46(v89, v14, v15);
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_getObjectType();
      sub_24A62F094();
      swift_unknownObjectRelease();
    }

    swift_unknownObjectWeakAssign();
    sub_24A50D7EC(0, &qword_27EF4F9B8, 0x277D85CA0);
    sub_24A50D7EC(0, &qword_27EF4F9C0, 0x277D85C78);
    v47 = sub_24A62F014();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_24A523864(&qword_27EF4F9C8, MEMORY[0x277D85278], MEMORY[0x277D85280]);
    v48 = a3;
    sub_24A508FA4(&qword_27EF4F9D0, &qword_24A634A00);
    sub_24A5238AC(&qword_27EF4F9D8, &qword_27EF4F9D0, &qword_24A634A00);
    v49 = v72;
    v50 = v74;
    sub_24A62F254();
    sub_24A62F074();

    (*(v73 + 8))(v49, v50);
    v67[1] = v48;
    swift_unknownObjectWeakAssign();
    ObjectType = swift_getObjectType();
    v52 = v77;
    sub_24A62EAE4();
    v53 = v80;
    *v80 = 0;
    v54 = v82;
    v55 = v78;
    (*(v82 + 104))(v53, *MEMORY[0x277D85168], v78);
    MEMORY[0x24C21A9F0](v52, v53, ObjectType, 30.0);
    (*(v54 + 8))(v53, v55);
    (*(v79 + 8))(v52, v81);
    v56 = swift_allocObject();
    swift_weakInit();
    v57 = v76;
    v58 = v89;
    v59 = v69;
    (*(v16 + 16))(v76, v89, v69);
    v60 = (*(v16 + 80) + 24) & ~*(v16 + 80);
    v61 = swift_allocObject();
    *(v61 + 16) = v56;
    v68(v61 + v60, v57, v59);
    aBlock[4] = sub_24A523798;
    aBlock[5] = v61;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A5A8458;
    aBlock[3] = &unk_285DA14F0;
    v62 = _Block_copy(aBlock);

    v63 = v16;
    v64 = v83;
    sub_24A62EAB4();
    v65 = v85;
    sub_24A522CC8();
    sub_24A62F084();
    _Block_release(v62);
    (*(v87 + 8))(v65, v88);
    (*(v84 + 8))(v64, v86);

    sub_24A62F0A4();
    v66 = swift_allocObject();
    v66[2] = sub_24A5A8970;
    v66[3] = 0;
    v66[4] = v70;
    v66[5] = v71;

    sub_24A520E94(v58, 1, sub_24A52383C, v66);
    swift_unknownObjectRelease();

    return (*(v63 + 8))(v58, v59);
  }
}

uint64_t sub_24A522B98(uint64_t a1, uint64_t a2)
{
  if (qword_27EF4E998 != -1)
  {
    swift_once();
  }

  v3 = sub_24A62E314();
  sub_24A506EB8(v3, qword_27EF5C100);
  v4 = sub_24A62E2F4();
  v5 = sub_24A62EF64();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_24A503000, v4, v5, "☎︎ FMIPConnectionManager: connect re-scheduled", v6, 2u);
    MEMORY[0x24C21BBE0](v6, -1, -1);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_24A520E94(a2, 1, 0, 0);
  }

  return result;
}

uint64_t sub_24A522CC8()
{
  sub_24A62EA94();
  sub_24A523864(&qword_27EF4F970, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_24A508FA4(&unk_27EF50510, &unk_24A633E30);
  sub_24A5238AC(&qword_27EF4F980, &unk_27EF50510, &unk_24A633E30);
  return sub_24A62F254();
}

uint64_t sub_24A522DA0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = sub_24A508FA4(&unk_27EF4FEE0, &qword_24A6369F0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v41 - v7;
  v9 = sub_24A62E214();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EF4E998 != -1)
  {
    swift_once();
  }

  v13 = sub_24A62E314();
  v14 = sub_24A506EB8(v13, qword_27EF5C100);

  v41[1] = v14;
  v15 = sub_24A62E2F4();
  v16 = sub_24A62EF64();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v41[0] = a3;
    v18 = a1;
    v19 = v17;
    v20 = v12;
    v21 = swift_slowAlloc();
    v42 = v21;
    *v19 = 136315138;
    *(v19 + 4) = sub_24A509BA8(v18, a2, &v42);
    _os_log_impl(&dword_24A503000, v15, v16, "☎︎ FMIPConnectionManager: performing disconnect %s", v19, 0xCu);
    sub_24A508C54(v21);
    v22 = v21;
    v12 = v20;
    MEMORY[0x24C21BBE0](v22, -1, -1);
    v23 = v19;
    a1 = v18;
    MEMORY[0x24C21BBE0](v23, -1, -1);
  }

  sub_24A62E1B4();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_24A5235B4(v8);
    v24 = sub_24A62E2F4();
    v25 = sub_24A62EF64();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_24A503000, v24, v25, "☎︎ FMIPConnectionManager: cannot disconnect for item with an invalid identifier", v26, 2u);
      MEMORY[0x24C21BBE0](v26, -1, -1);
    }

    sub_24A508FA4(&qword_27EF4F9A0, &unk_24A6349F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24A633830;
    *(inited + 32) = a1;
    *(inited + 40) = a2;
    sub_24A52361C();
    v28 = swift_allocError();

    v29 = v28;
    v30 = sub_24A62E2F4();
    v31 = sub_24A62EF64();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v41[2] = v28;
      v42 = v33;
      *v32 = 136315138;
      v34 = v28;
      sub_24A508FA4(&qword_27EF4F9B0, qword_24A6389A0);
      v35 = sub_24A62EC44();
      v37 = sub_24A509BA8(v35, v36, &v42);

      *(v32 + 4) = v37;
      _os_log_impl(&dword_24A503000, v30, v31, "FMItemsActionController: Disconnect completed with error? %s", v32, 0xCu);
      sub_24A508C54(v33);
      MEMORY[0x24C21BBE0](v33, -1, -1);
      MEMORY[0x24C21BBE0](v32, -1, -1);
    }
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_getObjectType();
      sub_24A62F094();
      swift_unknownObjectRelease();
      (*(v10 + 8))(v12, v9);
      return swift_unknownObjectWeakAssign();
    }

    else
    {
      v39 = v12;
      v40 = swift_allocObject();
      v40[2] = sub_24A5A8C54;
      v40[3] = 0;
      v40[4] = a1;
      v40[5] = a2;

      sub_24A520E94(v39, 0, sub_24A523674, v40);

      return (*(v10 + 8))(v39, v9);
    }
  }
}

uint64_t sub_24A5232D8(uint64_t a1, void (*a2)(char *, uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, const char *a6)
{
  if (a1)
  {
    v17 = 4;
    sub_24A508FA4(&qword_27EF4F9A0, &unk_24A6349F0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_24A633830;
    *(v10 + 32) = a4;
    *(v10 + 40) = a5;

    a2(&v17, v10, a1);
  }

  else
  {
    if (qword_27EF4E998 != -1)
    {
      swift_once();
    }

    v13 = sub_24A62E314();
    sub_24A506EB8(v13, qword_27EF5C100);
    v14 = sub_24A62E2F4();
    v15 = sub_24A62EF64();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_24A503000, v14, v15, a6, v16, 2u);
      MEMORY[0x24C21BBE0](v16, -1, -1);
    }

    v18 = 2;
    return (a2)(&v18, 0, 0);
  }
}

uint64_t sub_24A52347C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A5234B0()
{

  if (*(v0 + 40))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_24A52354C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24A5235B4(uint64_t a1)
{
  v2 = sub_24A508FA4(&unk_27EF4FEE0, &qword_24A6369F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24A52361C()
{
  result = qword_27EF4F9A8;
  if (!qword_27EF4F9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF4F9A8);
  }

  return result;
}

uint64_t sub_24A52369C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A5236D4()
{
  v1 = sub_24A62E214();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_24A523798()
{
  v1 = *(sub_24A62E214() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_24A522B98(v2, v3);
}

uint64_t sub_24A5237FC()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24A523864(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24A5238AC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_24A50E1E0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

char *sub_24A52399C(__int16 *a1, __int128 *a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v52 = a3;
  v40 = *a1;
  v8 = a2[5];
  v50[4] = a2[4];
  v50[5] = v8;
  v50[6] = a2[6];
  v51 = *(a2 + 14);
  v9 = a2[1];
  v50[0] = *a2;
  v50[1] = v9;
  v10 = a2[3];
  v50[2] = a2[2];
  v50[3] = v10;
  v11 = v4 + OBJC_IVAR____TtC11FMFindingUI26PrecisionVFXViewController_connectivityState;
  *v11 = 0u;
  *(v11 + 1) = 0u;
  *(v11 + 2) = 0u;
  *(v11 + 3) = 0u;
  v11[100] = 0;
  *(v11 + 24) = 0x4000000;
  v12 = v4 + OBJC_IVAR____TtC11FMFindingUI26PrecisionVFXViewController_estimate;
  *(v11 + 4) = 0u;
  *(v11 + 5) = 0u;
  v13 = type metadata accessor for FindingEstimate(0);
  v14 = v13[5];
  v15 = sub_24A508FA4(&qword_27EF4FE50, &qword_24A634BB0);
  (*(*(v15 - 8) + 56))(v12 + v14, 1, 1, v15);
  *v12 = 0;
  *(v12 + 8) = 1;
  *(v12 + v13[6]) = 0;
  *(v12 + v13[7]) = 5;
  v16 = v12 + v13[8];
  *v16 = 0;
  *(v16 + 8) = 1;
  v17 = MEMORY[0x277D84F90];
  *(v5 + OBJC_IVAR____TtC11FMFindingUI26PrecisionVFXViewController_rangeHistory) = MEMORY[0x277D84F90];
  *(v5 + OBJC_IVAR____TtC11FMFindingUI26PrecisionVFXViewController_angleHistory) = v17;
  v18 = v5 + OBJC_IVAR____TtC11FMFindingUI26PrecisionVFXViewController_hapticsController;
  type metadata accessor for VFXManager(0);
  *v18 = 0u;
  *(v18 + 16) = 0u;
  *(v18 + 32) = 0;
  v19 = a4;

  v20 = sub_24A584564(0xD000000000000013, 0x800000024A63E640);
  if (v20)
  {
    v21 = v20;
    v42[0] = v40;
    v22 = a2[5];
    v47 = a2[4];
    v48[0] = v22;
    v48[1] = a2[6];
    v49 = *(a2 + 14);
    v23 = a2[1];
    v43 = *a2;
    v44 = v23;
    v24 = a2[3];
    v45 = a2[2];
    v46 = v24;
    swift_allocObject();
    v25 = sub_24A584E98(v21, v42, &v43, v19);
    type metadata accessor for FMR1WKRotationModel();
    v26 = swift_allocObject();
    *(v26 + 16) = 0;
    *(v26 + 24) = 0;
    *(v26 + 32) = [objc_allocWithZone(MEMORY[0x277CC1CD8]) init];
    *(v26 + 40) = 0;
    *(v26 + 48) = 1;
    *(v5 + OBJC_IVAR____TtC11FMFindingUI26PrecisionVFXViewController_rotationModel) = v26;
    v27 = v52;
    *(v5 + OBJC_IVAR____TtC11FMFindingUI26PrecisionVFXViewController_arSession) = v52;
    *(v26 + 16) = v25;
    *(v5 + OBJC_IVAR____TtC11FMFindingUI26PrecisionVFXViewController_vfxManager) = v25;
    v28 = (v40 >> 13) & 3;

    if (v28)
    {
      v29 = v18;
      if (v28 == 1)
      {
        v30 = (v40 >> 8) & 0x9F;
      }

      else if ((v40 & 0x80000000) != 0)
      {
        v30 = (v40 >> 8) & 0x1F;
      }

      else
      {
        v30 = v40;
      }
    }

    else
    {
      v30 = BYTE1(v40);
      v29 = v18;
    }

    *(v5 + OBJC_IVAR____TtC11FMFindingUI26PrecisionVFXViewController_threshold) = v30 == 2;
    v35 = type metadata accessor for FMR1HapticsController();
    v36 = objc_allocWithZone(v35);
    v37 = v27;

    v38 = [v36 init];
    *(&v44 + 1) = v35;
    *&v45 = &off_285DA5E60;
    *&v43 = v38;
    swift_beginAccess();
    sub_24A529578(&v43, v29, &qword_27EF4FA70, &unk_24A634CE0);
    swift_endAccess();
    v41.receiver = v5;
    v41.super_class = type metadata accessor for PrecisionVFXViewController(0);
    v5 = objc_msgSendSuper2(&v41, sel_initWithNibName_bundle_, 0, 0);

    sub_24A58384C();
  }

  else
  {

    sub_24A5294D0(v50);
    sub_24A529524();
    swift_allocError();
    *v31 = 0;
    swift_willThrow();

    v32 = *(v11 + 5);
    v47 = *(v11 + 4);
    v48[0] = v32;
    *(v48 + 13) = *(v11 + 93);
    v33 = *(v11 + 1);
    v43 = *v11;
    v44 = v33;
    v34 = *(v11 + 3);
    v45 = *(v11 + 2);
    v46 = v34;
    sub_24A517ABC(&v43);
    sub_24A529278(v12, type metadata accessor for FindingEstimate);

    sub_24A50D6A4(v18, &qword_27EF4FA70, &unk_24A634CE0);
    type metadata accessor for PrecisionVFXViewController(0);
    swift_deallocPartialClassInstance();
  }

  return v5;
}

void sub_24A523EC8()
{
  v1 = sub_24A508FA4(&qword_27EF4FA88, &qword_24A634D48);
  v2 = *(v1 - 8);
  v75 = v1;
  v76 = v2;
  MEMORY[0x28223BE20](v1);
  v4 = &v70 - v3;
  v5 = sub_24A508FA4(&qword_27EF4FA90, &qword_24A634D50);
  v6 = *(v5 - 8);
  v78 = v5;
  v79 = v6;
  MEMORY[0x28223BE20](v5);
  v73 = &v70 - v7;
  v74 = sub_24A508FA4(&qword_27EF4FA98, &qword_24A634D58);
  v81 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v77 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v80 = &v70 - v10;
  v11 = type metadata accessor for VFXManager(0);
  sub_24A52941C(&qword_27EF4F438, type metadata accessor for VFXManager, &protocol conformance descriptor for VFXManager);
  v12 = sub_24A62E474();
  v14 = v13;
  v72 = type metadata accessor for PFAnimationCoordinator(0);
  sub_24A52941C(&qword_27EF4F440, type metadata accessor for PFAnimationCoordinator, &unk_24A635090);
  v15 = sub_24A62E474();
  v83 = v12;
  v84 = v14;
  v85 = v15;
  v86 = v16;
  v71 = v0;
  v17 = sub_24A52908C();
  v18 = sub_24A52941C(&qword_27EF4FAA8, type metadata accessor for VFXManager, &protocol conformance descriptor for VFXManager);
  sub_24A62E7D4();

  sub_24A5843A4();
  v83 = &type metadata for PFContentView;
  v84 = v11;
  v85 = v17;
  v86 = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v20 = sub_24A52941C(&qword_27EF4FAB0, type metadata accessor for PFAnimationCoordinator, &unk_24A6350C8);
  v22 = v72;
  v21 = v73;
  v23 = v75;
  sub_24A62E7D4();

  (*(v76 + 8))(v4, v23);
  sub_24A584370();
  type metadata accessor for VFXManager.Values(0);
  v83 = v23;
  v84 = v22;
  v24 = v74;
  v85 = OpaqueTypeConformance2;
  v86 = v20;
  swift_getOpaqueTypeConformance2();
  sub_24A52941C(&qword_27EF4FAB8, type metadata accessor for VFXManager.Values, &unk_24A637144);
  v25 = v80;
  v26 = v78;
  sub_24A62E7D4();

  (*(v79 + 8))(v21, v26);
  (*(v81 + 16))(v77, v25, v24);
  v27 = objc_allocWithZone(sub_24A508FA4(&qword_27EF4FAC0, &unk_24A634D60));
  v28 = sub_24A62E534();
  v29 = [v28 view];
  if (!v29)
  {
    __break(1u);
    goto LABEL_15;
  }

  v30 = v29;
  v31 = [objc_opt_self() redColor];
  [v30 setBackgroundColor_];

  v32 = v71;
  [v71 addChildViewController_];
  v33 = [v32 view];
  if (!v33)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v34 = v33;
  v35 = [v28 view];
  if (!v35)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v36 = v35;
  [v34 addSubview_];

  [v28 didMoveToParentViewController_];
  v37 = [v28 view];
  if (!v37)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v38 = v37;
  [v37 setTranslatesAutoresizingMaskIntoConstraints_];

  sub_24A508FA4(&qword_27EF50790, &qword_24A6338D0);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_24A633820;
  v40 = [v28 view];
  if (!v40)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v41 = v40;
  v42 = [v40 topAnchor];

  v43 = [v32 view];
  if (!v43)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v44 = v43;
  v45 = [v43 topAnchor];

  v46 = [v42 constraintEqualToAnchor_];
  *(v39 + 32) = v46;
  v47 = [v28 view];
  if (!v47)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v48 = v47;
  v49 = [v47 bottomAnchor];

  v50 = [v32 view];
  if (!v50)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v51 = v50;
  v52 = [v50 bottomAnchor];

  v53 = [v49 constraintEqualToAnchor_];
  *(v39 + 40) = v53;
  v54 = [v28 view];
  if (!v54)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v55 = v54;
  v56 = [v54 leadingAnchor];

  v57 = [v32 view];
  if (!v57)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v58 = v57;
  v59 = [v57 leadingAnchor];

  v60 = [v56 constraintEqualToAnchor_];
  *(v39 + 48) = v60;
  v61 = [v28 view];

  if (!v61)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v62 = [v61 trailingAnchor];

  v63 = [v32 view];
  if (v63)
  {
    v64 = v63;
    v65 = objc_opt_self();
    v66 = [v64 trailingAnchor];

    v67 = [v62 constraintEqualToAnchor_];
    *(v39 + 56) = v67;
    sub_24A50D7EC(0, &qword_27EF4F378, 0x277CCAAD0);
    v68 = sub_24A62ED54();

    [v65 activateConstraints_];

    sub_24A56A7C8();
    v69 = type metadata accessor for PrecisionVFXViewController(0);
    v82.receiver = v32;
    v82.super_class = v69;
    objc_msgSendSuper2(&v82, sel_viewDidLoad);

    (*(v81 + 8))(v80, v24);
    return;
  }

LABEL_25:
  __break(1u);
}

uint64_t sub_24A524854()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC11FMFindingUI26PrecisionVFXViewController_hapticsController;
  swift_beginAccess();
  sub_24A50D63C(v1 + v2, v11, &qword_27EF4FA70, &unk_24A634CE0);
  if (v12)
  {
    sub_24A508AE4(v11, v10);
    sub_24A50D6A4(v11, &qword_27EF4FA70, &unk_24A634CE0);
    sub_24A50A204(v10, v10[3]);
    sub_24A57A50C();
    sub_24A508C54(v10);
  }

  else
  {
    sub_24A50D6A4(v11, &qword_27EF4FA70, &unk_24A634CE0);
  }

  v4 = sub_24A52393C(v11);
  if (*(v3 + 24))
  {
    v5 = v3;
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v7 = *(v5 + 24);
    v8 = *(v5 + 32);
    sub_24A528F98(v5, v7);
    (*(v8 + 152))(sub_24A529020, v6, v7, v8);
  }

  return (v4)(v11, 0);
}

id sub_24A524A20(char a1)
{
  sub_24A56AA1C();
  v3 = *&v1[OBJC_IVAR____TtC11FMFindingUI26PrecisionVFXViewController_vfxManager];
  sub_24A508FA4(&qword_27EF4FA78, &qword_24A636E60);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_24A633830;
  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 32) = 0xD000000000000019;
  *(v4 + 40) = 0x800000024A63E5F0;
  sub_24A62F314();

  v5 = *(v3 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_view);
  *(v3 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_view) = 0;

  sub_24A524B24();
  v7.receiver = v1;
  v7.super_class = type metadata accessor for PrecisionVFXViewController(0);
  return objc_msgSendSuper2(&v7, sel_viewDidDisappear_, a1 & 1);
}

uint64_t sub_24A524B24()
{
  v2 = sub_24A52393C(v9);
  v3 = *(v1 + 24);
  if (v3)
  {
    v4 = *(v1 + 32);
    sub_24A528F98(v1, *(v1 + 24));
    (*(v4 + 152))(0, 0, v3, v4);
  }

  (v2)(v9, 0);
  v5 = OBJC_IVAR____TtC11FMFindingUI26PrecisionVFXViewController_hapticsController;
  swift_beginAccess();
  sub_24A50D63C(v0 + v5, v9, &qword_27EF4FA70, &unk_24A634CE0);
  if (v10)
  {
    sub_24A508AE4(v9, v7);
    sub_24A50D6A4(v9, &qword_27EF4FA70, &unk_24A634CE0);
    sub_24A50A204(v7, v8);
    sub_24A581E4C();
    sub_24A508C54(v7);
  }

  else
  {
    sub_24A50D6A4(v9, &qword_27EF4FA70, &unk_24A634CE0);
  }

  sub_24A50D63C(v0 + v5, v9, &qword_27EF4FA70, &unk_24A634CE0);
  if (!v10)
  {
    return sub_24A50D6A4(v9, &qword_27EF4FA70, &unk_24A634CE0);
  }

  sub_24A508AE4(v9, v7);
  sub_24A50D6A4(v9, &qword_27EF4FA70, &unk_24A634CE0);
  sub_24A50A204(v7, v8);
  sub_24A57B8D4();
  return sub_24A508C54(v7);
}

uint64_t sub_24A524D30(uint64_t *a1, _DWORD *a2)
{
  v3 = v2;
  v76 = a2;
  v74 = a1;
  v67 = sub_24A508FA4(&qword_27EF4FE50, &qword_24A634BB0);
  v71 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v70 = &v61[-v4];
  v5 = sub_24A508FA4(&qword_27EF4FA60, &qword_24A634BB8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v61[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v11 = &v61[-v10];
  v12 = sub_24A508FA4(&qword_27EF4FA58, &qword_24A634BA8);
  MEMORY[0x28223BE20](v12 - 8);
  v69 = &v61[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v16 = &v61[-v15];
  v17 = *(v2 + OBJC_IVAR____TtC11FMFindingUI26PrecisionVFXViewController_vfxManager);
  sub_24A5843A4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A62E354();

  v73 = v82[0];
  swift_getKeyPath();
  swift_getKeyPath();
  v77 = v17;
  sub_24A62E354();

  v75 = v82[0];
  v18 = v76[24] & 0xFE000000;
  v72 = v6;
  if (v18 == 0x4000000)
  {
    v76 = *(v6 + 56);
    (v76)(v16, 1, 1, v5);
    v19 = 0;
    v20 = v16;
    v21 = v77;
    goto LABEL_39;
  }

  v63 = v18;
  v65 = type metadata accessor for FindingEstimate(0);
  v22 = v8;
  v23 = v74;
  sub_24A525E8C(v74 + *(v65 + 20), v11);
  sub_24A50D63C(v11, v16, &qword_27EF4FA60, &qword_24A634BB8);
  v24 = *(v6 + 56);
  v66 = v16;
  v76 = v24;
  (v24)(v16, 0, 1, v5);
  v25 = *v23;
  v26 = *(v23 + 8);
  v68 = v2;
  v64 = sub_24A5263A0(v25, v26);
  v28 = v27;
  sub_24A50D63C(v11, v22, &qword_27EF4FA60, &qword_24A634BB8);
  v29 = v5;
  if (swift_getEnumCaseMultiPayload() >= 2)
  {
    sub_24A50D6A4(v11, &qword_27EF4FA60, &qword_24A634BB8);
    v19 = 1;
    v20 = v66;
    v3 = v68;
    v21 = v77;
    if (v28)
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

  v62 = v28;
  v30 = v67;
  (*(v71 + 32))(v70, v22, v67);
  swift_getKeyPath();
  swift_getKeyPath();
  v21 = v77;
  sub_24A62E354();

  if (v82[0] <= 3u)
  {
    v31 = v74;
LABEL_10:
    v32 = sub_24A62F634();
    goto LABEL_11;
  }

  v31 = v74;
  if (v82[0] > 5u || v82[0] == 4)
  {
    goto LABEL_10;
  }

  v32 = 1;
LABEL_11:

  if (*(v68 + OBJC_IVAR____TtC11FMFindingUI26PrecisionVFXViewController_threshold))
  {
    v33 = 4.14719171;
    v34 = 3.45599309;
    v35 = 2.3622;
  }

  else
  {
    if (qword_27EF4EA90 != -1)
    {
      swift_once();
    }

    v36 = *&qword_27EF5C768;
    if (qword_27EF4EAB0 != -1)
    {
      swift_once();
    }

    v34 = v36 * *&qword_27EF5C788;
    v33 = v36 * *&qword_27EF5C788 * 1.2;
    v35 = v36 * 1.25;
  }

  v37 = v70;
  sub_24A62DFD4();
  v39 = v38;
  sub_24A62DFD4();
  v41 = v40;
  if (v32)
  {
    v34 = v33;
  }

  (*(v71 + 8))(v37, v30);
  v42 = (v31 + *(v65 + 32));
  if (v42[1])
  {
    v20 = v66;
    v3 = v68;
    if (v63 == 100663296)
    {
      v43 = v62;
      if (v41 >= v34)
      {
        if (v39 >= v35)
        {
          v44 = 0;
          goto LABEL_76;
        }

        goto LABEL_36;
      }

LABEL_34:
      sub_24A50D6A4(v11, &qword_27EF4FA60, &qword_24A634BB8);
      v19 = 5;
      goto LABEL_37;
    }

    v43 = v62;
    if (v41 < v34)
    {
      goto LABEL_34;
    }

    if (v39 >= v35)
    {
      v44 = 1;
      goto LABEL_76;
    }

LABEL_36:
    sub_24A50D6A4(v11, &qword_27EF4FA60, &qword_24A634BB8);
    v19 = 4;
LABEL_37:
    v5 = v29;
    if (v43)
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

  v45 = *v42;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A62E354();

  v20 = v66;
  v3 = v68;
  if (v82[0] > 3u || v82[0] <= 1u || v82[0] == 2)
  {
    v46 = sub_24A62F634();

    v47 = 0.698131701;
    if (v46)
    {
      v47 = 0.785398163;
    }
  }

  else
  {

    v47 = 0.785398163;
  }

  v43 = v62;
  v21 = v77;
  if (v41 < v34)
  {
    goto LABEL_34;
  }

  v44 = v45 < v47;
  if (v39 < v35)
  {
    goto LABEL_36;
  }

LABEL_76:
  sub_24A50D6A4(v11, &qword_27EF4FA60, &qword_24A634BB8);
  if (v43 > 1u)
  {
    v19 = 1;
    v5 = v29;
  }

  else
  {
    if (v44)
    {
      v19 = 3;
    }

    else
    {
      v19 = 2;
    }

    v5 = v29;
    if (!v62)
    {
LABEL_38:
      sub_24A584370();
      swift_getKeyPath();
      swift_getKeyPath();
      *v82 = v64;

      sub_24A62E364();
      sub_24A58A088();
    }
  }

LABEL_39:
  v48 = *(v21 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_pendingState);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A62E354();

  if (sub_24A60D6B4(v19, v82[0]))
  {
    if (v48 == 8)
    {
      goto LABEL_47;
    }
  }

  else if (v48 == 8)
  {
    goto LABEL_44;
  }

  if (sub_24A60D6B4(v19, v48))
  {
LABEL_47:
    sub_24A5264B4(v20);
    goto LABEL_50;
  }

LABEL_44:
  if (v19)
  {
    v49 = sub_24A62F634();

    if ((v49 & 1) == 0)
    {
      sub_24A5833C4(v19);
      goto LABEL_47;
    }
  }

  else
  {
  }

  v50 = v69;
  (v76)(v69, 1, 1, v5);
  sub_24A5264B4(v50);
  sub_24A50D6A4(v50, &qword_27EF4FA58, &qword_24A634BA8);
  sub_24A5833C4(v19);
LABEL_50:
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A62E354();

  if (v82[0] == 4)
  {
  }

  else
  {
    v51 = sub_24A62F634();

    if ((v51 & 1) == 0)
    {
      goto LABEL_54;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A62E354();

  if ((sub_24A60D6B4(v82[0], v75) & 1) == 0)
  {
    goto LABEL_64;
  }

LABEL_54:
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A62E354();

  if (v82[0] <= 3u || v82[0] > 5u || v82[0] == 4)
  {
    v52 = sub_24A62F634();

    if ((v52 & 1) == 0)
    {
      goto LABEL_62;
    }
  }

  else
  {
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A62E354();

  if ((sub_24A60D6B4(v82[0], v75) & 1) == 0)
  {
    v59 = OBJC_IVAR____TtC11FMFindingUI26PrecisionVFXViewController_hapticsController;
    swift_beginAccess();
    sub_24A50D63C(v3 + v59, v82, &qword_27EF4FA70, &unk_24A634CE0);
    if (v83)
    {
      sub_24A508AE4(v82, v80);
      sub_24A50D6A4(v82, &qword_27EF4FA70, &unk_24A634CE0);
      sub_24A50A204(v80, v81);
      sub_24A57FDA8();
      goto LABEL_73;
    }

LABEL_74:
    sub_24A50D6A4(v20, &qword_27EF4FA58, &qword_24A634BA8);
    v56 = &qword_27EF4FA70;
    v57 = &unk_24A634CE0;
    v58 = v82;
    return sub_24A50D6A4(v58, v56, v57);
  }

LABEL_62:
  v53 = sub_24A583AD8();
  if (v73)
  {
    if (!v53)
    {
LABEL_64:
      v54 = OBJC_IVAR____TtC11FMFindingUI26PrecisionVFXViewController_hapticsController;
      swift_beginAccess();
      sub_24A50D63C(v3 + v54, v82, &qword_27EF4FA70, &unk_24A634CE0);
      if (v83)
      {
        sub_24A508AE4(v82, v80);
        sub_24A50D6A4(v82, &qword_27EF4FA70, &unk_24A634CE0);
        sub_24A50A204(v80, v81);
        v79 = 0u;
        v78 = 0u;
        sub_24A580990(&v78);
LABEL_69:
        sub_24A50D6A4(&v78, &unk_27EF50780, &qword_24A638470);
LABEL_73:
        sub_24A50D6A4(v20, &qword_27EF4FA58, &qword_24A634BA8);
        return sub_24A508C54(v80);
      }

      goto LABEL_74;
    }
  }

  else if (v53)
  {
    v55 = OBJC_IVAR____TtC11FMFindingUI26PrecisionVFXViewController_hapticsController;
    swift_beginAccess();
    sub_24A50D63C(v3 + v55, v82, &qword_27EF4FA70, &unk_24A634CE0);
    if (v83)
    {
      sub_24A508AE4(v82, v80);
      sub_24A50D6A4(v82, &qword_27EF4FA70, &unk_24A634CE0);
      sub_24A50A204(v80, v81);
      v79 = 0u;
      v78 = 0u;
      sub_24A5803DC(&v78);
      goto LABEL_69;
    }

    goto LABEL_74;
  }

  v56 = &qword_27EF4FA58;
  v57 = &qword_24A634BA8;
  v58 = v20;
  return sub_24A50D6A4(v58, v56, v57);
}

uint64_t sub_24A525E8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = sub_24A508FA4(&unk_27EF4FE20, &qword_24A634BA0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v29 - v7;
  v9 = sub_24A508FA4(&qword_27EF4FE50, &qword_24A634BB0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v30 = v29 - v14;
  MEMORY[0x28223BE20](v15);
  v32 = v29 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = v29 - v18;
  sub_24A50D63C(a1, v8, &unk_27EF4FE20, &qword_24A634BA0);
  v20 = *(v10 + 48);
  if (v20(v8, 1, v9) == 1)
  {
    sub_24A50D6A4(v8, &unk_27EF4FE20, &qword_24A634BA0);
LABEL_5:
    sub_24A508FA4(&qword_27EF4FA60, &qword_24A634BB8);
    return swift_storeEnumTagMultiPayload();
  }

  v21 = *(v10 + 32);
  v21(v19, v8, v9);
  sub_24A62DFD4();
  if (v22 < 0.0)
  {
    (*(v10 + 8))(v19, v9);
    goto LABEL_5;
  }

  v29[0] = v21;
  v29[1] = v10 + 32;
  sub_24A62DFD4();
  sub_24A528D20((v31 + OBJC_IVAR____TtC11FMFindingUI26PrecisionVFXViewController_rangeHistory), 3, v23);
  v24 = [objc_opt_self() meters];
  sub_24A50D7EC(0, &qword_27EF4FEA0, 0x277CCAE20);
  sub_24A62DFC4();
  sub_24A584370();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A62E354();

  if (v20(v5, 1, v9))
  {
    (*(v10 + 8))(v19, v9);
    sub_24A50D6A4(v5, &unk_27EF4FE20, &qword_24A634BA0);
  }

  else
  {
    (*(v10 + 16))(v12, v5, v9);
    sub_24A50D6A4(v5, &unk_27EF4FE20, &qword_24A634BA0);
    v25 = sub_24A62DFB4();
    v26 = v30;
    sub_24A62DFE4();

    v27 = *(v10 + 8);
    v27(v12, v9);
    sub_24A62DFD4();
    v27(v26, v9);
    sub_24A62DFD4();
    v27(v19, v9);
  }

  (v29[0])(v33, v32, v9);
  sub_24A508FA4(&qword_27EF4FA60, &qword_24A634BB8);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_24A5263A0(uint64_t a1, char a2)
{
  if (a2)
  {
    return 0;
  }

  v4 = *&a1 * 57.2957795;
  v5 = OBJC_IVAR____TtC11FMFindingUI26PrecisionVFXViewController_angleHistory;
  swift_beginAccess();
  sub_24A528E70((v2 + v5), 3, v4);
  swift_endAccess();
  sub_24A584370();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A62E354();

  sub_24A62E804();
  return a1;
}

uint64_t sub_24A5264B4(uint64_t a1)
{
  v2 = sub_24A508FA4(&unk_27EF4FE20, &qword_24A634BA0);
  MEMORY[0x28223BE20](v2 - 8);
  v43 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v44 = &v37 - v5;
  v6 = sub_24A62E234();
  v41 = *(v6 - 8);
  v42 = v6;
  MEMORY[0x28223BE20](v6);
  v40 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v37 - v9;
  v11 = sub_24A62E264();
  v39 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24A508FA4(&qword_27EF4FA58, &qword_24A634BA8);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v37 - v18;
  v45 = sub_24A508FA4(&qword_27EF4FE50, &qword_24A634BB0);
  v20 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v22 = &v37 - v21;
  sub_24A50D63C(a1, v19, &qword_27EF4FA58, &qword_24A634BA8);
  v23 = sub_24A508FA4(&qword_27EF4FA60, &qword_24A634BB8);
  if ((*(*(v23 - 8) + 48))(v19, 1, v23) == 1)
  {
    goto LABEL_6;
  }

  sub_24A50D63C(v19, v16, &qword_27EF4FA58, &qword_24A634BA8);
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    sub_24A50D6A4(v16, &qword_27EF4FA60, &qword_24A634BB8);
LABEL_6:
    sub_24A584370();
    swift_getKeyPath();
    swift_getKeyPath();
    v46 = 0;
    v47 = 0xE000000000000000;
    sub_24A62E364();
    v31 = &qword_27EF4FA58;
    v32 = &qword_24A634BA8;
    v33 = v19;
    return sub_24A50D6A4(v33, v31, v32);
  }

  v24 = v20;
  v38 = *(v20 + 32);
  v38(v22, v16, v45);
  sub_24A50D6A4(v19, &qword_27EF4FA58, &qword_24A634BA8);
  sub_24A62E254();
  sub_24A62E244();
  (*(v39 + 8))(v13, v11);
  v25 = v40;
  sub_24A62E224();
  sub_24A52941C(&qword_27EF4FA68, MEMORY[0x277CC9688], MEMORY[0x277CC9690]);
  v26 = v42;
  v27 = sub_24A62EBD4();
  v28 = *(v41 + 8);
  v28(v25, v26);
  v28(v10, v26);
  sub_24A584370();
  if (v27)
  {
    v30 = v44;
    v29 = v45;
    v38(v44, v22, v45);
    (*(v24 + 56))(v30, 0, 1, v29);
  }

  else
  {
    v34 = [objc_opt_self() feet];
    v30 = v44;
    v35 = v45;
    sub_24A62DFE4();

    (*(v24 + 8))(v22, v35);
    (*(v24 + 56))(v30, 0, 1, v35);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A50D63C(v30, v43, &unk_27EF4FE20, &qword_24A634BA0);

  sub_24A62E364();
  sub_24A589724();

  v33 = v30;
  v31 = &unk_27EF4FE20;
  v32 = &qword_24A634BA0;
  return sub_24A50D6A4(v33, v31, v32);
}

id sub_24A526B14()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PrecisionVFXViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for PrecisionVFXViewController(uint64_t a1)
{
  result = qword_27EF4FA48;
  if (!qword_27EF4FA48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24A526C9C(uint64_t a1)
{
  result = type metadata accessor for FindingEstimate(319);
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_24A526D74(char a1)
{
  v3 = sub_24A62EA94();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24A62EAD4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A50D7EC(0, &qword_27EF4F9C0, 0x277D85C78);
  v11 = sub_24A62F014();
  v12 = swift_allocObject();
  *(v12 + 16) = v1;
  *(v12 + 24) = a1;
  aBlock[4] = sub_24A5293F8;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A5A8458;
  aBlock[3] = &unk_285DA15F0;
  v13 = _Block_copy(aBlock);
  v14 = v1;

  sub_24A62EAB4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_24A52941C(&qword_27EF4F970, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_24A508FA4(&unk_27EF50510, &unk_24A633E30);
  sub_24A529464();
  sub_24A62F254();
  MEMORY[0x24C21A950](0, v10, v6, v13);
  _Block_release(v13);

  (*(v4 + 8))(v6, v3);
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_24A527040(uint64_t a1, char a2)
{
  sub_24A584370();
  swift_getKeyPath();
  swift_getKeyPath();
  return sub_24A62E364();
}

uint64_t sub_24A5270B8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A62E354();

  if (v2 <= 3u || v2 > 5u || v2 == 4)
  {
    v0 = sub_24A62F634();
  }

  else
  {
    v0 = 1;
  }

  return v0 & 1;
}

uint64_t sub_24A52725C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A62E354();

  if (v9 <= 3u || v9 > 5u || v9 == 4)
  {
    v6 = sub_24A62F634();

    if (v6)
    {
      return result;
    }

    sub_24A584370();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_24A62E354();

    if (!a2)
    {

LABEL_11:
      sub_24A584370();
      swift_getKeyPath();
      swift_getKeyPath();

      return sub_24A62E364();
    }

    if (v9 != a1 || v10 != a2)
    {
      v8 = sub_24A62F634();

      if (v8)
      {
        return result;
      }

      goto LABEL_11;
    }
  }
}

uint64_t sub_24A5274E0(uint64_t a1, uint64_t a2)
{
  sub_24A584370();
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24A62E364();
}

uint64_t sub_24A527570(uint64_t a1)
{
  sub_24A584370();
  swift_getKeyPath();
  swift_getKeyPath();
  return sub_24A62E364();
}

void sub_24A5275E8(uint64_t a1, __int16 *a2)
{
  v5 = OBJC_IVAR____TtC11FMFindingUI26PrecisionVFXViewController_hapticsController;
  swift_beginAccess();
  sub_24A50D63C(v2 + v5, v81, &qword_27EF4FA70, &unk_24A634CE0);
  v6 = v82;
  sub_24A50D6A4(v81, &qword_27EF4FA70, &unk_24A634CE0);
  if (!v6)
  {
    return;
  }

  v7 = type metadata accessor for FMFindingViewState(0);
  v8 = a2 + *(v7 + 32);
  v9 = *(v8 + 24) | (v8[100] << 32);
  v10 = (((*(v8 + 24) & 0xFF000000) - 0x4000000) >> 24);
  if (v10 > 1)
  {
    if (v10 == 2 || v10 == 3)
    {
      return;
    }
  }

  else
  {
    if (!(((*(v8 + 24) & 0xFF000000) - 0x4000000) >> 24))
    {
      sub_24A50D63C(v2 + v5, &v68, &qword_27EF4FA70, &unk_24A634CE0);
      if (v70)
      {
        sub_24A508AE4(&v68, v66);
        sub_24A50D6A4(&v68, &qword_27EF4FA70, &unk_24A634CE0);
        sub_24A50A204(v66, v67);
        sub_24A581E4C();
LABEL_20:
        sub_24A508C54(v66);
        return;
      }

      goto LABEL_138;
    }

    if (v10 == 1)
    {
      return;
    }
  }

  v11 = *a2;
  v12 = (v11 >> 13) & 3;
  if (v12 && (v12 == 1 || (v11 & 0x80000000) == 0))
  {
    return;
  }

  v13 = v2;
  if (*(a2 + *(v7 + 44)))
  {
    goto LABEL_12;
  }

  v65 = v7;
  if ((*(v8 + 24) & 0xFC000000) == 0x4000000 || (*(v8 + 24) & 0xFF0000) != 0x40000)
  {
    goto LABEL_25;
  }

  v23 = v8[40];
  v24 = v8[56];
  v25 = v8[57];
  if (*(v8 + 2) == 1)
  {
    v68 = *v8;
    v69 = 1;
    v70 = *(v8 + 24);
    v71 = v23;
    *v72 = *(v8 + 41);
    *&v72[7] = *(v8 + 6);
    v73 = v24;
    v74 = v25;
    *&v76[14] = *(v8 + 11);
    *v76 = *(v8 + 74);
    v75 = *(v8 + 58);
    v78 = BYTE4(v9);
    v77 = v9;
    sub_24A50D63C(&v68, v66, &qword_27EF4F670, &qword_24A634D70);
    goto LABEL_25;
  }

  if ((v8[40] & 1) == 0)
  {
    if (v8[57])
    {
      goto LABEL_12;
    }

LABEL_25:
    v26 = sub_24A62715C();
    if (v26 <= 1)
    {
      v27 = v2;
    }

    else
    {
      v27 = v2;
      if (v26 == 2)
      {
        v28 = "compassReachMode";
      }

      else
      {
        if (v26 != 3)
        {
          goto LABEL_44;
        }

        v28 = "R_CANT_RECONNECT_ERROR";
      }

      if (0x800000024A63DD40 == (v28 | 0x8000000000000000))
      {

        goto LABEL_41;
      }
    }

    v32 = sub_24A62F634();

    if (v32)
    {
LABEL_41:
      sub_24A50D63C(v27 + v5, &v68, &qword_27EF4FA70, &unk_24A634CE0);
      if (v70)
      {
        sub_24A508AE4(&v68, v66);
        sub_24A50D6A4(&v68, &qword_27EF4FA70, &unk_24A634CE0);
        sub_24A50A204(v66, v67);
        v79 = 0u;
        v80 = 0u;
        sub_24A580B94(&v79);
        v27 = v2;
        sub_24A50D6A4(&v79, &unk_27EF50780, &qword_24A638470);
LABEL_43:
        sub_24A508C54(v66);
LABEL_60:
        v35 = v65;
        goto LABEL_61;
      }

      goto LABEL_59;
    }

LABEL_44:
    v33 = sub_24A62715C();
    if (v33 <= 1)
    {
      if (!v33)
      {

        v27 = v2;
        goto LABEL_60;
      }
    }

    else if (v33 != 2)
    {
      v34 = v33 == 3;
      v27 = v2;
      v35 = v65;
      if (!v34)
      {
LABEL_56:
        if (*(a1 + *(v35 + 32) + 99) << 24 != 83886080)
        {
          sub_24A50D63C(v27 + v5, &v68, &qword_27EF4FA70, &unk_24A634CE0);
          if (v70)
          {
            sub_24A508AE4(&v68, v66);
            sub_24A50D6A4(&v68, &qword_27EF4FA70, &unk_24A634CE0);
            sub_24A50A204(v66, v67);
            sub_24A57F510();
            v27 = v13;
            goto LABEL_43;
          }

LABEL_59:
          sub_24A50D6A4(&v68, &qword_27EF4FA70, &unk_24A634CE0);
          goto LABEL_60;
        }

LABEL_61:
        v37 = *(a1 + *(v35 + 32) + 99) << 24;
        if (v37 == 0x4000000 || (v38 = ((v37 - 0x4000000) >> 24), v38 <= 1) && v38)
        {
          sub_24A50D63C(v27 + v5, &v68, &qword_27EF4FA70, &unk_24A634CE0);
          if (v70)
          {
            sub_24A508AE4(&v68, v66);
            sub_24A50D6A4(&v68, &qword_27EF4FA70, &unk_24A634CE0);
            sub_24A50A204(v66, v67);
            v79 = 0u;
            v80 = 0u;
            sub_24A57FE58(&v79);
LABEL_90:
            sub_24A50D6A4(&v79, &unk_27EF50780, &qword_24A638470);
            goto LABEL_20;
          }

          goto LABEL_138;
        }

        return;
      }

LABEL_55:
      v36 = sub_24A62F634();

      v35 = v65;
      if (v36)
      {
        goto LABEL_61;
      }

      goto LABEL_56;
    }

    v27 = v2;
    goto LABEL_55;
  }

  if ((v8[56] & 1) == 0)
  {
    if (v8[57])
    {
      goto LABEL_12;
    }

    v39 = sub_24A62715C();
    if (v39 <= 1)
    {
      v30 = v2;
    }

    else
    {
      v30 = v2;
      if (v39 == 2)
      {
        v40 = "compassReachMode";
      }

      else
      {
        if (v39 != 3)
        {
          goto LABEL_120;
        }

        v40 = "R_CANT_RECONNECT_ERROR";
      }

      if (0x800000024A63DD40 == (v40 | 0x8000000000000000))
      {
        goto LABEL_116;
      }
    }

    v54 = sub_24A62F634();

    if (v54)
    {
      goto LABEL_118;
    }

LABEL_120:
    v55 = sub_24A62715C();
    if (v55 <= 1)
    {
      if (!v55)
      {

LABEL_135:
        v57 = v2 + v5;
LABEL_136:
        sub_24A50D63C(v57, &v68, &qword_27EF4FA70, &unk_24A634CE0);
        if (v70)
        {
          sub_24A508AE4(&v68, v66);
          sub_24A50D6A4(&v68, &qword_27EF4FA70, &unk_24A634CE0);
          sub_24A50A204(v66, v67);
          sub_24A57F4E4();
          goto LABEL_20;
        }

        goto LABEL_138;
      }
    }

    else if (v55 != 2 && v55 != 3)
    {
      return;
    }

    v64 = sub_24A62F634();

    if ((v64 & 1) == 0)
    {
      return;
    }

    goto LABEL_135;
  }

  if ((v8[57] & 1) == 0)
  {
    v29 = sub_24A62715C();
    if (v29 <= 1)
    {
      v30 = v2;
LABEL_109:
      v51 = sub_24A62F634();

      if ((v51 & 1) == 0)
      {
LABEL_110:
        v52 = sub_24A62715C();
        if (v52 <= 1)
        {
          if (!v52)
          {

            v53 = v2;
LABEL_130:
            v57 = v53 + v5;
            goto LABEL_136;
          }
        }

        else if (v52 != 2)
        {
          if (v52 != 3)
          {
            goto LABEL_131;
          }

          v53 = v2;
LABEL_129:
          v56 = sub_24A62F634();

          if (v56)
          {
            goto LABEL_130;
          }

LABEL_131:
          *&v58 = COERCE_DOUBLE(sub_24A6272B0());
          if (v60)
          {
            return;
          }

          v61 = *&v58;
          v62 = v59;
          sub_24A50D63C(v13 + v5, &v68, &qword_27EF4FA70, &unk_24A634CE0);
          if (v70)
          {
            sub_24A508AE4(&v68, v66);
            sub_24A50D6A4(&v68, &qword_27EF4FA70, &unk_24A634CE0);
            sub_24A50A204(v66, v67);
            *(&v80 + 1) = v65;
            v63 = sub_24A5292E8(&v79);
            sub_24A52934C(a2, v63);
            sub_24A580A00(&v79, v61, v62);
            goto LABEL_90;
          }

          goto LABEL_138;
        }

        v53 = v2;
        goto LABEL_129;
      }

LABEL_118:
      sub_24A50D63C(v30 + v5, &v68, &qword_27EF4FA70, &unk_24A634CE0);
      if (v70)
      {
        sub_24A508AE4(&v68, v66);
        sub_24A50D6A4(&v68, &qword_27EF4FA70, &unk_24A634CE0);
        sub_24A50A204(v66, v67);
        v79 = 0u;
        v80 = 0u;
        sub_24A580B94(&v79);
        goto LABEL_90;
      }

      goto LABEL_138;
    }

    v30 = v2;
    if (v29 == 2)
    {
      v31 = "compassReachMode";
    }

    else
    {
      if (v29 != 3)
      {
        goto LABEL_110;
      }

      v31 = "R_CANT_RECONNECT_ERROR";
    }

    if (0x800000024A63DD40 != (v31 | 0x8000000000000000))
    {
      goto LABEL_109;
    }

LABEL_116:

    goto LABEL_118;
  }

LABEL_12:
  *&v14 = COERCE_DOUBLE(sub_24A627670());
  if ((v16 & 1) == 0)
  {
    v17 = *&v14;
    sub_24A6279B4(v15);
    if ((v18 & 1) == 0)
    {
      v19 = v17;
      sub_24A5843A4();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_24A62E354();

      sub_24A5843A4();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_24A62E354();

      v20 = v68;
      v21 = sub_24A62715C();
      if (v21 > 1)
      {
        if (v21 == 2)
        {
          v22 = "compassReachMode";
        }

        else
        {
          if (v21 != 3)
          {
            if ((v68 & 1) == 0 && v19 > 0.0)
            {
              v42 = 0;
              v41 = 0;
LABEL_86:
              if ((sub_24A5270B8() & 1) != 0 && (v41 & 1) == 0)
              {
                sub_24A50D63C(v2 + v5, &v68, &qword_27EF4FA70, &unk_24A634CE0);
                if (v70)
                {
                  sub_24A508AE4(&v68, v66);
                  sub_24A50D6A4(&v68, &qword_27EF4FA70, &unk_24A634CE0);
                  sub_24A50A204(v66, v67);
                  v79 = 0u;
                  v80 = 0u;
                  sub_24A5811D4(&v79);
                  goto LABEL_90;
                }

                goto LABEL_138;
              }

              goto LABEL_92;
            }

            v41 = 0;
LABEL_85:
            v42 = v68 ^ 1u;
            goto LABEL_86;
          }

          v22 = "R_CANT_RECONNECT_ERROR";
        }

        if (0x800000024A63DD40 == (v22 | 0x8000000000000000))
        {

          if ((v68 & 1) == 0)
          {
            v42 = (v19 <= 0.0) & (v68 ^ 1u);
            sub_24A5270B8();
            v41 = 1;
LABEL_92:
            sub_24A50D63C(v2 + v5, &v68, &qword_27EF4FA70, &unk_24A634CE0);
            if (v70)
            {
              sub_24A508AE4(&v68, v66);
              sub_24A50D6A4(&v68, &qword_27EF4FA70, &unk_24A634CE0);
              v43 = sub_24A50A204(v66, v67);
              v44 = *v43;
              v45 = *v43 + OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_tapHapticPlaybackPeriod;
              *v45 = 0;
              *(v45 + 8) = 1;
              v79 = 0u;
              v80 = 0u;
              v46 = OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_tapHapticContext;
              swift_beginAccess();
              sub_24A529578(&v79, v44 + v46, &unk_27EF50780, &qword_24A638470);
              swift_endAccess();
              if (v41)
              {
                *(v44 + OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_hasPlayedArmsReachHaptic) = 1;
              }

              if (1.0 - v19 <= 2.22044605e-16)
              {
                v48 = OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playArmsReachHapticWorkItem;
                if (*(v44 + OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playArmsReachHapticWorkItem))
                {

                  sub_24A62EB34();
                }

                *(v44 + v48) = 0;

                *(v44 + OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_hasPlayedArmsReachHaptic) = 0;
              }

              else
              {
                v47 = OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playNearbyHapticWorkItem;
                if (*(v44 + OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playNearbyHapticWorkItem))
                {

                  sub_24A62EB34();
                }

                *(v44 + v47) = 0;

                v49 = OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_hasPlayedArmsReachHaptic;
                if ((*(v44 + OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_hasPlayedArmsReachHaptic) & 1) == 0)
                {
                  sub_24A57F864(1);
                  *(v44 + v49) = 1;
                }

                if ((v20 & 1) == 0)
                {
                  sub_24A57FC4C();
                  v50 = v19;
                  sub_24A57CC58(v42, v50);
                }
              }

              goto LABEL_20;
            }

LABEL_138:
            sub_24A50D6A4(&v68, &qword_27EF4FA70, &unk_24A634CE0);
            return;
          }

          v41 = 1;
          goto LABEL_85;
        }
      }

      v41 = sub_24A62F634();

      if ((v68 & 1) == 0 && v19 > 0.0)
      {
        v42 = 0;
        goto LABEL_86;
      }

      goto LABEL_85;
    }
  }
}

uint64_t sub_24A5284B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v44 = a1;
  v45 = a2;
  v43 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v39 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v38 - v5;
  v42 = v7;
  v40 = v8;
  v9 = type metadata accessor for PrecisionVFXViewController.Result(0, v7, v8, v8);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v38 - v14;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v17 = *(TupleTypeMetadata2 - 8);
  v18 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v20 = &v38 - v19;
  v22 = *(v21 + 48);
  v41 = v10;
  v23 = *(v10 + 16);
  v23(&v38 - v19, v44, v9, v18);
  (v23)(&v20[v22], v45, v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    (v23)(v15, v20, v9);
    if (!swift_getEnumCaseMultiPayload())
    {
      v31 = v43;
      v32 = &v20[v22];
      v33 = v6;
      v34 = v6;
      v35 = v42;
      (*(v43 + 32))(v34, v32, v42);
      v29 = sub_24A62EBD4();
      v36 = *(v31 + 8);
      v36(v33, v35);
      v36(v15, v35);
      goto LABEL_12;
    }

    v12 = v15;
LABEL_7:
    (*(v43 + 8))(v12, v42);
    goto LABEL_10;
  }

  if (EnumCaseMultiPayload == 1)
  {
    (v23)(v12, v20, v9);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v25 = v42;
      v26 = v43;
      v27 = &v20[v22];
      v28 = v39;
      (*(v43 + 32))(v39, v27, v42);
      v29 = sub_24A62EBD4();
      v30 = *(v26 + 8);
      v30(v28, v25);
      v30(v12, v25);
LABEL_12:
      v17 = v41;
      goto LABEL_13;
    }

    goto LABEL_7;
  }

  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v29 = 1;
    goto LABEL_12;
  }

LABEL_10:
  v29 = 0;
  v9 = TupleTypeMetadata2;
LABEL_13:
  (*(v17 + 8))(v20, v9);
  return v29 & 1;
}

void sub_24A5288B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_24A508FA4(&qword_27EF4FA80, &qword_24A634D40);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15[-v5 - 8];
  v7 = type metadata accessor for FMFindingViewState(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v15[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    sub_24A50D63C(a2, v15, &unk_27EF50780, &qword_24A638470);
    if (v16)
    {
      v13 = swift_dynamicCast();
      (*(v8 + 56))(v6, v13 ^ 1u, 1, v7);
      if ((*(v8 + 48))(v6, 1, v7) != 1)
      {
        sub_24A529028(v6, v10);
        sub_24A6272B0();
        sub_24A529278(v10, type metadata accessor for FMFindingViewState);
LABEL_7:

        return;
      }
    }

    else
    {
      sub_24A50D6A4(v15, &unk_27EF50780, &qword_24A638470);
      (*(v8 + 56))(v6, 1, 1, v7);
    }

    sub_24A50D6A4(v6, &qword_27EF4FA80, &qword_24A634D40);
    goto LABEL_7;
  }
}

void sub_24A528AF0(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A62E354();

  *a2 = v3;
}

uint64_t sub_24A528B74(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24A62E364();
}

void sub_24A528BEC(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A62E354();

  *a2 = v3;
  a2[1] = v4;
}

uint64_t sub_24A528C70(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24A62E364();
}

double sub_24A528D20(char **a1, int64_t a2, double a3)
{
  v6 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = sub_24A61760C(0, *(v6 + 2) + 1, 1, v6);
  }

  v8 = *(v6 + 2);
  v7 = *(v6 + 3);
  if (v8 >= v7 >> 1)
  {
    v6 = sub_24A61760C((v7 > 1), v8 + 1, 1, v6);
  }

  *(v6 + 2) = v8 + 1;
  *&v6[8 * v8 + 32] = a3;
  *a1 = v6;
  if (v8 >= a2)
  {
    sub_24A575774(0, 1);
    v6 = *a1;
  }

  v9 = *(v6 + 2);
  if (v9 >= 2)
  {
    if (v9 >= 4)
    {
      v10 = v9 & 0x7FFFFFFFFFFFFFFCLL;
      v12 = (v6 + 48);
      v11 = 0.0;
      v13 = v9 & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        v11 = v11 + *(v12 - 2) + *(v12 - 1) + *v12 + v12[1];
        v12 += 4;
        v13 -= 4;
      }

      while (v13);
      if (v9 == v10)
      {
        return v11 / v9;
      }
    }

    else
    {
      v10 = 0;
      v11 = 0.0;
    }

    v14 = v9 - v10;
    v15 = &v6[8 * v10 + 32];
    do
    {
      v16 = *v15++;
      v11 = v11 + v16;
      --v14;
    }

    while (v14);
    return v11 / v9;
  }

  return a3;
}

double sub_24A528E70(char **a1, int64_t a2, long double a3)
{
  v6 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = sub_24A61760C(0, *(v6 + 2) + 1, 1, v6);
  }

  v8 = *(v6 + 2);
  v7 = *(v6 + 3);
  if (v8 >= v7 >> 1)
  {
    v6 = sub_24A61760C((v7 > 1), v8 + 1, 1, v6);
  }

  *(v6 + 2) = v8 + 1;
  *&v6[8 * v8 + 32] = a3;
  *a1 = v6;
  if (v8 >= a2)
  {
    sub_24A575774(0, 1);
    v6 = *a1;
  }

  v9 = *(v6 + 2);
  if (v9 >= 2)
  {
    v10 = (v6 + 32);
    v11 = 0.0;
    v12 = 0.0;
    do
    {
      v13 = *v10++;
      v14 = __sincos_stret(v13);
      v11 = v11 + v14.__cosval;
      v12 = v12 + v14.__sinval;
      --v9;
    }

    while (v9);
    a3 = atan2(v12, v11);
  }

  return round(a3 * 180.0 / 3.14159265);
}

uint64_t sub_24A528F98(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_24A528FE8()
{
  MEMORY[0x24C21BCD0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A529028(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMFindingViewState(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24A52908C()
{
  result = qword_27EF4FAA0;
  if (!qword_27EF4FAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF4FAA0);
  }

  return result;
}

void sub_24A5290E0()
{
  v1 = v0 + OBJC_IVAR____TtC11FMFindingUI26PrecisionVFXViewController_connectivityState;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0u;
  *(v1 + 100) = 0;
  *(v1 + 96) = 0x4000000;
  v2 = v0 + OBJC_IVAR____TtC11FMFindingUI26PrecisionVFXViewController_estimate;
  v3 = type metadata accessor for FindingEstimate(0);
  v4 = v3[5];
  v5 = sub_24A508FA4(&qword_27EF4FE50, &qword_24A634BB0);
  (*(*(v5 - 8) + 56))(v2 + v4, 1, 1, v5);
  *v2 = 0;
  *(v2 + 8) = 1;
  *(v2 + v3[6]) = 0;
  *(v2 + v3[7]) = 5;
  v6 = v2 + v3[8];
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC11FMFindingUI26PrecisionVFXViewController_rangeHistory) = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC11FMFindingUI26PrecisionVFXViewController_angleHistory) = v7;
  v8 = v0 + OBJC_IVAR____TtC11FMFindingUI26PrecisionVFXViewController_hapticsController;
  *v8 = 0u;
  *(v8 + 16) = 0u;
  *(v8 + 32) = 0;
  sub_24A62F444();
  __break(1u);
}

void sub_24A529240(uint64_t result, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13)
{
  if ((a13 | 0x2000000u) >> 25 != 3)
  {
    sub_24A508BE4(result, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, SBYTE2(a13));
  }
}

uint64_t sub_24A529278(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t *sub_24A5292E8(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_24A52934C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMFindingViewState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A5293C0()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_24A529404(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A52941C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24A529464()
{
  result = qword_27EF4F980;
  if (!qword_27EF4F980)
  {
    sub_24A50E1E0(&unk_27EF50510, &unk_24A633E30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF4F980);
  }

  return result;
}

unint64_t sub_24A529524()
{
  result = qword_27EF4FAC8[0];
  if (!qword_27EF4FAC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EF4FAC8);
  }

  return result;
}

uint64_t sub_24A529578(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_24A508FA4(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_24A5295F8(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24A52965C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_23;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 253) >> v5) + 1;
    if (HIWORD(v8))
    {
      v6 = *(a1 + v4);
      if (!v6)
      {
        goto LABEL_23;
      }

      goto LABEL_12;
    }

    if (v8 > 0xFF)
    {
      v6 = *(a1 + v4);
      if (!*(a1 + v4))
      {
        goto LABEL_23;
      }

      goto LABEL_12;
    }

    if (v8 < 2)
    {
LABEL_23:
      v10 = *(a1 + v3);
      if (v10 >= 3)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v6 = *(a1 + v4);
  if (!*(a1 + v4))
  {
    goto LABEL_23;
  }

LABEL_12:
  v9 = (v6 - 1) << v5;
  if (v4 > 3)
  {
    v9 = 0;
  }

  if (v4)
  {
    if (v4 > 3)
    {
      LODWORD(v4) = 4;
    }

    if (v4 > 2)
    {
      if (v4 == 3)
      {
        LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v4) = *a1;
      }
    }

    else if (v4 == 1)
    {
      LODWORD(v4) = *a1;
    }

    else
    {
      LODWORD(v4) = *a1;
    }
  }

  return (v4 | v9) + 254;
}

void sub_24A529768(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  v6 = v5 + 1;
  if (a3 < 0xFE)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 253) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFD)
  {
    v8 = a2 - 254;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_37:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_37;
          }
        }

LABEL_34:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_37;
    }

    goto LABEL_34;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_23:
      a1[v5] = -a2;
      return;
    }

LABEL_22:
    if (!a2)
    {
      return;
    }

    goto LABEL_23;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_22;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_23;
  }
}

unint64_t sub_24A529930()
{
  result = qword_27EF4FB50;
  if (!qword_27EF4FB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF4FB50);
  }

  return result;
}

double sub_24A529B1C(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A62E354();

  return v3;
}

uint64_t sub_24A529C50(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A62E354();

  return v3;
}

uint64_t sub_24A529CBC()
{
  v1 = OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator__performPump;
  v2 = sub_24A508FA4(&qword_27EF4FC70, &qword_24A637600);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator__showAirTagVideo, v2);
  v3(v0 + OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator__isPlayingAirTagVideo, v2);
  v3(v0 + OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator__checkMarkWriteOn, v2);
  v3(v0 + OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator__isCheckMarkVisible, v2);
  v3(v0 + OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator__isRingADot, v2);
  v3(v0 + OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator__isVFXVisible, v2);
  v3(v0 + OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator__isConeVisible, v2);
  v3(v0 + OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator__isArrowVisible, v2);
  v3(v0 + OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator__isArcFull, v2);
  v3(v0 + OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator__isFillPuckVisible, v2);
  v3(v0 + OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator__isCircleArcVisible, v2);
  v3(v0 + OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator__showGreenBackground, v2);
  v3(v0 + OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator__isPuckVisible, v2);
  v3(v0 + OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator__isPulseActive, v2);
  v4 = OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator__pulseNearProgress;
  v5 = sub_24A508FA4(&qword_27EF4FC68, qword_24A635960);
  v10 = *(*(v5 - 8) + 8);
  v10(v0 + v4, v5);
  v6 = OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator__nearRingOpacity;
  v7 = sub_24A508FA4(&qword_27EF4FC60, &unk_24A637620);
  v8 = *(*(v7 - 8) + 8);
  v8(v0 + v6, v7);
  v8(v0 + OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator__nearRingScale, v7);
  v10(v0 + OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator__puckParticleDistance, v5);
  v3(v0 + OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator__isPuckLineWidthScale, v2);
  v3(v0 + OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator__isPuckParticleScale, v2);
  v3(v0 + OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator__isPuckParticlePosition, v2);
  v3(v0 + OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator__requiresArrow, v2);
  v3(v0 + OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator__pushBackArrow, v2);
  v3(v0 + OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator__isGrayRingForwardDotVisible, v2);
  v3(v0 + OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator__isArcBetweenVisible, v2);
  v3(v0 + OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator__puckInCorrectDirection, v2);
  v3(v0 + OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator__isArcDiameter, v2);
  swift_weakDestroy();
  return v0;
}

uint64_t sub_24A52A0C8()
{
  sub_24A529CBC();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PFAnimationCoordinator(uint64_t a1)
{
  result = qword_27EF4FC38;
  if (!qword_27EF4FC38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24A52A174(uint64_t a1)
{
  sub_24A52A2FC(319, &qword_27EF4FC48, MEMORY[0x277D839B0]);
  if (v1 <= 0x3F)
  {
    sub_24A52A2FC(319, &qword_27EF4FC50, MEMORY[0x277D839F8]);
    if (v2 <= 0x3F)
    {
      sub_24A52A2FC(319, &qword_27EF4FC58, MEMORY[0x277D85048]);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_24A52A2FC(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_24A62E374();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_24A52A354@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for PFAnimationCoordinator(0);
  result = sub_24A62E334();
  *a2 = result;
  return result;
}

uint64_t sub_24A52A3F8(uint64_t a1, char a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24A62E364();
}

void sub_24A52A474(void (*a1)(void), int a2, dispatch_group_t group)
{
  if (a1)
  {
    a1();
  }

  if (group)
  {

    dispatch_group_leave(group);
  }
}

uint64_t sub_24A52A4C8(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24A62E364();
}

void sub_24A52A538(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, NSObject *a4)
{
  swift_getKeyPath();
  swift_getKeyPath();

  v6 = sub_24A62E364();
  if (a2)
  {
    a2(v6);
  }

  if (a4)
  {
    dispatch_group_leave(a4);
  }
}

uint64_t sub_24A52A5D8(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4)
{
  v17 = a1;
  v18 = sub_24A62E654();
  v8 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A62E354();

  v11 = v19;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24A62E354();

  v12 = v19;
  if (a2)
  {
    dispatch_group_enter(a2);
  }

  v13 = sub_24A62E644();
  MEMORY[0x28223BE20](v13);
  *(&v17 - 4) = v4;
  *(&v17 - 3) = (1.0 - v11) * 0.4 + 0.1;
  *(&v17 - 2) = v12 * 3.5 + 1.0;
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = a2;
  sub_24A519360(a3, a4);
  v15 = a2;
  sub_24A62E3E4();

  return (*(v8 + 8))(v10, v18);
}

uint64_t sub_24A52A860(NSObject *a1, uint64_t a2, uint64_t a3, double a4)
{
  v9 = sub_24A62E654();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_24A62E354();

    if (LOBYTE(v19) == 4)
    {
    }

    else
    {
      v14 = sub_24A62F634();

      if ((v14 & 1) == 0)
      {
        return result;
      }
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v19 = a4;

    sub_24A62E364();
    if (a1)
    {
      dispatch_group_enter(a1);
    }

    if (qword_27EF4EB10 != -1)
    {
      swift_once();
    }

    v15 = sub_24A62E644();
    MEMORY[0x28223BE20](v15);
    *(&v18 - 4) = v4;
    *(&v18 - 3) = a4 * 3.5 + 1.0;
    *(&v18 - 2) = (1.0 - a4) * 0.4 + 0.1;
    v16 = swift_allocObject();
    v16[2] = a2;
    v16[3] = a3;
    v16[4] = a1;
    sub_24A519360(a2, a3);
    v17 = a1;
    sub_24A62E3E4();

    return (*(v10 + 8))(v12, v9);
  }

  return result;
}

uint64_t sub_24A52AC2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7)
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_24A62E364();
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24A62E364();
}

uint64_t sub_24A52ACF8(uint64_t a1, char a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24A62E364();
}

void sub_24A52AD74(uint64_t a1, char a2, void (*a3)(uint64_t), uint64_t a4, NSObject *a5, uint64_t a6, uint64_t a7)
{
  swift_getKeyPath();
  swift_getKeyPath();

  v9 = sub_24A62E364();
  if (a3)
  {
    a3(v9);
  }

  if (a5)
  {
    dispatch_group_leave(a5);
  }
}

void sub_24A52AE18(char a1, uint64_t a2, NSObject *a3, uint64_t a4, uint64_t a5)
{
  v48 = a5;
  v47 = a4;
  v49 = a3;
  v7 = sub_24A62EA94();
  v54 = *(v7 - 8);
  v55 = v7;
  MEMORY[0x28223BE20](v7);
  v52 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_24A62EAD4();
  v51 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v50 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_24A62E984();
  v44 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PFVFXAnimation(0);
  MEMORY[0x28223BE20](v12);
  v14 = (&v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_24A62E654();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = dispatch_group_create();
  dispatch_group_enter(v19);
  sub_24A62E644();
  v46 = v5;
  v56 = v5;
  v57 = a1;
  *(swift_allocObject() + 16) = v19;
  v20 = v19;
  sub_24A62E3E4();

  (*(v16 + 8))(v18, v15);
  dispatch_group_enter(v20);
  if (a1)
  {
    v21 = 1.0;
  }

  else
  {
    v21 = 0.0;
  }

  v22 = objc_opt_self();
  [v22 begin];
  if (qword_27EF4EC90 != -1)
  {
    swift_once();
  }

  v23 = sub_24A506EB8(v12, qword_27EF5CAA8);
  sub_24A5461E8(v23, v14);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = v14[1];
  }

  else
  {
    v25 = v44;
    v26 = v45;
    (*(v44 + 32))(v11, v14, v45);
    sub_24A62E934();
    v24 = v27;
    (*(v25 + 8))(v11, v26);
  }

  [v22 setDuration_];
  v28 = sub_24A6268BC();
  [v22 setTimingFunction_];

  v29 = swift_allocObject();
  *(v29 + 16) = v20;
  v63 = sub_24A547DB0;
  v64 = v29;
  aBlock = MEMORY[0x277D85DD0];
  v60 = 1107296256;
  v61 = sub_24A5A8458;
  v62 = &unk_285DA2168;
  v30 = _Block_copy(&aBlock);
  v31 = v20;

  [v22 setCompletionBlock_];
  _Block_release(v30);
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v33 = *(Strong + OBJC_IVAR____TtC11FMFindingUI10VFXManager_mainEmitter);

    v62 = MEMORY[0x277D83A90];
    *&aBlock = v21;
    sub_24A583BD0(7, &aBlock);

    sub_24A50EC28(&aBlock);
  }

  [v22 commit];
  v34 = v49;
  if (v49)
  {
    dispatch_group_enter(v49);
  }

  sub_24A545E8C();
  v35 = sub_24A62F014();
  v36 = swift_allocObject();
  v37 = v47;
  v38 = v48;
  v36[2] = v47;
  v36[3] = v38;
  v36[4] = v34;
  v63 = sub_24A547994;
  v64 = v36;
  aBlock = MEMORY[0x277D85DD0];
  v60 = 1107296256;
  v61 = sub_24A5A8458;
  v62 = &unk_285DA21B8;
  v39 = _Block_copy(&aBlock);
  sub_24A519360(v37, v38);
  v40 = v34;
  v41 = v50;
  sub_24A62EAB4();
  v58 = MEMORY[0x277D84F90];
  sub_24A545F60();
  sub_24A508FA4(&unk_27EF50510, &unk_24A633E30);
  sub_24A529464();
  v42 = v52;
  v43 = v55;
  sub_24A62F254();
  sub_24A62EFB4();
  _Block_release(v39);

  (*(v54 + 8))(v42, v43);
  (*(v51 + 8))(v41, v53);
}

id sub_24A52B554(NSObject *a1, uint64_t a2, uint64_t a3)
{
  v31 = a2;
  v32 = a3;
  v5 = sub_24A62E984();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PFVFXAnimation(0);
  MEMORY[0x28223BE20](v9);
  v11 = (&v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1)
  {
    dispatch_group_enter(a1);
  }

  if (!swift_weakLoadStrong() || (v12 = sub_24A584370(), , v13 = *(v12 + OBJC_IVAR____TtCC11FMFindingUI10VFXManager6Values_azimuthVelocity), , v14 = 3.0, v13 >= 0.0))
  {
    v14 = -3.0;
  }

  v33 = v3;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v16 = *(Strong + OBJC_IVAR____TtC11FMFindingUI10VFXManager_mainEmitter);

    v35 = MEMORY[0x277D83A90];
    *aBlock = v14;
    sub_24A583BD0(1, aBlock);

    sub_24A50EC28(aBlock);
  }

  v17 = objc_opt_self();
  [v17 begin];
  if (qword_27EF4EC98 != -1)
  {
    swift_once();
  }

  v18 = sub_24A506EB8(v9, qword_27EF5CAC0);
  sub_24A5461E8(v18, v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = v11[1];
  }

  else
  {
    (*(v6 + 32))(v8, v11, v5);
    sub_24A62E934();
    v19 = v20;
    (*(v6 + 8))(v8, v5);
  }

  [v17 setDuration_];
  v21 = sub_24A6268BC();
  [v17 setTimingFunction_];

  v22 = swift_allocObject();
  v24 = v31;
  v23 = v32;
  v22[2] = v31;
  v22[3] = v23;
  v22[4] = a1;
  v36 = sub_24A547994;
  v37 = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A5A8458;
  v35 = &unk_285DA2AC8;
  v25 = _Block_copy(aBlock);
  sub_24A519360(v24, v23);
  v26 = a1;

  [v17 setCompletionBlock_];
  _Block_release(v25);
  v27 = swift_weakLoadStrong();
  if (v27)
  {
    v28 = *(v27 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_mainEmitter);

    v35 = MEMORY[0x277D839F8];
    aBlock[0] = 0;
    sub_24A583BD0(1, aBlock);

    sub_24A50EC28(aBlock);
  }

  return [v17 commit];
}

uint64_t sub_24A52B95C(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24A62E364();
}

void sub_24A52B9D4(NSObject *a1, char a2, uint64_t a3, void (*a4)(__n128), uint64_t a5)
{
  v10 = sub_24A62E654();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    if (qword_27EF4EB20 != -1)
    {
      swift_once();
    }

    if (qword_27EF4EB28 != -1)
    {
      swift_once();
    }

    if (a1)
    {
      dispatch_group_enter(a1);
    }

    swift_retain_n();
    v15 = sub_24A62E644();
    v18[0] = v18;
    MEMORY[0x28223BE20](v15);
    v18[-2] = a3;
    LOBYTE(v18[-1]) = 0;
    v16 = swift_allocObject();
    *(v16 + 16) = a1;
    *(v16 + 24) = 0;
    *(v16 + 32) = a3;
    *(v16 + 40) = a4;
    *(v16 + 48) = a5;
    v17 = a1;

    sub_24A519360(a4, a5);
    sub_24A62E3E4();

    (*(v11 + 8))(v14, v10);
  }

  else if (a4)
  {
    a4(v12);
  }

  if (a1)
  {
    dispatch_group_leave(a1);
  }
}

double sub_24A52BC40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a4;
  v5 = a2;
  v6 = a1;
  v7 = sub_24A62EA94();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_24A62EAD4();
  v11 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    v22 = v8;
    v17 = dispatch_group_create();
    if (v6 > 2u)
    {
      if (v6 - 4 >= 2)
      {
        if (v6 == 3)
        {
          sub_24A538760(v5, v17, v16);
        }
      }

      else
      {
        sub_24A53D71C(v6, v5, v17, v16);
      }
    }

    else if (v6)
    {
      if (v6 == 1)
      {
        sub_24A530424(v5, v17, v16);
      }

      else if (v6 == 2)
      {
        sub_24A5344A4(v5, v17, v16);
      }
    }

    else
    {
      sub_24A52BFA4(v5, v17, v16);
    }

    sub_24A545E8C();
    v18 = sub_24A62F014();
    v19 = swift_allocObject();
    v20 = v23;
    *(v19 + 16) = a3;
    *(v19 + 24) = v20;
    aBlock[4] = sub_24A545F18;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A5A8458;
    aBlock[3] = &unk_285DA1768;
    v21 = _Block_copy(aBlock);
    sub_24A519360(a3, v20);
    sub_24A62EAB4();
    v25 = MEMORY[0x277D84F90];
    sub_24A545F60();
    sub_24A508FA4(&unk_27EF50510, &unk_24A633E30);
    sub_24A529464();
    sub_24A62F254();
    sub_24A62EFB4();
    _Block_release(v21);

    (*(v22 + 8))(v10, v7);
    (*(v11 + 8))(v13, v24);
  }

  return result;
}

uint64_t sub_24A52BFA4(int a1, NSObject *a2, uint64_t a3)
{
  v4 = v3;
  v377 = a1;
  v380 = sub_24A62E984();
  v379 = *(v380 - 8);
  MEMORY[0x28223BE20](v380);
  v378 = &v362 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v389 = type metadata accessor for PFVFXAnimation(0);
  MEMORY[0x28223BE20](v389);
  v368 = &v362 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v367 = &v362 - v10;
  MEMORY[0x28223BE20](v11);
  v366 = &v362 - v12;
  MEMORY[0x28223BE20](v13);
  v364 = &v362 - v14;
  MEMORY[0x28223BE20](v15);
  v365 = &v362 - v16;
  MEMORY[0x28223BE20](v17);
  v363 = &v362 - v18;
  MEMORY[0x28223BE20](v19);
  v362 = &v362 - v20;
  MEMORY[0x28223BE20](v21);
  v376 = &v362 - v22;
  MEMORY[0x28223BE20](v23);
  v395 = (&v362 - v24);
  MEMORY[0x28223BE20](v25);
  v375 = &v362 - v26;
  v394 = sub_24A62EA94();
  v398 = *(v394 - 8);
  MEMORY[0x28223BE20](v394);
  v392 = &v362 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v393 = sub_24A62EAD4();
  v397 = *(v393 - 8);
  MEMORY[0x28223BE20](v393);
  v391 = &v362 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v388 = sub_24A62EAF4();
  v399 = *(v388 - 1);
  MEMORY[0x28223BE20](v388);
  v30 = (&v362 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v31);
  v387 = &v362 - v32;
  v404 = sub_24A62E654();
  v33 = *(v404 - 8);
  MEMORY[0x28223BE20](v404);
  v35 = &v362 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v370 = a3;
  v369 = OBJC_IVAR____TtC11FMFindingUI10VFXManager_vfxIsArcFullRing;
  *(a3 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_vfxIsArcFullRing) = 0;
  if (qword_27EF4EC10 != -1)
  {
    swift_once();
  }

  dispatch_group_enter(a2);
  v36 = sub_24A62E644();
  MEMORY[0x28223BE20](v36);
  *(&v362 - 2) = v3;
  *(&v362 - 8) = 0;
  v37 = swift_allocObject();
  v37[2] = 0;
  v37[3] = 0;
  v37[4] = a2;
  v38 = a2;
  sub_24A62E3E4();
  v390 = 0;

  v400 = *(v33 + 8);
  v401 = v33 + 8;
  v396 = v35;
  v400(v35, v404);
  dispatch_group_enter(v38);
  v381 = sub_24A545E8C();
  v386 = sub_24A62F014();
  sub_24A62EAE4();
  v39 = v387;
  sub_24A62EB54();
  v40 = v399 + 1;
  isa = v399[1].isa;
  v374 = v30;
  v42 = v388;
  (isa)(v30, v388);
  v43 = swift_allocObject();
  *(v43 + 16) = v4;
  *(v43 + 24) = 0;
  *(v43 + 32) = 0;
  *(v43 + 40) = 0;
  v402 = a2;
  *(v43 + 48) = a2;
  v410 = sub_24A545FE8;
  v411 = v43;
  aBlock = MEMORY[0x277D85DD0];
  v407 = 1107296256;
  v408 = sub_24A5A8458;
  v409 = &unk_285DA17E0;
  v44 = _Block_copy(&aBlock);
  v372 = v38;
  v403 = v4;

  v45 = v391;
  sub_24A62EAB4();
  aBlock = MEMORY[0x277D84F90];
  v46 = sub_24A545F60();
  v47 = sub_24A508FA4(&unk_27EF50510, &unk_24A633E30);
  v48 = sub_24A529464();
  v49 = v392;
  v383 = v47;
  v382 = v48;
  v50 = v394;
  v384 = v46;
  sub_24A62F254();
  v51 = v386;
  MEMORY[0x24C21A910](v39, v45, v49, v44);
  _Block_release(v44);

  v52 = *(v398 + 8);
  v398 += 8;
  v385 = v52;
  v52(v49, v50);
  v53 = *(v397 + 8);
  v397 += 8;
  v386 = v53;
  v53(v45, v393);
  v373 = isa;
  (isa)(v39, v42);
  v54 = v404;
  if (qword_27EF4EC00 != -1)
  {
    swift_once();
  }

  v399 = v40;
  v55 = v372;
  dispatch_group_enter(v372);
  v56 = v396;
  v57 = sub_24A62E644();
  MEMORY[0x28223BE20](v57);
  *(&v362 - 2) = v403;
  *(&v362 - 8) = 0;
  v58 = swift_allocObject();
  v58[2] = 0;
  v58[3] = 0;
  v59 = v402;
  v58[4] = v402;
  v60 = v55;
  v61 = v390;
  sub_24A62E3E4();

  v62 = v400;
  v400(v56, v54);
  if (qword_27EF4EC18 != -1)
  {
    swift_once();
  }

  v63 = qword_27EF5C980;
  dispatch_group_enter(v60);
  v64 = sub_24A62E644();
  v390 = &v362;
  MEMORY[0x28223BE20](v64);
  v65 = v403;
  *(&v362 - 2) = v403;
  *(&v362 - 8) = 0;
  v66 = swift_allocObject();
  v66[2] = 0;
  v66[3] = 0;
  v66[4] = v59;
  v67 = v60;
  sub_24A62E3E4();

  v62(v56, v404);
  sub_24A52AE18(0, v63, v59, 0, 0);
  if (qword_27EF4EB68 != -1)
  {
    swift_once();
  }

  dispatch_group_enter(v67);
  v68 = sub_24A62E644();
  v390 = &v362;
  MEMORY[0x28223BE20](v68);
  *(&v362 - 2) = v65;
  *(&v362 - 8) = 0;
  v69 = swift_allocObject();
  v69[2] = 0;
  v69[3] = 0;
  v69[4] = v59;
  v70 = v67;
  sub_24A62E3E4();

  v71 = v404;
  v62(v56, v404);
  v72 = v62;
  if (qword_27EF4EAE0 != -1)
  {
    swift_once();
  }

  v73 = qword_27EF5C848;
  dispatch_group_enter(v70);
  v74 = sub_24A62E644();
  v390 = &v362;
  MEMORY[0x28223BE20](v74);
  v75 = v403;
  *(&v362 - 2) = v403;
  *(&v362 - 8) = 0;
  v76 = swift_allocObject();
  v76[2] = 0;
  v76[3] = 0;
  v77 = v402;
  v76[4] = v402;
  v78 = v70;
  sub_24A62E3E4();

  v72(v56, v71);
  dispatch_group_enter(v78);
  v79 = sub_24A62E644();
  v371 = &v362;
  MEMORY[0x28223BE20](v79);
  *(&v362 - 2) = v75;
  *(&v362 - 8) = 0;
  v80 = swift_allocObject();
  v80[2] = 0;
  v80[3] = 0;
  v80[4] = v77;
  v81 = v78;
  v390 = v73;
  sub_24A62E3E4();
  v372 = v61;

  v72(v56, v404);
  dispatch_group_enter(v81);
  v371 = sub_24A62F014();
  v82 = v374;
  sub_24A62EAE4();
  v83 = v387;
  sub_24A62EB54();
  v84 = v388;
  v85 = v373;
  v373(v82, v388);
  v86 = swift_allocObject();
  v87 = v402;
  v88 = v403;
  *(v86 + 16) = v403;
  *(v86 + 24) = 0;
  *(v86 + 32) = 0;
  *(v86 + 40) = 0;
  *(v86 + 48) = v87;
  v410 = sub_24A5460EC;
  v411 = v86;
  aBlock = MEMORY[0x277D85DD0];
  v407 = 1107296256;
  v408 = sub_24A5A8458;
  v409 = &unk_285DA18F8;
  v89 = _Block_copy(&aBlock);
  v374 = v81;

  v90 = v391;
  sub_24A62EAB4();
  aBlock = MEMORY[0x277D84F90];
  v91 = v392;
  v92 = v394;
  sub_24A62F254();
  v93 = v371;
  MEMORY[0x24C21A910](v83, v90, v91, v89);
  _Block_release(v89);

  v385(v91, v92);
  v386(v90, v393);
  v85(v83, v84);
  v94 = v88;
  v95 = v400;
  if (qword_27EF4EB10 != -1)
  {
    swift_once();
  }

  v96 = v374;
  dispatch_group_enter(v374);
  sub_24A62E644();
  v97 = swift_allocObject();
  v97[2] = v94;
  v97[3] = 0;
  v98 = v402;
  v97[4] = 0;
  v97[5] = v98;
  v99 = v96;

  v100 = v372;
  sub_24A62E3E4();

  v101 = v404;
  v95(v56, v404);
  dispatch_group_enter(v99);
  v102 = sub_24A62E644();
  v388 = &v362;
  MEMORY[0x28223BE20](v102);
  *(&v362 - 2) = v94;
  *(&v362 - 8) = 0;
  v103 = swift_allocObject();
  v103[2] = 0;
  v103[3] = 0;
  v103[4] = v98;
  v399 = v99;
  sub_24A62E3E4();

  v95(v56, v101);
  v104 = v56;
  if (qword_27EF4EC08 != -1)
  {
    swift_once();
  }

  v105 = v399;
  dispatch_group_enter(v399);
  v106 = sub_24A62E644();
  MEMORY[0x28223BE20](v106);
  *(&v362 - 2) = v94;
  *(&v362 - 8) = 0;
  v107 = swift_allocObject();
  v107[2] = 0;
  v107[3] = 0;
  v107[4] = v98;
  v108 = v105;
  sub_24A62E3E4();

  v109 = v404;
  v110 = v400;
  v400(v104, v404);
  dispatch_group_enter(v108);
  v111 = sub_24A62E644();
  v399 = &v362;
  MEMORY[0x28223BE20](v111);
  *(&v362 - 2) = v94;
  *(&v362 - 8) = 0;
  v112 = swift_allocObject();
  v112[2] = 0;
  v112[3] = 0;
  v112[4] = v98;
  v113 = v108;
  sub_24A62E3E4();

  v110(v104, v109);
  v114 = v110;
  if (qword_27EF4ECB0 != -1)
  {
    swift_once();
  }

  v115 = v389;
  v116 = sub_24A506EB8(v389, qword_27EF5CB08);
  dispatch_group_enter(v113);
  v117 = objc_opt_self();
  [v117 begin];
  v118 = v375;
  sub_24A5461E8(v116, v375);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v119 = *(v118 + 8);
  }

  else
  {
    v120 = v379;
    v121 = v378;
    v122 = v118;
    v123 = v380;
    (*(v379 + 32))(v378, v122, v380);
    sub_24A62E934();
    v119 = v124;
    (*(v120 + 8))(v121, v123);
  }

  v125 = v402;
  [v117 setDuration_];
  v126 = sub_24A6268BC();
  [v117 setTimingFunction_];

  v127 = swift_allocObject();
  v127[2] = 0;
  v127[3] = 0;
  v127[4] = v125;
  v410 = sub_24A547994;
  v411 = v127;
  aBlock = MEMORY[0x277D85DD0];
  v407 = 1107296256;
  v408 = sub_24A5A8458;
  v409 = &unk_285DA19E8;
  v128 = _Block_copy(&aBlock);
  v129 = v113;

  [v117 setCompletionBlock_];
  _Block_release(v128);
  v399 = OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator_vfxManager;
  Strong = swift_weakLoadStrong();
  v131 = MEMORY[0x277D83A90];
  if (Strong)
  {
    v132 = *(Strong + OBJC_IVAR____TtC11FMFindingUI10VFXManager_mainEmitter);

    v409 = v131;
    LODWORD(aBlock) = 1065353216;
    sub_24A583BD0(11, &aBlock);

    sub_24A50EC28(&aBlock);
  }

  [v117 commit];
  v133 = v396;
  if (qword_27EF4ECA0 != -1)
  {
    swift_once();
  }

  v134 = sub_24A506EB8(v115, qword_27EF5CAD8);
  v135 = v395;
  sub_24A5461E8(v134, v395);
  dispatch_group_enter(v129);
  [v117 begin];
  v136 = v135;
  v137 = v376;
  sub_24A5461E8(v136, v376);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v138 = *(v137 + 8);
  }

  else
  {
    v139 = v379;
    v140 = v378;
    v141 = v137;
    v142 = v380;
    (*(v379 + 32))(v378, v141, v380);
    sub_24A62E934();
    v138 = v143;
    v144 = v139;
    v125 = v402;
    (*(v144 + 8))(v140, v142);
  }

  [v117 setDuration_];
  v145 = sub_24A6268BC();
  [v117 setTimingFunction_];

  v146 = swift_allocObject();
  v146[2] = 0;
  v146[3] = 0;
  v146[4] = v125;
  v410 = sub_24A547994;
  v411 = v146;
  aBlock = MEMORY[0x277D85DD0];
  v407 = 1107296256;
  v408 = sub_24A5A8458;
  v409 = &unk_285DA1A38;
  v147 = _Block_copy(&aBlock);
  v148 = v129;

  [v117 setCompletionBlock_];
  _Block_release(v147);
  v149 = swift_weakLoadStrong();
  if (v149)
  {
    v150 = *(v149 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_mainEmitter);

    v409 = MEMORY[0x277D83A90];
    LODWORD(aBlock) = 0;
    sub_24A583BD0(8, &aBlock);

    sub_24A50EC28(&aBlock);
  }

  [v117 commit];
  result = sub_24A54624C(v395);
  if (v377 <= 3u)
  {
    switch(v377)
    {
      case 1u:
        dispatch_group_enter(v148);
        v173 = sub_24A62E644();
        MEMORY[0x28223BE20](v173);
        *(&v362 - 2) = v403;
        *(&v362 - 8) = 1;
        v174 = swift_allocObject();
        v174[2] = 0;
        v174[3] = 0;
        v174[4] = v125;
        v175 = v148;
        sub_24A62E3E4();

        v114(v133, v404);
        if (qword_27EF4EC78 != -1)
        {
          swift_once();
        }

        v176 = sub_24A506EB8(v389, qword_27EF5CA60);
        dispatch_group_enter(v175);
        [v117 begin];
        v177 = v362;
        sub_24A5461E8(v176, v362);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v178 = *(v177 + 8);
        }

        else
        {
          v236 = v177;
          v237 = v379;
          v238 = v378;
          v239 = v380;
          (*(v379 + 32))(v378, v236, v380);
          sub_24A62E934();
          v178 = v240;
          v241 = v239;
          v125 = v402;
          (*(v237 + 8))(v238, v241);
        }

        [v117 setDuration_];
        v242 = sub_24A6268BC();
        [v117 setTimingFunction_];

        v243 = swift_allocObject();
        v243[2] = 0;
        v243[3] = 0;
        v243[4] = v125;
        v410 = sub_24A547994;
        v411 = v243;
        aBlock = MEMORY[0x277D85DD0];
        v407 = 1107296256;
        v408 = sub_24A5A8458;
        v409 = &unk_285DA1FD8;
        v244 = _Block_copy(&aBlock);
        v245 = v175;

        [v117 setCompletionBlock_];
        _Block_release(v244);
        v246 = swift_weakLoadStrong();
        if (v246)
        {
          v247 = *(v246 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_mainEmitter);

          v409 = MEMORY[0x277D83A90];
          LODWORD(aBlock) = 0;
          sub_24A583BD0(9, &aBlock);

          sub_24A50EC28(&aBlock);
        }

        [v117 commit];
        if (qword_27EF4EBF0 != -1)
        {
          swift_once();
        }

        dispatch_group_enter(v245);
        v248 = sub_24A62E644();
        MEMORY[0x28223BE20](v248);
        *(&v362 - 2) = v403;
        *(&v362 - 8) = 0;
        v249 = swift_allocObject();
        v249[2] = 0;
        v249[3] = 0;
        v249[4] = v402;
        v399 = v245;
        sub_24A62E3E4();

        v114(v133, v404);
        if (qword_27EF4EBA0 != -1)
        {
          swift_once();
        }

        if (qword_27EF4EBA8 != -1)
        {
          swift_once();
        }

        v395 = qword_27EF5C910;
        v250 = dispatch_group_create();
        dispatch_group_enter(v250);
        v251 = sub_24A62E644();
        MEMORY[0x28223BE20](v251);
        v252 = v403;
        *(&v362 - 2) = v403;
        *(&v362 - 8) = 1;
        *(swift_allocObject() + 16) = v250;
        v253 = v250;
        sub_24A62E3E4();

        v254 = v404;
        v114(v396, v404);
        dispatch_group_enter(v253);
        v255 = sub_24A62E644();
        MEMORY[0x28223BE20](v255);
        *(&v362 - 2) = v252;
        *(&v362 - 8) = 1;
        *(swift_allocObject() + 16) = v253;
        v256 = v253;
        sub_24A62E3E4();
        v395 = v100;

        v133 = v396;
        v114(v396, v254);
        v257 = v399;
        dispatch_group_enter(v399);
        v258 = sub_24A62F014();
        v259 = swift_allocObject();
        v259[2] = 0;
        v259[3] = 0;
        v260 = v402;
        v259[4] = v402;
        v410 = sub_24A547994;
        v411 = v259;
        aBlock = MEMORY[0x277D85DD0];
        v407 = 1107296256;
        v408 = sub_24A5A8458;
        v409 = &unk_285DA20A0;
        v261 = _Block_copy(&aBlock);
        v262 = v257;
        v263 = v391;
        sub_24A62EAB4();
        v405 = MEMORY[0x277D84F90];
        v264 = v392;
        v265 = v394;
        sub_24A62F254();
        sub_24A62EFB4();
        _Block_release(v261);

        v385(v264, v265);
        v386(v263, v393);

        if (qword_27EF4EB98 == -1)
        {
          goto LABEL_118;
        }

        break;
      case 2u:
        v228 = v370;
        *(v370 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_vfxTargetArrow) = 0;
        *(v228 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_vfxTargetSphere) = 0;
        dispatch_group_enter(v148);
        v229 = sub_24A62E644();
        MEMORY[0x28223BE20](v229);
        *(&v362 - 2) = v403;
        *(&v362 - 8) = 1;
        v230 = swift_allocObject();
        v230[2] = 0;
        v230[3] = 0;
        v230[4] = v125;
        v231 = v148;
        sub_24A62E3E4();

        v114(v133, v404);
        if (qword_27EF4EC80 != -1)
        {
          swift_once();
        }

        v232 = v389;
        v233 = sub_24A506EB8(v389, qword_27EF5CA78);
        dispatch_group_enter(v231);
        [v117 begin];
        v234 = v363;
        sub_24A5461E8(v233, v363);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v235 = *(v234 + 8);
        }

        else
        {
          v315 = v379;
          v316 = v234;
          v317 = v378;
          v318 = v380;
          (*(v379 + 32))(v378, v316, v380);
          sub_24A62E934();
          v235 = v319;
          v320 = v315;
          v232 = v389;
          v321 = v318;
          v125 = v402;
          (*(v320 + 8))(v317, v321);
        }

        [v117 setDuration_];
        v322 = sub_24A6268BC();
        [v117 setTimingFunction_];

        v323 = swift_allocObject();
        v323[2] = 0;
        v323[3] = 0;
        v323[4] = v125;
        v410 = sub_24A547994;
        v411 = v323;
        aBlock = MEMORY[0x277D85DD0];
        v407 = 1107296256;
        v408 = sub_24A5A8458;
        v409 = &unk_285DA1E20;
        v324 = _Block_copy(&aBlock);
        v325 = v231;

        [v117 setCompletionBlock_];
        _Block_release(v324);
        v326 = swift_weakLoadStrong();
        if (v326)
        {
          v327 = *(v326 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_mainEmitter);

          v409 = MEMORY[0x277D83A90];
          LODWORD(aBlock) = 0;
          sub_24A583BD0(9, &aBlock);

          sub_24A50EC28(&aBlock);
        }

        [v117 commit];
        if (qword_27EF4EC38 != -1)
        {
          swift_once();
        }

        v328 = sub_24A506EB8(v232, qword_27EF5C9A0);
        dispatch_group_enter(v325);
        [v117 begin];
        v329 = v365;
        sub_24A5461E8(v328, v365);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v330 = *(v329 + 8);
        }

        else
        {
          v331 = v379;
          v332 = v329;
          v333 = v378;
          v334 = v380;
          (*(v379 + 32))(v378, v332, v380);
          sub_24A62E934();
          v330 = v335;
          v336 = v334;
          v125 = v402;
          (*(v331 + 8))(v333, v336);
        }

        [v117 setDuration_];
        v337 = sub_24A6268BC();
        [v117 setTimingFunction_];

        v338 = swift_allocObject();
        v338[2] = 0;
        v338[3] = 0;
        v338[4] = v125;
        v410 = sub_24A547994;
        v411 = v338;
        aBlock = MEMORY[0x277D85DD0];
        v407 = 1107296256;
        v408 = sub_24A5A8458;
        v409 = &unk_285DA1E70;
        v339 = _Block_copy(&aBlock);
        v340 = v325;

        [v117 setCompletionBlock_];
        _Block_release(v339);
        v341 = swift_weakLoadStrong();
        if (v341)
        {
          v342 = *(v341 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_mainEmitter);

          v409 = MEMORY[0x277D83A90];
          LODWORD(aBlock) = 0;
          sub_24A583BD0(10, &aBlock);

          sub_24A50EC28(&aBlock);
        }

        [v117 commit];
        if (qword_27EF4EBF0 != -1)
        {
          swift_once();
        }

        dispatch_group_enter(v340);
        v343 = sub_24A62E644();
        MEMORY[0x28223BE20](v343);
        *(&v362 - 2) = v403;
        *(&v362 - 8) = 0;
        v344 = swift_allocObject();
        v344[2] = 0;
        v344[3] = 0;
        v344[4] = v402;
        v399 = v340;
        sub_24A62E3E4();

        v114(v133, v404);
        if (qword_27EF4EBA0 != -1)
        {
          swift_once();
        }

        if (qword_27EF4EBA8 != -1)
        {
          swift_once();
        }

        v395 = qword_27EF5C910;
        v345 = dispatch_group_create();
        dispatch_group_enter(v345);
        v346 = sub_24A62E644();
        MEMORY[0x28223BE20](v346);
        v347 = v403;
        *(&v362 - 2) = v403;
        *(&v362 - 8) = 1;
        *(swift_allocObject() + 16) = v345;
        v348 = v345;
        sub_24A62E3E4();

        v349 = v404;
        v114(v396, v404);
        dispatch_group_enter(v348);
        v350 = sub_24A62E644();
        MEMORY[0x28223BE20](v350);
        *(&v362 - 2) = v347;
        *(&v362 - 8) = 1;
        *(swift_allocObject() + 16) = v348;
        v351 = v348;
        sub_24A62E3E4();
        v395 = v100;

        v133 = v396;
        v114(v396, v349);
        v352 = v399;
        dispatch_group_enter(v399);
        v353 = sub_24A62F014();
        v354 = swift_allocObject();
        v354[2] = 0;
        v354[3] = 0;
        v260 = v402;
        v354[4] = v402;
        v410 = sub_24A547994;
        v411 = v354;
        aBlock = MEMORY[0x277D85DD0];
        v407 = 1107296256;
        v408 = sub_24A5A8458;
        v409 = &unk_285DA1F38;
        v355 = _Block_copy(&aBlock);
        v262 = v352;
        v356 = v391;
        sub_24A62EAB4();
        v405 = MEMORY[0x277D84F90];
        v357 = v392;
        v358 = v394;
        sub_24A62F254();
        sub_24A62EFB4();
        _Block_release(v355);

        v385(v357, v358);
        v386(v356, v393);

        if (qword_27EF4EB98 == -1)
        {
LABEL_118:
          dispatch_group_enter(v262);
          v359 = sub_24A62E644();
          MEMORY[0x28223BE20](v359);
          *(&v362 - 2) = v403;
          *(&v362 - 8) = 1;
          v360 = swift_allocObject();
          v360[2] = 0;
          v360[3] = 0;
          v360[4] = v260;
          v361 = v262;
          sub_24A62E3E4();
LABEL_119:
          v172 = v404;
          goto LABEL_120;
        }

        break;
      case 3u:
        v152 = v370;
        *(v370 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_vfxTargetArrow) = 1;
        *(v152 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_vfxTargetSphere) = 0;
        *(v152 + v369) = 1;
        dispatch_group_enter(v148);
        v153 = sub_24A62E644();
        MEMORY[0x28223BE20](v153);
        *(&v362 - 2) = v403;
        *(&v362 - 8) = 1;
        v154 = swift_allocObject();
        v154[2] = 0;
        v154[3] = 0;
        v154[4] = v125;
        v155 = v148;
        sub_24A62E3E4();

        v114(v133, v404);
        if (qword_27EF4EC80 != -1)
        {
          swift_once();
        }

        v156 = v389;
        v157 = sub_24A506EB8(v389, qword_27EF5CA78);
        dispatch_group_enter(v155);
        [v117 begin];
        v158 = v364;
        sub_24A5461E8(v157, v364);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v159 = *(v158 + 8);
        }

        else
        {
          v266 = v379;
          v267 = v158;
          v268 = v378;
          v269 = v380;
          (*(v379 + 32))(v378, v267, v380);
          sub_24A62E934();
          v159 = v270;
          v271 = v266;
          v156 = v389;
          v272 = v269;
          v125 = v402;
          (*(v271 + 8))(v268, v272);
        }

        [v117 setDuration_];
        v273 = sub_24A6268BC();
        [v117 setTimingFunction_];

        v274 = swift_allocObject();
        v274[2] = 0;
        v274[3] = 0;
        v274[4] = v125;
        v410 = sub_24A547994;
        v411 = v274;
        aBlock = MEMORY[0x277D85DD0];
        v407 = 1107296256;
        v408 = sub_24A5A8458;
        v409 = &unk_285DA1C68;
        v275 = _Block_copy(&aBlock);
        v276 = v155;

        [v117 setCompletionBlock_];
        _Block_release(v275);
        v277 = swift_weakLoadStrong();
        if (v277)
        {
          v278 = *(v277 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_mainEmitter);

          v409 = MEMORY[0x277D83A90];
          LODWORD(aBlock) = 0;
          sub_24A583BD0(9, &aBlock);

          sub_24A50EC28(&aBlock);
        }

        [v117 commit];
        if (qword_27EF4EC38 != -1)
        {
          swift_once();
        }

        v279 = sub_24A506EB8(v156, qword_27EF5C9A0);
        dispatch_group_enter(v276);
        [v117 begin];
        v280 = v366;
        sub_24A5461E8(v279, v366);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v281 = *(v280 + 8);
        }

        else
        {
          v282 = v379;
          v283 = v280;
          v284 = v378;
          v285 = v380;
          (*(v379 + 32))(v378, v283, v380);
          sub_24A62E934();
          v281 = v286;
          v287 = v285;
          v125 = v402;
          (*(v282 + 8))(v284, v287);
        }

        [v117 setDuration_];
        v288 = sub_24A6268BC();
        [v117 setTimingFunction_];

        v289 = swift_allocObject();
        v289[2] = 0;
        v289[3] = 0;
        v289[4] = v125;
        v410 = sub_24A547994;
        v411 = v289;
        aBlock = MEMORY[0x277D85DD0];
        v407 = 1107296256;
        v408 = sub_24A5A8458;
        v409 = &unk_285DA1CB8;
        v290 = _Block_copy(&aBlock);
        v395 = v276;

        [v117 setCompletionBlock_];
        _Block_release(v290);
        v291 = swift_weakLoadStrong();
        if (v291)
        {
          v292 = *(v291 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_mainEmitter);

          v409 = MEMORY[0x277D83A90];
          LODWORD(aBlock) = 0;
          sub_24A583BD0(10, &aBlock);

          sub_24A50EC28(&aBlock);
        }

        [v117 commit];
        swift_getKeyPath();
        swift_getKeyPath();
        aBlock = 0xBFE47AE147AE147BLL;

        sub_24A62E364();
        if (qword_27EF4EBD8 != -1)
        {
          swift_once();
        }

        if (qword_27EF4EBD0 != -1)
        {
          swift_once();
        }

        v399 = sub_24A62EA04();
        v293 = dispatch_group_create();
        dispatch_group_enter(v293);
        v294 = sub_24A62E644();
        MEMORY[0x28223BE20](v294);
        v295 = v403;
        *(&v362 - 2) = v403;
        *(&v362 - 8) = 1;
        *(swift_allocObject() + 16) = v293;
        v296 = v293;
        sub_24A62E3E4();

        v297 = v404;
        v114(v133, v404);
        dispatch_group_enter(v296);
        v298 = sub_24A62E644();
        MEMORY[0x28223BE20](v298);
        *(&v362 - 2) = v295;
        *(&v362 - 8) = 1;
        *(swift_allocObject() + 16) = v296;
        v390 = v296;
        sub_24A62E3E4();

        v114(v133, v297);
        v299 = v395;
        dispatch_group_enter(v395);
        v300 = sub_24A62F014();
        v301 = swift_allocObject();
        v301[2] = 0;
        v301[3] = 0;
        v301[4] = v402;
        v410 = sub_24A547994;
        v411 = v301;
        aBlock = MEMORY[0x277D85DD0];
        v407 = 1107296256;
        v408 = sub_24A5A8458;
        v409 = &unk_285DA1D58;
        v302 = _Block_copy(&aBlock);
        v303 = v299;
        v304 = v391;
        sub_24A62EAB4();
        v405 = MEMORY[0x277D84F90];
        v305 = v392;
        v306 = v394;
        sub_24A62F254();
        v307 = v390;
        sub_24A62EFB4();
        _Block_release(v302);

        v385(v305, v306);
        v386(v304, v393);

        if (qword_27EF4EAE8 != -1)
        {
          swift_once();
        }

        sub_24A62EA04();
        dispatch_group_enter(v303);
        v308 = sub_24A62E644();
        MEMORY[0x28223BE20](v308);
        v309 = v403;
        *(&v362 - 2) = v403;
        *(&v362 - 8) = 0;
        v310 = swift_allocObject();
        v310[2] = 0;
        v310[3] = 0;
        v310[4] = v402;
        v311 = v303;
        sub_24A62E3E4();

        v400(v133, v404);
        if (qword_27EF4EB98 != -1)
        {
          swift_once();
        }

        dispatch_group_enter(v311);
        v312 = sub_24A62E644();
        MEMORY[0x28223BE20](v312);
        *(&v362 - 2) = v309;
        *(&v362 - 8) = 1;
        v313 = swift_allocObject();
        v313[2] = 0;
        v313[3] = 0;
        v313[4] = v402;
        v314 = v311;
        sub_24A62E3E4();
        goto LABEL_119;
      default:
        return result;
    }

    swift_once();
    goto LABEL_118;
  }

  if (v377 - 4 >= 2)
  {
    if (v377 != 6)
    {
      return result;
    }

    sub_24A62E9E4();
    dispatch_group_enter(v148);
    v169 = sub_24A62E644();
    MEMORY[0x28223BE20](v169);
    *(&v362 - 2) = v403;
    *(&v362 - 8) = 1;
    v170 = swift_allocObject();
    v170[2] = 0;
    v170[3] = 0;
    v170[4] = v125;
    v171 = v148;
    sub_24A62E3E4();

    v172 = v404;
  }

  else
  {
    dispatch_group_enter(v148);
    v160 = sub_24A62E644();
    MEMORY[0x28223BE20](v160);
    *(&v362 - 2) = v403;
    *(&v362 - 8) = 1;
    v161 = swift_allocObject();
    v161[2] = 0;
    v161[3] = 0;
    v161[4] = v125;
    v162 = v148;
    sub_24A62E3E4();
    v395 = v100;

    v400(v133, v404);
    v163 = v370;
    *(v370 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_vfxTargetArrow) = 0;
    *(v163 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_vfxTargetSphere) = 1;
    *(v163 + v369) = 1;
    if (qword_27EF4EC80 != -1)
    {
      swift_once();
    }

    v164 = sub_24A506EB8(v389, qword_27EF5CA78);
    dispatch_group_enter(v162);
    [v117 begin];
    v165 = v367;
    sub_24A5461E8(v164, v367);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v167 = v368;
    if (EnumCaseMultiPayload == 1)
    {
      v168 = *(v165 + 8);
    }

    else
    {
      v179 = v379;
      v180 = v378;
      v181 = v165;
      v182 = v380;
      (*(v379 + 32))(v378, v181, v380);
      sub_24A62E934();
      v168 = v183;
      (*(v179 + 8))(v180, v182);
    }

    v184 = v402;
    [v117 setDuration_];
    v185 = sub_24A6268BC();
    [v117 setTimingFunction_];

    v186 = swift_allocObject();
    v186[2] = 0;
    v186[3] = 0;
    v186[4] = v184;
    v410 = sub_24A547994;
    v411 = v186;
    aBlock = MEMORY[0x277D85DD0];
    v407 = 1107296256;
    v408 = sub_24A5A8458;
    v409 = &unk_285DA1AB0;
    v187 = _Block_copy(&aBlock);
    v188 = v162;

    [v117 setCompletionBlock_];
    _Block_release(v187);
    v189 = swift_weakLoadStrong();
    if (v189)
    {
      v190 = *(v189 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_mainEmitter);

      v409 = MEMORY[0x277D83A90];
      LODWORD(aBlock) = 0;
      sub_24A583BD0(9, &aBlock);

      sub_24A50EC28(&aBlock);
    }

    [v117 commit];
    if (qword_27EF4EC40 != -1)
    {
      swift_once();
    }

    v191 = sub_24A506EB8(v389, qword_27EF5C9B8);
    dispatch_group_enter(v188);
    [v117 begin];
    sub_24A5461E8(v191, v167);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v192 = *(v167 + 8);
    }

    else
    {
      v193 = v379;
      v194 = v378;
      v195 = v167;
      v196 = v380;
      (*(v379 + 32))(v378, v195, v380);
      sub_24A62E934();
      v192 = v197;
      (*(v193 + 8))(v194, v196);
    }

    [v117 setDuration_];
    v198 = sub_24A6268BC();
    [v117 setTimingFunction_];

    v199 = swift_allocObject();
    v199[2] = 0;
    v199[3] = 0;
    v199[4] = v184;
    v410 = sub_24A547994;
    v411 = v199;
    aBlock = MEMORY[0x277D85DD0];
    v407 = 1107296256;
    v408 = sub_24A5A8458;
    v409 = &unk_285DA1B00;
    v200 = _Block_copy(&aBlock);
    v390 = v188;

    [v117 setCompletionBlock_];
    _Block_release(v200);
    v201 = swift_weakLoadStrong();
    v202 = MEMORY[0x277D83A90];
    if (v201)
    {
      v203 = *(v201 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_mainEmitter);

      v409 = v202;
      LODWORD(aBlock) = 0;
      sub_24A583BD0(10, &aBlock);

      sub_24A50EC28(&aBlock);
    }

    [v117 commit];
    if (qword_27EF4EBA0 != -1)
    {
      swift_once();
    }

    v204 = sub_24A62EA04();
    if (qword_27EF4EBA8 != -1)
    {
      swift_once();
    }

    v399 = sub_24A62EA04();
    v205 = dispatch_group_create();
    dispatch_group_enter(v205);
    v133 = v396;
    v206 = sub_24A62E644();
    MEMORY[0x28223BE20](v206);
    v207 = v403;
    *(&v362 - 2) = v403;
    *(&v362 - 8) = 1;
    *(swift_allocObject() + 16) = v205;
    v208 = v205;
    v389 = v204;
    sub_24A62E3E4();

    v209 = v404;
    v210 = v400;
    v400(v133, v404);
    dispatch_group_enter(v208);
    v211 = sub_24A62E644();
    MEMORY[0x28223BE20](v211);
    *(&v362 - 2) = v207;
    *(&v362 - 8) = 1;
    *(swift_allocObject() + 16) = v208;
    v395 = v208;
    sub_24A62E3E4();

    v210(v133, v209);
    v212 = v390;
    dispatch_group_enter(v390);
    v213 = sub_24A62F014();
    v214 = swift_allocObject();
    v214[2] = 0;
    v214[3] = 0;
    v214[4] = v402;
    v410 = sub_24A547994;
    v411 = v214;
    aBlock = MEMORY[0x277D85DD0];
    v407 = 1107296256;
    v408 = sub_24A5A8458;
    v409 = &unk_285DA1BA0;
    v215 = _Block_copy(&aBlock);
    v216 = v212;
    v217 = v391;
    sub_24A62EAB4();
    v405 = MEMORY[0x277D84F90];
    v218 = v392;
    v219 = v394;
    sub_24A62F254();
    v220 = v395;
    sub_24A62EFB4();
    _Block_release(v215);

    v385(v218, v219);
    v386(v217, v393);

    if (qword_27EF4EB98 != -1)
    {
      swift_once();
    }

    sub_24A62EA04();
    dispatch_group_enter(v216);
    v221 = sub_24A62E644();
    MEMORY[0x28223BE20](v221);
    v222 = v403;
    *(&v362 - 2) = v403;
    *(&v362 - 8) = 1;
    v223 = swift_allocObject();
    v223[2] = 0;
    v223[3] = 0;
    v223[4] = v402;
    v224 = v216;
    sub_24A62E3E4();

    v172 = v404;
    v400(v133, v404);
    if (qword_27EF4EBF0 != -1)
    {
      swift_once();
    }

    dispatch_group_enter(v224);
    v225 = sub_24A62E644();
    MEMORY[0x28223BE20](v225);
    *(&v362 - 2) = v222;
    *(&v362 - 8) = 0;
    v226 = swift_allocObject();
    v226[2] = 0;
    v226[3] = 0;
    v226[4] = v402;
    v227 = v224;
    sub_24A62E3E4();
  }

LABEL_120:

  return (v400)(v133, v172);
}

void sub_24A530424(int a1, NSObject *a2, uint64_t a3)
{
  v4 = v3;
  v360 = a1;
  v361 = sub_24A62E984();
  v363 = *(v361 - 8);
  MEMORY[0x28223BE20](v361);
  v362 = &v345 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v364 = type metadata accessor for PFVFXAnimation(0);
  MEMORY[0x28223BE20](v364);
  v351 = &v345 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v350 = &v345 - v10;
  MEMORY[0x28223BE20](v11);
  v349 = &v345 - v12;
  MEMORY[0x28223BE20](v13);
  v347 = &v345 - v14;
  MEMORY[0x28223BE20](v15);
  v348 = &v345 - v16;
  MEMORY[0x28223BE20](v17);
  v346 = &v345 - v18;
  MEMORY[0x28223BE20](v19);
  v345 = &v345 - v20;
  MEMORY[0x28223BE20](v21);
  v359 = &v345 - v22;
  MEMORY[0x28223BE20](v23);
  v377 = (&v345 - v24);
  MEMORY[0x28223BE20](v25);
  v358 = &v345 - v26;
  v375 = sub_24A62EA94();
  v380 = *(v375 - 8);
  MEMORY[0x28223BE20](v375);
  v373 = &v345 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v374 = sub_24A62EAD4();
  v379 = *(v374 - 8);
  MEMORY[0x28223BE20](v374);
  v372 = &v345 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v376 = sub_24A62EAF4();
  v382 = *(v376 - 8);
  MEMORY[0x28223BE20](v376);
  v30 = (&v345 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v31);
  v371 = &v345 - v32;
  v386 = sub_24A62E654();
  v33 = *(v386 - 8);
  MEMORY[0x28223BE20](v386);
  v35 = &v345 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v353 = a3;
  v352 = OBJC_IVAR____TtC11FMFindingUI10VFXManager_vfxIsArcFullRing;
  *(a3 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_vfxIsArcFullRing) = 0;
  if (qword_27EF4EC10 != -1)
  {
    swift_once();
  }

  dispatch_group_enter(a2);
  v36 = sub_24A62E644();
  MEMORY[0x28223BE20](v36);
  *(&v345 - 2) = v3;
  *(&v345 - 8) = 0;
  v37 = swift_allocObject();
  v37[2] = 0;
  v37[3] = 0;
  v37[4] = a2;
  v38 = a2;
  sub_24A62E3E4();
  v381 = 0;

  v39 = *(v33 + 8);
  v383 = v33 + 8;
  v384 = v39;
  v387 = v35;
  v39(v35, v386);
  dispatch_group_enter(v38);
  v365 = sub_24A545E8C();
  v370 = sub_24A62F014();
  sub_24A62EAE4();
  v40 = v371;
  sub_24A62EB54();
  v41 = v4;
  v43 = v382 + 1;
  isa = v382[1].isa;
  v357 = v30;
  v44 = v376;
  (isa)(v30, v376);
  v45 = swift_allocObject();
  *(v45 + 16) = v41;
  *(v45 + 24) = 0;
  *(v45 + 32) = 0;
  *(v45 + 40) = 0;
  *(v45 + 48) = a2;
  v393 = sub_24A547A30;
  v394 = v45;
  aBlock = MEMORY[0x277D85DD0];
  v390 = 1107296256;
  v391 = sub_24A5A8458;
  v392 = &unk_285DA2230;
  v46 = _Block_copy(&aBlock);
  v355 = v38;
  v378 = v41;

  v47 = v372;
  sub_24A62EAB4();
  aBlock = MEMORY[0x277D84F90];
  v48 = sub_24A545F60();
  v385 = a2;
  v49 = v48;
  v50 = sub_24A508FA4(&unk_27EF50510, &unk_24A633E30);
  v51 = sub_24A529464();
  v52 = v373;
  v367 = v50;
  v366 = v51;
  v53 = v375;
  v368 = v49;
  sub_24A62F254();
  v54 = v370;
  MEMORY[0x24C21A910](v40, v47, v52, v46);
  _Block_release(v46);

  v55 = *(v380 + 8);
  v380 += 8;
  v369 = v55;
  v55(v52, v53);
  v56 = *(v379 + 8);
  v379 += 8;
  v370 = v56;
  v56(v47, v374);
  v382 = v43;
  v356 = isa;
  (isa)(v40, v44);
  v57 = v386;
  if (qword_27EF4EC00 != -1)
  {
    swift_once();
  }

  v58 = v355;
  dispatch_group_enter(v355);
  v59 = sub_24A62E644();
  MEMORY[0x28223BE20](v59);
  v60 = v378;
  *(&v345 - 2) = v378;
  *(&v345 - 8) = 0;
  v61 = swift_allocObject();
  v61[2] = 0;
  v61[3] = 0;
  v61[4] = v385;
  v62 = v58;
  v63 = v381;
  sub_24A62E3E4();

  v64 = v384;
  v384(v387, v57);
  if (qword_27EF4EB98 != -1)
  {
    swift_once();
  }

  dispatch_group_enter(v62);
  v65 = sub_24A62E644();
  MEMORY[0x28223BE20](v65);
  *(&v345 - 2) = v60;
  *(&v345 - 8) = 1;
  v66 = swift_allocObject();
  v66[2] = 0;
  v66[3] = 0;
  v66[4] = v385;
  v67 = v62;
  sub_24A62E3E4();

  v64(v387, v386);
  if (qword_27EF4EC18 != -1)
  {
    swift_once();
  }

  v68 = qword_27EF5C980;
  dispatch_group_enter(v67);
  v69 = sub_24A62E644();
  MEMORY[0x28223BE20](v69);
  *(&v345 - 2) = v60;
  *(&v345 - 8) = 0;
  v70 = swift_allocObject();
  v70[2] = 0;
  v70[3] = 0;
  v71 = v385;
  v70[4] = v385;
  v72 = v67;
  sub_24A62E3E4();

  v384(v387, v386);
  sub_24A52AE18(0, v68, v71, 0, 0);
  if (qword_27EF4EB68 != -1)
  {
    swift_once();
  }

  dispatch_group_enter(v72);
  v73 = sub_24A62E644();
  MEMORY[0x28223BE20](v73);
  *(&v345 - 2) = v60;
  *(&v345 - 8) = 0;
  v74 = swift_allocObject();
  v74[2] = 0;
  v74[3] = 0;
  v74[4] = v385;
  v75 = v72;
  sub_24A62E3E4();

  v76 = v384;
  v384(v387, v386);
  if (qword_27EF4EAE0 != -1)
  {
    swift_once();
  }

  v381 = qword_27EF5C848;
  dispatch_group_enter(v75);
  v77 = sub_24A62E644();
  MEMORY[0x28223BE20](v77);
  *(&v345 - 2) = v60;
  *(&v345 - 8) = 0;
  v78 = swift_allocObject();
  v78[2] = 0;
  v78[3] = 0;
  v79 = v385;
  v78[4] = v385;
  v80 = v75;
  sub_24A62E3E4();

  v81 = v386;
  v76(v387, v386);
  dispatch_group_enter(v80);
  v82 = sub_24A62E644();
  MEMORY[0x28223BE20](v82);
  *(&v345 - 2) = v60;
  *(&v345 - 8) = 0;
  v83 = swift_allocObject();
  v83[2] = 0;
  v83[3] = 0;
  v83[4] = v79;
  v84 = v80;
  sub_24A62E3E4();

  v76(v387, v81);
  dispatch_group_enter(v84);
  v85 = sub_24A62E644();
  MEMORY[0x28223BE20](v85);
  *(&v345 - 2) = v60;
  *(&v345 - 8) = 1;
  v86 = swift_allocObject();
  v87 = v76;
  v86[2] = 0;
  v86[3] = 0;
  v86[4] = v79;
  v88 = v79;
  v89 = v84;
  sub_24A62E3E4();
  v355 = v63;

  v90 = v387;
  v87(v387, v81);
  dispatch_group_enter(v89);
  v354 = sub_24A62F014();
  v91 = v357;
  sub_24A62EAE4();
  v92 = v371;
  sub_24A62EB54();
  v93 = v356;
  v356(v91, v376);
  v94 = swift_allocObject();
  v95 = v378;
  *(v94 + 16) = v378;
  *(v94 + 24) = 0;
  *(v94 + 32) = 0;
  *(v94 + 40) = 0;
  *(v94 + 48) = v88;
  v393 = sub_24A547A54;
  v394 = v94;
  aBlock = MEMORY[0x277D85DD0];
  v390 = 1107296256;
  v391 = sub_24A5A8458;
  v392 = &unk_285DA2398;
  v96 = _Block_copy(&aBlock);
  v357 = v89;

  v97 = v372;
  sub_24A62EAB4();
  aBlock = MEMORY[0x277D84F90];
  v98 = v373;
  v99 = v375;
  sub_24A62F254();
  v100 = v354;
  MEMORY[0x24C21A910](v92, v97, v98, v96);
  _Block_release(v96);

  v369(v98, v99);
  v370(v97, v374);
  v93(v92, v376);
  v102 = v384;
  v101 = v385;
  if (qword_27EF4EB10 != -1)
  {
    swift_once();
  }

  v103 = v357;
  dispatch_group_enter(v357);
  sub_24A62E644();
  v104 = swift_allocObject();
  v104[2] = v95;
  v104[3] = 0;
  v104[4] = 0;
  v104[5] = v101;
  v105 = v103;

  v106 = v355;
  sub_24A62E3E4();

  v107 = v386;
  v102(v90, v386);
  dispatch_group_enter(v105);
  v108 = sub_24A62E644();
  MEMORY[0x28223BE20](v108);
  *(&v345 - 2) = v95;
  *(&v345 - 8) = 0;
  v109 = swift_allocObject();
  v109[2] = 0;
  v109[3] = 0;
  v109[4] = v101;
  v110 = v105;
  sub_24A62E3E4();

  v102(v387, v107);
  v111 = v95;
  if (qword_27EF4EC08 != -1)
  {
    swift_once();
  }

  dispatch_group_enter(v110);
  v112 = sub_24A62E644();
  MEMORY[0x28223BE20](v112);
  *(&v345 - 2) = v95;
  *(&v345 - 8) = 0;
  v113 = swift_allocObject();
  v113[2] = 0;
  v113[3] = 0;
  v114 = v385;
  v113[4] = v385;
  v115 = v110;
  sub_24A62E3E4();

  v116 = v386;
  v102(v387, v386);
  dispatch_group_enter(v115);
  v117 = sub_24A62E644();
  MEMORY[0x28223BE20](v117);
  *(&v345 - 2) = v111;
  *(&v345 - 8) = 0;
  v118 = swift_allocObject();
  v118[2] = 0;
  v118[3] = 0;
  v118[4] = v114;
  v119 = v115;
  sub_24A62E3E4();
  v381 = v106;

  v120 = v387;
  v102(v387, v116);
  if (qword_27EF4ECB0 != -1)
  {
    swift_once();
  }

  v121 = v364;
  v122 = sub_24A506EB8(v364, qword_27EF5CB08);
  v123 = v119;
  dispatch_group_enter(v119);
  v124 = objc_opt_self();
  [v124 begin];
  v125 = v358;
  sub_24A5461E8(v122, v358);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v127 = v361;
  if (EnumCaseMultiPayload == 1)
  {
    v128 = *(v125 + 8);
  }

  else
  {
    v129 = v363;
    v130 = v362;
    (*(v363 + 32))(v362, v125, v361);
    sub_24A62E934();
    v128 = v131;
    (*(v129 + 8))(v130, v127);
  }

  v132 = v378;
  [v124 setDuration_];
  v133 = sub_24A6268BC();
  [v124 setTimingFunction_];

  v134 = swift_allocObject();
  v134[2] = 0;
  v134[3] = 0;
  v134[4] = v385;
  v393 = sub_24A547994;
  v394 = v134;
  aBlock = MEMORY[0x277D85DD0];
  v390 = 1107296256;
  v391 = sub_24A5A8458;
  v392 = &unk_285DA2488;
  v135 = _Block_copy(&aBlock);
  v136 = v123;
  v137 = v124;
  v138 = v136;

  [v124 setCompletionBlock_];
  _Block_release(v135);
  v382 = OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator_vfxManager;
  Strong = swift_weakLoadStrong();
  v140 = MEMORY[0x277D83A90];
  if (Strong)
  {
    v141 = *(Strong + OBJC_IVAR____TtC11FMFindingUI10VFXManager_mainEmitter);

    v392 = v140;
    LODWORD(aBlock) = 1065353216;
    sub_24A583BD0(11, &aBlock);

    sub_24A50EC28(&aBlock);
  }

  [v137 commit];
  if (qword_27EF4ECA0 != -1)
  {
    swift_once();
  }

  v142 = sub_24A506EB8(v121, qword_27EF5CAD8);
  v143 = v377;
  sub_24A5461E8(v142, v377);
  dispatch_group_enter(v138);
  [v137 begin];
  v144 = v143;
  v145 = v359;
  sub_24A5461E8(v144, v359);
  v146 = swift_getEnumCaseMultiPayload();
  v147 = v385;
  if (v146 == 1)
  {
    v148 = *(v145 + 8);
  }

  else
  {
    v149 = v363;
    v150 = v145;
    v151 = v362;
    (*(v363 + 32))(v362, v150, v127);
    sub_24A62E934();
    v148 = v152;
    (*(v149 + 8))(v151, v127);
  }

  [v137 setDuration_];
  v153 = sub_24A6268BC();
  [v137 setTimingFunction_];

  v154 = swift_allocObject();
  v154[2] = 0;
  v154[3] = 0;
  v154[4] = v147;
  v393 = sub_24A547994;
  v394 = v154;
  aBlock = MEMORY[0x277D85DD0];
  v390 = 1107296256;
  v391 = sub_24A5A8458;
  v392 = &unk_285DA24D8;
  v155 = _Block_copy(&aBlock);
  v156 = v138;

  [v137 setCompletionBlock_];
  _Block_release(v155);
  v157 = swift_weakLoadStrong();
  if (v157)
  {
    v158 = *(v157 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_mainEmitter);

    v392 = MEMORY[0x277D83A90];
    LODWORD(aBlock) = 0;
    sub_24A583BD0(8, &aBlock);

    sub_24A50EC28(&aBlock);
  }

  [v137 commit];
  sub_24A54624C(v377);
  if (v360 > 3u)
  {
    if (v360 - 4 < 2)
    {
      v165 = v353;
      *(v353 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_vfxTargetArrow) = 0;
      *(v165 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_vfxTargetSphere) = 1;
      *(v165 + v352) = 1;
      if (qword_27EF4EBF0 != -1)
      {
        swift_once();
      }

      dispatch_group_enter(v156);
      v166 = sub_24A62E644();
      MEMORY[0x28223BE20](v166);
      *(&v345 - 2) = v132;
      *(&v345 - 8) = 0;
      v167 = swift_allocObject();
      v167[2] = 0;
      v167[3] = 0;
      v167[4] = v147;
      v377 = v156;
      sub_24A62E3E4();

      v168 = v387;
      v384(v387, v386);
      if (qword_27EF4EBA0 != -1)
      {
        swift_once();
      }

      if (qword_27EF4EBA8 != -1)
      {
        swift_once();
      }

      v381 = qword_27EF5C910;
      v169 = dispatch_group_create();
      dispatch_group_enter(v169);
      v170 = sub_24A62E644();
      MEMORY[0x28223BE20](v170);
      *(&v345 - 2) = v132;
      *(&v345 - 8) = 1;
      *(swift_allocObject() + 16) = v169;
      v171 = v169;
      sub_24A62E3E4();
      v172 = v132;

      v173 = v386;
      v174 = v384;
      v384(v168, v386);
      dispatch_group_enter(v171);
      v175 = sub_24A62E644();
      MEMORY[0x28223BE20](v175);
      *(&v345 - 2) = v172;
      *(&v345 - 8) = 1;
      *(swift_allocObject() + 16) = v171;
      v176 = v171;
      sub_24A62E3E4();

      v174(v168, v173);
      v177 = v377;
      dispatch_group_enter(v377);
      v178 = sub_24A62F014();
      v179 = swift_allocObject();
      v179[2] = 0;
      v179[3] = 0;
      v180 = v385;
      v179[4] = v385;
      v393 = sub_24A547994;
      v394 = v179;
      aBlock = MEMORY[0x277D85DD0];
      v390 = 1107296256;
      v391 = sub_24A5A8458;
      v392 = &unk_285DA25A0;
      v181 = _Block_copy(&aBlock);
      v182 = v177;
      v183 = v372;
      sub_24A62EAB4();
      v388 = MEMORY[0x277D84F90];
      v184 = v373;
      v185 = v375;
      sub_24A62F254();
      sub_24A62EFB4();
      _Block_release(v181);

      v369(v184, v185);
      v370(v183, v374);

      if (qword_27EF4EC88 != -1)
      {
        swift_once();
      }

      v186 = sub_24A506EB8(v364, qword_27EF5CA90);
      dispatch_group_enter(v182);
      [v137 begin];
      v187 = v350;
      sub_24A5461E8(v186, v350);
      v188 = swift_getEnumCaseMultiPayload();
      v189 = v361;
      v190 = v351;
      if (v188 == 1)
      {
        v191 = *(v187 + 8);
      }

      else
      {
        v201 = v363;
        v202 = v362;
        (*(v363 + 32))(v362, v187, v361);
        sub_24A62E934();
        v191 = v203;
        (*(v201 + 8))(v202, v189);
      }

      [v137 setDuration_];
      v204 = sub_24A6268BC();
      [v137 setTimingFunction_];

      v205 = swift_allocObject();
      v205[2] = 0;
      v205[3] = 0;
      v205[4] = v180;
      v393 = sub_24A547994;
      v394 = v205;
      aBlock = MEMORY[0x277D85DD0];
      v390 = 1107296256;
      v391 = sub_24A5A8458;
      v392 = &unk_285DA25F0;
      v206 = _Block_copy(&aBlock);
      v207 = v182;

      [v137 setCompletionBlock_];
      _Block_release(v206);
      v208 = swift_weakLoadStrong();
      v209 = MEMORY[0x277D83A90];
      if (v208)
      {
        v210 = *(v208 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_mainEmitter);

        v392 = v209;
        LODWORD(aBlock) = 1065353216;
        sub_24A583BD0(9, &aBlock);

        sub_24A50EC28(&aBlock);
      }

      [v137 commit];
      if (qword_27EF4EC48 != -1)
      {
        swift_once();
      }

      v211 = sub_24A506EB8(v364, qword_27EF5C9D0);
      dispatch_group_enter(v207);
      [v137 begin];
      sub_24A5461E8(v211, v190);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v212 = *(v190 + 8);
      }

      else
      {
        v213 = v363;
        v214 = v362;
        (*(v363 + 32))(v362, v190, v189);
        sub_24A62E934();
        v212 = v215;
        (*(v213 + 8))(v214, v189);
      }

      [v137 setDuration_];
      v216 = sub_24A6268BC();
      [v137 setTimingFunction_];

      v217 = swift_allocObject();
      v217[2] = 0;
      v217[3] = 0;
      v217[4] = v180;
      v393 = sub_24A547994;
      v394 = v217;
      aBlock = MEMORY[0x277D85DD0];
      v390 = 1107296256;
      v391 = sub_24A5A8458;
      v392 = &unk_285DA2640;
      v218 = _Block_copy(&aBlock);
      v219 = v207;

      [v137 setCompletionBlock_];
      _Block_release(v218);
      v220 = swift_weakLoadStrong();
      if (v220)
      {
        v221 = *(v220 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_mainEmitter);

        v392 = v209;
        LODWORD(aBlock) = 0;
        sub_24A583BD0(10, &aBlock);

        sub_24A50EC28(&aBlock);
      }

      [v137 commit];
    }
  }

  else if (v360)
  {
    if (v360 == 2)
    {
      v195 = v353;
      *(v353 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_vfxTargetArrow) = 0;
      *(v195 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_vfxTargetSphere) = 0;
      if (qword_27EF4EC88 != -1)
      {
        swift_once();
      }

      v196 = sub_24A506EB8(v121, qword_27EF5CA90);
      dispatch_group_enter(v156);
      [v137 begin];
      v197 = v346;
      sub_24A5461E8(v196, v346);
      v198 = swift_getEnumCaseMultiPayload();
      v199 = v348;
      if (v198 == 1)
      {
        v200 = *(v197 + 8);
      }

      else
      {
        v250 = v363;
        v251 = v197;
        v252 = v362;
        (*(v363 + 32))(v362, v251, v127);
        sub_24A62E934();
        v200 = v253;
        v254 = v250;
        v121 = v364;
        (*(v254 + 8))(v252, v127);
      }

      [v137 setDuration_];
      v255 = sub_24A6268BC();
      [v137 setTimingFunction_];

      v256 = swift_allocObject();
      v256[2] = 0;
      v256[3] = 0;
      v256[4] = v147;
      v393 = sub_24A547994;
      v394 = v256;
      aBlock = MEMORY[0x277D85DD0];
      v390 = 1107296256;
      v391 = sub_24A5A8458;
      v392 = &unk_285DA2820;
      v257 = _Block_copy(&aBlock);
      v258 = v156;

      [v137 setCompletionBlock_];
      _Block_release(v257);
      v259 = swift_weakLoadStrong();
      if (v259)
      {
        v260 = *(v259 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_mainEmitter);

        v392 = MEMORY[0x277D83A90];
        LODWORD(aBlock) = 1065353216;
        sub_24A583BD0(9, &aBlock);

        sub_24A50EC28(&aBlock);
      }

      [v137 commit];
      if (qword_27EF4EC48 != -1)
      {
        swift_once();
      }

      v261 = sub_24A506EB8(v121, qword_27EF5C9D0);
      dispatch_group_enter(v258);
      [v137 begin];
      sub_24A5461E8(v261, v199);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v262 = *(v199 + 8);
      }

      else
      {
        v263 = v363;
        v264 = v362;
        (*(v363 + 32))(v362, v199, v127);
        sub_24A62E934();
        v262 = v265;
        (*(v263 + 8))(v264, v127);
      }

      [v137 setDuration_];
      v266 = sub_24A6268BC();
      [v137 setTimingFunction_];

      v267 = swift_allocObject();
      v267[2] = 0;
      v267[3] = 0;
      v267[4] = v147;
      v393 = sub_24A547994;
      v394 = v267;
      aBlock = MEMORY[0x277D85DD0];
      v390 = 1107296256;
      v391 = sub_24A5A8458;
      v392 = &unk_285DA2870;
      v268 = _Block_copy(&aBlock);
      v269 = v258;

      [v137 setCompletionBlock_];
      _Block_release(v268);
      v270 = swift_weakLoadStrong();
      if (v270)
      {
        v271 = *(v270 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_mainEmitter);

        v392 = MEMORY[0x277D83A90];
        LODWORD(aBlock) = 0;
        sub_24A583BD0(10, &aBlock);

        sub_24A50EC28(&aBlock);
      }

      [v137 commit];
      if (qword_27EF4EBF0 != -1)
      {
        swift_once();
      }

      dispatch_group_enter(v269);
      v272 = sub_24A62E644();
      v273 = v120;
      MEMORY[0x28223BE20](v272);
      *(&v345 - 2) = v132;
      *(&v345 - 8) = 0;
      v274 = swift_allocObject();
      v274[2] = 0;
      v274[3] = 0;
      v274[4] = v147;
      v382 = v269;
      v275 = v381;
      sub_24A62E3E4();

      v276 = v273;
      v277 = v384;
      v384(v276, v386);
      if (qword_27EF4EBA0 != -1)
      {
        swift_once();
      }

      if (qword_27EF4EBA8 != -1)
      {
        swift_once();
      }

      v381 = qword_27EF5C910;
      v278 = dispatch_group_create();
      dispatch_group_enter(v278);
      v279 = v387;
      v280 = sub_24A62E644();
      MEMORY[0x28223BE20](v280);
      *(&v345 - 2) = v132;
      *(&v345 - 8) = 1;
      *(swift_allocObject() + 16) = v278;
      v281 = v278;
      sub_24A62E3E4();

      v282 = v386;
      v277(v279, v386);
      dispatch_group_enter(v281);
      v283 = sub_24A62E644();
      MEMORY[0x28223BE20](v283);
      *(&v345 - 2) = v132;
      *(&v345 - 8) = 1;
      *(swift_allocObject() + 16) = v281;
      v284 = v281;
      sub_24A62E3E4();
      v381 = v275;

      v277(v279, v282);
      v285 = v382;
      dispatch_group_enter(v382);
      v286 = sub_24A62F014();
      v287 = swift_allocObject();
      v287[2] = 0;
      v287[3] = 0;
      v288 = v385;
      v287[4] = v385;
      v393 = sub_24A547994;
      v394 = v287;
      aBlock = MEMORY[0x277D85DD0];
      v390 = 1107296256;
      v391 = sub_24A5A8458;
      v392 = &unk_285DA2938;
      v289 = _Block_copy(&aBlock);
      v290 = v285;
      v291 = v372;
      sub_24A62EAB4();
      v388 = MEMORY[0x277D84F90];
      v292 = v373;
      v293 = v375;
      sub_24A62F254();
      sub_24A62EFB4();
      _Block_release(v289);

      v369(v292, v293);
      v370(v291, v374);

      *(v132 + OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator_pumpDelay) = 0;
      *(v132 + OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator_pumpEndValue) = 0x3FEE147AE147AE14;
      if (qword_27EF4EB20 != -1)
      {
        swift_once();
      }

      if (qword_27EF4EB28 != -1)
      {
        swift_once();
      }

      dispatch_group_enter(v290);
      sub_24A62EA04();

      v294 = v387;
      v295 = sub_24A62E644();
      MEMORY[0x28223BE20](v295);
      *(&v345 - 2) = v132;
      *(&v345 - 8) = 1;
      v296 = swift_allocObject();
      *(v296 + 16) = v288;
      *(v296 + 24) = 1;
      *(v296 + 40) = 0;
      *(v296 + 48) = 0;
      *(v296 + 32) = v132;
      v297 = v290;

      sub_24A62E3E4();

      v298 = v294;
    }

    else
    {
      if (v360 != 3)
      {
        return;
      }

      v159 = v353;
      *(v353 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_vfxTargetArrow) = 1;
      *(v159 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_vfxTargetSphere) = 0;
      *(v159 + v352) = 1;
      if (qword_27EF4EC88 != -1)
      {
        swift_once();
      }

      v160 = sub_24A506EB8(v121, qword_27EF5CA90);
      dispatch_group_enter(v156);
      [v137 begin];
      v161 = v347;
      sub_24A5461E8(v160, v347);
      v162 = swift_getEnumCaseMultiPayload();
      v163 = v349;
      if (v162 == 1)
      {
        v164 = *(v161 + 8);
      }

      else
      {
        v299 = v363;
        v300 = v161;
        v301 = v362;
        (*(v363 + 32))(v362, v300, v127);
        sub_24A62E934();
        v164 = v302;
        v303 = v299;
        v121 = v364;
        (*(v303 + 8))(v301, v127);
      }

      [v137 setDuration_];
      v304 = sub_24A6268BC();
      [v137 setTimingFunction_];

      v305 = swift_allocObject();
      v305[2] = 0;
      v305[3] = 0;
      v305[4] = v147;
      v393 = sub_24A547994;
      v394 = v305;
      aBlock = MEMORY[0x277D85DD0];
      v390 = 1107296256;
      v391 = sub_24A5A8458;
      v392 = &unk_285DA2690;
      v306 = _Block_copy(&aBlock);
      v307 = v156;

      [v137 setCompletionBlock_];
      _Block_release(v306);
      v308 = swift_weakLoadStrong();
      if (v308)
      {
        v309 = *(v308 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_mainEmitter);

        v392 = MEMORY[0x277D83A90];
        LODWORD(aBlock) = 1065353216;
        sub_24A583BD0(9, &aBlock);

        sub_24A50EC28(&aBlock);
      }

      [v137 commit];
      if (qword_27EF4EC48 != -1)
      {
        swift_once();
      }

      v310 = sub_24A506EB8(v121, qword_27EF5C9D0);
      dispatch_group_enter(v307);
      [v137 begin];
      sub_24A5461E8(v310, v163);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v311 = *(v163 + 8);
      }

      else
      {
        v312 = v363;
        v313 = v362;
        (*(v363 + 32))(v362, v163, v127);
        sub_24A62E934();
        v311 = v314;
        (*(v312 + 8))(v313, v127);
      }

      [v137 setDuration_];
      v315 = sub_24A6268BC();
      [v137 setTimingFunction_];

      v316 = swift_allocObject();
      v316[2] = 0;
      v316[3] = 0;
      v316[4] = v147;
      v393 = sub_24A547994;
      v394 = v316;
      aBlock = MEMORY[0x277D85DD0];
      v390 = 1107296256;
      v391 = sub_24A5A8458;
      v392 = &unk_285DA26E0;
      v317 = _Block_copy(&aBlock);
      v377 = v307;

      [v137 setCompletionBlock_];
      _Block_release(v317);
      v318 = swift_weakLoadStrong();
      if (v318)
      {
        v319 = *(v318 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_mainEmitter);

        v392 = MEMORY[0x277D83A90];
        LODWORD(aBlock) = 0;
        sub_24A583BD0(10, &aBlock);

        sub_24A50EC28(&aBlock);
      }

      [v137 commit];
      swift_getKeyPath();
      swift_getKeyPath();
      aBlock = 0x3FA999999999999ALL;

      sub_24A62E364();
      if (qword_27EF4EBC0 != -1)
      {
        swift_once();
      }

      if (qword_27EF4EBC8 != -1)
      {
        swift_once();
      }

      v382 = qword_27EF5C930;
      v320 = dispatch_group_create();
      dispatch_group_enter(v320);
      v321 = v387;
      v322 = sub_24A62E644();
      MEMORY[0x28223BE20](v322);
      *(&v345 - 2) = v132;
      *(&v345 - 8) = 1;
      *(swift_allocObject() + 16) = v320;
      v323 = v320;
      v324 = v381;
      sub_24A62E3E4();

      v325 = v386;
      v326 = v384;
      v384(v321, v386);
      dispatch_group_enter(v323);
      v327 = sub_24A62E644();
      MEMORY[0x28223BE20](v327);
      *(&v345 - 2) = v132;
      *(&v345 - 8) = 1;
      *(swift_allocObject() + 16) = v323;
      v381 = v323;
      sub_24A62E3E4();
      v382 = v324;

      v326(v321, v325);
      v328 = v377;
      dispatch_group_enter(v377);
      v329 = sub_24A62F014();
      v330 = swift_allocObject();
      v330[2] = 0;
      v330[3] = 0;
      v331 = v385;
      v330[4] = v385;
      v393 = sub_24A547994;
      v394 = v330;
      aBlock = MEMORY[0x277D85DD0];
      v390 = 1107296256;
      v391 = sub_24A5A8458;
      v392 = &unk_285DA2780;
      v332 = _Block_copy(&aBlock);
      v333 = v328;
      v334 = v372;
      sub_24A62EAB4();
      v388 = MEMORY[0x277D84F90];
      v335 = v373;
      v336 = v375;
      sub_24A62F254();
      v337 = v381;
      sub_24A62EFB4();
      _Block_release(v332);

      v369(v335, v336);
      v370(v334, v374);

      if (qword_27EF4EAE8 != -1)
      {
        swift_once();
      }

      sub_24A62EA04();
      dispatch_group_enter(v333);
      v338 = sub_24A62E644();
      MEMORY[0x28223BE20](v338);
      *(&v345 - 2) = v132;
      *(&v345 - 8) = 0;
      v339 = swift_allocObject();
      v339[2] = 0;
      v339[3] = 0;
      v339[4] = v331;
      v340 = v333;
      sub_24A62E3E4();

      v384(v321, v386);
      *(v132 + OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator_pumpDelay) = 0;
      *(v132 + OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator_pumpEndValue) = 0x3FEEB851EB851EB8;
      if (qword_27EF4EB20 != -1)
      {
        swift_once();
      }

      if (qword_27EF4EB28 != -1)
      {
        swift_once();
      }

      dispatch_group_enter(v340);
      sub_24A62EA04();

      v341 = v387;
      v342 = sub_24A62E644();
      MEMORY[0x28223BE20](v342);
      *(&v345 - 2) = v132;
      *(&v345 - 8) = 1;
      v343 = swift_allocObject();
      *(v343 + 16) = v331;
      *(v343 + 24) = 1;
      *(v343 + 40) = 0;
      *(v343 + 48) = 0;
      *(v343 + 32) = v132;
      v344 = v340;

      sub_24A62E3E4();

      v298 = v341;
    }

    v384(v298, v386);
  }

  else
  {
    if (qword_27EF4EC78 != -1)
    {
      swift_once();
    }

    v192 = sub_24A506EB8(v121, qword_27EF5CA60);
    dispatch_group_enter(v156);
    [v137 begin];
    v193 = v345;
    sub_24A5461E8(v192, v345);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v194 = *(v193 + 8);
    }

    else
    {
      v222 = v363;
      v223 = v193;
      v224 = v362;
      (*(v363 + 32))(v362, v223, v127);
      sub_24A62E934();
      v194 = v225;
      (*(v222 + 8))(v224, v127);
    }

    [v137 setDuration_];
    v226 = sub_24A6268BC();
    [v137 setTimingFunction_];

    v227 = swift_allocObject();
    v227[2] = 0;
    v227[3] = 0;
    v227[4] = v147;
    v393 = sub_24A547994;
    v394 = v227;
    aBlock = MEMORY[0x277D85DD0];
    v390 = 1107296256;
    v391 = sub_24A5A8458;
    v392 = &unk_285DA29B0;
    v228 = _Block_copy(&aBlock);
    v229 = v156;

    [v137 setCompletionBlock_];
    _Block_release(v228);
    v230 = swift_weakLoadStrong();
    if (v230)
    {
      v231 = *(v230 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_mainEmitter);

      v392 = MEMORY[0x277D83A90];
      LODWORD(aBlock) = 1065353216;
      sub_24A583BD0(9, &aBlock);

      sub_24A50EC28(&aBlock);
    }

    [v137 commit];
    sub_24A52B554(v147, 0, 0);
    if (qword_27EF4EBF0 != -1)
    {
      swift_once();
    }

    dispatch_group_enter(v229);
    v232 = sub_24A62E644();
    MEMORY[0x28223BE20](v232);
    *(&v345 - 2) = v132;
    *(&v345 - 8) = 0;
    v233 = swift_allocObject();
    v233[2] = 0;
    v233[3] = 0;
    v233[4] = v147;
    v382 = v229;
    sub_24A62E3E4();

    v234 = v387;
    v384(v387, v386);
    if (qword_27EF4EBA0 != -1)
    {
      swift_once();
    }

    if (qword_27EF4EBA8 != -1)
    {
      swift_once();
    }

    v381 = qword_27EF5C910;
    v235 = dispatch_group_create();
    dispatch_group_enter(v235);
    v236 = sub_24A62E644();
    MEMORY[0x28223BE20](v236);
    *(&v345 - 2) = v132;
    *(&v345 - 8) = 1;
    *(swift_allocObject() + 16) = v235;
    v237 = v235;
    sub_24A62E3E4();

    v238 = v386;
    v239 = v384;
    v384(v234, v386);
    dispatch_group_enter(v237);
    v240 = sub_24A62E644();
    MEMORY[0x28223BE20](v240);
    *(&v345 - 2) = v132;
    *(&v345 - 8) = 1;
    *(swift_allocObject() + 16) = v237;
    v241 = v237;
    sub_24A62E3E4();

    v239(v234, v238);
    v242 = v382;
    dispatch_group_enter(v382);
    v243 = sub_24A62F014();
    v244 = swift_allocObject();
    v244[2] = 0;
    v244[3] = 0;
    v244[4] = v385;
    v393 = sub_24A547994;
    v394 = v244;
    aBlock = MEMORY[0x277D85DD0];
    v390 = 1107296256;
    v391 = sub_24A5A8458;
    v392 = &unk_285DA2A78;
    v245 = _Block_copy(&aBlock);
    v246 = v242;
    v247 = v372;
    sub_24A62EAB4();
    v388 = MEMORY[0x277D84F90];
    v248 = v373;
    v249 = v375;
    sub_24A62F254();
    sub_24A62EFB4();
    _Block_release(v245);

    v369(v248, v249);
    v370(v247, v374);

    *(v353 + v352) = 1;
  }
}

uint64_t sub_24A5344A4(int a1, NSObject *a2, uint64_t a3)
{
  LODWORD(v340) = a1;
  v344 = sub_24A62E984();
  v343 = *(v344 - 8);
  MEMORY[0x28223BE20](v344);
  v342 = &v331 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v355 = type metadata accessor for PFVFXAnimation(0);
  MEMORY[0x28223BE20](v355);
  v334 = &v331 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v333 = &v331 - v9;
  MEMORY[0x28223BE20](v10);
  v332 = &v331 - v11;
  MEMORY[0x28223BE20](v12);
  v339 = &v331 - v13;
  MEMORY[0x28223BE20](v14);
  v345 = (&v331 - v15);
  MEMORY[0x28223BE20](v16);
  v338 = &v331 - v17;
  v361 = sub_24A62EA94();
  v363 = *(v361 - 8);
  MEMORY[0x28223BE20](v361);
  v360 = &v331 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v359 = sub_24A62EAD4();
  v362 = *(v359 - 8);
  MEMORY[0x28223BE20](v359);
  v358 = &v331 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v354 = sub_24A62EAF4();
  v357 = *(v354 - 8);
  MEMORY[0x28223BE20](v354);
  v21 = &v331 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v353 = &v331 - v23;
  v24 = sub_24A62E654();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = &v331 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a3 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_vfxIsArcFullRing) = 0;
  *(a3 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_vfxTargetArrow) = 0;
  *(a3 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_vfxTargetSphere) = 0;
  if (qword_27EF4EBF0 != -1)
  {
    swift_once();
  }

  v28 = qword_27EF5C958;
  dispatch_group_enter(a2);
  v29 = sub_24A62E644();
  MEMORY[0x28223BE20](v29);
  v366 = a2;
  *(&v331 - 2) = v3;
  *(&v331 - 8) = 0;
  v30 = swift_allocObject();
  v30[2] = 0;
  v30[3] = 0;
  v30[4] = a2;
  v31 = a2;
  v364 = v3;
  v32 = v31;
  v335 = v28;
  sub_24A62E3E4();
  v337 = 0;

  v33 = *(v25 + 8);
  v34 = v24;
  v369 = v25 + 8;
  v367 = v33;
  v33(v27, v24);
  dispatch_group_enter(v32);
  v351 = sub_24A545E8C();
  v347 = sub_24A62F014();
  sub_24A62EAE4();
  v35 = v353;
  sub_24A62EB54();
  v36 = v364;
  v368 = v34;
  v37 = v357 + 8;
  v352 = *(v357 + 8);
  v341 = v21;
  v38 = v354;
  v352(v21, v354);
  v39 = swift_allocObject();
  *(v39 + 16) = v36;
  *(v39 + 24) = 0;
  *(v39 + 32) = 0;
  *(v39 + 40) = 0;
  *(v39 + 48) = a2;
  v375 = sub_24A547A54;
  v376 = v39;
  aBlock = MEMORY[0x277D85DD0];
  v372 = 1107296256;
  v373 = sub_24A5A8458;
  v374 = &unk_285DA2B68;
  v40 = _Block_copy(&aBlock);
  v365 = v27;
  v41 = v40;
  v356 = v32;

  v42 = v358;
  sub_24A62EAB4();
  aBlock = MEMORY[0x277D84F90];
  v43 = sub_24A545F60();
  v44 = sub_24A508FA4(&unk_27EF50510, &unk_24A633E30);
  v45 = sub_24A529464();
  v46 = v360;
  v349 = v44;
  v348 = v45;
  v47 = v361;
  v350 = v43;
  sub_24A62F254();
  v48 = v347;
  MEMORY[0x24C21A910](v35, v42, v46, v41);
  _Block_release(v41);

  v49 = v363 + 8;
  v347 = *(v363 + 8);
  v347(v46, v47);
  v50 = *(v362 + 8);
  v362 += 8;
  v346 = v50;
  v50(v42, v359);
  v357 = v37;
  v352(v35, v38);
  if (qword_27EF4EB10 != -1)
  {
    swift_once();
  }

  v51 = v356;
  dispatch_group_enter(v356);
  v52 = v365;
  sub_24A62E644();
  v53 = swift_allocObject();
  v53[2] = v36;
  v53[3] = 0;
  v54 = v366;
  v53[4] = 0;
  v53[5] = v54;
  v356 = v51;

  v55 = v337;
  sub_24A62E3E4();

  v367(v52, v368);
  if (qword_27EF4EBA0 != -1)
  {
    swift_once();
  }

  v363 = v49;
  if (qword_27EF4EBA8 != -1)
  {
    swift_once();
  }

  v337 = qword_27EF5C910;
  v56 = dispatch_group_create();
  dispatch_group_enter(v56);
  v57 = v365;
  v58 = sub_24A62E644();
  MEMORY[0x28223BE20](v58);
  *(&v331 - 2) = v36;
  *(&v331 - 8) = 0;
  *(swift_allocObject() + 16) = v56;
  v59 = v56;
  sub_24A62E3E4();

  v60 = v368;
  v61 = v367;
  v367(v57, v368);
  dispatch_group_enter(v59);
  v62 = sub_24A62E644();
  MEMORY[0x28223BE20](v62);
  *(&v331 - 2) = v36;
  *(&v331 - 8) = 0;
  *(swift_allocObject() + 16) = v59;
  v336 = v59;
  sub_24A62E3E4();
  v337 = v55;

  v61(v57, v60);
  v63 = v356;
  dispatch_group_enter(v356);
  v64 = sub_24A62F014();
  v65 = swift_allocObject();
  v65[2] = 0;
  v65[3] = 0;
  v66 = v366;
  v65[4] = v366;
  v375 = sub_24A547994;
  v376 = v65;
  aBlock = MEMORY[0x277D85DD0];
  v372 = 1107296256;
  v373 = sub_24A5A8458;
  v374 = &unk_285DA2C30;
  v67 = _Block_copy(&aBlock);
  v68 = v63;
  v69 = v358;
  sub_24A62EAB4();
  v370 = MEMORY[0x277D84F90];
  v70 = v360;
  v71 = v361;
  sub_24A62F254();
  v72 = v336;
  sub_24A62EFB4();
  _Block_release(v67);

  v347(v70, v71);
  v346(v69, v359);

  if (qword_27EF4EC08 != -1)
  {
    swift_once();
  }

  dispatch_group_enter(v68);
  v73 = sub_24A62E644();
  MEMORY[0x28223BE20](v73);
  *(&v331 - 2) = v364;
  *(&v331 - 8) = 0;
  v74 = swift_allocObject();
  v74[2] = 0;
  v74[3] = 0;
  v74[4] = v66;
  v75 = v68;
  v76 = v337;
  sub_24A62E3E4();
  v356 = v76;

  v367(v57, v368);
  v77 = v338;
  if (qword_27EF4ECA8 != -1)
  {
    swift_once();
  }

  v78 = sub_24A506EB8(v355, qword_27EF5CAF0);
  dispatch_group_enter(v75);
  v79 = objc_opt_self();
  [v79 begin];
  sub_24A5461E8(v78, v77);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v80 = *(v77 + 8);
  }

  else
  {
    v81 = v343;
    v82 = v342;
    v83 = v344;
    (*(v343 + 32))(v342, v77, v344);
    sub_24A62E934();
    v80 = v84;
    (*(v81 + 8))(v82, v83);
  }

  v85 = v364;
  [v79 setDuration_];
  v86 = sub_24A6268BC();
  [v79 setTimingFunction_];

  v87 = swift_allocObject();
  v87[2] = 0;
  v87[3] = 0;
  v88 = v366;
  v87[4] = v366;
  v375 = sub_24A547994;
  v376 = v87;
  aBlock = MEMORY[0x277D85DD0];
  v372 = 1107296256;
  v373 = sub_24A5A8458;
  v374 = &unk_285DA2CA8;
  v89 = _Block_copy(&aBlock);
  v90 = v75;

  [v79 setCompletionBlock_];
  _Block_release(v89);
  v91 = OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator_vfxManager;
  Strong = swift_weakLoadStrong();
  v93 = MEMORY[0x277D83A90];
  if (Strong)
  {
    v94 = *(Strong + OBJC_IVAR____TtC11FMFindingUI10VFXManager_mainEmitter);

    v374 = v93;
    LODWORD(aBlock) = 0;
    sub_24A583BD0(11, &aBlock);

    sub_24A50EC28(&aBlock);
  }

  [v79 commit];
  v95 = v365;
  v96 = v345;
  if (qword_27EF4ECA0 != -1)
  {
    swift_once();
  }

  v97 = sub_24A506EB8(v355, qword_27EF5CAD8);
  sub_24A5461E8(v97, v96);
  dispatch_group_enter(v90);
  [v79 begin];
  v98 = v339;
  sub_24A5461E8(v96, v339);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v99 = *(v98 + 8);
  }

  else
  {
    v100 = v343;
    v101 = v98;
    v102 = v342;
    v103 = v344;
    (*(v343 + 32))(v342, v101, v344);
    sub_24A62E934();
    v99 = v104;
    v96 = v345;
    (*(v100 + 8))(v102, v103);
  }

  [v79 setDuration_];
  v105 = sub_24A6268BC();
  [v79 setTimingFunction_];

  v106 = swift_allocObject();
  v106[2] = 0;
  v106[3] = 0;
  v106[4] = v88;
  v375 = sub_24A547994;
  v376 = v106;
  aBlock = MEMORY[0x277D85DD0];
  v372 = 1107296256;
  v373 = sub_24A5A8458;
  v374 = &unk_285DA2CF8;
  v107 = _Block_copy(&aBlock);
  v345 = v90;

  [v79 setCompletionBlock_];
  _Block_release(v107);
  v108 = swift_weakLoadStrong();
  if (v108)
  {
    v109 = *(v108 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_mainEmitter);

    v374 = MEMORY[0x277D83A90];
    LODWORD(aBlock) = 0;
    sub_24A583BD0(8, &aBlock);

    sub_24A50EC28(&aBlock);
  }

  [v79 commit];
  sub_24A54624C(v96);
  if (v340 > 3u)
  {
    if (v340 - 4 >= 2)
    {
      goto LABEL_68;
    }

    *(v85 + OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator_pumpDelay) = 0x3FC70A3D70A3D70ALL;
    *(v85 + OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator_pumpEndValue) = 0x3FF0A3D70A3D70A4;
    if (qword_27EF4EAE0 != -1)
    {
      swift_once();
    }

    v355 = qword_27EF5C848;
    v143 = v345;
    dispatch_group_enter(v345);
    v144 = sub_24A62E644();
    MEMORY[0x28223BE20](v144);
    *(&v331 - 2) = v85;
    *(&v331 - 8) = 0;
    *(swift_allocObject() + 16) = v88;
    v145 = v143;
    v146 = v356;
    sub_24A62E3E4();

    v367(v95, v368);
    sub_24A62EA04();
    dispatch_group_enter(v145);
    v147 = sub_24A62E644();
    v148 = v95;
    v149 = v85;
    v150 = v88;
    MEMORY[0x28223BE20](v147);
    *(&v331 - 2) = v149;
    *(&v331 - 8) = 1;
    v151 = swift_allocObject();
    v151[2] = 0;
    v151[3] = 0;
    v151[4] = v88;
    v152 = v145;
    sub_24A62E3E4();

    v153 = v149;
    v135 = v148;
    v154 = v367;
    v367(v148, v368);
    dispatch_group_enter(v152);
    v155 = sub_24A62E644();
    v356 = &v331;
    MEMORY[0x28223BE20](v155);
    *(&v331 - 2) = v153;
    *(&v331 - 8) = 0;
    v156 = swift_allocObject();
    v156[2] = 0;
    v156[3] = 0;
    v156[4] = v150;
    v157 = v152;
    sub_24A62E3E4();

    v154(v148, v368);
    dispatch_group_enter(v157);
    v158 = sub_24A62E644();
    MEMORY[0x28223BE20](v158);
    *(&v331 - 2) = v153;
    *(&v331 - 8) = 0;
    v159 = swift_allocObject();
    v159[2] = 0;
    v159[3] = 0;
    v159[4] = v150;
    v160 = v157;
    sub_24A62E3E4();

    v367(v148, v368);
    if (qword_27EF4EB58 != -1)
    {
      swift_once();
    }

    v161 = qword_27EF5C8C0;
    dispatch_group_enter(v160);
    v162 = sub_24A62E644();
    MEMORY[0x28223BE20](v162);
    v163 = v364;
    *(&v331 - 2) = v364;
    *(&v331 - 8) = 0;
    v164 = swift_allocObject();
    v164[2] = 0;
    v164[3] = 0;
    v88 = v366;
    v164[4] = v366;
    v165 = v160;
    sub_24A62E3E4();

    v367(v135, v368);
    sub_24A52AE18(0, v161, v88, 0, 0);
    if (qword_27EF4EC20 != -1)
    {
      swift_once();
    }

    dispatch_group_enter(v165);
    v166 = sub_24A62E644();
    MEMORY[0x28223BE20](v166);
    *(&v331 - 2) = v163;
    *(&v331 - 8) = 0;
    v167 = swift_allocObject();
    v167[2] = 0;
    v167[3] = 0;
    v167[4] = v88;
    v168 = v165;
    sub_24A62E3E4();

    v367(v135, v368);
    if (qword_27EF4EB68 != -1)
    {
      swift_once();
    }

    dispatch_group_enter(v168);
    v169 = sub_24A62E644();
    MEMORY[0x28223BE20](v169);
    *(&v331 - 2) = v163;
    *(&v331 - 8) = 1;
    v170 = swift_allocObject();
    v170[2] = 0;
    v170[3] = 0;
    v170[4] = v88;
    v171 = v168;
    sub_24A62E3E4();
    v356 = v146;
    v137 = v367;
    v141 = v163;
  }

  else
  {
    if (!v340)
    {
      *(v85 + OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator_pumpEndValue) = 0x3FEEB851EB851EB8;
      if (qword_27EF4EAE0 != -1)
      {
        swift_once();
      }

      v340 = qword_27EF5C848;
      sub_24A62EA04();
      v172 = v345;
      dispatch_group_enter(v345);
      v173 = sub_24A62E644();
      MEMORY[0x28223BE20](v173);
      *(&v331 - 2) = v85;
      *(&v331 - 8) = 0;
      v174 = swift_allocObject();
      v174[2] = 0;
      v174[3] = 0;
      v174[4] = v366;
      v175 = v172;
      v176 = v356;
      sub_24A62E3E4();
      v356 = v176;

      v177 = v365;
      v367(v365, v368);
      v178 = v332;
      if (qword_27EF4EC68 != -1)
      {
        swift_once();
      }

      v179 = sub_24A506EB8(v355, qword_27EF5CA30);
      dispatch_group_enter(v175);
      [v79 begin];
      sub_24A5461E8(v179, v178);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v180 = *(v178 + 8);
      }

      else
      {
        v219 = v343;
        v220 = v342;
        v221 = v344;
        (*(v343 + 32))(v342, v178, v344);
        sub_24A62E934();
        v180 = v222;
        (*(v219 + 8))(v220, v221);
      }

      v223 = v366;
      [v79 setDuration_];
      v224 = sub_24A6268BC();
      [v79 setTimingFunction_];

      v225 = swift_allocObject();
      v225[2] = 0;
      v225[3] = 0;
      v225[4] = v223;
      v375 = sub_24A547994;
      v376 = v225;
      aBlock = MEMORY[0x277D85DD0];
      v372 = 1107296256;
      v373 = sub_24A5A8458;
      v374 = &unk_285DA3298;
      v226 = _Block_copy(&aBlock);
      v227 = v175;

      [v79 setCompletionBlock_];
      _Block_release(v226);
      v228 = swift_weakLoadStrong();
      if (v228)
      {
        v229 = *(v228 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_mainEmitter);

        v374 = MEMORY[0x277D83A90];
        LODWORD(aBlock) = 1065353216;
        sub_24A583BD0(9, &aBlock);

        sub_24A50EC28(&aBlock);
      }

      [v79 commit];
      dispatch_group_enter(v227);
      [v79 begin];
      v230 = v333;
      sub_24A5461E8(v179, v333);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v231 = *(v230 + 8);
      }

      else
      {
        v232 = v343;
        v233 = v342;
        v234 = v230;
        v235 = v344;
        (*(v343 + 32))(v342, v234, v344);
        sub_24A62E934();
        v231 = v236;
        (*(v232 + 8))(v233, v235);
      }

      [v79 setDuration_];
      v237 = sub_24A6268BC();
      [v79 setTimingFunction_];

      v238 = swift_allocObject();
      v238[2] = 0;
      v238[3] = 0;
      v238[4] = v223;
      v375 = sub_24A547994;
      v376 = v238;
      aBlock = MEMORY[0x277D85DD0];
      v372 = 1107296256;
      v373 = sub_24A5A8458;
      v374 = &unk_285DA32E8;
      v239 = _Block_copy(&aBlock);
      v240 = v227;

      [v79 setCompletionBlock_];
      _Block_release(v239);
      v241 = swift_weakLoadStrong();
      if (v241)
      {
        v242 = *(v241 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_mainEmitter);

        v374 = MEMORY[0x277D83A90];
        LODWORD(aBlock) = 1065353216;
        sub_24A583BD0(10, &aBlock);

        sub_24A50EC28(&aBlock);
      }

      [v79 commit];
      *(v85 + OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator_pumpDelay) = 0x3FCD70A3D70A3D70;
      if (qword_27EF4EB60 != -1)
      {
        swift_once();
      }

      dispatch_group_enter(v240);
      v243 = sub_24A62E644();
      MEMORY[0x28223BE20](v243);
      *(&v331 - 2) = v85;
      *(&v331 - 8) = 0;
      v244 = swift_allocObject();
      v244[2] = 0;
      v244[3] = 0;
      v244[4] = v223;
      v245 = v240;
      v246 = v356;
      sub_24A62E3E4();

      v247 = v85;
      v249 = v367;
      v248 = v368;
      v367(v177, v368);
      dispatch_group_enter(v245);
      v250 = sub_24A62E644();
      MEMORY[0x28223BE20](v250);
      *(&v331 - 2) = v247;
      *(&v331 - 8) = 0;
      v251 = swift_allocObject();
      v251[2] = 0;
      v251[3] = 0;
      v251[4] = v223;
      v252 = v245;
      v253 = v249;
      sub_24A62E3E4();

      v249(v177, v248);
      if (qword_27EF4EB98 != -1)
      {
        swift_once();
      }

      dispatch_group_enter(v252);
      v254 = sub_24A62E644();
      v356 = &v331;
      MEMORY[0x28223BE20](v254);
      v255 = v364;
      *(&v331 - 2) = v364;
      *(&v331 - 8) = 1;
      v256 = swift_allocObject();
      v256[2] = 0;
      v256[3] = 0;
      v256[4] = v366;
      v257 = v252;
      sub_24A62E3E4();

      v253(v177, v248);
      if (qword_27EF4EBE8 != -1)
      {
        swift_once();
      }

      dispatch_group_enter(v257);
      v258 = sub_24A62E644();
      v356 = &v331;
      MEMORY[0x28223BE20](v258);
      *(&v331 - 2) = v255;
      *(&v331 - 8) = 0;
      *(swift_allocObject() + 16) = v366;
      v259 = v257;
      sub_24A62E3E4();

      v367(v177, v248);
      v260 = v255;
      if (qword_27EF4EB58 != -1)
      {
        swift_once();
      }

      v261 = qword_27EF5C8C0;
      dispatch_group_enter(v259);
      v262 = sub_24A62E644();
      MEMORY[0x28223BE20](v262);
      *(&v331 - 2) = v255;
      *(&v331 - 8) = 0;
      v263 = swift_allocObject();
      v263[2] = 0;
      v263[3] = 0;
      v264 = v177;
      v265 = v366;
      v263[4] = v366;
      v266 = v259;
      sub_24A62E3E4();

      v367(v264, v248);
      sub_24A52AE18(0, v261, v265, 0, 0);
      v267 = v264;
      if (qword_27EF4EB68 != -1)
      {
        swift_once();
      }

      sub_24A62EA04();
      dispatch_group_enter(v266);
      v268 = sub_24A62E644();
      MEMORY[0x28223BE20](v268);
      *(&v331 - 2) = v260;
      *(&v331 - 8) = 1;
      v269 = swift_allocObject();
      v269[2] = 0;
      v269[3] = 0;
      v269[4] = v265;
      v88 = v265;
      v270 = v266;
      sub_24A62E3E4();

      v142 = v368;
      v271 = v367;
      v367(v267, v368);
      dispatch_group_enter(v270);
      v272 = sub_24A62E644();
      MEMORY[0x28223BE20](v272);
      *(&v331 - 2) = v260;
      *(&v331 - 8) = 0;
      v273 = swift_allocObject();
      v273[2] = 0;
      v273[3] = 0;
      v273[4] = v265;
      v274 = v270;
      sub_24A62E3E4();
      v356 = v246;
      v141 = v260;
      v135 = v267;
      v137 = v271;
      goto LABEL_93;
    }

    if (v340 != 1)
    {
      if (v340 == 3)
      {
        *(v85 + OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator_pumpEndValue) = 0x3FEE147AE147AE14;
        if (qword_27EF4EAE0 != -1)
        {
          swift_once();
        }

        v110 = qword_27EF5C848;
        v111 = v345;
        dispatch_group_enter(v345);
        v112 = sub_24A62E644();
        MEMORY[0x28223BE20](v112);
        *(&v331 - 2) = v85;
        *(&v331 - 8) = 0;
        v113 = swift_allocObject();
        v113[2] = 0;
        v113[3] = 0;
        v113[4] = v88;
        v114 = v111;
        v115 = v356;
        sub_24A62E3E4();

        v367(v95, v368);
        v356 = v110;
        sub_24A52AE18(0, v110, v88, 0, 0);
        v116 = v88;
        if (qword_27EF4EB08 != -1)
        {
          swift_once();
        }

        dispatch_group_enter(v114);
        v117 = sub_24A62E644();
        MEMORY[0x28223BE20](v117);
        *(&v331 - 2) = v85;
        *(&v331 - 8) = 0;
        *(swift_allocObject() + 16) = v88;
        v118 = v114;
        sub_24A62E3E4();

        v119 = v365;
        v120 = v368;
        v367(v365, v368);
        *(v85 + OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator_pumpDelay) = 0;
        sub_24A62EA04();
        dispatch_group_enter(v118);
        v121 = sub_24A62E644();
        v355 = &v331;
        MEMORY[0x28223BE20](v121);
        *(&v331 - 2) = v85;
        *(&v331 - 8) = 0;
        v122 = swift_allocObject();
        v122[2] = 0;
        v122[3] = 0;
        v122[4] = v116;
        v123 = v118;
        sub_24A62E3E4();

        v124 = v367;
        v367(v119, v120);
        sub_24A62EA04();
        dispatch_group_enter(v123);
        v125 = sub_24A62E644();
        MEMORY[0x28223BE20](v125);
        *(&v331 - 2) = v85;
        *(&v331 - 8) = 0;
        v126 = swift_allocObject();
        v126[2] = 0;
        v126[3] = 0;
        v126[4] = v366;
        v127 = v123;
        sub_24A62E3E4();

        v124(v119, v368);
        if (qword_27EF4EB98 != -1)
        {
          swift_once();
        }

        dispatch_group_enter(v127);
        v128 = sub_24A62E644();
        MEMORY[0x28223BE20](v128);
        *(&v331 - 2) = v85;
        *(&v331 - 8) = 1;
        v129 = swift_allocObject();
        v129[2] = 0;
        v129[3] = 0;
        v130 = v366;
        v129[4] = v366;
        v131 = v127;
        sub_24A62E3E4();

        v124(v365, v368);
        sub_24A62EA04();
        dispatch_group_enter(v131);
        v132 = sub_24A62E644();
        MEMORY[0x28223BE20](v132);
        *(&v331 - 2) = v85;
        *(&v331 - 8) = 1;
        v133 = swift_allocObject();
        v133[2] = 0;
        v133[3] = 0;
        v133[4] = v130;
        v134 = v131;
        sub_24A62E3E4();

        v135 = v365;
        v137 = v367;
        v136 = v368;
        v367(v365, v368);
        dispatch_group_enter(v134);
        v138 = sub_24A62E644();
        MEMORY[0x28223BE20](v138);
        *(&v331 - 2) = v85;
        *(&v331 - 8) = 0;
        v139 = swift_allocObject();
        v139[2] = 0;
        v139[3] = 0;
        v88 = v366;
        v139[4] = v366;
        v140 = v134;
        sub_24A62E3E4();
        v356 = v115;
        v141 = v85;
        v142 = v136;
        goto LABEL_93;
      }

LABEL_68:
      v218 = v95;
      v141 = v85;
      goto LABEL_94;
    }

    v339 = v91;
    *(v85 + OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator_pumpEndValue) = 0x3FEE147AE147AE14;
    if (qword_27EF4EAE0 != -1)
    {
      swift_once();
    }

    v340 = qword_27EF5C848;
    sub_24A62EA04();
    v181 = v345;
    dispatch_group_enter(v345);
    v182 = sub_24A62E644();
    MEMORY[0x28223BE20](v182);
    *(&v331 - 2) = v85;
    *(&v331 - 8) = 0;
    v183 = swift_allocObject();
    v183[2] = 0;
    v183[3] = 0;
    v183[4] = v366;
    v184 = v181;
    v185 = v356;
    sub_24A62E3E4();

    v186 = v365;
    v367(v365, v368);
    *(v85 + OBJC_IVAR____TtC11FMFindingUI22PFAnimationCoordinator_pumpDelay) = 0;
    if (qword_27EF4EB60 != -1)
    {
      swift_once();
    }

    dispatch_group_enter(v184);
    v187 = sub_24A62E644();
    MEMORY[0x28223BE20](v187);
    *(&v331 - 2) = v85;
    *(&v331 - 8) = 0;
    v188 = swift_allocObject();
    v189 = v85;
    v188[2] = 0;
    v188[3] = 0;
    v188[4] = v366;
    v190 = v184;
    sub_24A62E3E4();

    v191 = v368;
    v192 = v367;
    v367(v186, v368);
    dispatch_group_enter(v190);
    v193 = sub_24A62E644();
    v356 = &v331;
    MEMORY[0x28223BE20](v193);
    *(&v331 - 2) = v189;
    *(&v331 - 8) = 0;
    v194 = swift_allocObject();
    v194[2] = 0;
    v194[3] = 0;
    v194[4] = v366;
    v195 = v190;
    sub_24A62E3E4();

    v192(v186, v191);
    if (qword_27EF4EB98 != -1)
    {
      swift_once();
    }

    dispatch_group_enter(v195);
    v196 = sub_24A62E644();
    MEMORY[0x28223BE20](v196);
    *(&v331 - 2) = v364;
    *(&v331 - 8) = 1;
    v197 = swift_allocObject();
    v197[2] = 0;
    v197[3] = 0;
    v197[4] = v366;
    v198 = v195;
    sub_24A62E3E4();

    v199 = v365;
    v192(v365, v191);
    if (qword_27EF4EBE8 != -1)
    {
      swift_once();
    }

    dispatch_group_enter(v198);
    v200 = sub_24A62E644();
    MEMORY[0x28223BE20](v200);
    *(&v331 - 2) = v364;
    *(&v331 - 8) = 0;
    *(swift_allocObject() + 16) = v366;
    v201 = v198;
    sub_24A62E3E4();

    v192(v199, v368);
    if (qword_27EF4EB58 != -1)
    {
      swift_once();
    }

    v202 = qword_27EF5C8C0;
    dispatch_group_enter(v201);
    v203 = sub_24A62E644();
    MEMORY[0x28223BE20](v203);
    v204 = v364;
    *(&v331 - 2) = v364;
    *(&v331 - 8) = 0;
    v205 = swift_allocObject();
    v205[2] = 0;
    v205[3] = 0;
    v206 = v366;
    v205[4] = v366;
    v356 = v201;
    sub_24A62E3E4();
    v207 = v365;

    v208 = v368;
    v367(v207, v368);
    sub_24A52AE18(0, v202, v206, 0, 0);
    v209 = v204;
    if (qword_27EF4EB68 != -1)
    {
      swift_once();
    }

    sub_24A62EA04();
    v210 = v356;
    dispatch_group_enter(v356);
    v211 = sub_24A62E644();
    v338 = &v331;
    MEMORY[0x28223BE20](v211);
    *(&v331 - 2) = v204;
    *(&v331 - 8) = 1;
    v212 = swift_allocObject();
    v212[2] = 0;
    v212[3] = 0;
    v212[4] = v206;
    v213 = v210;
    sub_24A62E3E4();

    v214 = v365;
    v367(v365, v208);
    if (qword_27EF4EC50 != -1)
    {
      swift_once();
    }

    v215 = sub_24A506EB8(v355, qword_27EF5C9E8);
    dispatch_group_enter(v213);
    [v79 begin];
    v216 = v334;
    sub_24A5461E8(v215, v334);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v217 = *(v216 + 8);
    }

    else
    {
      v275 = v343;
      v276 = v342;
      v277 = v344;
      (*(v343 + 32))(v342, v216, v344);
      sub_24A62E934();
      v217 = v278;
      (*(v275 + 8))(v276, v277);
    }

    v88 = v366;
    [v79 setDuration_];
    v279 = sub_24A6268BC();
    [v79 setTimingFunction_];

    v280 = swift_allocObject();
    v280[2] = 0;
    v280[3] = 0;
    v280[4] = v88;
    v375 = sub_24A547994;
    v376 = v280;
    aBlock = MEMORY[0x277D85DD0];
    v372 = 1107296256;
    v373 = sub_24A5A8458;
    v374 = &unk_285DA31F8;
    v281 = _Block_copy(&aBlock);
    v282 = v213;

    [v79 setCompletionBlock_];
    _Block_release(v281);
    v283 = swift_weakLoadStrong();
    if (v283)
    {
      v284 = *(v283 + OBJC_IVAR____TtC11FMFindingUI10VFXManager_mainEmitter);

      v374 = MEMORY[0x277D83A90];
      LODWORD(aBlock) = 1065353216;
      sub_24A583BD0(10, &aBlock);

      sub_24A50EC28(&aBlock);
    }

    [v79 commit];
    dispatch_group_enter(v282);
    v285 = sub_24A62E644();
    MEMORY[0x28223BE20](v285);
    *(&v331 - 2) = v209;
    *(&v331 - 8) = 0;
    v286 = swift_allocObject();
    v286[2] = 0;
    v286[3] = 0;
    v286[4] = v88;
    v287 = v282;
    sub_24A62E3E4();
    v356 = v185;
    v137 = v367;
    v141 = v209;
    v135 = v214;
  }

  v142 = v368;
LABEL_93:

  v218 = v135;
  v137(v135, v142);
LABEL_94:
  if (qword_27EF4EB20 != -1)
  {
    swift_once();
  }

  if (qword_27EF4EB28 != -1)
  {
    swift_once();
  }

  v288 = v345;
  dispatch_group_enter(v345);
  v289 = v141;
  sub_24A62EA04();

  v290 = sub_24A62E644();
  MEMORY[0x28223BE20](v290);
  *(&v331 - 2) = v141;
  *(&v331 - 8) = 1;
  v291 = swift_allocObject();
  *(v291 + 16) = v88;
  *(v291 + 24) = 1;
  *(v291 + 40) = 0;
  *(v291 + 48) = 0;
  *(v291 + 32) = v141;
  v292 = v288;

  v293 = v356;
  sub_24A62E3E4();

  v294 = v367;
  v367(v218, v368);
  if (qword_27EF4EB90 != -1)
  {
    swift_once();
  }

  dispatch_group_enter(v292);
  v295 = sub_24A62E644();
  MEMORY[0x28223BE20](v295);
  *(&v331 - 2) = v141;
  *(&v331 - 8) = 0;
  v296 = swift_allocObject();
  v296[2] = 0;
  v296[3] = 0;
  v296[4] = v88;
  v297 = v292;
  sub_24A62E3E4();

  v294(v218, v368);
  if (qword_27EF4EB80 != -1)
  {
    swift_once();
  }

  dispatch_group_enter(v297);
  v298 = sub_24A62E644();
  MEMORY[0x28223BE20](v298);
  *(&v331 - 2) = v141;
  *(&v331 - 8) = 0;
  v299 = swift_allocObject();
  v299[2] = 0;
  v299[3] = 0;
  v299[4] = v88;
  v300 = v297;
  sub_24A62E3E4();

  v294(v218, v368);
  if (qword_27EF4EC10 != -1)
  {
    swift_once();
  }

  dispatch_group_enter(v300);
  v301 = sub_24A62E644();
  MEMORY[0x28223BE20](v301);
  *(&v331 - 2) = v141;
  *(&v331 - 8) = 0;
  v302 = swift_allocObject();
  v302[2] = 0;
  v302[3] = 0;
  v302[4] = v88;
  v303 = v300;
  sub_24A62E3E4();
  v356 = v293;

  v294(v218, v368);
  dispatch_group_enter(v303);
  v351 = sub_24A62F014();
  v304 = v341;
  sub_24A62EAE4();
  v305 = v353;
  sub_24A62EB54();
  v306 = v354;
  v307 = v352;
  v352(v304, v354);
  v308 = swift_allocObject();
  *(v308 + 16) = v289;
  *(v308 + 24) = 0;
  *(v308 + 32) = 0;
  *(v308 + 40) = 0;
  *(v308 + 48) = v88;
  v375 = sub_24A547A30;
  v376 = v308;
  aBlock = MEMORY[0x277D85DD0];
  v372 = 1107296256;
  v373 = sub_24A5A8458;
  v374 = &unk_285DA2DE8;
  v309 = _Block_copy(&aBlock);
  v355 = v303;

  v310 = v306;
  v311 = v358;
  sub_24A62EAB4();
  aBlock = MEMORY[0x277D84F90];
  v313 = v360;
  v312 = v361;
  sub_24A62F254();
  v314 = v351;
  MEMORY[0x24C21A910](v305, v311, v313, v309);
  _Block_release(v309);

  v347(v313, v312);
  v346(v311, v359);
  v307(v305, v310);
  v315 = v368;
  if (qword_27EF4EC00 != -1)
  {
    swift_once();
  }

  v316 = v355;
  dispatch_group_enter(v355);
  v317 = v365;
  v318 = sub_24A62E644();
  MEMORY[0x28223BE20](v318);
  v319 = v364;
  *(&v331 - 2) = v364;
  *(&v331 - 8) = 1;
  v320 = swift_allocObject();
  v320[2] = 0;
  v320[3] = 0;
  v320[4] = v366;
  v321 = v316;
  sub_24A62E3E4();

  v367(v317, v315);
  if (qword_27EF4EAE0 != -1)
  {
    swift_once();
  }

  v363 = qword_27EF5C848;
  dispatch_group_enter(v321);
  v322 = sub_24A62E644();
  MEMORY[0x28223BE20](v322);
  *(&v331 - 2) = v319;
  *(&v331 - 8) = 0;
  v323 = swift_allocObject();
  v323[2] = 0;
  v323[3] = 0;
  v324 = v366;
  v323[4] = v366;
  v325 = v321;
  sub_24A62E3E4();

  v326 = v367;
  v367(v317, v315);
  dispatch_group_enter(v325);
  v327 = sub_24A62E644();
  MEMORY[0x28223BE20](v327);
  *(&v331 - 2) = v319;
  *(&v331 - 8) = 0;
  v328 = swift_allocObject();
  v328[2] = 0;
  v328[3] = 0;
  v328[4] = v324;
  v329 = v325;
  sub_24A62E3E4();

  return v326(v317, v315);
}