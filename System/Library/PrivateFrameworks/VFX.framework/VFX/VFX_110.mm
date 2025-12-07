uint64_t sub_1AF97E988(uint64_t a1, unsigned int a2)
{
  v3 = sub_1AF97E63C(a1, a2);
  sub_1AF441DD8(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  *(inited + 32) = v3;
  v5 = inited + 32;
  v6 = sub_1AFA56CA0();
  swift_setDeallocating();
  v7 = MEMORY[0x1E69E62F8];
  sub_1AF97FA74(v5, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
  sub_1AFA5413C(v6);

  v8 = sub_1AFAF888C(4);
  v10 = v9;

  sub_1AF97FB54(0, &qword_1EB638390, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E6F90]);
  v11 = swift_initStackObject();
  *(v11 + 16) = xmmword_1AFE431C0;
  *(v11 + 32) = v8;
  *(v11 + 40) = v10;
  *(v11 + 48) = 0;
  *(v11 + 56) = 0;
  v12 = swift_initStackObject();
  *(v12 + 16) = xmmword_1AFE4C680;
  *(v12 + 32) = &unk_1F2505878;
  *(v12 + 40) = v11;
  *(v12 + 48) = &unk_1F25058B8;
  v13 = sub_1AFA56CA0();
  swift_setDeallocating();
  sub_1AF97FB54(0, &unk_1ED723290, &type metadata for CodeEmitter.Code, v7);
  swift_arrayDestroy();
  v14 = sub_1AFA5413C(v13);
  v16 = v15;

  sub_1AFA55CD0(0xD000000000000016, 0x80000001AFF3C8A0, 0, a1, v14, v16);
  v18 = v17;
  v20 = v19;

  swift_bridgeObjectRelease_n();
  strcpy(v27, "void* %r0 = ");
  BYTE5(v27[1]) = 0;
  HIWORD(v27[1]) = -5120;
  MEMORY[0x1B2718AE0](v18, v20);

  MEMORY[0x1B2718AE0](59, 0xE100000000000000);

  v21 = v27[0];
  v22 = v27[1];
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_1AFE431C0;
  *(v23 + 32) = v21;
  *(v23 + 40) = v22;
  *(v23 + 48) = 0;
  *(v23 + 56) = 0;
  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_1AFE4C680;
  *(v24 + 32) = v23;
  *(v24 + 40) = &unk_1F25058F8;
  *(v24 + 48) = &unk_1F2505938;
  v25 = sub_1AFA56CA0();
  swift_setDeallocating();
  swift_arrayDestroy();
  return v25;
}

uint64_t sub_1AF97EC90(char a1)
{
  if (a1 == 3)
  {
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0xD000000000000012, 0x80000001AFF3C850);
    v2 = *(*(v1 + 24) + 16);
    if (v2)
    {
      v14 = MEMORY[0x1E69E7CC0];
      sub_1AFC05CE4(0, v2, 0);
      v3 = 0;
      do
      {
        v4 = sub_1AFDFEA08();
        MEMORY[0x1B2718AE0](v4);

        v6 = *(v14 + 16);
        v5 = *(v14 + 24);
        if (v6 >= v5 >> 1)
        {
          sub_1AFC05CE4(v5 > 1, v6 + 1, 1);
        }

        ++v3;
        *(v14 + 16) = v6 + 1;
        v7 = v14 + 16 * v6;
        *(v7 + 32) = 37;
        *(v7 + 40) = 0xE100000000000000;
      }

      while (v2 != v3);
    }

    sub_1AF97FB54(0, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1AF488088();
    v11 = sub_1AFDFCD98();
    v13 = v12;

    MEMORY[0x1B2718AE0](v11, v13);

    MEMORY[0x1B2718AE0](0xD000000000000021, 0x80000001AFF3C870);
    return 0;
  }

  else
  {
    v8 = sub_1AF97E988(v1, a1);
    v9 = sub_1AFA5413C(v8);

    return v9;
  }
}

uint64_t sub_1AF97EEC4(uint64_t a1, unint64_t a2)
{
  v2 = sub_1AF9316FC(3240485, 0xE300000000000000, a2, 0x7865646E6924, 0xE600000000000000, a1);
  v4 = v3;
  sub_1AF97FB54(0, &qword_1EB638390, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  *(inited + 32) = v2;
  *(inited + 40) = v4;
  sub_1AF441DD8(0);
  *(inited + 48) = 0;
  *(inited + 56) = 0;
  v6 = swift_initStackObject();
  *(v6 + 16) = xmmword_1AFE4C620;
  *(v6 + 32) = inited;
  *(v6 + 40) = &unk_1F2505978;
  v7 = sub_1AFA56CA0();
  swift_setDeallocating();
  sub_1AF97FB54(0, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
  swift_arrayDestroy();
  return v7;
}

uint64_t sub_1AF97EFF0(uint64_t a1, char a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC3VFX10SwitchNode_count);
  if (v2)
  {
    v42 = -v2;
    v3 = MEMORY[0x1E69E7CC0];
    v4 = 2;
    do
    {
      v5 = sub_1AFDFEA08();
      MEMORY[0x1B2718AE0](v5);

      v6 = *(a1 + 24);
      v7 = *(v6 + 40);
      sub_1AF448650(v6, *(a1 + 32));
      sub_1AF442064(v7);

      v8 = sub_1AF9314CC(12581, 0xE200000000000000, 37, 0xE100000000000000, v7, a2);
      v10 = v9;

      sub_1AF445BE4(v7);
      sub_1AFDFE218();

      MEMORY[0x1B2718AE0](v8, v10);

      MEMORY[0x1B2718AE0](8069161, 0xE300000000000000);
      sub_1AF97FB54(0, &qword_1EB638390, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E6F90]);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1AFE431C0;
      *(inited + 32) = 0x692065736C65207DLL;
      *(inited + 40) = 0xEB00000000282066;
      *(inited + 48) = 0;
      *(inited + 56) = 0;
      v12 = sub_1AFDFEA08();
      MEMORY[0x1B2718AE0](v12);

      v13 = swift_initStackObject();
      *(v13 + 16) = xmmword_1AFE431C0;
      *(v13 + 32) = 0x776F6C6625;
      *(v13 + 40) = 0xE500000000000000;
      sub_1AF441DD8(0);
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      v14 = swift_initStackObject();
      *(v14 + 16) = xmmword_1AFE431C0;
      *(v14 + 32) = v13;
      v15 = v14 + 32;
      v16 = sub_1AFA56CA0();
      swift_setDeallocating();
      v17 = MEMORY[0x1E69E62F8];
      sub_1AF97FA74(v15, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
      v18 = swift_initStackObject();
      *(v18 + 16) = xmmword_1AFE431C0;
      *(v18 + 32) = v16;
      v19 = v18 + 32;
      v20 = sub_1AFA56CA0();
      swift_setDeallocating();
      sub_1AF97FA74(v19, &unk_1ED723290, &type metadata for CodeEmitter.Code, v17);
      sub_1AFA5413C(v20);

      v21 = sub_1AFAF888C(4);
      v23 = v22;

      v24 = swift_initStackObject();
      *(v24 + 16) = xmmword_1AFE431C0;
      *(v24 + 32) = v21;
      *(v24 + 40) = v23;
      *(v24 + 48) = 0;
      *(v24 + 56) = 0;
      v25 = swift_initStackObject();
      *(v25 + 16) = xmmword_1AFE4C620;
      *(v25 + 32) = inited;
      *(v25 + 40) = v24;
      v26 = sub_1AFA56CA0();
      swift_setDeallocating();
      sub_1AF97FB54(0, &unk_1ED723290, &type metadata for CodeEmitter.Code, v17);
      swift_arrayDestroy();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_1AF426BC8(0, v3[2] + 1, 1, v3);
      }

      v28 = v3[2];
      v27 = v3[3];
      if (v28 >= v27 >> 1)
      {
        v3 = sub_1AF426BC8(v27 > 1, v28 + 1, 1, v3);
      }

      v3[2] = v28 + 1;
      v3[v28 + 4] = v26;
      ++v4;
    }

    while (v42 + v4 != 2);
  }

  v29 = sub_1AFA56CA0();

  v30 = sub_1AF97B348(a1);
  sub_1AF441DD8(0);
  v31 = swift_initStackObject();
  *(v31 + 16) = xmmword_1AFE431C0;
  *(v31 + 32) = v30;
  v32 = v31 + 32;
  v33 = sub_1AFA56CA0();
  swift_setDeallocating();
  v34 = MEMORY[0x1E69E62F8];
  sub_1AF97FA74(v32, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
  sub_1AFA5413C(v33);

  v35 = sub_1AFAF888C(4);
  v37 = v36;

  sub_1AF97FB54(0, &qword_1EB638390, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E6F90]);
  v38 = swift_initStackObject();
  *(v38 + 16) = xmmword_1AFE431C0;
  *(v38 + 32) = v35;
  *(v38 + 40) = v37;
  *(v38 + 48) = 0;
  *(v38 + 56) = 0;
  v39 = swift_initStackObject();
  *(v39 + 32) = &unk_1F25059F8;
  *(v39 + 16) = xmmword_1AFE86410;
  *(v39 + 40) = v29;
  *(v39 + 48) = &unk_1F2505A38;
  *(v39 + 56) = v38;
  *(v39 + 64) = &unk_1F2505A78;
  *(v39 + 72) = &unk_1F2505AB8;
  v40 = sub_1AFA56CA0();
  swift_setDeallocating();
  sub_1AF97FB54(0, &unk_1ED723290, &type metadata for CodeEmitter.Code, v34);
  swift_arrayDestroy();
  return v40;
}

uint64_t sub_1AF97F5D4(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v7 = sub_1AF9316FC(3306021, 0xE300000000000000, a2, 0x7865646E6924, 0xE600000000000000, a1);
  v9 = v8;
  sub_1AF97FB54(0, &qword_1EB638390, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  *(inited + 32) = v7;
  *(inited + 40) = v9;
  *(inited + 48) = 0;
  *(inited + 56) = 0;
  v11 = sub_1AF97358C(12837, 0xE200000000000000, 0x7865646E6924, 0xE600000000000000, a4, a1);
  v13 = sub_1AF9316FC(3240485, 0xE300000000000000, a3, v11, v12, a1);
  v15 = v14;

  v16 = swift_initStackObject();
  *(v16 + 16) = xmmword_1AFE431C0;
  *(v16 + 32) = v13;
  *(v16 + 40) = v15;
  sub_1AF441DD8(0);
  *(v16 + 48) = 0;
  *(v16 + 56) = 0;
  v17 = swift_initStackObject();
  *(v17 + 16) = xmmword_1AFE4C680;
  *(v17 + 32) = inited;
  *(v17 + 40) = v16;
  *(v17 + 48) = &unk_1F2505AF8;
  v18 = sub_1AFA56CA0();
  swift_setDeallocating();
  sub_1AF97FB54(0, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
  swift_arrayDestroy();
  return v18;
}

uint64_t sub_1AF97F7A4(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == 3)
  {
    v6 = sub_1AFA56CA0();
    sub_1AF97FA74(a3, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  sub_1AF441DD8(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE4C620;
  *(inited + 32) = v6;
  *(inited + 40) = a4;
  v8 = sub_1AFA56CA0();
  swift_setDeallocating();
  sub_1AF97FB54(0, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
  swift_arrayDestroy();
  return v8;
}

uint64_t sub_1AF97F8A4(uint64_t a1)
{
  sub_1AF97F900(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1AF97F900(uint64_t a1)
{
  if (!qword_1EB641070)
  {
    sub_1AF5C5358(255, &qword_1EB641060, &protocol descriptor for EnumMeta);
    v1 = sub_1AFDFDD58();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB641070);
    }
  }
}

uint64_t sub_1AF97F968(unint64_t *a1, uint64_t a2, const char *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1AF97FB54(255, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    v8 = a2;
    result = swift_getWitnessTable(a3, v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1AF97F9EC(uint64_t a1, uint64_t a2)
{
  sub_1AF97FB54(0, &qword_1EB640A58, &type metadata for CodeGenContext.SubGraphContext, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AF97FA74(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  sub_1AF97FB54(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void sub_1AF97FAD0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1AF97FB54(255, &qword_1ED726CC0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1AF97FB54(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1AF97FBE8()
{
  v1 = 0xE600000000000000;
  v2 = *(v0 + OBJC_IVAR____TtC3VFX14CanvasItemNode_stage);
  if (v2 <= 3)
  {
    if (*(v0 + OBJC_IVAR____TtC3VFX14CanvasItemNode_stage) <= 1u)
    {
      if (*(v0 + OBJC_IVAR____TtC3VFX14CanvasItemNode_stage))
      {
        v1 = 0xE500000000000000;
        v3 = 0x6E77617073;
      }

      else
      {
        v1 = 0xE400000000000000;
        v3 = 1852399981;
      }

      goto LABEL_17;
    }

    if (v2 == 2)
    {
      v1 = 0xEA0000000000657ALL;
      v3 = 0x696C616974696E69;
      goto LABEL_17;
    }

    v1 = 0xEC00000074696E49;
LABEL_15:
    v3 = 0x656C636974726170;
    goto LABEL_17;
  }

  if (*(v0 + OBJC_IVAR____TtC3VFX14CanvasItemNode_stage) <= 5u)
  {
    if (v2 == 4)
    {
      v3 = 0x657461647075;
      goto LABEL_17;
    }

    v1 = 0xEE00657461647055;
    goto LABEL_15;
  }

  if (v2 == 6)
  {
    v3 = 0x7265646E6572;
  }

  else
  {
    v1 = 0xE700000000000000;
    v3 = 0x72656767697274;
  }

LABEL_17:
  MEMORY[0x1B2718AE0](v3, v1);

  MEMORY[0x1B2718AE0](41, 0xE100000000000000);
  return 0x28206D657449;
}

void *sub_1AF97FD88(void *a1)
{
  sub_1AF441150(a1, a1[3]);
  result = sub_1AFDFF398();
  if (!v2)
  {
    sub_1AF441150(v4, v4[3]);
    sub_1AF9825F4();
    sub_1AFDFEE88();
    *(v1 + OBJC_IVAR____TtC3VFX14CanvasItemNode_stage) = v5;
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v4);
  }

  return result;
}

uint64_t sub_1AF97FEEC(void *a1)
{
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF3D8();
  v4 = *(v1 + OBJC_IVAR____TtC3VFX14CanvasItemNode_stage);
  sub_1AF448018(v3, v3[3]);
  sub_1AF9815CC();
  sub_1AFDFEF28();
  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v3);
}

uint64_t sub_1AF97FFE4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1AF967124(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AFE431C0;
  result = swift_allocObject();
  *(result + 16) = 0xC000000000000000;
  *(v4 + 32) = result | 0x8000000000000000;
  v6 = MEMORY[0x1E69E7CC0];
  *a2 = MEMORY[0x1E69E7CC0];
  a2[1] = v4;
  a2[2] = a1;
  a2[3] = v6;
  a2[4] = v6;
  a2[5] = v6;
  return result;
}

uint64_t sub_1AF980090(void *a1, int a2)
{
  v61 = a2;
  v3 = MEMORY[0x1E69E6F58];
  sub_1AF9824E4(0, &qword_1EB640B00, sub_1AF982244, &type metadata for CanvasStickyNode.ColorScheme.GrayCodingKeys, MEMORY[0x1E69E6F58]);
  v54 = *(v4 - 8);
  v55 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v53 = &v42 - v5;
  sub_1AF9824E4(0, &qword_1EB640B08, sub_1AF982298, &type metadata for CanvasStickyNode.ColorScheme.PinkCodingKeys, v3);
  v51 = *(v6 - 8);
  v52 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v50 = &v42 - v7;
  sub_1AF9824E4(0, &qword_1EB640B10, sub_1AF9822EC, &type metadata for CanvasStickyNode.ColorScheme.PurpleCodingKeys, v3);
  v48 = *(v8 - 8);
  v49 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v42 - v9;
  sub_1AF9824E4(0, &qword_1EB640B18, sub_1AF982340, &type metadata for CanvasStickyNode.ColorScheme.BlueCodingKeys, v3);
  v45 = *(v10 - 8);
  v46 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v44 = &v42 - v11;
  sub_1AF9824E4(0, &qword_1EB640B20, sub_1AF982394, &type metadata for CanvasStickyNode.ColorScheme.GreenCodingKeys, v3);
  v59 = *(v12 - 8);
  v60 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v58 = &v42 - v13;
  sub_1AF9824E4(0, &qword_1EB640B28, sub_1AF9823E8, &type metadata for CanvasStickyNode.ColorScheme.YellowCodingKeys, v3);
  v43 = v14;
  v57 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v42 - v15;
  sub_1AF9824E4(0, &qword_1EB640B30, sub_1AF98243C, &type metadata for CanvasStickyNode.ColorScheme.OrangeCodingKeys, v3);
  v18 = v17;
  v56 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v42 - v19;
  sub_1AF9824E4(0, &qword_1EB640B38, sub_1AF982490, &type metadata for CanvasStickyNode.ColorScheme.CodingKeys, v3);
  v63 = v21;
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v42 - v23;
  sub_1AF441150(a1, a1[3]);
  sub_1AF982490();
  v62 = v24;
  sub_1AFDFF3F8();
  v25 = (v22 + 8);
  if (v61 <= 2u)
  {
    v31 = v56;
    v32 = v57;
    v33 = v58;
    v34 = v59;
    v35 = v60;
    if (v61)
    {
      if (v61 != 1)
      {
        v66 = 2;
        sub_1AF982394();
        v39 = v33;
        v40 = v62;
        v41 = v63;
        sub_1AFDFE848();
        (*(v34 + 8))(v39, v35);
        return (*v25)(v40, v41);
      }

      v65 = 1;
      sub_1AF9823E8();
      v36 = v62;
      v37 = v63;
      sub_1AFDFE848();
      (*(v32 + 8))(v16, v43);
    }

    else
    {
      v64 = 0;
      sub_1AF98243C();
      v36 = v62;
      v37 = v63;
      sub_1AFDFE848();
      (*(v31 + 8))(v20, v18);
    }

    return (*v25)(v36, v37);
  }

  if (v61 > 4u)
  {
    if (v61 == 5)
    {
      v69 = 5;
      sub_1AF982298();
      v26 = v50;
      v27 = v62;
      v28 = v63;
      sub_1AFDFE848();
      v30 = v51;
      v29 = v52;
    }

    else
    {
      v70 = 6;
      sub_1AF982244();
      v26 = v53;
      v27 = v62;
      v28 = v63;
      sub_1AFDFE848();
      v30 = v54;
      v29 = v55;
    }
  }

  else if (v61 == 3)
  {
    v67 = 3;
    sub_1AF982340();
    v26 = v44;
    v27 = v62;
    v28 = v63;
    sub_1AFDFE848();
    v30 = v45;
    v29 = v46;
  }

  else
  {
    v68 = 4;
    sub_1AF9822EC();
    v26 = v47;
    v27 = v62;
    v28 = v63;
    sub_1AFDFE848();
    v30 = v48;
    v29 = v49;
  }

  (*(v30 + 8))(v26, v29);
  return (*v25)(v27, v28);
}

uint64_t sub_1AF980880(uint64_t a1)
{
  v2 = sub_1AF982340();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF9808BC(uint64_t a1)
{
  v2 = sub_1AF982340();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF980904()
{
  v1 = *v0;
  v2 = 0x65676E61726FLL;
  v3 = 1802398064;
  if (v1 != 5)
  {
    v3 = 2036429415;
  }

  v4 = 1702194274;
  if (v1 != 3)
  {
    v4 = 0x656C70727570;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x776F6C6C6579;
  if (v1 != 1)
  {
    v5 = 0x6E65657267;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1AF9809B4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1AF981620(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1AF9809DC(uint64_t a1)
{
  v2 = sub_1AF982490();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF980A18(uint64_t a1)
{
  v2 = sub_1AF982490();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF980A54(uint64_t a1)
{
  v2 = sub_1AF982244();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF980A90(uint64_t a1)
{
  v2 = sub_1AF982244();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF980ACC(uint64_t a1)
{
  v2 = sub_1AF982394();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF980B08(uint64_t a1)
{
  v2 = sub_1AF982394();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF980B44(uint64_t a1)
{
  v2 = sub_1AF98243C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF980B80(uint64_t a1)
{
  v2 = sub_1AF98243C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF980BBC(uint64_t a1)
{
  v2 = sub_1AF982298();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF980BF8(uint64_t a1)
{
  v2 = sub_1AF982298();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF980C34(uint64_t a1)
{
  v2 = sub_1AF9822EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF980C70(uint64_t a1)
{
  v2 = sub_1AF9822EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF980CAC(uint64_t a1)
{
  v2 = sub_1AF9823E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF980CE8(uint64_t a1)
{
  v2 = sub_1AF9823E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF980D24@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_1AF981858(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

void *sub_1AF980D7C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  v8 = MEMORY[0x1E69E7CC0];
  do
  {
    v11 = byte_1F24F3810[v6 + 32];
    if (v11 != 6)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1AFC07368(0, *(v8 + 16) + 1, 1);
      }

      v10 = *(v8 + 16);
      v9 = *(v8 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_1AFC07368(v9 > 1, v10 + 1, 1);
      }

      *(v8 + 16) = v10 + 1;
      *(v8 + v10 + 32) = v11;
    }

    ++v6;
  }

  while (v6 != 7);
  v12 = *(v8 + 16);
  if (v12)
  {
    v13 = *(v8 + sub_1AF4563F4(v12) + 32);
  }

  else
  {
    v13 = 7;
  }

  *(v3 + OBJC_IVAR____TtC3VFX16CanvasStickyNode_colorScheme) = v13;
  v14 = (v3 + OBJC_IVAR____TtC3VFX16CanvasStickyNode_text);
  *v14 = a1;
  v14[1] = a2;
  v3[3] = 0;
  v3[4] = 0;
  v3[2] = v7;
  sub_1AFDFC308();
  return v3;
}

char *sub_1AF980EE8(void *a1)
{
  v2 = v1;
  v4 = 0;
  v5 = MEMORY[0x1E69E7CC0];
  do
  {
    v8 = byte_1F24F3810[v4 + 32];
    if (v8 != 6)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1AFC07368(0, *(v5 + 16) + 1, 1);
      }

      v7 = *(v5 + 16);
      v6 = *(v5 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_1AFC07368(v6 > 1, v7 + 1, 1);
      }

      *(v5 + 16) = v7 + 1;
      *(v5 + v7 + 32) = v8;
    }

    ++v4;
  }

  while (v4 != 7);
  v9 = *(v5 + 16);
  if (v9)
  {
    v10 = *(v5 + sub_1AF4563F4(v9) + 32);
  }

  else
  {
    v10 = 7;
  }

  v11 = OBJC_IVAR____TtC3VFX16CanvasStickyNode_colorScheme;
  *(v2 + OBJC_IVAR____TtC3VFX16CanvasStickyNode_colorScheme) = v10;
  v12 = *(a1 + OBJC_IVAR____TtC3VFX16CanvasStickyNode_text + 8);
  v13 = (v2 + OBJC_IVAR____TtC3VFX16CanvasStickyNode_text);
  *v13 = *(a1 + OBJC_IVAR____TtC3VFX16CanvasStickyNode_text);
  v13[1] = v12;
  *(v2 + v11) = *(a1 + OBJC_IVAR____TtC3VFX16CanvasStickyNode_colorScheme);

  return sub_1AF96FD00(a1);
}

uint64_t sub_1AF981038(void *a1)
{
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF3C8();
  sub_1AF448018(v4, v5);

  sub_1AFDFEBE8();

  if (!v2 && *(v1 + OBJC_IVAR____TtC3VFX16CanvasStickyNode_colorScheme) != 7)
  {
    sub_1AF448018(v4, v5);
    sub_1AF9825A0();
    sub_1AFDFEC38();
  }

  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v4);
}

void *sub_1AF98114C(void *a1)
{
  sub_1AF441150(a1, a1[3]);
  result = sub_1AFDFF388();
  if (!v2)
  {
    sub_1AF448018(v7, v8);
    v4 = sub_1AFDFEA78();
    v5 = (v1 + OBJC_IVAR____TtC3VFX16CanvasStickyNode_text);
    *v5 = v4;
    v5[1] = v6;

    sub_1AF448018(v7, v8);
    sub_1AF98254C();
    sub_1AFDFEAD8();
    *(v1 + OBJC_IVAR____TtC3VFX16CanvasStickyNode_colorScheme) = v9;
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v7);
  }

  return result;
}

uint64_t sub_1AF9812C4()
{

  sub_1AF919DAC(*(v0 + 24), *(v0 + 32));
  v1 = OBJC_IVAR____TtC3VFX4Node_authoringID;
  v2 = sub_1AFDFC318();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

unint64_t sub_1AF9814F8()
{
  result = qword_1EB640A60;
  if (!qword_1EB640A60)
  {
    sub_1AF967124(255, &qword_1EB640A68, &type metadata for CanvasStickyNode.ColorScheme, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable(MEMORY[0x1E69E6340], v3, v0, v1);
    atomic_store(result, &qword_1EB640A60);
  }

  return result;
}

unint64_t sub_1AF981578()
{
  result = qword_1EB640A70;
  if (!qword_1EB640A70)
  {
    result = swift_getWitnessTable(byte_1AFE878BC, &type metadata for CanvasStickyNode.ColorScheme, v0, v1);
    atomic_store(result, &qword_1EB640A70);
  }

  return result;
}

unint64_t sub_1AF9815CC()
{
  result = qword_1EB640A78;
  if (!qword_1EB640A78)
  {
    result = swift_getWitnessTable(byte_1AFE885AC, &type metadata for VFXStage, v0, v1);
    atomic_store(result, &qword_1EB640A78);
  }

  return result;
}

uint64_t sub_1AF981620(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65676E61726FLL && a2 == 0xE600000000000000;
  if (v4 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x776F6C6C6579 && a2 == 0xE600000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E65657267 && a2 == 0xE500000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1702194274 && a2 == 0xE400000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656C70727570 && a2 == 0xE600000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 1802398064 && a2 == 0xE400000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 2036429415 && a2 == 0xE400000000000000)
  {

    return 6;
  }

  else
  {
    v6 = sub_1AFDFEE28();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_1AF981858(void *a1)
{
  v2 = MEMORY[0x1E69E6F48];
  sub_1AF9824E4(0, &qword_1EB640A80, sub_1AF982244, &type metadata for CanvasStickyNode.ColorScheme.GrayCodingKeys, MEMORY[0x1E69E6F48]);
  v60 = v3;
  v56 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v63 = &v45[-v4];
  sub_1AF9824E4(0, &qword_1EB640A90, sub_1AF982298, &type metadata for CanvasStickyNode.ColorScheme.PinkCodingKeys, v2);
  v58 = *(v5 - 8);
  v59 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v66 = &v45[-v6];
  sub_1AF9824E4(0, &qword_1EB640AA0, sub_1AF9822EC, &type metadata for CanvasStickyNode.ColorScheme.PurpleCodingKeys, v2);
  v57 = v7;
  v55 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v62 = &v45[-v8];
  sub_1AF9824E4(0, &qword_1EB640AB0, sub_1AF982340, &type metadata for CanvasStickyNode.ColorScheme.BlueCodingKeys, v2);
  v53 = *(v9 - 8);
  v54 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v65 = &v45[-v10];
  sub_1AF9824E4(0, &qword_1EB640AC0, sub_1AF982394, &type metadata for CanvasStickyNode.ColorScheme.GreenCodingKeys, v2);
  v12 = *(v11 - 8);
  v51 = v11;
  v52 = v12;
  MEMORY[0x1EEE9AC00](v11);
  v61 = &v45[-v13];
  sub_1AF9824E4(0, &qword_1EB640AD0, sub_1AF9823E8, &type metadata for CanvasStickyNode.ColorScheme.YellowCodingKeys, v2);
  v49 = *(v14 - 8);
  v50 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v64 = &v45[-v15];
  sub_1AF9824E4(0, &qword_1EB640AE0, sub_1AF98243C, &type metadata for CanvasStickyNode.ColorScheme.OrangeCodingKeys, v2);
  v17 = v16;
  v48 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v45[-v18];
  sub_1AF9824E4(0, &qword_1EB640AF0, sub_1AF982490, &type metadata for CanvasStickyNode.ColorScheme.CodingKeys, v2);
  v21 = v20;
  v22 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v45[-v23];
  v25 = a1[3];
  v68 = a1;
  sub_1AF441150(a1, v25);
  sub_1AF982490();
  v26 = v67;
  sub_1AFDFF3B8();
  if (v26)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v68);
  }

  v47 = v17;
  v28 = v64;
  v27 = v65;
  v29 = v66;
  v67 = v22;
  v30 = v24;
  v31 = sub_1AFDFE7F8();
  if (*(v31 + 16) != 1)
  {
    v35 = sub_1AFDFE2C8();
    swift_allocError();
    v36 = v21;
    v38 = v37;
    sub_1AF602A88(0);
    *v38 = &type metadata for CanvasStickyNode.ColorScheme;
    sub_1AFDFE678();
    sub_1AFDFE2A8();
    (*(*(v35 - 8) + 104))(v38, *MEMORY[0x1E69E6AF8], v35);
    swift_willThrow();
    (*(v67 + 8))(v30, v36);

    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v68);
  }

  v32 = *(v31 + 32);
  v46 = v32;
  if (v32 <= 2)
  {
    if (v32)
    {
      if (v32 == 1)
      {
        v70 = 1;
        sub_1AF9823E8();
        sub_1AFDFE668();
        (*(v49 + 8))(v28, v50);
      }

      else
      {
        v71 = 2;
        sub_1AF982394();
        v40 = v61;
        sub_1AFDFE668();
        (*(v52 + 8))(v40, v51);
      }
    }

    else
    {
      v69 = 0;
      sub_1AF98243C();
      sub_1AFDFE668();
      (*(v48 + 8))(v19, v47);
    }

    (*(v67 + 8))(v24, v21);
  }

  else
  {
    if (v32 <= 4)
    {
      v34 = v67;
      v33 = v68;
      if (v32 == 3)
      {
        v72 = 3;
        sub_1AF982340();
        sub_1AFDFE668();
        (*(v53 + 8))(v27, v54);
      }

      else
      {
        v73 = 4;
        sub_1AF9822EC();
        v42 = v62;
        sub_1AFDFE668();
        (*(v55 + 8))(v42, v57);
      }

      (*(v34 + 8))(v24, v21);

      v44 = v33;
      goto LABEL_22;
    }

    v39 = v67;
    if (v32 == 5)
    {
      v74 = 5;
      sub_1AF982298();
      sub_1AFDFE668();
      (*(v58 + 8))(v29, v59);
    }

    else
    {
      v75 = 6;
      sub_1AF982244();
      v43 = v63;
      sub_1AFDFE668();
      (*(v56 + 8))(v43, v60);
    }

    (*(v39 + 8))(v24, v21);
  }

  v44 = v68;
LABEL_22:
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v44);
  return v46;
}

unint64_t sub_1AF982244()
{
  result = qword_1EB640A88;
  if (!qword_1EB640A88)
  {
    result = swift_getWitnessTable(byte_1AFE87F18, &type metadata for CanvasStickyNode.ColorScheme.GrayCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB640A88);
  }

  return result;
}

unint64_t sub_1AF982298()
{
  result = qword_1EB640A98;
  if (!qword_1EB640A98)
  {
    result = swift_getWitnessTable(byte_1AFE87EC8, &type metadata for CanvasStickyNode.ColorScheme.PinkCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB640A98);
  }

  return result;
}

unint64_t sub_1AF9822EC()
{
  result = qword_1EB640AA8;
  if (!qword_1EB640AA8)
  {
    result = swift_getWitnessTable(aA_58, &type metadata for CanvasStickyNode.ColorScheme.PurpleCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB640AA8);
  }

  return result;
}

unint64_t sub_1AF982340()
{
  result = qword_1EB640AB8;
  if (!qword_1EB640AB8)
  {
    result = swift_getWitnessTable(byte_1AFE87E28, &type metadata for CanvasStickyNode.ColorScheme.BlueCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB640AB8);
  }

  return result;
}

unint64_t sub_1AF982394()
{
  result = qword_1EB640AC8;
  if (!qword_1EB640AC8)
  {
    result = swift_getWitnessTable(byte_1AFE87DD8, &type metadata for CanvasStickyNode.ColorScheme.GreenCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB640AC8);
  }

  return result;
}

unint64_t sub_1AF9823E8()
{
  result = qword_1EB640AD8;
  if (!qword_1EB640AD8)
  {
    result = swift_getWitnessTable(a1_37, &type metadata for CanvasStickyNode.ColorScheme.YellowCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB640AD8);
  }

  return result;
}

unint64_t sub_1AF98243C()
{
  result = qword_1EB640AE8;
  if (!qword_1EB640AE8)
  {
    result = swift_getWitnessTable(byte_1AFE87D38, &type metadata for CanvasStickyNode.ColorScheme.OrangeCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB640AE8);
  }

  return result;
}

unint64_t sub_1AF982490()
{
  result = qword_1EB640AF8;
  if (!qword_1EB640AF8)
  {
    result = swift_getWitnessTable(byte_1AFE87CE8, &type metadata for CanvasStickyNode.ColorScheme.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB640AF8);
  }

  return result;
}

void sub_1AF9824E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1AF98254C()
{
  result = qword_1EB640B40;
  if (!qword_1EB640B40)
  {
    result = swift_getWitnessTable(byte_1AFE87894, &type metadata for CanvasStickyNode.ColorScheme, v0, v1);
    atomic_store(result, &qword_1EB640B40);
  }

  return result;
}

unint64_t sub_1AF9825A0()
{
  result = qword_1EB640B48;
  if (!qword_1EB640B48)
  {
    result = swift_getWitnessTable(byte_1AFE8786C, &type metadata for CanvasStickyNode.ColorScheme, v0, v1);
    atomic_store(result, &qword_1EB640B48);
  }

  return result;
}

unint64_t sub_1AF9825F4()
{
  result = qword_1EB640B50;
  if (!qword_1EB640B50)
  {
    result = swift_getWitnessTable(byte_1AFE885D4, &type metadata for VFXStage, v0, v1);
    atomic_store(result, &qword_1EB640B50);
  }

  return result;
}

unint64_t sub_1AF9826CC()
{
  result = qword_1EB640B58;
  if (!qword_1EB640B58)
  {
    result = swift_getWitnessTable(byte_1AFE87CC0, &type metadata for CanvasStickyNode.ColorScheme.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB640B58);
  }

  return result;
}

unint64_t sub_1AF982724()
{
  result = qword_1EB640B60;
  if (!qword_1EB640B60)
  {
    result = swift_getWitnessTable(byte_1AFE87C30, &type metadata for CanvasStickyNode.ColorScheme.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB640B60);
  }

  return result;
}

unint64_t sub_1AF98277C()
{
  result = qword_1EB640B68;
  if (!qword_1EB640B68)
  {
    result = swift_getWitnessTable(byte_1AFE87C58, &type metadata for CanvasStickyNode.ColorScheme.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB640B68);
  }

  return result;
}

unint64_t sub_1AF9827D4()
{
  result = qword_1EB640B70;
  if (!qword_1EB640B70)
  {
    result = swift_getWitnessTable(byte_1AFE87BE0, &type metadata for CanvasStickyNode.ColorScheme.OrangeCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB640B70);
  }

  return result;
}

unint64_t sub_1AF98282C()
{
  result = qword_1EB640B78;
  if (!qword_1EB640B78)
  {
    result = swift_getWitnessTable(asc_1AFE87C08, &type metadata for CanvasStickyNode.ColorScheme.OrangeCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB640B78);
  }

  return result;
}

unint64_t sub_1AF982884()
{
  result = qword_1EB640B80;
  if (!qword_1EB640B80)
  {
    result = swift_getWitnessTable(aA_59, &type metadata for CanvasStickyNode.ColorScheme.YellowCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB640B80);
  }

  return result;
}

unint64_t sub_1AF9828DC()
{
  result = qword_1EB640B88;
  if (!qword_1EB640B88)
  {
    result = swift_getWitnessTable(aY_70, &type metadata for CanvasStickyNode.ColorScheme.YellowCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB640B88);
  }

  return result;
}

unint64_t sub_1AF982934()
{
  result = qword_1EB640B90;
  if (!qword_1EB640B90)
  {
    result = swift_getWitnessTable(byte_1AFE87B40, &type metadata for CanvasStickyNode.ColorScheme.GreenCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB640B90);
  }

  return result;
}

unint64_t sub_1AF98298C()
{
  result = qword_1EB640B98;
  if (!qword_1EB640B98)
  {
    result = swift_getWitnessTable(byte_1AFE87B68, &type metadata for CanvasStickyNode.ColorScheme.GreenCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB640B98);
  }

  return result;
}

unint64_t sub_1AF9829E4()
{
  result = qword_1EB640BA0;
  if (!qword_1EB640BA0)
  {
    result = swift_getWitnessTable(byte_1AFE87AF0, &type metadata for CanvasStickyNode.ColorScheme.BlueCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB640BA0);
  }

  return result;
}

unint64_t sub_1AF982A3C()
{
  result = qword_1EB640BA8;
  if (!qword_1EB640BA8)
  {
    result = swift_getWitnessTable(byte_1AFE87B18, &type metadata for CanvasStickyNode.ColorScheme.BlueCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB640BA8);
  }

  return result;
}

unint64_t sub_1AF982A94()
{
  result = qword_1EB640BB0;
  if (!qword_1EB640BB0)
  {
    result = swift_getWitnessTable(aQ_69, &type metadata for CanvasStickyNode.ColorScheme.PurpleCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB640BB0);
  }

  return result;
}

unint64_t sub_1AF982AEC()
{
  result = qword_1EB640BB8;
  if (!qword_1EB640BB8)
  {
    result = swift_getWitnessTable(aI_48, &type metadata for CanvasStickyNode.ColorScheme.PurpleCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB640BB8);
  }

  return result;
}

unint64_t sub_1AF982B44()
{
  result = qword_1EB640BC0;
  if (!qword_1EB640BC0)
  {
    result = swift_getWitnessTable(byte_1AFE87A50, &type metadata for CanvasStickyNode.ColorScheme.PinkCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB640BC0);
  }

  return result;
}

unint64_t sub_1AF982B9C()
{
  result = qword_1EB640BC8;
  if (!qword_1EB640BC8)
  {
    result = swift_getWitnessTable(byte_1AFE87A78, &type metadata for CanvasStickyNode.ColorScheme.PinkCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB640BC8);
  }

  return result;
}

unint64_t sub_1AF982BF4()
{
  result = qword_1EB640BD0;
  if (!qword_1EB640BD0)
  {
    result = swift_getWitnessTable(byte_1AFE87A00, &type metadata for CanvasStickyNode.ColorScheme.GrayCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB640BD0);
  }

  return result;
}

unint64_t sub_1AF982C4C()
{
  result = qword_1EB640BD8;
  if (!qword_1EB640BD8)
  {
    result = swift_getWitnessTable(asc_1AFE87A28, &type metadata for CanvasStickyNode.ColorScheme.GrayCodingKeys, v0, v1);
    atomic_store(result, &qword_1EB640BD8);
  }

  return result;
}

uint64_t sub_1AF982CA8@<X0>(uint64_t *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC3VFX9_CodeNode_inputNames;
  v4 = *(*(v1 + OBJC_IVAR____TtC3VFX9_CodeNode_inputNames) + 16);
  if (v4)
  {
    v5 = sub_1AFDFD488();
    *(v5 + 16) = v4;
    memset_pattern16((v5 + 32), &unk_1AFE854D0, 8 * v4);
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  v6 = *(v1 + OBJC_IVAR____TtC3VFX9_CodeNode_outputTypes);
  v7 = *(v6 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v22 = v1;
    *&v23[0] = MEMORY[0x1E69E7CC0];

    sub_1AFC05EAC(0, v7, 0);
    v9 = 32;
    v8 = *&v23[0];
    do
    {
      v10 = *(v6 + v9);
      v11 = swift_allocObject();
      *(v11 + 16) = v10;
      sub_1AF442064(v10);
      *&v23[0] = v8;
      v13 = *(v8 + 16);
      v12 = *(v8 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_1AFC05EAC(v12 > 1, v13 + 1, 1);
        v8 = *&v23[0];
      }

      *(v8 + 16) = v13 + 1;
      *(v8 + 8 * v13 + 32) = v11 | 0x8000000000000000;
      v9 += 8;
      --v7;
    }

    while (v7);

    v1 = v22;
  }

  v15 = sub_1AF3C3AA4(v14);

  v24 = MEMORY[0x1E69E6530];
  v23[0] = xmmword_1AFE87F70;
  v16 = *(*(v1 + v3) + 16);
  if (v16)
  {
    v17 = sub_1AFDFD488();
    *(v17 + 16) = v16;
    v18 = v17 + 32;
    do
    {
      sub_1AF914FF0(v23, v18);
      v18 += 40;
      --v16;
    }

    while (v16);
  }

  else
  {
    v17 = MEMORY[0x1E69E7CC0];
  }

  sub_1AF9151B0(v23);

  v20 = sub_1AF3C3AA4(v19);

  *a1 = v5;
  a1[1] = v8;
  a1[2] = &unk_1F24F37B0;
  a1[3] = v15;
  a1[4] = v20;
  a1[5] = v17;
  return result;
}

char *sub_1AF982ED4(char *a1)
{
  v4 = *&a1[OBJC_IVAR____TtC3VFX9_CodeNode_code];
  v3 = *&a1[OBJC_IVAR____TtC3VFX9_CodeNode_code + 8];
  v5 = (v1 + OBJC_IVAR____TtC3VFX9_CodeNode_code);
  *v5 = v4;
  v5[1] = v3;
  *(v1 + OBJC_IVAR____TtC3VFX9_CodeNode_inputNames) = *&a1[OBJC_IVAR____TtC3VFX9_CodeNode_inputNames];
  *(v1 + OBJC_IVAR____TtC3VFX9_CodeNode_outputNames) = *&a1[OBJC_IVAR____TtC3VFX9_CodeNode_outputNames];
  *(v1 + OBJC_IVAR____TtC3VFX9_CodeNode_outputTypes) = *&a1[OBJC_IVAR____TtC3VFX9_CodeNode_outputTypes];

  return sub_1AF96FD00(a1);
}

uint64_t sub_1AF982F7C()
{
  if (*(*(v0 + 16) + 16) && (, v1 = sub_1AF9A1B58(1, 0), v3 = v2, , v3))
  {
    v4 = v1;
  }

  else
  {

    v4 = 0;
    v3 = 0xE000000000000000;
  }

  MEMORY[0x1B2718AE0](v4, v3);

  MEMORY[0x1B2718AE0](34, 0xE100000000000000);
  return 34;
}

uint64_t sub_1AF983080(void *a1)
{
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF3C8();
  sub_1AF448018(v4, v5);

  sub_1AFDFEBE8();

  if (!v2)
  {
    v6 = *(v1 + OBJC_IVAR____TtC3VFX9_CodeNode_inputNames);
    sub_1AF448018(v4, v5);
    sub_1AF985A10(0, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1AF985A60(&qword_1EB639870, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
    sub_1AFDFEC38();
    v6 = *(v1 + OBJC_IVAR____TtC3VFX9_CodeNode_outputNames);
    sub_1AF448018(v4, v5);
    sub_1AFDFEC38();
    v6 = *(v1 + OBJC_IVAR____TtC3VFX9_CodeNode_outputTypes);
    sub_1AF448018(v4, v5);
    sub_1AF985A10(0, &qword_1EB640C18, &type metadata for AnyType, MEMORY[0x1E69E62F8]);
    sub_1AF985AE4(&qword_1EB640C28, sub_1AF9748D8, MEMORY[0x1E69E6300]);
    sub_1AFDFEC38();
  }

  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v4);
}

void *sub_1AF9832DC(void *a1)
{
  v3 = v1;
  sub_1AF441150(a1, a1[3]);
  result = sub_1AFDFF388();
  if (!v2)
  {
    v6 = a1[3];
    v7 = a1[4];
    sub_1AF441150(a1, v6);
    if (sub_1AF69504C(3020, v6, v7))
    {
      v8 = (v3 + OBJC_IVAR____TtC3VFX9_CodeNode_code);
      *v8 = 0;
      v8[1] = 0xE000000000000000;

      sub_1AF985A10(0, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
      sub_1AF448018(v13, v14);
      sub_1AF985A60(&qword_1ED726C58, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
      sub_1AFDFEAD8();
      *(v3 + OBJC_IVAR____TtC3VFX9_CodeNode_inputNames) = v15;

      *(v3 + OBJC_IVAR____TtC3VFX9_CodeNode_outputNames) = &unk_1F25000B8;

      sub_1AF985A10(0, &qword_1EB630990, &type metadata for AnyType, MEMORY[0x1E69E6F90]);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1AFE431C0;
      sub_1AF448018(v13, v14);
      sub_1AF974884();
      sub_1AFDFEAD8();
      *(v3 + OBJC_IVAR____TtC3VFX9_CodeNode_outputTypes) = v9;
    }

    else
    {
      sub_1AF448018(v13, v14);
      v10 = sub_1AFDFEA78();
      v11 = (v3 + OBJC_IVAR____TtC3VFX9_CodeNode_code);
      *v11 = v10;
      v11[1] = v12;

      sub_1AF985A10(0, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
      sub_1AF448018(v13, v14);
      sub_1AF985A60(&qword_1ED726C58, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
      sub_1AFDFEAD8();
      *(v3 + OBJC_IVAR____TtC3VFX9_CodeNode_inputNames) = v15;

      sub_1AF448018(v13, v14);
      sub_1AFDFEAD8();
      *(v3 + OBJC_IVAR____TtC3VFX9_CodeNode_outputNames) = v15;

      sub_1AF985A10(0, &qword_1EB640C18, &type metadata for AnyType, MEMORY[0x1E69E62F8]);
      sub_1AF448018(v13, v14);
      sub_1AF985AE4(&qword_1EB640C20, sub_1AF974884, MEMORY[0x1E69E6330]);
      sub_1AFDFEAD8();
      *(v3 + OBJC_IVAR____TtC3VFX9_CodeNode_outputTypes) = v15;
    }

    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v13);
  }

  return result;
}

uint64_t sub_1AF98376C()
{
}

uint64_t sub_1AF9837D0()
{

  sub_1AF919DAC(*(v0 + 24), *(v0 + 32));
  v1 = OBJC_IVAR____TtC3VFX4Node_authoringID;
  v2 = sub_1AFDFC318();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void *sub_1AF9839C4(uint64_t a1)
{
  v2 = (v1 + OBJC_IVAR____TtC3VFX9_CodeNode_code);
  *v2 = 0xD00000000000001ALL;
  v2[1] = 0x80000001AFF3CD70;
  *(v1 + OBJC_IVAR____TtC3VFX9_CodeNode_inputNames) = &unk_1F24FFEB8;
  *(v1 + OBJC_IVAR____TtC3VFX9_CodeNode_outputNames) = &unk_1F24FFEF8;
  *(v1 + OBJC_IVAR____TtC3VFX9_CodeNode_outputTypes) = &unk_1F24FFF28;
  v3 = MEMORY[0x1E69E7CC0];
  v1[3] = 0;
  v1[4] = 0;
  v1[2] = v3;
  sub_1AFDFC308();
  return v1;
}

uint64_t sub_1AF983A64(unsigned __int8 *a1, double a2)
{
  v92 = a1;
  v114 = 0;
  v105 = sub_1AFDFC3F8();
  v3 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v104 = &v91 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF98552C(0, &qword_1EB640C10, sub_1AF95A7B4, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v110 = &v91 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v91 - v11;
  sub_1AF95A7B4(0);
  v113 = v13;
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v100 = &v91 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v96 = &v91 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v109 = &v91 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v102 = &v91 - v21;
  MEMORY[0x1EEE9AC00](v22);
  MEMORY[0x1EEE9AC00](v23);
  v101 = &v91 - v25;
  v26 = *(v2 + OBJC_IVAR____TtC3VFX9_CodeNode_code + 8);
  v112 = *(v2 + OBJC_IVAR____TtC3VFX9_CodeNode_code);
  v121 = v112;
  v122 = v26;
  v95 = v2;
  v27 = *(v2 + OBJC_IVAR____TtC3VFX9_CodeNode_inputNames);
  v28 = *(v27 + 16);
  v108 = v7;
  v94 = v3;
  v93 = v14;
  if (v28)
  {
    v106 = (v14 + 56);
    v107 = v24;
    v97 = (v3 + 8);
    v103 = (v14 + 8);
    v29 = (v14 + 48);
    v98 = (v14 + 32);
    v111 = v26;

    v91 = v27;
    v30 = (v27 + 40);
    v99 = v14 + 48;
    do
    {
      v38 = *(v30 - 1);
      v37 = *v30;
      v119 = v38;
      v120 = v37;
      v39 = HIBYTE(v37) & 0xF;
      if ((v37 & 0x2000000000000000) == 0)
      {
        v39 = v38 & 0xFFFFFFFFFFFFLL;
      }

      if (v39)
      {
        swift_bridgeObjectRetain_n();
        sub_1AFDFD068();
        sub_1AFDFD1C8();
        v40 = sub_1AFDFCD48();

        if (v40)
        {
          MEMORY[0x1B2718AE0](25180, 0xE200000000000000);
        }

        sub_1AFDFD1C8();
        v41 = sub_1AFDFCD48();

        if (v41)
        {
          v117 = 25180;
          v118 = 0xE200000000000000;
          MEMORY[0x1B2718AE0](v119, v120);

          v119 = v117;
          v120 = v118;
        }
      }

      else
      {
        swift_bridgeObjectRetain_n();
      }

      v42 = v107;
      v43 = v114;
      sub_1AFDFC4A8();
      v114 = v43;
      if (v43)
      {

        v114 = 0;
        v44 = 1;
      }

      else
      {
        v45 = v104;
        sub_1AFDFC3E8();
        v46 = v113;
        sub_1AFDFC458();
        (*v97)(v45, v105);
        (*v103)(v42, v46);
        v44 = 0;
      }

      v47 = v113;
      (*v106)(v12, v44, 1, v113);
      if ((*v29)(v12, 1, v47) == 1)
      {

        sub_1AF985590(v12, &qword_1EB640C10, sub_1AF95A7B4, MEMORY[0x1E69E6720], sub_1AF98552C);
      }

      else
      {
        v31 = v113;
        v32 = v28;
        v33 = v12;
        v34 = v101;
        (*v98)(v101, v33, v113);
        v117 = v112;
        v118 = v111;
        v119 = 37;
        v120 = 0xE100000000000000;

        MEMORY[0x1B2718AE0](v38, v37);

        v115 = v119;
        v116 = v120;
        sub_1AF95A690();
        sub_1AF95A6E4();
        sub_1AF9855F0();
        sub_1AFDFD978();

        v35 = v34;
        v12 = v33;
        v28 = v32;
        v36 = v31;
        v29 = v99;
        (*v103)(v35, v36);

        v111 = v120;
        v112 = v119;
        v121 = v119;
        v122 = v120;
      }

      v30 += 2;
      --v28;
    }

    while (v28);

    v7 = v108;
    v26 = v111;
    v3 = v94;
    v14 = v93;
  }

  else
  {
  }

  v48 = *(*(v95 + OBJC_IVAR____TtC3VFX9_CodeNode_outputNames) + 16);
  if (v48)
  {
    v111 = v26;
    v49 = (v14 + 56);
    v101 = (v3 + 8);
    v107 = (v14 + 8);
    v50 = (v14 + 48);
    v103 = (v14 + 32);

    v51 = (v99 + 40);
    v106 = (v14 + 56);
    do
    {
      v58 = *(v51 - 1);
      v57 = *v51;
      v119 = v58;
      v120 = v57;
      v59 = HIBYTE(v57) & 0xF;
      if ((v57 & 0x2000000000000000) == 0)
      {
        v59 = v58 & 0xFFFFFFFFFFFFLL;
      }

      if (v59)
      {
        swift_bridgeObjectRetain_n();
        sub_1AFDFD068();
        sub_1AFDFD1C8();
        v60 = sub_1AFDFCD48();

        if (v60)
        {
          MEMORY[0x1B2718AE0](25180, 0xE200000000000000);
        }

        sub_1AFDFD1C8();
        v61 = sub_1AFDFCD48();

        if (v61)
        {
          v117 = 25180;
          v118 = 0xE200000000000000;
          MEMORY[0x1B2718AE0](v119, v120);

          v119 = v117;
          v120 = v118;
        }
      }

      else
      {
        swift_bridgeObjectRetain_n();
      }

      v62 = v109;
      v63 = v114;
      sub_1AFDFC4A8();
      v114 = v63;
      if (v63)
      {

        v114 = 0;
        v64 = 1;
        v65 = v110;
      }

      else
      {
        v66 = v104;
        sub_1AFDFC3E8();
        v65 = v110;
        v67 = v113;
        sub_1AFDFC458();
        (*v101)(v66, v105);
        (*v107)(v62, v67);
        v64 = 0;
      }

      v68 = v113;
      (*v49)(v65, v64, 1, v113);
      if ((*v50)(v65, 1, v68) == 1)
      {

        sub_1AF985590(v65, &qword_1EB640C10, sub_1AF95A7B4, MEMORY[0x1E69E6720], sub_1AF98552C);
      }

      else
      {
        v52 = v102;
        v53 = v50;
        v54 = v113;
        (*v103)(v102, v65, v113);
        v117 = v112;
        v118 = v111;
        v119 = 37;
        v120 = 0xE100000000000000;

        MEMORY[0x1B2718AE0](v58, v57);

        v115 = v119;
        v116 = v120;
        sub_1AF95A690();
        sub_1AF95A6E4();
        sub_1AF9855F0();
        sub_1AFDFD978();

        v55 = v52;
        v49 = v106;
        v56 = v54;
        v50 = v53;
        (*v107)(v55, v56);

        v111 = v120;
        v112 = v119;
        v121 = v119;
        v122 = v120;
      }

      v51 += 2;
      --v48;
    }

    while (v48);

    v7 = v108;
    v26 = v111;
    v3 = v94;
    v14 = v93;
  }

  v69 = *v92;
  LODWORD(v111) = 1 << v69;
  v107 = (v14 + 56);
  v102 = (v3 + 8);
  v106 = (v14 + 8);
  v70 = (v14 + 48);
  v103 = (v14 + 32);
  v71 = aAt2;
  v72 = 38;
  v109 = v69;
  do
  {
    if (v69 <= 7 && (v111 & *(v71 - 32)) != 0)
    {
      v76 = *(v71 - 3);
      v75 = *(v71 - 2);
      v77 = *v71;
      v110 = *(v71 - 1);
      v119 = v76;
      v120 = v75;
      v78 = HIBYTE(v75) & 0xF;
      if ((v75 & 0x2000000000000000) == 0)
      {
        v78 = v76 & 0xFFFFFFFFFFFFLL;
      }

      if (v78)
      {
        swift_bridgeObjectRetain_n();

        sub_1AFDFD068();
        sub_1AFDFD1C8();
        v79 = sub_1AFDFCD48();

        if (v79)
        {
          MEMORY[0x1B2718AE0](25180, 0xE200000000000000);
        }

        sub_1AFDFD1C8();

        v80 = sub_1AFDFCD48();

        if (v80)
        {
          v117 = 25180;
          v118 = 0xE200000000000000;
          MEMORY[0x1B2718AE0](v119, v120);

          v119 = v117;
          v120 = v118;
        }

        v7 = v108;
      }

      else
      {
      }

      v81 = v100;
      v82 = v114;
      sub_1AFDFC4A8();
      v114 = v82;
      if (v82)
      {

        v114 = 0;
        v83 = 1;
      }

      else
      {
        v84 = v104;
        sub_1AFDFC3E8();
        v85 = v113;
        sub_1AFDFC458();
        v86 = v84;
        v7 = v108;
        (*v102)(v86, v105);
        (*v106)(v81, v85);
        v83 = 0;
      }

      v87 = v113;
      (*v107)(v7, v83, 1, v113);
      if ((*v70)(v7, 1, v87) == 1)
      {

        sub_1AF985590(v7, &qword_1EB640C10, sub_1AF95A7B4, MEMORY[0x1E69E6720], sub_1AF98552C);
      }

      else
      {
        v73 = v96;
        v74 = v113;
        (*v103)(v96, v7, v113);
        v117 = v112;
        v118 = v26;
        v115 = v110;
        v116 = v77;
        sub_1AF95A690();
        sub_1AF95A6E4();
        sub_1AF9855F0();
        v7 = v108;
        sub_1AFDFD978();
        (*v106)(v73, v74);

        v26 = v120;
        v112 = v119;
        v121 = v119;
        v122 = v120;
      }

      v69 = v109;
    }

    v71 += 40;
    --v72;
  }

  while (v72);
  v88 = sub_1AF985648(v95, v69, &v121);
  v89 = sub_1AFA5413C(v88);

  return v89;
}

uint64_t sub_1AF98495C(unsigned __int8 *a1, double a2)
{
  v4 = 0;
  v74 = sub_1AFDFC3F8();
  v5 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v73 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF98552C(0, &qword_1EB640C10, sub_1AF95A7B4, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v63 - v11;
  sub_1AF95A7B4(0);
  v14 = v13;
  v15 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v71 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v68 = &v63 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v80 = &v63 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v72 = &v63 - v22;
  v23 = *(v2 + OBJC_IVAR____TtC3VFX9_CodeNode_code + 8);
  v81 = *(v2 + OBJC_IVAR____TtC3VFX9_CodeNode_code);
  v67 = v2;
  v24 = *(v2 + OBJC_IVAR____TtC3VFX9_CodeNode_inputNames);
  v25 = *(v24 + 16);
  v77 = v9;
  v82 = v23;
  if (v25)
  {
    v66 = a1;
    v79 = (v15 + 56);
    v65 = v5;
    v69 = (v5 + 8);
    v75 = (v15 + 8);
    v78 = (v15 + 48);
    v64 = v15;
    v70 = (v15 + 32);

    v63 = v24;
    v26 = (v24 + 40);
    v27 = v80;
    do
    {
      v29 = *(v26 - 1);
      v28 = *v26;
      v87 = v29;
      v88 = v28;
      v30 = HIBYTE(v28) & 0xF;
      if ((v28 & 0x2000000000000000) == 0)
      {
        v30 = v29 & 0xFFFFFFFFFFFFLL;
      }

      if (v30)
      {
        swift_bridgeObjectRetain_n();
        sub_1AFDFD068();
        sub_1AFDFD1C8();
        v31 = sub_1AFDFCD48();

        if (v31)
        {
          MEMORY[0x1B2718AE0](25180, 0xE200000000000000);
        }

        sub_1AFDFD1C8();
        v32 = sub_1AFDFCD48();

        if (v32)
        {
          v85 = 25180;
          v86 = 0xE200000000000000;
          MEMORY[0x1B2718AE0](v87, v88);

          v87 = v85;
          v88 = v86;
        }

        v27 = v80;
      }

      else
      {
        swift_bridgeObjectRetain_n();
      }

      sub_1AFDFC4A8();
      if (v4)
      {

        v4 = 0;
        v33 = 1;
      }

      else
      {
        v34 = v73;
        sub_1AFDFC3E8();
        sub_1AFDFC458();
        (*v69)(v34, v74);
        (*v75)(v27, v14);
        v33 = 0;
      }

      (*v79)(v12, v33, 1, v14);
      if ((*v78)(v12, 1, v14) == 1)
      {

        sub_1AF985590(v12, &qword_1EB640C10, sub_1AF95A7B4, MEMORY[0x1E69E6720], sub_1AF98552C);
      }

      else
      {
        v35 = *v70;
        v76 = 0;
        v36 = v25;
        v37 = v12;
        v38 = v14;
        v39 = v72;
        v35(v72, v37, v38);
        v85 = v81;
        v86 = v82;
        v87 = 37;
        v88 = 0xE100000000000000;
        MEMORY[0x1B2718AE0](v29, v28);

        v83 = v87;
        v84 = v88;
        sub_1AF95A690();
        sub_1AF95A6E4();
        sub_1AF9855F0();
        sub_1AFDFD978();
        v27 = v80;

        v40 = v39;
        v14 = v38;
        v12 = v37;
        v25 = v36;
        v4 = v76;
        (*v75)(v40, v14);
        v81 = v87;
        v82 = v88;
      }

      v26 += 2;
      --v25;
    }

    while (v25);

    v9 = v77;
    a1 = v66;
    v5 = v65;
    v15 = v64;
  }

  else
  {
  }

  v41 = *a1;
  LODWORD(v80) = 1 << v41;
  v78 = (v15 + 56);
  v69 = (v5 + 8);
  v70 = v41;
  v75 = (v15 + 8);
  v76 = (v15 + 48);
  v72 = (v15 + 32);
  v42 = aAt2;
  v43 = 38;
  do
  {
    if (v41 <= 7 && (v80 & *(v42 - 32)) != 0)
    {
      v45 = *(v42 - 3);
      v44 = *(v42 - 2);
      v46 = *v42;
      v79 = *(v42 - 1);
      v87 = v45;
      v88 = v44;
      v47 = HIBYTE(v44) & 0xF;
      if ((v44 & 0x2000000000000000) == 0)
      {
        v47 = v45 & 0xFFFFFFFFFFFFLL;
      }

      if (v47)
      {
        swift_bridgeObjectRetain_n();
        v48 = v46;

        sub_1AFDFD068();
        sub_1AFDFD1C8();
        v49 = sub_1AFDFCD48();

        if (v49)
        {
          MEMORY[0x1B2718AE0](25180, 0xE200000000000000);
        }

        sub_1AFDFD1C8();

        v50 = sub_1AFDFCD48();

        if (v50)
        {
          v85 = 25180;
          v86 = 0xE200000000000000;
          MEMORY[0x1B2718AE0](v87, v88);

          v87 = v85;
          v88 = v86;
        }

        v9 = v77;
      }

      else
      {

        v48 = v46;
      }

      v51 = v71;
      sub_1AFDFC4A8();
      if (v4)
      {

        v4 = 0;
        v52 = 1;
      }

      else
      {
        v53 = v73;
        sub_1AFDFC3E8();
        sub_1AFDFC458();
        v54 = v53;
        v9 = v77;
        (*v69)(v54, v74);
        (*v75)(v51, v14);
        v52 = 0;
      }

      (*v78)(v9, v52, 1, v14);
      if ((*v76)(v9, 1, v14) == 1)
      {

        sub_1AF985590(v9, &qword_1EB640C10, sub_1AF95A7B4, MEMORY[0x1E69E6720], sub_1AF98552C);
      }

      else
      {
        v55 = v68;
        (*v72)(v68, v9, v14);
        v85 = v81;
        v86 = v82;
        v83 = v79;
        v84 = v48;
        sub_1AF95A690();
        sub_1AF95A6E4();
        sub_1AF9855F0();
        v9 = v77;
        sub_1AFDFD978();

        v56 = v55;
        v41 = v70;
        (*v75)(v56, v14);

        v81 = v87;
        v82 = v88;
      }
    }

    v42 += 40;
    --v43;
  }

  while (v43);
  v57 = *(*(v67 + 32) + 32);
  sub_1AF448650(*(v67 + 24), *(v67 + 32));
  sub_1AF442064(v57);

  v58 = sub_1AF937FF8(v41, v57);
  if ((~v58 & 0xF000000000000007) == 0)
  {
    sub_1AF442064(v57);
    v58 = v57;
  }

  v59 = sub_1AF94B594(v41, v58);
  v61 = v60;
  sub_1AF445BE4(v58);
  sub_1AF445BE4(v57);
  v87 = v59;
  v88 = v61;
  MEMORY[0x1B2718AE0](0x203D2030722520, 0xE700000000000000);
  MEMORY[0x1B2718AE0](v81, v82);

  MEMORY[0x1B2718AE0](59, 0xE100000000000000);
  return v87;
}

uint64_t sub_1AF9853D8()
{

  sub_1AF919DAC(*(v0 + 24), *(v0 + 32));
  v1 = OBJC_IVAR____TtC3VFX4Node_authoringID;
  v2 = sub_1AFDFC318();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void sub_1AF98552C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1AF985590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

unint64_t sub_1AF9855F0()
{
  result = qword_1ED722BD8;
  if (!qword_1ED722BD8)
  {
    sub_1AF95A7B4(255);
    result = swift_getWitnessTable(MEMORY[0x1E69E9290], v3, v0, v1);
    atomic_store(result, &qword_1ED722BD8);
  }

  return result;
}

uint64_t sub_1AF985648(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *(*(a1 + OBJC_IVAR____TtC3VFX9_CodeNode_outputTypes) + 16);

  v35 = v4;
  if (v4)
  {
    v6 = 0;
    v34 = v5 + 32;
    v7 = MEMORY[0x1E69E7CC0];
    do
    {
      v8 = *(v34 + 8 * v6);
      sub_1AF442064(v8);
      v9 = sub_1AF937FF8(a2, v8);
      if ((~v9 & 0xF000000000000007) == 0)
      {
        sub_1AF442064(v8);
        v9 = v8;
      }

      v10 = sub_1AF94B594(a2, v9);
      v12 = v11;
      sub_1AF445BE4(v9);
      sub_1AF90EDE8(v8, &v36, 0.0);
      v13 = sub_1AF92F69C(v8, &v36, a2);
      v15 = v14;
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v36);
      v36 = v10;
      v37 = v12;
      MEMORY[0x1B2718AE0](7480608, 0xE300000000000000);
      v16 = sub_1AFDFEA08();
      MEMORY[0x1B2718AE0](v16);

      MEMORY[0x1B2718AE0](2112800, 0xE300000000000000);
      MEMORY[0x1B2718AE0](v13, v15);

      MEMORY[0x1B2718AE0](59, 0xE100000000000000);
      v17 = v36;
      v18 = v37;
      sub_1AF985A10(0, &qword_1EB638390, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E6F90]);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1AFE431C0;
      *(inited + 32) = v17;
      *(inited + 40) = v18;
      sub_1AF441DD8(0);
      *(inited + 48) = 0;
      *(inited + 56) = 0;
      v20 = swift_initStackObject();
      *(v20 + 16) = xmmword_1AFE431C0;
      *(v20 + 32) = inited;
      v21 = v20 + 32;
      v22 = sub_1AFA56CA0();
      swift_setDeallocating();
      sub_1AF985590(v21, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8], sub_1AF985A10);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_1AF426BC8(0, v7[2] + 1, 1, v7);
      }

      v24 = v7[2];
      v23 = v7[3];
      if (v24 >= v23 >> 1)
      {
        v7 = sub_1AF426BC8(v23 > 1, v24 + 1, 1, v7);
      }

      ++v6;
      sub_1AF445BE4(v8);
      v7[2] = v24 + 1;
      v7[v24 + 4] = v22;
    }

    while (v35 != v6);
  }

  v25 = sub_1AFA56CA0();

  v26 = sub_1AFA56740(a3);
  v28 = v27;
  sub_1AF985A10(0, &qword_1EB638390, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E6F90]);
  v29 = swift_initStackObject();
  *(v29 + 16) = xmmword_1AFE431C0;
  *(v29 + 32) = v26;
  *(v29 + 40) = v28;
  sub_1AF441DD8(0);
  *(v29 + 48) = 0;
  *(v29 + 56) = 0;
  v30 = swift_initStackObject();
  *(v30 + 16) = xmmword_1AFE4C620;
  *(v30 + 32) = v25;
  *(v30 + 40) = v29;
  v31 = sub_1AFA56CA0();
  swift_setDeallocating();
  sub_1AF985A10(0, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
  swift_arrayDestroy();
  return v31;
}

void sub_1AF985A10(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1AF985A60(unint64_t *a1, uint64_t a2, const char *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1AF985A10(255, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    v8 = a2;
    result = swift_getWitnessTable(a3, v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1AF985AE4(unint64_t *a1, uint64_t (*a2)(void), const char *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1AF985A10(255, &qword_1EB640C18, &type metadata for AnyType, MEMORY[0x1E69E62F8]);
    v8 = v7;
    v9 = a2();
    result = swift_getWitnessTable(a3, v8, &v9);
    atomic_store(result, a1);
  }

  return result;
}

void *sub_1AF985BCC()
{
  v1 = v0;
  (*(*v0 + 312))(v4);
  v2 = OBJC_IVAR____TtC3VFX12ConstantNode_semantic;
  sub_1AF914FF0(v4, v1 + OBJC_IVAR____TtC3VFX12ConstantNode_holder);
  *(v1 + v2) = xmmword_1AFE22A20;
  v1[2] = MEMORY[0x1E69E7CC0];
  v1[3] = 0;
  v1[4] = 0;
  sub_1AFDFC308();
  sub_1AF9151B0(v4);
  return v1;
}

uint64_t sub_1AF985E24@<X0>(unint64_t *a1@<X8>, float a2@<S0>)
{
  v3[3] = MEMORY[0x1E69E6448];
  *v3 = a2;
  sub_1AF975674(v3, a1);
  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v3);
}

uint64_t sub_1AF985EA8@<X0>(unint64_t *a1@<X8>)
{
  type metadata accessor for simd_float2x2(0);
  v4[3] = v2;
  v4[0] = 1065353216;
  v4[1] = 0x3F80000000000000;
  sub_1AF975674(v4, a1);
  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v4);
}

uint64_t sub_1AF985F4C@<X0>(unint64_t *a1@<X8>)
{
  type metadata accessor for simd_float3x3(0);
  v5[3] = v2;
  v3 = swift_allocObject();
  v5[0] = v3;
  v3[1] = xmmword_1AFE20150;
  v3[2] = xmmword_1AFE20160;
  v3[3] = xmmword_1AFE20180;
  sub_1AF975674(v5, a1);
  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v5);
}

uint64_t sub_1AF986014@<X0>(unint64_t *a1@<X8>)
{
  type metadata accessor for simd_float4x4(0);
  v5[3] = v2;
  v3 = swift_allocObject();
  v5[0] = v3;
  v3[1] = xmmword_1AFE20150;
  v3[2] = xmmword_1AFE20160;
  v3[3] = xmmword_1AFE20180;
  v3[4] = xmmword_1AFE201A0;
  sub_1AF975674(v5, a1);
  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v5);
}

uint64_t sub_1AF9860E0@<X0>(unint64_t *a1@<X8>)
{
  type metadata accessor for simd_quatf(0);
  v4[3] = v2;
  v4[0] = swift_allocObject();
  *(v4[0] + 16) = xmmword_1AFE201A0;
  sub_1AF975674(v4, a1);
  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v4);
}

char *sub_1AF98614C(char *a1)
{
  v2 = swift_allocObject();
  v3 = OBJC_IVAR____TtC3VFX12ConstantNode_semantic;
  *(v2 + OBJC_IVAR____TtC3VFX12ConstantNode_semantic) = xmmword_1AFE22A20;
  sub_1AF914FF0(&a1[OBJC_IVAR____TtC3VFX12ConstantNode_holder], v2 + OBJC_IVAR____TtC3VFX12ConstantNode_holder);
  *(v2 + v3) = *&a1[OBJC_IVAR____TtC3VFX12ConstantNode_semantic];
  return sub_1AF96FD00(a1);
}

uint64_t sub_1AF9861CC()
{

  sub_1AF919DAC(*(v0 + 24), *(v0 + 32));
  v1 = OBJC_IVAR____TtC3VFX4Node_authoringID;
  v2 = sub_1AFDFC318();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1AF9151B0(v0 + OBJC_IVAR____TtC3VFX12ConstantNode_holder);

  return swift_deallocClassInstance();
}

void sub_1AF9862F0()
{
  sub_1AFDFE218();

  v0 = sub_1AFDFF4B8();
  MEMORY[0x1B2718AE0](v0);

  sub_1AFDFE518();
  __break(1u);
}

BOOL sub_1AF9863CC(unint64_t a1, unint64_t a2)
{
  if (sub_1AF98750C(a1, a2) != 1)
  {
    return 0;
  }

  if (a1 >> 61 != 1)
  {
    if (a1 >> 61 == 6)
    {
      v4 = __ROR8__(a1 + 0x3FFFFFFFFFFFFFD0, 3);
      v5 = v4 > 6 || v4 == 4;
      v6 = a2 >> 61;
      v7 = !v5 && v6 == 1;
      if (v7 && *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18) >> 61 != 1)
      {
        return 1;
      }

      if (((a1 + 0x3FFFFFFFFFFFFFD0) & 0xFFFFFFFFFFFFFFE7) == 0)
      {
        if (sub_1AF90F890(a2, 0xC000000000000058) & 1) != 0 || (sub_1AF90F890(a2, 0xC000000000000060))
        {
          return 1;
        }

        if (v6 == 6 && ((a2 + 0x3FFFFFFFFFFFFFD0) & 0xFFFFFFFFFFFFFFE7) == 0)
        {
          sub_1AF90E730(a1);
          v13 = sub_1AF87136C(v12);
          sub_1AF90E730(a2);
          if (v13 < sub_1AF87136C(v14))
          {
            return 1;
          }

          if (((a1 + 0x3FFFFFFFFFFFFFC8) & 0xFFFFFFFFFFFFFFEFLL) != 0)
          {
            return ((a2 + 0x3FFFFFFFFFFFFFC8) & 0xFFFFFFFFFFFFFFEFLL) == 0;
          }
        }
      }
    }

    return 0;
  }

  if (a2 >> 61 != 1)
  {
    return 0;
  }

  v9 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v10 = a2 & 0x1FFFFFFFFFFFFFFFLL;
  v11 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  return (sub_1AF90F890(*((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x18), *(v10 + 24)) & 1) != 0 && v9 < v11;
}

unint64_t sub_1AF986554@<X0>(void *a1@<X8>)
{
  v3 = MEMORY[0x1E69E6F90];
  sub_1AF98790C(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AFE431C0;
  v5 = swift_allocObject();
  v6 = *(v1 + OBJC_IVAR____TtC3VFX8CastNode_dstType);
  *(v5 + 16) = v6;
  *(v4 + 32) = v5 | 0x8000000000000000;
  sub_1AF98790C(0, &unk_1EB630980, &type metadata for AnyValue, v3);
  v7 = swift_allocObject();
  *(v7 + 64) = MEMORY[0x1E69E6530];
  *(v7 + 16) = xmmword_1AFE431C0;
  *(v7 + 32) = xmmword_1AFE87F70;
  result = sub_1AF442064(v6);
  *a1 = &unk_1F24F2FE8;
  a1[1] = v4;
  v9 = MEMORY[0x1E69E7CC0];
  a1[2] = &unk_1F24F3010;
  a1[3] = v9;
  a1[4] = v9;
  a1[5] = v7;
  return result;
}

void *sub_1AF986674(void *a1)
{
  sub_1AF441150(a1, a1[3]);
  result = sub_1AFDFF388();
  if (!v2)
  {
    sub_1AF448018(v5, v5[3]);
    sub_1AF974884();
    sub_1AFDFEAD8();
    v4 = *(v1 + OBJC_IVAR____TtC3VFX8CastNode_dstType);
    *(v1 + OBJC_IVAR____TtC3VFX8CastNode_dstType) = v5[6];
    sub_1AF445BE4(v4);
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v5);
  }

  return result;
}

uint64_t sub_1AF986744(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a3;
  v6 = sub_1AF937FF8(a3, a1);
  if ((~v6 & 0xF000000000000007) == 0)
  {
    sub_1AF442064(a1);
    v6 = a1;
  }

  v7 = sub_1AF937FF8(v3, a2);
  if ((~v7 & 0xF000000000000007) == 0)
  {
    sub_1AF442064(a2);
    v7 = a2;
  }

  sub_1AF90F890(v6, v7);
  v8 = v7 >> 61;
  if (!(v7 >> 61))
  {
    v9 = *(v7 + 16);
    sub_1AF442064(v6);
    sub_1AF442064(v7);
    sub_1AF442064(v9);
    v10 = sub_1AF986744(v6, v9, v3);
    sub_1AF445BE4(v9);
    sub_1AF445BE4(v6);
    sub_1AF445BE4(v7);
    sub_1AF445BE4(v7);
    sub_1AF445BE4(v6);
    return v10;
  }

  sub_1AF442064(v6);
  sub_1AF442064(v7);
  if (sub_1AF90F890(v6, v7))
  {
    sub_1AF445BE4(v6);
    sub_1AF445BE4(v7);
    sub_1AF445BE4(v7);
    sub_1AF445BE4(v6);
    return 12325;
  }

  if (sub_1AF90DCC0(v6) & 1) != 0 && (sub_1AF90DCC0(v7))
  {
    goto LABEL_51;
  }

  if (v6 >> 61 == 1)
  {
    if (v8 == 1)
    {
      v12 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x18) & 0xE000000000000000;
      if (v12 != 0x2000000000000000)
      {
        v13 = *((v7 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
        if ((v13 & 0xE000000000000000) != 0x2000000000000000)
        {
          v14 = *((v7 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          v54 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          if (v14 >= v54)
          {
            sub_1AF90EDE8(v13, &v58, 0.0);
            v53 = sub_1AF92F69C(v13, &v58, v3);
            v38 = v37;
            _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v58);
            if (v14)
            {
              v57 = MEMORY[0x1E69E7CC0];
              sub_1AFC05CE4(0, v14 & ~(v14 >> 63), 0);
              v39 = 0;
              do
              {
                if (v39 >= v54)
                {
                  v41 = v38;

                  v42 = v53;
                }

                else
                {
                  v58 = 12325;
                  v59 = 0xE200000000000000;
                  v40 = sub_1AF931868(v6, v39, v3);
                  MEMORY[0x1B2718AE0](v40);

                  v42 = v58;
                  v41 = v59;
                }

                v44 = *(v57 + 16);
                v43 = *(v57 + 24);
                v45 = v44 + 1;
                if (v44 >= v43 >> 1)
                {
                  sub_1AFC05CE4(v43 > 1, v44 + 1, 1);
                  v45 = v44 + 1;
                }

                ++v39;
                *(v57 + 16) = v45;
                v46 = v57 + 16 * v44;
                *(v46 + 32) = v42;
                *(v46 + 40) = v41;
              }

              while (v14 != v39);
            }
          }

          else if (v14)
          {
            v55 = v3;
            v56 = MEMORY[0x1E69E7CC0];
            sub_1AFC05CE4(0, v14 & ~(v14 >> 63), 0);
            v15 = 0;
            do
            {
              v16 = v14;
              v17 = sub_1AF931868(v6, v15, v55);
              v58 = 12325;
              v59 = 0xE200000000000000;
              MEMORY[0x1B2718AE0](v17);

              v19 = *(v56 + 16);
              v18 = *(v56 + 24);
              if (v19 >= v18 >> 1)
              {
                sub_1AFC05CE4(v18 > 1, v19 + 1, 1);
              }

              ++v15;
              *(v56 + 16) = v19 + 1;
              v20 = v56 + 16 * v19;
              *(v20 + 32) = 12325;
              *(v20 + 40) = 0xE200000000000000;
              v14 = v16;
            }

            while (v16 != v15);
            v3 = v55;
          }

          v58 = sub_1AF94B4E8(v3, v7);
          v59 = v47;
          MEMORY[0x1B2718AE0](40, 0xE100000000000000);
          sub_1AF98790C(0, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
          sub_1AF488088();
          v48 = sub_1AFDFCD98();
          v50 = v49;

          MEMORY[0x1B2718AE0](v48, v50);

          MEMORY[0x1B2718AE0](41, 0xE100000000000000);
          sub_1AF445BE4(v6);
          sub_1AF445BE4(v7);
          sub_1AF445BE4(v6);
          v36 = v7;
          goto LABEL_60;
        }
      }
    }

    else
    {
      v12 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x18) & 0xE000000000000000;
    }

    if (v12 != 0x2000000000000000 && (sub_1AF90DCC0(v7) & 1) != 0)
    {
      sub_1AF445BE4(v6);
      sub_1AF445BE4(v7);
      v21 = sub_1AF931868(v6, 0, v3);
      v58 = 12325;
      v59 = 0xE200000000000000;
      MEMORY[0x1B2718AE0](v21);

LABEL_59:
      sub_1AF445BE4(v7);
      v36 = v6;
LABEL_60:
      sub_1AF445BE4(v36);
      return v58;
    }
  }

  if (v8 == 1)
  {
    v22 = *((v7 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    if ((sub_1AF90DCC0(v6) & 1) != 0 && *((v7 & 0x1FFFFFFFFFFFFFFFLL) + 0x18) >> 61 != 1)
    {
      if (v22)
      {
        v58 = MEMORY[0x1E69E7CC0];
        sub_1AFC05CE4(0, v22 & ~(v22 >> 63), 0);
        v23 = v58;
        v24 = *(v58 + 16);
        v25 = 16 * v24;
        do
        {
          v58 = v23;
          v26 = *(v23 + 24);
          v27 = v24 + 1;
          if (v24 >= v26 >> 1)
          {
            sub_1AFC05CE4(v26 > 1, v24 + 1, 1);
            v23 = v58;
          }

          *(v23 + 16) = v27;
          v28 = v23 + v25;
          *(v28 + 32) = 12325;
          *(v28 + 40) = 0xE200000000000000;
          v25 += 16;
          v24 = v27;
          --v22;
        }

        while (v22);
      }

      sub_1AF98790C(0, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
      sub_1AF488088();
      v29 = sub_1AFDFCD98();
      v31 = v30;

      v58 = sub_1AF94B4E8(v3, v7);
      v59 = v32;
      MEMORY[0x1B2718AE0](40, 0xE100000000000000);
      MEMORY[0x1B2718AE0](v29, v31);

      MEMORY[0x1B2718AE0](41, 0xE100000000000000);
      sub_1AF445BE4(v6);
      sub_1AF445BE4(v7);
      goto LABEL_59;
    }
  }

  if (v6 == 0xC000000000000020 && (sub_1AF90F890(0xC000000000000040, v7) & 1) != 0)
  {
    goto LABEL_37;
  }

  if (v8 != 6)
  {
LABEL_47:
    if (((sub_1AF90F890(v6, 0xC000000000000010) & 1) == 0 || (sub_1AF90DCC0(v7) & 1) == 0) && ((sub_1AF90F890(v7, 0xC000000000000010) & 1) == 0 || (sub_1AF90DCC0(v6) & 1) == 0))
    {
      if (v6 >> 61 != 6 || v7 != 0xC0000000000000B8 || (v34 = v6, ((v6 + 0x3FFFFFFFFFFFFFD0) & 0xFFFFFFFFFFFFFFE7) != 0))
      {
        if (v6 != 0xC0000000000000B8 || v8 != 6 || (v34 = v7, ((v7 + 0x3FFFFFFFFFFFFFD0) & 0xFFFFFFFFFFFFFFE7) != 0))
        {
          v58 = 0;
          v59 = 0xE000000000000000;
          sub_1AFDFE218();
          MEMORY[0x1B2718AE0](0xD00000000000002CLL, 0x80000001AFF3CF80);
          v51 = sub_1AF90D394(v6);
          MEMORY[0x1B2718AE0](v51);

          MEMORY[0x1B2718AE0](9602786, 0xA300000000000000);
          v52 = sub_1AF90D394(v7);
          MEMORY[0x1B2718AE0](v52);

          MEMORY[0x1B2718AE0](33, 0xE100000000000000);
          goto LABEL_72;
        }
      }

LABEL_58:
      sub_1AF445BE4(v34);
      v58 = sub_1AF94B4E8(v3, v7);
      v59 = v35;
      MEMORY[0x1B2718AE0](691021096, 0xE400000000000000);
      goto LABEL_59;
    }

LABEL_51:
    sub_1AF445BE4(v6);
    v34 = v7;
    goto LABEL_58;
  }

  if (v7 == 0xC000000000000058)
  {
    v33 = 0xC000000000000028;
LABEL_46:
    if (v6 == v33)
    {
      goto LABEL_72;
    }

    goto LABEL_47;
  }

  if (v7 == 0xC000000000000028)
  {
    v33 = 0xC000000000000058;
    goto LABEL_46;
  }

  if (v7 != 0xC000000000000020 || (sub_1AF90F890(0xC000000000000040, v6) & 1) == 0)
  {
    goto LABEL_47;
  }

  v7 = v6;
LABEL_37:
  sub_1AF445BE4(v7);
LABEL_72:
  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AF9870FC(void *a1)
{
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF3C8();
  v3[6] = *(v1 + OBJC_IVAR____TtC3VFX8CastNode_dstType);
  sub_1AF448018(v3, v3[3]);
  sub_1AF9748D8();
  sub_1AFDFEC38();
  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v3);
}

uint64_t sub_1AF9871C8(unsigned __int8 *a1)
{
  v2 = *(*(v1 + 24) + 32);
  v3 = *a1;
  sub_1AF448650(*(v1 + 24), *(v1 + 32));
  sub_1AF442064(v2);

  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v5 + 32);
  sub_1AF448650(v4, v5);
  sub_1AF442064(v6);

  v7 = sub_1AF986744(v2, v6, v3);
  sub_1AF445BE4(v2);
  sub_1AF445BE4(v6);
  return v7;
}

void sub_1AF987298(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC3VFX8CastNode_dstType);
  sub_1AF442064(v3);
  v4 = sub_1AF90D394(v3);
  v6 = v5;
  sub_1AF445BE4(v3);

  sub_1AF9A0BAC(1, v4, v6);

  v7 = sub_1AFDFDDB8();
  v9 = v8;

  sub_1AF701628(1, v4, v6);

  sub_1AF725990();
  sub_1AFDFD0A8();

  MEMORY[0x1B2718AE0](v7, v9);
}

char *sub_1AF9873D0(char *a1)
{
  v2 = swift_allocObject();
  v3 = *&a1[OBJC_IVAR____TtC3VFX8CastNode_dstType];
  *(v2 + OBJC_IVAR____TtC3VFX8CastNode_dstType) = v3;
  sub_1AF442064(v3);
  return sub_1AF96FD00(a1);
}

uint64_t sub_1AF987424()
{

  sub_1AF919DAC(*(v0 + 24), *(v0 + 32));
  v1 = OBJC_IVAR____TtC3VFX4Node_authoringID;
  v2 = sub_1AFDFC318();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1AF445BE4(*(v0 + OBJC_IVAR____TtC3VFX8CastNode_dstType));

  return swift_deallocClassInstance();
}

uint64_t sub_1AF98750C(unint64_t a1, unint64_t a2)
{
  if (sub_1AF90F890(a1, a2))
  {
    return 1;
  }

  v5 = a2 >> 61;
  if (!(a2 >> 61))
  {
    v6 = *(a2 + 16);
    sub_1AF442064(v6);
    v7 = sub_1AF98750C(a1, v6);
    sub_1AF445BE4(v6);
    return v7;
  }

  v8 = a1 >> 61;
  if (a1 >> 61 == 1)
  {
    goto LABEL_48;
  }

  if (v8 == 6)
  {
    v9 = __ROR8__(a1 + 0x3FFFFFFFFFFFFFD0, 3);
    if (v9 <= 6 && v9 != 4 && v5 == 6)
    {
      v10 = __ROR8__(a2 + 0x3FFFFFFFFFFFFFD0, 3);
      if (v10 < 7 && ((0x6Fu >> v10) & 1) != 0)
      {
        return 1;
      }
    }
  }

  if (v8 == 1)
  {
LABEL_48:
    v11 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    if (v11 >> 61 != 1)
    {
      if (v5 != 1)
      {
        goto LABEL_17;
      }

      if (*((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18) >> 61 != 1)
      {
        return 1;
      }

      if (v8 == 1)
      {
LABEL_17:
        if (sub_1AF90DCC0(a2))
        {
          sub_1AF442064(v11);
          v12 = sub_1AF90F890(v11, a2);
          v13 = v11;
LABEL_35:
          sub_1AF445BE4(v13);
          return v12 & 1;
        }
      }
    }
  }

  if ((sub_1AF90DCC0(a1) & 1) != 0 && v5 == 1)
  {
    v14 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    if (v14 >> 61 != 1)
    {
      sub_1AF442064(*((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18));
      v12 = sub_1AF90F890(a1, v14);
      v13 = v14;
      goto LABEL_35;
    }
  }

  if (a1 == 0xC000000000000020 && (sub_1AF90F890(0xC000000000000040, a2) & 1) != 0 || a2 == 0xC000000000000020 && (sub_1AF90F890(0xC000000000000040, a1) & 1) != 0 || (sub_1AF90F890(a1, 0xC000000000000010) & 1) != 0 && (sub_1AF90DCC0(a2) & 1) != 0 || (sub_1AF90F890(a2, 0xC000000000000010) & 1) != 0 && (sub_1AF90DCC0(a1) & 1) != 0)
  {
    return 0;
  }

  if (a2 == 0xC0000000000000B8 && v8 == 6)
  {
    if (((a1 + 0x3FFFFFFFFFFFFFD0) & 0xFFFFFFFFFFFFFFE7) == 0)
    {
      return 0;
    }
  }

  else if (v8 != 6)
  {
    goto LABEL_43;
  }

  if (a1 == 0xC000000000000028)
  {
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1AFE4C440;
    v16 = sub_1AF90F890(v15 | 0x2000000000000000, a2);

    if ((v16 & 1) == 0)
    {
      goto LABEL_43;
    }

    return 1;
  }

  if (a1 == 0xC0000000000000B8 && v5 == 6 && ((a2 + 0x3FFFFFFFFFFFFFD0) & 0xFFFFFFFFFFFFFFE7) == 0)
  {
    return 0;
  }

LABEL_43:
  if (a2 == 0xC000000000000028)
  {
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1AFE4C440;
    v18 = sub_1AF90F890(v17 | 0x2000000000000000, a1);

    if (v18)
    {
      return 1;
    }
  }

  return 2;
}

unint64_t sub_1AF987824(unint64_t a1, unint64_t a2)
{
  if (a2 >> 61 == 4)
  {
    v3 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    sub_1AF442064(v3);
    if (sub_1AF98750C(a1, v3) != 1)
    {
      sub_1AF445BE4(v3);
      return 0xF000000000000007;
    }
  }

  else
  {
    if (a1 >> 61 != 6)
    {
      return 0xF000000000000007;
    }

    v4 = __ROR8__(a1 + 0x3FFFFFFFFFFFFFD0, 3);
    if (v4 > 6 || v4 == 4)
    {
      return 0xF000000000000007;
    }

    v3 = 0xC000000000000058;
    if ((sub_1AF90F890(a1, 0xC000000000000058) & 1) != 0 || (sub_1AF9C4C80(0xC000000000000058, a2) & 1) == 0 || sub_1AF98750C(a1, 0xC000000000000058) == 2)
    {
      return 0xF000000000000007;
    }
  }

  return v3;
}

void sub_1AF98790C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void *sub_1AF987964()
{
  v0 = swift_allocObject();
  v1 = v0 + OBJC_IVAR____TtC3VFX20ColorRampTextureNode_colorRamp;
  sub_1AF43A038(0);
  v2 = swift_allocObject();
  __asm { FMOV            V1.4S, #1.0 }

  v2[1] = xmmword_1AFE4C620;
  v2[2] = _Q1;
  v2[3] = xmmword_1AFE201A0;
  *v1 = v2;
  *(v1 + 1) = &unk_1F24EDC70;
  v1[16] = 1;
  *(v0 + OBJC_IVAR____TtC3VFX14ECSStorageNode_entity) = 0xFFFFFFFFLL;
  v0[2] = MEMORY[0x1E69E7CC0];
  v0[3] = 0;
  v0[4] = 0;
  sub_1AFDFC308();
  return v0;
}

void *sub_1AF987A1C()
{
  v0 = swift_allocObject();
  v1 = v0 + OBJC_IVAR____TtC3VFX16CurveTextureNode_curve;
  *v1 = sub_1AF9D3914(&unk_1F24FFCA0);
  *(v1 + 1) = v2;
  *(v1 + 2) = 0;
  v1[24] = 1;
  *(v0 + OBJC_IVAR____TtC3VFX14ECSStorageNode_entity) = 0xFFFFFFFFLL;
  v0[2] = MEMORY[0x1E69E7CC0];
  v0[3] = 0;
  v0[4] = 0;
  sub_1AFDFC308();
  return v0;
}

void sub_1AF987AAC()
{
  sub_1AFDFE218();

  v0 = sub_1AF9703D8();
  MEMORY[0x1B2718AE0](v0);

  sub_1AFDFE518();
  __break(1u);
}

uint64_t sub_1AF987C18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v7 = *(a1 + 8);
  v8 = **(v7 + OBJC_IVAR____TtC3VFX13AuthoringNode_raw);
  v9 = swift_conformsToProtocol2();
  if (v9)
  {
    v10 = *(v9 + 8);
    v11 = v9;

    v10(a2, a3, v8, v11);
  }

  *a4 = v7;
}

unint64_t sub_1AF987D30(unsigned __int8 *a1)
{
  if (*a1 >= 3u)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0xD00000000000002DLL;
  }
}

uint64_t sub_1AF987DC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_1AF98F688(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1AFE431C0;
  result = swift_allocObject();
  *(result + 16) = a1;
  *(v6 + 32) = result | 0x8000000000000000;
  v8 = MEMORY[0x1E69E7CC0];
  *a3 = MEMORY[0x1E69E7CC0];
  a3[1] = v6;
  a3[2] = a2;
  a3[3] = v8;
  a3[4] = v8;
  a3[5] = v8;
  return result;
}

unint64_t sub_1AF987E70(unsigned __int8 *a1)
{
  if (*a1 >= 3u)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0xD00000000000002CLL;
  }
}

uint64_t sub_1AF98800C()
{
  v1 = *v0;
  v2 = 1852399981;
  v3 = 0x7265646E6572;
  if (v1 != 6)
  {
    v3 = 0x72656767697274;
  }

  v4 = 0x657461647075;
  if (v1 != 4)
  {
    v4 = 0x656C636974726170;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x696C616974696E69;
  if (v1 != 2)
  {
    v5 = 0x656C636974726170;
  }

  if (*v0)
  {
    v2 = 0x6E77617073;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1AF988294()
{
  v1 = *(v0 + OBJC_IVAR____TtC3VFX16_AnyECSValueNode_scriptKeyPath);
  v2 = *(v0 + OBJC_IVAR____TtC3VFX16_AnyECSValueNode_scriptKeyPath + 8);

  v3 = sub_1AF98EF40(v1, v2);
  v5 = v4;

  type metadata accessor for GetAnyECSValueNode(0);
  if (swift_dynamicCastClass())
  {
    v6 = 0x20BA80E220746547;
  }

  else
  {
    v6 = 0x20BA80E220746553;
  }

  MEMORY[0x1B2718AE0](v6, 0xA800000000000000);

  if (v5)
  {

    MEMORY[0x1B2718AE0](0x20BA80E220, 0xA500000000000000);
    MEMORY[0x1B2718AE0](v3, v5);
  }

  sub_1AF4486E4();
  v7 = sub_1AFDFDEB8();
  v9 = v8;

  MEMORY[0x1B2718AE0](v7, v9);

  return 0;
}

uint64_t sub_1AF988438()
{
  strcpy(v7, "ecs:dynamic:");
  BYTE5(v7[1]) = 0;
  HIWORD(v7[1]) = -5120;
  v1 = *(v0 + OBJC_IVAR____TtC3VFX16_AnyECSValueNode_scriptKeyPath);
  v2 = *(v0 + OBJC_IVAR____TtC3VFX16_AnyECSValueNode_scriptKeyPath + 8);

  sub_1AFDFDFD8();
  v5 = sub_1AFDFF4B8();
  v6 = v3;
  MEMORY[0x1B2718AE0](46, 0xE100000000000000);
  MEMORY[0x1B2718AE0](v1, v2);

  MEMORY[0x1B2718AE0](v5, v6);

  return v7[0];
}

void *sub_1AF98857C(void *a1)
{
  sub_1AF441150(a1, a1[3]);
  result = sub_1AFDFF398();
  if (!v2)
  {
    sub_1AF441150(v11, v11[3]);
    sub_1AF64896C();
    sub_1AFDFEE88();
    v4 = v1 + OBJC_IVAR____TtC3VFX16_AnyECSValueNode_scriptKeyPath;
    *v4 = v5;
    *(v4 + 8) = v6;
    *(v4 + 24) = v7;
    *(v4 + 32) = v8;
    *(v4 + 40) = v9;
    *(v4 + 42) = v10;

    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v11);
  }

  return result;
}

uint64_t sub_1AF9886F4@<X0>(uint64_t *a1@<X8>)
{
  v3 = 0xC000000000000020;
  sub_1AF98F688(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AFE431C0;
  v5 = swift_allocObject();
  *(v5 + 16) = 0xC0000000000000A0;
  *(v4 + 32) = v5 | 0x8000000000000000;
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1AFE431C0;
  v7 = *(v1 + OBJC_IVAR____TtC3VFX16_AnyECSValueNode_scriptKeyPath + 24);
  if (swift_conformsToProtocol2())
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v9 = sub_1AF90DEFC(v7);
    if ((~v9 & 0xF000000000000007) != 0)
    {
      v3 = v9;
    }

    else
    {
      v3 = 0xC000000000000000;
    }
  }

  result = swift_allocObject();
  *(result + 16) = v3;
  *(v6 + 32) = result | 0x8000000000000000;
  *a1 = v4;
  a1[1] = v6;
  v11 = MEMORY[0x1E69E7CC0];
  a1[2] = &unk_1F24F0960;
  a1[3] = v11;
  a1[4] = v11;
  a1[5] = v11;
  return result;
}

uint64_t sub_1AF988888@<X0>(uint64_t *a1@<X8>)
{
  sub_1AF98F688(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1AFE4C680;
  v4 = swift_allocObject();
  *(v4 + 16) = 0xC000000000000008;
  *(v3 + 32) = v4 | 0x8000000000000000;
  v5 = swift_allocObject();
  *(v5 + 16) = 0xC0000000000000A0;
  *(v3 + 40) = v5 | 0x8000000000000000;
  v6 = *(v1 + OBJC_IVAR____TtC3VFX16_AnyECSValueNode_scriptKeyPath + 24);
  if (swift_conformsToProtocol2())
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    v8 = sub_1AF90DEFC(v6);
    if ((~v8 & 0xF000000000000007) != 0)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0xC000000000000000;
    }
  }

  else
  {
    v9 = 0xC000000000000020;
  }

  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v3 + 48) = v10 | 0x8000000000000000;
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1AFE431C0;
  result = swift_allocObject();
  *(result + 16) = 0xC000000000000008;
  *(v11 + 32) = result | 0x8000000000000000;
  *a1 = v3;
  a1[1] = v11;
  v13 = MEMORY[0x1E69E7CC0];
  a1[2] = &unk_1F24F0CA0;
  a1[3] = v13;
  a1[4] = v13;
  a1[5] = v13;
  return result;
}

uint64_t sub_1AF988A34(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a3;
  v8 = *(v4 + OBJC_IVAR____TtC3VFX16_AnyECSValueNode_scriptKeyPath + 28);
  v9 = *(v4 + OBJC_IVAR____TtC3VFX16_AnyECSValueNode_scriptKeyPath + 16);
  v18 = *(v4 + OBJC_IVAR____TtC3VFX16_AnyECSValueNode_scriptKeyPath);
  v19[0] = v9;
  *(v19 + 12) = v8;
  v10 = *a1;
  v20 = v18;
  v11 = *(&v19[0] + 1);
  if (swift_conformsToProtocol2() && *(&v19[0] + 1))
  {
    sub_1AF450FE0(&v20, v17);

    v12 = 0xC000000000000020;
  }

  else
  {
    sub_1AF450FE0(&v20, v17);

    v13 = sub_1AF90DEFC(v11);
    if ((~v13 & 0xF000000000000007) != 0)
    {
      v12 = v13;
    }

    else
    {
      v12 = 0xC000000000000000;
    }
  }

  v14 = sub_1AF9BF064(a2, v6, v10, &v18, 1, v12, a4);
  v15 = sub_1AFA5413C(v14);

  sub_1AF445BE4(v12);
  sub_1AF585778(&v20);

  return v15;
}

unint64_t sub_1AF988BC4()
{
  v1 = *(v0 + OBJC_IVAR____TtC3VFX19_StaticECSValueNode_entityKeyPath + 32);
  if (swift_conformsToProtocol2())
  {
    v2 = v1 == 0;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    result = sub_1AF90DEFC(v1);
    if ((~result & 0xF000000000000007) != 0)
    {
      return result;
    }

    sub_1AFDFE218();
    sub_1AFDFF4B8();

    MEMORY[0x1B2718AE0](0xD000000000000023, 0x80000001AFF3D880);
    sub_1AFDFE518();
    __break(1u);
  }

  return 0xC000000000000020;
}

uint64_t sub_1AF988CD4()
{
  sub_1AFDFE218();

  v1 = v0 + OBJC_IVAR____TtC3VFX19_StaticECSValueNode_entityKeyPath;
  v2 = sub_1AF656F38();
  MEMORY[0x1B2718AE0](v2);

  MEMORY[0x1B2718AE0](58, 0xE100000000000000);
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);

  sub_1AFDFDFD8();
  v7 = sub_1AFDFF4B8();
  v8 = v5;
  MEMORY[0x1B2718AE0](46, 0xE100000000000000);
  MEMORY[0x1B2718AE0](v3, v4);

  MEMORY[0x1B2718AE0](v7, v8);

  return 0x746174733A736365;
}

uint64_t sub_1AF988E14()
{
  v1 = *(v0 + OBJC_IVAR____TtC3VFX19_StaticECSValueNode_entityKeyPath + 8);
  v2 = *(v0 + OBJC_IVAR____TtC3VFX19_StaticECSValueNode_entityKeyPath + 16);

  v3 = sub_1AF98EF40(v1, v2);
  v5 = v4;

  v6 = *v0;
  if (*v0 == _TtC3VFX24InspectorSetECSValueNode)
  {
    MEMORY[0x1B2718AE0](0x6F74636570736E49, 0xE900000000000072);
  }

  if (v6 == _TtC3VFX15GetECSValueNode)
  {
    v7 = 0;
  }

  else
  {
    v7 = 0x20BA80E220746553;
  }

  if (v6 == _TtC3VFX15GetECSValueNode)
  {
    v8 = 0xE000000000000000;
  }

  else
  {
    v8 = 0xA800000000000000;
  }

  MEMORY[0x1B2718AE0](v7, v8);

  MEMORY[0x1B2718AE0](63, 0xE100000000000000);
  MEMORY[0x1B2718AE0](0x20BA80E220, 0xA500000000000000);
  if (v5)
  {

    MEMORY[0x1B2718AE0](0x20BA80E220, 0xA500000000000000);
    MEMORY[0x1B2718AE0](v3, v5);
  }

  sub_1AF4486E4();
  v9 = sub_1AFDFDEB8();
  v11 = v10;

  MEMORY[0x1B2718AE0](v9, v11);

  return 0;
}

uint64_t sub_1AF989028(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = (v2 + OBJC_IVAR____TtC3VFX19_StaticECSValueNode_entityKeyPath);
  sub_1AF62BFF0(*(v2 + OBJC_IVAR____TtC3VFX19_StaticECSValueNode_entityKeyPath), 0, ObjectType, a2);
  v6 = *v5;
  v7 = v5[2];
  v19 = v5[1];
  v20 = v7;
  v21 = *(v5 + 12);
  v8 = *v5;
  v18 = v6;
  v9 = *(&v6 + 1);
  v10 = v20;
  v11 = HIWORD(v21);
  v12 = v21 & 1;
  v13 = v5[2];
  v23 = *(v5 + 12);
  v22[1] = v19;
  v22[2] = v13;
  v22[0] = v8;
  *v5 = v14;
  *(v5 + 1) = v15;
  *(v5 + 1) = v9;
  v5[1] = v19;
  v5[2] = v10;
  *(v5 + 48) = v12;
  *(v5 + 25) = v11;
  sub_1AF98F5BC(&v18, &v17);
  return sub_1AF98F72C(v22);
}

uint64_t sub_1AF9890F8()
{
  v1 = v0;
  sub_1AF98F688(0, &qword_1ED722F30, &type metadata for ScriptParameter, MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1AFE431C0;
  v3 = v0 + OBJC_IVAR____TtC3VFX19_StaticECSValueNode_entityKeyPath;
  v4 = *(v0 + OBJC_IVAR____TtC3VFX19_StaticECSValueNode_entityKeyPath);
  v6 = *(v0 + OBJC_IVAR____TtC3VFX19_StaticECSValueNode_entityKeyPath + 8);
  v5 = *(v0 + OBJC_IVAR____TtC3VFX19_StaticECSValueNode_entityKeyPath + 16);
  v19 = *(v3 + 24);
  v7 = *(v3 + 5);
  v8 = v3[48];
  v9 = *(v3 + 25);
  LOBYTE(v10) = 1;
  if (*v1 != _TtC3VFX15GetECSValueNode)
  {
    v11 = *v1;
    type metadata accessor for PartialComposeNode(0);
    v12 = swift_dynamicCastClass();
    if (v12)
    {
      v13 = *(v12 + 16);
      v10 = *(v13 + 16);
      if (v10)
      {
        v14 = v13 + 32;
        type metadata accessor for NilNode(0);
        while (swift_dynamicCastClass())
        {
          v14 += 16;
          if (!--v10)
          {
            goto LABEL_17;
          }
        }

        if (v11 == _TtC3VFX24InspectorSetECSValueNode)
        {
          LOBYTE(v10) = 7;
        }

        else
        {
          LOBYTE(v10) = 3;
        }
      }
    }

    else
    {
      type metadata accessor for NilNode(0);
      v15 = swift_dynamicCastClass();
      if (v11 == _TtC3VFX24InspectorSetECSValueNode)
      {
        v16 = 6;
      }

      else
      {
        v16 = 3;
      }

      if (v15)
      {
        LOBYTE(v10) = 0;
      }

      else
      {
        LOBYTE(v10) = v16;
      }
    }
  }

LABEL_17:
  v17 = swift_allocObject();
  *(v17 + 16) = v4;
  *(v17 + 24) = v6;
  *(v17 + 32) = v5;
  *(v17 + 40) = v19;
  *(v17 + 56) = v7;
  *(v17 + 64) = v8;
  *(v17 + 66) = v9;
  *(v2 + 32) = v17 | 0x2000000000000000;
  *(v2 + 40) = v10;
  *(v2 + 48) = xmmword_1AFE4C460;
  *(v2 + 64) = 1;

  return v2;
}

uint64_t sub_1AF989308(void *a1)
{
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF3D8();
  v2 = *(v1 + OBJC_IVAR____TtC3VFX19_StaticECSValueNode_entityKeyPath + 16);
  v13[0] = *(v1 + OBJC_IVAR____TtC3VFX19_StaticECSValueNode_entityKeyPath);
  v13[1] = v2;
  v4 = *(v1 + OBJC_IVAR____TtC3VFX19_StaticECSValueNode_entityKeyPath);
  v3 = *(v1 + OBJC_IVAR____TtC3VFX19_StaticECSValueNode_entityKeyPath + 16);
  v13[2] = *(v1 + OBJC_IVAR____TtC3VFX19_StaticECSValueNode_entityKeyPath + 32);
  v14 = *(v1 + OBJC_IVAR____TtC3VFX19_StaticECSValueNode_entityKeyPath + 48);
  v8 = v4;
  v9 = v3;
  v10 = *(v1 + OBJC_IVAR____TtC3VFX19_StaticECSValueNode_entityKeyPath + 32);
  v11 = *(v1 + OBJC_IVAR____TtC3VFX19_StaticECSValueNode_entityKeyPath + 48);
  sub_1AF448018(v12, v12[3]);
  sub_1AF98F5BC(v13, v6);
  sub_1AF98F780();
  sub_1AFDFEF28();
  v6[0] = v8;
  v6[1] = v9;
  v6[2] = v10;
  v7 = v11;
  sub_1AF98F72C(v6);
  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v12);
}

void *sub_1AF989414(void *a1)
{
  sub_1AF441150(a1, a1[3]);
  result = sub_1AFDFF398();
  if (!v2)
  {
    sub_1AF441150(v13, v13[3]);
    sub_1AF98F6D8();
    sub_1AFDFEE88();
    v4 = v1 + OBJC_IVAR____TtC3VFX19_StaticECSValueNode_entityKeyPath;
    v5 = *(v1 + OBJC_IVAR____TtC3VFX19_StaticECSValueNode_entityKeyPath + 16);
    v7[0] = *(v1 + OBJC_IVAR____TtC3VFX19_StaticECSValueNode_entityKeyPath);
    v7[1] = v5;
    v7[2] = *(v1 + OBJC_IVAR____TtC3VFX19_StaticECSValueNode_entityKeyPath + 32);
    v8 = *(v1 + OBJC_IVAR____TtC3VFX19_StaticECSValueNode_entityKeyPath + 48);
    v6 = v10;
    *v4 = v9;
    *(v4 + 16) = v6;
    *(v4 + 32) = v11;
    *(v4 + 48) = v12;
    sub_1AF98F72C(v7);
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v13);
  }

  return result;
}

uint64_t sub_1AF989540()
{
}

uint64_t sub_1AF9895F4@<X0>(uint64_t *a1@<X8>)
{
  sub_1AF98F688(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1AFE4C620;
  v3 = swift_allocObject();
  *(v3 + 16) = 0xC000000000000008;
  *(v2 + 32) = v3 | 0x8000000000000000;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1AF988BC4();
  *(v2 + 40) = v4 | 0x8000000000000000;
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1AFE431C0;
  result = swift_allocObject();
  *(result + 16) = 0xC000000000000008;
  *(v5 + 32) = result | 0x8000000000000000;
  *a1 = v2;
  a1[1] = v5;
  v7 = MEMORY[0x1E69E7CC0];
  a1[2] = &unk_1F24EFA00;
  a1[3] = v7;
  a1[4] = v7;
  a1[5] = v7;
  return result;
}

double sub_1AF989758@<D0>(uint64_t a1@<X8>)
{
  sub_1AF9895F4(v7);
  sub_1AF98F688(0, &unk_1EB630980, &type metadata for AnyValue, MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  v3 = MEMORY[0x1E69E6530];
  *(v2 + 64) = MEMORY[0x1E69E6530];
  *(v2 + 16) = xmmword_1AFE4C620;
  *(v2 + 32) = xmmword_1AFE87F70;
  *(v2 + 104) = v3;
  *(v2 + 72) = xmmword_1AFE87F70;
  v4 = v8;
  v10 = v9;
  sub_1AF98F618(&v10, &qword_1EB638978, &type metadata for AnyValue);
  result = *v7;
  v6 = v7[1];
  *a1 = v7[0];
  *(a1 + 16) = v6;
  *(a1 + 32) = v4;
  *(a1 + 40) = v2;
  return result;
}

unint64_t sub_1AF989848@<X0>(void *a1@<X8>)
{
  sub_1AF98F688(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1AFE431C0;
  v3 = swift_allocObject();
  result = sub_1AF988BC4();
  *(v3 + 16) = result;
  *(v2 + 32) = v3 | 0x8000000000000000;
  v5 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = v2;
  a1[2] = &unk_1F24EF460;
  a1[3] = v5;
  a1[4] = v5;
  a1[5] = v5;
  return result;
}

char *sub_1AF989900(char *a1)
{
  v2 = swift_allocObject();
  v3 = *&a1[OBJC_IVAR____TtC3VFX19_StaticECSValueNode_entityKeyPath + 16];
  v9[0] = *&a1[OBJC_IVAR____TtC3VFX19_StaticECSValueNode_entityKeyPath];
  v9[1] = v3;
  v10 = *&a1[OBJC_IVAR____TtC3VFX19_StaticECSValueNode_entityKeyPath + 32];
  v4 = v10;
  v11 = *&a1[OBJC_IVAR____TtC3VFX19_StaticECSValueNode_entityKeyPath + 48];
  v5 = v11;
  v6 = v2 + OBJC_IVAR____TtC3VFX19_StaticECSValueNode_entityKeyPath;
  *v6 = v9[0];
  *(v6 + 16) = v3;
  *(v6 + 32) = v4;
  *(v6 + 48) = v5;
  sub_1AF98F5BC(v9, v8);
  return sub_1AF96FD00(a1);
}

uint64_t sub_1AF989988()
{

  sub_1AF919DAC(*(v0 + 24), *(v0 + 32));
  v1 = OBJC_IVAR____TtC3VFX4Node_authoringID;
  v2 = sub_1AFDFC318();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1AF989A7C(uint64_t a1)
{
  v2 = *v1;
  v3 = sub_1AFDFDFD8();
  result = swift_conformsToProtocol2();
  if (result)
  {
    (*(result + 16))(v3, result);
    if (v2 == _TtC3VFX29InspectorSetParticleValueNode)
    {
      MEMORY[0x1B2718AE0](0x6F74636570736E49, 0xE900000000000072);
    }

    if (v2 == _TtC3VFX20GetParticleValueNode)
    {
      v5 = 0;
    }

    else
    {
      v5 = 0x20BA80E220746553;
    }

    if (v2 == _TtC3VFX20GetParticleValueNode)
    {
      v6 = 0xE000000000000000;
    }

    else
    {
      v6 = 0xA800000000000000;
    }

    if (v2 == _TtC3VFX27GetParticleValueAtIndexNode)
    {
      v7 = 0x20BA80E220746547;
    }

    else
    {
      v7 = v5;
    }

    if (v2 == _TtC3VFX27GetParticleValueAtIndexNode)
    {
      v8 = 0xA800000000000000;
    }

    else
    {
      v8 = v6;
    }

    MEMORY[0x1B2718AE0](v7, v8);

    MEMORY[0x1B2718AE0](0x656C636974726150, 0xE800000000000000);
    MEMORY[0x1B2718AE0](0x20BA80E220, 0xA500000000000000);
    sub_1AF4486E4();
    v9 = sub_1AFDFDEB8();
    v11 = v10;

    MEMORY[0x1B2718AE0](v9, v11);

    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AF989CE4(void *a1, void (*a2)(void *__return_ptr, uint64_t, uint64_t), void *a3, void (*a4)(uint64_t *, ValueMetadata *, unint64_t, uint64_t, uint64_t))
{
  v8 = a1[3];
  v9 = a1[4];
  sub_1AF441150(a1, v8);
  a2(v25, v8, v9);
  v10 = (v4 + *a3);
  v11 = v10[3];
  v12 = v10[4];
  v13 = *(v10 + 40);
  v14 = *(v10 + 21);
  v19 = *v10;
  v20 = *(v10 + 1);
  v21 = v11;
  v22 = v12;
  v23 = v13;
  v24 = v14;
  v15 = v26;
  v16 = v27;
  sub_1AF448018(v25, v26);
  v17 = sub_1AF6489C0();
  a4(&v19, &type metadata for ScriptKeyPath, v17, v15, v16);
  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v25);
}

void *sub_1AF989DD4(void *a1)
{
  sub_1AF441150(a1, a1[3]);
  result = sub_1AFDFF388();
  if (!v2)
  {
    sub_1AF448018(v11, v11[3]);
    sub_1AF64896C();
    sub_1AFDFEAD8();
    v4 = v1 + OBJC_IVAR____TtC3VFX18_ParticleValueNode_keyPath;
    *v4 = v5;
    *(v4 + 8) = v6;
    *(v4 + 24) = v7;
    *(v4 + 32) = v8;
    *(v4 + 40) = v9;
    *(v4 + 42) = v10;

    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v11);
  }

  return result;
}

uint64_t sub_1AF989ED0(uint64_t a1)
{
  v2 = (v1 + OBJC_IVAR____TtC3VFX18_ParticleValueNode_keyPath);
  v3 = sub_1AFDFDFD8();
  v4 = swift_conformsToProtocol2();
  sub_1AF98F688(0, &qword_1ED722F30, &type metadata for ScriptParameter, MEMORY[0x1E69E6F90]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1AFE431C0;
  v7 = *v2;
  v6 = v2[1];
  v8 = v2[2];
  v9 = v2[3];
  v10 = v2[4];
  v17 = *(v2 + 40);
  v11 = *(v2 + 21);
  if (v4)
  {
    v12 = v3 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    type metadata accessor for SetParticleValueNode(0);
    if (swift_dynamicCastClass())
    {
      v14 = 2;
    }

    else
    {
      v14 = 1;
    }

    v13 = swift_allocObject();
    *(v13 + 16) = v7;
    *(v13 + 24) = v6;
    *(v13 + 32) = v8;
    *(v13 + 40) = v9;
    *(v13 + 48) = v10;
    *(v13 + 56) = v17;
    *(v13 + 58) = v11;
    v15 = 0x5000000000000000;
    *(v13 + 60) = 5;
  }

  else
  {
    v13 = swift_allocObject();
    *(v13 + 16) = v7;
    *(v13 + 24) = v6;
    *(v13 + 32) = v8;
    *(v13 + 40) = v9;
    *(v13 + 48) = v10;
    *(v13 + 56) = v17;
    v14 = 1;
    v15 = 0x5000000000000004;
    *(v13 + 58) = v11;
  }

  *(v5 + 32) = v15 | v13;
  *(v5 + 40) = v14;
  *(v5 + 48) = xmmword_1AFE4C460;
  *(v5 + 64) = 1;

  return v5;
}

uint64_t sub_1AF98A0E0(void *a1)
{
}

uint64_t sub_1AF98A208@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = sub_1AF90DEFC(*(v1 + OBJC_IVAR____TtC3VFX18_ParticleValueNode_keyPath + 24));
  if ((~v4 & 0xF000000000000007) != 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0xC000000000000000;
  }

  if (v3 != _TtC3VFX29InspectorSetParticleValueNode)
  {
    v9 = 0;
    v11 = 0;
    goto LABEL_8;
  }

  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v7 = sub_1AFDFDFD8();
  result = swift_conformsToProtocol2();
  if (result)
  {
    v9 = (*(result + 16))(v7, result);
    v11 = v10;
    v5 = v6;
LABEL_8:
    v12 = MEMORY[0x1E69E6F90];
    sub_1AF98F688(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1AFE4C620;
    v14 = swift_allocObject();
    *(v14 + 16) = 0xC000000000000008;
    *(v13 + 32) = v14 | 0x8000000000000000;
    v15 = swift_allocObject();
    *(v15 + 16) = v5;
    *(v13 + 40) = v15 | 0x8000000000000000;
    sub_1AF98F688(0, &unk_1EB630980, &type metadata for AnyValue, v12);
    v16 = swift_allocObject();
    v17 = MEMORY[0x1E69E6530];
    *(v16 + 64) = MEMORY[0x1E69E6530];
    *(v16 + 16) = xmmword_1AFE4C620;
    *(v16 + 32) = xmmword_1AFE87170;
    *(v16 + 104) = v17;
    *(v16 + 72) = xmmword_1AFE87170;
    sub_1AF98F514(0, &qword_1EB630968, &qword_1ED726CC0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1AFE4C620;
    *(v18 + 32) = 0;
    *(v18 + 40) = 0;
    *(v18 + 48) = v9;
    *(v18 + 56) = v11;
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1AFE431C0;
    result = swift_allocObject();
    *(result + 16) = 0xC000000000000008;
    *(v19 + 32) = result | 0x8000000000000000;
    *a1 = v13;
    a1[1] = v19;
    a1[2] = &unk_1F24F13E8;
    a1[3] = v18;
    a1[4] = MEMORY[0x1E69E7CC0];
    a1[5] = v16;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AF98A50C()
{
  v1 = *(v0 + OBJC_IVAR____TtC3VFX29InspectorSetParticleValueNode_stage);
  if (v1 <= 3)
  {
    if (*(v0 + OBJC_IVAR____TtC3VFX29InspectorSetParticleValueNode_stage) <= 1u)
    {
      if (*(v0 + OBJC_IVAR____TtC3VFX29InspectorSetParticleValueNode_stage))
      {
        v2 = 0xE500000000000000;
        v3 = 0x6E77617073;
      }

      else
      {
        v2 = 0xE400000000000000;
        v3 = 1852399981;
      }

      goto LABEL_17;
    }

    if (v1 == 2)
    {
      v2 = 0xEA0000000000657ALL;
      v3 = 0x696C616974696E69;
      goto LABEL_17;
    }

    v2 = 0xEC00000074696E49;
LABEL_15:
    v3 = 0x656C636974726170;
    goto LABEL_17;
  }

  if (*(v0 + OBJC_IVAR____TtC3VFX29InspectorSetParticleValueNode_stage) <= 5u)
  {
    if (v1 == 4)
    {
      v2 = 0xE600000000000000;
      v3 = 0x657461647075;
      goto LABEL_17;
    }

    v2 = 0xEE00657461647055;
    goto LABEL_15;
  }

  if (v1 == 6)
  {
    v2 = 0xE600000000000000;
    v3 = 0x7265646E6572;
  }

  else
  {
    v2 = 0xE700000000000000;
    v3 = 0x72656767697274;
  }

LABEL_17:
  MEMORY[0x1B2718AE0](v3, v2);

  return 0;
}

char *sub_1AF98A640(void *a1)
{
  v2 = swift_allocObject();
  *(v2 + OBJC_IVAR____TtC3VFX29InspectorSetParticleValueNode_stage) = *(a1 + OBJC_IVAR____TtC3VFX29InspectorSetParticleValueNode_stage);
  v3 = a1 + OBJC_IVAR____TtC3VFX18_ParticleValueNode_keyPath;
  v4 = *(a1 + OBJC_IVAR____TtC3VFX18_ParticleValueNode_keyPath + 8);
  v5 = *(a1 + OBJC_IVAR____TtC3VFX18_ParticleValueNode_keyPath + 32);
  v6 = *(a1 + OBJC_IVAR____TtC3VFX18_ParticleValueNode_keyPath + 40);
  v7 = *(a1 + OBJC_IVAR____TtC3VFX18_ParticleValueNode_keyPath + 42);
  v8 = v2 + OBJC_IVAR____TtC3VFX18_ParticleValueNode_keyPath;
  *v8 = *(a1 + OBJC_IVAR____TtC3VFX18_ParticleValueNode_keyPath);
  *(v8 + 8) = v4;
  *(v8 + 16) = *(v3 + 1);
  *(v8 + 32) = v5;
  *(v8 + 40) = v6;
  *(v8 + 42) = v7;

  return sub_1AF96FD00(a1);
}

uint64_t sub_1AF98A6E0(void *a1)
{
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF3C8();
  sub_1AF448018(v3, v4);
  sub_1AF6489C0();
  sub_1AFDFEC38();
  if (!v1)
  {
    sub_1AF448018(v3, v4);
    sub_1AF9815CC();
    sub_1AFDFEC38();
  }

  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v3);
}

void *sub_1AF98A808(void *a1)
{
  sub_1AF441150(a1, a1[3]);
  result = sub_1AFDFF388();
  if (!v2)
  {
    sub_1AF448018(v11, v12);
    sub_1AF64896C();
    sub_1AFDFEAD8();
    v4 = v1 + OBJC_IVAR____TtC3VFX18_ParticleValueNode_keyPath;
    *v4 = v5;
    *(v4 + 8) = v6;
    *(v4 + 24) = v7;
    *(v4 + 32) = v8;
    *(v4 + 40) = v9;
    *(v4 + 42) = v10;

    sub_1AF448018(v11, v12);
    sub_1AF9825F4();
    sub_1AFDFEAD8();
    *(v1 + OBJC_IVAR____TtC3VFX29InspectorSetParticleValueNode_stage) = v5;
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v11);
  }

  return result;
}

uint64_t sub_1AF98A9D0@<X0>(void *a1@<X8>)
{
  sub_1AF98F688(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1AFE431C0;
  v4 = sub_1AF90DEFC(*(v1 + OBJC_IVAR____TtC3VFX18_ParticleValueNode_keyPath + 24));
  if ((~v4 & 0xF000000000000007) != 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0xC000000000000000;
  }

  result = swift_allocObject();
  *(result + 16) = v5;
  *(v3 + 32) = result | 0x8000000000000000;
  v7 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = v3;
  a1[2] = &unk_1F24F1150;
  a1[3] = v7;
  a1[4] = v7;
  a1[5] = v7;
  return result;
}

uint64_t sub_1AF98AAC8@<X0>(uint64_t *a1@<X8>)
{
  sub_1AF98F688(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1AFE431C0;
  result = swift_allocObject();
  *(result + 16) = 0xC000000000000008;
  *(v2 + 32) = result | 0x8000000000000000;
  v4 = MEMORY[0x1E69E7CC0];
  *a1 = v2;
  a1[1] = v4;
  a1[2] = &unk_1F24F2ED8;
  a1[3] = v4;
  a1[4] = v4;
  a1[5] = v4;
  return result;
}

uint64_t sub_1AF98AC24()
{
  v1 = *(v0 + OBJC_IVAR____TtC3VFX19OnParticleStageNode_stage);
  if (v1 == 3)
  {
    return 0x6369747261506E4FLL;
  }

  if (v1 == 5)
  {
    return 0xD000000000000010;
  }

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AF98AD98(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  sub_1AF441150(a1, v2);
  v6 = *(v1 + OBJC_IVAR____TtC3VFX19OnParticleStageNode_stage);
  v4 = sub_1AF9815CC();
  return sub_1AF974C50(&v6, v2, &type metadata for VFXStage, v3, v4);
}

void *sub_1AF98AE10(void *a1)
{
  sub_1AF441150(a1, a1[3]);
  sub_1AF9825F4();
  result = sub_1AF974940();
  if (!v2)
  {
    *(v1 + OBJC_IVAR____TtC3VFX19OnParticleStageNode_stage) = v4;
  }

  return result;
}

uint64_t sub_1AF98AE94(uint64_t a1)
{
  v2 = sub_1AF98F964();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF98AED0(uint64_t a1)
{
  v2 = sub_1AF98F964();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF98AF0C(void *a1)
{
  sub_1AF98F8FC(0, &qword_1EB640DB0, sub_1AF98F964, &type metadata for GraphSideStorage.CodingKeys, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - v5;
  sub_1AF441150(a1, a1[3]);
  sub_1AF98F964();
  sub_1AFDFF3F8();
  return (*(v4 + 8))(v6, v3);
}

void *sub_1AF98B04C()
{
  v0 = swift_allocObject();
  *(v0 + OBJC_IVAR____TtC3VFX14ECSStorageNode_entity) = 0xFFFFFFFFLL;
  v1 = MEMORY[0x1E69E7CC0];
  v0[3] = 0;
  v0[4] = 0;
  v0[2] = v1;
  sub_1AFDFC308();
  return v0;
}

uint64_t sub_1AF98B0B4()
{
  v0 = sub_1AF656F38();
  MEMORY[0x1B2718AE0](v0);

  return 0x3A656761726F7473;
}

void sub_1AF98B164(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v6 = OBJC_IVAR____TtC3VFX14ECSStorageNode_entity;
  sub_1AF62BFF0(*(v3 + OBJC_IVAR____TtC3VFX14ECSStorageNode_entity), 1, ObjectType, a2);
  *(v3 + v6) = v7;
}

char *sub_1AF98B2AC(void *a1)
{
  v2 = swift_allocObject();
  v3 = v2 + OBJC_IVAR____TtC3VFX16CurveTextureNode_curve;
  sub_1AF9D3914(&unk_1F24F3838);
  v4 = *(a1 + OBJC_IVAR____TtC3VFX16CurveTextureNode_curve + 8);
  v5 = *(a1 + OBJC_IVAR____TtC3VFX16CurveTextureNode_curve + 16);
  v6 = *(a1 + OBJC_IVAR____TtC3VFX16CurveTextureNode_curve + 24);
  *v3 = *(a1 + OBJC_IVAR____TtC3VFX16CurveTextureNode_curve);
  *(v3 + 8) = v4;
  *(v3 + 16) = v5;
  *(v3 + 24) = v6;

  *(v2 + OBJC_IVAR____TtC3VFX14ECSStorageNode_entity) = *(a1 + OBJC_IVAR____TtC3VFX14ECSStorageNode_entity);
  return sub_1AF96FD00(a1);
}

uint64_t sub_1AF98B378()
{
}

uint64_t sub_1AF98B3C8()
{

  sub_1AF919DAC(*(v0 + 24), *(v0 + 32));
  v1 = OBJC_IVAR____TtC3VFX4Node_authoringID;
  v2 = sub_1AFDFC318();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1AF98B4DC(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  sub_1AF441150(a1, v2);
  v4 = *(v1 + OBJC_IVAR____TtC3VFX16CurveTextureNode_curve + 16);
  v5 = *(v1 + OBJC_IVAR____TtC3VFX16CurveTextureNode_curve + 24);
  v15 = *(v1 + OBJC_IVAR____TtC3VFX16CurveTextureNode_curve);
  v16 = v4;
  v17 = v5;
  sub_1AF8C0110(0, v6, v7, v8);
  v10 = v9;
  v13 = sub_1AF8C021C(&qword_1EB63F018, byte_1AFE6CCB4, v11, v12);
  return sub_1AF974C50(&v15, v2, v10, v3, v13);
}

void *sub_1AF98B594(void *a1)
{
  sub_1AF441150(a1, a1[3]);
  sub_1AF8C0110(0, v3, v4, v5);
  sub_1AF8C021C(qword_1ED724010, byte_1AFE6CCDC, v6, v7);
  result = sub_1AF974940();
  if (!v2)
  {
    v9 = v1 + OBJC_IVAR____TtC3VFX16CurveTextureNode_curve;
    *v9 = v10;
    *(v9 + 16) = v11;
    *(v9 + 24) = v12;
  }

  return result;
}

char *sub_1AF98B6AC(char *a1)
{
  v2 = swift_allocObject();
  v3 = OBJC_IVAR____TtC3VFX20ColorRampTextureNode_colorRamp;
  v4 = v2 + OBJC_IVAR____TtC3VFX20ColorRampTextureNode_colorRamp;
  sub_1AF43A038(0);
  v5 = swift_allocObject();
  __asm { FMOV            V1.4S, #1.0 }

  v5[1] = xmmword_1AFE4C620;
  v5[2] = _Q1;
  v5[3] = xmmword_1AFE201A0;
  v11 = &a1[v3];
  v12 = *&a1[v3];
  v13 = *&a1[v3 + 8];
  LOBYTE(v11) = v11[16];
  *v4 = v12;
  *(v4 + 8) = v13;
  *(v4 + 16) = v11;

  *(v2 + OBJC_IVAR____TtC3VFX14ECSStorageNode_entity) = *&a1[OBJC_IVAR____TtC3VFX14ECSStorageNode_entity];
  return sub_1AF96FD00(a1);
}

uint64_t sub_1AF98B770()
{
  sub_1AF98F688(0, &qword_1ED722F30, &type metadata for ScriptParameter, MEMORY[0x1E69E6F90]);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1AFE431C0;
  v2 = swift_allocObject();
  *(v2 + 16) = *(v0 + OBJC_IVAR____TtC3VFX14ECSStorageNode_entity);
  *(v2 + 24) = 0;
  *(v2 + 32) = 16842752;
  *(v1 + 32) = v2 | 0x4000000000000000;
  *(v1 + 40) = 1;
  *(v1 + 48) = xmmword_1AFE4C460;
  *(v1 + 64) = 1;
  return v1;
}

uint64_t sub_1AF98B828()
{
}

uint64_t sub_1AF98B86C()
{

  sub_1AF919DAC(*(v0 + 24), *(v0 + 32));
  v1 = OBJC_IVAR____TtC3VFX4Node_authoringID;
  v2 = sub_1AFDFC318();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1AF98B9A8(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  sub_1AF441150(a1, v2);
  v4 = *(v1 + OBJC_IVAR____TtC3VFX20ColorRampTextureNode_colorRamp + 16);
  v7 = *(v1 + OBJC_IVAR____TtC3VFX20ColorRampTextureNode_colorRamp);
  v8 = v4;
  v5 = sub_1AF80BC20();
  return sub_1AF974C50(&v7, v2, &type metadata for ColorRamp, v3, v5);
}

void *sub_1AF98BA34(void *a1)
{
  sub_1AF441150(a1, a1[3]);
  sub_1AF80A7AC();
  result = sub_1AF974940();
  if (!v2)
  {
    v4 = v1 + OBJC_IVAR____TtC3VFX20ColorRampTextureNode_colorRamp;
    *v4 = v5;
    *(v4 + 16) = v6;
  }

  return result;
}

uint64_t sub_1AF98BB8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x1E69E6F90];
  sub_1AF98F688(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1AFE431C0;
  v12 = swift_allocObject();
  *(v12 + 16) = 0xC000000000000098;
  *(v11 + 32) = v12 | 0x8000000000000000;
  sub_1AF98F688(0, &unk_1EB630980, &type metadata for AnyValue, v10);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1AFE431C0;
  if (qword_1EB6371F0 != -1)
  {
    swift_once();
  }

  v14 = qword_1EB6C3430;
  type metadata accessor for ImplicitWorldAssetNode(0);
  swift_allocObject();
  v15 = v14;
  v16 = sub_1AF9C3E60(v15, 0, 1, a1, 0);

  *(v13 + 64) = type metadata accessor for Node(0);
  *(v13 + 32) = 0xC000000000000000;
  *(v13 + 40) = v16;
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1AFE431C0;
  result = swift_allocObject();
  *(result + 16) = a2;
  *(v17 + 32) = result | 0x8000000000000000;
  *a5 = v11;
  a5[1] = v17;
  a5[2] = a3;
  a5[3] = a4;
  a5[4] = MEMORY[0x1E69E7CC0];
  a5[5] = v13;
  return result;
}

uint64_t sub_1AF98BD74()
{

  v0 = sub_1AF9A178C(1, 0);
  v2 = v1;

  sub_1AF98F688(0, &qword_1ED722F30, &type metadata for ScriptParameter, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1AFE431C0;
  v4 = swift_allocObject();
  v5 = 0xFFFFFFFFLL;
  if ((v2 & 1) == 0)
  {
    v5 = v0;
  }

  *(v4 + 16) = v5;
  *(v4 + 24) = 0;
  *(v4 + 32) = 16842752;
  *(v3 + 32) = v4 | 0x4000000000000000;
  *(v3 + 40) = 1;
  *(v3 + 48) = xmmword_1AFE4C460;
  *(v3 + 64) = 1;
  return v3;
}

uint64_t sub_1AF98BE68()
{
  v0 = sub_1AFDFEA08();
  MEMORY[0x1B2718AE0](v0);

  MEMORY[0x1B2718AE0](0x6D61726170253DLL, 0xE700000000000000);
  v1 = sub_1AFDFEA08();
  MEMORY[0x1B2718AE0](v1);

  return 29219;
}

uint64_t sub_1AF98BF64@<X0>(uint64_t *a1@<X8>)
{
  v2 = MEMORY[0x1E69E6F90];
  sub_1AF98F688(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1AFE431C0;
  v4 = swift_allocObject();
  *(v4 + 16) = 0xC000000000000098;
  *(v3 + 32) = v4 | 0x8000000000000000;
  sub_1AF98F688(0, &unk_1EB630980, &type metadata for AnyValue, v2);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1AFE431C0;
  if (qword_1EB6371F0 != -1)
  {
    swift_once();
  }

  v6 = qword_1EB6C3430;
  type metadata accessor for ImplicitWorldAssetNode(0);
  swift_allocObject();
  v7 = v6;
  v8 = sub_1AF9C3E60(v7, 0, 1, 33, 0);

  *(v5 + 64) = type metadata accessor for Node(0);
  *(v5 + 32) = 0xC000000000000000;
  *(v5 + 40) = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1AFE4C630;
  v10 = swift_allocObject();
  *(v10 + 16) = 0xC000000000000010;
  *(v9 + 32) = v10 | 0x8000000000000000;
  v11 = swift_allocObject();
  *(v11 + 16) = 0xC000000000000010;
  *(v9 + 40) = v11 | 0x8000000000000000;
  v12 = swift_allocObject();
  *(v12 + 16) = 0xC000000000000010;
  *(v9 + 48) = v12 | 0x8000000000000000;
  v13 = swift_allocObject();
  v14 = swift_allocObject();
  *(v14 + 16) = 0xC000000000000058;
  *(v13 + 16) = v14 | 0x6000000000000000;
  *(v9 + 56) = v13 | 0x8000000000000000;
  v15 = swift_allocObject();
  v16 = swift_allocObject();
  *(v16 + 16) = 0xC000000000000058;
  *(v15 + 16) = v16 | 0x6000000000000000;
  *(v9 + 64) = v15 | 0x8000000000000000;
  v17 = swift_allocObject();
  v18 = swift_allocObject();
  *(v18 + 16) = 0xC000000000000058;
  *(v17 + 16) = v18 | 0x6000000000000000;
  *(v9 + 72) = v17 | 0x8000000000000000;
  result = swift_allocObject();
  *(result + 16) = 0xC000000000000058;
  *(v9 + 80) = result | 0x8000000000000000;
  *a1 = v3;
  a1[1] = v9;
  a1[2] = &unk_1F24EED90;
  a1[3] = &unk_1F24EEDC0;
  a1[4] = &unk_1F24EEDF0;
  a1[5] = v5;
  return result;
}

uint64_t sub_1AF98C248()
{

  v0 = sub_1AF9A178C(1, 0);
  v2 = v1;

  if (v2)
  {
    v3 = -1;
  }

  else
  {
    v3 = v0;
  }

  if (v2)
  {
    v4 = 0;
  }

  else
  {
    v4 = HIDWORD(v0);
  }

  sub_1AF98F688(0, &qword_1ED722F30, &type metadata for ScriptParameter, MEMORY[0x1E69E6F90]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1AFE4C630;
  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  *(v6 + 20) = v4;
  v7 = v3;
  v65 = v3;
  KeyPath = swift_getKeyPath();
  v9 = sub_1AF57907C(KeyPath);

  v11 = *(v9 + 16);
  v10 = *(v9 + 24);
  v12 = *(v9 + 48);
  v13 = *(v9 + 56);
  v14 = *(v9 + 58);

  v67 = *(v9 + 32);

  *(v6 + 24) = v11;
  *(v6 + 32) = v10;
  *(v6 + 40) = v67;
  *(v6 + 56) = v12;
  *(v6 + 64) = v13;
  *(v6 + 66) = v14;
  *(v5 + 32) = v6 | 0x2000000000000000;
  *(v5 + 40) = 1;
  *(v5 + 48) = xmmword_1AFE4C460;
  *(v5 + 64) = 1;
  v15 = swift_allocObject();
  *(v15 + 16) = v7;
  *(v15 + 20) = v4;
  v16 = swift_getKeyPath();
  v17 = sub_1AF57907C(v16);

  v18 = *(v17 + 16);
  v19 = *(v17 + 24);
  v20 = *(v17 + 48);
  LOBYTE(v14) = *(v17 + 56);
  LOWORD(v12) = *(v17 + 58);

  v60 = *(v17 + 32);

  *(v15 + 24) = v18;
  *(v15 + 32) = v19;
  *(v15 + 40) = v60;
  *(v15 + 56) = v20;
  *(v15 + 64) = v14;
  *(v15 + 66) = v12;
  *(v5 + 72) = v15 | 0x2000000000000000;
  *(v5 + 80) = 1;
  *(v5 + 88) = xmmword_1AFE4C460;
  *(v5 + 104) = 1;
  v21 = swift_allocObject();
  *(v21 + 16) = v65;
  *(v21 + 20) = v4;
  v22 = swift_getKeyPath();
  v23 = sub_1AF57907C(v22);

  v24 = *(v23 + 16);
  v25 = *(v23 + 24);
  v26 = *(v23 + 48);
  LOBYTE(v14) = *(v23 + 56);
  LOWORD(v12) = *(v23 + 58);

  v61 = *(v23 + 32);

  *(v21 + 24) = v24;
  *(v21 + 32) = v25;
  *(v21 + 40) = v61;
  *(v21 + 56) = v26;
  *(v21 + 64) = v14;
  *(v21 + 66) = v12;
  *(v5 + 112) = v21 | 0x2000000000000000;
  *(v5 + 120) = 1;
  *(v5 + 128) = xmmword_1AFE4C460;
  *(v5 + 144) = 1;
  v27 = swift_allocObject();
  *(v27 + 16) = v65;
  *(v27 + 20) = v4;
  v28 = sub_1AFDFD488();
  *(v28 + 16) = 2048;
  bzero((v28 + 32), 0x2000uLL);
  v29 = sub_1AFDFD488();
  *(v29 + 16) = 2048;
  bzero((v29 + 32), 0x2000uLL);
  v95 = 1;
  v89[0] = MEMORY[0x1E69E7CC0];
  v89[1] = MEMORY[0x1E69E7CC0];
  v89[2] = MEMORY[0x1E69E7CC0];
  v90 = 0;
  v91 = v28;
  v92 = v29;
  v93 = 0;
  v94 = 1;
  v30 = swift_getKeyPath();
  v31 = sub_1AF579058(v30);

  sub_1AF5871B8(v89);
  v32 = *(v31 + 16);
  v33 = *(v31 + 24);
  v34 = *(v31 + 48);
  LOBYTE(v21) = *(v31 + 56);
  LOWORD(v7) = *(v31 + 58);

  v62 = *(v31 + 32);

  *(v27 + 24) = v32;
  *(v27 + 32) = v33;
  *(v27 + 40) = v62;
  *(v27 + 56) = v34;
  *(v27 + 64) = v21;
  *(v27 + 66) = v7;
  *(v5 + 152) = v27 | 0x2000000000000000;
  *(v5 + 160) = 1;
  *(v5 + 168) = xmmword_1AFE4C460;
  *(v5 + 184) = 1;
  v35 = swift_allocObject();
  *(v35 + 16) = v65;
  *(v35 + 20) = v4;
  v36 = sub_1AFDFD488();
  *(v36 + 16) = 2048;
  bzero((v36 + 32), 0x2000uLL);
  v37 = sub_1AFDFD488();
  *(v37 + 16) = 2048;
  bzero((v37 + 32), 0x2000uLL);
  v88 = 1;
  v82[0] = MEMORY[0x1E69E7CC0];
  v82[1] = MEMORY[0x1E69E7CC0];
  v82[2] = MEMORY[0x1E69E7CC0];
  v83 = 0;
  v84 = v36;
  v85 = v37;
  v86 = 0;
  v87 = 1;
  v38 = swift_getKeyPath();
  v39 = sub_1AF579058(v38);

  sub_1AF5871B8(v82);
  v40 = *(v39 + 16);
  v41 = *(v39 + 24);
  v42 = *(v39 + 48);
  LOBYTE(v34) = *(v39 + 56);
  LOWORD(v7) = *(v39 + 58);

  v63 = *(v39 + 32);

  *(v35 + 24) = v40;
  *(v35 + 32) = v41;
  *(v35 + 40) = v63;
  *(v35 + 56) = v42;
  *(v35 + 64) = v34;
  *(v35 + 66) = v7;
  *(v5 + 192) = v35 | 0x2000000000000000;
  *(v5 + 200) = 1;
  *(v5 + 208) = xmmword_1AFE4C460;
  *(v5 + 224) = 1;
  v43 = swift_allocObject();
  *(v43 + 16) = v65;
  *(v43 + 20) = v4;
  v44 = sub_1AFDFD488();
  *(v44 + 16) = 2048;
  bzero((v44 + 32), 0x2000uLL);
  v45 = sub_1AFDFD488();
  *(v45 + 16) = 2048;
  bzero((v45 + 32), 0x2000uLL);
  v81 = 1;
  v75[0] = MEMORY[0x1E69E7CC0];
  v75[1] = MEMORY[0x1E69E7CC0];
  v75[2] = MEMORY[0x1E69E7CC0];
  v76 = 0;
  v77 = v44;
  v78 = v45;
  v79 = 0;
  v80 = 1;
  v46 = swift_getKeyPath();
  v47 = sub_1AF579058(v46);

  sub_1AF5871B8(v75);
  v48 = *(v47 + 16);
  v49 = *(v47 + 24);
  v50 = *(v47 + 48);
  LOBYTE(v34) = *(v47 + 56);
  LOWORD(v7) = *(v47 + 58);

  v64 = *(v47 + 32);

  *(v43 + 24) = v48;
  *(v43 + 32) = v49;
  *(v43 + 40) = v64;
  *(v43 + 56) = v50;
  *(v43 + 64) = v34;
  *(v43 + 66) = v7;
  *(v5 + 232) = v43 | 0x2000000000000000;
  *(v5 + 240) = 1;
  *(v5 + 248) = xmmword_1AFE4C460;
  *(v5 + 264) = 1;
  v51 = swift_allocObject();
  *(v51 + 16) = v65;
  *(v51 + 20) = v4;
  v52 = sub_1AFDFD488();
  *(v52 + 16) = 2048;
  bzero((v52 + 32), 0x2000uLL);
  v53 = sub_1AFDFD488();
  *(v53 + 16) = 2048;
  bzero((v53 + 32), 0x2000uLL);
  v74 = 1;
  v68[0] = MEMORY[0x1E69E7CC0];
  v68[1] = MEMORY[0x1E69E7CC0];
  v68[2] = MEMORY[0x1E69E7CC0];
  v69 = 0;
  v70 = v52;
  v71 = v53;
  v72 = 0;
  v73 = 1;
  v54 = swift_getKeyPath();
  v55 = sub_1AF579058(v54);

  sub_1AF5871B8(v68);
  v57 = *(v55 + 16);
  v56 = *(v55 + 24);
  v58 = *(v55 + 48);
  LOBYTE(v34) = *(v55 + 56);
  LOWORD(v7) = *(v55 + 58);

  v66 = *(v55 + 32);

  *(v51 + 24) = v57;
  *(v51 + 32) = v56;
  *(v51 + 40) = v66;
  *(v51 + 56) = v58;
  *(v51 + 64) = v34;
  *(v51 + 66) = v7;
  *(v5 + 272) = v51 | 0x2000000000000000;
  *(v5 + 280) = 1;
  *(v5 + 288) = xmmword_1AFE4C460;
  *(v5 + 304) = 1;
  return v5;
}

uint64_t sub_1AF98C990()
{
  v0 = sub_1AF98F16C();
  v1 = sub_1AFA5413C(v0);

  return v1;
}

uint64_t sub_1AF98CA00()
{
  strcpy(v4, "ImportError: ");
  HIWORD(v4[1]) = -4864;
  v1 = *(v0 + OBJC_IVAR____TtC3VFX15ImportErrorNode_name);
  v2 = *(v0 + OBJC_IVAR____TtC3VFX15ImportErrorNode_name + 8);

  MEMORY[0x1B2718AE0](v1, v2);

  return v4[0];
}

uint64_t sub_1AF98CA84@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC3VFX15ImportErrorNode_inputCount);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3 >= 1)
  {
    v5 = sub_1AFDFD488();
    *(v5 + 16) = v3;
LABEL_4:
    memset_pattern16((v5 + 32), &unk_1AFE854D0, 8 * v3);
    goto LABEL_5;
  }

  v5 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    goto LABEL_4;
  }

LABEL_5:
  result = sub_1AFDFD488();
  *(result + 16) = 1;
  *(result + 32) = 0xA000000000000000;
  *a1 = v5;
  a1[1] = result;
  a1[2] = &unk_1F24EF4C0;
  a1[3] = v4;
  a1[4] = v4;
  a1[5] = v4;
  return result;
}

char *sub_1AF98CB38(char *a1)
{
  v2 = swift_allocObject();
  v3 = OBJC_IVAR____TtC3VFX15ImportErrorNode_message;
  v4 = (v2 + OBJC_IVAR____TtC3VFX15ImportErrorNode_message);
  v5 = OBJC_IVAR____TtC3VFX15ImportErrorNode_inputCount;
  v6 = *&a1[OBJC_IVAR____TtC3VFX15ImportErrorNode_name + 8];
  v7 = (v2 + OBJC_IVAR____TtC3VFX15ImportErrorNode_name);
  *v7 = *&a1[OBJC_IVAR____TtC3VFX15ImportErrorNode_name];
  v7[1] = v6;
  v8 = &a1[v3];
  v9 = *(v8 + 1);
  *v4 = *v8;
  v4[1] = v9;
  *(v2 + v5) = *&a1[v5];

  return sub_1AF96FD00(a1);
}

uint64_t sub_1AF98CBC8()
{
  v1 = *(v0 + OBJC_IVAR____TtC3VFX15ImportErrorNode_name);

  return v1;
}

uint64_t sub_1AF98CC04(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x756F437475706E69;
  v4 = 0xEA0000000000746ELL;
  if (v2 != 1)
  {
    v3 = 0x6567617373656DLL;
    v4 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 1701667182;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0x756F437475706E69;
  v8 = 0xEA0000000000746ELL;
  if (*a2 != 1)
  {
    v7 = 0x6567617373656DLL;
    v8 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 1701667182;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1AFDFEE28();
  }

  return v11 & 1;
}

uint64_t sub_1AF98CD08()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF98CDA8(uint64_t a1)
{
  sub_1AFDFD038();
}

uint64_t sub_1AF98CE34(uint64_t a1)
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

unint64_t sub_1AF98CED0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF98F120(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1AF98CF00(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xEA0000000000746ELL;
  v5 = 0x756F437475706E69;
  if (v2 != 1)
  {
    v5 = 0x6567617373656DLL;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1701667182;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1AF98CF5C()
{
  v1 = 0x756F437475706E69;
  if (*v0 != 1)
  {
    v1 = 0x6567617373656DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701667182;
  }
}

unint64_t sub_1AF98CFB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AF98F120(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AF98CFDC(uint64_t a1)
{
  v2 = sub_1AF98F43C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF98D018(uint64_t a1)
{
  v2 = sub_1AF98F43C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF98D054(void *a1)
{
  v3 = v1;
  sub_1AF98F8FC(0, &qword_1EB640D80, sub_1AF98F43C, &type metadata for ImportErrorNode.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v11 - v8;
  sub_1AF441150(a1, a1[3]);
  sub_1AF98F43C();
  sub_1AFDFF3F8();
  LOBYTE(v11) = 0;

  sub_1AFDFE8B8();
  if (v2)
  {
    (*(v7 + 8))(v9, v6);
  }

  else
  {

    LOBYTE(v11) = 1;
    sub_1AFDFE8F8();
    v11 = *(v3 + OBJC_IVAR____TtC3VFX15ImportErrorNode_message);
    v12 = 2;
    sub_1AF98F688(0, &qword_1ED726CC0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    sub_1AF98F490(&qword_1EB6442C0, MEMORY[0x1E69E6160], MEMORY[0x1E69E7C70]);
    sub_1AFDFE918();
    return (*(v7 + 8))(v9, v6);
  }
}

uint64_t sub_1AF98D2D4(void *a1)
{
  v3 = v1;
  sub_1AF98F8FC(0, &qword_1EB640D70, sub_1AF98F43C, &type metadata for ImportErrorNode.CodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - v8;
  sub_1AF441150(a1, a1[3]);
  sub_1AF98F43C();
  result = sub_1AFDFF3B8();
  if (!v2)
  {
    LOBYTE(v14) = 0;
    v11 = sub_1AFDFE708();
    v12 = (v3 + OBJC_IVAR____TtC3VFX15ImportErrorNode_name);
    *v12 = v11;
    v12[1] = v13;

    LOBYTE(v14) = 1;
    *(v3 + OBJC_IVAR____TtC3VFX15ImportErrorNode_inputCount) = sub_1AFDFE748();
    sub_1AF98F688(0, &qword_1ED726CC0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    v15 = 2;
    sub_1AF98F490(&qword_1ED726CB8, MEMORY[0x1E69E6190], MEMORY[0x1E69E7C88]);
    sub_1AFDFE768();
    (*(v7 + 8))(v9, v6);
    *(v3 + OBJC_IVAR____TtC3VFX15ImportErrorNode_message) = v14;
  }

  return result;
}

uint64_t sub_1AF98D5A8()
{
}

uint64_t sub_1AF98D5F0()
{

  sub_1AF919DAC(*(v0 + 24), *(v0 + 32));
  v1 = OBJC_IVAR____TtC3VFX4Node_authoringID;
  v2 = sub_1AFDFC318();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1AF98D7BC@<X0>(uint64_t *a1@<X8>)
{
  v2 = MEMORY[0x1E69E6F90];
  sub_1AF98F688(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1AFE4C6B0;
  v4 = swift_allocObject();
  *(v4 + 16) = 0xC000000000000008;
  *(v3 + 32) = v4 | 0x8000000000000000;
  *(v3 + 40) = 0xA000000000000048;
  v5 = swift_allocObject();
  *(v5 + 16) = 0xC0000000000000B8;
  *(v3 + 48) = v5 | 0x8000000000000000;
  v6 = sub_1AF90DEFC(*(v1 + OBJC_IVAR____TtC3VFX18_ParticleValueNode_keyPath + 24));
  if ((~v6 & 0xF000000000000007) != 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0xC000000000000000;
  }

  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v3 + 56) = v8 | 0x8000000000000000;
  sub_1AF98F688(0, &unk_1EB630980, &type metadata for AnyValue, v2);
  v9 = swift_allocObject();
  v10 = MEMORY[0x1E69E6530];
  *(v9 + 64) = MEMORY[0x1E69E6530];
  *(v9 + 16) = xmmword_1AFE4C6B0;
  *(v9 + 32) = xmmword_1AFE87170;
  sub_1AF9708B8(11, 0, (v9 + 72));
  *(v9 + 144) = v10;
  *(v9 + 112) = xmmword_1AFE87170;
  *(v9 + 184) = v10;
  *(v9 + 152) = xmmword_1AFE87170;
  sub_1AF98F514(0, &qword_1EB630968, &qword_1ED726CC0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1AFE4C6B0;
  *(v11 + 32) = 0;
  *(v11 + 40) = 0;
  *(v11 + 48) = xmmword_1AFE880C0;
  *(v11 + 64) = xmmword_1AFE880D0;
  v12 = sub_1AFDFDFD8();
  result = swift_conformsToProtocol2();
  if (result)
  {
    v14 = (*(result + 16))(v12, result);
    v16 = v15;
    sub_1AF9A0BAC(1, v14, v15);
    v17 = sub_1AFDFDDA8();
    v19 = v18;

    sub_1AF701628(1, v14, v16);

    sub_1AF725990();
    sub_1AFDFD0A8();

    *(v11 + 80) = v17;
    *(v11 + 88) = v19;
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1AFE431C0;
    result = swift_allocObject();
    *(result + 16) = 0xC000000000000008;
    *(v20 + 32) = result | 0x8000000000000000;
    *a1 = v3;
    a1[1] = v20;
    a1[2] = &unk_1F24F23F8;
    a1[3] = v11;
    a1[4] = MEMORY[0x1E69E7CC0];
    a1[5] = v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AF98DB30(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = sub_1AFDFDFD8();
  result = swift_conformsToProtocol2();
  if (v1 == 2)
  {
    if (result)
    {
      sub_1AFB7A5C0(v2);
      v5 = v4;
      v7 = v6;

      v12 = 3027237;
      MEMORY[0x1B2718AE0](v5, v7);

      v8 = 0x293325202C322528;
      v9 = 0xE800000000000000;
LABEL_6:
      MEMORY[0x1B2718AE0](v8, v9);
      return v12;
    }

    __break(1u);
  }

  else if (result)
  {
    sub_1AFD62F64(v2);
    v11 = v10;

    v12 = v11;
    v8 = 0x2C3225202C312528;
    v9 = 0xEC00000029332520;
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AF98DC9C@<X0>(uint64_t *a1@<X8>)
{
  v3 = MEMORY[0x1E69E6F90];
  sub_1AF98F688(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AFE4C620;
  *(v4 + 32) = 0xA000000000000048;
  v5 = swift_allocObject();
  *(v5 + 16) = 0xC0000000000000B8;
  v20 = v4;
  *(v4 + 40) = v5 | 0x8000000000000000;
  sub_1AF98F688(0, &unk_1EB630980, &type metadata for AnyValue, v3);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1AFE4C620;
  sub_1AF9708B8(11, 0, (v6 + 32));
  *(v6 + 104) = MEMORY[0x1E69E6530];
  *(v6 + 72) = xmmword_1AFE87170;
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1AFE431C0;
  v8 = sub_1AF90DEFC(*(v1 + OBJC_IVAR____TtC3VFX18_ParticleValueNode_keyPath + 24));
  if ((~v8 & 0xF000000000000007) != 0)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0xC000000000000000;
  }

  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v7 + 32) = v10 | 0x8000000000000000;
  sub_1AF98F514(0, &qword_1EB630968, &qword_1ED726CC0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1AFE431C0;
  v12 = sub_1AFDFDFD8();
  result = swift_conformsToProtocol2();
  if (result)
  {
    v14 = (*(result + 16))(v12, result);
    v16 = v15;
    sub_1AF9A0BAC(1, v14, v15);
    v17 = sub_1AFDFDDA8();
    v19 = v18;

    sub_1AF701628(1, v14, v16);

    sub_1AF725990();
    sub_1AFDFD0A8();

    *(v11 + 32) = v17;
    *(v11 + 40) = v19;
    *a1 = v20;
    a1[1] = v7;
    a1[2] = &unk_1F24F2388;
    a1[3] = &unk_1F24F23B8;
    a1[4] = v11;
    a1[5] = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AF98DFA0(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = sub_1AFDFDFD8();
  result = swift_conformsToProtocol2();
  if (v1 == 2)
  {
    if (result)
    {
      v4 = sub_1AFB7A5C0(v2);
      v6 = v5;

      v10 = 3026981;
      MEMORY[0x1B2718AE0](v4, v6);

      v7 = 691086632;
      v8 = 0xE400000000000000;
LABEL_6:
      MEMORY[0x1B2718AE0](v7, v8);
      return v10;
    }

    __break(1u);
  }

  else if (result)
  {
    v9 = sub_1AFD62F64(v2);

    v10 = v9;
    v7 = 0x293125202C302528;
    v8 = 0xE800000000000000;
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

char *sub_1AF98E0D4(char *a1, void *a2)
{
  v4 = swift_allocObject();
  v5 = &a1[*a2];
  v6 = *(v5 + 1);
  v7 = *(v5 + 4);
  v8 = v5[40];
  v9 = *(v5 + 21);
  v10 = v4 + *a2;
  *v10 = *v5;
  *(v10 + 8) = v6;
  *(v10 + 16) = *(v5 + 1);
  *(v10 + 32) = v7;
  *(v10 + 40) = v8;
  *(v10 + 42) = v9;

  return sub_1AF96FD00(a1);
}

uint64_t sub_1AF98E16C(void *a1)
{

  sub_1AF919DAC(*(v1 + 24), *(v1 + 32));
  v2 = OBJC_IVAR____TtC3VFX4Node_authoringID;
  v3 = sub_1AFDFC318();
  (*(*(v3 - 8) + 8))(v1 + v2, v3);

  return swift_deallocClassInstance();
}

uint64_t sub_1AF98E2BC@<X0>(uint64_t *a1@<X8>)
{
  v2 = MEMORY[0x1E69E6F90];
  sub_1AF98F688(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1AFE4C620;
  *(v3 + 32) = 0xA000000000000048;
  v4 = swift_allocObject();
  *(v4 + 16) = 0xC000000000000038;
  *(v3 + 40) = v4 | 0x8000000000000000;
  sub_1AF98F688(0, &unk_1EB630980, &type metadata for AnyValue, v2);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1AFE4C620;
  sub_1AF9708B8(11, 0, (v5 + 32));
  *(v5 + 104) = MEMORY[0x1E69E6530];
  *(v5 + 72) = xmmword_1AFE87170;
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1AFE431C0;
  result = swift_allocObject();
  *(result + 16) = 0xC0000000000000B8;
  *(v6 + 32) = result | 0x8000000000000000;
  *a1 = v3;
  a1[1] = v6;
  a1[2] = &unk_1F24F2598;
  a1[3] = &unk_1F24F25C8;
  a1[4] = &unk_1F24F2608;
  a1[5] = v5;
  return result;
}

unint64_t sub_1AF98E440(_BYTE *a1)
{
  if (*a1 == 2)
  {
    return 0xD00000000000001DLL;
  }

  else
  {
    return 0xD000000000000028;
  }
}

uint64_t sub_1AF98E4C0@<X0>(void *a1@<X8>)
{
  v2 = MEMORY[0x1E69E6F90];
  sub_1AF98F688(0, &unk_1EB630980, &type metadata for AnyValue, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1AFE431C0;
  sub_1AF9708B8(11, 0, (v3 + 32));
  sub_1AF98F688(0, &qword_1EB6309E8, &type metadata for TypeConstraint, v2);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AFE431C0;
  result = swift_allocObject();
  *(result + 16) = 0xC000000000000040;
  *(v4 + 32) = result | 0x8000000000000000;
  *a1 = &unk_1F24F1EE8;
  a1[1] = v4;
  a1[2] = &unk_1F24F1F10;
  a1[3] = &unk_1F24F1F40;
  a1[4] = MEMORY[0x1E69E7CC0];
  a1[5] = v3;
  return result;
}

unint64_t sub_1AF98E5D8(_BYTE *a1)
{
  if (*a1 == 2)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 0xD00000000000001DLL;
  }
}

uint64_t sub_1AF98E658@<X0>(uint64_t *a1@<X8>)
{
  sub_1AF98F688(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1AFE431C0;
  v3 = swift_allocObject();
  *(v3 + 16) = 0xC0000000000000B8;
  *(v2 + 32) = v3 | 0x8000000000000000;
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AFE431C0;
  result = swift_allocObject();
  *(result + 16) = 0xC000000000000010;
  *(v4 + 32) = result | 0x8000000000000000;
  *a1 = v2;
  a1[1] = v4;
  a1[2] = &unk_1F24F20C8;
  a1[3] = &unk_1F24F20F8;
  v6 = MEMORY[0x1E69E7CC0];
  a1[4] = MEMORY[0x1E69E7CC0];
  a1[5] = v6;
  return result;
}

uint64_t sub_1AF98E7D0@<X0>(uint64_t *a1@<X8>)
{
  v2 = MEMORY[0x1E69E6F90];
  sub_1AF98F688(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1AFE4C680;
  *(v3 + 32) = 0xA000000000000048;
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1AFE4C430;
  *(v4 + 16) = v5 | 0x2000000000000000;
  *(v3 + 40) = v4 | 0x8000000000000000;
  v6 = swift_allocObject();
  *(v6 + 16) = 0xC000000000000058;
  *(v3 + 48) = v6 | 0x8000000000000000;
  sub_1AF98F688(0, &unk_1EB630980, &type metadata for AnyValue, v2);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1AFE4C680;
  sub_1AF9708B8(11, 0, (v7 + 32));
  v8 = MEMORY[0x1E69E6530];
  *(v7 + 104) = MEMORY[0x1E69E6530];
  *(v7 + 72) = xmmword_1AFE87170;
  *(v7 + 144) = v8;
  *(v7 + 112) = xmmword_1AFE87170;
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1AFE431C0;
  result = swift_allocObject();
  *(result + 16) = 0xC0000000000000B8;
  *(v9 + 32) = result | 0x8000000000000000;
  *a1 = v3;
  a1[1] = v9;
  a1[2] = &unk_1F24F2A18;
  a1[3] = &unk_1F24F2A48;
  a1[4] = &unk_1F24F2A98;
  a1[5] = v7;
  return result;
}

uint64_t sub_1AF98EA00@<X0>(uint64_t *a1@<X8>)
{
  v2 = MEMORY[0x1E69E6F90];
  sub_1AF98F688(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1AFE4C6B0;
  *(v3 + 32) = 0xA000000000000048;
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1AFE4C430;
  *(v4 + 16) = v5 | 0x2000000000000000;
  *(v3 + 40) = v4 | 0x8000000000000000;
  v6 = swift_allocObject();
  *(v6 + 16) = 0xC000000000000058;
  *(v3 + 48) = v6 | 0x8000000000000000;
  v7 = swift_allocObject();
  *(v7 + 16) = 0xC000000000000038;
  *(v3 + 56) = v7 | 0x8000000000000000;
  sub_1AF98F688(0, &unk_1EB630980, &type metadata for AnyValue, v2);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1AFE4C6B0;
  sub_1AF9708B8(11, 0, (v8 + 32));
  v9 = MEMORY[0x1E69E6530];
  *(v8 + 104) = MEMORY[0x1E69E6530];
  *(v8 + 72) = xmmword_1AFE87170;
  *(v8 + 144) = v9;
  *(v8 + 112) = xmmword_1AFE87170;
  v13[3] = MEMORY[0x1E69E7668];
  LODWORD(v13[0]) = 20;
  sub_1AF975674(v13, (v8 + 152));
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v13);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1AFE431C0;
  v11 = swift_allocObject();
  result = swift_allocObject();
  *(result + 16) = 0xC0000000000000B8;
  *(v11 + 16) = result | 0x6000000000000000;
  *(v10 + 32) = v11 | 0x8000000000000000;
  *a1 = v3;
  a1[1] = v10;
  a1[2] = &unk_1F24F26A8;
  a1[3] = &unk_1F24F26D8;
  a1[4] = &unk_1F24F2738;
  a1[5] = v8;
  return result;
}

uint64_t sub_1AF98EC3C()
{

  sub_1AF9A27E0(1, 0);

  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0xD000000000000014, 0x80000001AFF3D580);
  v0 = sub_1AFDFEA08();
  MEMORY[0x1B2718AE0](v0);

  MEMORY[0x1B2718AE0](0xD000000000000038, 0x80000001AFF3D5A0);
  v1 = sub_1AFDFEA08();
  MEMORY[0x1B2718AE0](v1);

  MEMORY[0x1B2718AE0](0xD000000000000050, 0x80000001AFF3D5E0);
  return 0;
}

unint64_t sub_1AF98EDC0()
{
  result = qword_1EB640D50;
  if (!qword_1EB640D50)
  {
    sub_1AF98F688(255, &qword_1EB640D58, &type metadata for VFXStage, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable(MEMORY[0x1E69E6340], v3, v0, v1);
    atomic_store(result, &qword_1EB640D50);
  }

  return result;
}

unint64_t sub_1AF98EE40()
{
  result = qword_1EB640D60;
  if (!qword_1EB640D60)
  {
    result = swift_getWitnessTable(byte_1AFE88674, &type metadata for VFXStage, v0, v1);
    atomic_store(result, &qword_1EB640D60);
  }

  return result;
}

uint64_t sub_1AF98EE94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7[2] = a1;
  v7[3] = a4;
  sub_1AF3FB9C8(sub_1AF42B5A8, v7, 0, 0x1000000000000000uLL, 0, MEMORY[0x1E69E7CC0]);
  v5 = sub_1AF449CC8();

  *(a2 + 24) = v5;
}

uint64_t sub_1AF98EF40(uint64_t a1, uint64_t a2)
{
  v2 = sub_1AFDFDFD8();
  result = swift_conformsToProtocol2();
  if (result)
  {
    v4 = result;
    v5 = *(v2 - 8);
    MEMORY[0x1EEE9AC00](result);
    v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    v9 = *(v8 + 8);
    sub_1AF6461F4(v2, v9);
    v10 = (*(v9 + 24))(v2, v9);
    (*(v5 + 8))(v7, v2);
    if (v10 >> 62)
    {
      v11 = sub_1AFDFE108();
    }

    else
    {
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v12 = (*(v4 + 16))(v2, v4);
    if (v11 == 1)
    {
      return 0;
    }

    else
    {
      v13 = v12;

      return v13;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1AF98F120(uint64_t a1, uint64_t a2)
{
  v2 = sub_1AFDFE638();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1AF98F16C()
{
  v0 = 0;
  v1 = MEMORY[0x1E69E7CC0];
  do
  {
    v2 = sub_1AFDFEA08();
    MEMORY[0x1B2718AE0](v2);

    MEMORY[0x1B2718AE0](0x6D61726170253DLL, 0xE700000000000000);
    v3 = sub_1AFDFEA08();
    MEMORY[0x1B2718AE0](v3);

    sub_1AF98F688(0, &qword_1EB638390, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1AFE431C0;
    *(inited + 32) = 29219;
    *(inited + 40) = 0xE200000000000000;
    sub_1AF98F514(0, &qword_1ED722EF8, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
    *(inited + 48) = 0;
    *(inited + 56) = 0;
    v5 = swift_initStackObject();
    *(v5 + 16) = xmmword_1AFE431C0;
    *(v5 + 32) = inited;
    v6 = v5 + 32;
    v7 = sub_1AFA56CA0();
    swift_setDeallocating();
    sub_1AF98F618(v6, &unk_1ED723290, &type metadata for CodeEmitter.Code);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = sub_1AF426BC8(0, v1[2] + 1, 1, v1);
    }

    v9 = v1[2];
    v8 = v1[3];
    if (v9 >= v8 >> 1)
    {
      v1 = sub_1AF426BC8(v8 > 1, v9 + 1, 1, v1);
    }

    ++v0;
    v1[2] = v9 + 1;
    v1[v9 + 4] = v7;
  }

  while (v0 != 7);
  v10 = sub_1AFA56CA0();

  v11 = swift_initStackObject();
  *(v11 + 16) = xmmword_1AFE431C0;
  *(v11 + 32) = v10;
  v12 = v11 + 32;
  v13 = sub_1AFA56CA0();
  swift_setDeallocating();
  sub_1AF98F618(v12, &unk_1ED723290, &type metadata for CodeEmitter.Code);
  return v13;
}

unint64_t sub_1AF98F3E8()
{
  result = qword_1EB640D68;
  if (!qword_1EB640D68)
  {
    result = swift_getWitnessTable(byte_1AFE8863C, &type metadata for VFXStage, v0, v1);
    atomic_store(result, &qword_1EB640D68);
  }

  return result;
}

unint64_t sub_1AF98F43C()
{
  result = qword_1EB640D78;
  if (!qword_1EB640D78)
  {
    result = swift_getWitnessTable(byte_1AFE889BC, &type metadata for ImportErrorNode.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB640D78);
  }

  return result;
}

uint64_t sub_1AF98F490(unint64_t *a1, uint64_t a2, const char *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1AF98F688(255, &qword_1ED726CC0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    v8 = a2;
    result = swift_getWitnessTable(a3, v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

void sub_1AF98F514(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(void, uint64_t))
{
  if (!*a2)
  {
    sub_1AF98F688(255, a3, a4, a5);
    v6 = sub_1AFDFEA18();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1AF98F570(uint64_t a1)
{

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

uint64_t sub_1AF98F618(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1AF98F688(0, a2, a3, MEMORY[0x1E69E62F8]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1AF98F688(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1AF98F6D8()
{
  result = qword_1EB640D88;
  if (!qword_1EB640D88)
  {
    result = swift_getWitnessTable(byte_1AFE6C474, &type metadata for EntityKeyPath, v0, v1);
    atomic_store(result, &qword_1EB640D88);
  }

  return result;
}

unint64_t sub_1AF98F780()
{
  result = qword_1EB640D90;
  if (!qword_1EB640D90)
  {
    result = swift_getWitnessTable(asc_1AFE6C44C, &type metadata for EntityKeyPath, v0, v1);
    atomic_store(result, &qword_1EB640D90);
  }

  return result;
}

unint64_t sub_1AF98F7F8()
{
  result = qword_1EB640D98;
  if (!qword_1EB640D98)
  {
    result = swift_getWitnessTable(a5_24, &type metadata for ImportErrorNode.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB640D98);
  }

  return result;
}

unint64_t sub_1AF98F850()
{
  result = qword_1EB640DA0;
  if (!qword_1EB640DA0)
  {
    result = swift_getWitnessTable(byte_1AFE8884C, &type metadata for ImportErrorNode.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB640DA0);
  }

  return result;
}

unint64_t sub_1AF98F8A8()
{
  result = qword_1EB640DA8;
  if (!qword_1EB640DA8)
  {
    result = swift_getWitnessTable(byte_1AFE88874, &type metadata for ImportErrorNode.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB640DA8);
  }

  return result;
}

void sub_1AF98F8FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1AF98F964()
{
  result = qword_1EB640DB8;
  if (!qword_1EB640DB8)
  {
    result = swift_getWitnessTable(asc_1AFE88A5C, &type metadata for GraphSideStorage.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB640DB8);
  }

  return result;
}

unint64_t sub_1AF98F9CC()
{
  result = qword_1EB640DC0;
  if (!qword_1EB640DC0)
  {
    result = swift_getWitnessTable(byte_1AFE88A0C, &type metadata for GraphSideStorage.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB640DC0);
  }

  return result;
}

unint64_t sub_1AF98FA24()
{
  result = qword_1EB640DC8;
  if (!qword_1EB640DC8)
  {
    result = swift_getWitnessTable(byte_1AFE88A34, &type metadata for GraphSideStorage.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB640DC8);
  }

  return result;
}

uint64_t sub_1AF98FBDC@<X0>(uint64_t *a1@<X8>)
{
  sub_1AF992EA8(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1AFE4C620;
  *(v2 + 32) = 0xA000000000000038;
  v3 = swift_allocObject();
  *(v3 + 16) = 0xC000000000000058;
  *(v2 + 40) = v3 | 0x8000000000000000;
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AFE431C0;
  result = swift_allocObject();
  *(result + 16) = 0xC000000000000058;
  *(v4 + 32) = result | 0x8000000000000000;
  *a1 = v2;
  a1[1] = v4;
  a1[2] = &unk_1F24F02B0;
  a1[3] = &unk_1F24F02E0;
  v6 = MEMORY[0x1E69E7CC0];
  a1[4] = MEMORY[0x1E69E7CC0];
  a1[5] = v6;
  return result;
}

unint64_t sub_1AF98FD14(unsigned __int8 *a1)
{
  v3 = 0xD000000000000021;
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v4 + 32);
  sub_1AF448650(v4, v5);
  sub_1AF442064(v6);

  if (sub_1AF90F890(v6, 0xC000000000000090))
  {
    v7 = *a1;
    sub_1AF445BE4(v6);
    if (v7)
    {
      return 0xD000000000000023;
    }

    else
    {
      return 0xD000000000000025;
    }
  }

  else
  {
    sub_1AF445BE4(v6);
  }

  return v3;
}

double sub_1AF98FE0C@<D0>(uint64_t *a1@<X8>)
{
  sub_1AF992EA8(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1AFE4C620;
  *(v2 + 32) = 0xA000000000000040;
  v3 = swift_allocObject();
  *(v3 + 16) = 0xC000000000000058;
  *(v2 + 40) = v3 | 0x8000000000000000;
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AFE431C0;
  v5 = swift_allocObject();
  v6 = swift_allocObject();
  *&result = 4;
  *(v6 + 16) = xmmword_1AFE4C440;
  *(v5 + 16) = v6 | 0x2000000000000000;
  *(v4 + 32) = v5 | 0x8000000000000000;
  *a1 = v2;
  a1[1] = v4;
  a1[2] = &unk_1F24F1558;
  a1[3] = &unk_1F24F1588;
  v8 = MEMORY[0x1E69E7CC0];
  a1[4] = MEMORY[0x1E69E7CC0];
  a1[5] = v8;
  return result;
}

unint64_t sub_1AF98FF5C(unsigned __int8 *a1)
{
  v3 = *(v1 + 24);
  v4 = *(v3 + 32);
  sub_1AF448650(v3, *(v1 + 32));
  sub_1AF442064(v4);

  if (sub_1AF90F890(v4, 0xC000000000000080))
  {
    v5 = *a1;
    sub_1AF445BE4(v4);
    if (v5)
    {
      return 0xD000000000000021;
    }

    else
    {
      return 0xD000000000000023;
    }
  }

  else
  {
    sub_1AF445BE4(v4);
    return 0xD000000000000026;
  }
}

uint64_t sub_1AF990050@<X0>(uint64_t *a1@<X8>)
{
  v2 = MEMORY[0x1E69E6F90];
  sub_1AF992EA8(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1AFE4C680;
  v4 = swift_allocObject();
  *(v4 + 16) = 0xC000000000000078;
  *(v3 + 32) = v4 | 0x8000000000000000;
  v5 = swift_allocObject();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1AFE4C440;
  *(v5 + 16) = v6 | 0x2000000000000000;
  *(v3 + 40) = v5 | 0x8000000000000000;
  v7 = swift_allocObject();
  *(v7 + 16) = 0xC000000000000038;
  *(v3 + 48) = v7 | 0x8000000000000000;
  sub_1AF992EA8(0, &unk_1EB630980, &type metadata for AnyValue, v2);
  v8 = swift_allocObject();
  *(v8 + 64) = MEMORY[0x1E69E6530];
  *(v8 + 16) = xmmword_1AFE4C680;
  *(v8 + 32) = xmmword_1AFE87170;
  if (qword_1EB6371E8 != -1)
  {
    swift_once();
  }

  v15 = xmmword_1EB6C3370;
  sub_1AF6AF6D4(0);
  v16[3] = v9;
  v16[0] = swift_allocObject();
  *(v16[0] + 16) = v15;
  sub_1AF975674(v16, v17);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v16);
  type metadata accessor for ImplicitConstantNode(0);
  v10 = swift_allocObject();
  sub_1AF914FF0(v17, v16);
  v11 = OBJC_IVAR____TtC3VFX12ConstantNode_semantic;
  sub_1AF914FF0(v16, v10 + OBJC_IVAR____TtC3VFX12ConstantNode_holder);
  *(v10 + v11) = xmmword_1AFE55160;
  v12 = MEMORY[0x1E69E7CC0];
  v10[2] = MEMORY[0x1E69E7CC0];
  v10[3] = 0;
  v10[4] = 0;
  sub_1AFDFC308();
  sub_1AF9151B0(v17);
  sub_1AF9151B0(v16);
  *(v8 + 104) = type metadata accessor for Node(0);
  *(v8 + 72) = 0xC000000000000000;
  *(v8 + 80) = v10;
  v17[3] = MEMORY[0x1E69E7360];
  v17[0] = 0;
  sub_1AF975674(v17, (v8 + 112));
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v17);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1AFE431C0;
  result = swift_allocObject();
  *(result + 16) = 0xC000000000000078;
  *(v13 + 32) = result | 0x8000000000000000;
  *a1 = v3;
  a1[1] = v13;
  a1[2] = &unk_1F24EE800;
  a1[3] = &unk_1F24EE830;
  a1[4] = v12;
  a1[5] = v8;
  return result;
}

__n128 sub_1AF990408@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, __n128 a3@<Q0>)
{
  sub_1AF992EA8(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1AFE431C0;
  v6 = swift_allocObject();
  v7 = swift_allocObject();
  *(v7 + 16) = a3;
  *(v6 + 16) = v7 | 0x2000000000000000;
  *(v5 + 32) = v6 | 0x8000000000000000;
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1AFE431C0;
  v9 = swift_allocObject();
  v10 = swift_allocObject();
  result = a3;
  *(v10 + 16) = a3;
  *(v9 + 16) = v10 | 0x2000000000000000;
  *(v8 + 32) = v9 | 0x8000000000000000;
  *a2 = v5;
  a2[1] = v8;
  v12 = MEMORY[0x1E69E7CC0];
  a2[2] = a1;
  a2[3] = v12;
  a2[4] = v12;
  a2[5] = v12;
  return result;
}

unint64_t sub_1AF99084C(_BYTE *a1)
{
  if (*a1 == 3)
  {
    return 0xD000000000000034;
  }

  else
  {
    return 0xD000000000000024;
  }
}

uint64_t sub_1AF9908B0()
{
  v1 = *(v0 + OBJC_IVAR____TtC3VFX11SamplerNode_textureType);
  if (v1 < 3)
  {
    return (v1 << 56) + 0x3165727574786554;
  }

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AF99094C@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E6F90];
  sub_1AF992EA8(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1AFE4C680;
  v6 = swift_allocObject();
  *(v6 + 16) = 0xC000000000000098;
  *(v5 + 32) = v6 | 0x8000000000000000;
  v7 = swift_allocObject();
  *(v7 + 16) = 0xC000000000000020;
  *(v5 + 40) = v7 | 0x8000000000000000;
  v8 = swift_allocObject();
  *(v8 + 16) = 0xC000000000000020;
  *(v5 + 48) = v8 | 0x8000000000000000;
  sub_1AF992EA8(0, &unk_1EB630980, &type metadata for AnyValue, v4);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1AFE4C680;
  if (qword_1EB6371F0 != -1)
  {
    swift_once();
  }

  v10 = qword_1EB6C3430;
  type metadata accessor for ImplicitWorldAssetNode(0);
  swift_allocObject();
  v11 = v10;
  v12 = sub_1AF9C3E60(v11, 0, 1, 8, 0);

  *(v9 + 64) = type metadata accessor for Node(0);
  *(v9 + 32) = 0xC000000000000000;
  *(v9 + 40) = v12;
  v17 = &type metadata for AddressMode;
  LOBYTE(v16[0]) = 2;
  sub_1AF975674(v16, (v9 + 72));
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v16);
  v17 = &type metadata for FilterMode;
  LOBYTE(v16[0]) = 1;
  sub_1AF975674(v16, (v9 + 112));
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v16);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1AFE431C0;
  v14 = swift_allocObject();
  result = swift_allocObject();
  *(result + 16) = *(v2 + OBJC_IVAR____TtC3VFX11SamplerNode_textureType);
  *(v14 + 16) = result | 0x8000000000000000;
  *(v13 + 32) = v14 | 0x8000000000000000;
  *a1 = v5;
  a1[1] = v13;
  a1[2] = &unk_1F24EE520;
  a1[3] = &unk_1F24EE550;
  a1[4] = &unk_1F24EE5A0;
  a1[5] = v9;
  return result;
}

uint64_t sub_1AF990C0C()
{
  v1 = v0;

  v2 = sub_1AF9A178C(1, 0);
  v4 = v3;

  v5 = sub_1AF9A8AB0();

  v6 = sub_1AF9A8AC0();

  sub_1AF992EA8(0, &qword_1ED722F30, &type metadata for ScriptParameter, MEMORY[0x1E69E6F90]);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1AFE431C0;
  v8 = swift_allocObject();
  v9 = 0xFFFFFFFFLL;
  if ((v4 & 1) == 0)
  {
    v9 = v2;
  }

  *(v8 + 16) = v9;
  *(v8 + 24) = 0;
  *(v8 + 32) = 0;
  *(v8 + 33) = *(v1 + OBJC_IVAR____TtC3VFX11SamplerNode_textureType);
  *(v8 + 34) = v5;
  *(v8 + 35) = v6 & 1;
  *(v7 + 32) = v8 | 0x4000000000000000;
  *(v7 + 40) = 1;
  *(v7 + 48) = xmmword_1AFE4C460;
  *(v7 + 64) = 1;
  return v7;
}

uint64_t sub_1AF990E34()
{
  v1 = *(v0 + OBJC_IVAR____TtC3VFX10SampleNode_textureType);
  if (v1 < 3)
  {
    return (v1 << 48) + 0x4431656C706D6153;
  }

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AF990ECC@<X0>(uint64_t *a1@<X8>)
{
  v3 = MEMORY[0x1E69E6F90];
  sub_1AF992EA8(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AFE4C6B0;
  v5 = swift_allocObject();
  v6 = swift_allocObject();
  *(v6 + 16) = *(v1 + OBJC_IVAR____TtC3VFX10SampleNode_textureType);
  *(v5 + 16) = v6 | 0x8000000000000000;
  *(v4 + 32) = v5 | 0x8000000000000000;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1AF99117C();
  *(v4 + 40) = v7 | 0x8000000000000000;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1AF99117C();
  *(v4 + 48) = v8 | 0x8000000000000000;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1AF99117C();
  *(v4 + 56) = v9 | 0x8000000000000000;
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1AFE431C0;
  v11 = swift_allocObject();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1AFE4C440;
  *(v11 + 16) = v12 | 0x2000000000000000;
  *(v10 + 32) = v11 | 0x8000000000000000;
  sub_1AF992EA8(0, &unk_1EB630980, &type metadata for AnyValue, v3);
  v13 = swift_allocObject();
  *(v13 + 64) = MEMORY[0x1E69E6530];
  *(v13 + 16) = xmmword_1AFE4C6B0;
  *(v13 + 32) = xmmword_1AFE87F70;
  v14 = sub_1AF99117C();
  sub_1AF90EDE8(v14, v18, 0.5);
  sub_1AF445BE4(v14);
  sub_1AF975674(v18, (v13 + 72));
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v18);
  v15 = sub_1AF99117C();
  sub_1AF90EDE8(v15, v18, 1.0);
  sub_1AF445BE4(v15);
  sub_1AF975674(v18, (v13 + 112));
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v18);
  v16 = sub_1AF99117C();
  sub_1AF90EDE8(v16, v18, 0.0);
  sub_1AF445BE4(v16);
  sub_1AF975674(v18, (v13 + 152));
  result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v18);
  *a1 = v4;
  a1[1] = v10;
  a1[2] = &unk_1F24EDC98;
  a1[3] = &unk_1F24EDCC8;
  a1[4] = &unk_1F24EDD28;
  a1[5] = v13;
  return result;
}

unint64_t sub_1AF99117C()
{
  v1 = 0xC000000000000058;
  v2 = *(v0 + OBJC_IVAR____TtC3VFX10SampleNode_textureType);
  if (!*(v0 + OBJC_IVAR____TtC3VFX10SampleNode_textureType))
  {
    return v1;
  }

  if (v2 == 1)
  {
    v3 = 2;
LABEL_6:
    v4 = swift_allocObject();
    *(v4 + 16) = v3;
    *(v4 + 24) = 0xC000000000000058;
    return v4 | 0x2000000000000000;
  }

  if (v2 == 2)
  {
    v3 = 3;
    goto LABEL_6;
  }

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AF991250(unsigned __int8 *a1)
{
  v2 = *a1;
  if (v2 >= 2)
  {
    if (v2 == 2)
    {
      return 0xD000000000000035;
    }
  }

  else
  {
    v3 = *(v1 + OBJC_IVAR____TtC3VFX10SampleNode_textureType);
    if (!*(v1 + OBJC_IVAR____TtC3VFX10SampleNode_textureType) || v3 == 2 || v3 == 1)
    {
      sub_1AFDFE218();

      MEMORY[0x1B2718AE0](0xD00000000000001CLL, 0x80000001AFF3E030);
      return 0xD00000000000001BLL;
    }
  }

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AF9914C8@<X0>(uint64_t *a1@<X8>)
{
  v2 = MEMORY[0x1E69E6F90];
  sub_1AF992EA8(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1AFE4C6B0;
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  *(v5 + 16) = 1;
  *(v4 + 16) = v5 | 0x8000000000000000;
  *(v3 + 32) = v4 | 0x8000000000000000;
  v6 = swift_allocObject();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1AFE4C420;
  *(v6 + 16) = v7 | 0x2000000000000000;
  *(v3 + 40) = v6 | 0x8000000000000000;
  v8 = swift_allocObject();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1AFE4C420;
  *(v8 + 16) = v9 | 0x2000000000000000;
  *(v3 + 48) = v8 | 0x8000000000000000;
  v10 = swift_allocObject();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1AFE4C420;
  *(v10 + 16) = v11 | 0x2000000000000000;
  *(v3 + 56) = v10 | 0x8000000000000000;
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1AFE431C0;
  v13 = swift_allocObject();
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1AFE4C420;
  *(v13 + 16) = v14 | 0x2000000000000000;
  *(v12 + 32) = v13 | 0x8000000000000000;
  sub_1AF992EA8(0, &unk_1EB630980, &type metadata for AnyValue, v2);
  v15 = swift_allocObject();
  *(v15 + 64) = MEMORY[0x1E69E6530];
  *(v15 + 16) = xmmword_1AFE4C6B0;
  *(v15 + 32) = xmmword_1AFE87F70;
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1AFE4C420;
  sub_1AF90EDE8(v16 | 0x2000000000000000, v20, 0.5);

  sub_1AF975674(v20, (v15 + 72));
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v20);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1AFE4C420;
  sub_1AF90EDE8(v17 | 0x2000000000000000, v20, 1.0);

  sub_1AF975674(v20, (v15 + 112));
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v20);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1AFE4C420;
  sub_1AF90EDE8(v18 | 0x2000000000000000, v20, 0.0);

  sub_1AF975674(v20, (v15 + 152));
  result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v20);
  *a1 = v3;
  a1[1] = v12;
  a1[2] = &unk_1F24EFCA0;
  a1[3] = &unk_1F24EFCD0;
  a1[4] = &unk_1F24EFD30;
  a1[5] = v15;
  return result;
}

uint64_t sub_1AF991828(unsigned __int8 *a1)
{
  result = 0xD000000000000042;
  v3 = *a1;
  if (v3 >= 2)
  {
    if (v3 == 2)
    {
      return 0xD000000000000035;
    }

    else
    {
      result = sub_1AFDFE518();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1AF9918E4(char a1)
{
  result = 0x7361456369627563;
  switch(a1)
  {
    case 3:
      return 0x6974617264617571;
    case 4:
      return 0xD000000000000010;
    case 5:
      return 0xD000000000000012;
    case 6:
      v3 = 1918989681;
      return v3 | 0x4563697400000000;
    case 7:
      v4 = 1918989681;
      goto LABEL_18;
    case 8:
      return 0xD000000000000010;
    case 9:
      v3 = 1852405105;
      return v3 | 0x4563697400000000;
    case 10:
      v4 = 1852405105;
LABEL_18:
      result = v4 | 0x4563697400000000;
      break;
    case 11:
      result = 0xD000000000000010;
      break;
    case 12:
      result = 0x49657361456E6973;
      break;
    case 13:
      result = 0x4F657361456E6973;
      break;
    case 14:
      result = 0x49657361456E6973;
      break;
    case 15:
      result = 0x746E656E6F707865;
      break;
    case 16:
      result = 0x6C61636973796870;
      break;
    case 17:
      result = 0x7361457265776F70;
      break;
    case 18:
      result = 0x614565636E756F62;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1AF991B0C(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1AF9918E4(*a1);
  v5 = v4;
  if (v3 == sub_1AF9918E4(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1AFDFEE28();
  }

  return v8 & 1;
}

uint64_t sub_1AF991B94()
{
  v1 = *v0;
  sub_1AFDFF288();
  sub_1AF9918E4(v1);
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF991BF8(uint64_t a1)
{
  sub_1AF9918E4(*v1);
  sub_1AFDFD038();
}

uint64_t sub_1AF991C4C(uint64_t a1)
{
  v2 = *v1;
  sub_1AFDFF288();
  sub_1AF9918E4(v2);
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

unint64_t sub_1AF991CAC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF992E00(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1AF991CDC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1AF9918E4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1AF991DDC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC3VFX10EasingNode_kind);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3 >= 0xF)
  {
    if (*(v1 + OBJC_IVAR____TtC3VFX10EasingNode_kind) > 0x10u)
    {
      if (v3 == 17)
      {
        sub_1AF992EA8(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
        v6 = swift_allocObject();
        *(v6 + 16) = xmmword_1AFE4C620;
        v15 = swift_allocObject();
        *(v15 + 16) = 0xC000000000000058;
        *(v6 + 32) = v15 | 0x8000000000000000;
        v16 = swift_allocObject();
        *(v16 + 16) = 0xC000000000000058;
        *(v6 + 40) = v16 | 0x8000000000000000;
        v8 = MEMORY[0x1E69E7CC0];
        v9 = &unk_1F24ED7E8;
        v10 = &unk_1F24ED7B8;
      }

      else
      {
        sub_1AF992EA8(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
        v6 = swift_allocObject();
        *(v6 + 16) = xmmword_1AFE4C6B0;
        v21 = swift_allocObject();
        *(v21 + 16) = 0xC000000000000058;
        *(v6 + 32) = v21 | 0x8000000000000000;
        v22 = swift_allocObject();
        *(v22 + 16) = 0xC000000000000058;
        *(v6 + 40) = v22 | 0x8000000000000000;
        v23 = swift_allocObject();
        *(v23 + 16) = 0xC000000000000058;
        *(v6 + 48) = v23 | 0x8000000000000000;
        v24 = swift_allocObject();
        *(v24 + 16) = 0xC000000000000058;
        *(v6 + 56) = v24 | 0x8000000000000000;
        v8 = MEMORY[0x1E69E7CC0];
        v9 = &unk_1F24ED858;
        v10 = &unk_1F24ED828;
      }
    }

    else if (v3 == 15)
    {
      sub_1AF992EA8(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_1AFE4C620;
      v13 = swift_allocObject();
      *(v13 + 16) = 0xC000000000000058;
      *(v6 + 32) = v13 | 0x8000000000000000;
      v14 = swift_allocObject();
      *(v14 + 16) = 0xC000000000000058;
      *(v6 + 40) = v14 | 0x8000000000000000;
      v8 = MEMORY[0x1E69E7CC0];
      v9 = &unk_1F24ED6E8;
      v10 = &unk_1F24ED6B8;
    }

    else
    {
      sub_1AF992EA8(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_1AFE4C6B0;
      v17 = swift_allocObject();
      *(v17 + 16) = 0xC000000000000058;
      *(v6 + 32) = v17 | 0x8000000000000000;
      v18 = swift_allocObject();
      *(v18 + 16) = 0xC000000000000058;
      *(v6 + 40) = v18 | 0x8000000000000000;
      v19 = swift_allocObject();
      *(v19 + 16) = 0xC000000000000058;
      *(v6 + 48) = v19 | 0x8000000000000000;
      v20 = swift_allocObject();
      *(v20 + 16) = 0xC000000000000030;
      *(v6 + 56) = v20 | 0x8000000000000000;
      v8 = MEMORY[0x1E69E7CC0];
      v9 = &unk_1F24ED758;
      v10 = &unk_1F24ED728;
    }
  }

  else
  {
    v5 = MEMORY[0x1E69E6F90];
    sub_1AF992EA8(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1AFE431C0;
    v7 = swift_allocObject();
    *(v7 + 16) = 0xC000000000000058;
    *(v6 + 32) = v7 | 0x8000000000000000;
    sub_1AF992EA8(0, &unk_1EB630980, &type metadata for AnyValue, v5);
    v8 = swift_allocObject();
    *(v8 + 64) = MEMORY[0x1E69E6530];
    *(v8 + 16) = xmmword_1AFE431C0;
    *(v8 + 32) = xmmword_1AFE87170;
    v9 = &unk_1F24ED688;
    v10 = &unk_1F24ED658;
  }

  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1AFE431C0;
  result = swift_allocObject();
  *(result + 16) = 0xC000000000000058;
  *(v11 + 32) = result | 0x8000000000000000;
  *a1 = v6;
  a1[1] = v11;
  a1[2] = v10;
  a1[3] = v9;
  a1[4] = v4;
  a1[5] = v8;
  return result;
}

uint64_t sub_1AF9922A8()
{
  BYTE8(v2) = 0;
  MEMORY[0x1B2718AE0](0x3A646E696BLL, 0xE500000000000000);
  *&v2 = *(v0 + OBJC_IVAR____TtC3VFX10EasingNode_kind);
  sub_1AFDFE458();
  return *(&v2 + 1);
}

uint64_t getEnumTagSinglePayload for EasingNode.EasingKind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEE)
  {
    goto LABEL_17;
  }

  if (a2 + 18 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 18) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 18;
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

      return (*a1 | (v4 << 8)) - 18;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 18;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x13;
  v8 = v6 - 19;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for EasingNode.EasingKind(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 18 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 18) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEE)
  {
    v4 = 0;
  }

  if (a2 > 0xED)
  {
    v5 = ((a2 - 238) >> 8) + 1;
    *result = a2 + 18;
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
    *result = a2 + 18;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1AF992518()
{
  result = qword_1EB640E10;
  if (!qword_1EB640E10)
  {
    sub_1AF992EA8(255, &qword_1EB640E18, &type metadata for EasingNode.EasingKind, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable(MEMORY[0x1E69E6340], v3, v0, v1);
    atomic_store(result, &qword_1EB640E10);
  }

  return result;
}

unint64_t sub_1AF992598()
{
  result = qword_1EB640E20;
  if (!qword_1EB640E20)
  {
    result = swift_getWitnessTable(byte_1AFE88D84, &type metadata for EasingNode.EasingKind, v0, v1);
    atomic_store(result, &qword_1EB640E20);
  }

  return result;
}

uint64_t sub_1AF992630(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void), uint64_t a6)
{
  v10 = a1[3];
  v11 = a1[4];
  sub_1AF441150(a1, v10);
  v14 = *(v6 + *a4);
  v12 = a5();
  return sub_1AF974C50(&v14, v10, a6, v11, v12);
}

void *sub_1AF9926FC(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5, void *a6)
{
  sub_1AF441150(a1, a1[3]);
  a4();
  result = sub_1AF974940();
  if (!v7)
  {
    *(v6 + *a6) = v11;
  }

  return result;
}

unint64_t sub_1AF992798()
{
  result = qword_1EB6337B8;
  if (!qword_1EB6337B8)
  {
    result = swift_getWitnessTable(byte_1AFE97BF4, &type metadata for ScriptLocation.TextureType, v0, v1);
    atomic_store(result, &qword_1EB6337B8);
  }

  return result;
}

unint64_t sub_1AF9927EC()
{
  result = qword_1EB640E28;
  if (!qword_1EB640E28)
  {
    result = swift_getWitnessTable(byte_1AFE97BCC, &type metadata for ScriptLocation.TextureType, v0, v1);
    atomic_store(result, &qword_1EB640E28);
  }

  return result;
}

unint64_t sub_1AF992840(uint64_t a1)
{
  switch(*(v1 + OBJC_IVAR____TtC3VFX10EasingNode_kind))
  {
    case 1:
      return 0xD000000000000014;
    case 2:
      return 0xD000000000000016;
    case 3:
      return 0xD000000000000017;
    case 4:
    case 8:
    case 0xB:
      return 0xD000000000000018;
    case 5:
      return 0xD00000000000001ALL;
    case 6:
    case 9:
      return 0xD000000000000015;
    case 7:
      return 0xD000000000000016;
    case 0xA:
      return 0xD000000000000016;
    case 0xC:
      sub_1AF90EDE8(0xC000000000000058, &v27, 1.0);
      v11 = sub_1AF92F69C(0xC000000000000058, &v27, a1);
      v13 = v12;
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v27);
      sub_1AF90EDE8(0xC000000000000058, &v27, 2.0);
      v14 = sub_1AF92F69C(0xC000000000000058, &v27, a1);
      v16 = v15;
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v27);
      v27 = 0;
      v28 = 0xE000000000000000;
      sub_1AFDFE218();

      v27 = v11;
      v28 = v13;
      MEMORY[0x1B2718AE0](0xD00000000000001BLL, 0x80000001AFF3DD60);
      MEMORY[0x1B2718AE0](v14, v16);
      goto LABEL_13;
    case 0xD:
      sub_1AF90EDE8(0xC000000000000058, &v27, 2.0);
      v24 = sub_1AF92F69C(0xC000000000000058, &v27, a1);
      v26 = v25;
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v27);
      v27 = 0;
      v28 = 0xE000000000000000;
      sub_1AFDFE218();

      v27 = 0xD000000000000018;
      v28 = 0x80000001AFF3DD40;
      MEMORY[0x1B2718AE0](v24, v26);
LABEL_13:

      v22 = 41;
      v21 = 0xE100000000000000;
      goto LABEL_14;
    case 0xE:
      sub_1AF90EDE8(0xC000000000000058, &v27, 1.0);
      v4 = sub_1AF92F69C(0xC000000000000058, &v27, a1);
      v6 = v5;
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v27);
      sub_1AF90EDE8(0xC000000000000058, &v27, 2.0);
      v7 = sub_1AF92F69C(0xC000000000000058, &v27, a1);
      v9 = v8;
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v27);
      v27 = 0;
      v28 = 0xE000000000000000;
      sub_1AFDFE218();

      v27 = 0xD000000000000019;
      v28 = 0x80000001AFF3DD20;
      MEMORY[0x1B2718AE0](v4, v6);

      MEMORY[0x1B2718AE0](539959337, 0xE400000000000000);
      MEMORY[0x1B2718AE0](v7, v9);

      goto LABEL_15;
    case 0xF:
      sub_1AF90EDE8(0xC000000000000058, &v27, 1.0);
      v18 = sub_1AF92F69C(0xC000000000000058, &v27, a1);
      v20 = v19;
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v27);
      v27 = 0;
      v28 = 0xE000000000000000;
      sub_1AFDFE218();
      MEMORY[0x1B2718AE0](40, 0xE100000000000000);
      MEMORY[0x1B2718AE0](v18, v20);
      MEMORY[0x1B2718AE0](0xD00000000000001FLL, 0x80000001AFF3DCE0);
      MEMORY[0x1B2718AE0](v18, v20);

      v21 = 0x80000001AFF3DD00;
      v22 = 0xD000000000000016;
LABEL_14:
      MEMORY[0x1B2718AE0](v22, v21);
LABEL_15:
      result = v27;
      break;
    case 0x10:
      result = 0xD000000000000036;
      break;
    case 0x12:
      result = 0xD000000000000031;
      break;
    default:
      result = 0xD000000000000013;
      break;
  }

  return result;
}

unint64_t sub_1AF992D58()
{
  result = qword_1EB640E30;
  if (!qword_1EB640E30)
  {
    result = swift_getWitnessTable(byte_1AFE88CAC, &type metadata for EasingNode.EasingKind, v0, v1);
    atomic_store(result, &qword_1EB640E30);
  }

  return result;
}

unint64_t sub_1AF992DAC()
{
  result = qword_1EB640E38;
  if (!qword_1EB640E38)
  {
    result = swift_getWitnessTable(byte_1AFE88C84, &type metadata for EasingNode.EasingKind, v0, v1);
    atomic_store(result, &qword_1EB640E38);
  }

  return result;
}

unint64_t sub_1AF992E00(uint64_t a1, uint64_t a2)
{
  v2 = sub_1AFDFF118();

  if (v2 >= 0x13)
  {
    return 19;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1AF992E54()
{
  result = qword_1EB640E40;
  if (!qword_1EB640E40)
  {
    result = swift_getWitnessTable(a5_25, &type metadata for EasingNode.EasingKind, v0, v1);
    atomic_store(result, &qword_1EB640E40);
  }

  return result;
}

void sub_1AF992EA8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1AF992FB8@<X0>(uint64_t *a1@<X8>)
{
  sub_1AF993970();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1AFE4C680;
  v3 = swift_allocObject();
  *(v3 + 16) = 0xC000000000000010;
  *(v2 + 32) = v3 | 0x8000000000000000;
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v2 + 40) = v4 | 0x4000000000000000;
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v2 + 48) = v5 | 0x4000000000000000;
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1AFE431C0;
  result = swift_allocObject();
  *(result + 16) = 0;
  *(v6 + 32) = result | 0x4000000000000000;
  *a1 = v2;
  a1[1] = v6;
  a1[2] = &unk_1F24EDDA8;
  a1[3] = &unk_1F24EDD58;
  v8 = MEMORY[0x1E69E7CC0];
  a1[4] = MEMORY[0x1E69E7CC0];
  a1[5] = v8;
  return result;
}

double sub_1AF993118@<D0>(uint64_t *a1@<X8>)
{
  sub_1AF993970();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1AFE431C0;
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v3 + 32) = v4 | 0x4000000000000000;
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1AFE431C0;
  v6 = swift_allocObject();
  *(v6 + 16) = 0xC000000000000010;
  *(v5 + 32) = v6 | 0x8000000000000000;
  v7 = (*(*v1 + 256))();
  v8 = swift_allocObject();
  *&result = 2;
  *(v8 + 16) = xmmword_1AFE4C620;
  *(v8 + 32) = v7;
  *(v8 + 40) = 0xA000000000000000;
  *a1 = v3;
  a1[1] = v5;
  v10 = MEMORY[0x1E69E7CC0];
  a1[2] = v8;
  a1[3] = v10;
  a1[4] = v10;
  a1[5] = v10;
  return result;
}

unint64_t sub_1AF993254()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0xC000000000000010;
  return v0 | 0x8000000000000000;
}

__n128 sub_1AF9933C8@<Q0>(uint64_t *a1@<X8>)
{
  sub_1AF993970();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1AFE4C620;
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v3 + 32) = v4 | 0x4000000000000000;
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v3 + 40) = v5 | 0x4000000000000000;
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1AFE431C0;
  v7 = swift_allocObject();
  *(v7 + 16) = 0xC000000000000010;
  *(v6 + 32) = v7 | 0x8000000000000000;
  v8 = (*(*v1 + 256))();
  v9 = swift_allocObject();
  result = xmmword_1AFE4C620;
  *(v9 + 16) = xmmword_1AFE4C620;
  *(v9 + 32) = v8;
  *(v9 + 40) = 0xA000000000000000;
  *a1 = v3;
  a1[1] = v6;
  v11 = MEMORY[0x1E69E7CC0];
  a1[2] = v9;
  a1[3] = v11;
  a1[4] = v11;
  a1[5] = v11;
  return result;
}

uint64_t sub_1AF9938B0(unsigned __int8 *a1, uint64_t (*a2)(uint64_t, unint64_t, uint64_t, unint64_t, unint64_t, uint64_t))
{
  v4 = *(v2 + 24);
  v5 = *(v4 + 32);
  v6 = *a1;
  sub_1AF448650(v4, *(v2 + 32));
  sub_1AF442064(v5);

  v7 = a2(12325, 0xE200000000000000, 12581, 0xE200000000000000, v5, v6);
  sub_1AF445BE4(v5);
  return v7;
}

void sub_1AF993970()
{
  if (!qword_1EB6309E8)
  {
    v0 = sub_1AFDFEA18();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB6309E8);
    }
  }
}

uint64_t sub_1AF9939C8(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  sub_1AFDFD068();
  return sub_1AFDFD1C8();
}

uint64_t sub_1AF993A48(unsigned __int8 *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, unsigned __int8 a8)
{
  v9 = *(v8 + 24);
  v10 = *(v9 + 16);
  v11 = *a1;
  if (v11 == 2)
  {
    if (a5)
    {
      v21 = a5;
    }

    else
    {
      if (a3)
      {
        a4 = a2;
      }

      else
      {
        a4 = 0;
      }

      if (a3)
      {
        v21 = a3;
      }

      else
      {
        v21 = 0xE000000000000000;
      }
    }

    v17 = v21;
    v16 = a4;
    if (v10 == 1)
    {
      goto LABEL_9;
    }

    goto LABEL_27;
  }

  if (v11 != 3)
  {
    goto LABEL_7;
  }

  v13 = a6;
  if (a8 <= 1u)
  {
    if (a8)
    {
      v26 = *(v9 + 32);
      sub_1AF448650(*(v8 + 24), *(v8 + 32));
      sub_1AF442064(v26);

      v27 = sub_1AF993E8C(v13, a7, v26, 3);
      v29 = v28;
      sub_1AF445BE4(v26);
      switch(v10)
      {
        case 1:
          v30[0] = v27;
          v30[1] = v29;
          goto LABEL_10;
        case 2:
          v30[0] = v27;
          v30[1] = v29;
          goto LABEL_29;
        case 3:
          v30[0] = v27;
          v30[1] = v29;
          goto LABEL_32;
      }
    }

    else
    {
      switch(v10)
      {
        case 1:
          v30[0] = a6;
          v30[1] = a7;
          sub_1AF99B380(a6, a7, 0);
          goto LABEL_10;
        case 2:
          v30[0] = a6;
          v30[1] = a7;
          sub_1AF99B380(a6, a7, 0);
LABEL_29:
          v18 = 0x293125202C302528;
          v19 = 0xE800000000000000;
          goto LABEL_33;
        case 3:
          v30[0] = a6;
          v30[1] = a7;
          sub_1AF99B380(a6, a7, 0);
          v18 = 0x2C3125202C302528;
          v19 = 0xEC00000029332520;
          goto LABEL_33;
      }
    }

    while (1)
    {
LABEL_52:
      sub_1AFDFE518();
      __break(1u);
    }
  }

  if (a8 == 2)
  {
    v24 = *(v9 + 32);
    sub_1AF448650(*(v8 + 24), *(v8 + 32));
    sub_1AF442064(v24);

    if (v24 >> 61 == 1)
    {
      v25 = *((v24 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      sub_1AF445BE4(v24);
      if (v25 >> 61 != 1)
      {
        if (v10 == 2)
        {
          sub_1AFDFE218();

          v30[0] = 0xD000000000000010;
          v30[1] = 0x80000001AFF3F3D0;
          MEMORY[0x1B2718AE0](v13, a7);
          v18 = 0x695B3125202C7828;
          v19 = 0xEB0000000029295DLL;
          goto LABEL_33;
        }

        if (v10 == 1)
        {
          sub_1AFDFE218();

          strcpy(v30, "%0.map(x => ");
          BYTE5(v30[1]) = 0;
          HIWORD(v30[1]) = -5120;
          MEMORY[0x1B2718AE0](v13, a7);
          v18 = 690583592;
          goto LABEL_11;
        }

        goto LABEL_52;
      }
    }

    else
    {
      sub_1AF445BE4(v24);
    }

    return sub_1AF993A48(a1, 0, 0, 0, 0, v13, a7, 0);
  }

  if (a8 != 3)
  {
LABEL_7:
    if (a3)
    {

      v16 = a2;
      v17 = a3;
      if (v10 == 1)
      {
LABEL_9:
        v30[0] = v16;
        v30[1] = v17;
LABEL_10:
        v18 = 691021096;
LABEL_11:
        v19 = 0xE400000000000000;
LABEL_33:
        MEMORY[0x1B2718AE0](v18, v19);
        return v30[0];
      }
    }

    else
    {
      v16 = 0;
      v17 = 0xE000000000000000;
      if (v10 == 1)
      {
        goto LABEL_9;
      }
    }

LABEL_27:
    if (v10 == 2)
    {
      v30[0] = v16;
      v30[1] = v17;
      goto LABEL_29;
    }

    if (v10 == 3)
    {
      v30[0] = v16;
      v30[1] = v17;
LABEL_32:
      v18 = 0x2C3125202C302528;
      v19 = 0xEC00000029322520;
      goto LABEL_33;
    }

    goto LABEL_52;
  }

  sub_1AF99B368(a6, a7, 3u);
  return v13;
}

uint64_t sub_1AF993E8C(uint64_t a1, unint64_t a2, unint64_t a3, char a4)
{
  v5 = a1;
  if (a4 == 3 && a3 >> 61 == 1)
  {
    v6 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    if (v6 >> 61 == 1)
    {

      sub_1AF9939C8(v5, a2);
      if (v7)
      {
        v8 = sub_1AFDFCD58();

        if (v8)
        {
          MEMORY[0x1B2718AE0](95, 0xE100000000000000);
          v5 = a1;
        }
      }

      v18 = sub_1AFDFEA08();
      v20 = v9;
      MEMORY[0x1B2718AE0](120, 0xE100000000000000);

      v10 = sub_1AFDFEA08();
      MEMORY[0x1B2718AE0](v10);

      v11 = v18;
      v19 = v5;

      MEMORY[0x1B2718AE0](v11, v20);
    }

    else
    {

      sub_1AF442064(v6);
      sub_1AF9939C8(v5, a2);
      if (v12)
      {
        v13 = sub_1AFDFCD58();

        if (v13)
        {
          MEMORY[0x1B2718AE0](95, 0xE100000000000000);
          v5 = a1;
        }
      }

      v14 = sub_1AFDFEA08();
      v16 = v15;
      v19 = v5;

      MEMORY[0x1B2718AE0](v14, v16);

      sub_1AF445BE4(v6);
    }

    return v19;
  }

  else
  {
  }

  return v5;
}

uint64_t sub_1AF99418C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 256);
  v5 = v4();
  if (v5 >> 61 == 4)
  {
    v6 = *((v5 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v7 = v5;
    sub_1AF442064(v6);
    sub_1AF441114(v7);
    sub_1AF99B878(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1AFE4C620;
    v9 = swift_allocObject();
    *(v9 + 16) = v6;
    *(v8 + 32) = v9 | 0x8000000000000000;
    v10 = swift_allocObject();
    *(v10 + 16) = v6;
    *(v8 + 40) = v10 | 0x8000000000000000;
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1AFE431C0;
    v12 = swift_allocObject();
    *(v12 + 16) = v6;
    *(v11 + 32) = v12 | 0x8000000000000000;
    sub_1AF442064(v6);
    sub_1AF442064(v6);
    v13 = &unk_1F24F2428;
  }

  else
  {
    sub_1AF441114(v5);
    sub_1AF99B878(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1AFE4C620;
    v14 = swift_allocObject();
    *(v14 + 16) = 0;
    *(v8 + 32) = v14 | 0x4000000000000000;
    v15 = swift_allocObject();
    *(v15 + 16) = 0;
    *(v8 + 40) = v15 | 0x4000000000000000;
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1AFE431C0;
    v16 = swift_allocObject();
    *(v16 + 16) = 0;
    *(v11 + 32) = v16 | 0x4000000000000000;
    v17 = v4();
    v13 = swift_allocObject();
    v13[1] = xmmword_1AFE4C620;
    *(v13 + 4) = v17;
    *(v13 + 5) = 0xA000000000000000;
  }

  sub_1AF99B878(0, &unk_1EB630980, &type metadata for AnyValue, MEMORY[0x1E69E6F90]);
  v18 = swift_allocObject();
  *(v18 + 64) = MEMORY[0x1E69E6530];
  *(v18 + 16) = xmmword_1AFE4C620;
  *(v18 + 32) = xmmword_1AFE87170;
  (*(v3 + 264))();
  v19 = MEMORY[0x1E69E7CC0];

  *a1 = v8;
  a1[1] = v11;
  a1[2] = v13;
  a1[3] = v19;
  a1[4] = v19;
  a1[5] = v18;
  return result;
}

double sub_1AF9944C8@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = MEMORY[0x1E69E6530];
  result = -2.0;
  *a1 = xmmword_1AFE87170;
  return result;
}

void sub_1AF99462C(void *a1@<X8>)
{
  a1[4] = MEMORY[0x1E69E63B0];
  *a1 = 0xC000000000000068;
  a1[1] = 0x3FF0000000000000;
}

uint64_t sub_1AF99464C(unsigned __int8 *a1)
{
  v3 = *(v1 + 24);
  v4 = *(v3 + 32);
  sub_1AF448650(v3, *(v1 + 32));
  sub_1AF442064(v4);

  v5 = *a1;
  sub_1AF90EDE8(v4, &v11, 0.0);
  v6 = sub_1AF92F69C(v4, &v11, v5);
  v8 = v7;
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v11);
  if (v4 >> 61 == 1 && *((v4 & 0x1FFFFFFFFFFFFFFFLL) + 0x18) >> 61 != 1)
  {
    if (v5 == 3)
    {

      v11 = 7760228;
      v12 = 0xE300000000000000;
      v10 = sub_1AFDFEA08();
      MEMORY[0x1B2718AE0](v10);

      MEMORY[0x1B2718AE0](0x293125202C302528, 0xE800000000000000);
    }

    else
    {
      v11 = 0;
      v12 = 0xE000000000000000;
      sub_1AFDFE218();

      v11 = 0x656C65735F786676;
      v12 = 0xEB00000000287463;
      MEMORY[0x1B2718AE0](v6, v8);
      MEMORY[0x1B2718AE0](0xD000000000000011, 0x80000001AFF3FEB0);
      MEMORY[0x1B2718AE0](v6, v8);

      MEMORY[0x1B2718AE0](41, 0xE100000000000000);
    }
  }

  else
  {
    v11 = 0;
    v12 = 0xE000000000000000;
    sub_1AFDFE218();

    v11 = 0x203D2120312528;
    v12 = 0xE700000000000000;
    MEMORY[0x1B2718AE0](v6, v8);
    MEMORY[0x1B2718AE0](0x2F203025203F2029, 0xEE00203A20312520);
    MEMORY[0x1B2718AE0](v6, v8);
  }

  sub_1AF445BE4(v4);
  return v11;
}

uint64_t sub_1AF9948E4(unsigned __int8 *a1)
{
  v3 = *(*(v1 + 24) + 32);
  sub_1AF448650(*(v1 + 24), *(v1 + 32));
  sub_1AF442064(v3);

  v4 = *a1;
  if (v4 == 3)
  {
    v5 = sub_1AF993A48(a1, 0, 0, 0, 0, 0xD000000000000014, 0x80000001AFF3FE90, 2u);
    sub_1AF445BE4(v3);
    return v5;
  }

  sub_1AF90EDE8(v3, &v14, 0.0);
  v7 = sub_1AF92F69C(v3, &v14, v4);
  v9 = v8;
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v14);
  if (v4 == 2)
  {
    v10 = 0xD000000000000011;
  }

  else
  {
    v10 = 0x6D65725F67745F5FLL;
  }

  if (v4 == 2)
  {
    v11 = 0x80000001AFF3FE70;
  }

  else
  {
    v11 = 0xEE007265646E6961;
  }

  if (v3 >> 61 == 1 && *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x18) >> 61 != 1)
  {
    v14 = 0;
    v15 = 0xE000000000000000;
    sub_1AFDFE218();

    v14 = 0x656C65735F786676;
    v15 = 0xEB00000000287463;
    MEMORY[0x1B2718AE0](v7, v9);
    MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
    MEMORY[0x1B2718AE0](v10, v11);

    MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF3FE50);
    MEMORY[0x1B2718AE0](v7, v9);

    v12 = 41;
    v13 = 0xE100000000000000;
    goto LABEL_15;
  }

  if ((sub_1AF90F890(v3, 0xC000000000000058) & 1) == 0)
  {

    v14 = 0;
    v15 = 0xE000000000000000;
    sub_1AFDFE218();

    v14 = 0x203D3D203125;
    v15 = 0xE600000000000000;
    MEMORY[0x1B2718AE0](v7, v9);
    MEMORY[0x1B2718AE0](2113312, 0xE300000000000000);
    MEMORY[0x1B2718AE0](v7, v9);

    v12 = 0x2025203025203A20;
    v13 = 0xEA00000000003125;
LABEL_15:
    MEMORY[0x1B2718AE0](v12, v13);
    goto LABEL_16;
  }

  v14 = 0;
  v15 = 0xE000000000000000;
  sub_1AFDFE218();

  v14 = 0x203D2120312528;
  v15 = 0xE700000000000000;
  MEMORY[0x1B2718AE0](v7, v9);
  MEMORY[0x1B2718AE0](541007913, 0xE400000000000000);
  MEMORY[0x1B2718AE0](v10, v11);

  MEMORY[0x1B2718AE0](0x293125202C302528, 0xEB00000000203A20);
  MEMORY[0x1B2718AE0](v7, v9);

LABEL_16:
  sub_1AF445BE4(v3);
  return v14;
}

unint64_t sub_1AF994C94(_BYTE *a1)
{
  if (*a1 == 3)
  {
    return 0xD00000000000001BLL;
  }

  else
  {
    return 0xD000000000000017;
  }
}

uint64_t sub_1AF994D14(unsigned __int8 *a1)
{
  v2 = *a1;
  if (v2 == 3)
  {
    return sub_1AF993A48(a1, 0, 0, 0, 0, 0xD00000000000001ALL, 0x80000001AFF3FDF0, 2u);
  }

  v4 = *(v1 + 24);
  v5 = *(v4 + 32);
  sub_1AF448650(v4, *(v1 + 32));
  sub_1AF442064(v5);

  sub_1AF90EDE8(v5, &v9, 0.0);
  v6 = sub_1AF92F69C(v5, &v9, v2);
  v8 = v7;
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v9);
  if (v2 == 2)
  {

    sub_1AF445BE4(v5);
    return 0x2C302528646F6D66;
  }

  else if (v5 >> 61 == 1 && *((v5 & 0x1FFFFFFFFFFFFFFFLL) + 0x18) >> 61 != 1)
  {
    v9 = 0;
    v10 = 0xE000000000000000;
    sub_1AFDFE218();

    v9 = 0x656C65735F786676;
    v10 = 0xEB00000000287463;
    MEMORY[0x1B2718AE0](v6, v8);

    MEMORY[0x1B2718AE0](0xD000000000000015, 0x80000001AFF3FDD0);
    MEMORY[0x1B2718AE0](0x6E73695F67745F5FLL, 0xED00006C616D726FLL);
    MEMORY[0x1B2718AE0](0x2929312528, 0xE500000000000000);
    sub_1AF445BE4(v5);
    return v9;
  }

  else
  {

    sub_1AF445BE4(v5);
    return 0xD000000000000011;
  }
}

uint64_t sub_1AF995264@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_1AF99B878(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1AFE4C620;
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v6 + 32) = v7 | 0x4000000000000000;
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v6 + 40) = v8 | 0x4000000000000000;
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1AFE431C0;
  result = swift_allocObject();
  *(result + 16) = a1;
  *(v9 + 32) = result | 0x8000000000000000;
  *a3 = v6;
  a3[1] = v9;
  v11 = MEMORY[0x1E69E7CC0];
  a3[2] = a2;
  a3[3] = v11;
  a3[4] = v11;
  a3[5] = v11;
  return result;
}

unint64_t sub_1AF99549C()
{
  v0 = swift_allocObject();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1AFE4C430;
  *(v0 + 16) = v1 | 0x2000000000000000;
  return v0 | 0x8000000000000000;
}

double sub_1AF99569C@<D0>(uint64_t *a1@<X8>)
{
  sub_1AF99B878(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1AFE4C680;
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v3 + 32) = v4 | 0x4000000000000000;
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v3 + 40) = v5 | 0x4000000000000000;
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v3 + 48) = v6 | 0x4000000000000000;
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1AFE431C0;
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v7 + 32) = v8 | 0x4000000000000000;
  v9 = (*(*v1 + 256))();
  v10 = swift_allocObject();
  *&result = 2;
  *(v10 + 16) = xmmword_1AFE4C620;
  *(v10 + 32) = v9;
  *(v10 + 40) = 0xA000000000000000;
  *a1 = v3;
  a1[1] = v7;
  v12 = MEMORY[0x1E69E7CC0];
  a1[2] = v10;
  a1[3] = v12;
  a1[4] = v12;
  a1[5] = v12;
  return result;
}

uint64_t sub_1AF99585C(unsigned __int8 *a1)
{
  v2 = *a1;
  if (v2 < 2)
  {
    return 0xD00000000000001CLL;
  }

  if (v2 == 2)
  {
    return 0xD000000000000010;
  }

  v4 = *(v1 + 24);
  v5 = *(v4 + 32);
  sub_1AF448650(v4, *(v1 + 32));
  sub_1AF442064(v5);

  v6 = sub_1AF993E8C(0x6E696D5F786676, 0xE700000000000000, v5, 3);
  v8 = v7;
  sub_1AF445BE4(v5);
  sub_1AFDFE218();

  MEMORY[0x1B2718AE0](0x202C302528, 0xE500000000000000);
  MEMORY[0x1B2718AE0](v6, v8);

  MEMORY[0x1B2718AE0](0x293225202C312528, 0xE900000000000029);
  return v6;
}

uint64_t sub_1AF9959E8(unsigned __int8 *a1)
{
  v2 = *a1;
  if (v2 < 2)
  {
    return 0xD00000000000001CLL;
  }

  if (v2 == 2)
  {
    return 0xD000000000000010;
  }

  v4 = *(v1 + 24);
  v5 = *(v4 + 32);
  sub_1AF448650(v4, *(v1 + 32));
  sub_1AF442064(v5);

  v6 = sub_1AF993E8C(0x78616D5F786676, 0xE700000000000000, v5, 3);
  v8 = v7;
  sub_1AF445BE4(v5);
  sub_1AFDFE218();

  MEMORY[0x1B2718AE0](0x202C302528, 0xE500000000000000);
  MEMORY[0x1B2718AE0](v6, v8);

  MEMORY[0x1B2718AE0](0x293225202C312528, 0xE900000000000029);
  return v6;
}

double sub_1AF995B80@<D0>(uint64_t a1@<X8>)
{
  sub_1AF99569C(&v5);
  v2 = v6;
  v9 = v7;
  sub_1AF91219C(&v9);
  result = *&v5;
  v4 = v8;
  *a1 = v5;
  *(a1 + 16) = v2;
  *(a1 + 24) = &unk_1F24EF180;
  *(a1 + 32) = v4;
  return result;
}

uint64_t sub_1AF995BDC(char *a1)
{
  v2 = *(v1 + 24);
  v3 = *(v2 + 32);
  v4 = *a1;
  sub_1AF448650(v2, *(v1 + 32));
  sub_1AF442064(v3);

  v5 = sub_1AF993E8C(0x6F6F6D735F786676, 0xEE00706574736874, v3, v4);
  sub_1AF445BE4(v3);
  MEMORY[0x1B2718AE0](0x2C3225202C312528, 0xEC00000029302520);
  return v5;
}

_OWORD *sub_1AF995DBC@<X0>(uint64_t *a1@<X8>)
{
  v3 = (*v1 + 256);
  v4 = *v3;
  v5 = (*v3)();
  if (v5 >> 61 == 4)
  {
    v6 = *((v5 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v7 = v5;
    sub_1AF442064(v6);
    sub_1AF441114(v7);
    sub_1AF99B878(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1AFE431C0;
    v9 = swift_allocObject();
    *(v9 + 16) = v6;
    *(v8 + 32) = v9 | 0x8000000000000000;
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1AFE431C0;
    v11 = swift_allocObject();
    *(v11 + 16) = v6;
    *(v10 + 32) = v11 | 0x8000000000000000;
    sub_1AF442064(v6);
    result = &unk_1F24F2358;
  }

  else
  {
    sub_1AF441114(v5);
    sub_1AF99B878(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1AFE431C0;
    v13 = swift_allocObject();
    *(v13 + 16) = 0;
    *(v8 + 32) = v13 | 0x4000000000000000;
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1AFE431C0;
    v14 = swift_allocObject();
    *(v14 + 16) = 0;
    *(v10 + 32) = v14 | 0x4000000000000000;
    v15 = v4();
    result = swift_allocObject();
    result[1] = xmmword_1AFE4C620;
    *(result + 4) = v15;
    *(result + 5) = 0xA000000000000000;
  }

  *a1 = v8;
  a1[1] = v10;
  v16 = MEMORY[0x1E69E7CC0];
  a1[2] = result;
  a1[3] = v16;
  a1[4] = v16;
  a1[5] = v16;
  return result;
}

unint64_t sub_1AF99604C(unsigned __int8 *a1)
{
  v7[0] = 0;
  v7[1] = 0xE000000000000000;
  sub_1AFDFE218();

  v8 = 0xD000000000000010;
  v9 = 0x80000001AFF3FC10;
  v2 = *a1;
  v7[3] = MEMORY[0x1E69E6448];
  LODWORD(v7[0]) = 1127481344;
  v3 = sub_1AF92F69C(0xC000000000000058, v7, v2);
  v5 = v4;
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v7);
  MEMORY[0x1B2718AE0](v3, v5);

  return v8;
}

unint64_t sub_1AF99614C()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0xC000000000000058;
  return v0 | 0x8000000000000000;
}

unint64_t sub_1AF996184(unsigned __int8 *a1)
{
  v7[0] = 0;
  v7[1] = 0xE000000000000000;
  sub_1AFDFE218();

  v8 = 0xD000000000000010;
  v9 = 0x80000001AFF3FBF0;
  v2 = *a1;
  v7[3] = MEMORY[0x1E69E6448];
  LODWORD(v7[0]) = 1127481344;
  v3 = sub_1AF92F69C(0xC000000000000058, v7, v2);
  v5 = v4;
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v7);
  MEMORY[0x1B2718AE0](v3, v5);

  return v8;
}

uint64_t sub_1AF996354(unsigned __int8 *a1)
{
  v3 = *(v1 + 24);
  v4 = *(v3 + 32);
  sub_1AF448650(v3, *(v1 + 32));
  sub_1AF442064(v4);

  v5 = *a1;
  sub_1AF90EDE8(v4, &v12, 1.0);
  v6 = sub_1AF92F69C(v4, &v12, v5);
  v8 = v7;
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v12);
  if (v5 == 3 && (v4 & 0xE000000000000000) == 0x2000000000000000 && *((v4 & 0x1FFFFFFFFFFFFFFFLL) + 0x18) >> 61 != 1)
  {
    v12 = sub_1AF993E8C(6452595, 0xE300000000000000, v4, 3);
    v13 = v10;
    MEMORY[0x1B2718AE0](40, 0xE100000000000000);
    MEMORY[0x1B2718AE0](v6, v8);

    v9 = 0x293025202CLL;
  }

  else
  {
    v12 = v6;
    v13 = v8;
    v9 = 0x3025202D20;
  }

  MEMORY[0x1B2718AE0](v9, 0xE500000000000000);
  sub_1AF445BE4(v4);
  return v12;
}

uint64_t sub_1AF996C54@<X0>(void *a1@<X8>)
{
  sub_1AF99B878(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1AFE431C0;
  result = swift_allocObject();
  *(result + 16) = 0xC000000000000058;
  *(v2 + 32) = result | 0x8000000000000000;
  *a1 = &unk_1F24ED8B8;
  a1[1] = v2;
  v4 = MEMORY[0x1E69E7CC0];
  a1[2] = &unk_1F24ED8E0;
  a1[3] = v4;
  a1[4] = v4;
  a1[5] = v4;
  return result;
}

uint64_t sub_1AF996D08(char *a1)
{
  v2 = v1;
  v4 = *(v1 + 24);
  v5 = *(v4 + 32);
  v6 = *a1;
  sub_1AF448650(v4, *(v2 + 32));
  sub_1AF442064(v5);

  v7 = sub_1AF993E8C(0x746F645F786676, 0xE700000000000000, v5, v6);
  v9 = v8;
  sub_1AF445BE4(v5);
  sub_1AFDFE218();

  strcpy(v12, "(v=>Math.sqrt(");
  HIBYTE(v12[1]) = -18;
  MEMORY[0x1B2718AE0](v7, v9);

  MEMORY[0x1B2718AE0](0x292929762C7628, 0xE700000000000000);
  v10 = sub_1AF993A48(a1, 0x6E656C5F646D6973, 0xEB00000000687467, 0x6874676E656CLL, 0xE600000000000000, v12[0], v12[1], 0);

  return v10;
}

uint64_t sub_1AF996FB4(unsigned __int8 *a1)
{
  v3 = 0xE900000000000070;
  v4 = 0x6D616C635F786676;
  v5 = *(v1 + 24);
  v6 = *(v5 + 32);
  sub_1AF448650(v5, *(v1 + 32));
  sub_1AF442064(v6);

  v7 = *a1;
  sub_1AF90EDE8(v6, v16, 1.0);
  v8 = sub_1AF92F69C(v6, v16, v7);
  v10 = v9;
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v16);
  sub_1AF90EDE8(v6, v16, -1.0);
  v11 = sub_1AF92F69C(v6, v16, v7);
  v13 = v12;
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v16);
  if (v7 == 3)
  {
    v4 = sub_1AF993E8C(0x6D616C635F786676, 0xE900000000000070, v6, 3);
    v3 = v14;
  }

  v16[0] = v4;
  v16[1] = v3;
  MEMORY[0x1B2718AE0](0x202C302528, 0xE500000000000000);
  MEMORY[0x1B2718AE0](v11, v13);

  MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
  MEMORY[0x1B2718AE0](v8, v10);

  MEMORY[0x1B2718AE0](41, 0xE100000000000000);
  sub_1AF445BE4(v6);
  return v16[0];
}

unint64_t sub_1AF997264()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0xC000000000000028;
  return v0 | 0x8000000000000000;
}

__n128 sub_1AF99743C@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, __n128 a3@<Q0>)
{
  sub_1AF99B878(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1AFE431C0;
  v6 = swift_allocObject();
  *(v6 + 16) = 0xC000000000000028;
  *(v5 + 32) = v6 | 0x8000000000000000;
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1AFE431C0;
  v8 = swift_allocObject();
  v9 = swift_allocObject();
  result = a3;
  *(v9 + 16) = a3;
  *(v8 + 16) = v9 | 0x2000000000000000;
  *(v7 + 32) = v8 | 0x8000000000000000;
  *a2 = v5;
  a2[1] = v7;
  v11 = MEMORY[0x1E69E7CC0];
  a2[2] = a1;
  a2[3] = v11;
  a2[4] = v11;
  a2[5] = v11;
  return result;
}

unint64_t sub_1AF9976C4(_BYTE *a1)
{
  if (*a1 == 3)
  {
    return 0xD00000000000002ELL;
  }

  else
  {
    return 0xD000000000000024;
  }
}

uint64_t sub_1AF997754@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1AF99B878(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AFE431C0;
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v4 + 32) = v5 | 0x4000000000000000;
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1AFE431C0;
  result = swift_allocObject();
  *(result + 16) = 0xC000000000000058;
  *(v6 + 32) = result | 0x8000000000000000;
  *a2 = v4;
  a2[1] = v6;
  v8 = MEMORY[0x1E69E7CC0];
  a2[2] = a1;
  a2[3] = v8;
  a2[4] = v8;
  a2[5] = v8;
  return result;
}

__n128 sub_1AF997974@<Q0>(uint64_t *a1@<X8>)
{
  sub_1AF99B878(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1AFE431C0;
  v3 = swift_allocObject();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AFE4C430;
  *(v3 + 16) = v4 | 0x2000000000000000;
  *(v2 + 32) = v3 | 0x8000000000000000;
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1AFE4C620;
  v6 = swift_allocObject();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1AFE4C430;
  *(v6 + 16) = v7 | 0x2000000000000000;
  *(v5 + 32) = v6 | 0x8000000000000000;
  v8 = swift_allocObject();
  v9 = swift_allocObject();
  result = xmmword_1AFE4C430;
  *(v9 + 16) = xmmword_1AFE4C430;
  *(v8 + 16) = v9 | 0x2000000000000000;
  *(v5 + 40) = v8 | 0x8000000000000000;
  *a1 = v2;
  a1[1] = v5;
  v11 = MEMORY[0x1E69E7CC0];
  a1[2] = &unk_1F24F1288;
  a1[3] = v11;
  a1[4] = v11;
  a1[5] = v11;
  return result;
}

uint64_t sub_1AF997B00(unsigned __int8 *a1)
{
  v1 = sub_1AF997B4C(*a1);
  v2 = sub_1AFA5413C(v1);

  return v2;
}

uint64_t sub_1AF997B4C(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1AFE4C430;
  v3 = v2 | 0x2000000000000000;
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AFE4C430;
  sub_1AF90EDE8(v4 | 0x2000000000000000, &v43, 0.0);
  v5 = sub_1AF92F69C(v4 | 0x2000000000000000, &v43, a1);
  v7 = v6;

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v43);
  v8 = sub_1AF937FF8(a1, v3);
  if ((~v8 & 0xF000000000000007) == 0)
  {

    v8 = v3;
  }

  if (a1 == 3)
  {
    v43 = 0x3D2061242074656CLL;
    v44 = 0xE900000000000020;
  }

  else
  {
    v43 = 0;
    v44 = 0xE000000000000000;
    v9 = sub_1AF937FF8(a1, v8);
    if ((~v9 & 0xF000000000000007) == 0)
    {
      sub_1AF442064(v8);
      v9 = v8;
    }

    v10 = sub_1AF94B594(a1, v9);
    v12 = v11;
    sub_1AF445BE4(v9);
    MEMORY[0x1B2718AE0](v10, v12);

    MEMORY[0x1B2718AE0](32, 0xE100000000000000);
    MEMORY[0x1B2718AE0](24868, 0xE200000000000000);
    MEMORY[0x1B2718AE0](2112800, 0xE300000000000000);
  }

  MEMORY[0x1B2718AE0](v5, v7);
  MEMORY[0x1B2718AE0](59, 0xE100000000000000);

  sub_1AF445BE4(v8);

  v13 = v43;
  v14 = v44;
  sub_1AF99B878(0, &qword_1EB638390, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  *(inited + 32) = v13;
  *(inited + 40) = v14;
  *(inited + 48) = 0;
  *(inited + 56) = 0;
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1AFE4C430;
  v17 = v16 | 0x2000000000000000;
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1AFE4C430;
  sub_1AF90EDE8(v18 | 0x2000000000000000, &v43, 0.0);
  v19 = sub_1AF92F69C(v18 | 0x2000000000000000, &v43, a1);
  v21 = v20;

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v43);
  v22 = sub_1AF937FF8(a1, v17);
  if ((~v22 & 0xF000000000000007) == 0)
  {

    v22 = v17;
  }

  if (a1 == 3)
  {
    v43 = 0x3D2062242074656CLL;
    v44 = 0xE900000000000020;
  }

  else
  {
    v43 = 0;
    v44 = 0xE000000000000000;
    v23 = sub_1AF937FF8(a1, v22);
    if ((~v23 & 0xF000000000000007) == 0)
    {
      sub_1AF442064(v22);
      v23 = v22;
    }

    v24 = sub_1AF94B594(a1, v23);
    v26 = v25;
    sub_1AF445BE4(v23);
    MEMORY[0x1B2718AE0](v24, v26);

    MEMORY[0x1B2718AE0](32, 0xE100000000000000);
    MEMORY[0x1B2718AE0](25124, 0xE200000000000000);
    MEMORY[0x1B2718AE0](2112800, 0xE300000000000000);
  }

  MEMORY[0x1B2718AE0](v19, v21);
  MEMORY[0x1B2718AE0](59, 0xE100000000000000);

  sub_1AF445BE4(v22);

  v27 = v43;
  v28 = v44;
  v29 = swift_initStackObject();
  *(v29 + 16) = xmmword_1AFE431C0;
  *(v29 + 32) = v27;
  *(v29 + 40) = v28;
  *(v29 + 48) = 0;
  *(v29 + 56) = 0;
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1AFE4C430;
  v31 = sub_1AF9316FC(3174949, 0xE300000000000000, v30 | 0x2000000000000000, 24868, 0xE200000000000000, a1);
  v33 = v32;

  v34 = swift_initStackObject();
  *(v34 + 16) = xmmword_1AFE431C0;
  *(v34 + 32) = v31;
  *(v34 + 40) = v33;
  *(v34 + 48) = 0;
  *(v34 + 56) = 0;
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_1AFE4C430;
  v36 = sub_1AF9316FC(3240485, 0xE300000000000000, v35 | 0x2000000000000000, 25124, 0xE200000000000000, a1);
  v38 = v37;

  v39 = swift_initStackObject();
  *(v39 + 16) = xmmword_1AFE431C0;
  *(v39 + 32) = v36;
  *(v39 + 40) = v38;
  sub_1AF441DD8(0);
  *(v39 + 48) = 0;
  *(v39 + 56) = 0;
  v40 = swift_initStackObject();
  *(v40 + 16) = xmmword_1AFE4C6A0;
  *(v40 + 32) = inited;
  *(v40 + 40) = v29;
  *(v40 + 48) = &unk_1F2505F80;
  *(v40 + 56) = v34;
  *(v40 + 64) = v39;
  v41 = sub_1AFA56CA0();
  swift_setDeallocating();
  sub_1AF99B878(0, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
  swift_arrayDestroy();
  return v41;
}

uint64_t sub_1AF9980E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_1AF99B878(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1AFE4C680;
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v6 + 32) = v7 | 0x4000000000000000;
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v6 + 40) = v8 | 0x4000000000000000;
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v6 + 48) = v9 | 0x4000000000000000;
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1AFE431C0;
  result = swift_allocObject();
  *(result + 16) = 0;
  *(v10 + 32) = result | 0x4000000000000000;
  *a3 = v6;
  a3[1] = v10;
  a3[2] = a1;
  a3[3] = a2;
  v12 = MEMORY[0x1E69E7CC0];
  a3[4] = MEMORY[0x1E69E7CC0];
  a3[5] = v12;
  return result;
}

uint64_t sub_1AF9982F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_1AF99B878(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1AFE431C0;
  v7 = swift_allocObject();
  *(v7 + 16) = 0xC000000000000028;
  *(v6 + 32) = v7 | 0x8000000000000000;
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1AFE431C0;
  result = swift_allocObject();
  *(result + 16) = a1;
  *(v8 + 32) = result | 0x8000000000000000;
  *a3 = v6;
  a3[1] = v8;
  v10 = MEMORY[0x1E69E7CC0];
  a3[2] = a2;
  a3[3] = v10;
  a3[4] = v10;
  a3[5] = v10;
  return result;
}

uint64_t sub_1AF998558@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1AF99B878(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AFE431C0;
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v4 + 32) = v5 | 0x4000000000000000;
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1AFE431C0;
  result = swift_allocObject();
  *(result + 16) = 0;
  *(v6 + 32) = result | 0x4000000000000000;
  *a2 = v4;
  a2[1] = v6;
  v8 = MEMORY[0x1E69E7CC0];
  a2[2] = a1;
  a2[3] = v8;
  a2[4] = v8;
  a2[5] = v8;
  return result;
}

__n128 sub_1AF998788@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>, __n128 a4@<Q0>, __n128 a5@<Q1>)
{
  sub_1AF99B878(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1AFE4C620;
  v9 = swift_allocObject();
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  v11 = swift_allocObject();
  *(v11 + 16) = a4;
  *(v10 + 24) = v11 | 0x2000000000000000;
  *(v9 + 16) = v10 | 0x2000000000000000;
  *(v8 + 32) = v9 | 0x8000000000000000;
  v12 = swift_allocObject();
  v13 = swift_allocObject();
  *(v13 + 16) = a5;
  *(v12 + 16) = v13 | 0x2000000000000000;
  *(v8 + 40) = v12 | 0x8000000000000000;
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1AFE431C0;
  v15 = swift_allocObject();
  v16 = swift_allocObject();
  result = a5;
  *(v16 + 16) = a5;
  *(v15 + 16) = v16 | 0x2000000000000000;
  *(v14 + 32) = v15 | 0x8000000000000000;
  *a3 = v8;
  a3[1] = v14;
  v18 = MEMORY[0x1E69E7CC0];
  a3[2] = a2;
  a3[3] = v18;
  a3[4] = v18;
  a3[5] = v18;
  return result;
}

__n128 sub_1AF998B74@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>, __n128 a4@<Q0>, __n128 a5@<Q1>)
{
  sub_1AF99B878(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1AFE4C620;
  v9 = swift_allocObject();
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  v11 = swift_allocObject();
  *(v11 + 16) = a4;
  *(v10 + 24) = v11 | 0x2000000000000000;
  *(v9 + 16) = v10 | 0x2000000000000000;
  *(v8 + 32) = v9 | 0x8000000000000000;
  v12 = swift_allocObject();
  v13 = swift_allocObject();
  *(v13 + 16) = a5;
  *(v12 + 16) = v13 | 0x2000000000000000;
  *(v8 + 40) = v12 | 0x8000000000000000;
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1AFE431C0;
  v15 = swift_allocObject();
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  v17 = swift_allocObject();
  result = a4;
  *(v17 + 16) = a4;
  *(v16 + 24) = v17 | 0x2000000000000000;
  *(v15 + 16) = v16 | 0x2000000000000000;
  *(v14 + 32) = v15 | 0x8000000000000000;
  *a3 = v8;
  a3[1] = v14;
  v19 = MEMORY[0x1E69E7CC0];
  a3[2] = a2;
  a3[3] = v19;
  a3[4] = v19;
  a3[5] = v19;
  return result;
}

uint64_t sub_1AF998F00@<X0>(uint64_t *a1@<X8>)
{
  sub_1AF99B878(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1AFE4C620;
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v2 + 32) = v3 | 0x4000000000000000;
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v2 + 40) = v4 | 0x4000000000000000;
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1AFE431C0;
  result = swift_allocObject();
  *(result + 16) = 0;
  *(v5 + 32) = result | 0x4000000000000000;
  *a1 = v2;
  a1[1] = v5;
  v7 = MEMORY[0x1E69E7CC0];
  a1[2] = &unk_1F24F0A30;
  a1[3] = v7;
  a1[4] = v7;
  a1[5] = v7;
  return result;
}

__n128 sub_1AF999234@<Q0>(uint64_t *a1@<X8>)
{
  sub_1AF99B878(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1AFE431C0;
  v3 = swift_allocObject();
  v4 = swift_allocObject();
  *(v4 + 16) = 4;
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1AFE4C440;
  *(v4 + 24) = v5 | 0x2000000000000000;
  *(v3 + 16) = v4 | 0x2000000000000000;
  *(v2 + 32) = v3 | 0x8000000000000000;
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1AFE4C680;
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1AFE4C430;
  *(v7 + 16) = v8 | 0x2000000000000000;
  *(v6 + 32) = v7 | 0x8000000000000000;
  v9 = swift_allocObject();
  *(v9 + 16) = 0xC000000000000028;
  *(v6 + 40) = v9 | 0x8000000000000000;
  v10 = swift_allocObject();
  v11 = swift_allocObject();
  result = xmmword_1AFE4C430;
  *(v11 + 16) = xmmword_1AFE4C430;
  *(v10 + 16) = v11 | 0x2000000000000000;
  *(v6 + 48) = v10 | 0x8000000000000000;
  *a1 = v2;
  a1[1] = v6;
  v13 = MEMORY[0x1E69E7CC0];
  a1[2] = &unk_1F24F2EA8;
  a1[3] = v13;
  a1[4] = v13;
  a1[5] = v13;
  return result;
}

uint64_t sub_1AF999414(unsigned __int8 *a1)
{
  v1 = sub_1AF99B53C(*a1, *a1);
  v2 = sub_1AFA5413C(v1);

  return v2;
}

__n128 sub_1AF999534@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>, __n128 a4@<Q0>, __n128 a5@<Q1>)
{
  sub_1AF99B878(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1AFE431C0;
  v9 = swift_allocObject();
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  v11 = swift_allocObject();
  *(v11 + 16) = a4;
  *(v10 + 24) = v11 | 0x2000000000000000;
  *(v9 + 16) = v10 | 0x2000000000000000;
  *(v8 + 32) = v9 | 0x8000000000000000;
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1AFE431C0;
  v13 = swift_allocObject();
  v14 = swift_allocObject();
  result = a5;
  *(v14 + 16) = a5;
  *(v13 + 16) = v14 | 0x2000000000000000;
  *(v12 + 32) = v13 | 0x8000000000000000;
  *a3 = v8;
  a3[1] = v12;
  v16 = MEMORY[0x1E69E7CC0];
  a3[2] = a2;
  a3[3] = v16;
  a3[4] = v16;
  a3[5] = v16;
  return result;
}

double sub_1AF99972C@<D0>(uint64_t *a1@<X8>)
{
  sub_1AF99B878(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1AFE431C0;
  v3 = swift_allocObject();
  v4 = swift_allocObject();
  *(v4 + 16) = 4;
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1AFE4C440;
  *(v4 + 24) = v5 | 0x2000000000000000;
  *(v3 + 16) = v4 | 0x2000000000000000;
  *(v2 + 32) = v3 | 0x8000000000000000;
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1AFE431C0;
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = 3;
  v9 = swift_allocObject();
  *&result = 3;
  *(v9 + 16) = xmmword_1AFE4C430;
  *(v8 + 24) = v9 | 0x2000000000000000;
  *(v7 + 16) = v8 | 0x2000000000000000;
  *(v6 + 32) = v7 | 0x8000000000000000;
  *a1 = v2;
  a1[1] = v6;
  v11 = MEMORY[0x1E69E7CC0];
  a1[2] = &unk_1F24EF490;
  a1[3] = v11;
  a1[4] = v11;
  a1[5] = v11;
  return result;
}

uint64_t sub_1AF999940@<X0>(uint64_t *a1@<X8>)
{
  sub_1AF99B878(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1AFE431C0;
  v3 = swift_allocObject();
  v4 = swift_allocObject();
  *(v4 + 16) = 4;
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1AFE4C440;
  *(v4 + 24) = v5 | 0x2000000000000000;
  *(v3 + 16) = v4 | 0x2000000000000000;
  *(v2 + 32) = v3 | 0x8000000000000000;
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1AFE431C0;
  result = swift_allocObject();
  *(result + 16) = 0xC000000000000028;
  *(v6 + 32) = result | 0x8000000000000000;
  *a1 = v2;
  a1[1] = v6;
  v8 = MEMORY[0x1E69E7CC0];
  a1[2] = &unk_1F24EE7D0;
  a1[3] = v8;
  a1[4] = v8;
  a1[5] = v8;
  return result;
}

unint64_t sub_1AF999AA0(_BYTE *a1)
{
  if (*a1 == 3)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 0xD00000000000001FLL;
  }
}

__n128 sub_1AF999C34@<Q0>(uint64_t *a1@<X8>)
{
  sub_1AF99B878(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1AFE4C620;
  v3 = swift_allocObject();
  *(v3 + 16) = 0xC000000000000028;
  *(v2 + 32) = v3 | 0x8000000000000000;
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1AFE4C430;
  *(v4 + 16) = v5 | 0x2000000000000000;
  *(v2 + 40) = v4 | 0x8000000000000000;
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1AFE431C0;
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  result = xmmword_1AFE4C430;
  *(v8 + 16) = xmmword_1AFE4C430;
  *(v7 + 16) = v8 | 0x2000000000000000;
  *(v6 + 32) = v7 | 0x8000000000000000;
  *a1 = v2;
  a1[1] = v6;
  v10 = MEMORY[0x1E69E7CC0];
  a1[2] = &unk_1F24F0090;
  a1[3] = v10;
  a1[4] = v10;
  a1[5] = v10;
  return result;
}

uint64_t sub_1AF999E00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_1AF99B878(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1AFE4C620;
  v7 = swift_allocObject();
  *(v7 + 16) = 0xC000000000000028;
  *(v6 + 32) = v7 | 0x8000000000000000;
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v6 + 40) = v8 | 0x8000000000000000;
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1AFE431C0;
  result = swift_allocObject();
  *(result + 16) = 0xC000000000000028;
  *(v9 + 32) = result | 0x8000000000000000;
  *a3 = v6;
  a3[1] = v9;
  v11 = MEMORY[0x1E69E7CC0];
  a3[2] = a2;
  a3[3] = v11;
  a3[4] = v11;
  a3[5] = v11;
  return result;
}

uint64_t sub_1AF99A078@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1AF99B878(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AFE4C680;
  v5 = swift_allocObject();
  *(v5 + 16) = 0xC000000000000028;
  *(v4 + 32) = v5 | 0x8000000000000000;
  v6 = swift_allocObject();
  *(v6 + 16) = 0xC000000000000028;
  *(v4 + 40) = v6 | 0x8000000000000000;
  v7 = swift_allocObject();
  *(v7 + 16) = 0xC000000000000058;
  *(v4 + 48) = v7 | 0x8000000000000000;
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1AFE431C0;
  result = swift_allocObject();
  *(result + 16) = 0xC000000000000028;
  *(v8 + 32) = result | 0x8000000000000000;
  *a2 = v4;
  a2[1] = v8;
  v10 = MEMORY[0x1E69E7CC0];
  a2[2] = a1;
  a2[3] = v10;
  a2[4] = v10;
  a2[5] = v10;
  return result;
}

uint64_t sub_1AF99A278@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1AF99B878(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AFE4C6A0;
  v5 = swift_allocObject();
  *(v5 + 16) = 0xC000000000000028;
  *(v4 + 32) = v5 | 0x8000000000000000;
  v6 = swift_allocObject();
  *(v6 + 16) = 0xC000000000000028;
  *(v4 + 40) = v6 | 0x8000000000000000;
  v7 = swift_allocObject();
  *(v7 + 16) = 0xC000000000000028;
  *(v4 + 48) = v7 | 0x8000000000000000;
  v8 = swift_allocObject();
  *(v8 + 16) = 0xC000000000000028;
  *(v4 + 56) = v8 | 0x8000000000000000;
  v9 = swift_allocObject();
  *(v9 + 16) = 0xC000000000000058;
  *(v4 + 64) = v9 | 0x8000000000000000;
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1AFE431C0;
  result = swift_allocObject();
  *(result + 16) = 0xC000000000000028;
  *(v10 + 32) = result | 0x8000000000000000;
  *a2 = v4;
  a2[1] = v10;
  v12 = MEMORY[0x1E69E7CC0];
  a2[2] = a1;
  a2[3] = v12;
  a2[4] = v12;
  a2[5] = v12;
  return result;
}

unint64_t sub_1AF99A464(_BYTE *a1)
{
  sub_1AFDFE218();

  if (*a1)
  {
    v2 = 0;
  }

  else
  {
    v2 = 95;
  }

  if (*a1)
  {
    v3 = 0xE000000000000000;
  }

  else
  {
    v3 = 0xE100000000000000;
  }

  MEMORY[0x1B2718AE0](v2, v3);

  MEMORY[0x1B2718AE0](0x293125202C302528, 0xE800000000000000);
  return 0xD000000000000019;
}

uint64_t sub_1AF99A570@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_1AF99B878(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1AFE4C620;
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1AFE4C430;
  *(v7 + 16) = v8 | 0x2000000000000000;
  *(v6 + 32) = v7 | 0x8000000000000000;
  v9 = swift_allocObject();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1AFE4C430;
  *(v9 + 16) = v10 | 0x2000000000000000;
  *(v6 + 40) = v9 | 0x8000000000000000;
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1AFE431C0;
  result = swift_allocObject();
  *(result + 16) = 0xC000000000000028;
  *(v11 + 32) = result | 0x8000000000000000;
  *a3 = v6;
  a3[1] = v11;
  a3[2] = a1;
  a3[3] = a2;
  v13 = MEMORY[0x1E69E7CC0];
  a3[4] = MEMORY[0x1E69E7CC0];
  a3[5] = v13;
  return result;
}

uint64_t sub_1AF99A814@<X0>(uint64_t *a1@<X8>)
{
  v2 = MEMORY[0x1E69E6F90];
  sub_1AF99B878(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1AFE4C680;
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1AFE4C430;
  *(v4 + 16) = v5 | 0x2000000000000000;
  *(v3 + 32) = v4 | 0x8000000000000000;
  v6 = swift_allocObject();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1AFE4C430;
  *(v6 + 16) = v7 | 0x2000000000000000;
  *(v3 + 40) = v6 | 0x8000000000000000;
  v8 = swift_allocObject();
  v9 = swift_allocObject();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1AFE4C430;
  *(v9 + 16) = v10 | 0x2000000000000000;
  *(v8 + 16) = v9;
  *(v3 + 48) = v8 | 0x8000000000000000;
  sub_1AF99B878(0, &unk_1EB630980, &type metadata for AnyValue, v2);
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E6530];
  *(v11 + 64) = MEMORY[0x1E69E6530];
  *(v11 + 16) = xmmword_1AFE4C680;
  *(v11 + 32) = xmmword_1AFE87170;
  *(v11 + 104) = v12;
  *(v11 + 72) = xmmword_1AFE87170;
  sub_1AF99B394(0);
  v18[3] = v13;
  v18[0] = swift_allocObject();
  *(v18[0] + 16) = xmmword_1AFE20160;
  sub_1AF975674(v18, v19);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v18);
  v14 = swift_allocObject();
  *(v14 + 16) = 0xC000000000000000;
  *(v11 + 144) = &type metadata for AnyValue;
  v15 = swift_allocObject();
  *(v11 + 120) = v15;
  sub_1AF914FF0(v19, v15 + 16);
  *(v11 + 112) = v14;
  sub_1AF9151B0(v19);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1AFE431C0;
  result = swift_allocObject();
  *(result + 16) = 0xC000000000000058;
  *(v16 + 32) = result | 0x8000000000000000;
  *a1 = v3;
  a1[1] = v16;
  a1[2] = &unk_1F24F3210;
  a1[3] = &unk_1F24F3240;
  a1[4] = MEMORY[0x1E69E7CC0];
  a1[5] = v11;
  return result;
}

unint64_t sub_1AF99AAE0()
{
  type metadata accessor for NilNode(0);
  if (swift_dynamicCastClass())
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0xD000000000000015;
  }
}

uint64_t sub_1AF99AB8C@<X0>(uint64_t *a1@<X8>)
{
  v2 = MEMORY[0x1E69E6F90];
  sub_1AF99B878(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1AFE4C680;
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v3 + 32) = v4 | 0x4000000000000000;
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v3 + 40) = v5 | 0x4000000000000000;
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v3 + 48) = v6 | 0x4000000000000000;
  sub_1AF99B878(0, &unk_1EB630980, &type metadata for AnyValue, v2);
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69E6530];
  *(v7 + 16) = xmmword_1AFE4C680;
  *(v7 + 32) = xmmword_1AFE87170;
  v9 = MEMORY[0x1E69E63B0];
  *(v7 + 64) = v8;
  *(v7 + 72) = 0xC000000000000068;
  *(v7 + 80) = 0;
  *(v7 + 144) = v9;
  *(v7 + 104) = v9;
  *(v7 + 112) = 0xC000000000000068;
  *(v7 + 120) = 0x3FF0000000000000;
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1AFE431C0;
  result = swift_allocObject();
  *(result + 16) = 0;
  *(v10 + 32) = result | 0x4000000000000000;
  *a1 = v3;
  a1[1] = v10;
  a1[2] = &unk_1F24EE4F0;
  a1[3] = &unk_1F24EE4A0;
  a1[4] = MEMORY[0x1E69E7CC0];
  a1[5] = v7;
  return result;
}

uint64_t sub_1AF99AD40(char *a1)
{
  v2 = *(v1 + 24);
  v3 = *(v2 + 32);
  v4 = *a1;
  sub_1AF448650(v2, *(v1 + 32));
  sub_1AF442064(v3);

  v5 = sub_1AF993E8C(0x616D65725F786676, 0xEC00000031305F70, v3, v4);
  sub_1AF445BE4(v3);
  MEMORY[0x1B2718AE0](0x2C3125202C302528, 0xEC00000029322520);
  return v5;
}

__n128 sub_1AF99AE3C@<Q0>(uint64_t *a1@<X8>)
{
  v2 = MEMORY[0x1E69E6F90];
  sub_1AF99B878(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1AFE4C6A0;
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v3 + 32) = v4 | 0x4000000000000000;
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v3 + 40) = v5 | 0x4000000000000000;
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v3 + 48) = v6 | 0x4000000000000000;
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v3 + 56) = v7 | 0x4000000000000000;
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v3 + 64) = v8 | 0x4000000000000000;
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1AFE431C0;
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v9 + 32) = v10 | 0x4000000000000000;
  sub_1AF99B878(0, &unk_1EB630980, &type metadata for AnyValue, v2);
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E63B0];
  result = xmmword_1AFE4C6A0;
  *(v11 + 16) = xmmword_1AFE4C6A0;
  *(v11 + 32) = 0xC000000000000068;
  *(v11 + 40) = 0;
  *(v11 + 72) = 0xC000000000000068;
  *(v11 + 80) = 0;
  *(v11 + 64) = v12;
  *(v11 + 112) = 0xC000000000000068;
  *(v11 + 120) = 0x3FF0000000000000;
  *(v11 + 104) = v12;
  *(v11 + 152) = 0xC000000000000068;
  *(v11 + 160) = 0;
  *(v11 + 144) = v12;
  *(v11 + 224) = v12;
  *(v11 + 192) = 0xC000000000000068;
  *(v11 + 200) = 0x3FF0000000000000;
  *(v11 + 184) = v12;
  *a1 = v3;
  a1[1] = v9;
  a1[2] = &unk_1F24F3580;
  a1[3] = &unk_1F24F35B0;
  a1[4] = &unk_1F24F3620;
  a1[5] = v11;
  return result;
}

uint64_t sub_1AF99B028(char *a1)
{
  v2 = *(*(v1 + 24) + 32);
  v3 = *a1;
  sub_1AF448650(*(v1 + 24), *(v1 + 32));
  sub_1AF442064(v2);

  v4 = sub_1AF993E8C(0x78696D5F786676, 0xE700000000000000, v2, v3);
  sub_1AF445BE4(v2);
  v5 = *(v1 + 24);
  v6 = *(v5 + 32);
  sub_1AF448650(v5, *(v1 + 32));
  sub_1AF442064(v6);

  v7 = sub_1AF993E8C(0x616D65725F786676, 0xEC00000031305F70, v6, v3);
  v9 = v8;
  sub_1AF445BE4(v6);
  sub_1AFDFE218();

  MEMORY[0x1B2718AE0](0x2C3425202C332528, 0xE900000000000020);
  MEMORY[0x1B2718AE0](v7, v9);

  MEMORY[0x1B2718AE0](0x2C3125202C302528, 0xED00002929322520);
  return v4;
}

uint64_t sub_1AF99B1CC@<X0>(uint64_t *a1@<X8>)
{
  sub_1AF99B878(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1AFE4C680;
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v2 + 32) = v3 | 0x4000000000000000;
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v2 + 40) = v4 | 0x4000000000000000;
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v2 + 48) = v5 | 0x4000000000000000;
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1AFE431C0;
  result = swift_allocObject();
  *(result + 16) = 0xC000000000000010;
  *(v6 + 32) = result | 0x8000000000000000;
  *a1 = v2;
  a1[1] = v6;
  a1[2] = &unk_1F24EF540;
  a1[3] = &unk_1F24EF4F0;
  v8 = MEMORY[0x1E69E7CC0];
  a1[4] = MEMORY[0x1E69E7CC0];
  a1[5] = v8;
  return result;
}