uint64_t sub_1CA64F428()
{
  v1 = sub_1CA948AF8();
  OUTLINED_FUNCTION_1_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_6_0();
  v7 = v6 - v5;
  v8 = [v0 effectiveBundleIdentifiers];
  sub_1CA94CBC8();

  while (1)
  {
    do
    {
      sub_1CA948AE8();
      if (!v15)
      {
        v9 = 0;
        goto LABEL_8;
      }

      sub_1CA2C0A20(&v14, &v13);
      sub_1CA25B3D0(0, &unk_1EDB9FB40, 0x1E69AC7B8);
    }

    while ((swift_dynamicCast() & 1) == 0);
    if (![v12 type])
    {
      break;
    }
  }

  v10 = [v12 bundleIdentifier];
  v9 = sub_1CA94C3A8();

LABEL_8:
  (*(v3 + 8))(v7, v1);
  return v9;
}

id sub_1CA64F5D0()
{
  v1 = [v0 systemProtocolMetadata];
  type metadata accessor for LNSystemEntityProtocolIdentifier(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447100, &unk_1CA989ED0);
  sub_1CA502E00();
  v2 = sub_1CA94C1C8();

  v3 = sub_1CA311800(*MEMORY[0x1E69AC2F0], v2);

  if (!v3)
  {
    return 0;
  }

  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (!v4)
  {
    swift_unknownObjectRelease();
    return 0;
  }

  v5 = v4;
  sub_1CA64F428();
  v7 = v6;
  if (v6)
  {
    v8 = [v5 actionIdentifier];
    if (!v8)
    {
      sub_1CA94C3A8();
      v8 = sub_1CA94C368();
    }

    v9 = [objc_opt_self() sharedProvider];
    v10 = sub_1CA94C368();

    v7 = [v9 actionWithIdentifier:v8 fromBundleIdentifier:v10];
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
  }

  return v7;
}

id sub_1CA64F77C(void *a1)
{
  v1 = a1;
  v2 = LNEntityMetadata.associatedControl.getter();

  return v2;
}

id LNEntityMetadata.associatedControl.getter()
{
  v0 = sub_1CA64F5D0();
  v1 = [v0 associatedControl];

  return v1;
}

id sub_1CA64F804(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithWidgetsPredicate:a1 controlsPredicate:a2];

  return v4;
}

id sub_1CA64F860(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1CA94C368();

  v7[0] = 0;
  v3 = [v1 initWithBundleIdentifier:v2 error:v7];

  if (v3)
  {
    v4 = v7[0];
  }

  else
  {
    v5 = v7[0];
    sub_1CA948AD8();

    swift_willThrow();
  }

  return v3;
}

id sub_1CA64F92C(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_1CA94C368();

  v8 = [v4 initWithExtensionIdentity:a1 kind:v7 intentReference:a4];

  return v8;
}

void *sub_1CA64F9AC(void *result, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = a4;
    sub_1CA64FF60(v7, a2, a3, v8);
    v10 = v9;

    return v10;
  }

  return result;
}

uint64_t sub_1CA64FA48(uint64_t a1, void *a2)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x1E69E7CD0];
    v20 = MEMORY[0x1E69E7CD0];
    v4 = a2;
    sub_1CA94D2F8();
    while (1)
    {
      while (1)
      {
        if (!sub_1CA94D358())
        {

          return v3;
        }

        sub_1CA25B3D0(0, &qword_1EC447A20, 0x1E69943B0);
        swift_dynamicCast();
        sub_1CA25B3D0(0, &qword_1EDB9F110, 0x1E69E58C0);
        v5 = [v19 identity];
        v6 = sub_1CA94CFD8();

        if (v6)
        {
          break;
        }
      }

      v7 = v3[2];
      if (v3[3] <= v7)
      {
        sub_1CA6AE240(v7 + 1);
      }

      v3 = v20;
      result = sub_1CA94CFC8();
      v9 = v20 + 56;
      v10 = -1 << *(v20 + 32);
      v11 = result & ~v10;
      v12 = v11 >> 6;
      if (((-1 << v11) & ~*(v20 + 56 + 8 * (v11 >> 6))) == 0)
      {
        break;
      }

      v13 = __clz(__rbit64((-1 << v11) & ~*(v20 + 56 + 8 * (v11 >> 6)))) | v11 & 0x7FFFFFFFFFFFFFC0;
LABEL_17:
      *(v9 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v20 + 48) + 8 * v13) = v19;
      ++*(v20 + 16);
    }

    v14 = 0;
    v15 = (63 - v10) >> 6;
    while (++v12 != v15 || (v14 & 1) == 0)
    {
      v16 = v12 == v15;
      if (v12 == v15)
      {
        v12 = 0;
      }

      v14 |= v16;
      v17 = *(v9 + 8 * v12);
      if (v17 != -1)
      {
        v13 = __clz(__rbit64(~v17)) + (v12 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
    v18 = a2;
    v3 = sub_1CA64FCA4(a1, v18);

    return v3;
  }

  return result;
}

void *sub_1CA64FCA4(uint64_t a1, void *a2)
{
  v3 = v2;
  v34 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = a2;
  v33 = v9;
  if (v6 > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v30 = v3;
    v28[1] = v28;
    MEMORY[0x1EEE9AC00](v9);
    v29 = v7;
    v31 = v28 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    sub_1CA5C3FA4(0, v7, v31);
    v32 = 0;
    v10 = 0;
    v3 = a1 + 56;
    v11 = 1 << *(a1 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v7 = v12 & *(a1 + 56);
    v13 = (v11 + 63) >> 6;
    while (v7)
    {
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_12:
      v17 = v14 | (v10 << 6);
      v18 = *(*(a1 + 48) + 8 * v17);
      sub_1CA25B3D0(0, &qword_1EDB9F110, 0x1E69E58C0);
      v19 = v18;
      v20 = [v19 identity];
      v8 = sub_1CA94CFD8();

      if (v8)
      {
        *(v31 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
        if (__OFADD__(v32++, 1))
        {
          __break(1u);
LABEL_16:
          sub_1CA6B0D20(v31, v29, v32, a1);
          v23 = v22;
          v24 = v33;

          return v23;
        }
      }
    }

    v15 = v10;
    while (1)
    {
      v10 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v10 >= v13)
      {
        goto LABEL_16;
      }

      v16 = *(v3 + 8 * v10);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v7 = (v16 - 1) & v16;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v26 = swift_slowAlloc();
  v27 = v33;
  v23 = sub_1CA64F9AC(v26, v7, a1, v27);

  MEMORY[0x1CCAA4BF0](v26, -1, -1);

  return v23;
}

void sub_1CA64FF60(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v20 = a2;
  v22 = 0;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v15 = *(*(a3 + 48) + 8 * v14);
    sub_1CA25B3D0(0, &qword_1EDB9F110, 0x1E69E58C0);
    v16 = v15;
    v17 = [v16 identity];
    v18 = sub_1CA94CFD8();

    if (v18)
    {
      *(a1 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
LABEL_15:

        sub_1CA6B0D20(a1, v20, v22, a3);

        return;
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_15;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_1CA6500F0(void *a1)
{
  v1 = [a1 bundleIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1CA94C3A8();

  return v3;
}

uint64_t sub_1CA650154(void *a1)
{
  v2 = [a1 rawIntentType];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1CA94C3A8();

  return v3;
}

uint64_t sub_1CA6501C4(void *a1)
{
  v1 = [a1 orderedControlDescriptors];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1CA25B3D0(0, &unk_1EC447990, 0x1E6994240);
  v3 = sub_1CA94C658();

  return v3;
}

uint64_t sub_1CA650270()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1CA650324;

  return sub_1CA64E390(v2, v3, v4);
}

uint64_t sub_1CA650324()
{
  OUTLINED_FUNCTION_0();
  v1 = *v0;
  OUTLINED_FUNCTION_13();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

unint64_t sub_1CA65040C()
{
  result = qword_1EC447A28;
  if (!qword_1EC447A28)
  {
    sub_1CA25B3D0(255, &qword_1EC447A20, 0x1E69943B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447A28);
  }

  return result;
}

unint64_t sub_1CA650474()
{
  result = qword_1EC447A38;
  if (!qword_1EC447A38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC447A30, &qword_1CA990768);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447A38);
  }

  return result;
}

uint64_t sub_1CA6504D8(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447A48, &unk_1CA990770);

  return sub_1CA64E290(a1);
}

uint64_t block_copy_helper_35(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_1CA6505A0()
{
  v0 = sub_1CA949D18();
  v147 = *(v0 - 8);
  v148 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v146 = &v137 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813F0;
  v3 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD00000000000001CLL;
  *(inited + 48) = 0x80000001CA9DA430;
  *(inited + 64) = v3;
  *(inited + 72) = @"ActionKeywords";
  v154 = inited;
  v4 = @"ActionClass";
  v5 = @"ActionKeywords";
  v6 = sub_1CA94C438("ocr|vision|photos", 17);
  v8 = v7;
  v9 = sub_1CA94C438("ocr|vision|photos", 17);
  v11 = v10;
  v12 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v156 = v13;
  v157 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = &v137 - v157;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v155 = qword_1EDB9F690;
  v15 = [qword_1EDB9F690 bundleURL];
  v16 = sub_1CA948BA8();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v152 = v17;
  v153 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  v18 = &v137 - v153;
  sub_1CA948B68();

  v19 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v20 = sub_1CA2F9F14(v6, v8, v9, v11, 0, 0, v14, v18);
  v21 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v151 = v21;
  v22 = v154;
  v154[10] = v20;
  v22[13] = v21;
  v22[14] = @"Description";
  v150 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_1CA97EDF0;
  *(v23 + 32) = @"DescriptionResult";
  v24 = @"Description";
  v25 = @"DescriptionResult";
  *&v144 = sub_1CA94C438("List of text", 12);
  *&v143 = v26;
  v27 = sub_1CA94C438("List of text", 12);
  v29 = v28;
  v145 = &v137;
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v137 - v157;
  sub_1CA948D98();
  v31 = v155;
  v32 = [v155 bundleURL];
  MEMORY[0x1EEE9AC00](v32);
  v33 = v153;
  sub_1CA948B68();

  v34 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v23 + 40) = sub_1CA2F9F14(v144, v143, v27, v29, 0, 0, v30, &v137 - v33);
  v35 = v151;
  *(v23 + 64) = v151;
  *(v23 + 72) = @"DescriptionSummary";
  v36 = @"DescriptionSummary";
  *&v144 = sub_1CA94C438("Uses OCR to extract text from an image.", 39);
  *&v143 = v37;
  v38 = sub_1CA94C438("Uses OCR to extract text from an image.", 39);
  v40 = v39;
  v145 = &v137;
  MEMORY[0x1EEE9AC00](v38);
  v41 = &v137 - v157;
  sub_1CA948D98();
  v42 = [v31 bundleURL];
  MEMORY[0x1EEE9AC00](v42);
  sub_1CA948B68();

  v43 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v44 = sub_1CA2F9F14(v144, v143, v38, v40, 0, 0, v41, &v137 - v33);
  *(v23 + 104) = v35;
  *(v23 + 80) = v44;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v45 = sub_1CA94C1E8();
  v46 = v150;
  v47 = sub_1CA6B3784(v45);
  v48 = v154;
  v154[15] = v47;
  v48[18] = v46;
  v48[19] = @"IconName";
  v48[20] = 0x6567616D49;
  v48[21] = 0xE500000000000000;
  v49 = MEMORY[0x1E69E6158];
  v48[23] = MEMORY[0x1E69E6158];
  v48[24] = @"Input";
  v50 = v49;
  v51 = v48;
  *&v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v52 = swift_initStackObject();
  v143 = xmmword_1CA981350;
  *(v52 + 16) = xmmword_1CA981350;
  *(v52 + 32) = 0x656C7069746C754DLL;
  *(v52 + 40) = 0xE800000000000000;
  v53 = MEMORY[0x1E69E6370];
  *(v52 + 48) = 1;
  *(v52 + 72) = v53;
  strcpy((v52 + 80), "ParameterKey");
  *(v52 + 93) = 0;
  *(v52 + 94) = -5120;
  *(v52 + 96) = 0x6567616D494657;
  *(v52 + 104) = 0xE700000000000000;
  *(v52 + 120) = v50;
  *(v52 + 128) = 0x6465726975716552;
  *(v52 + 136) = 0xE800000000000000;
  *(v52 + 144) = 1;
  *(v52 + 168) = v53;
  *(v52 + 176) = 0x7365707954;
  *(v52 + 184) = 0xE500000000000000;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v52 + 216) = v150;
  *(v52 + 192) = &unk_1F4A0AAF8;
  v54 = @"IconName";
  v55 = @"Input";
  v56 = sub_1CA94C1E8();
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v145 = v57;
  v51[25] = v56;
  v51[28] = v57;
  v51[29] = @"Name";
  v58 = @"Name";
  v59 = sub_1CA94C438("Extract Text from Image (Action Name)", 37);
  v140 = v60;
  v141 = v59;
  v61 = sub_1CA94C438("Extract Text from Image", 23);
  v63 = v62;
  v142 = &v137;
  MEMORY[0x1EEE9AC00](v61);
  v64 = v157;
  sub_1CA948D98();
  v65 = [v155 bundleURL];
  MEMORY[0x1EEE9AC00](v65);
  v66 = &v137 - v153;
  sub_1CA948B68();

  v67 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v68 = sub_1CA2F9F14(v141, v140, v61, v63, 0, 0, &v137 - v64, v66);
  v69 = v154;
  v154[30] = v68;
  v70 = v151;
  v69[33] = v151;
  v69[34] = @"Output";
  v71 = swift_allocObject();
  *(v71 + 16) = v143;
  *(v71 + 32) = 0x75736F6C63736944;
  *(v71 + 40) = 0xEF6C6576654C6572;
  *(v71 + 48) = 0x63696C627550;
  *(v71 + 56) = 0xE600000000000000;
  *(v71 + 72) = MEMORY[0x1E69E6158];
  *(v71 + 80) = 0x656C7069746C754DLL;
  *(v71 + 88) = 0xE800000000000000;
  *(v71 + 96) = 1;
  *(v71 + 120) = MEMORY[0x1E69E6370];
  *(v71 + 128) = 0x614E74757074754FLL;
  *(v71 + 136) = 0xEA0000000000656DLL;
  v72 = @"Output";
  v73 = sub_1CA94C438("Text from Image (Default Output Name)", 37);
  v142 = v74;
  *&v143 = v73;
  v75 = sub_1CA94C438("Text from Image", 15);
  v141 = v76;
  *&v144 = &v137;
  MEMORY[0x1EEE9AC00](v75);
  sub_1CA948D98();
  v77 = [v155 bundleURL];
  MEMORY[0x1EEE9AC00](v77);
  v78 = v153;
  sub_1CA948B68();

  v79 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v71 + 144) = sub_1CA2F9F14(v143, v142, v75, v141, 0, 0, &v137 - v64, &v137 - v78);
  *(v71 + 168) = v70;
  *(v71 + 176) = 0x7365707954;
  *(v71 + 216) = v150;
  *(v71 + 184) = 0xE500000000000000;
  *(v71 + 192) = &unk_1F4A0AB28;
  v80 = MEMORY[0x1E69E6158];
  v81 = sub_1CA94C1E8();
  v82 = v154;
  v154[35] = v81;
  v82[38] = v145;
  v82[39] = @"Parameters";
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  *&v143 = swift_allocObject();
  v144 = xmmword_1CA9813B0;
  *(v143 + 16) = xmmword_1CA9813B0;
  v142 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v83 = swift_allocObject();
  *(v83 + 16) = xmmword_1CA981370;
  *(v83 + 32) = @"Class";
  *(v83 + 40) = 0xD000000000000019;
  *(v83 + 48) = 0x80000001CA99B030;
  *(v83 + 64) = v80;
  *(v83 + 72) = @"Key";
  *(v83 + 80) = 0x6567616D494657;
  *(v83 + 88) = 0xE700000000000000;
  *(v83 + 104) = v80;
  *(v83 + 112) = @"Label";
  v84 = @"Parameters";
  v85 = @"Class";
  v86 = @"Key";
  v87 = @"Label";
  v88 = sub_1CA94C438("Image (WFImage)", 15);
  v139 = v89;
  v140 = v88;
  v90 = sub_1CA94C438("Image", 5);
  v138 = v91;
  v141 = &v137;
  MEMORY[0x1EEE9AC00](v90);
  v92 = &v137 - v157;
  sub_1CA948D98();
  v93 = v155;
  v94 = [v155 bundleURL];
  v137 = &v137;
  MEMORY[0x1EEE9AC00](v94);
  sub_1CA948B68();

  v95 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v83 + 120) = sub_1CA2F9F14(v140, v139, v90, v138, 0, 0, v92, &v137 - v78);
  v96 = v151;
  *(v83 + 144) = v151;
  *(v83 + 152) = @"Placeholder";
  v97 = @"Placeholder";
  v98 = sub_1CA94C438("Image (WFImage)", 15);
  v139 = v99;
  v140 = v98;
  v100 = sub_1CA94C438("Image", 5);
  v138 = v101;
  v141 = &v137;
  MEMORY[0x1EEE9AC00](v100);
  v102 = &v137 - v157;
  sub_1CA948D98();
  v103 = [v93 bundleURL];
  MEMORY[0x1EEE9AC00](v103);
  sub_1CA948B68();

  v104 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v83 + 160) = sub_1CA2F9F14(v140, v139, v100, v138, 0, 0, v102, &v137 - v78);
  *(v83 + 184) = v96;
  *(v83 + 192) = @"PreferredTypes";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443850, &qword_1CA9815F0);
  v105 = swift_allocObject();
  *(v105 + 16) = xmmword_1CA981310;
  v106 = @"PreferredTypes";
  v107 = v146;
  sub_1CA949CB8();
  v108 = sub_1CA949C68();
  v110 = v109;
  (*(v147 + 8))(v107, v148);
  *(v105 + 32) = v108;
  *(v105 + 40) = v110;
  *(v83 + 224) = v150;
  *(v83 + 200) = v105;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v111 = sub_1CA94C1E8();
  v112 = sub_1CA2F864C(v111);
  v113 = v143;
  *(v143 + 32) = v112;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v115 = v154;
  v154[40] = v113;
  v115[43] = v114;
  v115[44] = @"ParameterSummary";
  v116 = @"ParameterSummary";
  v117 = sub_1CA94C438("Extract text from ${WFImage} (Parameter Summary)", 48);
  v119 = v118;
  v120 = sub_1CA94C438("Extract text from ${WFImage}", 28);
  v122 = v121;
  v151 = &v137;
  MEMORY[0x1EEE9AC00](v120);
  v123 = &v137 - v157;
  sub_1CA948D98();
  v124 = [v155 bundleURL];
  MEMORY[0x1EEE9AC00](v124);
  v125 = &v137 - v153;
  sub_1CA948B68();

  v126 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v127 = sub_1CA2F9F14(v117, v119, v120, v122, 0, 0, v123, v125);
  v128 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v129 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v115[45] = v128;
  v115[48] = v129;
  v115[49] = @"RequiredResources";
  v130 = swift_allocObject();
  *(v130 + 16) = v144;
  v158 = 3;
  v159 = 1;
  v131 = objc_allocWithZone(type metadata accessor for WFDeviceIdiomResource());
  v132 = @"RequiredResources";
  WFDeviceIdiomResource.init(requirement:)(&v158);
  *(v130 + 32) = v133;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438B0, &qword_1CA981658);
  v115[50] = v130;
  v115[53] = v134;
  v115[54] = @"ResidentCompatible";
  v115[58] = MEMORY[0x1E69E6370];
  *(v115 + 440) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v135 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA651718()
{
  v29 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981380;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD00000000000001DLL;
  *(inited + 48) = 0x80000001CA9A1270;
  *(inited + 64) = v1;
  *(inited + 72) = @"AppDefinition";
  v2 = @"ActionClass";
  v3 = @"AppDefinition";
  v4 = sub_1CA94C1E8();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 80) = v4;
  *(inited + 104) = v5;
  *(inited + 112) = @"Name";
  v6 = @"Name";
  v7 = sub_1CA94C438("Get Details of App Store App (Action Name)", 42);
  v28 = v8;
  v9 = sub_1CA94C438("Get Details of App Store App", 28);
  v11 = v10;
  v12 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v15 = [qword_1EDB9F690 bundleURL];
  v16 = sub_1CA948BA8();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948B68();

  v19 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v20 = sub_1CA2F9F14(v7, v28, v9, v11, 0, 0, v14, v18);
  v21 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(inited + 120) = v20;
  *(inited + 144) = v21;
  *(inited + 152) = @"Output";
  v22 = @"Output";
  v23 = MEMORY[0x1E69E6158];
  *(inited + 160) = sub_1CA94C1E8();
  *(inited + 184) = v5;
  *(inited + 192) = @"ResidentCompatible";
  *(inited + 224) = MEMORY[0x1E69E6370];
  *(inited + 200) = 1;
  v24 = @"ResidentCompatible";
  v25 = sub_1CA94C368();
  *(inited + 264) = v23;
  *(inited + 232) = v25;
  *(inited + 240) = 0xD000000000000018;
  *(inited + 248) = 0x80000001CA9945E0;
  type metadata accessor for Key(0);
  sub_1CA2ECC50();
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA651B00()
{
  v250 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  v253 = xmmword_1CA981420;
  *(inited + 16) = xmmword_1CA981420;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000016;
  *(inited + 48) = 0x80000001CA9DA600;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("pick|select|file|document|filepicker.io|filepicker|ink", 54);
  v6 = v5;
  v7 = sub_1CA94C438("pick|select|file|document|filepicker.io|filepicker|ink", 54);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v277 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v278 = v11;
  v12 = &v237 - v277;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v275 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v274 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v276 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v237 - v276;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v273 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"Description";
  v271 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v20 = swift_initStackObject();
  v269 = xmmword_1CA981310;
  *(v20 + 16) = xmmword_1CA981310;
  *(v20 + 32) = @"DescriptionSummary";
  v21 = @"Description";
  v22 = @"DescriptionSummary";
  v23 = sub_1CA94C438("Gets files from Dropbox. Turn off “Show Document Picker” to specify a path to retrieve.", 91);
  v25 = v24;
  v26 = sub_1CA94C438("Gets files from Dropbox. Turn off “Show Document Picker” to specify a path to retrieve.", 91);
  v28 = v27;
  v270 = &v237;
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v237 - v277;
  sub_1CA948D98();
  v30 = [v275 bundleURL];
  v272 = inited;
  v31 = v30;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v237 - v276;
  sub_1CA948B68();

  v33 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v34 = sub_1CA2F9F14(v23, v25, v26, v28, 0, 0, v29, v32);
  *(v20 + 64) = v273;
  *(v20 + 40) = v34;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v35 = sub_1CA94C1E8();
  v36 = v271;
  v37 = sub_1CA6B3784(v35);
  v38 = v272;
  v272[15] = v37;
  v38[18] = v36;
  v38[19] = @"IconName";
  v38[20] = 0x786F62706F7244;
  v38[21] = 0xE700000000000000;
  v38[23] = MEMORY[0x1E69E6158];
  v38[24] = @"Name";
  v39 = @"IconName";
  v40 = @"Name";
  v41 = sub_1CA94C438("Get Dropbox File (Action Name)", 30);
  v43 = v42;
  v44 = sub_1CA94C438("Get Dropbox File", 16);
  v46 = v45;
  v271 = &v237;
  MEMORY[0x1EEE9AC00](v44);
  v47 = &v237 - v277;
  sub_1CA948D98();
  v48 = [v275 bundleURL];
  MEMORY[0x1EEE9AC00](v48);
  v49 = &v237 - v276;
  sub_1CA948B68();

  v50 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v51 = sub_1CA2F9F14(v41, v43, v44, v46, 0, 0, v47, v49);
  v52 = v272;
  v272[25] = v51;
  v53 = v273;
  v52[28] = v273;
  v52[29] = @"Output";
  v264 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v54 = swift_initStackObject();
  v267 = xmmword_1CA981350;
  *(v54 + 16) = xmmword_1CA981350;
  *(v54 + 32) = 0x75736F6C63736944;
  *(v54 + 40) = 0xEF6C6576654C6572;
  *(v54 + 48) = 0x63696C627550;
  *(v54 + 56) = 0xE600000000000000;
  *(v54 + 72) = MEMORY[0x1E69E6158];
  *(v54 + 80) = 0x656C7069746C754DLL;
  *(v54 + 88) = 0xE800000000000000;
  v55 = MEMORY[0x1E69E6370];
  *(v54 + 96) = 1;
  *(v54 + 120) = v55;
  *(v54 + 128) = 0x614E74757074754FLL;
  *(v54 + 136) = 0xEA0000000000656DLL;
  v56 = @"Output";
  v57 = sub_1CA94C438("File (Default Output Name)", 26);
  v270 = v58;
  v59 = sub_1CA94C438("File", 4);
  v61 = v60;
  v271 = &v237;
  MEMORY[0x1EEE9AC00](v59);
  v62 = &v237 - v277;
  sub_1CA948D98();
  v63 = [v275 bundleURL];
  MEMORY[0x1EEE9AC00](v63);
  v64 = &v237 - v276;
  sub_1CA948B68();

  v65 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v54 + 144) = sub_1CA2F9F14(v57, v270, v59, v61, 0, 0, v62, v64);
  *(v54 + 168) = v53;
  *(v54 + 176) = 0x7365707954;
  *(v54 + 184) = 0xE500000000000000;
  v249 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v54 + 216) = v249;
  *(v54 + 192) = &unk_1F4A0ABD8;
  v66 = MEMORY[0x1E69E6158];
  v67 = sub_1CA94C1E8();
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v248 = v68;
  v69 = v272;
  v272[30] = v67;
  v69[33] = v68;
  v69[34] = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v271 = swift_allocObject();
  *(v271 + 1) = xmmword_1CA981560;
  v270 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v268 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v70 = swift_initStackObject();
  *(v70 + 16) = v267;
  v257 = 0x80000001CA99E620;
  v263 = 0xD000000000000011;
  *(v70 + 32) = @"Class";
  *(v70 + 40) = 0xD000000000000011;
  *(v70 + 48) = 0x80000001CA99E620;
  *(v70 + 64) = v66;
  *(v70 + 72) = @"DefaultValue";
  *(v70 + 80) = 1;
  *(v70 + 104) = MEMORY[0x1E69E6370];
  *(v70 + 112) = @"Key";
  v262 = 0x80000001CA99B260;
  *(v70 + 120) = 0xD000000000000010;
  *(v70 + 128) = 0x80000001CA99B260;
  *(v70 + 144) = v66;
  *(v70 + 152) = @"Label";
  v71 = @"Class";
  v72 = @"DefaultValue";
  v73 = @"Key";
  v74 = @"Label";
  v75 = v71;
  v76 = v72;
  v77 = v73;
  v78 = v74;
  v261 = v75;
  v256 = v76;
  v260 = v77;
  *&v265 = v78;
  v79 = @"Parameters";
  v80 = sub_1CA94C438("Show Document Picker (WFShowFilePicker)", 39);
  v82 = v81;
  v83 = sub_1CA94C438("Show Document Picker", 20);
  v85 = v84;
  *&v267 = &v237;
  MEMORY[0x1EEE9AC00](v83);
  v86 = &v237 - v277;
  sub_1CA948D98();
  v87 = [v275 bundleURL];
  MEMORY[0x1EEE9AC00](v87);
  v88 = &v237 - v276;
  sub_1CA948B68();

  v89 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v90 = sub_1CA2F9F14(v80, v82, v83, v85, 0, 0, v86, v88);
  *(v70 + 184) = v273;
  *(v70 + 160) = v90;
  _s3__C3KeyVMa_0(0);
  *&v267 = v91;
  v266 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v92 = sub_1CA94C1E8();
  v93 = sub_1CA2F864C(v92);
  v271[4] = v93;
  v94 = swift_allocObject();
  v247 = xmmword_1CA981370;
  *(v94 + 16) = xmmword_1CA981370;
  v96 = v260;
  v95 = v261;
  v97 = v263;
  *(v94 + 32) = v261;
  *(v94 + 40) = v97;
  v98 = v256;
  *(v94 + 48) = v257;
  v99 = MEMORY[0x1E69E6158];
  *(v94 + 64) = MEMORY[0x1E69E6158];
  *(v94 + 72) = v98;
  *(v94 + 80) = 0;
  *(v94 + 104) = MEMORY[0x1E69E6370];
  *(v94 + 112) = v96;
  strcpy((v94 + 120), "SelectMultiple");
  *(v94 + 135) = -18;
  v100 = v265;
  *(v94 + 144) = v99;
  *(v94 + 152) = v100;
  v244 = v95;
  v251 = v96;
  v252 = v100;
  v101 = sub_1CA94C438("Select Multiple (SelectMultiple)", 32);
  v103 = v102;
  v104 = sub_1CA94C438("Select Multiple", 15);
  v106 = v105;
  *&v265 = &v237;
  MEMORY[0x1EEE9AC00](v104);
  v107 = &v237 - v277;
  sub_1CA948D98();
  v108 = [v275 bundleURL];
  MEMORY[0x1EEE9AC00](v108);
  v109 = &v237 - v276;
  sub_1CA948B68();

  v110 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v94 + 160) = sub_1CA2F9F14(v101, v103, v104, v106, 0, 0, v107, v109);
  *(v94 + 184) = v273;
  *(v94 + 192) = @"RequiredResources";
  v255 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E0, &qword_1CA9813D0);
  v111 = swift_allocObject();
  *(v111 + 16) = v269;
  v112 = swift_allocObject();
  v265 = xmmword_1CA9813C0;
  *(v112 + 16) = xmmword_1CA9813C0;
  strcpy((v112 + 32), "WFParameterKey");
  *(v112 + 47) = -18;
  v113 = v262;
  *(v112 + 48) = 0xD000000000000010;
  *(v112 + 56) = v113;
  v261 = 0x80000001CA993570;
  v114 = MEMORY[0x1E69E6158];
  *(v112 + 72) = MEMORY[0x1E69E6158];
  *(v112 + 80) = 0xD000000000000010;
  *(v112 + 88) = 0x80000001CA993570;
  *(v112 + 96) = 1;
  *(v112 + 120) = MEMORY[0x1E69E6370];
  *(v112 + 128) = 0x72756F7365524657;
  *(v112 + 168) = v114;
  v259 = 0xD00000000000001BLL;
  v260 = 0x80000001CA993590;
  *(v112 + 136) = 0xEF7373616C436563;
  *(v112 + 144) = 0xD00000000000001BLL;
  *(v112 + 152) = 0x80000001CA993590;
  v254 = @"RequiredResources";
  *(v111 + 32) = sub_1CA94C1E8();
  v258 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E8, &qword_1CA9813D8);
  *(v94 + 224) = v258;
  *(v94 + 200) = v111;
  v115 = sub_1CA94C1E8();
  v116 = sub_1CA2F864C(v115);
  v271[5] = v116;
  v117 = swift_allocObject();
  *(v117 + 16) = v253;
  *(v117 + 32) = @"AutocapitalizationType";
  *(v117 + 40) = 1701736270;
  *(v117 + 48) = 0xE400000000000000;
  v118 = v244;
  *(v117 + 64) = v114;
  *(v117 + 72) = v118;
  v245 = 0xD000000000000014;
  v246 = 0x80000001CA99B500;
  *(v117 + 80) = 0xD000000000000014;
  *(v117 + 88) = 0x80000001CA99B500;
  *(v117 + 104) = v114;
  *(v117 + 112) = @"Description";
  v119 = @"AutocapitalizationType";
  *&v253 = v118;
  v244 = v119;
  v120 = @"Description";
  v121 = sub_1CA94C438("The path to retrieve, such as “/folder/file.txt” (WFGetFilePath)", 68);
  v123 = v122;
  v124 = sub_1CA94C438("The path to retrieve, such as “/folder/file.txt”", 52);
  v126 = v125;
  v243 = &v237;
  MEMORY[0x1EEE9AC00](v124);
  v127 = &v237 - v277;
  sub_1CA948D98();
  v128 = [v275 bundleURL];
  MEMORY[0x1EEE9AC00](v128);
  v129 = &v237 - v276;
  sub_1CA948B68();

  v130 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v117 + 120) = sub_1CA2F9F14(v121, v123, v124, v126, 0, 0, v127, v129);
  *(v117 + 144) = v273;
  *(v117 + 152) = @"DisableAutocorrection";
  *(v117 + 160) = 1;
  v131 = v251;
  *(v117 + 184) = MEMORY[0x1E69E6370];
  *(v117 + 192) = v131;
  strcpy((v117 + 200), "WFGetFilePath");
  *(v117 + 214) = -4864;
  v132 = MEMORY[0x1E69E6158];
  *(v117 + 224) = MEMORY[0x1E69E6158];
  *(v117 + 232) = @"KeyboardType";
  *(v117 + 240) = 0x6372616553626557;
  *(v117 + 248) = 0xE900000000000068;
  v133 = v252;
  *(v117 + 264) = v132;
  *(v117 + 272) = v133;
  v134 = @"DisableAutocorrection";
  v135 = @"KeyboardType";
  v251 = v131;
  v252 = v133;
  v241 = v134;
  v243 = v135;
  v136 = sub_1CA94C438("File Path (WFGetFilePath)", 25);
  v239 = v137;
  v240 = v136;
  v138 = sub_1CA94C438("File Path", 9);
  v140 = v139;
  v242 = &v237;
  MEMORY[0x1EEE9AC00](v138);
  v141 = &v237 - v277;
  sub_1CA948D98();
  v142 = v275;
  v143 = [v275 bundleURL];
  MEMORY[0x1EEE9AC00](v143);
  v144 = &v237 - v276;
  sub_1CA948B68();

  v145 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v117 + 280) = sub_1CA2F9F14(v240, v239, v138, v140, 0, 0, v141, v144);
  v146 = v273;
  *(v117 + 304) = v273;
  *(v117 + 312) = @"Placeholder";
  v242 = @"Placeholder";
  v147 = sub_1CA94C438("example.txt (WFGetFilePath)", 27);
  v238 = v148;
  v239 = v147;
  v149 = sub_1CA94C438("example.txt", 11);
  v237 = v150;
  v240 = &v237;
  MEMORY[0x1EEE9AC00](v149);
  v151 = v277;
  sub_1CA948D98();
  v152 = [v142 bundleURL];
  MEMORY[0x1EEE9AC00](v152);
  v153 = &v237 - v276;
  sub_1CA948B68();

  v154 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v117 + 320) = sub_1CA2F9F14(v239, v238, v149, v237, 0, 0, &v237 - v151, v153);
  v155 = v254;
  *(v117 + 344) = v146;
  *(v117 + 352) = v155;
  v156 = swift_allocObject();
  *(v156 + 16) = v269;
  v157 = swift_allocObject();
  *(v157 + 16) = v265;
  strcpy((v157 + 32), "WFParameterKey");
  *(v157 + 47) = -18;
  v158 = v262;
  *(v157 + 48) = 0xD000000000000010;
  *(v157 + 56) = v158;
  v159 = MEMORY[0x1E69E6158];
  *(v157 + 72) = MEMORY[0x1E69E6158];
  *(v157 + 80) = 0xD000000000000010;
  *(v157 + 88) = v261;
  *(v157 + 96) = 0;
  v160 = MEMORY[0x1E69E6370];
  *(v157 + 120) = MEMORY[0x1E69E6370];
  *(v157 + 128) = 0x72756F7365524657;
  *(v157 + 168) = v159;
  *(v157 + 136) = 0xEF7373616C436563;
  v161 = v260;
  *(v157 + 144) = v259;
  *(v157 + 152) = v161;
  v162 = v159;
  *(v156 + 32) = sub_1CA94C1E8();
  *(v117 + 360) = v156;
  *(v117 + 384) = v258;
  *(v117 + 392) = @"TextAlignment";
  *(v117 + 424) = v162;
  *(v117 + 400) = 1952867660;
  *(v117 + 408) = 0xE400000000000000;
  v240 = @"TextAlignment";
  v163 = sub_1CA94C1E8();
  v164 = sub_1CA2F864C(v163);
  v271[6] = v164;
  v165 = swift_allocObject();
  *(v165 + 16) = xmmword_1CA981300;
  *(v165 + 32) = v244;
  *(v165 + 40) = 1701736270;
  *(v165 + 48) = 0xE400000000000000;
  v166 = v253;
  *(v165 + 64) = v162;
  *(v165 + 72) = v166;
  v167 = v246;
  *(v165 + 80) = v245;
  *(v165 + 88) = v167;
  v168 = v241;
  *(v165 + 104) = v162;
  *(v165 + 112) = v168;
  *(v165 + 120) = 1;
  v169 = v251;
  *(v165 + 144) = v160;
  *(v165 + 152) = v169;
  *(v165 + 160) = 0xD00000000000001DLL;
  *(v165 + 168) = 0x80000001CA9DA840;
  v170 = v243;
  *(v165 + 184) = v162;
  *(v165 + 192) = v170;
  *(v165 + 200) = 0x6372616553626557;
  *(v165 + 208) = 0xE900000000000068;
  v171 = v252;
  *(v165 + 224) = v162;
  *(v165 + 232) = v171;
  v172 = sub_1CA94C438("Initial Path (WFGetFileInitialDirectoryPath)", 44);
  v244 = v173;
  v245 = v172;
  v174 = sub_1CA94C438("Initial Path", 12);
  v243 = v175;
  v246 = &v237;
  MEMORY[0x1EEE9AC00](v174);
  v176 = &v237 - v151;
  sub_1CA948D98();
  v177 = v275;
  v178 = [v275 bundleURL];
  MEMORY[0x1EEE9AC00](v178);
  v179 = v276;
  sub_1CA948B68();

  v180 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v165 + 240) = sub_1CA2F9F14(v245, v244, v174, v243, 0, 0, v176, &v237 - v179);
  v181 = v273;
  v182 = v242;
  *(v165 + 264) = v273;
  *(v165 + 272) = v182;
  v183 = sub_1CA94C438("optional (WFGetFileInitialDirectoryPath)", 40);
  v244 = v184;
  v245 = v183;
  v185 = sub_1CA94C438("optional", 8);
  v243 = v186;
  v246 = &v237;
  MEMORY[0x1EEE9AC00](v185);
  v187 = &v237 - v277;
  sub_1CA948D98();
  v188 = [v177 bundleURL];
  MEMORY[0x1EEE9AC00](v188);
  sub_1CA948B68();

  v189 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v165 + 280) = sub_1CA2F9F14(v245, v244, v185, v243, 0, 0, v187, &v237 - v179);
  v190 = v240;
  *(v165 + 304) = v181;
  *(v165 + 312) = v190;
  v191 = MEMORY[0x1E69E6158];
  *(v165 + 344) = MEMORY[0x1E69E6158];
  *(v165 + 320) = 1952867660;
  *(v165 + 328) = 0xE400000000000000;
  v192 = sub_1CA94C1E8();
  v193 = sub_1CA2F864C(v192);
  v271[7] = v193;
  v194 = swift_allocObject();
  *(v194 + 16) = v247;
  v195 = v263;
  *(v194 + 32) = v253;
  *(v194 + 40) = v195;
  v196 = v256;
  *(v194 + 48) = v257;
  *(v194 + 64) = v191;
  *(v194 + 72) = v196;
  *(v194 + 80) = 1;
  v197 = v251;
  *(v194 + 104) = MEMORY[0x1E69E6370];
  *(v194 + 112) = v197;
  *(v194 + 120) = 0xD000000000000015;
  *(v194 + 128) = 0x80000001CA9CE2D0;
  v198 = v252;
  *(v194 + 144) = v191;
  *(v194 + 152) = v198;
  v199 = sub_1CA94C438("Error If Not Found (WFFileErrorIfNotFound)", 42);
  v201 = v200;
  v202 = sub_1CA94C438("Error If Not Found", 18);
  v204 = v203;
  v268 = &v237;
  MEMORY[0x1EEE9AC00](v202);
  v205 = &v237 - v277;
  sub_1CA948D98();
  v206 = [v275 bundleURL];
  MEMORY[0x1EEE9AC00](v206);
  v207 = &v237 - v276;
  sub_1CA948B68();

  v208 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v194 + 160) = sub_1CA2F9F14(v199, v201, v202, v204, 0, 0, v205, v207);
  v209 = v254;
  *(v194 + 184) = v273;
  *(v194 + 192) = v209;
  v210 = swift_allocObject();
  *(v210 + 16) = v269;
  v211 = swift_allocObject();
  *(v211 + 16) = v265;
  strcpy((v211 + 32), "WFParameterKey");
  *(v211 + 47) = -18;
  v212 = v262;
  *(v211 + 48) = 0xD000000000000010;
  *(v211 + 56) = v212;
  v213 = MEMORY[0x1E69E6158];
  *(v211 + 72) = MEMORY[0x1E69E6158];
  *(v211 + 80) = 0xD000000000000010;
  *(v211 + 88) = v261;
  *(v211 + 96) = 0;
  v214 = MEMORY[0x1E69E6370];
  *(v211 + 120) = MEMORY[0x1E69E6370];
  v215 = v214;
  *(v211 + 128) = 0x72756F7365524657;
  *(v211 + 168) = v213;
  *(v211 + 136) = 0xEF7373616C436563;
  v216 = v260;
  *(v211 + 144) = v259;
  *(v211 + 152) = v216;
  v217 = v213;
  *(v210 + 32) = sub_1CA94C1E8();
  *(v194 + 224) = v258;
  *(v194 + 200) = v210;
  v218 = sub_1CA94C1E8();
  v219 = sub_1CA2F864C(v218);
  v220 = v271;
  v271[8] = v219;
  v221 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v222 = v272;
  v272[35] = v220;
  v222[38] = v221;
  v222[39] = @"RequiredResources";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438F0, &unk_1CA9819E0);
  v223 = swift_allocObject();
  *(v223 + 16) = v265;
  v224 = swift_allocObject();
  *(v224 + 16) = xmmword_1CA97EDF0;
  *(v224 + 32) = v263;
  *(v224 + 40) = 0x80000001CA99B240;
  v225 = swift_allocObject();
  *(v225 + 16) = v269;
  v226 = swift_allocObject();
  *(v226 + 16) = v265;
  strcpy((v226 + 32), "WFParameterKey");
  *(v226 + 47) = -18;
  *(v226 + 48) = 0xD000000000000010;
  *(v226 + 56) = v212;
  *(v226 + 72) = v217;
  *(v226 + 80) = 0xD000000000000010;
  *(v226 + 88) = v261;
  *(v226 + 96) = 1;
  *(v226 + 120) = v215;
  *(v226 + 128) = 0x72756F7365524657;
  *(v226 + 168) = v217;
  v228 = v259;
  v227 = v260;
  *(v226 + 136) = 0xEF7373616C436563;
  *(v226 + 144) = v228;
  *(v226 + 152) = v227;
  v229 = @"RequiredResources";
  *(v225 + 32) = sub_1CA94C1E8();
  *(v224 + 48) = v225;
  *(v224 + 72) = v258;
  *(v224 + 80) = 0x72756F7365524657;
  *(v224 + 120) = v217;
  *(v224 + 88) = 0xEF7373616C436563;
  *(v224 + 96) = 0xD000000000000019;
  *(v224 + 104) = 0x80000001CA9932D0;
  *(v223 + 32) = sub_1CA94C1E8();
  *(v223 + 56) = v248;
  *(v223 + 64) = 0xD000000000000017;
  *(v223 + 72) = 0x80000001CA997E10;
  *(v223 + 120) = v217;
  *(v223 + 88) = v217;
  *(v223 + 96) = 0xD00000000000001CLL;
  *(v223 + 104) = 0x80000001CA993620;
  v230 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443838, &qword_1CA981588);
  v231 = v272;
  v272[40] = v223;
  v231[43] = v230;
  v231[44] = @"UserInterfaceClasses";
  v232 = @"UserInterfaceClasses";
  v233 = sub_1CA94C1E8();
  v234 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  v231[45] = v233;
  v231[48] = v234;
  v231[49] = @"UserInterfaces";
  v231[53] = v249;
  v231[50] = &unk_1F4A0AC68;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v235 = @"UserInterfaces";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA6537B0()
{
  v377 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813F0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD00000000000001ALL;
  *(inited + 48) = 0x80000001CA9DA8E0;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("dnd|toggle|turn|do|not|disturb|silence", 38);
  v6 = v5;
  v7 = sub_1CA94C438("dnd|toggle|turn|do|not|disturb|silence", 38);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v399 = v11;
  v401 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = &v367 - v401;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v400 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v402 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v403 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v367 - v403;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v398 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"Description";
  v397 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v20 = swift_initStackObject();
  v390 = xmmword_1CA981310;
  *(v20 + 16) = xmmword_1CA981310;
  *(v20 + 32) = @"DescriptionSummary";
  v21 = @"Description";
  v22 = @"DescriptionSummary";
  v23 = sub_1CA94C438("Sets the specified Focus on or off.", 35);
  v25 = v24;
  v26 = sub_1CA94C438("Sets the specified Focus on or off.", 35);
  v28 = v27;
  v396 = &v367;
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v367 - v401;
  sub_1CA948D98();
  v30 = [v400 bundleURL];
  v391 = inited;
  v31 = v30;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v367 - v403;
  sub_1CA948B68();

  v33 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v34 = sub_1CA2F9F14(v23, v25, v26, v28, 0, 0, v29, v32);
  *(v20 + 64) = v398;
  *(v20 + 40) = v34;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v35 = sub_1CA94C1E8();
  v36 = v397;
  v37 = sub_1CA6B3784(v35);
  v38 = v391;
  v391[15] = v37;
  v38[18] = v36;
  v38[19] = @"IconColor";
  v38[20] = 0x6F6769646E49;
  v38[21] = 0xE600000000000000;
  v39 = MEMORY[0x1E69E6158];
  v38[23] = MEMORY[0x1E69E6158];
  v38[24] = @"IconSymbol";
  v38[25] = 0x6C69662E6E6F6F6DLL;
  v38[26] = 0xE90000000000006CLL;
  v38[28] = v39;
  v38[29] = @"InputPassthrough";
  v40 = v39;
  v38[33] = MEMORY[0x1E69E6370];
  *(v38 + 240) = 1;
  v41 = v38;
  v42 = @"IconColor";
  v43 = @"IconSymbol";
  v44 = @"InputPassthrough";
  v41[34] = sub_1CA94C368();
  v41[35] = 0xD000000000000051;
  v41[36] = 0x80000001CA9DA960;
  v41[38] = v40;
  v41[39] = @"Name";
  v45 = @"Name";
  v46 = sub_1CA94C438("Set Focus (Action Name)", 23);
  v48 = v47;
  v49 = sub_1CA94C438("Set Focus", 9);
  v51 = v50;
  MEMORY[0x1EEE9AC00](v49);
  v52 = &v367 - v401;
  sub_1CA948D98();
  v53 = [v400 bundleURL];
  MEMORY[0x1EEE9AC00](v53);
  v54 = &v367 - v403;
  sub_1CA948B68();

  v55 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v56 = sub_1CA2F9F14(v46, v48, v49, v51, 0, 0, v52, v54);
  v57 = v391;
  v391[40] = v56;
  v57[43] = v398;
  v57[44] = @"Parameters";
  v387 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v397 = swift_allocObject();
  v375 = xmmword_1CA981410;
  *(v397 + 16) = xmmword_1CA981410;
  v396 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v394 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v58 = swift_initStackObject();
  v389 = xmmword_1CA981380;
  *(v58 + 16) = xmmword_1CA981380;
  v381 = 0xD000000000000016;
  v382 = 0x80000001CA99C4A0;
  *(v58 + 32) = @"Class";
  *(v58 + 40) = 0xD000000000000016;
  *(v58 + 48) = 0x80000001CA99C4A0;
  v59 = MEMORY[0x1E69E6158];
  *(v58 + 64) = MEMORY[0x1E69E6158];
  *(v58 + 72) = @"DefaultValue";
  *(v58 + 80) = 1852994900;
  *(v58 + 88) = 0xE400000000000000;
  *(v58 + 104) = v59;
  *(v58 + 112) = @"IntentSlotName";
  *(v58 + 120) = 0x6574617473;
  *(v58 + 128) = 0xE500000000000000;
  *(v58 + 144) = v59;
  *(v58 + 152) = @"Items";
  v393 = swift_allocObject();
  *(v393 + 1) = xmmword_1CA981360;
  v60 = @"Class";
  v61 = @"DefaultValue";
  v62 = @"IntentSlotName";
  v63 = v60;
  v64 = v61;
  v65 = v62;
  v66 = @"Items";
  v388 = v63;
  *&v395 = v64;
  v386 = v65;
  v380 = v66;
  v67 = @"Parameters";
  v68 = sub_1CA94C438("Turn (Operation)", 16);
  v384 = v69;
  v385 = v68;
  v70 = sub_1CA94C438("Turn", 4);
  v383 = v71;
  v392 = &v367;
  MEMORY[0x1EEE9AC00](v70);
  v72 = v401;
  sub_1CA948D98();
  v73 = v400;
  v74 = [v400 bundleURL];
  *&v379 = &v367;
  MEMORY[0x1EEE9AC00](v74);
  v75 = v403;
  sub_1CA948B68();

  v76 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v77 = sub_1CA2F9F14(v385, v384, v70, v383, 0, 0, &v367 - v72, &v367 - v75);
  v393[4] = v77;
  v78 = sub_1CA94C438("Toggle (Operation)", 18);
  v384 = v79;
  v385 = v78;
  v80 = sub_1CA94C438("Toggle", 6);
  v383 = v81;
  v392 = &v367;
  MEMORY[0x1EEE9AC00](v80);
  sub_1CA948D98();
  v82 = [v73 bundleURL];
  MEMORY[0x1EEE9AC00](v82);
  sub_1CA948B68();

  v83 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v84 = sub_1CA2F9F14(v385, v384, v80, v383, 0, 0, &v367 - v72, &v367 - v75);
  v85 = v393;
  v393[5] = v84;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  v383 = v86;
  *(v58 + 160) = v85;
  *(v58 + 184) = v86;
  *(v58 + 192) = @"Key";
  *(v58 + 200) = 0x6F6974617265704FLL;
  *(v58 + 208) = 0xE90000000000006ELL;
  *(v58 + 224) = MEMORY[0x1E69E6158];
  *(v58 + 232) = @"Label";
  v87 = @"Key";
  v88 = @"Label";
  v89 = v87;
  v90 = v88;
  *&v379 = v89;
  v385 = v90;
  v91 = sub_1CA94C438("Operation (Operation)", 21);
  v93 = v92;
  v94 = sub_1CA94C438("Operation", 9);
  v96 = v95;
  v393 = &v367;
  MEMORY[0x1EEE9AC00](v94);
  v97 = &v367 - v401;
  sub_1CA948D98();
  v98 = [v400 bundleURL];
  MEMORY[0x1EEE9AC00](v98);
  v99 = &v367 - v403;
  sub_1CA948B68();

  v100 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v101 = sub_1CA2F9F14(v91, v93, v94, v96, 0, 0, v97, v99);
  *(v58 + 264) = v398;
  *(v58 + 240) = v101;
  _s3__C3KeyVMa_0(0);
  v393 = v102;
  v392 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v103 = sub_1CA94C1E8();
  v104 = sub_1CA2F864C(v103);
  *(v397 + 32) = v104;
  v105 = swift_allocObject();
  *(v105 + 16) = v389;
  v376 = 0xD000000000000011;
  v106 = v388;
  *(v105 + 32) = v388;
  *(v105 + 40) = 0xD000000000000011;
  *(v105 + 48) = 0x80000001CA99E620;
  v107 = MEMORY[0x1E69E6158];
  v108 = v395;
  *(v105 + 64) = MEMORY[0x1E69E6158];
  *(v105 + 72) = v108;
  *(v105 + 80) = 0;
  v110 = v385;
  v109 = v386;
  *(v105 + 104) = MEMORY[0x1E69E6370];
  *(v105 + 112) = v109;
  *(v105 + 120) = 0x6574617473;
  *(v105 + 128) = 0xE500000000000000;
  v111 = v379;
  *(v105 + 144) = v107;
  *(v105 + 152) = v111;
  *(v105 + 160) = 0x64656C62616E45;
  *(v105 + 168) = 0xE700000000000000;
  *(v105 + 184) = v107;
  *(v105 + 192) = v110;
  v372 = v106;
  v384 = v109;
  v374 = v111;
  v378 = v110;
  v112 = sub_1CA94C438("State (Enabled)", 15);
  v114 = v113;
  v115 = sub_1CA94C438("State", 5);
  v117 = v116;
  *&v389 = &v367;
  MEMORY[0x1EEE9AC00](v115);
  v118 = &v367 - v401;
  sub_1CA948D98();
  v119 = [v400 bundleURL];
  MEMORY[0x1EEE9AC00](v119);
  v120 = &v367 - v403;
  sub_1CA948B68();

  v121 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v105 + 200) = sub_1CA2F9F14(v112, v114, v115, v117, 0, 0, v118, v120);
  *(v105 + 224) = v398;
  *(v105 + 232) = @"RequiredResources";
  v386 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F0, &qword_1CA981430);
  v122 = swift_allocObject();
  *(v122 + 16) = v390;
  v388 = 0x80000001CA993590;
  *&v389 = 0x80000001CA993570;
  v373 = @"RequiredResources";
  v123 = MEMORY[0x1E69E6158];
  *(v122 + 32) = sub_1CA94C1E8();
  v385 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F8, &qword_1CA981438);
  *(v105 + 264) = v385;
  *(v105 + 240) = v122;
  v124 = sub_1CA94C1E8();
  v125 = sub_1CA2F864C(v124);
  *(v397 + 40) = v125;
  v126 = swift_allocObject();
  v379 = xmmword_1CA981400;
  *(v126 + 16) = xmmword_1CA981400;
  v127 = v372;
  v129 = v381;
  v128 = v382;
  *(v126 + 32) = v372;
  *(v126 + 40) = v129;
  *(v126 + 48) = v128;
  v130 = v395;
  *(v126 + 64) = v123;
  *(v126 + 72) = v130;
  *(v126 + 80) = 0x4F2064656E727554;
  *(v126 + 88) = 0xEA00000000006666;
  *(v126 + 104) = v123;
  *(v126 + 112) = @"DisallowedVariableTypes";
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v126 + 120) = &unk_1F4A0AD28;
  v132 = v380;
  *(v126 + 144) = v131;
  *(v126 + 152) = v132;
  *&v395 = swift_allocObject();
  *(v395 + 16) = xmmword_1CA981570;
  v382 = v127;
  v133 = @"DisallowedVariableTypes";
  v380 = sub_1CA94C438("Turned Off (AssertionType)", 26);
  v372 = v134;
  v135 = sub_1CA94C438("Turned Off", 10);
  v371 = v136;
  v381 = &v367;
  MEMORY[0x1EEE9AC00](v135);
  v137 = v401;
  sub_1CA948D98();
  v138 = v400;
  v139 = [v400 bundleURL];
  v370 = &v367;
  MEMORY[0x1EEE9AC00](v139);
  v140 = v403;
  sub_1CA948B68();

  v141 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v142 = sub_1CA2F9F14(v380, v372, v135, v371, 0, 0, &v367 - v137, &v367 - v140);
  *(v395 + 32) = v142;
  v380 = sub_1CA94C438("Time (AssertionType)", 20);
  v372 = v143;
  v144 = sub_1CA94C438("Time", 4);
  v371 = v145;
  v381 = &v367;
  MEMORY[0x1EEE9AC00](v144);
  sub_1CA948D98();
  v146 = [v138 bundleURL];
  MEMORY[0x1EEE9AC00](v146);
  sub_1CA948B68();

  v147 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v148 = sub_1CA2F9F14(v380, v372, v144, v371, 0, 0, &v367 - v137, &v367 - v140);
  v149 = v395;
  *(v395 + 40) = v148;
  v380 = sub_1CA94C438("I Leave (AssertionType)", 23);
  v372 = v150;
  v151 = sub_1CA94C438("I Leave", 7);
  v371 = v152;
  v381 = &v367;
  MEMORY[0x1EEE9AC00](v151);
  v153 = &v367 - v137;
  sub_1CA948D98();
  v154 = v400;
  v155 = [v400 bundleURL];
  v370 = &v367;
  MEMORY[0x1EEE9AC00](v155);
  v156 = v403;
  sub_1CA948B68();

  v157 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v149 + 48) = sub_1CA2F9F14(v380, v372, v151, v371, 0, 0, v153, &v367 - v156);
  v380 = sub_1CA94C438("Event Ends (AssertionType)", 26);
  v372 = v158;
  v159 = sub_1CA94C438("Event Ends", 10);
  v371 = v160;
  v381 = &v367;
  MEMORY[0x1EEE9AC00](v159);
  v161 = v401;
  sub_1CA948D98();
  v162 = [v154 bundleURL];
  MEMORY[0x1EEE9AC00](v162);
  sub_1CA948B68();

  v163 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v164 = sub_1CA2F9F14(v380, v372, v159, v371, 0, 0, &v367 - v161, &v367 - v156);
  v165 = v395;
  *(v395 + 56) = v164;
  *(v126 + 160) = v165;
  v166 = v374;
  *(v126 + 184) = v383;
  *(v126 + 192) = v166;
  strcpy((v126 + 200), "AssertionType");
  *(v126 + 214) = -4864;
  v167 = v378;
  *(v126 + 224) = MEMORY[0x1E69E6158];
  *(v126 + 232) = v167;
  v371 = v166;
  v372 = v167;
  v383 = sub_1CA94C438("Until (AssertionType)", 21);
  v169 = v168;
  v170 = sub_1CA94C438("Until", 5);
  v172 = v171;
  *&v395 = &v367;
  MEMORY[0x1EEE9AC00](v170);
  v173 = &v367 - v161;
  sub_1CA948D98();
  v174 = [v400 bundleURL];
  MEMORY[0x1EEE9AC00](v174);
  v175 = &v367 - v403;
  sub_1CA948B68();

  v176 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v126 + 240) = sub_1CA2F9F14(v383, v169, v170, v172, 0, 0, v173, v175);
  v177 = v373;
  *(v126 + 264) = v398;
  *(v126 + 272) = v177;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E0, &qword_1CA9813D0);
  v178 = swift_allocObject();
  *(v178 + 16) = xmmword_1CA97EDF0;
  v383 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v179 = swift_initStackObject();
  v395 = xmmword_1CA9813C0;
  *(v179 + 16) = xmmword_1CA9813C0;
  strcpy((v179 + 32), "WFParameterKey");
  *(v179 + 47) = -18;
  *(v179 + 48) = 0x6F6974617265704FLL;
  *(v179 + 56) = 0xE90000000000006ELL;
  v180 = MEMORY[0x1E69E6158];
  *(v179 + 72) = MEMORY[0x1E69E6158];
  *(v179 + 80) = 0xD000000000000010;
  v181 = v389;
  *(v179 + 88) = v389;
  *(v179 + 96) = 1852994900;
  *(v179 + 104) = 0xE400000000000000;
  *(v179 + 120) = v180;
  *(v179 + 128) = 0x72756F7365524657;
  *(v179 + 168) = v180;
  *(v179 + 136) = 0xEF7373616C436563;
  *(v179 + 144) = 0xD00000000000001BLL;
  v381 = 0xD00000000000001BLL;
  v182 = v388;
  *(v179 + 152) = v388;
  v380 = v177;
  *(v178 + 32) = sub_1CA94C1E8();
  v183 = swift_allocObject();
  *(v183 + 16) = v395;
  strcpy((v183 + 32), "WFParameterKey");
  *(v183 + 47) = -18;
  *(v183 + 48) = 0x64656C62616E45;
  *(v183 + 56) = 0xE700000000000000;
  *(v183 + 72) = v180;
  *(v183 + 80) = 0xD000000000000010;
  *(v183 + 88) = v181;
  *(v183 + 96) = 1;
  *(v183 + 120) = MEMORY[0x1E69E6370];
  *(v183 + 128) = 0x72756F7365524657;
  *(v183 + 168) = v180;
  *(v183 + 136) = 0xEF7373616C436563;
  *(v183 + 144) = 0xD00000000000001BLL;
  *(v183 + 152) = v182;
  *(v178 + 40) = sub_1CA94C1E8();
  *(v126 + 304) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E8, &qword_1CA9813D8);
  *(v126 + 280) = v178;
  v184 = sub_1CA94C1E8();
  v185 = sub_1CA2F864C(v184);
  *(v397 + 48) = v185;
  v186 = swift_allocObject();
  *(v186 + 16) = v379;
  v187 = v382;
  *(v186 + 32) = v382;
  *(v186 + 40) = 0xD000000000000019;
  *(v186 + 48) = 0x80000001CA99B030;
  *(v186 + 64) = v180;
  *(v186 + 72) = @"Description";
  v188 = @"Description";
  v382 = v187;
  v374 = v188;
  v378 = sub_1CA94C438("The event after which to turn off the Focus (Event)", 51);
  v373 = v189;
  v190 = sub_1CA94C438("The event after which to turn off the Focus", 43);
  v192 = v191;
  *&v379 = &v367;
  MEMORY[0x1EEE9AC00](v190);
  v193 = &v367 - v401;
  sub_1CA948D98();
  v194 = [v400 bundleURL];
  MEMORY[0x1EEE9AC00](v194);
  v195 = &v367 - v403;
  sub_1CA948B68();

  v196 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v186 + 80) = sub_1CA2F9F14(v378, v373, v190, v192, 0, 0, v193, v195);
  v197 = v384;
  *(v186 + 104) = v398;
  *(v186 + 112) = v197;
  *(v186 + 120) = 0x746E657665;
  *(v186 + 128) = 0xE500000000000000;
  v198 = MEMORY[0x1E69E6158];
  v199 = v371;
  v200 = v372;
  *(v186 + 144) = MEMORY[0x1E69E6158];
  *(v186 + 152) = v199;
  *(v186 + 160) = 0x746E657645;
  *(v186 + 168) = 0xE500000000000000;
  *(v186 + 184) = v198;
  *(v186 + 192) = v200;
  v378 = v199;
  *&v379 = v200;
  v201 = sub_1CA94C438("Event (Event)", 13);
  v371 = v202;
  v372 = v201;
  v203 = sub_1CA94C438("Event", 5);
  v370 = v204;
  v373 = &v367;
  MEMORY[0x1EEE9AC00](v203);
  v205 = v401;
  sub_1CA948D98();
  v206 = v400;
  v207 = [v400 bundleURL];
  MEMORY[0x1EEE9AC00](v207);
  v208 = v403;
  sub_1CA948B68();

  v209 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v186 + 200) = sub_1CA2F9F14(v372, v371, v203, v370, 0, 0, &v367 - v205, &v367 - v208);
  v210 = v398;
  *(v186 + 224) = v398;
  *(v186 + 232) = @"Placeholder";
  v373 = @"Placeholder";
  v211 = sub_1CA94C438("Event (Event)", 13);
  v370 = v212;
  v371 = v211;
  v213 = sub_1CA94C438("Event", 5);
  v369 = v214;
  v372 = &v367;
  MEMORY[0x1EEE9AC00](v213);
  sub_1CA948D98();
  v215 = [v206 bundleURL];
  MEMORY[0x1EEE9AC00](v215);
  sub_1CA948B68();

  v216 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v186 + 240) = sub_1CA2F9F14(v371, v370, v213, v369, 0, 0, &v367 - v205, &v367 - v208);
  v217 = v380;
  *(v186 + 264) = v210;
  *(v186 + 272) = v217;
  v372 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438F0, &unk_1CA9819E0);
  v218 = swift_allocObject();
  *(v218 + 16) = v395;
  v219 = swift_allocObject();
  *(v219 + 16) = v390;
  v220 = MEMORY[0x1E69E6158];
  *(v219 + 32) = sub_1CA94C1E8();
  *(v218 + 56) = v385;
  *(v218 + 32) = v219;
  v221 = swift_allocObject();
  *(v221 + 16) = v395;
  strcpy((v221 + 32), "WFParameterKey");
  *(v221 + 47) = -18;
  *(v221 + 48) = 0x64656C62616E45;
  *(v221 + 56) = 0xE700000000000000;
  *(v221 + 72) = v220;
  *(v221 + 80) = 0xD000000000000010;
  *(v221 + 88) = v389;
  *(v221 + 96) = 1;
  *(v221 + 120) = MEMORY[0x1E69E6370];
  *(v221 + 128) = 0x72756F7365524657;
  *(v221 + 168) = v220;
  *(v221 + 136) = 0xEF7373616C436563;
  v222 = v388;
  *(v221 + 144) = v381;
  *(v221 + 152) = v222;
  v223 = sub_1CA94C1E8();
  v371 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  *(v218 + 88) = v371;
  *(v218 + 64) = v223;
  v224 = sub_1CA94C1E8();
  v370 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(v218 + 120) = v370;
  *(v218 + 96) = v224;
  v369 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443838, &qword_1CA981588);
  *(v186 + 304) = v369;
  *(v186 + 280) = v218;
  v225 = sub_1CA94C1E8();
  v226 = sub_1CA2F864C(v225);
  *(v397 + 56) = v226;
  v227 = swift_allocObject();
  *(v227 + 16) = xmmword_1CA9813E0;
  *(v227 + 32) = v382;
  *(v227 + 40) = 0xD000000000000014;
  *(v227 + 48) = 0x80000001CA9AB710;
  v228 = v374;
  *(v227 + 64) = v220;
  *(v227 + 72) = v228;
  v229 = sub_1CA94C438("The time after which to turn off the Focus (Time)", 49);
  v368 = v230;
  v231 = sub_1CA94C438("The time after which to turn off the Focus", 42);
  v233 = v232;
  v374 = &v367;
  MEMORY[0x1EEE9AC00](v231);
  v234 = v401;
  sub_1CA948D98();
  v235 = [v400 bundleURL];
  MEMORY[0x1EEE9AC00](v235);
  v236 = &v367 - v403;
  sub_1CA948B68();

  v237 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v238 = sub_1CA2F9F14(v229, v368, v231, v233, 0, 0, &v367 - v234, v236);
  *(v227 + 104) = v398;
  *(v227 + 80) = v238;
  *(v227 + 112) = sub_1CA94C368();
  *(v227 + 120) = 0x737961776C41;
  *(v227 + 128) = 0xE600000000000000;
  v239 = MEMORY[0x1E69E6158];
  v240 = v384;
  *(v227 + 144) = MEMORY[0x1E69E6158];
  *(v227 + 152) = v240;
  *(v227 + 160) = 0x6E6F697461727564;
  *(v227 + 168) = 0xE800000000000000;
  v241 = v378;
  *(v227 + 184) = v239;
  *(v227 + 192) = v241;
  *(v227 + 200) = 1701669204;
  *(v227 + 208) = 0xE400000000000000;
  v242 = v379;
  *(v227 + 224) = v239;
  *(v227 + 232) = v242;
  v374 = sub_1CA94C438("Time (Time)", 11);
  v368 = v243;
  v244 = sub_1CA94C438("Time", 4);
  v367 = v245;
  v384 = &v367;
  MEMORY[0x1EEE9AC00](v244);
  sub_1CA948D98();
  v246 = v400;
  v247 = [v400 bundleURL];
  MEMORY[0x1EEE9AC00](v247);
  v248 = &v367 - v403;
  sub_1CA948B68();

  v249 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v227 + 240) = sub_1CA2F9F14(v374, v368, v244, v367, 0, 0, &v367 - v234, v248);
  v250 = v398;
  v251 = v373;
  *(v227 + 264) = v398;
  *(v227 + 272) = v251;
  v252 = sub_1CA94C438("7 PM (Time)", 11);
  v373 = v253;
  v374 = v252;
  v254 = sub_1CA94C438("7 PM", 4);
  v368 = v255;
  v384 = &v367;
  MEMORY[0x1EEE9AC00](v254);
  v256 = &v367 - v401;
  sub_1CA948D98();
  v257 = [v246 bundleURL];
  MEMORY[0x1EEE9AC00](v257);
  v258 = &v367 - v403;
  sub_1CA948B68();

  v259 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v227 + 280) = sub_1CA2F9F14(v374, v373, v254, v368, 0, 0, v256, v258);
  v260 = v380;
  *(v227 + 304) = v250;
  *(v227 + 312) = v260;
  v261 = swift_allocObject();
  *(v261 + 16) = v395;
  v262 = swift_allocObject();
  *(v262 + 16) = v390;
  v263 = MEMORY[0x1E69E6158];
  *(v262 + 32) = sub_1CA94C1E8();
  *(v261 + 56) = v385;
  *(v261 + 32) = v262;
  v264 = swift_allocObject();
  *(v264 + 16) = v395;
  strcpy((v264 + 32), "WFParameterKey");
  *(v264 + 47) = -18;
  *(v264 + 48) = 0x64656C62616E45;
  *(v264 + 56) = 0xE700000000000000;
  *(v264 + 72) = v263;
  *(v264 + 80) = 0xD000000000000010;
  *(v264 + 88) = v389;
  *(v264 + 96) = 1;
  *(v264 + 120) = MEMORY[0x1E69E6370];
  *(v264 + 128) = 0x72756F7365524657;
  *(v264 + 168) = v263;
  v265 = v381;
  *(v264 + 136) = 0xEF7373616C436563;
  *(v264 + 144) = v265;
  *(v264 + 152) = v388;
  v266 = sub_1CA94C1E8();
  *(v261 + 88) = v371;
  *(v261 + 64) = v266;
  v267 = v263;
  v268 = sub_1CA94C1E8();
  v269 = v369;
  *(v261 + 120) = v370;
  *(v261 + 96) = v268;
  *(v227 + 320) = v261;
  *(v227 + 344) = v269;
  *(v227 + 352) = @"TextAlignment";
  *(v227 + 384) = v263;
  *(v227 + 360) = 0x7468676952;
  *(v227 + 368) = 0xE500000000000000;
  v270 = @"TextAlignment";
  v271 = sub_1CA94C1E8();
  v272 = sub_1CA2F864C(v271);
  *(v397 + 64) = v272;
  v273 = swift_allocObject();
  *(v273 + 16) = v395;
  *(v273 + 32) = v382;
  *(v273 + 40) = v265;
  *(v273 + 48) = 0x80000001CA9DAC40;
  v274 = v378;
  *(v273 + 64) = v267;
  *(v273 + 72) = v274;
  *(v273 + 80) = 0x646F4D7375636F46;
  *(v273 + 88) = 0xEA00000000007365;
  v275 = v379;
  *(v273 + 104) = v267;
  *(v273 + 112) = v275;
  v276 = sub_1CA94C438("Focus (FocusModes)", 18);
  v394 = v277;
  v278 = sub_1CA94C438("Focus", 5);
  v280 = v279;
  *&v395 = &v367;
  MEMORY[0x1EEE9AC00](v278);
  v281 = &v367 - v401;
  sub_1CA948D98();
  v282 = [v400 bundleURL];
  MEMORY[0x1EEE9AC00](v282);
  v283 = &v367 - v403;
  sub_1CA948B68();

  v284 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v285 = sub_1CA2F9F14(v276, v394, v278, v280, 0, 0, v281, v283);
  *(v273 + 144) = v398;
  *(v273 + 120) = v285;
  v286 = sub_1CA94C1E8();
  v287 = sub_1CA2F864C(v286);
  v288 = v397;
  *(v397 + 72) = v287;
  v289 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v290 = v391;
  v391[45] = v288;
  v290[48] = v289;
  v290[49] = @"ParameterSummary";
  v397 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v398 = swift_allocObject();
  *(v398 + 16) = v375;
  v396 = "Focus (FocusModes)";
  v291 = @"ParameterSummary";
  v292 = sub_1CA94C438("${Operation} ${FocusModes}", 26);
  v394 = v293;
  v294 = sub_1CA94C438("${Operation} ${FocusModes}", 26);
  v296 = v295;
  *&v395 = &v367;
  MEMORY[0x1EEE9AC00](v294);
  v297 = v401;
  sub_1CA948D98();
  v298 = [v400 bundleURL];
  MEMORY[0x1EEE9AC00](v298);
  v299 = v403;
  sub_1CA948B68();

  v300 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v301 = sub_1CA2F9F14(v292, v394, v294, v296, 0, 0, &v367 - v297, &v367 - v299);
  v302 = objc_allocWithZone(WFActionParameterSummaryValue);
  v303 = sub_1CA65DD78(0xD00000000000001CLL, v396 | 0x8000000000000000, v301);
  *(v398 + 32) = v303;
  v396 = "${Operation} ${FocusModes}";
  v304 = sub_1CA94C438("${Operation} ${FocusModes} ${Enabled}", 37);
  v393 = v305;
  v394 = v304;
  v306 = sub_1CA94C438("${Operation} ${FocusModes} ${Enabled}", 37);
  v308 = v307;
  *&v395 = &v367;
  MEMORY[0x1EEE9AC00](v306);
  v309 = &v367 - v297;
  sub_1CA948D98();
  v310 = v400;
  v311 = [v400 bundleURL];
  MEMORY[0x1EEE9AC00](v311);
  sub_1CA948B68();

  v312 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v313 = sub_1CA2F9F14(v394, v393, v306, v308, 0, 0, v309, &v367 - v299);
  v314 = objc_allocWithZone(WFActionParameterSummaryValue);
  v315 = sub_1CA65DD78(0xD000000000000022, v396 | 0x8000000000000000, v313);
  *(v398 + 40) = v315;
  v396 = "ocusModes} ${Enabled}";
  v316 = sub_1CA94C438("${Operation} ${FocusModes} ${Enabled} until ${AssertionType} ${Event}", 69);
  v393 = v317;
  v394 = v316;
  v318 = sub_1CA94C438("${Operation} ${FocusModes} ${Enabled} until ${AssertionType} ${Event}", 69);
  v392 = v319;
  *&v395 = &v367;
  MEMORY[0x1EEE9AC00](v318);
  v320 = v401;
  sub_1CA948D98();
  v321 = [v310 bundleURL];
  MEMORY[0x1EEE9AC00](v321);
  v322 = &v367 - v403;
  sub_1CA948B68();

  v323 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v324 = sub_1CA2F9F14(v394, v393, v318, v392, 0, 0, &v367 - v320, v322);
  v325 = objc_allocWithZone(WFActionParameterSummaryValue);
  v326 = sub_1CA65DD78(0xD000000000000045, v396 | 0x8000000000000000, v324);
  *(v398 + 48) = v326;
  v396 = "sertionType} ${Event}";
  v327 = sub_1CA94C438("${Operation} ${FocusModes} ${Enabled} until ${AssertionType}", 60);
  v393 = v328;
  v394 = v327;
  v329 = sub_1CA94C438("${Operation} ${FocusModes} ${Enabled} until ${AssertionType}", 60);
  v392 = v330;
  *&v395 = &v367;
  MEMORY[0x1EEE9AC00](v329);
  v331 = &v367 - v320;
  sub_1CA948D98();
  v332 = [v310 bundleURL];
  MEMORY[0x1EEE9AC00](v332);
  v333 = v403;
  sub_1CA948B68();

  v334 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v335 = sub_1CA2F9F14(v394, v393, v329, v392, 0, 0, v331, &v367 - v333);
  v336 = objc_allocWithZone(WFActionParameterSummaryValue);
  v337 = sub_1CA65DD78(0xD00000000000003CLL, v396 | 0x8000000000000000, v335);
  v338 = v398;
  *(v398 + 56) = v337;
  v396 = "bled} until ${AssertionType}";
  v339 = sub_1CA94C438("${Operation} ${FocusModes} ${Enabled} until ${AssertionType} ${Time}", 68);
  v393 = v340;
  v394 = v339;
  v341 = sub_1CA94C438("${Operation} ${FocusModes} ${Enabled} until ${AssertionType} ${Time}", 68);
  v343 = v342;
  *&v395 = &v367;
  MEMORY[0x1EEE9AC00](v341);
  v344 = &v367 - v401;
  sub_1CA948D98();
  v345 = [v310 bundleURL];
  MEMORY[0x1EEE9AC00](v345);
  sub_1CA948B68();

  v346 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v347 = sub_1CA2F9F14(v394, v393, v341, v343, 0, 0, v344, &v367 - v333);
  v348 = objc_allocWithZone(WFActionParameterSummaryValue);
  *(v338 + 64) = sub_1CA65DD78(0xD00000000000003ELL, v396 | 0x8000000000000000, v347);
  v396 = "sertionType} ${Time}";
  v349 = sub_1CA94C438("${Operation} ${FocusModes} ${Enabled} until ${AssertionType}", 60);
  v351 = v350;
  v352 = sub_1CA94C438("${Operation} ${FocusModes} ${Enabled} until ${AssertionType}", 60);
  v354 = v353;
  *&v395 = &v367;
  MEMORY[0x1EEE9AC00](v352);
  v355 = &v367 - v401;
  sub_1CA948D98();
  v356 = [v400 bundleURL];
  MEMORY[0x1EEE9AC00](v356);
  v357 = &v367 - v403;
  sub_1CA948B68();

  v358 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v359 = sub_1CA2F9F14(v349, v351, v352, v354, 0, 0, v355, v357);
  v360 = objc_allocWithZone(WFActionParameterSummaryValue);
  v361 = sub_1CA65DD78(0xD00000000000003FLL, v396 | 0x8000000000000000, v359);
  v363 = v397;
  v362 = v398;
  *(v398 + 72) = v361;
  v364 = sub_1CA65AF90(v362);
  v365 = v391;
  v391[53] = v363;
  v365[50] = v364;
  v365[54] = sub_1CA94C368();
  v365[58] = MEMORY[0x1E69E6370];
  *(v365 + 440) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA6564F0()
{
  v239 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981300;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000011;
  *(inited + 48) = 0x80000001CA9DAF20;
  *(inited + 64) = v1;
  *(inited + 72) = @"AppDefinition";
  v2 = @"ActionClass";
  v3 = @"AppDefinition";
  v4 = sub_1CA94C1E8();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 80) = v4;
  *(inited + 104) = v5;
  *(inited + 112) = @"Description";
  v247 = inited;
  v249 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v6 = swift_initStackObject();
  *(v6 + 16) = xmmword_1CA981310;
  *(v6 + 32) = @"DescriptionSummary";
  v7 = @"Description";
  v8 = @"DescriptionSummary";
  v250 = sub_1CA94C438("Returns items in your Pocket account.", 37);
  v10 = v9;
  v11 = sub_1CA94C438("Returns items in your Pocket account.", 37);
  v13 = v12;
  v14 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v254 = v15;
  v255 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v229 - v255;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v17 = qword_1EDB9F690;
  v253 = qword_1EDB9F690;
  v18 = [qword_1EDB9F690 bundleURL];
  v19 = sub_1CA948BA8();
  v251 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v252 = (v20 + 15) & 0xFFFFFFFFFFFFFFF0;
  v21 = &v229 - v252;
  sub_1CA948B68();

  v22 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v23 = sub_1CA2F9F14(v250, v10, v11, v13, 0, 0, v16, v21);
  v250 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(v6 + 64) = v250;
  *(v6 + 40) = v23;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v24 = sub_1CA94C1E8();
  v25 = v249;
  v26 = sub_1CA6B3784(v24);
  v27 = v247;
  v247[15] = v26;
  v27[18] = v25;
  v27[19] = @"Name";
  v28 = @"Name";
  v29 = sub_1CA94C438("Get Items from Pocket (Action Name)", 35);
  v31 = v30;
  v32 = sub_1CA94C438("Get Items from Pocket", 21);
  v34 = v33;
  v249 = &v229;
  MEMORY[0x1EEE9AC00](v32);
  v35 = &v229 - v255;
  sub_1CA948D98();
  v36 = [v17 bundleURL];
  MEMORY[0x1EEE9AC00](v36);
  v37 = &v229 - v252;
  sub_1CA948B68();

  v38 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v39 = sub_1CA2F9F14(v29, v31, v32, v34, 0, 0, v35, v37);
  v40 = v250;
  v27[20] = v39;
  v27[23] = v40;
  v27[24] = @"Output";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v41 = swift_initStackObject();
  *(v41 + 16) = xmmword_1CA9813C0;
  *(v41 + 32) = 0x656C7069746C754DLL;
  *(v41 + 40) = 0xE800000000000000;
  v42 = MEMORY[0x1E69E6370];
  *(v41 + 48) = 1;
  *(v41 + 72) = v42;
  *(v41 + 80) = 0x614E74757074754FLL;
  *(v41 + 88) = 0xEA0000000000656DLL;
  v43 = @"Output";
  v248 = sub_1CA94C438("Items from Pocket (Default Output Name)", 39);
  v246 = v44;
  v45 = sub_1CA94C438("Items from Pocket", 17);
  v47 = v46;
  v249 = &v229;
  MEMORY[0x1EEE9AC00](v45);
  v48 = &v229 - v255;
  sub_1CA948D98();
  v49 = [v253 bundleURL];
  MEMORY[0x1EEE9AC00](v49);
  v50 = &v229 - v252;
  sub_1CA948B68();

  v51 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v41 + 96) = sub_1CA2F9F14(v248, v246, v45, v47, 0, 0, v48, v50);
  *(v41 + 120) = v40;
  *(v41 + 128) = 0x7365707954;
  *(v41 + 136) = 0xE500000000000000;
  v238 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v41 + 168) = v238;
  *(v41 + 144) = &unk_1F4A0AFD8;
  v52 = MEMORY[0x1E69E6158];
  v53 = sub_1CA94C1E8();
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v27[25] = v53;
  v27[28] = v54;
  v27[29] = @"Parameters";
  v242 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v249 = swift_allocObject();
  *(v249 + 1) = xmmword_1CA981570;
  v248 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v246 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v55 = swift_initStackObject();
  v243 = xmmword_1CA981370;
  *(v55 + 16) = xmmword_1CA981370;
  *(v55 + 32) = @"Class";
  *(v55 + 40) = 0xD000000000000012;
  *(v55 + 48) = 0x80000001CA99B980;
  *(v55 + 64) = v52;
  *(v55 + 72) = @"Key";
  *(v55 + 80) = 0xD000000000000011;
  *(v55 + 88) = 0x80000001CA9DB010;
  *(v55 + 104) = v52;
  *(v55 + 112) = @"StepperDescription";
  v56 = @"Class";
  v57 = @"Key";
  v58 = v56;
  v59 = v57;
  *&v237 = v58;
  v240 = v59;
  v60 = @"Parameters";
  v61 = @"StepperDescription";
  v62 = sub_1CA94C438("Number of Items (WFPocketItemCount)", 35);
  v64 = v63;
  v65 = sub_1CA94C438("Number of Items", 15);
  v67 = v66;
  v245 = &v229;
  MEMORY[0x1EEE9AC00](v65);
  v68 = &v229 - v255;
  sub_1CA948D98();
  v69 = [v253 bundleURL];
  MEMORY[0x1EEE9AC00](v69);
  v70 = &v229 - v252;
  sub_1CA948B68();

  v71 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v55 + 120) = sub_1CA2F9F14(v62, v64, v65, v67, 0, 0, v68, v70);
  *(v55 + 144) = v250;
  *(v55 + 152) = @"StepperNoun";
  v72 = @"StepperNoun";
  v73 = sub_1CA94C438("%d Items", v229);
  v244 = v74;
  v245 = v73;
  v75 = v74;
  v260 = 0;
  v261 = 0xE000000000000000;
  sub_1CA94D408();

  v260 = v73;
  v261 = v75;
  v258 = 10;
  v259 = 0xE100000000000000;
  v256 = 32;
  v257 = 0xE100000000000000;
  sub_1CA27BAF0();
  v260 = sub_1CA94D1B8();
  v261 = v76;
  v77 = MEMORY[0x1CCAA1300](0xD000000000000010, 0x80000001CA99BA10);
  v241 = &v229;
  v78 = v260;
  v236 = v261;
  MEMORY[0x1EEE9AC00](v77);
  v79 = &v229 - v255;
  sub_1CA948D98();
  v80 = v253;
  v81 = [v253 bundleURL];
  MEMORY[0x1EEE9AC00](v81);
  v82 = v252;
  sub_1CA948B68();

  v83 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v55 + 160) = sub_1CA2F9F14(v78, v236, v245, v244, 0, 0, v79, &v229 - v82);
  v84 = v250;
  *(v55 + 184) = v250;
  *(v55 + 192) = @"StepperPrefix";
  v85 = @"StepperPrefix";
  v244 = sub_1CA94C438("Get (WFPocketItemCount)", 23);
  v241 = v86;
  v236 = sub_1CA94C438("Get", 3);
  v88 = v87;
  v245 = &v229;
  MEMORY[0x1EEE9AC00](v236);
  v89 = &v229 - v255;
  sub_1CA948D98();
  v90 = [v80 bundleURL];
  MEMORY[0x1EEE9AC00](v90);
  sub_1CA948B68();

  v91 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v92 = sub_1CA2F9F14(v244, v241, v236, v88, 0, 0, v89, &v229 - v82);
  *(v55 + 224) = v84;
  *(v55 + 200) = v92;
  _s3__C3KeyVMa_0(0);
  v245 = v93;
  v244 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v94 = sub_1CA94C1E8();
  v95 = sub_1CA2F864C(v94);
  *(v249 + 4) = v95;
  v96 = swift_allocObject();
  *(v96 + 16) = v243;
  *&v243 = 0xD000000000000016;
  v97 = v237;
  *(v96 + 32) = v237;
  *(v96 + 40) = 0xD000000000000016;
  *(v96 + 48) = 0x80000001CA99C4A0;
  v98 = MEMORY[0x1E69E6158];
  *(v96 + 64) = MEMORY[0x1E69E6158];
  *(v96 + 72) = @"DefaultValue";
  *(v96 + 80) = 7105601;
  *(v96 + 88) = 0xE300000000000000;
  *(v96 + 104) = v98;
  *(v96 + 112) = @"Items";
  v241 = swift_allocObject();
  *&v241->data = xmmword_1CA981470;
  v242 = v97;
  v99 = @"DefaultValue";
  v100 = @"Items";
  v101 = sub_1CA94C438("Unread (WFPocketItemState)", 26);
  v235 = v102;
  v236 = v101;
  v103 = sub_1CA94C438("Unread", 6);
  v234 = v104;
  *&v237 = &v229;
  MEMORY[0x1EEE9AC00](v103);
  v105 = v255;
  sub_1CA948D98();
  v106 = v253;
  v107 = [v253 bundleURL];
  MEMORY[0x1EEE9AC00](v107);
  v108 = &v229 - v252;
  sub_1CA948B68();

  v109 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v110 = sub_1CA2F9F14(v236, v235, v103, v234, 0, 0, &v229 - v105, v108);
  v241[1].isa = v110;
  v111 = sub_1CA94C438("Archived (WFPocketItemState)", 28);
  v235 = v112;
  v236 = v111;
  v113 = sub_1CA94C438("Archived", 8);
  v234 = v114;
  *&v237 = &v229;
  MEMORY[0x1EEE9AC00](v113);
  sub_1CA948D98();
  v115 = [v106 bundleURL];
  MEMORY[0x1EEE9AC00](v115);
  v116 = v252;
  sub_1CA948B68();

  v117 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v118 = sub_1CA2F9F14(v236, v235, v113, v234, 0, 0, &v229 - v105, &v229 - v116);
  v119 = v241;
  v241[1].info = v118;
  v120 = sub_1CA94C438("All (WFPocketItemState)", 23);
  v235 = v121;
  v236 = v120;
  v234 = sub_1CA94C438("All", 3);
  v123 = v122;
  *&v237 = &v229;
  MEMORY[0x1EEE9AC00](v234);
  v124 = &v229 - v255;
  sub_1CA948D98();
  v125 = [v253 bundleURL];
  MEMORY[0x1EEE9AC00](v125);
  sub_1CA948B68();

  v126 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v119 + 48) = sub_1CA2F9F14(v236, v235, v234, v123, 0, 0, v124, &v229 - v116);
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  *(v96 + 120) = v119;
  v128 = v240;
  *(v96 + 144) = v127;
  *(v96 + 152) = v128;
  *(v96 + 160) = 0xD000000000000011;
  *(v96 + 168) = 0x80000001CA9DB100;
  *(v96 + 184) = MEMORY[0x1E69E6158];
  *(v96 + 192) = @"Label";
  v129 = @"Label";
  v240 = v128;
  v241 = v129;
  v130 = sub_1CA94C438("Type (WFPocketItemState)", 24);
  v132 = v131;
  v133 = sub_1CA94C438("Type", 4);
  v135 = v134;
  *&v237 = &v229;
  MEMORY[0x1EEE9AC00](v133);
  v136 = &v229 - v255;
  sub_1CA948D98();
  v137 = [v253 bundleURL];
  MEMORY[0x1EEE9AC00](v137);
  v138 = &v229 - v252;
  sub_1CA948B68();

  v139 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v140 = sub_1CA2F9F14(v130, v132, v133, v135, 0, 0, v136, v138);
  *(v96 + 224) = v250;
  *(v96 + 200) = v140;
  v141 = sub_1CA94C1E8();
  v142 = sub_1CA2F864C(v141);
  *(v249 + 5) = v142;
  v143 = swift_allocObject();
  v237 = xmmword_1CA981380;
  *(v143 + 16) = xmmword_1CA981380;
  v235 = 0xD000000000000014;
  v236 = 0x80000001CA99B500;
  *(v143 + 32) = v242;
  *(v143 + 40) = 0xD000000000000014;
  *(v143 + 48) = 0x80000001CA99B500;
  *(v143 + 64) = MEMORY[0x1E69E6158];
  *(v143 + 72) = @"Description";
  v234 = @"Description";
  v144 = sub_1CA94C438("If specified, only items with titles or URLs matching this search will be returned. (WFPocketItemSearchTerm)", 108);
  v231 = v145;
  v232 = v144;
  v146 = sub_1CA94C438("If specified, only items with titles or URLs matching this search will be returned.", 83);
  v148 = v147;
  v233 = &v229;
  MEMORY[0x1EEE9AC00](v146);
  v149 = &v229 - v255;
  sub_1CA948D98();
  v150 = [v253 bundleURL];
  MEMORY[0x1EEE9AC00](v150);
  v151 = v252;
  sub_1CA948B68();

  v152 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v143 + 80) = sub_1CA2F9F14(v232, v231, v146, v148, 0, 0, v149, &v229 - v151);
  v153 = v250;
  v154 = v240;
  *(v143 + 104) = v250;
  *(v143 + 112) = v154;
  *(v143 + 120) = v243;
  *(v143 + 128) = 0x80000001CA9DB210;
  v155 = v241;
  *(v143 + 144) = MEMORY[0x1E69E6158];
  *(v143 + 152) = v155;
  v156 = sub_1CA94C438("Search (WFPocketItemSearchTerm)", 31);
  v231 = v157;
  v232 = v156;
  v158 = sub_1CA94C438("Search", 6);
  v230 = v159;
  v233 = &v229;
  MEMORY[0x1EEE9AC00](v158);
  v160 = &v229 - v255;
  sub_1CA948D98();
  v161 = [v253 bundleURL];
  MEMORY[0x1EEE9AC00](v161);
  sub_1CA948B68();

  v162 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v143 + 160) = sub_1CA2F9F14(v232, v231, v158, v230, 0, 0, v160, &v229 - v151);
  *(v143 + 184) = v153;
  *(v143 + 192) = @"Placeholder";
  v233 = @"Placeholder";
  v231 = sub_1CA94C438("optional (WFPocketItemSearchTerm)", 33);
  v164 = v163;
  v165 = sub_1CA94C438("optional", 8);
  v167 = v166;
  v232 = &v229;
  MEMORY[0x1EEE9AC00](v165);
  v168 = &v229 - v255;
  sub_1CA948D98();
  v169 = [v253 bundleURL];
  MEMORY[0x1EEE9AC00](v169);
  v170 = &v229 - v252;
  sub_1CA948B68();

  v171 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v143 + 200) = sub_1CA2F9F14(v231, v164, v165, v167, 0, 0, v168, v170);
  v172 = v250;
  *(v143 + 224) = v250;
  *(v143 + 232) = @"TextAlignment";
  v173 = MEMORY[0x1E69E6158];
  *(v143 + 264) = MEMORY[0x1E69E6158];
  *(v143 + 240) = 0x7468676952;
  *(v143 + 248) = 0xE500000000000000;
  v232 = @"TextAlignment";
  v174 = sub_1CA94C1E8();
  v175 = sub_1CA2F864C(v174);
  *(v249 + 6) = v175;
  v176 = swift_allocObject();
  *(v176 + 16) = v237;
  v178 = v235;
  v177 = v236;
  *(v176 + 32) = v242;
  *(v176 + 40) = v178;
  *(v176 + 48) = v177;
  v179 = v234;
  *(v176 + 64) = v173;
  *(v176 + 72) = v179;
  v242 = sub_1CA94C438("If specified, only items matching this tag will be returned. (WFPocketItemSearchTags)", 85);
  *&v237 = v180;
  v181 = sub_1CA94C438("If specified, only items matching this tag will be returned.", 60);
  v183 = v182;
  v246 = &v229;
  MEMORY[0x1EEE9AC00](v181);
  v184 = &v229 - v255;
  sub_1CA948D98();
  v185 = v253;
  v186 = [v253 bundleURL];
  MEMORY[0x1EEE9AC00](v186);
  v187 = &v229 - v252;
  sub_1CA948B68();

  v188 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v176 + 80) = sub_1CA2F9F14(v242, v237, v181, v183, 0, 0, v184, v187);
  v189 = v240;
  *(v176 + 104) = v172;
  *(v176 + 112) = v189;
  *(v176 + 120) = v243;
  *(v176 + 128) = 0x80000001CA9DB330;
  v190 = v241;
  *(v176 + 144) = MEMORY[0x1E69E6158];
  *(v176 + 152) = v190;
  v191 = sub_1CA94C438("Tag (WFPocketItemSearchTags)", 28);
  v242 = v192;
  *&v243 = v191;
  v193 = sub_1CA94C438("Tag", 3);
  v241 = v194;
  v246 = &v229;
  MEMORY[0x1EEE9AC00](v193);
  v195 = v255;
  sub_1CA948D98();
  v196 = [v185 bundleURL];
  v240 = &v229;
  MEMORY[0x1EEE9AC00](v196);
  v197 = v252;
  sub_1CA948B68();

  v198 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v176 + 160) = sub_1CA2F9F14(v243, v242, v193, v241, 0, 0, &v229 - v195, &v229 - v197);
  v199 = v233;
  *(v176 + 184) = v250;
  *(v176 + 192) = v199;
  v200 = sub_1CA94C438("optional (WFPocketItemSearchTags)", 33);
  v242 = v201;
  *&v243 = v200;
  v202 = sub_1CA94C438("optional", 8);
  v241 = v203;
  v246 = &v229;
  MEMORY[0x1EEE9AC00](v202);
  v204 = v195;
  sub_1CA948D98();
  v205 = [v253 bundleURL];
  MEMORY[0x1EEE9AC00](v205);
  sub_1CA948B68();

  v206 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v176 + 200) = sub_1CA2F9F14(v243, v242, v202, v241, 0, 0, &v229 - v195, &v229 - v197);
  v207 = v232;
  *(v176 + 224) = v250;
  *(v176 + 232) = v207;
  *(v176 + 264) = MEMORY[0x1E69E6158];
  *(v176 + 240) = 0x7468676952;
  *(v176 + 248) = 0xE500000000000000;
  v208 = sub_1CA94C1E8();
  v209 = sub_1CA2F864C(v208);
  v210 = v249;
  *(v249 + 7) = v209;
  v211 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v212 = v247;
  v247[30] = v210;
  v212[33] = v211;
  v212[34] = @"ParameterSummary";
  v213 = @"ParameterSummary";
  v214 = sub_1CA94C438("Get ${WFPocketItemCount} (Parameter Summary)", 44);
  v216 = v215;
  v217 = sub_1CA94C438("Get ${WFPocketItemCount}", 24);
  v219 = v218;
  MEMORY[0x1EEE9AC00](v217);
  sub_1CA948D98();
  v220 = [v253 bundleURL];
  MEMORY[0x1EEE9AC00](v220);
  v221 = &v229 - v252;
  sub_1CA948B68();

  v222 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v223 = sub_1CA2F9F14(v214, v216, v217, v219, 0, 0, &v229 - v204, v221);
  v224 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v225 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v226 = v247;
  v247[35] = v224;
  v226[38] = v225;
  v226[39] = @"RequiredResources";
  v226[43] = v238;
  v226[40] = &unk_1F4A0B008;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v227 = @"RequiredResources";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA6580A4()
{
  v103 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813A0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0x52556E65704F4657;
  *(inited + 48) = 0xEF6E6F697463414CLL;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v104 = sub_1CA94C438("URL|web|display|site|open|show|multiple", 39);
  v5 = v4;
  v6 = sub_1CA94C438("URL|web|display|site|open|show|multiple", 39);
  v8 = v7;
  v9 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v108 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  v109 = v10;
  v11 = &v97 - v108;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v12 = qword_1EDB9F690;
  v105 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v106 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v107 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v97 - v107;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v104, v5, v6, v8, 0, 0, v11, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v104 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"Description";
  v102 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_1CA981310;
  *(v20 + 32) = @"DescriptionSummary";
  v21 = @"Description";
  v22 = @"DescriptionSummary";
  v23 = sub_1CA94C438("Opens URLs passed into the action in Safari.", 44);
  v100 = v24;
  v25 = sub_1CA94C438("Opens URLs passed into the action in Safari.", 44);
  v27 = v26;
  v101 = &v97;
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v97 - v108;
  sub_1CA948D98();
  v29 = [v12 bundleURL];
  MEMORY[0x1EEE9AC00](v29);
  v30 = &v97 - v107;
  sub_1CA948B68();

  v31 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v32 = sub_1CA2F9F14(v23, v100, v25, v27, 0, 0, v28, v30);
  *(v20 + 64) = v104;
  *(v20 + 40) = v32;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v33 = sub_1CA94C1E8();
  v34 = v102;
  *(inited + 120) = sub_1CA6B3784(v33);
  *(inited + 144) = v34;
  *(inited + 152) = @"IconColor";
  *(inited + 160) = 1953392980;
  *(inited + 168) = 0xE400000000000000;
  v35 = MEMORY[0x1E69E6158];
  *(inited + 184) = MEMORY[0x1E69E6158];
  *(inited + 192) = @"IconSymbol";
  *(inited + 200) = 0xD000000000000010;
  *(inited + 208) = 0x80000001CA9AC3B0;
  *(inited + 224) = v35;
  *(inited + 232) = @"IconSymbolColor";
  *(inited + 240) = 1702194242;
  *(inited + 248) = 0xE400000000000000;
  *(inited + 264) = v35;
  *(inited + 272) = @"Input";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v36 = swift_initStackObject();
  *(v36 + 16) = xmmword_1CA981350;
  *(v36 + 32) = 0x656C7069746C754DLL;
  *(v36 + 40) = 0xE800000000000000;
  v37 = MEMORY[0x1E69E6370];
  *(v36 + 48) = 1;
  *(v36 + 72) = v37;
  strcpy((v36 + 80), "ParameterKey");
  *(v36 + 93) = 0;
  *(v36 + 94) = -5120;
  *(v36 + 96) = 0x7475706E494657;
  *(v36 + 104) = 0xE700000000000000;
  *(v36 + 120) = v35;
  *(v36 + 128) = 0x6465726975716552;
  *(v36 + 136) = 0xE800000000000000;
  *(v36 + 144) = 1;
  *(v36 + 168) = v37;
  *(v36 + 176) = 0x7365707954;
  *(v36 + 184) = 0xE500000000000000;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v36 + 216) = v102;
  *(v36 + 192) = &unk_1F4A0B048;
  v38 = @"IconColor";
  v39 = @"IconSymbol";
  v40 = @"IconSymbolColor";
  v41 = @"Input";
  v42 = sub_1CA94C1E8();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  *(inited + 280) = v42;
  *(inited + 304) = v43;
  *(inited + 312) = @"InputPassthrough";
  *(inited + 344) = v37;
  *(inited + 320) = 1;
  v44 = @"InputPassthrough";
  *(inited + 352) = sub_1CA94C368();
  *(inited + 360) = 0xD00000000000003CLL;
  *(inited + 368) = 0x80000001CA9DB460;
  *(inited + 384) = v35;
  *(inited + 392) = @"Name";
  v45 = @"Name";
  v46 = sub_1CA94C438("Open URLs (Action Name)", 23);
  v48 = v47;
  v49 = sub_1CA94C438("Open URLs", 9);
  v51 = v50;
  v101 = &v97;
  MEMORY[0x1EEE9AC00](v49);
  v52 = &v97 - v108;
  sub_1CA948D98();
  v53 = [v105 bundleURL];
  MEMORY[0x1EEE9AC00](v53);
  v54 = &v97 - v107;
  sub_1CA948B68();

  v55 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 400) = sub_1CA2F9F14(v46, v48, v49, v51, 0, 0, v52, v54);
  v99 = @"Parameters";
  *(inited + 424) = v104;
  *(inited + 432) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v101 = swift_allocObject();
  *(v101 + 1) = xmmword_1CA9813B0;
  v100 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_1CA981300;
  *(v56 + 32) = @"AllowsMultipleValues";
  *(v56 + 40) = 1;
  v57 = MEMORY[0x1E69E6370];
  *(v56 + 64) = MEMORY[0x1E69E6370];
  *(v56 + 72) = @"AutocapitalizationType";
  *(v56 + 80) = 1701736270;
  *(v56 + 88) = 0xE400000000000000;
  v58 = MEMORY[0x1E69E6158];
  *(v56 + 104) = MEMORY[0x1E69E6158];
  *(v56 + 112) = @"Class";
  *(v56 + 120) = 0xD000000000000014;
  *(v56 + 128) = 0x80000001CA99B500;
  *(v56 + 144) = v58;
  *(v56 + 152) = @"DisableAutocorrection";
  *(v56 + 160) = 1;
  *(v56 + 184) = v57;
  *(v56 + 192) = @"Key";
  *(v56 + 200) = 0x7475706E494657;
  *(v56 + 208) = 0xE700000000000000;
  *(v56 + 224) = v58;
  *(v56 + 232) = @"KeyboardType";
  *(v56 + 240) = 5001813;
  *(v56 + 248) = 0xE300000000000000;
  *(v56 + 264) = v58;
  *(v56 + 272) = @"Label";
  v59 = v99;
  v60 = @"AllowsMultipleValues";
  v61 = @"AutocapitalizationType";
  v62 = @"Class";
  v63 = @"DisableAutocorrection";
  v64 = @"Key";
  v65 = @"KeyboardType";
  v66 = @"Label";
  v67 = sub_1CA94C438("URL (WFInput)", 13);
  v98 = v68;
  v69 = sub_1CA94C438("URL", 3);
  v71 = v70;
  v99 = &v97;
  MEMORY[0x1EEE9AC00](v69);
  v72 = &v97 - v108;
  sub_1CA948D98();
  v73 = [v105 bundleURL];
  MEMORY[0x1EEE9AC00](v73);
  v74 = &v97 - v107;
  sub_1CA948B68();

  v75 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v56 + 280) = sub_1CA2F9F14(v67, v98, v69, v71, 0, 0, v72, v74);
  *(v56 + 304) = v104;
  *(v56 + 312) = @"TextContentType";
  *(v56 + 344) = MEMORY[0x1E69E6158];
  *(v56 + 320) = 5001813;
  *(v56 + 328) = 0xE300000000000000;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v76 = @"TextContentType";
  v77 = sub_1CA94C1E8();
  v78 = sub_1CA2F864C(v77);
  v79 = v101;
  v101[4] = v78;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  *(inited + 440) = v79;
  *(inited + 464) = v80;
  *(inited + 472) = @"ParameterSummary";
  v81 = @"ParameterSummary";
  v82 = sub_1CA94C438("Open ${WFInput} (Parameter Summary)", 35);
  v84 = v83;
  v85 = sub_1CA94C438("Open ${WFInput}", 15);
  v87 = v86;
  v104 = &v97;
  MEMORY[0x1EEE9AC00](v85);
  v88 = &v97 - v108;
  sub_1CA948D98();
  v89 = [v105 bundleURL];
  MEMORY[0x1EEE9AC00](v89);
  v90 = &v97 - v107;
  sub_1CA948B68();

  v91 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v92 = sub_1CA2F9F14(v82, v84, v85, v87, 0, 0, v88, v90);
  v93 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v94 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(inited + 480) = v93;
  *(inited + 504) = v94;
  *(inited + 512) = @"RequiredResources";
  *(inited + 544) = v102;
  *(inited + 520) = &unk_1F4A0B078;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v95 = @"RequiredResources";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

void static WFInterchangeAppDefinitionRegistry.register(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = sub_1CA94C368();
  v9[4] = a3;
  v9[5] = a4;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1CA658E94;
  v9[3] = &block_descriptor_36;
  v8 = _Block_copy(v9);

  [ObjCClassFromMetadata registerDefinitionForKey:v7 definition:v8];
  _Block_release(v8);
}

id sub_1CA658E94(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);

  v3 = sub_1CA94C1A8();

  return v3;
}

uint64_t block_copy_helper_36(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1CA658F74(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC446D90, &unk_1CA981540);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981310;
  *(inited + 32) = (*(a2[5] + 24))(a2[2], a2[5]);
  *(inited + 40) = v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for RowTemplateDynamicEnumerationParameter(0, AssociatedTypeWitness, a2[3], v8);
  v9 = v2[3];
  v10 = v2[4];
  v11 = v2[5];
  v12 = v2[6];
  v14 = *(a1 + 40);
  v13 = *(a1 + 48);
  v16 = v2[1];
  v15 = v2[2];

  sub_1CA94C218();
  sub_1CA94C218();
  *(inited + 48) = sub_1CA6590DC(v9, v10, v11, v12, v14, v13, v16, v15);
  sub_1CA25B3D0(0, &qword_1EC441AA0, off_1E836EDB8);
  return sub_1CA94C1E8();
}

uint64_t sub_1CA659168(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[4] = a1;
  v4[5] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1CA65918C, 0, 0);
}

uint64_t sub_1CA65918C()
{
  v1 = v0[6];
  v2 = *(v1 + 40);
  v0[8] = v2;
  v3 = *(v2 + 24);
  v4 = *(v1 + 16);
  v0[9] = v4;
  v3(v4, v2);
  v5 = sub_1CA323E28();
  v0[10] = v5;

  if (v5)
  {
    v6 = v0[6];
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v8 = *(v6 + 32);
    v9 = swift_task_alloc();
    v0[11] = v9;
    *v9 = v0;
    v9[1] = sub_1CA659364;
    v10 = v0[5];

    return sub_1CA443C9C(v5, AssociatedTypeWitness, v8, v10, AssociatedTypeWitness, v8);
  }

  else
  {
    OUTLINED_FUNCTION_1_50();
    v14 = v12;
    v13 = swift_task_alloc();
    v0[14] = v13;
    *v13 = v0;
    v13[1] = sub_1CA6594D0;

    return v14();
  }
}

uint64_t sub_1CA659364()
{
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_3();
  v5 = v4;
  OUTLINED_FUNCTION_1();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_13();
  *v8 = v7;
  *(v5 + 96) = v0;

  if (!v0)
  {
    *(v5 + 104) = v3;
  }

  OUTLINED_FUNCTION_27_3();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1CA659470()
{
  OUTLINED_FUNCTION_0();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_2_4();

  return v0();
}

uint64_t sub_1CA6594D0()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 120) = v3;

  return MEMORY[0x1EEE6DFA0](sub_1CA6595C4, 0, 0);
}

uint64_t sub_1CA6595C4()
{
  OUTLINED_FUNCTION_14();
  v0[2] = v0[15];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1CA94C758();
  OUTLINED_FUNCTION_2_0();
  swift_getWitnessTable();
  sub_1CA94CAD8();
  v2 = v0[3];
  v0[16] = v2;

  if (v2)
  {
    v3 = *(v0[6] + 32);
    v4 = v2;
    v5 = swift_task_alloc();
    v0[17] = v5;
    *v5 = v0;
    v5[1] = sub_1CA659724;
    v6 = v0[5];

    return sub_1CA443C9C(v4, AssociatedTypeWitness, v3, v6, AssociatedTypeWitness, v3);
  }

  else
  {
    OUTLINED_FUNCTION_2_4();

    return v8(0);
  }
}

uint64_t sub_1CA659724()
{
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_3();
  v5 = v4;
  OUTLINED_FUNCTION_1();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_13();
  *v8 = v7;
  *(v5 + 144) = v0;

  if (!v0)
  {

    *(v5 + 152) = v3;
  }

  OUTLINED_FUNCTION_27_3();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1CA659838()
{
  OUTLINED_FUNCTION_0();

  OUTLINED_FUNCTION_2_4();

  return v1();
}

uint64_t sub_1CA659898()
{
  OUTLINED_FUNCTION_0();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_5();

  return v0();
}

uint64_t sub_1CA6598F4()
{
  OUTLINED_FUNCTION_0();
  v1 = *(v0 + 128);

  OUTLINED_FUNCTION_5();

  return v2();
}

uint64_t sub_1CA659954()
{
  OUTLINED_FUNCTION_14();
  *(v0 + 16) = v1;
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v3 = OUTLINED_FUNCTION_10_33(v2);

  return sub_1CA659168(v3, v4, v5);
}

uint64_t sub_1CA6599EC()
{
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_3();
  v5 = v4;
  OUTLINED_FUNCTION_1();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_13();
  *v8 = v7;

  if (v0)
  {
    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    *(v5 + 32) = v3;

    return MEMORY[0x1EEE6DFA0](sub_1CA659B24, 0, 0);
  }
}

uint64_t sub_1CA659B24()
{
  OUTLINED_FUNCTION_0();
  [*(v0 + 16) setEnumeration_];
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_5();

  return v1();
}

uint64_t sub_1CA659B98()
{
  memcpy((v1 + 16), v0, 0x48uLL);
  v2 = swift_task_alloc();
  *(v1 + 88) = v2;
  *v2 = v1;
  v2[1] = sub_1CA659C58;

  return sub_1CA659954();
}

uint64_t sub_1CA659C58()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  v1 = *v0;
  OUTLINED_FUNCTION_13();
  *v2 = v1;

  OUTLINED_FUNCTION_5();

  return v3();
}

uint64_t sub_1CA659D3C()
{
  OUTLINED_FUNCTION_14();
  v1[2] = v2;
  v1[3] = v0;
  v3 = swift_task_alloc();
  v1[4] = v3;
  *v3 = v1;
  v4 = OUTLINED_FUNCTION_10_33(v3);

  return sub_1CA659168(v4, v5, v6);
}

uint64_t sub_1CA659DD4(uint64_t a1)
{
  OUTLINED_FUNCTION_3();
  v5 = v4;
  OUTLINED_FUNCTION_1();
  *v6 = v5;
  v7 = *v2;
  OUTLINED_FUNCTION_13();
  *v8 = v7;
  v5[5] = a1;

  if (v1 || !a1)
  {
    v9 = OUTLINED_FUNCTION_11_35();

    return v10(v9);
  }

  else
  {
    v14 = (*(v5[3] + 56) + **(v5[3] + 56));
    v12 = swift_task_alloc();
    v5[6] = v12;
    *v12 = v7;
    v12[1] = sub_1CA659FB0;
    v13 = v5[2];

    return v14(a1, v13);
  }
}

uint64_t sub_1CA659FB0()
{
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_3();
  v5 = v4;
  OUTLINED_FUNCTION_1();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_13();
  *v8 = v7;
  *(v5 + 56) = v0;

  if (!v0)
  {
    *(v5 + 64) = v3 & 1;
  }

  OUTLINED_FUNCTION_27_3();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1CA65A0C0()
{
  OUTLINED_FUNCTION_0();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_2_4();

  return v0();
}

uint64_t sub_1CA65A120()
{
  OUTLINED_FUNCTION_0();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_2_4();

  return v0(0);
}

uint64_t sub_1CA65A180()
{
  memcpy((v1 + 16), v0, 0x48uLL);
  v2 = swift_task_alloc();
  *(v1 + 88) = v2;
  *v2 = v1;
  v2[1] = sub_1CA5C3010;

  return sub_1CA659D3C();
}

id sub_1CA65A240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v12 = *MEMORY[0x1E69E7D40] & *v8;
  v13 = (v8 + qword_1EC447A50);
  *v13 = a1;
  v13[1] = a2;
  v14 = (v8 + qword_1EC447A58);
  *v14 = a3;
  v14[1] = a4;
  sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981350;
  v16 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"Key";
  *(inited + 40) = a5;
  *(inited + 48) = a6;
  *(inited + 64) = v16;
  *(inited + 72) = @"Placeholder";

  v17 = @"Key";
  v18 = @"Placeholder";
  sub_1CA94C438("Choose", 6);
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v19 = qword_1EDB9F690;
  v20 = sub_1CA94C368();
  v21 = sub_1CA94C368();

  v22 = [v19 localizedStringForKey:v20 value:v21 table:0];

  v23 = sub_1CA94C3A8();
  v25 = v24;

  *(inited + 80) = v23;
  *(inited + 88) = v25;
  *(inited + 104) = v16;
  *(inited + 112) = @"Label";
  *(inited + 120) = a7;
  *(inited + 128) = a8;
  *(inited + 144) = v16;
  *(inited + 152) = @"DisallowedVariableTypes";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447B40, &unk_1CA9826B0);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1CA981310;
  *(v26 + 32) = @"Ask";
  *(inited + 184) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4456A8, &unk_1CA987A20);
  *(inited + 160) = v26;
  _s3__C3KeyVMa_0(0);
  sub_1CA2A7470();
  v27 = @"Label";
  v28 = @"DisallowedVariableTypes";
  v29 = @"Ask";
  v30 = sub_1CA94C1E8();
  v31 = sub_1CA2F864C(v30);
  v33 = type metadata accessor for RowTemplateDynamicEnumerationParameter(0, *(v12 + 80), *(v12 + 88), v32);
  v39.receiver = v9;
  v39.super_class = v33;
  v34 = objc_msgSendSuper2(&v39, sel_initWithDefinition_, v31);

  v35 = v34;
  [v35 setDataSource_];

  return v35;
}

uint64_t sub_1CA65A590()
{
  sub_1CA65A568();

  return swift_getObjCClassFromMetadata();
}

uint64_t sub_1CA65A5C4(uint64_t a1, void *a2)
{
  v3 = WFVariableSubstitutableParameterStateDowncast<A, B>(_:to:)(a2);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = (*(v2 + qword_1EC447A58))();

  return v5;
}

id sub_1CA65A66C(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  sub_1CA65A5C4(v6, v7);
  v10 = v9;

  if (v10)
  {
    v11 = sub_1CA94C368();
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

double sub_1CA65A714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443880, &qword_1CA982FB0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v15 - v9;
  v11 = sub_1CA94C858();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v5;
  v12[5] = a4;
  v12[6] = a5;
  v13 = v5;

  sub_1CA30C708();

  return result;
}

uint64_t sub_1CA65A810(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  v6[6] = *MEMORY[0x1E69E7D40] & *a4;
  return MEMORY[0x1EEE6DFA0](sub_1CA65A86C, 0, 0);
}

uint64_t sub_1CA65A86C()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_50();
  v4 = v1;
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v2[1] = sub_1CA65A934;

  return v4();
}

uint64_t sub_1CA65A934()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 64) = v3;

  return MEMORY[0x1EEE6DFA0](sub_1CA65AA28, 0, 0);
}

uint64_t sub_1CA65AA28()
{
  v1 = v0[6];
  v2 = v0[4];
  v0[2] = v0[8];
  v3 = swift_task_alloc();
  *(v3 + 16) = *(v1 + 80);
  *(v3 + 24) = *(v1 + 88);
  v4 = sub_1CA94C758();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444F10, &qword_1CA98D960);
  OUTLINED_FUNCTION_2_0();
  WitnessTable = swift_getWitnessTable();
  sub_1CA3E4888(sub_1CA65AE74, v3, v4, v5, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v7);

  v8 = objc_allocWithZone(MEMORY[0x1E696E918]);
  v9 = sub_1CA94C648();

  v10 = [v8 initWithItems_];

  v2(v10, 0);
  OUTLINED_FUNCTION_5();

  return v11();
}

uint64_t sub_1CA65ABA0(void *a1, int a2, void *a3, uint64_t a4, void *aBlock)
{
  v8 = _Block_copy(aBlock);
  if (a4)
  {
    v9 = sub_1CA94C3A8();
    a4 = v10;
  }

  else
  {
    v9 = 0;
  }

  v11 = swift_allocObject();
  *(v11 + 16) = v8;
  v12 = a3;
  v13 = a1;
  sub_1CA65A714(v12, v9, a4, sub_1CA3D7FF4, v11);
}

id sub_1CA65ACD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for RowTemplateDynamicEnumerationParameter(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x50), *((*MEMORY[0x1E69E7D40] & *v4) + 0x58), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

double sub_1CA65AD40()
{

  return result;
}

uint64_t sub_1CA65ADAC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1CA2DF78C;

  return sub_1CA65A810(a1, v4, v5, v6, v7, v8);
}

id sub_1CA65AE74@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  result = WFVariableSubstitutableParameterStateUpcast<A, B>(_:)(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1CA65AEAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1CA65AEE8(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1CA65AF28(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_1CA65AF90(uint64_t a1)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_1CA25B3D0(0, &qword_1EC445FF0, off_1E836DD68);
  v2 = sub_1CA94C648();

  v3 = [v1 initWithValues_];

  return v3;
}

id sub_1CA65B04C()
{
  v394 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813A0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000013;
  *(inited + 48) = 0x80000001CA9DB5B0;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("calculator|calculate|number|ceiling|floor", 41);
  v6 = v5;
  v7 = sub_1CA94C438("calculator|calculate|number|ceiling|floor", 41);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v411 = v11;
  v412 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = &v381 - v412;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v410 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v409 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v408 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v381 - v408;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v406 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"AppDefinition";
  v20 = @"AppDefinition";
  v21 = sub_1CA94C1E8();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v21;
  *(inited + 144) = v22;
  *(inited + 152) = @"Description";
  v407 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v23 = swift_initStackObject();
  v393 = xmmword_1CA981310;
  *(v23 + 16) = xmmword_1CA981310;
  *(v23 + 32) = @"DescriptionSummary";
  v24 = @"Description";
  v25 = @"DescriptionSummary";
  v26 = sub_1CA94C438("Rounds the number(s) passed into the action.", 44);
  v28 = v27;
  v29 = sub_1CA94C438("Rounds the number(s) passed into the action.", 44);
  v31 = v30;
  v404 = &v381;
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v381 - v412;
  sub_1CA948D98();
  v33 = [v410 bundleURL];
  v405 = inited;
  v34 = v33;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v381 - v408;
  sub_1CA948B68();

  v36 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v37 = sub_1CA2F9F14(v26, v28, v29, v31, 0, 0, v32, v35);
  *(v23 + 64) = v406;
  *(v23 + 40) = v37;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v38 = sub_1CA94C1E8();
  v39 = v407;
  v40 = sub_1CA6B3784(v38);
  v41 = v405;
  v405[20] = v40;
  v41[23] = v39;
  v41[24] = @"IconColor";
  v41[25] = 2036429383;
  v41[26] = 0xE400000000000000;
  v42 = MEMORY[0x1E69E6158];
  v41[28] = MEMORY[0x1E69E6158];
  v41[29] = @"IconSymbol";
  v41[30] = 0x6C61757165;
  v41[31] = 0xE500000000000000;
  v41[33] = v42;
  v41[34] = @"Input";
  v43 = v41;
  v403 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v44 = swift_initStackObject();
  v402 = xmmword_1CA981350;
  *(v44 + 16) = xmmword_1CA981350;
  *(v44 + 32) = 0x656C7069746C754DLL;
  *(v44 + 40) = 0xE800000000000000;
  v45 = MEMORY[0x1E69E6370];
  *(v44 + 48) = 1;
  *(v44 + 72) = v45;
  strcpy((v44 + 80), "ParameterKey");
  *(v44 + 93) = 0;
  *(v44 + 94) = -5120;
  *(v44 + 96) = 0x7475706E494657;
  *(v44 + 104) = 0xE700000000000000;
  *(v44 + 120) = v42;
  *(v44 + 128) = 0x6465726975716552;
  *(v44 + 136) = 0xE800000000000000;
  *(v44 + 144) = 1;
  *(v44 + 168) = v45;
  *(v44 + 176) = 0x7365707954;
  v46 = v45;
  *(v44 + 184) = 0xE500000000000000;
  v407 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v44 + 216) = v407;
  *(v44 + 192) = &unk_1F4A0B0E8;
  v47 = @"IconColor";
  v48 = @"IconSymbol";
  v49 = @"Input";
  v50 = sub_1CA94C1E8();
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v404 = v51;
  v43[35] = v50;
  v43[38] = v51;
  v43[39] = @"LocallyProcessesData";
  *(v43 + 320) = 1;
  v43[43] = v46;
  v43[44] = @"Name";
  v52 = @"LocallyProcessesData";
  v53 = @"Name";
  v54 = sub_1CA94C438("Round Number (Action Name)", 26);
  v400 = v55;
  v56 = sub_1CA94C438("Round Number", 12);
  v58 = v57;
  v401 = &v381;
  MEMORY[0x1EEE9AC00](v56);
  v59 = v412;
  sub_1CA948D98();
  v60 = [v410 bundleURL];
  MEMORY[0x1EEE9AC00](v60);
  v61 = &v381 - v408;
  sub_1CA948B68();

  v62 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v63 = sub_1CA2F9F14(v54, v400, v56, v58, 0, 0, &v381 - v59, v61);
  v64 = v405;
  v405[45] = v63;
  v64[48] = v406;
  v64[49] = @"Output";
  v65 = swift_allocObject();
  *(v65 + 16) = v402;
  *(v65 + 32) = 0x75736F6C63736944;
  *(v65 + 40) = 0xEF6C6576654C6572;
  *(v65 + 48) = 0x63696C627550;
  *(v65 + 56) = 0xE600000000000000;
  *(v65 + 72) = MEMORY[0x1E69E6158];
  *(v65 + 80) = 0x656C7069746C754DLL;
  *(v65 + 88) = 0xE800000000000000;
  *(v65 + 96) = 1;
  *(v65 + 120) = MEMORY[0x1E69E6370];
  *(v65 + 128) = 0x614E74757074754FLL;
  *(v65 + 136) = 0xEA0000000000656DLL;
  v66 = @"Output";
  v67 = sub_1CA94C438("Rounded Number (Default Output Name)", 36);
  *&v402 = v68;
  v69 = sub_1CA94C438("Rounded Number", 14);
  v71 = v70;
  v403 = &v381;
  MEMORY[0x1EEE9AC00](v69);
  sub_1CA948D98();
  v72 = [v410 bundleURL];
  MEMORY[0x1EEE9AC00](v72);
  v73 = v408;
  sub_1CA948B68();

  v74 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v65 + 144) = sub_1CA2F9F14(v67, v402, v69, v71, 0, 0, &v381 - v59, &v381 - v73);
  *(v65 + 168) = v406;
  *(v65 + 176) = 0x7365707954;
  *(v65 + 216) = v407;
  *(v65 + 184) = 0xE500000000000000;
  *(v65 + 192) = &unk_1F4A0B118;
  v75 = MEMORY[0x1E69E6158];
  v76 = sub_1CA94C1E8();
  v77 = v405;
  v405[50] = v76;
  v77[53] = v404;
  v77[54] = @"Parameters";
  *&v402 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v404 = swift_allocObject();
  *(v404 + 16) = xmmword_1CA981570;
  v403 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v401 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v78 = swift_allocObject();
  v395 = xmmword_1CA981370;
  *(v78 + 16) = xmmword_1CA981370;
  *(v78 + 32) = @"AllowsDecimalNumbers";
  *(v78 + 40) = 1;
  *(v78 + 64) = MEMORY[0x1E69E6370];
  *(v78 + 72) = @"Class";
  v392 = 0x80000001CA99C180;
  *(v78 + 80) = 0xD000000000000016;
  *(v78 + 88) = 0x80000001CA99C180;
  *(v78 + 104) = v75;
  *(v78 + 112) = @"Key";
  *(v78 + 120) = 0x7475706E494657;
  *(v78 + 128) = 0xE700000000000000;
  *(v78 + 144) = v75;
  *(v78 + 152) = @"Label";
  v79 = @"Class";
  v80 = @"Key";
  v81 = @"Label";
  v82 = v79;
  v83 = v80;
  v84 = v81;
  v398 = v82;
  v396 = v83;
  v391 = v84;
  v85 = @"Parameters";
  v86 = @"AllowsDecimalNumbers";
  v399 = sub_1CA94C438("Number (WFInput)", 16);
  v397 = v87;
  v88 = sub_1CA94C438("Number", 6);
  v90 = v89;
  v400 = &v381;
  MEMORY[0x1EEE9AC00](v88);
  v91 = &v381 - v412;
  sub_1CA948D98();
  v92 = v410;
  v93 = [v410 bundleURL];
  MEMORY[0x1EEE9AC00](v93);
  sub_1CA948B68();

  v94 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v78 + 160) = sub_1CA2F9F14(v399, v397, v88, v90, 0, 0, v91, &v381 - v73);
  v95 = v406;
  *(v78 + 184) = v406;
  *(v78 + 192) = @"Placeholder";
  v390 = @"Placeholder";
  v399 = sub_1CA94C438("Number (WFInput)", 16);
  v397 = v96;
  v97 = sub_1CA94C438("Number", 6);
  v389 = v98;
  v400 = &v381;
  MEMORY[0x1EEE9AC00](v97);
  v99 = &v381 - v412;
  sub_1CA948D98();
  v100 = [v92 bundleURL];
  MEMORY[0x1EEE9AC00](v100);
  sub_1CA948B68();

  v101 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v102 = sub_1CA2F9F14(v399, v397, v97, v389, 0, 0, v99, &v381 - v73);
  *(v78 + 224) = v95;
  *(v78 + 200) = v102;
  _s3__C3KeyVMa_0(0);
  v400 = v103;
  v399 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v104 = sub_1CA94C1E8();
  v105 = sub_1CA2F864C(v104);
  *(v404 + 32) = v105;
  v106 = swift_allocObject();
  v387 = v106;
  *(v106 + 16) = xmmword_1CA981400;
  v389 = 0x80000001CA99C4A0;
  v107 = v398;
  *(v106 + 32) = v398;
  *(v106 + 40) = 0xD000000000000016;
  *(v106 + 48) = 0x80000001CA99C4A0;
  v108 = MEMORY[0x1E69E6158];
  *(v106 + 64) = MEMORY[0x1E69E6158];
  *(v106 + 72) = @"DefaultValue";
  *(v106 + 80) = 0x616C502073656E4FLL;
  *(v106 + 88) = 0xEA00000000006563;
  *(v106 + 104) = v108;
  *(v106 + 112) = @"Items";
  *(v106 + 120) = &unk_1F4A0B148;
  *(v106 + 144) = v407;
  *(v106 + 152) = @"ItemDisplayNames";
  v407 = swift_allocObject();
  *&v407->data = xmmword_1CA9908E0;
  v109 = @"DefaultValue";
  v110 = @"Items";
  v398 = v107;
  v397 = v109;
  v388 = v110;
  v111 = @"ItemDisplayNames";
  v112 = sub_1CA94C438("Millions (WFRoundTo)", 20);
  v385 = v113;
  v386 = v112;
  v114 = sub_1CA94C438("Millions", 8);
  v384 = v115;
  MEMORY[0x1EEE9AC00](v114);
  v116 = &v381 - v412;
  sub_1CA948D98();
  v117 = v410;
  v118 = [v410 bundleURL];
  MEMORY[0x1EEE9AC00](v118);
  v119 = &v381 - v408;
  sub_1CA948B68();

  v120 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v121 = sub_1CA2F9F14(v386, v385, v114, v384, 0, 0, v116, v119);
  v122 = v407;
  v407[1].isa = v121;
  v123 = sub_1CA94C438("Hundred Thousands (WFRoundTo)", 29);
  v384 = v124;
  v385 = v123;
  v125 = sub_1CA94C438("Hundred Thousands", 17);
  v383 = v126;
  v386 = &v381;
  MEMORY[0x1EEE9AC00](v125);
  v127 = v412;
  sub_1CA948D98();
  v128 = [v117 bundleURL];
  MEMORY[0x1EEE9AC00](v128);
  v129 = v408;
  sub_1CA948B68();

  v130 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v122[1].info = sub_1CA2F9F14(v385, v384, v125, v383, 0, 0, &v381 - v127, &v381 - v129);
  v131 = sub_1CA94C438("Ten Thousands (WFRoundTo)", 25);
  v384 = v132;
  v385 = v131;
  v133 = sub_1CA94C438("Ten Thousands", 13);
  v383 = v134;
  v386 = &v381;
  MEMORY[0x1EEE9AC00](v133);
  v135 = &v381 - v127;
  sub_1CA948D98();
  v136 = v410;
  v137 = [v410 bundleURL];
  MEMORY[0x1EEE9AC00](v137);
  sub_1CA948B68();

  v138 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v122[1].data = sub_1CA2F9F14(v385, v384, v133, v383, 0, 0, v135, &v381 - v129);
  v139 = sub_1CA94C438("Thousands (WFRoundTo)", 21);
  v384 = v140;
  v385 = v139;
  v141 = sub_1CA94C438("Thousands", 9);
  v383 = v142;
  v386 = &v381;
  MEMORY[0x1EEE9AC00](v141);
  v143 = v412;
  sub_1CA948D98();
  v144 = [v136 bundleURL];
  MEMORY[0x1EEE9AC00](v144);
  v145 = &v381 - v408;
  sub_1CA948B68();

  v146 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v122[1].length = sub_1CA2F9F14(v385, v384, v141, v383, 0, 0, &v381 - v143, v145);
  v147 = sub_1CA94C438("Hundreds (WFRoundTo)", 20);
  v384 = v148;
  v385 = v147;
  v149 = sub_1CA94C438("Hundreds", 8);
  v151 = v150;
  v386 = &v381;
  MEMORY[0x1EEE9AC00](v149);
  v152 = &v381 - v143;
  sub_1CA948D98();
  v153 = v410;
  v154 = [v410 bundleURL];
  MEMORY[0x1EEE9AC00](v154);
  v155 = v408;
  sub_1CA948B68();

  v156 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v157 = sub_1CA2F9F14(v385, v384, v149, v151, 0, 0, v152, &v381 - v155);
  v158 = v407;
  v407[2].isa = v157;
  v159 = sub_1CA94C438("Tens (WFRoundTo)", 16);
  v384 = v160;
  v385 = v159;
  v161 = sub_1CA94C438("Tens", 4);
  v383 = v162;
  v386 = &v381;
  MEMORY[0x1EEE9AC00](v161);
  v163 = &v381 - v412;
  sub_1CA948D98();
  v164 = [v153 bundleURL];
  MEMORY[0x1EEE9AC00](v164);
  sub_1CA948B68();

  v165 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v158[2].info = sub_1CA2F9F14(v385, v384, v161, v383, 0, 0, v163, &v381 - v155);
  v166 = sub_1CA94C438("Integer (WFRoundTo)", 19);
  v384 = v167;
  v385 = v166;
  v168 = sub_1CA94C438("Integer", 7);
  v383 = v169;
  v386 = &v381;
  MEMORY[0x1EEE9AC00](v168);
  v170 = v412;
  sub_1CA948D98();
  v171 = v410;
  v172 = [v410 bundleURL];
  MEMORY[0x1EEE9AC00](v172);
  v173 = v408;
  sub_1CA948B68();

  v174 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v175 = sub_1CA2F9F14(v385, v384, v168, v383, 0, 0, &v381 - v170, &v381 - v173);
  v176 = v407;
  v407[2].data = v175;
  v177 = sub_1CA94C438("Tenths (WFRoundTo)", 18);
  v384 = v178;
  v385 = v177;
  v179 = sub_1CA94C438("Tenths", 6);
  v383 = v180;
  v386 = &v381;
  MEMORY[0x1EEE9AC00](v179);
  sub_1CA948D98();
  v181 = [v171 bundleURL];
  MEMORY[0x1EEE9AC00](v181);
  sub_1CA948B68();

  v182 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v176[2].length = sub_1CA2F9F14(v385, v384, v179, v383, 0, 0, &v381 - v170, &v381 - v173);
  v183 = sub_1CA94C438("Hundredths (WFRoundTo)", 22);
  v384 = v184;
  v385 = v183;
  v185 = sub_1CA94C438("Hundredths", 10);
  v383 = v186;
  v386 = &v381;
  MEMORY[0x1EEE9AC00](v185);
  v187 = v412;
  sub_1CA948D98();
  v188 = v410;
  v189 = [v410 bundleURL];
  MEMORY[0x1EEE9AC00](v189);
  sub_1CA948B68();

  v190 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v191 = sub_1CA2F9F14(v385, v384, v185, v383, 0, 0, &v381 - v187, &v381 - v173);
  v407[3].isa = v191;
  v192 = sub_1CA94C438("Thousandths (WFRoundTo)", 23);
  v384 = v193;
  v385 = v192;
  v194 = sub_1CA94C438("Thousandths", 11);
  v383 = v195;
  v386 = &v381;
  MEMORY[0x1EEE9AC00](v194);
  sub_1CA948D98();
  v196 = [v188 bundleURL];
  MEMORY[0x1EEE9AC00](v196);
  sub_1CA948B68();

  v197 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v198 = sub_1CA2F9F14(v385, v384, v194, v383, 0, 0, &v381 - v187, &v381 - v173);
  v199 = v407;
  v407[3].info = v198;
  v200 = sub_1CA94C438("Ten-Thousandths (WFRoundTo)", 27);
  v384 = v201;
  v385 = v200;
  v202 = sub_1CA94C438("Ten-Thousandths", 15);
  v383 = v203;
  v386 = &v381;
  MEMORY[0x1EEE9AC00](v202);
  v204 = v412;
  sub_1CA948D98();
  v205 = [v188 bundleURL];
  v382 = &v381;
  MEMORY[0x1EEE9AC00](v205);
  sub_1CA948B68();

  v206 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v199[3].data = sub_1CA2F9F14(v385, v384, v202, v383, 0, 0, &v381 - v204, &v381 - v173);
  v207 = sub_1CA94C438("Hundred-Thousandths (WFRoundTo)", 31);
  v384 = v208;
  v385 = v207;
  v209 = sub_1CA94C438("Hundred-Thousandths", 19);
  v383 = v210;
  v386 = &v381;
  MEMORY[0x1EEE9AC00](v209);
  sub_1CA948D98();
  v211 = [v188 bundleURL];
  MEMORY[0x1EEE9AC00](v211);
  sub_1CA948B68();

  v212 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v213 = sub_1CA2F9F14(v385, v384, v209, v383, 0, 0, &v381 - v204, &v381 - v173);
  v214 = v407;
  v407[3].length = v213;
  v215 = sub_1CA94C438("Millionths (WFRoundTo)", 22);
  v384 = v216;
  v385 = v215;
  v217 = sub_1CA94C438("Millionths", 10);
  v383 = v218;
  v386 = &v381;
  MEMORY[0x1EEE9AC00](v217);
  v219 = v412;
  sub_1CA948D98();
  v220 = v410;
  v221 = [v410 bundleURL];
  v382 = &v381;
  MEMORY[0x1EEE9AC00](v221);
  v222 = v408;
  sub_1CA948B68();

  v223 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v214[4].isa = sub_1CA2F9F14(v385, v384, v217, v383, 0, 0, &v381 - v219, &v381 - v222);
  v224 = sub_1CA94C438("Ten-Millionths (WFRoundTo)", 26);
  v384 = v225;
  v385 = v224;
  v383 = sub_1CA94C438("Ten-Millionths", 14);
  v227 = v226;
  v386 = &v381;
  MEMORY[0x1EEE9AC00](v383);
  sub_1CA948D98();
  v228 = [v220 bundleURL];
  MEMORY[0x1EEE9AC00](v228);
  sub_1CA948B68();

  v229 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v230 = sub_1CA2F9F14(v385, v384, v383, v227, 0, 0, &v381 - v219, &v381 - v222);
  v407[4].info = v230;
  v231 = sub_1CA94C438("Hundred-Millionths (WFRoundTo)", 30);
  v384 = v232;
  v385 = v231;
  v233 = sub_1CA94C438("Hundred-Millionths", 18);
  v383 = v234;
  v386 = &v381;
  MEMORY[0x1EEE9AC00](v233);
  sub_1CA948D98();
  v235 = v410;
  v236 = [v410 bundleURL];
  MEMORY[0x1EEE9AC00](v236);
  v237 = v408;
  sub_1CA948B68();

  v238 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v239 = sub_1CA2F9F14(v385, v384, v233, v383, 0, 0, &v381 - v219, &v381 - v237);
  v240 = v407;
  v407[4].data = v239;
  v241 = sub_1CA94C438("Billionths (WFRoundTo)", 22);
  v384 = v242;
  v385 = v241;
  v243 = sub_1CA94C438("Billionths", 10);
  v383 = v244;
  v386 = &v381;
  MEMORY[0x1EEE9AC00](v243);
  v245 = v412;
  sub_1CA948D98();
  v246 = [v235 bundleURL];
  v382 = &v381;
  MEMORY[0x1EEE9AC00](v246);
  sub_1CA948B68();

  v247 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v240[4].length = sub_1CA2F9F14(v385, v384, v243, v383, 0, 0, &v381 - v245, &v381 - v237);
  v248 = sub_1CA94C438("10^ (WFRoundTo)", 15);
  v384 = v249;
  v385 = v248;
  v250 = sub_1CA94C438("10^", 3);
  v252 = v251;
  v386 = &v381;
  MEMORY[0x1EEE9AC00](v250);
  sub_1CA948D98();
  v253 = [v410 bundleURL];
  MEMORY[0x1EEE9AC00](v253);
  sub_1CA948B68();

  v254 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v255 = sub_1CA2F9F14(v385, v384, v250, v252, 0, 0, &v381 - v245, &v381 - v237);
  v256 = v407;
  v407[5].isa = v255;
  v257 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  v386 = v257;
  v258 = v387;
  v387[20] = v256;
  v259 = v396;
  v258[23] = v257;
  v258[24] = v259;
  v258[25] = 0x54646E756F524657;
  v258[26] = 0xE90000000000006FLL;
  v260 = v391;
  v258[28] = MEMORY[0x1E69E6158];
  v258[29] = v260;
  v396 = v259;
  v407 = v260;
  v261 = sub_1CA94C438("Value (WFRoundTo)", 17);
  v384 = v262;
  v385 = v261;
  v263 = sub_1CA94C438("Value", 5);
  v383 = v264;
  v391 = &v381;
  MEMORY[0x1EEE9AC00](v263);
  sub_1CA948D98();
  v265 = v410;
  v266 = [v410 bundleURL];
  MEMORY[0x1EEE9AC00](v266);
  v267 = v408;
  sub_1CA948B68();

  v268 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v258[30] = sub_1CA2F9F14(v385, v384, v263, v383, 0, 0, &v381 - v245, &v381 - v267);
  v269 = v406;
  v270 = v390;
  v258[33] = v406;
  v258[34] = v270;
  v390 = sub_1CA94C438("Value (WFRoundTo)", 17);
  v385 = v271;
  v272 = sub_1CA94C438("Value", 5);
  v384 = v273;
  v391 = &v381;
  MEMORY[0x1EEE9AC00](v272);
  v274 = &v381 - v412;
  sub_1CA948D98();
  v275 = [v265 bundleURL];
  MEMORY[0x1EEE9AC00](v275);
  sub_1CA948B68();

  v276 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v277 = sub_1CA2F9F14(v390, v385, v272, v384, 0, 0, v274, &v381 - v267);
  v258[38] = v269;
  v258[35] = v277;
  v278 = sub_1CA94C1E8();
  v279 = sub_1CA2F864C(v278);
  *(v404 + 40) = v279;
  v280 = swift_allocObject();
  *(v280 + 16) = v395;
  *(v280 + 32) = v398;
  *(v280 + 40) = 0xD000000000000016;
  *(v280 + 48) = v389;
  v281 = MEMORY[0x1E69E6158];
  v282 = v397;
  *(v280 + 64) = MEMORY[0x1E69E6158];
  *(v280 + 72) = v282;
  *(v280 + 80) = 0x6C616D726F4ELL;
  *(v280 + 88) = 0xE600000000000000;
  v283 = v388;
  *(v280 + 104) = v281;
  *(v280 + 112) = v283;
  *&v395 = swift_allocObject();
  *(v395 + 16) = xmmword_1CA981470;
  v284 = sub_1CA94C438("Normal (WFRoundMode)", 20);
  v389 = v285;
  v390 = v284;
  v286 = sub_1CA94C438("Normal", 6);
  v388 = v287;
  v391 = &v381;
  MEMORY[0x1EEE9AC00](v286);
  v288 = &v381 - v412;
  sub_1CA948D98();
  v289 = [v265 bundleURL];
  MEMORY[0x1EEE9AC00](v289);
  v290 = v408;
  sub_1CA948B68();

  v291 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v292 = sub_1CA2F9F14(v390, v389, v286, v388, 0, 0, v288, &v381 - v290);
  v293 = v395;
  *(v395 + 32) = v292;
  v294 = sub_1CA94C438("Always Round Up (WFRoundMode)", 29);
  v389 = v295;
  v390 = v294;
  v296 = sub_1CA94C438("Always Round Up", 15);
  v388 = v297;
  v391 = &v381;
  MEMORY[0x1EEE9AC00](v296);
  v298 = v412;
  sub_1CA948D98();
  v299 = [v410 bundleURL];
  v387 = &v381;
  MEMORY[0x1EEE9AC00](v299);
  sub_1CA948B68();

  v300 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v293 + 40) = sub_1CA2F9F14(v390, v389, v296, v388, 0, 0, &v381 - v298, &v381 - v290);
  v301 = sub_1CA94C438("Always Round Down (WFRoundMode)", 31);
  v389 = v302;
  v390 = v301;
  v303 = sub_1CA94C438("Always Round Down", 17);
  v388 = v304;
  v391 = &v381;
  MEMORY[0x1EEE9AC00](v303);
  v305 = &v381 - v298;
  sub_1CA948D98();
  v306 = v410;
  v307 = [v410 bundleURL];
  v387 = &v381;
  MEMORY[0x1EEE9AC00](v307);
  v308 = v408;
  sub_1CA948B68();

  v309 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v310 = sub_1CA2F9F14(v390, v389, v303, v388, 0, 0, v305, &v381 - v308);
  v311 = v395;
  *(v395 + 48) = v310;
  *(v280 + 120) = v311;
  v312 = v396;
  *(v280 + 144) = v386;
  *(v280 + 152) = v312;
  *(v280 + 160) = 0x4D646E756F524657;
  *(v280 + 168) = 0xEB0000000065646FLL;
  v313 = v407;
  *(v280 + 184) = MEMORY[0x1E69E6158];
  *(v280 + 192) = v313;
  v314 = sub_1CA94C438("Mode (WFRoundMode)", 18);
  v390 = v315;
  v391 = v314;
  v316 = sub_1CA94C438("Mode", 4);
  v389 = v317;
  *&v395 = &v381;
  MEMORY[0x1EEE9AC00](v316);
  v318 = &v381 - v412;
  sub_1CA948D98();
  v319 = [v306 bundleURL];
  MEMORY[0x1EEE9AC00](v319);
  sub_1CA948B68();

  v320 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v321 = sub_1CA2F9F14(v391, v390, v316, v389, 0, 0, v318, &v381 - v308);
  *(v280 + 224) = v406;
  *(v280 + 200) = v321;
  v322 = sub_1CA94C1E8();
  v323 = sub_1CA2F864C(v322);
  *(v404 + 48) = v323;
  v324 = swift_allocObject();
  *(v324 + 16) = xmmword_1CA981380;
  *(v324 + 32) = v398;
  *(v324 + 40) = 0xD000000000000016;
  *(v324 + 48) = v392;
  v325 = MEMORY[0x1E69E6158];
  v326 = v397;
  *(v324 + 64) = MEMORY[0x1E69E6158];
  *(v324 + 72) = v326;
  v327 = MEMORY[0x1E69E6530];
  *(v324 + 80) = 0;
  v328 = v396;
  *(v324 + 104) = v327;
  *(v324 + 112) = v328;
  *(v324 + 120) = 0x6568546F546E6554;
  *(v324 + 128) = 0xEF664F7265776F50;
  v329 = v407;
  *(v324 + 144) = v325;
  *(v324 + 152) = v329;
  v330 = sub_1CA94C438("Ten to the Power of (TenToThePowerOf)", 37);
  v332 = v331;
  v333 = sub_1CA94C438("Ten to the Power of", 19);
  v335 = v334;
  v407 = &v381;
  MEMORY[0x1EEE9AC00](v333);
  v336 = &v381 - v412;
  sub_1CA948D98();
  v337 = [v410 bundleURL];
  MEMORY[0x1EEE9AC00](v337);
  v338 = &v381 - v408;
  sub_1CA948B68();

  v339 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v324 + 160) = sub_1CA2F9F14(v330, v332, v333, v335, 0, 0, v336, v338);
  *(v324 + 184) = v406;
  *(v324 + 192) = @"MinimumValue";
  *(v324 + 200) = 0;
  *(v324 + 224) = MEMORY[0x1E69E6530];
  *(v324 + 232) = @"RequiredResources";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F0, &qword_1CA981430);
  v340 = swift_allocObject();
  *(v340 + 16) = v393;
  v341 = @"MinimumValue";
  v342 = @"RequiredResources";
  *(v340 + 32) = sub_1CA94C1E8();
  *(v324 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F8, &qword_1CA981438);
  *(v324 + 240) = v340;
  v343 = sub_1CA94C1E8();
  v344 = sub_1CA2F864C(v343);
  v345 = v404;
  *(v404 + 56) = v344;
  v346 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v347 = v405;
  v405[55] = v345;
  v347[58] = v346;
  v347[59] = @"ParameterSummary";
  v406 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v407 = swift_allocObject();
  *&v407->data = xmmword_1CA981360;
  v404 = "Ten to the Power of";
  v348 = @"ParameterSummary";
  v349 = sub_1CA94C438("Round ${WFInput} to ${WFRoundTo}", 32);
  v351 = v350;
  v352 = sub_1CA94C438("Round ${WFInput} to ${WFRoundTo}", 32);
  v354 = v353;
  v403 = &v381;
  MEMORY[0x1EEE9AC00](v352);
  v355 = &v381 - v412;
  sub_1CA948D98();
  v356 = [v410 bundleURL];
  MEMORY[0x1EEE9AC00](v356);
  v357 = &v381 - v408;
  sub_1CA948B68();

  v358 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v359 = sub_1CA2F9F14(v349, v351, v352, v354, 0, 0, v355, v357);
  v360 = objc_allocWithZone(WFActionParameterSummaryValue);
  v361 = sub_1CA65DD78(0xD00000000000001DLL, v404 | 0x8000000000000000, v359);
  v407[1].isa = v361;
  v404 = " to ${WFRoundTo}";
  v362 = sub_1CA94C438("Round ${WFInput} to ${WFRoundTo} ${TenToThePowerOf}", 51);
  v364 = v363;
  v365 = sub_1CA94C438("Round ${WFInput} to ${WFRoundTo} ${TenToThePowerOf}", 51);
  v367 = v366;
  v403 = &v381;
  MEMORY[0x1EEE9AC00](v365);
  v368 = &v381 - v412;
  sub_1CA948D98();
  v369 = [v410 bundleURL];
  MEMORY[0x1EEE9AC00](v369);
  v370 = &v381 - v408;
  sub_1CA948B68();

  v371 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v372 = sub_1CA2F9F14(v362, v364, v365, v367, 0, 0, v368, v370);
  v373 = objc_allocWithZone(WFActionParameterSummaryValue);
  v374 = sub_1CA65DD78(0xD000000000000033, v404 | 0x8000000000000000, v372);
  v376 = v406;
  v375 = v407;
  v407[1].info = v374;
  v377 = sub_1CA65AF90(v375);
  v378 = v405;
  v405[60] = v377;
  v378[63] = v376;
  v378[64] = @"ResidentCompatible";
  v378[68] = MEMORY[0x1E69E6370];
  *(v378 + 520) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v379 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA65DD78(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1CA94C368();

  v6 = [v3 initWithKey:v5 summaryString:a3];

  return v6;
}

id sub_1CA65DE10()
{
  v0 = sub_1CA949D18();
  v320 = *(v0 - 8);
  v321 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v319 = &v313 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v322 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981450;
  v3 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0x4947656B614D4657;
  *(inited + 48) = 0xEF6E6F6974634146;
  *(inited + 64) = v3;
  *(inited + 72) = @"ActionKeywords";
  v4 = @"ActionClass";
  v5 = @"ActionKeywords";
  v349 = sub_1CA94C438("animate|make|generate|gif", 25);
  v7 = v6;
  v8 = sub_1CA94C438("animate|make|generate|gif", 25);
  v10 = v9;
  v11 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v353 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v354 = v12;
  v13 = &v313 - v353;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v351 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v350 = v16;
  v352 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v313 - v352;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v349, v7, v8, v10, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v349 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"Description";
  v348 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_1CA97EDF0;
  *(v21 + 32) = @"DescriptionResult";
  v22 = @"Description";
  v23 = @"DescriptionResult";
  v24 = sub_1CA94C438("An animated GIF", 15);
  v345 = v25;
  v346 = v24;
  v26 = sub_1CA94C438("An animated GIF", 15);
  v28 = v27;
  v347 = &v313;
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v313 - v353;
  sub_1CA948D98();
  v30 = v351;
  v31 = [v351 bundleURL];
  v343 = inited;
  v32 = v31;
  MEMORY[0x1EEE9AC00](v31);
  v33 = v352;
  sub_1CA948B68();

  v34 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v21 + 40) = sub_1CA2F9F14(v346, v345, v26, v28, 0, 0, v29, &v313 - v33);
  v35 = v349;
  *(v21 + 64) = v349;
  *(v21 + 72) = @"DescriptionSummary";
  v36 = @"DescriptionSummary";
  v37 = sub_1CA94C438("Creates an animated GIF from the images or video passed into the action.", 72);
  v345 = v38;
  v346 = v37;
  v39 = sub_1CA94C438("Creates an animated GIF from the images or video passed into the action.", 72);
  v41 = v40;
  v347 = &v313;
  MEMORY[0x1EEE9AC00](v39);
  v42 = &v313 - v353;
  sub_1CA948D98();
  v43 = [v30 bundleURL];
  MEMORY[0x1EEE9AC00](v43);
  sub_1CA948B68();

  v44 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v45 = sub_1CA2F9F14(v346, v345, v39, v41, 0, 0, v42, &v313 - v33);
  *(v21 + 104) = v35;
  *(v21 + 80) = v45;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v46 = sub_1CA94C1E8();
  v47 = v348;
  v48 = sub_1CA6B3784(v46);
  v49 = v343;
  v343[15] = v48;
  v49[18] = v47;
  v49[19] = @"IconColor";
  v49[20] = 0x656C70727550;
  v49[21] = 0xE600000000000000;
  v50 = MEMORY[0x1E69E6158];
  v49[23] = MEMORY[0x1E69E6158];
  v49[24] = @"IconSymbol";
  v49[25] = 0xD000000000000027;
  v49[26] = 0x80000001CA99BB90;
  v49[28] = v50;
  v49[29] = @"Input";
  v51 = v49;
  v342 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v52 = swift_initStackObject();
  v341 = xmmword_1CA981350;
  *(v52 + 16) = xmmword_1CA981350;
  *(v52 + 32) = 0x656C7069746C754DLL;
  *(v52 + 40) = 0xE800000000000000;
  v53 = MEMORY[0x1E69E6370];
  *(v52 + 48) = 1;
  *(v52 + 72) = v53;
  strcpy((v52 + 80), "ParameterKey");
  *(v52 + 93) = 0;
  *(v52 + 94) = -5120;
  *(v52 + 96) = 0x7475706E494657;
  *(v52 + 104) = 0xE700000000000000;
  *(v52 + 120) = v50;
  *(v52 + 128) = 0x6465726975716552;
  *(v52 + 136) = 0xE800000000000000;
  *(v52 + 144) = 1;
  *(v52 + 168) = v53;
  *(v52 + 176) = 0x7365707954;
  v54 = v53;
  *(v52 + 184) = 0xE500000000000000;
  v339 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v52 + 216) = v339;
  *(v52 + 192) = &unk_1F4A0B2F8;
  v55 = @"IconColor";
  v56 = @"IconSymbol";
  v57 = @"Input";
  v58 = sub_1CA94C1E8();
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v348 = v59;
  v51[30] = v58;
  v51[33] = v59;
  v51[34] = @"InputPassthrough";
  *(v51 + 280) = 0;
  v51[38] = v54;
  v51[39] = @"Name";
  v60 = @"InputPassthrough";
  v61 = @"Name";
  v62 = sub_1CA94C438("Make GIF (Action Name)", 22);
  v345 = v63;
  v346 = v62;
  v64 = sub_1CA94C438("Make GIF", 8);
  v66 = v65;
  v347 = &v313;
  MEMORY[0x1EEE9AC00](v64);
  v67 = v353;
  sub_1CA948D98();
  v68 = [v351 bundleURL];
  MEMORY[0x1EEE9AC00](v68);
  v69 = &v313 - v352;
  sub_1CA948B68();

  v70 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v71 = sub_1CA2F9F14(v346, v345, v64, v66, 0, 0, &v313 - v67, v69);
  v72 = v343;
  v343[40] = v71;
  v73 = v349;
  v72[43] = v349;
  v72[44] = @"Output";
  v74 = swift_allocObject();
  *(v74 + 16) = v341;
  *(v74 + 32) = 0x75736F6C63736944;
  *(v74 + 40) = 0xEF6C6576654C6572;
  *(v74 + 48) = 0x63696C627550;
  *(v74 + 56) = 0xE600000000000000;
  *(v74 + 72) = MEMORY[0x1E69E6158];
  *(v74 + 80) = 0x656C7069746C754DLL;
  *(v74 + 88) = 0xE800000000000000;
  *(v74 + 96) = 0;
  *(v74 + 120) = MEMORY[0x1E69E6370];
  *(v74 + 128) = 0x614E74757074754FLL;
  *(v74 + 136) = 0xEA0000000000656DLL;
  v75 = @"Output";
  v76 = sub_1CA94C438("GIF (Default Output Name)", 25);
  v345 = v77;
  v346 = v76;
  v78 = sub_1CA94C438("GIF", 3);
  v344 = v79;
  v347 = &v313;
  MEMORY[0x1EEE9AC00](v78);
  sub_1CA948D98();
  v80 = [v351 bundleURL];
  MEMORY[0x1EEE9AC00](v80);
  v81 = &v313 - v352;
  sub_1CA948B68();

  v82 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v74 + 144) = sub_1CA2F9F14(v346, v345, v78, v344, 0, 0, &v313 - v67, v81);
  *(v74 + 168) = v73;
  *(v74 + 176) = 0x7365707954;
  *(v74 + 216) = v339;
  *(v74 + 184) = 0xE500000000000000;
  *(v74 + 192) = &unk_1F4A0B338;
  v83 = MEMORY[0x1E69E6158];
  v84 = sub_1CA94C1E8();
  v85 = v343;
  v343[45] = v84;
  v85[48] = v348;
  v85[49] = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v348 = swift_allocObject();
  *(v348 + 16) = xmmword_1CA98B2D0;
  v347 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v346 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v86 = swift_allocObject();
  *(v86 + 16) = xmmword_1CA981400;
  *(v86 + 32) = @"AllowsDecimalNumbers";
  *(v86 + 40) = 1;
  *(v86 + 64) = MEMORY[0x1E69E6370];
  *(v86 + 72) = @"Class";
  v337 = 0xD000000000000016;
  v338 = 0x80000001CA99C180;
  *(v86 + 80) = 0xD000000000000016;
  *(v86 + 88) = 0x80000001CA99C180;
  *(v86 + 104) = v83;
  *(v86 + 112) = @"DefaultValue";
  v87 = MEMORY[0x1E69E63B0];
  *(v86 + 120) = 0x3FC999999999999ALL;
  *(v86 + 144) = v87;
  *(v86 + 152) = @"Key";
  *&v340 = 0xD000000000000018;
  *(v86 + 160) = 0xD000000000000018;
  *(v86 + 168) = 0x80000001CA9DBBE0;
  *(v86 + 184) = v83;
  *(v86 + 192) = @"Label";
  v88 = @"Class";
  v89 = @"DefaultValue";
  v90 = @"Key";
  v91 = @"Label";
  v92 = v88;
  v93 = v89;
  v94 = v90;
  v95 = v91;
  *&v334 = v92;
  v328 = v93;
  v333 = v94;
  v335 = v95;
  v96 = @"Parameters";
  v97 = @"AllowsDecimalNumbers";
  v344 = sub_1CA94C438("Seconds Per Photo (WFMakeGIFActionDelayTime)", 44);
  v336 = v98;
  v99 = sub_1CA94C438("Seconds Per Photo", 17);
  v332 = v100;
  v345 = &v313;
  MEMORY[0x1EEE9AC00](v99);
  v101 = &v313 - v353;
  sub_1CA948D98();
  v102 = v351;
  v103 = [v351 bundleURL];
  MEMORY[0x1EEE9AC00](v103);
  v104 = v352;
  sub_1CA948B68();

  v105 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v86 + 200) = sub_1CA2F9F14(v344, v336, v99, v332, 0, 0, v101, &v313 - v104);
  v106 = v349;
  *(v86 + 224) = v349;
  *(v86 + 232) = @"Placeholder";
  v323 = @"Placeholder";
  v344 = sub_1CA94C438("0.2 (WFMakeGIFActionDelayTime)", 30);
  v336 = v107;
  v332 = sub_1CA94C438("0.2", 3);
  v109 = v108;
  v345 = &v313;
  MEMORY[0x1EEE9AC00](v332);
  v110 = &v313 - v353;
  sub_1CA948D98();
  v111 = [v102 bundleURL];
  MEMORY[0x1EEE9AC00](v111);
  sub_1CA948B68();

  v112 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v86 + 240) = sub_1CA2F9F14(v344, v336, v332, v109, 0, 0, v110, &v313 - v104);
  *(v86 + 264) = v106;
  *(v86 + 272) = @"TextAlignment";
  v113 = MEMORY[0x1E69E6158];
  *(v86 + 304) = MEMORY[0x1E69E6158];
  *(v86 + 280) = 0x7468676952;
  *(v86 + 288) = 0xE500000000000000;
  _s3__C3KeyVMa_0(0);
  v345 = v114;
  v344 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v336 = @"TextAlignment";
  v115 = sub_1CA94C1E8();
  v116 = sub_1CA2F864C(v115);
  *(v348 + 32) = v116;
  v117 = swift_allocObject();
  *(v117 + 16) = v341;
  v119 = v333;
  v118 = v334;
  *(v117 + 32) = v334;
  *(v117 + 40) = 0xD000000000000011;
  v325 = 0x80000001CA99E620;
  v326 = 0xD000000000000011;
  *(v117 + 48) = 0x80000001CA99E620;
  v120 = v328;
  *(v117 + 64) = v113;
  *(v117 + 72) = v120;
  *(v117 + 80) = 1;
  *(v117 + 104) = MEMORY[0x1E69E6370];
  *(v117 + 112) = v119;
  v331 = 0xD00000000000001ALL;
  v332 = 0x80000001CA9DBC80;
  *(v117 + 120) = 0xD00000000000001ALL;
  *(v117 + 128) = 0x80000001CA9DBC80;
  v121 = v335;
  *(v117 + 144) = v113;
  *(v117 + 152) = v121;
  v330 = v118;
  v329 = v119;
  v324 = v121;
  v122 = sub_1CA94C438("Loop Forever (WFMakeGIFActionLoopEnabled)", 41);
  v124 = v123;
  v125 = sub_1CA94C438("Loop Forever", 12);
  v127 = v126;
  v335 = &v313;
  MEMORY[0x1EEE9AC00](v125);
  v128 = &v313 - v353;
  sub_1CA948D98();
  v129 = [v351 bundleURL];
  MEMORY[0x1EEE9AC00](v129);
  v130 = &v313 - v352;
  sub_1CA948B68();

  v131 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v132 = sub_1CA2F9F14(v122, v124, v125, v127, 0, 0, v128, v130);
  *(v117 + 184) = v349;
  *(v117 + 160) = v132;
  v133 = sub_1CA94C1E8();
  v134 = sub_1CA2F864C(v133);
  *(v348 + 40) = v134;
  v135 = swift_allocObject();
  v327 = xmmword_1CA981380;
  *(v135 + 16) = xmmword_1CA981380;
  v137 = v329;
  v136 = v330;
  *(v135 + 32) = v330;
  *(v135 + 40) = 0xD000000000000012;
  *(v135 + 48) = 0x80000001CA99B980;
  v138 = MEMORY[0x1E69E6158];
  *(v135 + 64) = MEMORY[0x1E69E6158];
  *(v135 + 72) = v137;
  *(v135 + 80) = v340;
  *(v135 + 88) = 0x80000001CA9DBCE0;
  *(v135 + 104) = v138;
  *(v135 + 112) = @"RequiredResources";
  v139 = v138;
  v335 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E0, &qword_1CA9813D0);
  v140 = swift_allocObject();
  v340 = xmmword_1CA981310;
  *(v140 + 16) = xmmword_1CA981310;
  v141 = swift_allocObject();
  v334 = xmmword_1CA9813C0;
  *(v141 + 16) = xmmword_1CA9813C0;
  strcpy((v141 + 32), "WFParameterKey");
  *(v141 + 47) = -18;
  v142 = v332;
  *(v141 + 48) = v331;
  *(v141 + 56) = v142;
  v333 = 0x80000001CA993570;
  *(v141 + 72) = v139;
  *(v141 + 80) = 0xD000000000000010;
  *(v141 + 88) = 0x80000001CA993570;
  *(v141 + 96) = 0;
  *(v141 + 120) = MEMORY[0x1E69E6370];
  *(v141 + 128) = 0x72756F7365524657;
  *(v141 + 168) = v139;
  v331 = 0xD00000000000001BLL;
  v332 = 0x80000001CA993590;
  *(v141 + 136) = 0xEF7373616C436563;
  *(v141 + 144) = 0xD00000000000001BLL;
  *(v141 + 152) = 0x80000001CA993590;
  v143 = @"RequiredResources";
  v317 = v136;
  v318 = v137;
  v329 = v143;
  *(v140 + 32) = sub_1CA94C1E8();
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E8, &qword_1CA9813D8);
  v330 = v144;
  *(v135 + 120) = v140;
  *(v135 + 144) = v144;
  *(v135 + 152) = @"StepperDescription";
  v145 = @"StepperDescription";
  v146 = sub_1CA94C438("Number of Loops (WFMakeGIFActionLoopCount)", 42);
  v148 = v147;
  v149 = sub_1CA94C438("Number of Loops", 15);
  v151 = v150;
  v316 = &v313;
  MEMORY[0x1EEE9AC00](v149);
  v152 = &v313 - v353;
  sub_1CA948D98();
  v153 = [v351 bundleURL];
  MEMORY[0x1EEE9AC00](v153);
  v154 = &v313 - v352;
  sub_1CA948B68();

  v155 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v135 + 160) = sub_1CA2F9F14(v146, v148, v149, v151, 0, 0, v152, v154);
  *(v135 + 184) = v349;
  *(v135 + 192) = @"StepperNoun";
  v156 = @"StepperNoun";
  v157 = sub_1CA94C438("%d Times", v313);
  v315 = v158;
  v316 = v157;
  v159 = v158;
  v359 = 0;
  v360 = 0xE000000000000000;
  sub_1CA94D408();

  v359 = v157;
  v360 = v159;
  v357 = 10;
  v358 = 0xE100000000000000;
  v355 = 32;
  v356 = 0xE100000000000000;
  sub_1CA27BAF0();
  v359 = sub_1CA94D1B8();
  v360 = v160;
  v161 = MEMORY[0x1CCAA1300](0xD000000000000010, 0x80000001CA99BA10);
  v314 = &v313;
  v162 = v359;
  v163 = v360;
  MEMORY[0x1EEE9AC00](v161);
  v164 = v353;
  sub_1CA948D98();
  v165 = [v351 bundleURL];
  MEMORY[0x1EEE9AC00](v165);
  v166 = &v313 - v352;
  sub_1CA948B68();

  v167 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v135 + 200) = sub_1CA2F9F14(v162, v163, v316, v315, 0, 0, &v313 - v164, v166);
  v168 = v349;
  *(v135 + 224) = v349;
  *(v135 + 232) = @"StepperPrefix";
  v169 = @"StepperPrefix";
  v170 = sub_1CA94C438("Loop (WFMakeGIFActionLoopCount)", 31);
  v315 = v171;
  v172 = sub_1CA94C438("Loop", 4);
  v174 = v173;
  v316 = &v313;
  MEMORY[0x1EEE9AC00](v172);
  sub_1CA948D98();
  v175 = [v351 bundleURL];
  MEMORY[0x1EEE9AC00](v175);
  v176 = &v313 - v352;
  sub_1CA948B68();

  v177 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v178 = sub_1CA2F9F14(v170, v315, v172, v174, 0, 0, &v313 - v164, v176);
  *(v135 + 264) = v168;
  *(v135 + 240) = v178;
  v179 = sub_1CA94C1E8();
  v180 = sub_1CA2F864C(v179);
  *(v348 + 48) = v180;
  v181 = swift_allocObject();
  *(v181 + 16) = v341;
  v182 = v317;
  v183 = v318;
  v184 = v325;
  v185 = v326;
  *(v181 + 32) = v317;
  *(v181 + 40) = v185;
  *(v181 + 48) = v184;
  v186 = MEMORY[0x1E69E6158];
  v187 = v328;
  *(v181 + 64) = MEMORY[0x1E69E6158];
  *(v181 + 72) = v187;
  *(v181 + 80) = 1;
  *(v181 + 104) = MEMORY[0x1E69E6370];
  *(v181 + 112) = v183;
  *&v341 = 0x80000001CA9DBD60;
  v328 = 0xD000000000000017;
  *(v181 + 120) = 0xD000000000000017;
  *(v181 + 128) = 0x80000001CA9DBD60;
  v188 = v324;
  *(v181 + 144) = v186;
  *(v181 + 152) = v188;
  v326 = v182;
  v325 = v183;
  v324 = v188;
  v189 = sub_1CA94C438("Auto Size (WFMakeGIFActionAutoSize)", 35);
  v191 = v190;
  v192 = sub_1CA94C438("Auto Size", 9);
  v194 = v193;
  v318 = &v313;
  MEMORY[0x1EEE9AC00](v192);
  v195 = &v313 - v353;
  sub_1CA948D98();
  v196 = [v351 bundleURL];
  MEMORY[0x1EEE9AC00](v196);
  v197 = &v313 - v352;
  sub_1CA948B68();

  v198 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v199 = sub_1CA2F9F14(v189, v191, v192, v194, 0, 0, v195, v197);
  *(v181 + 184) = v349;
  *(v181 + 160) = v199;
  v200 = sub_1CA94C1E8();
  v201 = sub_1CA2F864C(v200);
  *(v348 + 56) = v201;
  v202 = swift_allocObject();
  *(v202 + 16) = v327;
  v204 = v325;
  v203 = v326;
  v206 = v337;
  v205 = v338;
  *(v202 + 32) = v326;
  *(v202 + 40) = v206;
  *(v202 + 48) = v205;
  v207 = MEMORY[0x1E69E6158];
  *(v202 + 64) = MEMORY[0x1E69E6158];
  *(v202 + 72) = v204;
  *(v202 + 80) = 0xD00000000000001ELL;
  *(v202 + 88) = 0x80000001CA9DBDB0;
  v208 = v324;
  *(v202 + 104) = v207;
  *(v202 + 112) = v208;
  v326 = v203;
  v325 = v204;
  v324 = v208;
  v209 = sub_1CA94C438("Width (WFMakeGIFActionManualSizeWidth)", 38);
  v316 = v210;
  v317 = v209;
  v211 = sub_1CA94C438("Width", 5);
  v315 = v212;
  v318 = &v313;
  MEMORY[0x1EEE9AC00](v211);
  v213 = v353;
  sub_1CA948D98();
  v214 = v351;
  v215 = [v351 bundleURL];
  v314 = &v313;
  MEMORY[0x1EEE9AC00](v215);
  v216 = &v313 - v352;
  sub_1CA948B68();

  v217 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v202 + 120) = sub_1CA2F9F14(v317, v316, v211, v315, 0, 0, &v313 - v213, v216);
  v218 = v349;
  v219 = v323;
  *(v202 + 144) = v349;
  *(v202 + 152) = v219;
  v323 = v219;
  v220 = sub_1CA94C438("500 (WFMakeGIFActionManualSizeWidth)", 36);
  v316 = v221;
  v317 = v220;
  v222 = sub_1CA94C438("500", 3);
  v315 = v223;
  v318 = &v313;
  MEMORY[0x1EEE9AC00](v222);
  sub_1CA948D98();
  v224 = [v214 bundleURL];
  MEMORY[0x1EEE9AC00](v224);
  v225 = v352;
  sub_1CA948B68();

  v226 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v202 + 160) = sub_1CA2F9F14(v317, v316, v222, v315, 0, 0, &v313 - v213, &v313 - v225);
  v227 = v329;
  *(v202 + 184) = v218;
  *(v202 + 192) = v227;
  v228 = swift_allocObject();
  *(v228 + 16) = v340;
  v229 = swift_allocObject();
  *(v229 + 16) = v334;
  strcpy((v229 + 32), "WFParameterKey");
  *(v229 + 47) = -18;
  v230 = v341;
  *(v229 + 48) = v328;
  *(v229 + 56) = v230;
  v231 = MEMORY[0x1E69E6158];
  *(v229 + 72) = MEMORY[0x1E69E6158];
  *(v229 + 80) = 0xD000000000000010;
  *(v229 + 88) = v333;
  *(v229 + 96) = 0;
  *(v229 + 120) = MEMORY[0x1E69E6370];
  *(v229 + 128) = 0x72756F7365524657;
  *(v229 + 168) = v231;
  *(v229 + 136) = 0xEF7373616C436563;
  v232 = v332;
  *(v229 + 144) = v331;
  *(v229 + 152) = v232;
  v233 = v231;
  *(v228 + 32) = sub_1CA94C1E8();
  *(v202 + 200) = v228;
  v234 = v336;
  *(v202 + 224) = v330;
  *(v202 + 232) = v234;
  *(v202 + 264) = v233;
  *(v202 + 240) = 0x7468676952;
  *(v202 + 248) = 0xE500000000000000;
  v235 = sub_1CA94C1E8();
  v236 = sub_1CA2F864C(v235);
  *(v348 + 64) = v236;
  v237 = swift_allocObject();
  *(v237 + 16) = v327;
  v239 = v337;
  v238 = v338;
  *(v237 + 32) = v326;
  *(v237 + 40) = v239;
  *(v237 + 48) = v238;
  v240 = v325;
  *(v237 + 64) = v233;
  *(v237 + 72) = v240;
  *(v237 + 80) = 0xD00000000000001FLL;
  *(v237 + 88) = 0x80000001CA9DBE30;
  v241 = v324;
  *(v237 + 104) = v233;
  *(v237 + 112) = v241;
  v337 = sub_1CA94C438("Height (WFMakeGIFActionManualSizeHeight)", 40);
  *&v327 = v242;
  v243 = sub_1CA94C438("Height", 6);
  v318 = v244;
  v338 = &v313;
  MEMORY[0x1EEE9AC00](v243);
  v245 = v353;
  sub_1CA948D98();
  v246 = v351;
  v247 = [v351 bundleURL];
  MEMORY[0x1EEE9AC00](v247);
  sub_1CA948B68();

  v248 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v237 + 120) = sub_1CA2F9F14(v337, v327, v243, v318, 0, 0, &v313 - v245, &v313 - v225);
  v249 = v349;
  v250 = v323;
  *(v237 + 144) = v349;
  *(v237 + 152) = v250;
  v337 = sub_1CA94C438("500 (WFMakeGIFActionManualSizeHeight)", 37);
  *&v327 = v251;
  v252 = sub_1CA94C438("500", 3);
  v318 = v253;
  v338 = &v313;
  MEMORY[0x1EEE9AC00](v252);
  sub_1CA948D98();
  v254 = [v246 bundleURL];
  MEMORY[0x1EEE9AC00](v254);
  sub_1CA948B68();

  v255 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v237 + 160) = sub_1CA2F9F14(v337, v327, v252, v318, 0, 0, &v313 - v245, &v313 - v225);
  v256 = v329;
  *(v237 + 184) = v249;
  *(v237 + 192) = v256;
  v257 = swift_allocObject();
  *(v257 + 16) = v340;
  v258 = swift_allocObject();
  *(v258 + 16) = v334;
  strcpy((v258 + 32), "WFParameterKey");
  *(v258 + 47) = -18;
  v259 = v341;
  *(v258 + 48) = v328;
  *(v258 + 56) = v259;
  v260 = MEMORY[0x1E69E6158];
  *(v258 + 72) = MEMORY[0x1E69E6158];
  *(v258 + 80) = 0xD000000000000010;
  *(v258 + 88) = v333;
  *(v258 + 96) = 0;
  *(v258 + 120) = MEMORY[0x1E69E6370];
  *(v258 + 128) = 0x72756F7365524657;
  *(v258 + 168) = v260;
  *(v258 + 136) = 0xEF7373616C436563;
  v261 = v332;
  *(v258 + 144) = v331;
  *(v258 + 152) = v261;
  v262 = v260;
  *(v257 + 32) = sub_1CA94C1E8();
  *(v237 + 200) = v257;
  v263 = v336;
  *(v237 + 224) = v330;
  *(v237 + 232) = v263;
  *(v237 + 264) = v262;
  *(v237 + 240) = 0x7468676952;
  *(v237 + 248) = 0xE500000000000000;
  v264 = sub_1CA94C1E8();
  v265 = sub_1CA2F864C(v264);
  *(v348 + 72) = v265;
  v266 = swift_allocObject();
  *(v266 + 16) = xmmword_1CA981370;
  *(v266 + 32) = v326;
  *(v266 + 40) = 0xD000000000000019;
  *(v266 + 48) = 0x80000001CA99B030;
  v267 = v325;
  *(v266 + 64) = v262;
  *(v266 + 72) = v267;
  *(v266 + 80) = 0x7475706E494657;
  *(v266 + 88) = 0xE700000000000000;
  v268 = v324;
  *(v266 + 104) = v262;
  *(v266 + 112) = v268;
  v342 = sub_1CA94C438("Content (WFInput)", 17);
  *&v341 = v269;
  v270 = sub_1CA94C438("Content", 7);
  v338 = v271;
  v346 = &v313;
  MEMORY[0x1EEE9AC00](v270);
  v272 = &v313 - v353;
  sub_1CA948D98();
  v273 = v351;
  v274 = [v351 bundleURL];
  v337 = &v313;
  MEMORY[0x1EEE9AC00](v274);
  v275 = v352;
  sub_1CA948B68();

  v276 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v266 + 120) = sub_1CA2F9F14(v342, v341, v270, v338, 0, 0, v272, &v313 - v275);
  v277 = v349;
  v278 = v323;
  *(v266 + 144) = v349;
  *(v266 + 152) = v278;
  v342 = sub_1CA94C438("Content (WFInput)", 17);
  *&v341 = v279;
  v280 = sub_1CA94C438("Content", 7);
  v338 = v281;
  v346 = &v313;
  MEMORY[0x1EEE9AC00](v280);
  v282 = &v313 - v353;
  sub_1CA948D98();
  v283 = [v273 bundleURL];
  MEMORY[0x1EEE9AC00](v283);
  sub_1CA948B68();

  v284 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v266 + 160) = sub_1CA2F9F14(v342, v341, v280, v338, 0, 0, v282, &v313 - v275);
  *(v266 + 184) = v277;
  *(v266 + 192) = @"PreferredTypes";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443850, &qword_1CA9815F0);
  v285 = swift_allocObject();
  *(v285 + 16) = v340;
  v286 = @"PreferredTypes";
  v287 = v319;
  sub_1CA949CB8();
  v288 = sub_1CA949C68();
  v290 = v289;
  (*(v320 + 8))(v287, v321);
  *(v285 + 32) = v288;
  *(v285 + 40) = v290;
  *(v266 + 224) = v339;
  *(v266 + 200) = v285;
  v291 = sub_1CA94C1E8();
  v292 = sub_1CA2F864C(v291);
  v293 = v348;
  *(v348 + 80) = v292;
  v294 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v295 = v343;
  v343[50] = v293;
  v295[53] = v294;
  v295[54] = @"ParameterSummary";
  v296 = @"ParameterSummary";
  v297 = sub_1CA94C438("Make GIF from ${WFInput} (Parameter Summary)", 44);
  v299 = v298;
  v300 = sub_1CA94C438("Make GIF from ${WFInput}", 24);
  v302 = v301;
  MEMORY[0x1EEE9AC00](v300);
  v303 = &v313 - v353;
  sub_1CA948D98();
  v304 = [v351 bundleURL];
  MEMORY[0x1EEE9AC00](v304);
  v305 = &v313 - v352;
  sub_1CA948B68();

  v306 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v307 = sub_1CA2F9F14(v297, v299, v300, v302, 0, 0, v303, v305);
  v308 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v309 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v310 = v343;
  v343[55] = v308;
  v310[58] = v309;
  v310[59] = @"ResidentCompatible";
  v310[63] = MEMORY[0x1E69E6370];
  *(v310 + 480) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v311 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

uint64_t sub_1CA6603A4(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v19 = *(result + 16);
  v4 = MEMORY[0x1E69E7CC0];
  while (1)
  {
LABEL_2:
    if (v3 == v19)
    {

      return v4;
    }

    if (v3 >= *(v2 + 16))
    {
      break;
    }

    v5 = v3 + 1;
    sub_1CA2C9578(v17 + 40 * v3, &v21);
    v6 = *(*a2 + 16);
    v7 = (*a2 + 32);
    sub_1CA94C218();
    v8 = v6 + 1;
    while (--v8)
    {
      v10 = v7[3];
      v9 = v7[4];
      __swift_project_boxed_opaque_existential_1(v7, v10);
      v11 = (*(*(v9 + 8) + 16))(v10);
      v13 = v22;
      v12 = v23;
      __swift_project_boxed_opaque_existential_1(&v21, v22);
      v7 += 5;
      if (v11 == (*(*(v12 + 8) + 16))(v13))
      {

        result = __swift_destroy_boxed_opaque_existential_0(&v21);
        v3 = v5;
        goto LABEL_2;
      }
    }

    sub_1CA27F268(&v21, v20);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v4;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1CA2B8EB4(0, *(v4 + 16) + 1, 1);
      v4 = v24;
    }

    v16 = *(v4 + 16);
    v15 = *(v4 + 24);
    if (v16 >= v15 >> 1)
    {
      sub_1CA2B8EB4(v15 > 1, v16 + 1, 1);
      v4 = v24;
    }

    *(v4 + 16) = v16 + 1;
    result = sub_1CA27F268(v20, v4 + 40 * v16 + 32);
    v3 = v5;
  }

  __break(1u);
  return result;
}

BOOL sub_1CA66058C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v4 = (a1 + 32);
  v5 = v3 + 1;
  do
  {
    if (!--v5)
    {
      break;
    }

    v6 = v4 + 5;
    v8 = v4[3];
    v7 = v4[4];
    __swift_project_boxed_opaque_existential_1(v4, v8);
    v9 = (*(*(v7 + 8) + 16))(v8);
    v4 = v6;
  }

  while (v9 != *(a2 + 16));
  return v5 != 0;
}

uint64_t RowTemplateFindFilterParameterState.init(contentItemClass:contentProperty:selectedOperator:bounded:removable:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  v9 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446010, &unk_1CA987B90);
  *(a6 + 24) = sub_1CA94C1E8();
  *(a6 + 32) = a4;
  *(a6 + 33) = a5;
  v10 = sub_1CA948D28();
  OUTLINED_FUNCTION_1_0();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_1_37();
  v14 = sub_1CA948CC8();
  v16 = v15;

  result = (*(v12 + 8))(a5, v10);
  *(a6 + 40) = v14;
  *(a6 + 48) = v16;
  return result;
}

uint64_t RowTemplateFindFilterParameterState.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = (*(*(a4 + 8) + 24))(a3, *(a4 + 8));
  v8 = v6;
  v9 = v7;
  if (a1)
  {
    swift_getAssociatedTypeWitness();
    OUTLINED_FUNCTION_87();
    v10 = swift_unknownObjectRetain();
    sub_1CA43FF40(v10, v8, v9, (v4 + 24));
  }

  else
  {
    sub_1CA43F494(v6, v7);
  }

  return swift_unknownObjectRelease();
}

uint64_t WFRowTemplateValue.SerializationStrategy.hashValue.getter()
{
  v1 = *v0;
  sub_1CA94D918();
  MEMORY[0x1CCAA2780](v1);
  return sub_1CA94D968();
}

uint64_t RowTemplateFindFilterParameterState.parameterStates.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t RowTemplateFindFilterParameterState.variablesDisabled.getter()
{
  v1 = *(v0 + 8);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = NSStringFromClass(ObjCClassFromMetadata);
  v4 = sub_1CA94C3A8();
  v6 = v5;

  if (v4 == 0xD000000000000015 && 0x80000001CA9941B0 == v6)
  {
  }

  else
  {
    sub_1CA94D7F8();
    OUTLINED_FUNCTION_11();

    result = 0;
    if ((v4 & 1) == 0)
    {
      return result;
    }
  }

  v9 = [v1 name];
  v10 = sub_1CA94C3A8();
  v12 = v11;

  if (v10 == 1701869908 && v12 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v14 = sub_1CA94D7F8();

    return v14 & 1;
  }
}

uint64_t RowTemplateFindFilterParameterState.identity.getter()
{
  v1 = *(v0 + 40);
  sub_1CA94C218();
  return v1;
}

WorkflowKit::RowTemplateFindFilterParameterState::SerializationKey_optional __swiftcall RowTemplateFindFilterParameterState.SerializationKey.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1CA94D6E8();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t RowTemplateFindFilterParameterState.SerializationKey.rawValue.getter()
{
  result = 0x79747265706F7250;
  switch(*v0)
  {
    case 1:
      result = 0x726F74617265704FLL;
      break;
    case 2:
      result = 0x6C6261766F6D6552;
      break;
    case 3:
      result = 0x6465646E756F42;
      break;
    case 4:
      result = 0x6E6564646948;
      break;
    case 5:
      result = 0x7365756C6156;
      break;
    case 6:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1CA660CA8@<X0>(unint64_t *a1@<X8>)
{
  result = RowTemplateFindFilterParameterState.SerializationKey.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1CA661134()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447DF0, &qword_1CA9917E8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1CA981550;
  v1 = sub_1CA66DEEC();
  *(v0 + 32) = &type metadata for RowTemplateFindFilterParameterState.EnumerationStringValueKey;
  *(v0 + 40) = v1;
  v2 = sub_1CA66DF40();
  *(v0 + 48) = &type metadata for RowTemplateFindFilterParameterState.EnumerationLinkValueKey;
  *(v0 + 56) = v2;
  v3 = sub_1CA66DF94();
  *(v0 + 64) = &type metadata for RowTemplateFindFilterParameterState.EnumerationNumberValueKey;
  *(v0 + 72) = v3;
  v4 = sub_1CA66DFE8();
  *(v0 + 80) = &type metadata for RowTemplateFindFilterParameterState.EnumerationSpeakableStringValueKey;
  *(v0 + 88) = v4;
  v5 = sub_1CA66E03C();
  *(v0 + 96) = &type metadata for RowTemplateFindFilterParameterState.StringValueKey;
  *(v0 + 104) = v5;
  v6 = sub_1CA66E090();
  *(v0 + 112) = &type metadata for RowTemplateFindFilterParameterState.BoolValueKey;
  *(v0 + 120) = v6;
  v7 = sub_1CA66E0E4();
  *(v0 + 128) = &type metadata for RowTemplateFindFilterParameterState.NumberValueKey;
  *(v0 + 136) = v7;
  v8 = sub_1CA66E138();
  *(v0 + 144) = &type metadata for RowTemplateFindFilterParameterState.PhoneValueKey;
  *(v0 + 152) = v8;
  v9 = sub_1CA66E18C();
  *(v0 + 160) = &type metadata for RowTemplateFindFilterParameterState.EmailValueKey;
  *(v0 + 168) = v9;
  v10 = sub_1CA66E1E0();
  *(v0 + 176) = &type metadata for RowTemplateFindFilterParameterState.CalendarUnitValueKey;
  *(v0 + 184) = v10;
  v11 = sub_1CA66E234();
  *(v0 + 192) = &type metadata for RowTemplateFindFilterParameterState.ByteCountUnitValueKey;
  *(v0 + 200) = v11;
  v12 = sub_1CA66E288();
  *(v0 + 208) = &type metadata for RowTemplateFindFilterParameterState.MeasurementUnitValueKey;
  *(v0 + 216) = v12;
  v13 = sub_1CA66E2DC();
  *(v0 + 224) = &type metadata for RowTemplateFindFilterParameterState.DateValueKey;
  *(v0 + 232) = v13;
  v14 = sub_1CA66E330();
  *(v0 + 240) = &type metadata for RowTemplateFindFilterParameterState.AnotherDateValueKey;
  *(v0 + 248) = v14;
  return v0;
}

uint64_t RowTemplateFindFilterParameterState.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(*(a3 + 8) + 24))(a2, *(a3 + 8));
  v3 = sub_1CA323E28();

  if (!v3)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446010, &unk_1CA987B90);
  swift_getAssociatedTypeWitness();
  if (swift_dynamicCast())
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

void (*RowTemplateFindFilterParameterState.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t **a1, char a2)
{
  v9 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v9;
  v9[3] = a4;
  v9[4] = v4;
  v9[1] = a2;
  v9[2] = a3;
  OUTLINED_FUNCTION_9_37();
  *v9 = RowTemplateFindFilterParameterState.subscript.getter(a2, a3, a4);
  return sub_1CA661408;
}

void sub_1CA661408(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[3];
  v5 = (*a1)[1];
  v4 = (*a1)[2];
  v6 = **a1;
  if (a2)
  {
    v7 = swift_unknownObjectRetain();
    RowTemplateFindFilterParameterState.subscript.setter(v7, v5, v4, v3);
    swift_unknownObjectRelease();
  }

  else
  {
    RowTemplateFindFilterParameterState.subscript.setter(v6, v5, v4, v3);
  }

  free(v2);
}

void RowTemplateFindFilterParameterState.init(serializedRepresentation:variableProvider:parameter:)(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  if (!a3)
  {
    goto LABEL_15;
  }

  v7 = a3;
  v8 = type metadata accessor for WFTableTemplateContentItemFilterParameter();
  v9 = swift_dynamicCastClass();
  if (!v9 || (v10 = *(v9 + OBJC_IVAR___WFTableTemplateContentItemFilterParameter_contentItemClass), v210 = a1, swift_unknownObjectRetain(), v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444480, &unk_1CA983520), v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444490, &qword_1CA983530), v202 = v11, (swift_dynamicCast() & 1) == 0))
  {

LABEL_15:
    swift_unknownObjectRelease();
LABEL_16:
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_68_10();
    return;
  }

  v197 = v12;
  v193 = v10;
  v13 = v208;
  v14 = sub_1CA323E28();
  if (!v14 || (v208 = v14, OUTLINED_FUNCTION_62_9(), (swift_dynamicCast() & 1) == 0))
  {

    swift_unknownObjectRelease();
LABEL_18:

    goto LABEL_16;
  }

  v188 = a1;
  v15 = v211;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v17 = sub_1CA94C368();
  v18 = [ObjCClassFromMetadata propertyForName_];

  if (!v18)
  {

    swift_unknownObjectRelease();

    goto LABEL_16;
  }

  v187 = v18;
  v19 = sub_1CA323E28();
  if (!v19)
  {

    swift_unknownObjectRelease();

    goto LABEL_18;
  }

  v20 = v19;
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {

    swift_unknownObjectRelease();

    goto LABEL_15;
  }

  v177 = v210;
  v184 = v20;
  v183 = sub_1CA94C978();
  if (!sub_1CA323E28())
  {
LABEL_23:
    v22 = 256;
    goto LABEL_24;
  }

  objc_opt_self();
  OUTLINED_FUNCTION_5_3();
  v21 = swift_dynamicCastObjCClass();
  if (!v21)
  {
    swift_unknownObjectRelease();
    goto LABEL_23;
  }

  [v21 BOOLValue];
  OUTLINED_FUNCTION_11();
  swift_unknownObjectRelease();
  v22 = 256;
  if (!v20)
  {
    v22 = 0;
  }

LABEL_24:
  v182 = v22;
  OUTLINED_FUNCTION_54_8();
  if (sub_1CA323E28())
  {
    objc_opt_self();
    OUTLINED_FUNCTION_5_3();
    v23 = swift_dynamicCastObjCClass();
    if (v23)
    {
      [v23 BOOLValue];
      OUTLINED_FUNCTION_11();
      swift_unknownObjectRelease();
      v181 = v20;
      goto LABEL_29;
    }

    swift_unknownObjectRelease();
  }

  v181 = 0;
LABEL_29:
  OUTLINED_FUNCTION_61_10();
  v176 = v8;
  if (sub_1CA323E28())
  {
    objc_opt_self();
    OUTLINED_FUNCTION_5_3();
    v24 = swift_dynamicCastObjCClass();
    if (v24)
    {
      [v24 BOOLValue];
      OUTLINED_FUNCTION_11();
      swift_unknownObjectRelease();
      v25 = 0x10000;
      if (!v20)
      {
        v25 = 0;
      }

      v180 = v25;
      goto LABEL_36;
    }

    swift_unknownObjectRelease();
  }

  v180 = 0;
LABEL_36:
  sub_1CA948D28();
  v26 = &v174;
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_1_37();
  v179 = sub_1CA948CC8();
  v178 = v28;
  v29 = OUTLINED_FUNCTION_52_0();
  v30(v29);
  v31 = sub_1CA323E28();
  if (v31 && (v210 = v31, (OUTLINED_FUNCTION_4_54() & 1) != 0))
  {
    v196 = v208;
  }

  else
  {
    v196 = sub_1CA94C1E8();
  }

  v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446010, &unk_1CA987B90);
  v32 = sub_1CA94C1E8();
  v33 = sub_1CA323E28();
  if (v33)
  {
    v210 = v33;
    v34 = OUTLINED_FUNCTION_4_54();
    v35 = v208;
    if (!v34)
    {
      v35 = 0;
    }

    v192 = v35;
  }

  else
  {
    v192 = 0;
  }

  v36 = sub_1CA661134();
  v37 = *(v36 + 16);
  if (!v37)
  {

LABEL_182:
    v171 = v181 | v182 | v180;

    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v172 = v187;
    *a4 = v193;
    a4[1] = v172;
    a4[2] = v183;
    a4[3] = v32;
    v173 = v179;
    a4[4] = v171;
    a4[5] = v173;
    a4[6] = v178;
    return;
  }

  v190 = v7;
  v189 = a2;
  v185 = @"WFSerializationType";
  v175 = 0x80000001CA9DBF60;
  v38 = (v36 + 40);
  v198 = v13;
  v39 = v196;
  v195 = v15;
  v194 = v36;
  while (1)
  {
    v200 = v37;
    v201 = v32;
    v41 = *(v38 - 1);
    v40 = *v38;
    v199 = v38;
    v32 = *(v40 + 8);
    v42 = OUTLINED_FUNCTION_7_41();
    v203 = v43;
    v44 = (v43)(v42);
    if (*(v39 + 16))
    {
      sub_1CA271BF8(v44, v45);
      OUTLINED_FUNCTION_37_12();
      if (v26)
      {
        v210 = *(*(v39 + 56) + 8 * v39);
        v191 = v210;
        swift_unknownObjectRetain_n();
        if ((OUTLINED_FUNCTION_4_54() & 1) == 0)
        {
LABEL_119:
          v26 = v203;
          goto LABEL_120;
        }

        v46 = v208;
        v47 = sub_1CA94C3A8();
        v49 = v48;
        if (v46[2])
        {
          sub_1CA271BF8(v47, v48);
          OUTLINED_FUNCTION_37_12();
          if ((v26 & 1) == 0)
          {
            goto LABEL_118;
          }

          v208 = *(v46[7] + 8 * v46);
          swift_unknownObjectRetain();
          OUTLINED_FUNCTION_62_9();
          if ((swift_dynamicCast() & 1) == 0)
          {
            goto LABEL_118;
          }

          v50 = v210 == 0xD000000000000025 && v175 == v211;
          v51 = v177;
          if (v50)
          {
          }

          else
          {
            sub_1CA94D7F8();
            OUTLINED_FUNCTION_11();

            if ((v49 & 1) == 0)
            {
LABEL_118:

              v13 = v198;
              goto LABEL_119;
            }
          }

          v150 = swift_dynamicCastClass();
          if (!v150)
          {
            goto LABEL_118;
          }

          v151 = v150;
          v152 = OBJC_IVAR___WFTableTemplateContentItemFilterParameter_linkValueTypes;
          swift_beginAccess();
          v153 = *(v151 + v152);
          if (!*(v153 + 16))
          {
            goto LABEL_118;
          }

          sub_1CA94C218();
          v154 = sub_1CA271BF8(v51, v195);
          if (v155)
          {
            v39 = *(*(v153 + 56) + 8 * v154);

            v156 = OUTLINED_FUNCTION_204();
            v158 = sub_1CA662B04(v156, v157);

            v26 = v203;
            if (v158 && (sub_1CA2F5264(), OUTLINED_FUNCTION_89_4(), OUTLINED_FUNCTION_67_8(), v159 = sub_1CA94C1A8(), , v160 = OUTLINED_FUNCTION_84_3(v159), v159, v160))
            {
              objc_opt_self();
              v161 = swift_dynamicCastObjCClass();
              if (v161)
              {
                v162 = v161;
                v163 = OUTLINED_FUNCTION_7_41();
                v164 = (v26)(v163);
                LOBYTE(v26) = v165;
                swift_unknownObjectRetain();
                v166 = v201;
                swift_isUniquelyReferenced_nonNull_native();
                v210 = v166;
                sub_1CA60D314(v162, v164);
                swift_unknownObjectRelease();

                swift_unknownObjectRelease();

                v32 = v210;
LABEL_113:
                v13 = v198;
LABEL_143:
                OUTLINED_FUNCTION_22_22();
LABEL_171:
                OUTLINED_FUNCTION_73_8();
                goto LABEL_172;
              }

              swift_unknownObjectRelease();
            }

            else
            {
            }

            v13 = v198;
LABEL_120:
            (*(v40 + 16))(&v207, v41, v40);
            v117 = v207;
            v118 = OUTLINED_FUNCTION_152();
            v119 = (v26)(v118);
            v121 = v120;
            if (v117)
            {
              v26 = v189;
              v39 = v190;
              if (v117 == 1)
              {
                v122 = OUTLINED_FUNCTION_152();
                v124 = sub_1CA444B1C(v122, v123);
                v125 = objc_allocWithZone(swift_getObjCClassFromMetadata());
                if (OUTLINED_FUNCTION_32_16(v125, sel_initWithSerializedRepresentation_variableProvider_parameter_))
                {
                  v26 = v201;
                  swift_isUniquelyReferenced_nonNull_native();
                  v210 = v26;
                  sub_1CA60D430();
                  swift_unknownObjectRelease();

                  v32 = v210;
                  OUTLINED_FUNCTION_22_22();
                }

                else
                {
                  OUTLINED_FUNCTION_77_10();
                  OUTLINED_FUNCTION_58_8();
                  OUTLINED_FUNCTION_22_22();
                  if (v124)
                  {
                    swift_isUniquelyReferenced_nonNull_native();
                    v210 = v32;
                    v26 = *(v32 + 24);
                    v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4457E0, &qword_1CA990910);
                    OUTLINED_FUNCTION_83_2(v145);
                    OUTLINED_FUNCTION_78_10();
                    swift_unknownObjectRelease();
                    OUTLINED_FUNCTION_72_6();
                    sub_1CA94D5A8();
                  }

                  swift_unknownObjectRelease();
                }

                v39 = v196;
                goto LABEL_172;
              }

              v203 = v119;
              v129 = OUTLINED_FUNCTION_152();
              sub_1CA444B1C(v129, v130);
              v131 = objc_allocWithZone(swift_getObjCClassFromMetadata());
              if (OUTLINED_FUNCTION_32_16(v131, sel_initWithSerializedRepresentation_variableProvider_parameter_))
              {
                OUTLINED_FUNCTION_22_22();
                v32 = v201;
LABEL_130:
                swift_isUniquelyReferenced_nonNull_native();
                v210 = v32;
                swift_getObjectType();
LABEL_167:
                sub_1CA60D430();
                swift_unknownObjectRelease();

                v32 = v210;
                goto LABEL_171;
              }

              v210 = v41;
              swift_unknownObjectRetain();
              OUTLINED_FUNCTION_4_54();
              OUTLINED_FUNCTION_22_22();
              v32 = v201;
              if (v146)
              {
                sub_1CA2F5880();
                OUTLINED_FUNCTION_89_4();
                OUTLINED_FUNCTION_67_8();
                v147 = sub_1CA94C1A8();

                v148 = WFDeserializedVariableObject(v147, v26, v39);

                if (v148)
                {
                  v205 = &unk_1F4AAB550;
                  if (swift_dynamicCastObjCProtocolConditional())
                  {
                    goto LABEL_130;
                  }

                  swift_unknownObjectRelease();
                }
              }

              sub_1CA271BF8(v203, v121);
              OUTLINED_FUNCTION_58_8();
              if ((v32 & 1) == 0)
              {
LABEL_170:
                swift_unknownObjectRelease();
                goto LABEL_171;
              }

LABEL_169:
              swift_isUniquelyReferenced_nonNull_native();
              v210 = v32;
              v26 = *(v32 + 24);
              v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4457E0, &qword_1CA990910);
              OUTLINED_FUNCTION_83_2(v170);
              OUTLINED_FUNCTION_78_10();
              swift_unknownObjectRelease();
              OUTLINED_FUNCTION_72_6();
              sub_1CA94D5A8();
              goto LABEL_170;
            }

            v210 = v191;
            swift_unknownObjectRetain();
            v126 = OUTLINED_FUNCTION_4_54();
            v26 = v189;
            v39 = v190;
            if (v126)
            {
              sub_1CA2F5880();
              OUTLINED_FUNCTION_89_4();
              OUTLINED_FUNCTION_67_8();
              v127 = sub_1CA94C1A8();

              v128 = WFDeserializedVariableObject(v127, v26, v39);

              if (v128)
              {
                v204 = &unk_1F4AAB550;
                if (swift_dynamicCastObjCProtocolConditional())
                {
                  goto LABEL_166;
                }

                swift_unknownObjectRelease();
              }
            }

            v167 = OUTLINED_FUNCTION_152();
            sub_1CA444B1C(v167, v168);
            v169 = objc_allocWithZone(swift_getObjCClassFromMetadata());
            if (!OUTLINED_FUNCTION_32_16(v169, sel_initWithSerializedRepresentation_variableProvider_parameter_))
            {
              OUTLINED_FUNCTION_77_10();
              OUTLINED_FUNCTION_58_8();
              OUTLINED_FUNCTION_22_22();
              if ((v41 & 1) == 0)
              {
                goto LABEL_170;
              }

              goto LABEL_169;
            }

LABEL_166:
            OUTLINED_FUNCTION_22_22();
            v26 = v201;
            swift_isUniquelyReferenced_nonNull_native();
            v210 = v26;
            swift_getObjectType();
            goto LABEL_167;
          }
        }

        goto LABEL_118;
      }
    }

    else
    {
    }

    (*(v40 + 24))(v41, v40);
    if (v52)
    {
      OUTLINED_FUNCTION_165();
      v53 = v203;
    }

    else
    {
      v54 = OUTLINED_FUNCTION_7_41();
      v53 = v203;
      (v203)(v54);
      OUTLINED_FUNCTION_165();
    }

    v55 = OUTLINED_FUNCTION_152();
    v57 = sub_1CA444B1C(v55, v56);
    v58 = OUTLINED_FUNCTION_152();
    if ((v53)(v58) == 0x746172656D756E45 && v59 == 0xEB000000006E6F69)
    {
    }

    else
    {
      sub_1CA94D7F8();
      OUTLINED_FUNCTION_11();

      if ((v53 & 1) == 0)
      {
        goto LABEL_77;
      }
    }

    v61 = OUTLINED_FUNCTION_7_41();
    v62 = (v203)(v61);
    if (!*(v198 + 16))
    {

LABEL_75:
      v64 = &qword_1EC4417B0;
      v65 = off_1E836F350;
      goto LABEL_76;
    }

    sub_1CA271BF8(v62, v63);
    OUTLINED_FUNCTION_37_12();
    if ((v26 & 1) == 0)
    {
      goto LABEL_75;
    }

    objc_opt_self();
    OUTLINED_FUNCTION_5_3();
    if (!swift_dynamicCastObjCClass())
    {
      goto LABEL_75;
    }

    v64 = &qword_1EC446B00;
    v65 = off_1E836EC20;
LABEL_76:
    v57 = sub_1CA25B3D0(0, v64, v65);
LABEL_77:
    v66 = v192;
    if (v192 && v192[2] && (sub_1CA94C218(), v67 = sub_1CA271BF8(v39, v13), v69 = v68, , (v69 & 1) != 0))
    {
      v70 = *(v66[7] + 8 * v67);
      swift_unknownObjectRetain();

      v208 = v70;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447B48, &qword_1CA990918);
      v71 = swift_dynamicCast();
      v13 = v198;
      if (v71)
      {
        sub_1CA2F5AEC();
        OUTLINED_FUNCTION_89_4();
        OUTLINED_FUNCTION_67_8();
        v72 = sub_1CA94C1A8();

        v73 = OUTLINED_FUNCTION_84_3(v72);

        if (v73)
        {
          ObjectType = swift_getObjectType();
          goto LABEL_84;
        }
      }

      else
      {
        v73 = 0;
      }

      ObjectType = 0;
    }

    else
    {

      v73 = 0;
      ObjectType = 0;
      v13 = v198;
    }

LABEL_84:
    v26 = v203;
    v211 = 0;
    v212 = 0;
    v210 = v73;
    v213 = ObjectType;
    if (v57 != sub_1CA25B3D0(0, &qword_1EC441788, off_1E836F4E0))
    {
      v75 = OUTLINED_FUNCTION_62_9();
      sub_1CA66DD4C(v75, v76, &unk_1EC444650, &unk_1CA981C70);
      if (v209)
      {
        sub_1CA25B3D0(0, &qword_1EC441AC0, off_1E836F4B0);
        if (swift_dynamicCast())
        {
          v77 = v207;
          v206 = &unk_1F4AAB618;
          if (swift_dynamicCastTypeToObjCProtocolConditional())
          {
            v78 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithVariable_];

            goto LABEL_137;
          }
        }
      }

      else
      {
        sub_1CA30F7DC(&v208, &unk_1EC444650, &unk_1CA981C70);
      }

      v132 = OUTLINED_FUNCTION_7_41();
      v133 = (v26)(v132);
      if (!*(v13 + 16))
      {

        v78 = 0;
        goto LABEL_141;
      }

      sub_1CA271BF8(v133, v134);
      OUTLINED_FUNCTION_37_12();
      if (v26)
      {
        v135 = *(*(v13 + 56) + 8 * v13);
        objc_opt_self();
        OUTLINED_FUNCTION_5_3();
        v136 = swift_dynamicCastObjCClass();
        if (!v136 || (v137 = v136, v57 != sub_1CA25B3D0(0, &qword_1EC446B00, off_1E836EC20)))
        {
          v138 = objc_allocWithZone(swift_getObjCClassFromMetadata());
          v78 = [v138 initWithSerializedRepresentation:v135 variableProvider:v189 parameter:v190];
          v26 = v203;
          if (!v78)
          {
LABEL_141:
            v139 = OUTLINED_FUNCTION_7_41();
            v140 = (v26)(v139);
            v39 = v141;
            if (!v78)
            {
              v32 = v201;
              sub_1CA271BF8(v140, v141);
              v143 = v142;

              OUTLINED_FUNCTION_22_22();
              if (v143)
              {
                swift_isUniquelyReferenced_nonNull_native();
                v208 = v32;
                v26 = *(v32 + 24);
                v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4457E0, &qword_1CA990910);
                OUTLINED_FUNCTION_43_13(v144);
                OUTLINED_FUNCTION_80_7();
                swift_unknownObjectRelease();
                OUTLINED_FUNCTION_72_6();
                sub_1CA94D5A8();
              }

              sub_1CA30F7DC(&v210, &unk_1EC444650, &unk_1CA981C70);
              goto LABEL_171;
            }

            v26 = v201;
            swift_isUniquelyReferenced_nonNull_native();
            v208 = v26;
            swift_getObjectType();
            sub_1CA60D430();

            swift_unknownObjectRelease();
            sub_1CA30F7DC(&v210, &unk_1EC444650, &unk_1CA981C70);
            v32 = v208;
            goto LABEL_143;
          }

LABEL_137:
          swift_unknownObjectRetain();
          goto LABEL_141;
        }

        v78 = [objc_allocWithZone(WFNumberParameterState) initWithNumber_];
        v149 = v78;
      }

      else
      {
        v78 = 0;
      }

      v26 = v203;
      goto LABEL_141;
    }

    v79 = OUTLINED_FUNCTION_62_9();
    sub_1CA66DD4C(v79, v80, &unk_1EC444650, &unk_1CA981C70);
    if (v209)
    {
      if (swift_dynamicCast())
      {
        v208 = v207;
        v82 = &v208;
        v83 = WFVariableStringParameterState.init(variableString:)(*(&v81 - 1));
        v84 = v83;
        goto LABEL_103;
      }
    }

    else
    {
      sub_1CA30F7DC(&v208, &unk_1EC444650, &unk_1CA981C70);
    }

    v85 = OUTLINED_FUNCTION_7_41();
    v86 = (v26)(v85);
    if (*(v13 + 16))
    {
      sub_1CA271BF8(v86, v87);
      OUTLINED_FUNCTION_37_12();
      if (v26 & 1) != 0 && (v207 = *(*(v13 + 56) + 8 * v13), swift_unknownObjectRetain(), (swift_dynamicCast()))
      {
        sub_1CA25B3D0(0, &qword_1EC446960, off_1E836F4D8);
        v88 = OUTLINED_FUNCTION_52_0();
        v208 = sub_1CA538038(v88);
        v89.variableString.super.isa = &v208;
        v83 = WFVariableStringParameterState.init(variableString:)(v89);
        v90 = v83;
      }

      else
      {
        v83 = 0;
      }

      v26 = v203;
    }

    else
    {

      v83 = 0;
    }

LABEL_103:
    v91 = OUTLINED_FUNCTION_7_41();
    v92 = (v26)(v91);
    v39 = v93;
    if (!v83)
    {
      v108 = OUTLINED_FUNCTION_204();
      v32 = v201;
      sub_1CA271BF8(v108, v109);
      v111 = v110;

      if (v111)
      {
        swift_isUniquelyReferenced_nonNull_native();
        v208 = v32;
        v26 = *(v32 + 24);
        v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4457E0, &qword_1CA990910);
        OUTLINED_FUNCTION_43_13(v112);
        OUTLINED_FUNCTION_80_7();
        swift_unknownObjectRelease();
        OUTLINED_FUNCTION_72_6();
        sub_1CA94D5A8();
      }

      sub_1CA30F7DC(&v210, &unk_1EC444650, &unk_1CA981C70);
      goto LABEL_113;
    }

    v94 = v201;
    swift_isUniquelyReferenced_nonNull_native();
    v208 = v94;
    v95 = OUTLINED_FUNCTION_204();
    v97 = sub_1CA271BF8(v95, v96);
    v99 = v94[2];
    v100 = (v98 & 1) == 0;
    LOBYTE(v26) = v99 + v100;
    if (__OFADD__(v99, v100))
    {
      break;
    }

    v101 = v97;
    v102 = v98;
    v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4457E0, &qword_1CA990910);
    if (OUTLINED_FUNCTION_43_13(v103))
    {
      v104 = OUTLINED_FUNCTION_204();
      v106 = sub_1CA271BF8(v104, v105);
      if ((v102 & 1) != (v107 & 1))
      {
        goto LABEL_185;
      }

      v101 = v106;
    }

    v32 = v208;
    if (v102)
    {
      *(v208[7] + 8 * v101) = v83;

      swift_unknownObjectRelease();
    }

    else
    {
      v208[(v101 >> 6) + 8] |= 1 << v101;
      v113 = (*(v32 + 48) + 16 * v101);
      *v113 = v92;
      v113[1] = v39;
      *(*(v32 + 56) + 8 * v101) = v83;
      v114 = *(v32 + 16);
      v115 = __OFADD__(v114, 1);
      v116 = v114 + 1;
      if (v115)
      {
        goto LABEL_184;
      }

      *(v32 + 16) = v116;
    }

    v13 = v198;
    OUTLINED_FUNCTION_22_22();
    OUTLINED_FUNCTION_73_8();
    sub_1CA30F7DC(&v210, &unk_1EC444650, &unk_1CA981C70);
LABEL_172:
    v38 = v199 + 2;
    v37 = v200 - 1;
    if (v200 == 1)
    {

      v7 = v190;
      goto LABEL_182;
    }
  }

  __break(1u);
LABEL_184:
  __break(1u);
LABEL_185:
  sub_1CA94D878();
  __break(1u);
}

unint64_t sub_1CA662B04(uint64_t a1, void *a2)
{
  v3 = sub_1CA2F586C(a1);
  sub_1CA94C3A8();
  v4 = sub_1CA323E28();

  if (v4 && (*&v10 = v4, __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444480, &unk_1CA983520), v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0), (swift_dynamicCast() & 1) != 0))
  {
    v6 = *&v9[0];
    sub_1CA94C3A8();
    v11 = sub_1CA25B3D0(0, &unk_1EC441AB0, 0x1E69ACAA0);
    *&v10 = a2;
    sub_1CA2C0A20(&v10, v9);
    v7 = a2;
    swift_isUniquelyReferenced_nonNull_native();
    sub_1CA3223D8();

    sub_1CA94C3A8();
    v11 = v5;
    *&v10 = v6;
    sub_1CA2C0A20(&v10, v9);
    swift_isUniquelyReferenced_nonNull_native();
    sub_1CA3223D8();

    return v3;
  }

  else
  {

    return 0;
  }
}

uint64_t RowTemplateFindFilterParameterState.serializedRepresentation.getter()
{
  v1 = *(v0 + 8);
  v68 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444480, &unk_1CA983520);
  v4 = sub_1CA94C1E8();
  v5 = [v1 name];
  if (!v5)
  {
    sub_1CA94C3A8();
    v0 = v6;
    v5 = sub_1CA94C368();
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v71 = v4;
  sub_1CA32EA0C(v5, 0x79747265706F7250, 0xE800000000000000, isUniquelyReferenced_nonNull_native, &v71);
  v8 = v71;
  sub_1CA94C988();
  OUTLINED_FUNCTION_87();
  v9 = swift_isUniquelyReferenced_nonNull_native();
  v71 = v8;
  sub_1CA32EA0C(v0, 0x726F74617265704FLL, 0xE800000000000000, v9, &v71);
  v10 = v71;
  sub_1CA94C7A8();
  OUTLINED_FUNCTION_87();
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v71 = v10;
  sub_1CA32EA0C(v0, 0x6C6261766F6D6552, 0xE900000000000065, v11, &v71);
  v12 = v71;
  if (v2)
  {
    sub_1CA25B3D0(0, &qword_1EDB9F5E0, 0x1E696AD98);
    sub_1CA94CFA8();
    v13 = OUTLINED_FUNCTION_88_4();
    v71 = v12;
    sub_1CA32EA0C(v10, 0x6465646E756F42, 0xE700000000000000, v13, &v71);
    v12 = v71;
  }

  else
  {
    v14 = OUTLINED_FUNCTION_54_8();
    sub_1CA271BF8(v14, v15);
    if (v16)
    {
      OUTLINED_FUNCTION_88_4();
      v71 = v12;
      v12 = *(v12 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444FC0, &unk_1CA987A10);
      OUTLINED_FUNCTION_33_15();
      sub_1CA94D588();
      OUTLINED_FUNCTION_82_4();
      sub_1CA94D5A8();
      swift_unknownObjectRelease();
    }
  }

  v17 = v68;
  if (v3)
  {
    sub_1CA25B3D0(0, &qword_1EDB9F5E0, 0x1E696AD98);
    sub_1CA94CFA8();
    v18 = OUTLINED_FUNCTION_88_4();
    v71 = v12;
    sub_1CA32EA0C(v10, 0x6E6564646948, 0xE600000000000000, v18, &v71);
    v12 = v71;
  }

  else
  {
    v19 = OUTLINED_FUNCTION_61_10();
    sub_1CA271BF8(v19, v20);
    if (v21)
    {
      OUTLINED_FUNCTION_88_4();
      v71 = v12;
      v12 = *(v12 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444FC0, &unk_1CA987A10);
      OUTLINED_FUNCTION_33_15();
      sub_1CA94D588();
      OUTLINED_FUNCTION_82_4();
      sub_1CA94D5A8();
      swift_unknownObjectRelease();
    }
  }

  v66 = v12;
  v22 = sub_1CA94C1E8();
  v23 = sub_1CA661134();
  v24 = *(v23 + 16);
  v69 = v22;
  if (!v24)
  {
LABEL_34:

    v62 = sub_1CA94C1A8();

    v63 = swift_isUniquelyReferenced_nonNull_native();
    v71 = v66;
    sub_1CA32EA0C(v62, 0x7365756C6156, 0xE600000000000000, v63, &v71);
    v64 = sub_1CA94C1A8();

    return v64;
  }

  v25 = v23 + 40;
  while (1)
  {
    v26 = *(v25 - 8);
    v27 = *v25;
    v28 = *(*v25 + 8);
    v29 = *(v28 + 24);
    v30 = v29(v26, v28);
    if (!*(v17 + 16))
    {

      goto LABEL_33;
    }

    v70 = v24;
    v32 = sub_1CA271BF8(v30, v31);
    v33 = v17;
    v35 = v34;

    if ((v35 & 1) == 0)
    {
      v17 = v33;
      v24 = v70;
      goto LABEL_33;
    }

    v36 = *(*(v33 + 56) + 8 * v32);
    v37 = *(v27 + 16);
    swift_unknownObjectRetain();
    v37(&v71, v26, v27);
    v38 = v71;
    v39 = v29(v26, v28);
    v41 = v40;
    if (!v38)
    {
      break;
    }

    v42 = [v36 serializedRepresentation];
    v24 = v70;
    if (!v42)
    {
      sub_1CA271BF8(v39, v41);
      v55 = v54;

      v17 = v68;
      if (v55)
      {
        swift_isUniquelyReferenced_nonNull_native();
        v71 = v69;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444FC0, &unk_1CA987A10);
        OUTLINED_FUNCTION_33_15();
        sub_1CA94D588();
        v56 = v71;

        swift_unknownObjectRelease();
        v69 = v56;
        sub_1CA94D5A8();
      }

LABEL_32:
      swift_unknownObjectRelease();
      goto LABEL_33;
    }

    v43 = v42;
    v44 = swift_isUniquelyReferenced_nonNull_native();
    v71 = v69;
    ObjectType = swift_getObjectType();
    sub_1CA32EB34(v43, v39, v41, v44, &v71, ObjectType);
    swift_unknownObjectRelease();

    v69 = v71;
    v17 = v68;
LABEL_33:
    v25 += 16;
    if (!--v24)
    {
      goto LABEL_34;
    }
  }

  v46 = WFSerializedVariableObject(v36);
  sub_1CA94C1C8();

  OUTLINED_FUNCTION_52_0();
  v47 = sub_1CA94C1A8();

  swift_isUniquelyReferenced_nonNull_native();
  v71 = v69;
  v48 = sub_1CA271BF8(v39, v41);
  v24 = v70;
  if (!__OFADD__(*(v69 + 16), (v49 & 1) == 0))
  {
    v50 = v48;
    v51 = v49;
    v67 = v47;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444FC0, &unk_1CA987A10);
    OUTLINED_FUNCTION_33_15();
    if (sub_1CA94D588())
    {
      v52 = sub_1CA271BF8(v39, v41);
      v17 = v68;
      if ((v51 & 1) != (v53 & 1))
      {
        goto LABEL_37;
      }

      v50 = v52;
    }

    else
    {
      v17 = v68;
    }

    v57 = v71;
    v69 = v71;
    if (v51)
    {
      *(v71[7] + 8 * v50) = v67;
      swift_unknownObjectRelease();
    }

    else
    {
      v71[(v50 >> 6) + 8] |= 1 << v50;
      v58 = (v57[6] + 16 * v50);
      *v58 = v39;
      v58[1] = v41;
      *(v57[7] + 8 * v50) = v67;
      v59 = v57[2];
      v60 = __OFADD__(v59, 1);
      v61 = v59 + 1;
      if (v60)
      {
        goto LABEL_36;
      }

      v57[2] = v61;
    }

    goto LABEL_32;
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  result = sub_1CA94D878();
  __break(1u);
  return result;
}

void RowTemplateFindFilterParameterState.containedVariables.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_43_0();
  a31 = v33;
  a32 = v34;
  v35 = *(v32 + 24) + 64;
  OUTLINED_FUNCTION_5_5();
  v38 = v37 & v36;
  v66 = (v39 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v40 = 0;
  v41 = MEMORY[0x1E69E7CC0];
  v67 = v35;
  while (v38)
  {
LABEL_7:
    v43 = [swift_unknownObjectRetain_n() containedVariables];
    sub_1CA25B3D0(0, &qword_1EC441AC0, off_1E836F4B0);
    v44 = sub_1CA94C658();
    swift_unknownObjectRelease_n();

    if (v44 >> 62)
    {
      v45 = sub_1CA94D328();
    }

    else
    {
      v45 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v46 = v41 >> 62;
    if (v41 >> 62)
    {
      v47 = sub_1CA94D328();
    }

    else
    {
      v47 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v70 = v45;
    v48 = __OFADD__(v47, v45);
    v49 = v47 + v45;
    if (v48)
    {
      goto LABEL_40;
    }

    if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (v46)
      {
LABEL_18:
        sub_1CA94D328();
      }

LABEL_19:
      v69 = sub_1CA94D488();
      v50 = v69 & 0xFFFFFFFFFFFFFF8;
      goto LABEL_20;
    }

    if (v46)
    {
      goto LABEL_18;
    }

    v50 = v41 & 0xFFFFFFFFFFFFFF8;
    if (v49 > *((v41 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_19;
    }

    v69 = v41;
LABEL_20:
    v38 &= v38 - 1;
    v51 = *(v50 + 16);
    v52 = (*(v50 + 24) >> 1) - v51;
    v53 = v50 + 8 * v51;
    v68 = v50;
    if (v44 >> 62)
    {
      v55 = sub_1CA94D328();
      if (v55)
      {
        v56 = v55;
        v57 = sub_1CA94D328();
        if (v52 < v57)
        {
          goto LABEL_44;
        }

        if (v56 < 1)
        {
          goto LABEL_45;
        }

        v65 = v57;
        v58 = v53 + 32;
        sub_1CA66AD28();
        for (i = 0; i != v56; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444470, &unk_1CA983510);
          v60 = sub_1CA276BDC(&a17, i, v44);
          v62 = *v61;
          v60(&a17, 0);
          *(v58 + 8 * i) = v62;
        }

        v54 = v65;
        goto LABEL_30;
      }

LABEL_34:

      v41 = v69;
      v35 = v67;
      if (v70 > 0)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v54 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v54)
      {
        goto LABEL_34;
      }

      if (v52 < v54)
      {
        goto LABEL_43;
      }

      swift_arrayInitWithCopy();
LABEL_30:

      v41 = v69;
      v35 = v67;
      if (v54 < v70)
      {
        goto LABEL_41;
      }

      if (v54 > 0)
      {
        v63 = *(v68 + 16);
        v48 = __OFADD__(v63, v54);
        v64 = v63 + v54;
        if (v48)
        {
          goto LABEL_42;
        }

        *(v68 + 16) = v64;
      }
    }
  }

  while (1)
  {
    v42 = v40 + 1;
    if (__OFADD__(v40, 1))
    {
      break;
    }

    if (v42 >= v66)
    {

      OUTLINED_FUNCTION_42_0();
      return;
    }

    v38 = *(v35 + 8 * v42);
    ++v40;
    if (v38)
    {
      v40 = v42;
      goto LABEL_7;
    }
  }

  __break(1u);
LABEL_40:
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
}

uint64_t RowTemplateFindFilterParameterState.process(context:)(uint64_t a1)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = *v1;
  v3 = *(v1 + 24);
  *(v2 + 104) = *(v1 + 16);
  *(v2 + 112) = v3;
  *(v2 + 73) = *(v1 + 32);
  *(v2 + 74) = *(v1 + 33);
  v4 = OUTLINED_FUNCTION_85();
  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1CA663B2C()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 144) = v4;
  *(v2 + 152) = v0;

  if (v0)
  {
    v5 = sub_1CA663EC0;
  }

  else
  {
    v5 = sub_1CA663C30;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1CA663EC0()
{
  OUTLINED_FUNCTION_0();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_5();

  return v1();
}

uint64_t sub_1CA663F2C()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13();
  *v5 = v4;
  *(v3 + 192) = v0;

  if (v0)
  {
    v6 = *(v3 + 64);

    v7 = sub_1CA6641E0;
  }

  else
  {
    v8 = *(v3 + 64);

    v7 = sub_1CA664054;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1CA664054()
{
  OUTLINED_FUNCTION_39_1();
  while (1)
  {
    result = OUTLINED_FUNCTION_55_8();
    if (v3)
    {

      OUTLINED_FUNCTION_28_11();
      OUTLINED_FUNCTION_42_9();

      __asm { BRAA            X2, X16 }
    }

    v4 = v0[22] + 1;
    v0[22] = v4;
    v5 = v0[20];
    if (v4 >= *(v5 + 16))
    {
      break;
    }

    v6 = v0[13];
    sub_1CA2C9578(v5 + 40 * v4 + 32, (v0 + 2));
    v7 = OUTLINED_FUNCTION_19_25();
    if (v8(v7) == v6)
    {
      OUTLINED_FUNCTION_8_34();
      sub_1CA94C218();
      v9 = v1;
      v10 = swift_task_alloc();
      v0[23] = v10;
      *v10 = v0;
      OUTLINED_FUNCTION_1_51(v10);
      OUTLINED_FUNCTION_42_9();

      __asm { BRAA            X4, X16 }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1CA6641E0()
{
  OUTLINED_FUNCTION_0();

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  OUTLINED_FUNCTION_5();

  return v1();
}

void static RowTemplateFindFilterParameterState.possibleOperators(contentItemClass:contentProperty:bounded:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10, uint64_t a11, uint64_t a12, uint64_t a13, __int128 a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_43_0();
  a29 = v30;
  a30 = v31;
  v33 = v32;
  v36 = sub_1CA665C70(v34, v32, v35);
  v37 = sub_1CA66AC54(v33);
  if (v37)
  {
    v38 = v37;
    v39 = sub_1CA25B410(v37);
    if (v39)
    {
      v40 = v39;
      v41 = 0;
      v42 = MEMORY[0x1E69E7CC0];
      while (v40 != v41)
      {
        if ((v38 & 0xC000000000000001) != 0)
        {
          v43 = MEMORY[0x1CCAA22D0](v41, v38);
        }

        else
        {
          if (v41 >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_32;
          }

          v43 = *(v38 + 8 * v41 + 32);
        }

        v44 = v43;
        if (__OFADD__(v41, 1))
        {
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
          return;
        }

        v45 = sub_1CA94C978();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1CA2E5734(0, *(v42 + 16) + 1, 1, v42);
          v42 = v48;
        }

        v47 = *(v42 + 16);
        v46 = *(v42 + 24);
        if (v47 >= v46 >> 1)
        {
          v49 = OUTLINED_FUNCTION_64(v46);
          sub_1CA2E5734(v49, v47 + 1, 1, v42);
          v42 = v50;
        }

        *(v42 + 16) = v47 + 1;
        *(v42 + 8 * v47 + 32) = v45;
        ++v41;
      }

      v51 = 0;
      v52 = v36[2];
      v53 = v36 + 4;
      v54 = MEMORY[0x1E69E7CC0];
      while (v51 != v52)
      {
        if (v51 >= v36[2])
        {
          goto LABEL_33;
        }

        v55 = v36;
        v56 = v51 + 1;
        sub_1CA2C9578(&v53[5 * v51], &a14);
        v58 = a16;
        v57 = a17;
        __swift_project_boxed_opaque_existential_1(&a14, a16);
        v59 = (*(*(v57 + 8) + 16))(v58);
        v60 = *(v42 + 16);
        v61 = (v42 + 32);
        do
        {
          if (!v60)
          {
            __swift_destroy_boxed_opaque_existential_0(&a14);
            goto LABEL_27;
          }

          v62 = *v61++;
          --v60;
        }

        while (v62 != v59);
        sub_1CA27F268(&a14, &a10);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        a18 = v54;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1CA2B8EB4(0, *(v54 + 16) + 1, 1);
          v54 = a18;
        }

        v65 = *(v54 + 16);
        v64 = *(v54 + 24);
        if (v65 >= v64 >> 1)
        {
          v66 = OUTLINED_FUNCTION_64(v64);
          sub_1CA2B8EB4(v66, v65 + 1, 1);
          v54 = a18;
        }

        *(v54 + 16) = v65 + 1;
        sub_1CA27F268(&a10, v54 + 40 * v65 + 32);
LABEL_27:
        v51 = v56;
        v36 = v55;
      }
    }

    else
    {
    }
  }

  OUTLINED_FUNCTION_42_0();
}

double RowTemplateFindFilterParameterState.hash(into:)(uint64_t a1)
{
  v2 = v1[1];
  v4 = v1[2];
  v3 = v1[3];
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = NSStringFromClass(ObjCClassFromMetadata);
  sub_1CA94C3A8();
  OUTLINED_FUNCTION_86_4();
  sub_1CA94C458();

  v7 = [v2 name];
  sub_1CA94C3A8();

  sub_1CA94C458();

  MEMORY[0x1CCAA2780](v4);
  v12 = sub_1CA42AD5C(v3);
  sub_1CA60317C(&v12);
  v8 = *(v12 + 16);
  if (v8)
  {
    v9 = (v12 + 48);
    do
    {
      v10 = *v9;
      v9 += 3;
      sub_1CA94C218();
      swift_unknownObjectRetain();
      sub_1CA94C458();

      MEMORY[0x1CCAA2780]([v10 hash]);
      swift_unknownObjectRelease();
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t static RowTemplateFindFilterParameterState.== infix(_:_:)(uint64_t a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v7 = a2[2];
  v6 = a2[3];
  v8 = a2[1];
  v9 = [*(a1 + 8) name];
  v10 = sub_1CA94C3A8();
  v12 = v11;

  v13 = [v8 name];
  v14 = sub_1CA94C3A8();
  v16 = v15;

  if (v10 == v14 && v12 == v16)
  {

    if (v5 != v7)
    {
      return 0;
    }
  }

  else
  {
    v18 = sub_1CA94D7F8();

    v2 = 0;
    if ((v18 & 1) == 0 || v5 != v7)
    {
      return v2;
    }
  }

  sub_1CA94C218();
  sub_1CA94C218();
  v19 = sub_1CA60C7CC(v4, v6);

  if ((v19 & 1) == 0)
  {
    return 0;
  }

  v20 = v4 + 64;
  OUTLINED_FUNCTION_5_5();
  v23 = v22 & v21;
  v25 = (v24 + 63) >> 6;
  result = sub_1CA94C218();
  v26 = 0;
  v27 = &selRef_initWithIntentDescriptor_isSyncedFromOtherDevice_;
  v41 = v4;
  while (v23)
  {
LABEL_19:
    v29 = __clz(__rbit64(v23)) | (v26 << 6);
    v30 = *(*(v4 + 56) + 8 * v29);
    if (*(v6 + 16))
    {
      v31 = v4;
      v32 = v27;
      v33 = (*(v31 + 48) + 16 * v29);
      v34 = *v33;
      v35 = v33[1];
      swift_unknownObjectRetain();
      sub_1CA94C218();
      v36 = sub_1CA271BF8(v34, v35);
      v38 = v37;

      if ((v38 & 1) == 0)
      {
        v39 = 0;
        v27 = v32;
        v4 = v41;
        goto LABEL_25;
      }

      v39 = *(*(v6 + 56) + 8 * v36);
      v27 = v32;
      v4 = v41;
    }

    else
    {
      v39 = 0;
    }

    swift_unknownObjectRetain();
LABEL_25:
    v23 &= v23 - 1;
    v40 = [v30 v27[489]];
    swift_unknownObjectRelease();
    result = swift_unknownObjectRelease();
    if ((v40 & 1) == 0)
    {
      v2 = 0;
LABEL_28:

      return v2;
    }
  }

  while (1)
  {
    v28 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v28 >= v25)
    {
      v2 = 1;
      goto LABEL_28;
    }

    v23 = *(v20 + 8 * v28);
    ++v26;
    if (v23)
    {
      v26 = v28;
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

uint64_t RowTemplateFindFilterParameterState.isBoolean.getter(uint64_t a1)
{
  result = sub_1CA94CD98();
  if (result)
  {
    return [swift_getObjCClassFromMetadata() tableTemplateSubjectType] == 1;
  }

  return result;
}

id static RowTemplateFindFilterParameterState.subjectType(contentProperty:)(uint64_t a1)
{
  result = sub_1CA94CD98();
  if (result)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

    return [ObjCClassFromMetadata tableTemplateSubjectType];
  }

  return result;
}

uint64_t RowTemplateFindFilterParameterState.propertyName.getter()
{
  v1 = [*(v0 + 8) localizedName];
  sub_1CA94C3A8();

  return OUTLINED_FUNCTION_52_0();
}

void __swiftcall RowTemplateFindFilterParameterState.makeSubjectParameter(key:)(WFParameter *__return_ptr retstr, Swift::String key)
{
  object = key._object;
  countAndFlagsBits = key._countAndFlagsBits;
  sub_1CA664E78();
  v6 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981350;
  v8 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"Key";
  *(inited + 40) = countAndFlagsBits;
  *(inited + 48) = object;
  *(inited + 64) = v8;
  *(inited + 72) = @"Items";
  v9 = *(v6 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  v73 = v6;
  v74 = inited;
  if (v9)
  {
    v75 = MEMORY[0x1E69E7CC0];
    v11 = @"Key";
    sub_1CA94C218();
    v12 = @"Items";
    sub_1CA271524(0, v9, 0, v13, v14, v15, v16);
    v17 = (v6 + 40);
    v18 = v75;
    v19 = v9;
    do
    {
      v20 = *(v17 - 1);
      if (*v17)
      {
        v21 = v20;
        v22 = [v21 name];
        sub_1CA94C3A8();
        OUTLINED_FUNCTION_86_4();
        MEMORY[0x1CCAA1300](v6, v2);

        v6 = 0xE90000000000002DLL;
        v27 = 0x657669746167656ELL;
      }

      else
      {
        v28 = v20;
        v29 = [v28 name];
        v27 = sub_1CA94C3A8();
        v6 = v30;
      }

      v32 = *(v75 + 16);
      v31 = *(v75 + 24);
      v2 = v32 + 1;
      if (v32 >= v31 >> 1)
      {
        sub_1CA271524(v31 > 1, v32 + 1, 1, v23, v24, v25, v26);
      }

      *(v75 + 16) = v2;
      v33 = v75 + 16 * v32;
      *(v33 + 32) = v27;
      *(v33 + 40) = v6;
      v17 += 16;
      --v19;
    }

    while (v19);
    v6 = v73;
    v34 = v74;
    v10 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v34 = inited;
    v35 = @"Key";
    sub_1CA94C218();
    v36 = @"Items";
    v18 = MEMORY[0x1E69E7CC0];
  }

  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  v34[10] = v18;
  v34[13] = v37;
  v34[14] = @"ItemDisplayNames";
  if (!v9)
  {
    v58 = @"ItemDisplayNames";

    v43 = MEMORY[0x1E69E7CC0];
    goto LABEL_24;
  }

  v38 = @"ItemDisplayNames";
  sub_1CA271524(0, v9, 0, v39, v40, v41, v42);
  v43 = v10;
  v44 = (v6 + 40);
  do
  {
    v45 = *v44;
    v46 = *(v44 - 1);
    v47 = v46;
    if (v45)
    {
      sub_1CA66ACC4(v46);
      if (v48)
      {
        OUTLINED_FUNCTION_86_4();
        goto LABEL_19;
      }

      v53 = [v47 localizedName];
    }

    else
    {
      v53 = [v46 localizedName];
    }

    v54 = v53;
    sub_1CA94C3A8();
    OUTLINED_FUNCTION_86_4();

LABEL_19:
    v56 = *(v43 + 16);
    v55 = *(v43 + 24);
    if (v56 >= v55 >> 1)
    {
      sub_1CA271524(v55 > 1, v56 + 1, 1, v49, v50, v51, v52);
    }

    *(v43 + 16) = v56 + 1;
    v57 = v43 + 16 * v56;
    *(v57 + 32) = v6;
    *(v57 + 40) = v34;
    v44 += 2;
    --v9;
  }

  while (v9);

  v34 = v74;
LABEL_24:
  sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v34[15] = v43;
  v34[18] = v37;
  v34[19] = @"DisallowedVariableTypes";
  sub_1CA25B3D0(0, &qword_1EC444F20, off_1E836E2F8);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v60 = @"DisallowedVariableTypes";
  v61 = [ObjCClassFromMetadata allInsertableVariableTypes];
  type metadata accessor for WFVariableType(0);
  sub_1CA66C160(&qword_1EC441A60, type metadata accessor for WFVariableType);
  v62 = sub_1CA94C8F8();

  sub_1CA3E4650(v62, v63, v64, v65, v66, v67, v68);
  v70 = v69;

  v34[23] = v37;
  v34[20] = v70;
  _s3__C3KeyVMa_0(0);
  sub_1CA66C160(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  v71 = sub_1CA94C1E8();
  v72 = sub_1CA2F864C(v71);
  [objc_allocWithZone(WFEnumerationParameter) initWithDefinition_];
}

void sub_1CA664E78()
{
  v0 = [swift_getObjCClassFromMetadata() allProperties];
  sub_1CA25B3D0(0, &unk_1EC4419D0, 0x1E6996D88);
  v1 = sub_1CA94C658();

  v19 = MEMORY[0x1E69E7CC0];
  v2 = sub_1CA25B410(v1);
  for (i = 0; ; ++i)
  {
    if (v2 == i)
    {

      v6 = sub_1CA25B410(v19);
      if (v6)
      {
        v7 = v6;
        if (v6 < 1)
        {
          goto LABEL_32;
        }

        v8 = 0;
        v9 = MEMORY[0x1E69E7CC0];
        do
        {
          if ((v19 & 0xC000000000000001) != 0)
          {
            v10 = MEMORY[0x1CCAA22D0](v8, v19);
          }

          else
          {
            v10 = *(v19 + 8 * v8 + 32);
          }

          v11 = v10;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1CA2E7608();
            v9 = v16;
          }

          v12 = *(v9 + 16);
          if (v12 >= *(v9 + 24) >> 1)
          {
            sub_1CA2E7608();
            v9 = v17;
          }

          *(v9 + 16) = v12 + 1;
          v13 = v9 + 16 * v12;
          *(v13 + 32) = v11;
          *(v13 + 40) = 0;
          if (sub_1CA94CD98() && [swift_getObjCClassFromMetadata() tableTemplateSubjectType] == 1)
          {
            v14 = *(v9 + 16);
            if (v14 >= *(v9 + 24) >> 1)
            {
              sub_1CA2E7608();
              v9 = v18;
            }

            *(v9 + 16) = v14 + 1;
            v15 = v9 + 16 * v14;
            *(v15 + 32) = v11;
            *(v15 + 40) = 1;
          }

          else
          {
          }

          ++v8;
        }

        while (v7 != v8);
      }

      return;
    }

    if ((v1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1CCAA22D0](i, v1);
    }

    else
    {
      if (i >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_31;
      }

      v4 = *(v1 + 8 * i + 32);
    }

    v5 = v4;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if ([v4 isFilterable])
    {
      sub_1CA94D4D8();
      sub_1CA94D518();
      sub_1CA94D528();
      sub_1CA94D4E8();
    }

    else
    {
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
}

uint64_t sub_1CA665128(void *a1, char a2)
{
  if (a2)
  {
    v2 = [a1 name];
    v3 = sub_1CA94C3A8();
    v5 = v4;

    MEMORY[0x1CCAA1300](v3, v5);

    return 0x657669746167656ELL;
  }

  else
  {
    v7 = [a1 name];
    v6 = sub_1CA94C3A8();
  }

  return v6;
}

id RowTemplateFindFilterParameterState.subject.getter()
{
  OUTLINED_FUNCTION_9_37();
  v1 = sub_1CA6654A8(v0);
  sub_1CA665128(v1, v2 & 1);

  OUTLINED_FUNCTION_52_0();
  v3 = sub_1CA94C368();

  v4 = [objc_allocWithZone(WFStringSubstitutableState) initWithValue_];

  return v4;
}

void RowTemplateFindFilterParameterState.subject.setter(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10, uint64_t a11, uint64_t a12, __int128 a13, __int128 a14, __int128 a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  OUTLINED_FUNCTION_43_0();
  if (v31)
  {
    v50 = v31;
    v32 = [v31 value];
    if (v32)
    {
      v33 = v32;
      sub_1CA664E78();
      v35 = v34;
      v36 = 0;
      v37 = *(v34 + 16);
      for (i = (v34 + 40); ; i += 16)
      {
        if (v37 == v36)
        {

          goto LABEL_16;
        }

        if (v36 >= *(v35 + 16))
        {
          break;
        }

        v39 = *(i - 1);
        if (*i)
        {
          v40 = [v39 name];
          sub_1CA94C3A8();
          OUTLINED_FUNCTION_165();

          MEMORY[0x1CCAA1300](v29, v30);

          v42 = 0x657669746167656ELL;
          v41 = 0xE90000000000002DLL;
        }

        else
        {
          v43 = [v39 name];
          v42 = sub_1CA94C3A8();
          v41 = v44;
        }

        v45 = sub_1CA94C3A8();
        v30 = v46;
        if (v42 == v45 && v41 == v46)
        {

LABEL_18:

          sub_1CA6655C0(v39);

          goto LABEL_19;
        }

        v29 = sub_1CA94D7F8();

        if (v29)
        {
          goto LABEL_18;
        }

        ++v36;
      }

      __break(1u);
    }

    else
    {
LABEL_19:
      OUTLINED_FUNCTION_42_0();
    }
  }

  else
  {
LABEL_16:
    OUTLINED_FUNCTION_42_0();
  }
}

void *sub_1CA6654A8(uint64_t a1)
{
  v2 = *(v1 + 8);
  if (sub_1CA94CD98() && [swift_getObjCClassFromMetadata() tableTemplateSubjectType] == 1 && sub_1CA323E28())
  {
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (v3 && (v4 = [v3 numberSubstitutableState], v5 = objc_msgSend(v4, sel_number), v4, v5))
    {
      v8 = 2;
      MEMORY[0x1CCAA1610](v5, &v8);

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  v6 = v2;
  return v2;
}

void *RowTemplateFindFilterParameterState.subject.modify(void *a1)
{
  a1[1] = v1;
  OUTLINED_FUNCTION_9_37();
  v4 = sub_1CA6654A8(v3);
  sub_1CA665128(v4, v5 & 1);

  v6 = sub_1CA94C368();

  v7 = [objc_allocWithZone(WFStringSubstitutableState) initWithValue_];

  *a1 = v7;
  return &sub_1CA665868;
}

uint64_t RowTemplateFindFilterParameterState.parameterState(key:)(uint64_t a1, uint64_t a2)
{
  if (*(*(v2 + 24) + 16) && (sub_1CA271BF8(a1, a2), (v3 & 1) != 0))
  {
    return swift_unknownObjectRetain();
  }

  else
  {
    return 0;
  }
}

uint64_t RowTemplateFindFilterParameterState.setParameterState(_:key:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    swift_getObjectType();
    v6 = swift_unknownObjectRetain();

    return sub_1CA43FF40(v6, a2, a3, (v3 + 24));
  }

  else
  {
    result = sub_1CA271BF8(a2, a3);
    if (v8)
    {
      swift_isUniquelyReferenced_nonNull_native();
      v9 = *(v3 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4457E0, &qword_1CA990910);
      sub_1CA94D588();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446010, &unk_1CA987B90);
      sub_1CA94D5A8();
      result = swift_unknownObjectRelease();
      *(v3 + 24) = v9;
    }
  }

  return result;
}

uint64_t RowTemplateFindFilterParameterState.hashValue.getter()
{
  sub_1CA94D918();
  RowTemplateFindFilterParameterState.hash(into:)(v1);
  return sub_1CA94D968();
}

uint64_t sub_1CA665A9C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1CA32C284;

  return RowTemplateFindFilterParameterState.process(context:)(a1);
}

void *sub_1CA665B5C(id *a1)
{
  a1[1] = v1;
  *a1 = RowTemplateFindFilterParameterState.subject.getter();
  return &sub_1CA665868;
}

uint64_t sub_1CA665BC8@<X0>(uint64_t *a1@<X8>)
{
  result = RowTemplateFindFilterParameterState.selectedOperator.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1CA665C30(uint64_t a1)
{
  sub_1CA94D918();
  RowTemplateFindFilterParameterState.hash(into:)(v2);
  return sub_1CA94D968();
}

void *sub_1CA665C70(int a1, id a2, char a3)
{
  if ([a2 hasPossibleValues])
  {

    return sub_1CA666738(a2, a3 & 1);
  }

  else
  {
    if (!sub_1CA94CD98())
    {
      return MEMORY[0x1E69E7CC0];
    }

    switch([swift_getObjCClassFromMetadata() tableTemplateSubjectType])
    {
      case 2uLL:
        sub_1CA94CD98();
        v6 = sub_1CA511FA8();
        if (v6 == 1)
        {
          v7 = 0x656E6F6850;
          v8 = a3 & 1;
          v9 = 0xE500000000000000;
          v10 = 1;
        }

        else if (v6 == 2)
        {
          v7 = 0x6C69616D45;
          v8 = a3 & 1;
          v9 = 0xE500000000000000;
          v10 = 2;
        }

        else
        {
          v10 = v6;
          v7 = 0x676E69727453;
          v8 = a3 & 1;
          v9 = 0xE600000000000000;
        }

        return sub_1CA66A7AC(v7, v9, v10, a2, v8);
      case 3uLL:

        return sub_1CA6698A8(0x7265626D754ELL, 0xE600000000000000, 1, a2, a3 & 1);
      case 4uLL:
        *&v54 = 1702125892;
        *(&v54 + 1) = 0xE400000000000000;
        *&v55 = [a2 timeUnits];
        *(&v55 + 1) = [a2 comparableUnits];
        v56 = 0u;
        v57 = 0u;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443940, &unk_1CA982570);
        v13 = swift_allocObject();
        *(v13 + 16) = xmmword_1CA981310;
        *(v13 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447C20, &unk_1CA991670);
        *(v13 + 64) = sub_1CA66C8A8();
        v14 = swift_allocObject();
        *(v13 + 32) = v14;
        v15 = v55;
        v14[1] = v54;
        v14[2] = v15;
        v16 = v57;
        v14[3] = v56;
        v14[4] = v16;
        v53 = v13;
        if ((a3 & 1) == 0)
        {
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1CA9813C0;
          *(inited + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447C30, &unk_1CA98F860);
          *(inited + 64) = sub_1CA66C924();
          v18 = swift_allocObject();
          *(inited + 32) = v18;
          v19 = v55;
          v20 = v54;
          v18[1] = v54;
          v18[2] = v19;
          v21 = v57;
          v22 = v56;
          v18[3] = v56;
          v18[4] = v21;
          *&__src[7] = v20;
          *&__src[23] = v19;
          *&__src[39] = v22;
          *&__src[55] = v21;
          *(inited + 96) = &type metadata for DateFilterOperator;
          v23 = sub_1CA66C9E8();
          *(inited + 104) = v23;
          v24 = swift_allocObject();
          *(inited + 72) = v24;
          *(v24 + 16) = 1;
          memcpy((v24 + 17), __src, 0x47uLL);
          *&v52[7] = v54;
          *&v52[23] = v55;
          *&v52[39] = v56;
          *&v52[55] = v57;
          *(inited + 136) = &type metadata for DateFilterOperator;
          *(inited + 144) = v23;
          v25 = swift_allocObject();
          *(inited + 112) = v25;
          *(v25 + 16) = 0;
          memcpy((v25 + 17), v52, 0x47uLL);
          sub_1CA5C3564(&v54, v50);
          sub_1CA5C3564(&v54, v50);
          sub_1CA5C3564(&v54, v50);
          sub_1CA2B7CAC(inited);
        }

        v26 = swift_allocObject();
        *(v26 + 16) = xmmword_1CA97EDF0;
        *(v26 + 56) = &type metadata for DateIsTodayOperator;
        *(v26 + 64) = sub_1CA66CA3C();
        v27 = [a2 timeUnits];
        v28 = [a2 comparableUnits];
        v29 = [a2 timeUnits];
        v30 = [a2 comparableUnits];
        *(v26 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447C50, &qword_1CA991680);
        *(v26 + 104) = sub_1CA66CA90();
        v31 = swift_allocObject();
        *(v26 + 72) = v31;
        *(v31 + 16) = 1702125892;
        *(v31 + 24) = 0xE400000000000000;
        *(v31 + 32) = v27;
        *(v31 + 40) = v28;
        *(v31 + 48) = xmmword_1CA9908F0;
        *(v31 + 64) = 0;
        *(v31 + 72) = 0;
        *(v31 + 80) = 0x44726568746F6E41;
        *(v31 + 88) = 0xEB00000000657461;
        *(v31 + 96) = v29;
        *(v31 + 104) = v30;
        *(v31 + 112) = 0;
        *(v31 + 120) = 0;
        *(v31 + 128) = xmmword_1CA990900;
        sub_1CA2B7CAC(v26);
        WFContentProperty.displayableTimeUnits.getter();
        v33 = v32;
        if (([a2 tense] & 2) != 0)
        {
          v34 = v53;
          sub_1CA94C218();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1CA2E5678();
            v34 = v46;
          }

          v35 = v34[2];
          if (v35 >= v34[3] >> 1)
          {
            sub_1CA2E5678();
            v34 = v47;
          }

          *&v52[24] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447C70, &unk_1CA991690);
          *&v52[32] = sub_1CA66CB88();
          v36 = swift_allocObject();
          *(v36 + 16) = 0x7265626D754ELL;
          *(v36 + 24) = 0xE600000000000000;
          *(v36 + 32) = 1;
          *(v36 + 40) = 1953066581;
          *(v36 + 48) = 0xE400000000000000;
          *v52 = v36;
          *(v36 + 56) = v33;
          v34[2] = v35 + 1;
          sub_1CA27F268(v52, &v34[5 * v35 + 4]);
          v53 = v34;
        }

        if ([a2 tense])
        {
          v11 = v53;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1CA2E5678();
            v11 = v48;
          }

          v41 = v11[2];
          if (v41 >= v11[3] >> 1)
          {
            sub_1CA2E5678();
            v11 = v49;
          }

          *&v52[24] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447C60, &qword_1CA991688);
          *&v52[32] = sub_1CA66CB0C();
          v42 = swift_allocObject();
          *(v42 + 16) = 0x7265626D754ELL;
          *(v42 + 24) = 0xE600000000000000;
          *(v42 + 32) = 1;
          *(v42 + 40) = 1953066581;
          *(v42 + 48) = 0xE400000000000000;
          *v52 = v42;
          *(v42 + 56) = v33;
          v11[2] = v41 + 1;
          sub_1CA27F268(v52, &v11[5 * v41 + 4]);
        }

        else
        {

          return v53;
        }

        return v11;
      case 5uLL:
        v37 = [a2 measurementUnitType];
        if (!v37)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v38 = v37;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443940, &unk_1CA982570);
        if (a3)
        {
          v11 = swift_allocObject();
          *(v11 + 1) = xmmword_1CA981310;
          v11[7] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447C00, &qword_1CA991660);
          v11[8] = sub_1CA66C770();
          v39 = swift_allocObject();
          v11[4] = v39;
          *(v39 + 16) = 0x7265626D754ELL;
          *(v39 + 24) = 0xE600000000000000;
          *(v39 + 32) = 1;
          *(v39 + 40) = 0x6D6572757361654DLL;
          *(v39 + 48) = 0xEF74696E55746E65;
          goto LABEL_32;
        }

        v11 = swift_allocObject();
        *(v11 + 1) = xmmword_1CA97EDF0;
        v11[7] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447C00, &qword_1CA991660);
        v11[8] = sub_1CA66C770();
        v43 = swift_allocObject();
        v11[4] = v43;
        *(v43 + 16) = 0x7265626D754ELL;
        *(v43 + 24) = 0xE600000000000000;
        *(v43 + 32) = 1;
        *(v43 + 40) = 0x6D6572757361654DLL;
        *(v43 + 48) = 0xEF74696E55746E65;
        *(v43 + 56) = v38;
        v11[12] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447C10, &qword_1CA991668);
        v11[13] = sub_1CA66C7EC();
        v44 = swift_allocObject();
        v11[9] = v44;
        *(v44 + 16) = 0x7265626D754ELL;
        *(v44 + 24) = 0xE600000000000000;
        *(v44 + 32) = 1;
        *(v44 + 40) = 0x6D6572757361654DLL;
        *(v44 + 48) = 0xEF74696E55746E65;
        *(v44 + 56) = v38;
        v45 = v38;
        break;
      case 6uLL:
        *v52 = 0x7265626D754ELL;
        *&v52[8] = 0xE600000000000000;
        v52[16] = 0;
        strcpy(&v52[24], "ByteCountUnit");
        *&v52[38] = -4864;
        if ((a3 & 1) == 0)
        {
          return sub_1CA669C90(v52, a2, 0);
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443940, &unk_1CA982570);
        v11 = swift_allocObject();
        *(v11 + 1) = xmmword_1CA981310;
        v11[7] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447BF0, &qword_1CA991658);
        v11[8] = sub_1CA66C6F4();
        v12 = swift_allocObject();
        v11[4] = v12;
        *(v12 + 16) = 0x7265626D754ELL;
        *(v12 + 24) = 0xE600000000000000;
        *(v12 + 32) = 0;
        strcpy((v12 + 40), "ByteCountUnit");
        *(v12 + 54) = -4864;
        return v11;
      case 7uLL:
        WFContentProperty.displayableTimeUnits.getter();
        v38 = v40;
        *v52 = 0x7265626D754ELL;
        *&v52[8] = 0xE600000000000000;
        v52[16] = 0;
        *&v52[24] = 1953066581;
        *&v52[32] = 0xE400000000000000;
        *&v52[40] = v40;
        if (a3)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443940, &unk_1CA982570);
          v11 = swift_allocObject();
          *(v11 + 1) = xmmword_1CA981310;
          v11[7] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447BE0, &qword_1CA991650);
          v11[8] = sub_1CA66C678();
          v39 = swift_allocObject();
          v11[4] = v39;
          *(v39 + 16) = 0x7265626D754ELL;
          *(v39 + 24) = 0xE600000000000000;
          *(v39 + 32) = 0;
          *(v39 + 40) = 1953066581;
          *(v39 + 48) = 0xE400000000000000;
LABEL_32:
          *(v39 + 56) = v38;
        }

        else
        {
          v11 = sub_1CA66A180(v52, a2, 0);
        }

        break;
      case 8uLL:
        result = sub_1CA94D5F8();
        __break(1u);
        return result;
      default:
        return MEMORY[0x1E69E7CC0];
    }

    return v11;
  }
}

uint64_t sub_1CA666738(void *a1, int a2)
{
  v84 = a2;
  v79 = sub_1CA949F78();
  v3 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v5 = &v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = MEMORY[0x1E69E7CC0];
  v6 = [a1 propertyClasses];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444880, &qword_1CA984340);
  v7 = sub_1CA94C658();

  v8 = *(v7 + 16);
  if (v8)
  {
    v78 = v5;
    v85 = sub_1CA25B3D0(0, &qword_1EDB9F5E0, 0x1E696AD98);
    v86 = 0;
    v77 = (v3 + 8);
    v76 = *MEMORY[0x1E69E1078];
    v9 = 32;
    v81 = xmmword_1CA981310;
    *(&v10 + 1) = 4;
    v80 = xmmword_1CA97EDF0;
    *&v10 = 136315138;
    v75 = v10;
    v11 = &selRef_isInputParameter;
    v82 = v7;
    v83 = a1;
    while (1)
    {
      v12 = *(v7 + v9);
      if (v12 == v85)
      {
        sub_1CA94C438("Value", 5);
        if (qword_1EDB9F5F0 != -1)
        {
          swift_once();
        }

        v25 = qword_1EDB9F690;
        v26 = sub_1CA94C368();
        v27 = sub_1CA94C368();

        v28 = [v25 localizedStringForKey:v26 value:v27 table:0];

        v29 = sub_1CA94C3A8();
        v31 = v30;

        v32 = swift_allocObject();
        *(v32 + 16) = a1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443940, &unk_1CA982570);
        if ((v84 & 1) == 0)
        {
          v24 = swift_allocObject();
          *(v24 + 16) = v80;
          *(v24 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447CD8, &qword_1CA991740);
          *(v24 + 64) = sub_1CA66D194();
          v43 = swift_allocObject();
          *(v24 + 32) = v43;
          v43[2] = &type metadata for RowTemplateFindFilterParameterState.EnumerationNumberValueKey;
          v43[3] = v29;
          v43[4] = v31;
          v43[5] = &unk_1CA991730;
          v43[6] = v32;
          v43[7] = sub_1CA6678DC;
          v43[8] = 0;
          v43[9] = &unk_1CA991738;
          v43[10] = 0;
          *(v24 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447CE8, &unk_1CA991748);
          *(v24 + 104) = sub_1CA66D210();
          v44 = swift_allocObject();
          *(v24 + 72) = v44;
          v44[2] = &type metadata for RowTemplateFindFilterParameterState.EnumerationNumberValueKey;
          v44[3] = v29;
          v44[4] = v31;
          v44[5] = &unk_1CA991730;
          v44[6] = v32;
          v44[7] = sub_1CA6678DC;
          v44[8] = 0;
          v44[9] = &unk_1CA991738;
          goto LABEL_36;
        }

        v24 = swift_allocObject();
        *(v24 + 16) = v81;
        *(v24 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447CD8, &qword_1CA991740);
        *(v24 + 64) = sub_1CA66D194();
        v33 = swift_allocObject();
        *(v24 + 32) = v33;
        v33[2] = &type metadata for RowTemplateFindFilterParameterState.EnumerationNumberValueKey;
        v33[3] = v29;
        v33[4] = v31;
        v33[5] = &unk_1CA991730;
        v33[6] = v32;
        v33[7] = sub_1CA6678DC;
        v33[8] = 0;
        v34 = &unk_1CA991738;
      }

      else if (v12 == sub_1CA25B3D0(0, &qword_1EDB9F758, 0x1E696EA50))
      {
        sub_1CA94C438("Value", 5);
        if (qword_1EDB9F5F0 != -1)
        {
          swift_once();
        }

        v35 = qword_1EDB9F690;
        v36 = sub_1CA94C368();
        v37 = sub_1CA94C368();

        v38 = [v35 localizedStringForKey:v36 value:v37 table:0];

        v39 = sub_1CA94C3A8();
        v41 = v40;

        v42 = swift_allocObject();
        *(v42 + 16) = a1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443940, &unk_1CA982570);
        if ((v84 & 1) == 0)
        {
          v24 = swift_allocObject();
          *(v24 + 16) = v80;
          *(v24 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447CB8, &qword_1CA991718);
          *(v24 + 64) = sub_1CA66D014();
          v55 = swift_allocObject();
          *(v24 + 32) = v55;
          v56 = &type metadata for RowTemplateFindFilterParameterState.EnumerationSpeakableStringValueKey;
          v55[2] = &type metadata for RowTemplateFindFilterParameterState.EnumerationSpeakableStringValueKey;
          v55[3] = v39;
          v57 = &unk_1CA991708;
          v55[4] = v41;
          v55[5] = &unk_1CA991708;
          v58 = sub_1CA667DC0;
          v55[6] = v42;
          v55[7] = sub_1CA667DC0;
          v59 = &unk_1CA991710;
          v55[8] = 0;
          v55[9] = &unk_1CA991710;
          v55[10] = 0;
          *(v24 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447CC8, &qword_1CA991720);
          *(v24 + 104) = sub_1CA66D090();
          goto LABEL_35;
        }

        v24 = swift_allocObject();
        *(v24 + 16) = v81;
        *(v24 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447CB8, &qword_1CA991718);
        *(v24 + 64) = sub_1CA66D014();
        v33 = swift_allocObject();
        *(v24 + 32) = v33;
        v33[2] = &type metadata for RowTemplateFindFilterParameterState.EnumerationSpeakableStringValueKey;
        v33[3] = v39;
        v33[4] = v41;
        v33[5] = &unk_1CA991708;
        v33[6] = v42;
        v33[7] = sub_1CA667DC0;
        v33[8] = 0;
        v34 = &unk_1CA991710;
      }

      else if (v12 == sub_1CA25B3D0(0, &qword_1EDB9FAC0, 0x1E696AEC0))
      {
        sub_1CA94C438("Value", 5);
        if (qword_1EDB9F5F0 != -1)
        {
          swift_once();
        }

        v45 = qword_1EDB9F690;
        v46 = sub_1CA94C368();
        v47 = sub_1CA94C368();

        v48 = [v45 localizedStringForKey:v46 value:v47 table:0];

        v39 = sub_1CA94C3A8();
        v41 = v49;

        v42 = swift_allocObject();
        *(v42 + 16) = a1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443940, &unk_1CA982570);
        if ((v84 & 1) == 0)
        {
          v24 = swift_allocObject();
          *(v24 + 16) = v80;
          *(v24 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447C98, &qword_1CA9916F0);
          *(v24 + 64) = sub_1CA66CE94();
          v60 = swift_allocObject();
          *(v24 + 32) = v60;
          v56 = &type metadata for RowTemplateFindFilterParameterState.EnumerationStringValueKey;
          v60[2] = &type metadata for RowTemplateFindFilterParameterState.EnumerationStringValueKey;
          v60[3] = v39;
          v57 = &unk_1CA9916E0;
          v60[4] = v41;
          v60[5] = &unk_1CA9916E0;
          v58 = sub_1CA668280;
          v60[6] = v42;
          v60[7] = sub_1CA668280;
          v59 = &unk_1CA9916E8;
          v60[8] = 0;
          v60[9] = &unk_1CA9916E8;
          v60[10] = 0;
          *(v24 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447CA8, &qword_1CA9916F8);
          *(v24 + 104) = sub_1CA66CF10();
          goto LABEL_35;
        }

        v24 = swift_allocObject();
        *(v24 + 16) = v81;
        *(v24 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447C98, &qword_1CA9916F0);
        *(v24 + 64) = sub_1CA66CE94();
        v33 = swift_allocObject();
        *(v24 + 32) = v33;
        v33[2] = &type metadata for RowTemplateFindFilterParameterState.EnumerationStringValueKey;
        v33[3] = v39;
        v33[4] = v41;
        v33[5] = &unk_1CA9916E0;
        v33[6] = v42;
        v33[7] = sub_1CA668280;
        v33[8] = 0;
        v34 = &unk_1CA9916E8;
      }

      else
      {
        sub_1CA25B3D0(0, &unk_1EC441810, off_1E836E808);
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v14 = swift_getObjCClassFromMetadata();
        if ([v14 v11[68]])
        {
          sub_1CA94C438("Value", 5);
          if (qword_1EDB9F5F0 != -1)
          {
            swift_once();
          }

          v15 = qword_1EDB9F690;
          v16 = sub_1CA94C368();
          v17 = sub_1CA94C368();

          v18 = [v15 localizedStringForKey:v16 value:v17 table:0];

          v19 = sub_1CA94C3A8();
          v21 = v20;

          v22 = swift_allocObject();
          a1 = v83;
          *(v22 + 16) = v83;
          *(v22 + 24) = v12;
          __src[0] = &type metadata for RowTemplateFindFilterParameterState.EnumerationLinkValueKey;
          __src[1] = v19;
          __src[2] = v21;
          __src[3] = &unk_1CA9916D0;
          __src[4] = v22;
          __src[5] = sub_1CA66E3D4;
          __src[6] = 0;
          __src[7] = &unk_1CA9916B0;
          __src[8] = 0;
          v23 = a1;
          v24 = sub_1CA6687E0(__src);

          goto LABEL_38;
        }

        sub_1CA25B3D0(0, &unk_1EC4417A0, off_1E836E818);
        if (![v14 v11[68]])
        {
          v61 = v78;
          sub_1CA949C58();
          v62 = sub_1CA949F68();
          v63 = sub_1CA94CC18();
          if (os_log_type_enabled(v62, v63))
          {
            v64 = swift_slowAlloc();
            v65 = swift_slowAlloc();
            v87 = v65;
            *v64 = v75;
            v66 = sub_1CA94DA18();
            v68 = sub_1CA26B54C(v66, v67, &v87);

            *(v64 + 4) = v68;
            v11 = &selRef_isInputParameter;
            _os_log_impl(&dword_1CA256000, v62, v63, "Unexpected property class %s in Find/Filter parameter state.", v64, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v65);
            v69 = v65;
            a1 = v83;
            MEMORY[0x1CCAA4BF0](v69, -1, -1);
            MEMORY[0x1CCAA4BF0](v64, -1, -1);
          }

          (*v77)(v61, v79);
          v7 = v82;
          goto LABEL_39;
        }

        sub_1CA94C438("Value", 5);
        if (qword_1EDB9F5F0 != -1)
        {
          swift_once();
        }

        v50 = qword_1EDB9F690;
        v51 = sub_1CA94C368();
        v52 = sub_1CA94C368();

        v53 = [v50 localizedStringForKey:v51 value:v52 table:0];

        v39 = sub_1CA94C3A8();
        v41 = v54;

        v42 = swift_allocObject();
        *(v42 + 16) = a1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443940, &unk_1CA982570);
        if ((v84 & 1) == 0)
        {
          v24 = swift_allocObject();
          *(v24 + 16) = v80;
          *(v24 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447C78, &qword_1CA9916B8);
          *(v24 + 64) = sub_1CA66CC8C();
          v70 = swift_allocObject();
          *(v24 + 32) = v70;
          v56 = &type metadata for RowTemplateFindFilterParameterState.EnumerationLinkValueKey;
          v70[2] = &type metadata for RowTemplateFindFilterParameterState.EnumerationLinkValueKey;
          v70[3] = v39;
          v57 = &unk_1CA9916A8;
          v70[4] = v41;
          v70[5] = &unk_1CA9916A8;
          v58 = sub_1CA66E3D4;
          v70[6] = v42;
          v70[7] = sub_1CA66E3D4;
          v59 = &unk_1CA9916B0;
          v70[8] = 0;
          v70[9] = &unk_1CA9916B0;
          v70[10] = 0;
          *(v24 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447C88, &qword_1CA9916C0);
          *(v24 + 104) = sub_1CA66CD08();
LABEL_35:
          v44 = swift_allocObject();
          *(v24 + 72) = v44;
          v44[2] = v56;
          v44[3] = v39;
          v44[4] = v41;
          v44[5] = v57;
          v44[6] = v42;
          v44[7] = v58;
          v44[8] = 0;
          v44[9] = v59;
LABEL_36:
          v7 = v82;
          a1 = v83;
          v44[10] = 0;
          sub_1CA94C218();

          goto LABEL_37;
        }

        v24 = swift_allocObject();
        *(v24 + 16) = v81;
        *(v24 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447C78, &qword_1CA9916B8);
        *(v24 + 64) = sub_1CA66CC8C();
        v33 = swift_allocObject();
        *(v24 + 32) = v33;
        v33[2] = &type metadata for RowTemplateFindFilterParameterState.EnumerationLinkValueKey;
        v33[3] = v39;
        v33[4] = v41;
        v33[5] = &unk_1CA9916A8;
        v33[6] = v42;
        v33[7] = sub_1CA66E3D4;
        v33[8] = 0;
        v34 = &unk_1CA9916B0;
      }

      v33[9] = v34;
      v33[10] = 0;
LABEL_37:
      v71 = a1;
      v11 = &selRef_isInputParameter;
LABEL_38:
      v72 = v86;
      v73 = sub_1CA6603A4(v24, &v88);
      v86 = v72;
      sub_1CA2B7CAC(v73);
LABEL_39:
      v9 += 8;
      if (!--v8)
      {

        return v88;
      }
    }
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1CA667650()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_87_5([*(v0 + 16) possibleValues]);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_70_12(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_6_1(v2);

  return WFContentPropertyPossibleValuesGetter.typedValues.getter();
}

uint64_t sub_1CA6676F4()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_13();
  *v4 = v3;
  OUTLINED_FUNCTION_85_7(v5);
  swift_unknownObjectRelease();
  v6 = OUTLINED_FUNCTION_85();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

void sub_1CA6677EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_39_1();
  v15 = 0;
  OUTLINED_FUNCTION_25_20();
LABEL_2:
  v16 = (v14 + 16 * v15);
  while (v13 != v15)
  {
    if (v15 >= *(v12 + 16))
    {
      __break(1u);
      return;
    }

    if (!*v16 && [objc_allocWithZone(WFNumberSubstitutableState) initWithNumber_])
    {
      MEMORY[0x1CCAA1490]();
      OUTLINED_FUNCTION_29_16();
      if (v18)
      {
        v19 = OUTLINED_FUNCTION_64(v17);
        OUTLINED_FUNCTION_59_7(v19);
      }

      OUTLINED_FUNCTION_40_10();
      goto LABEL_2;
    }

    v16 += 16;
    ++v15;
  }

  OUTLINED_FUNCTION_4_38();
  OUTLINED_FUNCTION_23_0();

  v22(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
}

uint64_t sub_1CA6678DC(void *a1)
{
  v2 = sub_1CA949F78();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [a1 value];
  if (v6 && (v7 = v6, v8 = [v6 number], v7, v8))
  {
    v9 = [v8 stringValue];
    v10 = sub_1CA94C3A8();
  }

  else
  {
    sub_1CA949C58();
    v11 = a1;
    v12 = sub_1CA949F68();
    v13 = sub_1CA94CC08();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      *(v14 + 4) = v11;
      *v15 = v11;
      v16 = v11;
      _os_log_impl(&dword_1CA256000, v12, v13, "Unable to determine a display name for a number in %@.", v14, 0xCu);
      sub_1CA30F7DC(v15, &qword_1EC444AE0, &qword_1CA985B70);
      MEMORY[0x1CCAA4BF0](v15, -1, -1);
      MEMORY[0x1CCAA4BF0](v14, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    return 0x6E776F6E6B6E55;
  }

  return v10;
}

uint64_t sub_1CA667B30()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_87_5([*(v0 + 16) possibleValues]);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_70_12(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_6_1(v2);

  return WFContentPropertyPossibleValuesGetter.typedValues.getter();
}

uint64_t sub_1CA667BD4()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_13();
  *v4 = v3;
  OUTLINED_FUNCTION_85_7(v5);
  swift_unknownObjectRelease();
  v6 = OUTLINED_FUNCTION_85();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

void sub_1CA667CCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_39_1();
  v15 = 0;
  OUTLINED_FUNCTION_25_20();
LABEL_2:
  v16 = (v14 + 16 * v15);
  while (v13 != v15)
  {
    if (v15 >= *(v12 + 16))
    {
      __break(1u);
      return;
    }

    if (*v16 == 1 && [objc_allocWithZone(WFINSpeakableStringSubstitutableState) initWithValue_])
    {
      MEMORY[0x1CCAA1490]();
      OUTLINED_FUNCTION_29_16();
      if (v18)
      {
        v19 = OUTLINED_FUNCTION_64(v17);
        OUTLINED_FUNCTION_59_7(v19);
      }

      OUTLINED_FUNCTION_40_10();
      goto LABEL_2;
    }

    v16 += 16;
    ++v15;
  }

  OUTLINED_FUNCTION_4_38();
  OUTLINED_FUNCTION_23_0();

  v22(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
}

uint64_t sub_1CA667DC0(void *a1)
{
  v2 = sub_1CA949F78();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [a1 value];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 spokenPhrase];
    v9 = sub_1CA94C3A8();
  }

  else
  {
    sub_1CA949C58();
    v10 = a1;
    v11 = sub_1CA949F68();
    v12 = sub_1CA94CC08();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      *(v13 + 4) = v10;
      *v14 = v10;
      v15 = v10;
      _os_log_impl(&dword_1CA256000, v11, v12, "Unable to determine a display name for a speakable string in %@.", v13, 0xCu);
      sub_1CA30F7DC(v14, &qword_1EC444AE0, &qword_1CA985B70);
      MEMORY[0x1CCAA4BF0](v14, -1, -1);
      MEMORY[0x1CCAA4BF0](v13, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    return 0x6E776F6E6B6E55;
  }

  return v9;
}

uint64_t sub_1CA667FF0()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_87_5([*(v0 + 16) possibleValues]);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_70_12(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_6_1(v2);

  return WFContentPropertyPossibleValuesGetter.typedValues.getter();
}

uint64_t sub_1CA668094()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_13();
  *v4 = v3;
  OUTLINED_FUNCTION_85_7(v5);
  swift_unknownObjectRelease();
  v6 = OUTLINED_FUNCTION_85();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

void sub_1CA66818C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_39_1();
  v15 = 0;
  OUTLINED_FUNCTION_25_20();
LABEL_2:
  v16 = (v14 + 16 * v15);
  while (v13 != v15)
  {
    if (v15 >= *(v12 + 16))
    {
      __break(1u);
      return;
    }

    if (*v16 == 2 && [objc_allocWithZone(WFStringSubstitutableState) initWithValue_])
    {
      MEMORY[0x1CCAA1490]();
      OUTLINED_FUNCTION_29_16();
      if (v18)
      {
        v19 = OUTLINED_FUNCTION_64(v17);
        OUTLINED_FUNCTION_59_7(v19);
      }

      OUTLINED_FUNCTION_40_10();
      goto LABEL_2;
    }

    v16 += 16;
    ++v15;
  }

  OUTLINED_FUNCTION_4_38();
  OUTLINED_FUNCTION_23_0();

  v22(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
}

uint64_t sub_1CA668280(void *a1)
{
  v1 = [a1 value];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1CA94C3A8();
  v4 = v2;
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = [v5 localizedValue];
    if (v6)
    {
      v7 = v6;

      v3 = sub_1CA94C3A8();
    }
  }

  return v3;
}

uint64_t sub_1CA668344(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1CA668364, 0, 0);
}

uint64_t sub_1CA668364()
{
  OUTLINED_FUNCTION_0();
  *(v0 + 32) = [*(v0 + 16) possibleValues];
  swift_getObjectType();
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_6_1(v1);

  return WFContentPropertyPossibleValuesGetter.typedValues.getter();
}

uint64_t sub_1CA668414()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_13();
  *v4 = v3;
  *(v6 + 48) = v5;

  swift_unknownObjectRelease();
  v7 = OUTLINED_FUNCTION_85();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1CA668514()
{
  v1 = 0;
  v2 = *(v0 + 48);
  v23 = MEMORY[0x1E69E7CC0];
  v25 = MEMORY[0x1E69E7CC0];
  v3 = &unk_1EC441810;
  v4 = v2 + 40;
  v5 = off_1E836E808;
  v6 = *(v2 + 16);
LABEL_2:
  v7 = (v4 + 16 * v1);
  while (v6 != v1)
  {
    if (v1 >= *(v2 + 16))
    {
      __break(1u);
      return;
    }

    v8 = *(v7 - 1);
    v9 = *v7;
    if (v9 == 1)
    {
      sub_1CA25B3D0(0, v3, v5);
      if (!swift_dynamicCastMetatype())
      {
        goto LABEL_17;
      }

      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v11 = v8;
      if (![ObjCClassFromMetadata isNotes])
      {
        goto LABEL_16;
      }

      v15 = v5;
      v16 = v3;
      v17 = [ObjCClassFromMetadata entityMetadata];
      v18 = [v17 identifier];

      if (!v18)
      {
        sub_1CA94C3A8();
        v18 = sub_1CA94C368();
      }

      v19 = [ObjCClassFromMetadata isNoteFolderEntityIdentifier_];

      v3 = v16;
      v5 = v15;
      v0 = v24;
      if (!v19)
      {
LABEL_16:

        goto LABEL_17;
      }

      v20 = WFNotesFolderLinkValueFromIntentsValue(v11);
      v12 = [objc_allocWithZone(MEMORY[0x1E69ACEC8]) initWithValue:v20 indentationLevel:0];
    }

    else
    {
      if (v9 != 3)
      {
        goto LABEL_17;
      }

      v10 = objc_allocWithZone(MEMORY[0x1E69ACEC8]);
      v11 = v8;
      v12 = [v10 initWithValue:v11 indentationLevel:0];
    }

    v13 = [objc_allocWithZone(WFLinkDynamicOptionSubstitutableState) initWithValue_];

    if (v13)
    {
      MEMORY[0x1CCAA1490]();
      v21 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v21 >> 1)
      {
        OUTLINED_FUNCTION_64(v21);
        sub_1CA94C698();
      }

      ++v1;
      sub_1CA94C6E8();
      v23 = v25;
      v4 = v2 + 40;
      goto LABEL_2;
    }

LABEL_17:
    v7 += 16;
    ++v1;
  }

  v22 = *(v0 + 8);

  v22(v23);
}

uint64_t sub_1CA6687E0(char *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  v419 = v1;
  v4 = sub_1CA66AC54(v1);
  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v5 = v4;
  v6 = sub_1CA25B410(v4);
  v7 = 0;
  v8 = v5 & 0xC000000000000001;
  v439 = v5;
  v9 = v5 & 0xFFFFFFFFFFFFFF8;
  v10 = MEMORY[0x1E69E7CC0];
  while (v6 != v7)
  {
    if (v8)
    {
      v11 = MEMORY[0x1CCAA22D0](v7, v439);
    }

    else
    {
      if (v7 >= *(v9 + 16))
      {
        goto LABEL_102;
      }

      v11 = *(v439 + 8 * v7 + 32);
    }

    v12 = v11;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_102:
      __break(1u);
LABEL_103:
      __break(1u);
LABEL_104:
      v478[0] = 0;
      v478[1] = 0xE000000000000000;
      sub_1CA94D408();
      MEMORY[0x1CCAA1300](0xD00000000000005CLL, 0x80000001CA9DC020);
      v256 = WFDefaultLocalizedLabelForContentOperator();
      if (!v256)
      {
        __break(1u);
      }

      v257 = v256;
      v258 = sub_1CA94C3A8();
      v260 = v259;

      MEMORY[0x1CCAA1300](v258, v260);

      result = sub_1CA94D5F8();
      __break(1u);
      return result;
    }

    v13 = sub_1CA94C978();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1CA2E5734(0, *(v10 + 16) + 1, 1, v10);
      v10 = v16;
    }

    v15 = *(v10 + 16);
    v14 = *(v10 + 24);
    v2 = (v15 + 1);
    if (v15 >= v14 >> 1)
    {
      v17 = OUTLINED_FUNCTION_64(v14);
      sub_1CA2E5734(v17, v15 + 1, 1, v10);
      v10 = v18;
    }

    *(v10 + 16) = v2;
    *(v10 + 8 * v15 + 32) = v13;
    ++v7;
  }

  v19 = 0;
  v20 = *(v10 + 16);
  v21 = MEMORY[0x1E69E7CC0];
  *v340 = xmmword_1CA98EAF0;
  *v301 = xmmword_1CA98EB00;
  v399 = v20;
  while (v20 != v19)
  {
    if (v19 >= *(v10 + 16))
    {
      goto LABEL_103;
    }

    v22 = *(v10 + 8 * v19 + 32);
    switch(v22)
    {
      case 0:
        v485 = *(__src + 8);
        OUTLINED_FUNCTION_6_47();
        OUTLINED_FUNCTION_23_20(v23, v24, v25, v26, v27, v28, v29, v30, v261, v281, v301[0], v301[1], v340[0], v340[1], v379, v399, v419, v439, v459, *(&v459 + 1), v460, v461, v462, v463, v464, v465, v466, v467, *v468, v469, v470, v471, v472, v473, v474, v475, v476, v477, v478[0], v478[1], v478[2], v478[3], v478[4], v478[5], v478[6], v478[7], v478[8], v479, __srca[0]);
        sub_1CA5A3E5C(&v485, v478);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_2_61();
          v21 = v236;
        }

        OUTLINED_FUNCTION_10_34();
        if (v31)
        {
          OUTLINED_FUNCTION_3_56();
          v21 = v237;
        }

        v468[0] = 0;
        OUTLINED_FUNCTION_36_14(v468, v262, v282, v302, v321, v341, v360, v380, v400, v420, v440, v459, *(&v459 + 1), v460, v461, v462, v463, v464, v465, v466, v467, *v468, v469, v470, v471, v472, v473, v474, v475, v476, v477, v478[0], v478[1], v478[2], v478[3], v478[4], v478[5], v478[6], v478[7], v478[8], v479);
        v2 = &qword_1CA991788;
        v461 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447D68, &qword_1CA991788);
        v462 = sub_1CA66D684();
        OUTLINED_FUNCTION_66_6();
        v32 = swift_allocObject();
        OUTLINED_FUNCTION_41_14(v32, v33, v34, v35, v36, v37, v38, v39, v263, v283, v303, v322, v342, v361, v381, v401, v421, v441, v459, *(&v459 + 1), v460, v461, v462, v463, v464, v465, v466, v467);
        OUTLINED_FUNCTION_27_22();
        sub_1CA27F268(&v459, v40 + 32);
        LOBYTE(v478[0]) = 0;
        goto LABEL_51;
      case 1:
        v486 = *(__src + 8);
        OUTLINED_FUNCTION_6_47();
        OUTLINED_FUNCTION_23_20(v155, v156, v157, v158, v159, v160, v161, v162, v261, v281, v301[0], v301[1], v340[0], v340[1], v379, v399, v419, v439, v459, *(&v459 + 1), v460, v461, v462, v463, v464, v465, v466, v467, *v468, v469, v470, v471, v472, v473, v474, v475, v476, v477, v478[0], v478[1], v478[2], v478[3], v478[4], v478[5], v478[6], v478[7], v478[8], v479, __srca[0]);
        sub_1CA5A3E5C(&v486, v478);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_2_61();
          v21 = v238;
        }

        OUTLINED_FUNCTION_10_34();
        if (v31)
        {
          OUTLINED_FUNCTION_3_56();
          v21 = v239;
        }

        v468[0] = 1;
        OUTLINED_FUNCTION_36_14(v468, v275, v295, v315, v334, v354, v373, v393, v413, v433, v453, v459, *(&v459 + 1), v460, v461, v462, v463, v464, v465, v466, v467, *v468, v469, v470, v471, v472, v473, v474, v475, v476, v477, v478[0], v478[1], v478[2], v478[3], v478[4], v478[5], v478[6], v478[7], v478[8], v479);
        v2 = &qword_1EC447D68;
        v58 = &qword_1CA991788;
        v461 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447D68, &qword_1CA991788);
        v462 = sub_1CA66D684();
        OUTLINED_FUNCTION_66_6();
        v163 = swift_allocObject();
        OUTLINED_FUNCTION_41_14(v163, v164, v165, v166, v167, v168, v169, v170, v276, v296, v316, v335, v355, v374, v394, v414, v434, v454, v459, *(&v459 + 1), v460, v461, v462, v463, v464, v465, v466, v467);
        OUTLINED_FUNCTION_27_22();
        sub_1CA27F268(&v459, v171 + 32);
        LOBYTE(v478[0]) = 1;
        v172 = OUTLINED_FUNCTION_36_14(v478, v277, v297, v317, v336, v356, v375, v395, v415, v435, v455, v459, *(&v459 + 1), v460, v461, v462, v463, v464, v465, v466, v467, *v468, v469, v470, v471, v472, v473, v474, v475, v476, v477, v478[0], v478[1], v478[2], v478[3], v478[4], v478[5], v478[6], v478[7], v478[8], v479);
        v180 = OUTLINED_FUNCTION_63_11(v172, v173, v174, v175, v176, v177, v178, v179, v278, v298, v318, v337, v357, v376, v396, v416, v436, v456, v459, *(&v459 + 1), v460, v461, v462, v463, v464, v465, v466, v467, v468[0]);
        sub_1CA66DD4C(v180, v181, &qword_1EC447D68, &qword_1CA991788);
        v101 = &qword_1EC447D68;
        break;
      case 2:
        v483 = *(__src + 8);
        OUTLINED_FUNCTION_6_47();
        OUTLINED_FUNCTION_23_20(v127, v128, v129, v130, v131, v132, v133, v134, v261, v281, v301[0], v301[1], v340[0], v340[1], v379, v399, v419, v439, v459, *(&v459 + 1), v460, v461, v462, v463, v464, v465, v466, v467, *v468, v469, v470, v471, v472, v473, v474, v475, v476, v477, v478[0], v478[1], v478[2], v478[3], v478[4], v478[5], v478[6], v478[7], v478[8], v479, __srca[0]);
        sub_1CA5A3E5C(&v483, v478);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_2_61();
          v21 = v234;
        }

        OUTLINED_FUNCTION_10_34();
        if (v31)
        {
          OUTLINED_FUNCTION_3_56();
          v21 = v235;
        }

        v110 = 2;
        goto LABEL_50;
      case 3:
        v484 = *(__src + 8);
        OUTLINED_FUNCTION_6_47();
        OUTLINED_FUNCTION_23_20(v102, v103, v104, v105, v106, v107, v108, v109, v261, v281, v301[0], v301[1], v340[0], v340[1], v379, v399, v419, v439, v459, *(&v459 + 1), v460, v461, v462, v463, v464, v465, v466, v467, *v468, v469, v470, v471, v472, v473, v474, v475, v476, v477, v478[0], v478[1], v478[2], v478[3], v478[4], v478[5], v478[6], v478[7], v478[8], v479, __srca[0]);
        sub_1CA5A3E5C(&v484, v478);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_2_61();
          v21 = v231;
        }

        OUTLINED_FUNCTION_10_34();
        if (v31)
        {
          OUTLINED_FUNCTION_3_56();
          v21 = v232;
        }

        v110 = 3;
LABEL_50:
        v468[0] = v110;
        OUTLINED_FUNCTION_36_14(v468, v271, v291, v311, v330, v350, v369, v389, v409, v429, v449, v459, *(&v459 + 1), v460, v461, v462, v463, v464, v465, v466, v467, *v468, v469, v470, v471, v472, v473, v474, v475, v476, v477, v478[0], v478[1], v478[2], v478[3], v478[4], v478[5], v478[6], v478[7], v478[8], v479);
        v2 = &qword_1CA991788;
        v461 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447D68, &qword_1CA991788);
        v462 = sub_1CA66D684();
        OUTLINED_FUNCTION_66_6();
        v135 = swift_allocObject();
        OUTLINED_FUNCTION_41_14(v135, v136, v137, v138, v139, v140, v141, v142, v273, v293, v313, v332, v352, v371, v391, v411, v431, v451, v459, *(&v459 + 1), v460, v461, v462, v463, v464, v465, v466, v467);
        OUTLINED_FUNCTION_27_22();
        sub_1CA27F268(&v459, v143 + 32);
        LOBYTE(v478[0]) = v110;
LABEL_51:
        v144 = OUTLINED_FUNCTION_36_14(v478, v264, v284, v304, v323, v343, v362, v382, v402, v422, v442, v459, *(&v459 + 1), v460, v461, v462, v463, v464, v465, v466, v467, *v468, v469, v470, v471, v472, v473, v474, v475, v476, v477, v478[0], v478[1], v478[2], v478[3], v478[4], v478[5], v478[6], v478[7], v478[8], v479);
        v152 = OUTLINED_FUNCTION_63_11(v144, v145, v146, v147, v148, v149, v150, v151, v274, v294, v314, v333, v353, v372, v392, v412, v432, v452, v459, *(&v459 + 1), v460, v461, v462, v463, v464, v465, v466, v467, v468[0]);
        sub_1CA66DD4C(v152, v153, &qword_1EC447D68, &qword_1CA991788);
        v101 = &qword_1EC447D68;
        v154 = &qword_1CA991788;
        goto LABEL_74;
      case 4:
        v481 = *(__src + 8);
        OUTLINED_FUNCTION_6_47();
        sub_1CA5A3E5C(&v481, v478);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_2_61();
          v21 = v242;
        }

        OUTLINED_FUNCTION_13_36();
        if (v31)
        {
          OUTLINED_FUNCTION_3_56();
          v21 = v243;
        }

        v478[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447C78, &qword_1CA9916B8);
        v478[4] = sub_1CA66CC8C();
        goto LABEL_95;
      case 5:
        v482 = *(__src + 8);
        OUTLINED_FUNCTION_6_47();
        sub_1CA5A3E5C(&v482, v478);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_2_61();
          v21 = v240;
        }

        OUTLINED_FUNCTION_13_36();
        if (v31)
        {
          OUTLINED_FUNCTION_3_56();
          v21 = v241;
        }

        v478[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447C88, &qword_1CA9916C0);
        v478[4] = sub_1CA66CD08();
LABEL_95:
        v478[0] = swift_allocObject();
        v223 = memcpy((v478[0] + 16), __dst, 0x48uLL);
LABEL_96:
        OUTLINED_FUNCTION_57_11(v223, v224, v225, v226, v227, v228, v229, v230, v261, v281, v301[0], v301[1], v340[0], v340[1], v379, v399, v419, v439, v459, *(&v459 + 1), v460, v461, v462, v463, v464, v465, v466, v467, *v468, v469, v470, v471, v472, v473, v474, v475, v476, v477, *v478);
        goto LABEL_97;
      case 6:
      case 7:
        goto LABEL_104;
      case 8:
        [v419 caseInsensitive];
        v489 = OUTLINED_FUNCTION_64_9();
        OUTLINED_FUNCTION_12_32(v182, v183, v184, v185, v186, v187, v188, v189, v261, v281, v301[0], v301[1], v340[0], v340[1], v379, v399, v419, v439, v459, *(&v459 + 1), v460, v461, v462, v463, v464, v465, v466, v467, *v468, v469, v470, v471, v472, v473, v474, v475, v476, v477, v478[0], v478[1], v478[2], v478[3], v478[4], v478[5], v478[6], v478[7], v478[8], v479);
        sub_1CA5A3E5C(&v489, v478);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_2_61();
          v21 = v244;
        }

        OUTLINED_FUNCTION_10_34();
        v20 = v417;
        if (v31)
        {
          OUTLINED_FUNCTION_3_56();
          v21 = v190;
        }

        OUTLINED_FUNCTION_46_12(v190, v191, v192, v193, v194, v195, v196, v197, v279, v299, v319, v338, v358, v377, v397, v417, v437, v457, v459, *(&v459 + 1), v460, v461, v462, v463, v464, v465, v466, v467, v468[0], v469, v470, v471, v472, v473, v474, v475, v476, v477, v478[0], v478[1], v478[2], v478[3], v478[4], v478[5], v478[6], v478[7], v478[8], v479);
        LOBYTE(v477) = v2;
        v57 = &qword_1EC447D38;
        v58 = &qword_1CA991770;
        v478[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447D38, &qword_1CA991770);
        v478[4] = sub_1CA66D4B4();
        goto LABEL_72;
      case 9:
        [v419 caseInsensitive];
        v490 = OUTLINED_FUNCTION_64_9();
        OUTLINED_FUNCTION_12_32(v111, v112, v113, v114, v115, v116, v117, v118, v261, v281, v301[0], v301[1], v340[0], v340[1], v379, v399, v419, v439, v459, *(&v459 + 1), v460, v461, v462, v463, v464, v465, v466, v467, *v468, v469, v470, v471, v472, v473, v474, v475, v476, v477, v478[0], v478[1], v478[2], v478[3], v478[4], v478[5], v478[6], v478[7], v478[8], v479);
        sub_1CA5A3E5C(&v490, v478);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_2_61();
          v21 = v233;
        }

        OUTLINED_FUNCTION_10_34();
        v20 = v410;
        if (v31)
        {
          OUTLINED_FUNCTION_3_56();
          v21 = v119;
        }

        OUTLINED_FUNCTION_46_12(v119, v120, v121, v122, v123, v124, v125, v126, v272, v292, v312, v331, v351, v370, v390, v410, v430, v450, v459, *(&v459 + 1), v460, v461, v462, v463, v464, v465, v466, v467, v468[0], v469, v470, v471, v472, v473, v474, v475, v476, v477, v478[0], v478[1], v478[2], v478[3], v478[4], v478[5], v478[6], v478[7], v478[8], v479);
        LOBYTE(v477) = v2;
        v57 = &qword_1EC447D28;
        v58 = &qword_1CA991768;
        v478[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447D28, &qword_1CA991768);
        v478[4] = sub_1CA66D438();
LABEL_72:
        v198 = swift_allocObject();
        OUTLINED_FUNCTION_79_6(v198, v199, v200, v201, v202, v203, v204, v205, v266, v286, v306, v325, v345, v364, v384, v404, v424, v444, v459, *(&v459 + 1), v460, v461, v462, v463, v464, v465, v466, v467, *v468, v469, v470, v471, v472, v473, v474, v475, v476, v477, v478[0]);
        OUTLINED_FUNCTION_27_22();
        sub_1CA27F268(v478, v206 + 32);
        v207 = memcpy(v478, __srca, sizeof(v478));
        LOBYTE(v479) = v2;
        v215 = OUTLINED_FUNCTION_63_11(v207, v208, v209, v210, v211, v212, v213, v214, v280, v300, v320, v339, v359, v378, v398, v418, v438, v458, v459, *(&v459 + 1), v460, v461, v462, v463, v464, v465, v466, v467, v468[0]);
        sub_1CA66DD4C(v215, v216, v57, v58);
        v101 = v57;
        break;
      default:
        switch(v22)
        {
          case 999:
            [v419 caseInsensitive];
            v488 = OUTLINED_FUNCTION_64_9();
            OUTLINED_FUNCTION_12_32(v41, v42, v43, v44, v45, v46, v47, v48, v261, v281, v301[0], v301[1], v340[0], v340[1], v379, v399, v419, v439, v459, *(&v459 + 1), v460, v461, v462, v463, v464, v465, v466, v467, *v468, v469, v470, v471, v472, v473, v474, v475, v476, v477, v478[0], v478[1], v478[2], v478[3], v478[4], v478[5], v478[6], v478[7], v478[8], v479);
            sub_1CA5A3E5C(&v488, v478);

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              OUTLINED_FUNCTION_2_61();
              v21 = v251;
            }

            v20 = v403;
            OUTLINED_FUNCTION_10_34();
            if (v31)
            {
              OUTLINED_FUNCTION_3_56();
              v21 = v49;
            }

            OUTLINED_FUNCTION_46_12(v49, v50, v51, v52, v53, v54, v55, v56, v265, v285, v305, v324, v344, v363, v383, v403, v423, v443, v459, *(&v459 + 1), v460, v461, v462, v463, v464, v465, v466, v467, v468[0], v469, v470, v471, v472, v473, v474, v475, v476, v477, v478[0], v478[1], v478[2], v478[3], v478[4], v478[5], v478[6], v478[7], v478[8], v479);
            LOBYTE(v477) = v2;
            v57 = &qword_1EC447D48;
            v58 = &qword_1CA991778;
            v478[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447D48, &qword_1CA991778);
            v478[4] = sub_1CA66D530();
            goto LABEL_72;
          case 1000:
            v491 = *(__src + 8);
            OUTLINED_FUNCTION_6_47();
            sub_1CA5A3E5C(&v491, v478);

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              OUTLINED_FUNCTION_2_61();
              v21 = v252;
            }

            OUTLINED_FUNCTION_13_36();
            if (v31)
            {
              OUTLINED_FUNCTION_3_56();
              v21 = v253;
            }

            v478[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447D18, &qword_1CA991760);
            v478[4] = sub_1CA66D3BC();
            goto LABEL_95;
          case 1001:
            v492 = *(__src + 8);
            OUTLINED_FUNCTION_6_47();
            sub_1CA5A3E5C(&v492, v478);

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              OUTLINED_FUNCTION_2_61();
              v21 = v247;
            }

            OUTLINED_FUNCTION_13_36();
            if (v31)
            {
              OUTLINED_FUNCTION_3_56();
              v21 = v248;
            }

            v478[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447D08, &qword_1CA991758);
            v478[4] = sub_1CA66D340();
            goto LABEL_95;
          case 1002:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              OUTLINED_FUNCTION_2_61();
              v21 = v249;
            }

            OUTLINED_FUNCTION_13_36();
            if (v31)
            {
              OUTLINED_FUNCTION_3_56();
              v21 = v250;
            }

            v478[3] = &type metadata for DateIsTodayOperator;
            v223 = sub_1CA66CA3C();
            v478[4] = v223;
            goto LABEL_96;
          case 1003:
            v2 = [v419 timeUnits];
            v217 = [v419 comparableUnits];
            v218 = [v419 timeUnits];
            v219 = [v419 comparableUnits];
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              OUTLINED_FUNCTION_2_61();
              v21 = v245;
            }

            v221 = *(v21 + 16);
            v220 = *(v21 + 24);
            if (v221 >= v220 >> 1)
            {
              OUTLINED_FUNCTION_64(v220);
              sub_1CA2E5678();
              v21 = v246;
            }

            v478[3] = &type metadata for DateBetweenComparisonOperator;
            v478[4] = sub_1CA66D28C();
            v222 = swift_allocObject();
            v478[0] = v222;
            *(v222 + 16) = 0x657461444657;
            *(v222 + 24) = 0xE600000000000000;
            *(v222 + 32) = v2;
            *(v222 + 40) = v217;
            *(v222 + 48) = *v340;
            *(v222 + 64) = 0;
            *(v222 + 72) = 0;
            strcpy((v222 + 80), "WFAnotherDate");
            *(v222 + 94) = -4864;
            *(v222 + 96) = v218;
            *(v222 + 104) = v219;
            *(v222 + 112) = 0;
            *(v222 + 120) = 0;
            *(v222 + 128) = *v301;
            *(v21 + 16) = v221 + 1;
            sub_1CA27F268(v478, v21 + 40 * v221 + 32);
            v20 = v399;
            goto LABEL_97;
          default:
            if (v22 != 99)
            {
              goto LABEL_104;
            }

            [v419 caseInsensitive];
            v487 = OUTLINED_FUNCTION_64_9();
            OUTLINED_FUNCTION_12_32(v59, v60, v61, v62, v63, v64, v65, v66, v261, v281, v301[0], v301[1], v340[0], v340[1], v379, v399, v419, v439, v459, *(&v459 + 1), v460, v461, v462, v463, v464, v465, v466, v467, *v468, v469, v470, v471, v472, v473, v474, v475, v476, v477, v478[0], v478[1], v478[2], v478[3], v478[4], v478[5], v478[6], v478[7], v478[8], v479);
            sub_1CA5A3E5C(&v487, v478);

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              OUTLINED_FUNCTION_2_61();
              v21 = v254;
            }

            OUTLINED_FUNCTION_13_36();
            v20 = v405;
            if (v31)
            {
              OUTLINED_FUNCTION_3_56();
              v21 = v67;
            }

            OUTLINED_FUNCTION_46_12(v67, v68, v69, v70, v71, v72, v73, v74, v267, v287, v307, v326, v346, v365, v385, v405, v425, v445, v459, *(&v459 + 1), v460, v461, v462, v463, v464, v465, v466, v467, v468[0], v469, v470, v471, v472, v473, v474, v475, v476, v477, v478[0], v478[1], v478[2], v478[3], v478[4], v478[5], v478[6], v478[7], v478[8], v479);
            LOBYTE(v477) = v2;
            v58 = &qword_1CA991780;
            v478[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447D58, &qword_1CA991780);
            v478[4] = sub_1CA66D5AC();
            v75 = swift_allocObject();
            v83 = OUTLINED_FUNCTION_79_6(v75, v76, v77, v78, v79, v80, v81, v82, v268, v288, v308, v327, v347, v366, v386, v406, v426, v446, v459, *(&v459 + 1), v460, v461, v462, v463, v464, v465, v466, v467, *v468, v469, v470, v471, v472, v473, v474, v475, v476, v477, v478[0]);
            OUTLINED_FUNCTION_57_11(v83, v84, v85, v86, v87, v88, v89, v90, v269, v289, v309, v328, v348, v367, v387, v407, v427, v447, v459, *(&v459 + 1), v460, v461, v462, v463, v464, v465, v466, v467, *v468, v469, v470, v471, v472, v473, v474, v475, v476, v477, *v478);
            v91 = memcpy(v478, __srca, sizeof(v478));
            LOBYTE(v479) = v2;
            v99 = OUTLINED_FUNCTION_63_11(v91, v92, v93, v94, v95, v96, v97, v98, v270, v290, v310, v329, v349, v368, v388, v408, v428, v448, v459, *(&v459 + 1), v460, v461, v462, v463, v464, v465, v466, v467, v468[0]);
            sub_1CA66DD4C(v99, v100, &qword_1EC447D58, &qword_1CA991780);
            v101 = &qword_1EC447D58;
            break;
        }

        break;
    }

    v154 = v58;
LABEL_74:
    sub_1CA30F7DC(v478, v101, v154);
LABEL_97:
    ++v19;
  }

  return v21;
}