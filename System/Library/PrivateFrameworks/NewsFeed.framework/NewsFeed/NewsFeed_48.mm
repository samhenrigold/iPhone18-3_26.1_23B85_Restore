id sub_1D5FA48FC(void *a1, uint64_t a2, unint64_t a3)
{
  v6 = type metadata accessor for FormatOptionsNodeStatementContext(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v9);
  v10 = a3 >> 61;
  if ((a3 >> 61) <= 2)
  {
    if (!v10)
    {
      v22 = *(a3 + 16);
      v23 = *(a3 + 24);
      v24 = swift_allocObject();
      *(v24 + 16) = a1;
      *(v24 + 24) = v22;
      *(v24 + 32) = v23;
      v14 = objc_allocWithZone(MEMORY[0x1E69DC888]);
      v45 = sub_1D5FBB18C;
      v46 = v24;
      aBlock = MEMORY[0x1E69E9820];
      v42 = 1107296256;
      v15 = &block_descriptor_340;
      goto LABEL_16;
    }

    if (v10 == 1)
    {
      v11 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v12 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v13 = swift_allocObject();
      *(v13 + 16) = v11;
      *(v13 + 24) = v12;
      *(v13 + 32) = a1;
      v14 = objc_allocWithZone(MEMORY[0x1E69DC888]);
      v45 = sub_1D5FBB188;
      v46 = v13;
      aBlock = MEMORY[0x1E69E9820];
      v42 = 1107296256;
      v15 = &block_descriptor_333;
LABEL_16:
      v43 = sub_1D6E0CD34;
      v44 = v15;
      v21 = _Block_copy(&aBlock);
      v39 = a1;
      v36 = [v14 initWithDynamicProvider_];
      goto LABEL_17;
    }

    v32 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v31 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    sub_1D5D286BC(a2, &aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FormatOptionsNodeStatementContext);
    v33 = (*(v7 + 80) + 40) & ~*(v7 + 80);
    v34 = swift_allocObject();
    v34[2] = a1;
    v34[3] = v32;
    v34[4] = v31;
    sub_1D5FBA968(&aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v34 + v33, type metadata accessor for FormatOptionsNodeStatementContext);
    v20 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v45 = sub_1D5FBA9D0;
    v46 = v34;
    aBlock = MEMORY[0x1E69E9820];
    v42 = 1107296256;
    v43 = sub_1D6E0CD34;
    v44 = &block_descriptor_326;
    v21 = _Block_copy(&aBlock);

LABEL_11:
    v35 = a1;
    v36 = [v20 initWithDynamicProvider_];
LABEL_17:
    v29 = v36;
    v30 = v21;
    goto LABEL_18;
  }

  if (v10 == 3)
  {
    v25 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v26 = swift_allocObject();
    *(v26 + 16) = v25;
    v27 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v45 = sub_1D5FBB254;
    v46 = v26;
    aBlock = MEMORY[0x1E69E9820];
    v42 = 1107296256;
    v43 = sub_1D6E0CD34;
    v44 = &block_descriptor_320;
    v28 = _Block_copy(&aBlock);

    v29 = [v27 initWithDynamicProvider_];
    v30 = v28;
LABEL_18:
    _Block_release(v30);

    return v29;
  }

  if (v10 == 4)
  {
    v17 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v16 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    v18 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
    v19 = swift_allocObject();
    *(v19 + 16) = a1;
    *(v19 + 24) = v17;
    *(v19 + 32) = v16;
    *(v19 + 40) = v18;
    v20 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v45 = sub_1D5FBB250;
    v46 = v19;
    aBlock = MEMORY[0x1E69E9820];
    v42 = 1107296256;
    v43 = sub_1D6E0CD34;
    v44 = &block_descriptor_313;
    v21 = _Block_copy(&aBlock);

    goto LABEL_11;
  }

  if (a3 == 0xA000000000000000)
  {
    v38 = swift_allocObject();
    *(v38 + 16) = a1;
    v14 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v45 = sub_1D5FBB25C;
    v46 = v38;
    aBlock = MEMORY[0x1E69E9820];
    v42 = 1107296256;
    v15 = &block_descriptor_354;
    goto LABEL_16;
  }

  if (a3 == 0xA000000000000008)
  {
    v37 = swift_allocObject();
    *(v37 + 16) = a1;
    v14 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v45 = sub_1D5FBB258;
    v46 = v37;
    aBlock = MEMORY[0x1E69E9820];
    v42 = 1107296256;
    v15 = &block_descriptor_347;
    goto LABEL_16;
  }

  return sub_1D726355C();
}

id sub_1D5FA4EF8(void *a1, uint64_t a2, unint64_t a3)
{
  v6 = type metadata accessor for FormatDecorationContext(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v9);
  v10 = a3 >> 61;
  if ((a3 >> 61) <= 2)
  {
    if (!v10)
    {
      v22 = *(a3 + 16);
      v23 = *(a3 + 24);
      v24 = swift_allocObject();
      *(v24 + 16) = a1;
      *(v24 + 24) = v22;
      *(v24 + 32) = v23;
      v14 = objc_allocWithZone(MEMORY[0x1E69DC888]);
      v45 = sub_1D5FBB18C;
      v46 = v24;
      aBlock = MEMORY[0x1E69E9820];
      v42 = 1107296256;
      v15 = &block_descriptor_274;
      goto LABEL_16;
    }

    if (v10 == 1)
    {
      v11 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v12 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v13 = swift_allocObject();
      *(v13 + 16) = v11;
      *(v13 + 24) = v12;
      *(v13 + 32) = a1;
      v14 = objc_allocWithZone(MEMORY[0x1E69DC888]);
      v45 = sub_1D5FBB188;
      v46 = v13;
      aBlock = MEMORY[0x1E69E9820];
      v42 = 1107296256;
      v15 = &block_descriptor_267;
LABEL_16:
      v43 = sub_1D6E0CD34;
      v44 = v15;
      v21 = _Block_copy(&aBlock);
      v39 = a1;
      v36 = [v14 initWithDynamicProvider_];
      goto LABEL_17;
    }

    v32 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v31 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    sub_1D5D286BC(a2, &aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FormatDecorationContext);
    v33 = (*(v7 + 80) + 40) & ~*(v7 + 80);
    v34 = swift_allocObject();
    v34[2] = a1;
    v34[3] = v32;
    v34[4] = v31;
    sub_1D5FBA968(&aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v34 + v33, type metadata accessor for FormatDecorationContext);
    v20 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v45 = sub_1D5FBA82C;
    v46 = v34;
    aBlock = MEMORY[0x1E69E9820];
    v42 = 1107296256;
    v43 = sub_1D6E0CD34;
    v44 = &block_descriptor_260;
    v21 = _Block_copy(&aBlock);

LABEL_11:
    v35 = a1;
    v36 = [v20 initWithDynamicProvider_];
LABEL_17:
    v29 = v36;
    v30 = v21;
    goto LABEL_18;
  }

  if (v10 == 3)
  {
    v25 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v26 = swift_allocObject();
    *(v26 + 16) = v25;
    v27 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v45 = sub_1D5FBB254;
    v46 = v26;
    aBlock = MEMORY[0x1E69E9820];
    v42 = 1107296256;
    v43 = sub_1D6E0CD34;
    v44 = &block_descriptor_254;
    v28 = _Block_copy(&aBlock);

    v29 = [v27 initWithDynamicProvider_];
    v30 = v28;
LABEL_18:
    _Block_release(v30);

    return v29;
  }

  if (v10 == 4)
  {
    v17 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v16 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    v18 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
    v19 = swift_allocObject();
    *(v19 + 16) = a1;
    *(v19 + 24) = v17;
    *(v19 + 32) = v16;
    *(v19 + 40) = v18;
    v20 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v45 = sub_1D5FBB250;
    v46 = v19;
    aBlock = MEMORY[0x1E69E9820];
    v42 = 1107296256;
    v43 = sub_1D6E0CD34;
    v44 = &block_descriptor_247;
    v21 = _Block_copy(&aBlock);

    goto LABEL_11;
  }

  if (a3 == 0xA000000000000000)
  {
    v38 = swift_allocObject();
    *(v38 + 16) = a1;
    v14 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v45 = sub_1D5FBB25C;
    v46 = v38;
    aBlock = MEMORY[0x1E69E9820];
    v42 = 1107296256;
    v15 = &block_descriptor_288;
    goto LABEL_16;
  }

  if (a3 == 0xA000000000000008)
  {
    v37 = swift_allocObject();
    *(v37 + 16) = a1;
    v14 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v45 = sub_1D5FBB258;
    v46 = v37;
    aBlock = MEMORY[0x1E69E9820];
    v42 = 1107296256;
    v15 = &block_descriptor_281;
    goto LABEL_16;
  }

  return sub_1D726355C();
}

id sub_1D5FA54F4(void *a1, _OWORD *a2, unint64_t a3, __n128 a4)
{
  v5 = a3 >> 61;
  if ((a3 >> 61) <= 2)
  {
    if (v5)
    {
      if (v5 != 1)
      {
        v29 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v28 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
        v31 = swift_allocObject();
        v32 = a2[3];
        *(v31 + 72) = a2[2];
        *(v31 + 88) = v32;
        v33 = a2[5];
        *(v31 + 104) = a2[4];
        *(v31 + 120) = v33;
        v34 = a2[1];
        *(v31 + 40) = *a2;
        *(v31 + 16) = a1;
        *(v31 + 24) = v29;
        *(v31 + 32) = v28;
        *(v31 + 56) = v34;
        v35 = objc_allocWithZone(MEMORY[0x1E69DC888]);
        aBlock[4] = sub_1D5FBA388;
        aBlock[5] = v31;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1D6E0CD34;
        aBlock[3] = &block_descriptor_48;
        v36 = _Block_copy(aBlock);

        v37 = a1;
        sub_1D5FBA398(a2, &v42);
        v26 = [v35 initWithDynamicProvider_];
        _Block_release(v36);
LABEL_18:

        return v26;
      }

      v6 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v7 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v8 = swift_allocObject();
      *(v8 + 16) = v6;
      *(v8 + 24) = v7;
      *(v8 + 32) = a1;
      v9 = objc_allocWithZone(MEMORY[0x1E69DC888]);
      v46 = sub_1D5FBA3F4;
      v47 = v8;
      v42 = MEMORY[0x1E69E9820];
      v43 = 1107296256;
      v10 = &block_descriptor_54;
    }

    else
    {
      v19 = *(a3 + 16);
      v20 = *(a3 + 24);
      v21 = swift_allocObject();
      *(v21 + 16) = a1;
      *(v21 + 24) = v19;
      *(v21 + 32) = v20;
      v9 = objc_allocWithZone(MEMORY[0x1E69DC888]);
      v46 = sub_1D5FBA404;
      v47 = v21;
      v42 = MEMORY[0x1E69E9820];
      v43 = 1107296256;
      v10 = &block_descriptor_60;
    }

    goto LABEL_15;
  }

  if (v5 == 3)
  {
    v22 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v23 = swift_allocObject();
    *(v23 + 16) = v22;
    v24 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v46 = sub_1D5FBA380;
    v47 = v23;
    v42 = MEMORY[0x1E69E9820];
    v43 = 1107296256;
    v44 = sub_1D6E0CD34;
    v45 = &block_descriptor_42;
    v25 = _Block_copy(&v42);

    v26 = [v24 initWithDynamicProvider_];
    v27 = v25;
LABEL_17:
    _Block_release(v27);
    goto LABEL_18;
  }

  if (v5 == 4)
  {
    v12 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v11 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    v13 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
    v14 = swift_allocObject();
    *(v14 + 16) = a1;
    *(v14 + 24) = v12;
    *(v14 + 32) = v11;
    *(v14 + 40) = v13;
    v15 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v46 = sub_1D5FBA37C;
    v47 = v14;
    v42 = MEMORY[0x1E69E9820];
    v43 = 1107296256;
    v44 = sub_1D6E0CD34;
    v45 = &block_descriptor_13;
    v16 = _Block_copy(&v42);

    v17 = a1;
    v18 = [v15 initWithDynamicProvider_];
LABEL_16:
    v26 = v18;
    v27 = v16;
    goto LABEL_17;
  }

  if (a3 == 0xA000000000000000)
  {
    v39 = swift_allocObject();
    *(v39 + 16) = a1;
    v9 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v46 = sub_1D5FBA41C;
    v47 = v39;
    v42 = MEMORY[0x1E69E9820];
    v43 = 1107296256;
    v10 = &block_descriptor_72;
    goto LABEL_15;
  }

  if (a3 == 0xA000000000000008)
  {
    v38 = swift_allocObject();
    *(v38 + 16) = a1;
    v9 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v46 = sub_1D5FBA414;
    v47 = v38;
    v42 = MEMORY[0x1E69E9820];
    v43 = 1107296256;
    v10 = &block_descriptor_66;
LABEL_15:
    v44 = sub_1D6E0CD34;
    v45 = v10;
    v16 = _Block_copy(&v42);
    v40 = a1;
    v18 = [v9 initWithDynamicProvider_];
    goto LABEL_16;
  }

  return sub_1D726355C();
}

id sub_1D5FA5A80(void *a1, uint64_t a2, unint64_t a3, __n128 a4)
{
  v5 = a3 >> 61;
  if ((a3 >> 61) <= 2)
  {
    if (v5)
    {
      if (v5 != 1)
      {
        v29 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v28 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
        v31 = swift_allocObject();
        v32 = *(a2 + 112);
        *(v31 + 136) = *(a2 + 96);
        *(v31 + 152) = v32;
        *(v31 + 168) = *(a2 + 128);
        v33 = *(a2 + 48);
        *(v31 + 72) = *(a2 + 32);
        *(v31 + 88) = v33;
        v34 = *(a2 + 80);
        *(v31 + 104) = *(a2 + 64);
        *(v31 + 120) = v34;
        v35 = *(a2 + 16);
        *(v31 + 40) = *a2;
        *(v31 + 16) = a1;
        *(v31 + 24) = v29;
        *(v31 + 32) = v28;
        *(v31 + 184) = *(a2 + 144);
        *(v31 + 56) = v35;
        v36 = objc_allocWithZone(MEMORY[0x1E69DC888]);
        v49[4] = sub_1D5FBAE0C;
        v49[5] = v31;
        v49[0] = MEMORY[0x1E69E9820];
        v49[1] = 1107296256;
        v49[2] = sub_1D6E0CD34;
        v49[3] = &block_descriptor_457;
        v37 = _Block_copy(v49);

        v38 = a1;
        sub_1D5FBAE1C(a2, &aBlock);
        v26 = [v36 initWithDynamicProvider_];
        _Block_release(v37);
LABEL_18:

        return v26;
      }

      v6 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v7 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v8 = swift_allocObject();
      *(v8 + 16) = v6;
      *(v8 + 24) = v7;
      *(v8 + 32) = a1;
      v9 = objc_allocWithZone(MEMORY[0x1E69DC888]);
      v47 = sub_1D5FBB188;
      v48 = v8;
      aBlock = MEMORY[0x1E69E9820];
      v44 = 1107296256;
      v10 = &block_descriptor_464;
    }

    else
    {
      v19 = *(a3 + 16);
      v20 = *(a3 + 24);
      v21 = swift_allocObject();
      *(v21 + 16) = a1;
      *(v21 + 24) = v19;
      *(v21 + 32) = v20;
      v9 = objc_allocWithZone(MEMORY[0x1E69DC888]);
      v47 = sub_1D5FBB18C;
      v48 = v21;
      aBlock = MEMORY[0x1E69E9820];
      v44 = 1107296256;
      v10 = &block_descriptor_471;
    }

    goto LABEL_15;
  }

  if (v5 == 3)
  {
    v22 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v23 = swift_allocObject();
    *(v23 + 16) = v22;
    v24 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v47 = sub_1D5FBB254;
    v48 = v23;
    aBlock = MEMORY[0x1E69E9820];
    v44 = 1107296256;
    v45 = sub_1D6E0CD34;
    v46 = &block_descriptor_451;
    v25 = _Block_copy(&aBlock);

    v26 = [v24 initWithDynamicProvider_];
    v27 = v25;
LABEL_17:
    _Block_release(v27);
    goto LABEL_18;
  }

  if (v5 == 4)
  {
    v12 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v11 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    v13 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
    v14 = swift_allocObject();
    *(v14 + 16) = a1;
    *(v14 + 24) = v12;
    *(v14 + 32) = v11;
    *(v14 + 40) = v13;
    v15 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v47 = sub_1D5FBB250;
    v48 = v14;
    aBlock = MEMORY[0x1E69E9820];
    v44 = 1107296256;
    v45 = sub_1D6E0CD34;
    v46 = &block_descriptor_444;
    v16 = _Block_copy(&aBlock);

    v17 = a1;
    v18 = [v15 initWithDynamicProvider_];
LABEL_16:
    v26 = v18;
    v27 = v16;
    goto LABEL_17;
  }

  if (a3 == 0xA000000000000000)
  {
    v40 = swift_allocObject();
    *(v40 + 16) = a1;
    v9 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v47 = sub_1D5FBB25C;
    v48 = v40;
    aBlock = MEMORY[0x1E69E9820];
    v44 = 1107296256;
    v10 = &block_descriptor_485;
    goto LABEL_15;
  }

  if (a3 == 0xA000000000000008)
  {
    v39 = swift_allocObject();
    *(v39 + 16) = a1;
    v9 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v47 = sub_1D5FBB258;
    v48 = v39;
    aBlock = MEMORY[0x1E69E9820];
    v44 = 1107296256;
    v10 = &block_descriptor_478;
LABEL_15:
    v45 = sub_1D6E0CD34;
    v46 = v10;
    v16 = _Block_copy(&aBlock);
    v41 = a1;
    v18 = [v9 initWithDynamicProvider_];
    goto LABEL_16;
  }

  return sub_1D726355C();
}

void sub_1D5FA6030(_OWORD *a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = a2 >> 61;
  if ((a2 >> 61) <= 2)
  {
    if ((a2 >> 61) >= 2)
    {
      v7 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v8 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v9 = swift_allocObject();

      sub_1D5FB2C1C(a1, v7, &v28);
      if (!v3)
      {
        v20 = a1[5];
        v27[4] = a1[4];
        v27[5] = v20;
        v27[6] = a1[6];
        v21 = a1[1];
        v27[0] = *a1;
        v27[1] = v21;
        v23 = a1[2];
        v22 = a1[3];
        v24 = v28;
        v27[2] = v23;
        v27[3] = v22;
        MEMORY[0x1EEE9AC00](v10, v11);
        v26[2] = v27;
        v25 = sub_1D5EC95F8(sub_1D5FBB128, v26, v8);
        *(v9 + 16) = v24;
        *(v9 + 24) = v25;

        *a3 = v9 | 0x4000000000000000;
        return;
      }

      goto LABEL_13;
    }

LABEL_9:
    *a3 = a2;
    sub_1D5ECF0E0(a2);
    return;
  }

  if (v5 == 3)
  {
    v18 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v19 = swift_allocObject();

    sub_1D5FA74A4(a1, v18, (v19 + 16));

    if (v3)
    {
      goto LABEL_13;
    }

    *a3 = v19 | 0x6000000000000000;
  }

  else
  {
    if (v5 != 4)
    {
      goto LABEL_9;
    }

    v13 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v14 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    v15 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
    v16 = swift_allocObject();

    sub_1D5FA74A4(a1, v13, v27);

    if (v3)
    {
LABEL_13:
      swift_deallocUninitializedObject();
      return;
    }

    *(v16 + 16) = *&v27[0];
    *(v16 + 24) = v14;
    *(v16 + 32) = v15;
    *a3 = v16 | 0x8000000000000000;
  }
}

void sub_1D5FA62B4(uint64_t a1@<X0>, unint64_t a2@<X1>, void *(*a3)(uint64_t *__return_ptr, uint64_t, uint64_t)@<X2>, void (*a4)(uint64_t, uint64_t)@<X3>, void (*a5)(uint64_t *__return_ptr, unint64_t *, uint64_t *, double)@<X4>, void *a6@<X8>)
{
  v8 = a2 >> 61;
  if ((a2 >> 61) <= 2)
  {
    if ((a2 >> 61) >= 2)
    {
      v11 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v12 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v14 = swift_allocObject();

      v15 = a3(&v31, a1, v11);
      if (!v6)
      {
        v27 = v31;
        v30 = a1;
        MEMORY[0x1EEE9AC00](v15, v16);
        v29[2] = &v30;
        v28 = sub_1D5EC95F8(a5, v29, v12);
        *(v14 + 16) = v27;
        *(v14 + 24) = v28;

        *a6 = v14 | 0x4000000000000000;
        return;
      }

      goto LABEL_13;
    }

LABEL_9:
    *a6 = a2;
    sub_1D5ECF0E0(a2);
    return;
  }

  if (v8 == 3)
  {
    v24 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v26 = swift_allocObject();

    a4(a1, v24);

    if (v6)
    {
      goto LABEL_13;
    }

    *a6 = v26 | 0x6000000000000000;
  }

  else
  {
    if (v8 != 4)
    {
      goto LABEL_9;
    }

    v18 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v19 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    v20 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
    v22 = swift_allocObject();

    (a4)(&v31, a1, v18);

    if (v6)
    {
LABEL_13:
      swift_deallocUninitializedObject();
      return;
    }

    *(v22 + 16) = v31;
    *(v22 + 24) = v19;
    *(v22 + 32) = v20;
    *a6 = v22 | 0x8000000000000000;
  }
}

void sub_1D5FA6530(uint64_t a1@<X0>, unint64_t a2@<X1>, void *(*a3)(uint64_t *__return_ptr, uint64_t, uint64_t)@<X2>, void (*a4)(uint64_t, uint64_t)@<X3>, void (*a5)(uint64_t *__return_ptr, unint64_t *, uint64_t *, double)@<X4>, void *a6@<X8>)
{
  v8 = a2 >> 61;
  if ((a2 >> 61) <= 2)
  {
    if ((a2 >> 61) >= 2)
    {
      v11 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v12 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v14 = swift_allocObject();

      v15 = a3(&v30, a1, v11);
      if (!v6)
      {
        v27 = v30;
        MEMORY[0x1EEE9AC00](v15, v16);
        v29[2] = a1;
        v28 = sub_1D5EC95F8(a5, v29, v12);
        *(v14 + 16) = v27;
        *(v14 + 24) = v28;

        *a6 = v14 | 0x4000000000000000;
        return;
      }

      goto LABEL_13;
    }

LABEL_9:
    *a6 = a2;
    sub_1D5ECF0E0(a2);
    return;
  }

  if (v8 == 3)
  {
    v24 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v26 = swift_allocObject();

    a4(a1, v24);

    if (v6)
    {
      goto LABEL_13;
    }

    *a6 = v26 | 0x6000000000000000;
  }

  else
  {
    if (v8 != 4)
    {
      goto LABEL_9;
    }

    v18 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v19 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    v20 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
    v22 = swift_allocObject();

    (a4)(&v30, a1, v18);

    if (v6)
    {
LABEL_13:
      swift_deallocUninitializedObject();
      return;
    }

    *(v22 + 16) = v30;
    *(v22 + 24) = v19;
    *(v22 + 32) = v20;
    *a6 = v22 | 0x8000000000000000;
  }
}

void sub_1D5FA67A0(_OWORD *a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = a2 >> 61;
  if ((a2 >> 61) <= 2)
  {
    if ((a2 >> 61) >= 2)
    {
      v7 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v8 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v9 = swift_allocObject();

      sub_1D5FB3678(a1, v7, &v27);
      if (!v3)
      {
        v20 = v27;
        v21 = a1[3];
        v26[2] = a1[2];
        v26[3] = v21;
        v22 = a1[5];
        v26[4] = a1[4];
        v26[5] = v22;
        v23 = a1[1];
        v26[0] = *a1;
        v26[1] = v23;
        MEMORY[0x1EEE9AC00](v10, v11);
        v25[2] = v26;
        v24 = sub_1D5EC95F8(sub_1D5FBB068, v25, v8);
        *(v9 + 16) = v20;
        *(v9 + 24) = v24;

        *a3 = v9 | 0x4000000000000000;
        return;
      }

      goto LABEL_13;
    }

LABEL_9:
    *a3 = a2;
    sub_1D5ECF0E0(a2);
    return;
  }

  if (v5 == 3)
  {
    v18 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v19 = swift_allocObject();

    sub_1D5FA94D4(a1, v18, (v19 + 16));

    if (v3)
    {
      goto LABEL_13;
    }

    *a3 = v19 | 0x6000000000000000;
  }

  else
  {
    if (v5 != 4)
    {
      goto LABEL_9;
    }

    v13 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v14 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    v15 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
    v16 = swift_allocObject();

    sub_1D5FA94D4(a1, v13, v26);

    if (v3)
    {
LABEL_13:
      swift_deallocUninitializedObject();
      return;
    }

    *(v16 + 16) = *&v26[0];
    *(v16 + 24) = v14;
    *(v16 + 32) = v15;
    *a3 = v16 | 0x8000000000000000;
  }
}

void sub_1D5FA6A1C(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = a2 >> 61;
  if ((a2 >> 61) <= 2)
  {
    if ((a2 >> 61) >= 2)
    {
      v7 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v8 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v9 = swift_allocObject();

      sub_1D5FB3994(a1, v7, &v29);
      if (!v3)
      {
        v28 = *(a1 + 144);
        v20 = v29;
        v21 = *(a1 + 112);
        v27[6] = *(a1 + 96);
        v27[7] = v21;
        v27[8] = *(a1 + 128);
        v22 = *(a1 + 48);
        v27[2] = *(a1 + 32);
        v27[3] = v22;
        v23 = *(a1 + 80);
        v27[4] = *(a1 + 64);
        v27[5] = v23;
        v24 = *(a1 + 16);
        v27[0] = *a1;
        v27[1] = v24;
        MEMORY[0x1EEE9AC00](v10, v11);
        v26[2] = v27;
        v25 = sub_1D5EC95F8(sub_1D5FBB158, v26, v8);
        *(v9 + 16) = v20;
        *(v9 + 24) = v25;

        *a3 = v9 | 0x4000000000000000;
        return;
      }

      goto LABEL_13;
    }

LABEL_9:
    *a3 = a2;
    sub_1D5ECF0E0(a2);
    return;
  }

  if (v5 == 3)
  {
    v18 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v19 = swift_allocObject();

    sub_1D5FA9D9C(a1, v18, (v19 + 16));

    if (v3)
    {
      goto LABEL_13;
    }

    *a3 = v19 | 0x6000000000000000;
  }

  else
  {
    if (v5 != 4)
    {
      goto LABEL_9;
    }

    v13 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v14 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    v15 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
    v16 = swift_allocObject();

    sub_1D5FA9D9C(a1, v13, v27);

    if (v3)
    {
LABEL_13:
      swift_deallocUninitializedObject();
      return;
    }

    *(v16 + 16) = *&v27[0];
    *(v16 + 24) = v14;
    *(v16 + 32) = v15;
    *a3 = v16 | 0x8000000000000000;
  }
}

void sub_1D5FA6CB0(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v85 = a1;
  v5 = a2 >> 60;
  if ((a2 >> 60) <= 4)
  {
    if (v5 >= 3)
    {
      if (v5 == 3)
      {
        v12 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v13 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        v14 = swift_allocObject();

        sub_1D5FA6CB0(a1, v12, &v84);
        if (v3)
        {

          swift_deallocUninitializedObject();
        }

        else
        {
          sub_1D5FA6CB0(a1, v13, &v83);
          v23 = v83;
          *(v14 + 16) = v84;
          *(v14 + 24) = v23;

          *a3 = v14 | 0x3000000000000000;
        }
      }

      else
      {
        v17 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v18 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        swift_retain_n();

        sub_1D5FA6CB0(a1, v17, &v83);
        if (v3)
        {
        }

        else
        {

          sub_1D5FA6CB0(a1, v83, &v84);

          v25 = v84;
          v84 = a1;
          MEMORY[0x1EEE9AC00](v24, v26);
          v74 = &v84;
          v27 = sub_1D5EC95F8(sub_1D5FBA5F4, v73, v18);
          v84 = a1;
          MEMORY[0x1EEE9AC00](v27, v28);
          v74 = &v84;
          v82 = sub_1D5EC95F8(sub_1D5FBB0C8, v73, v27);

          v84 = v25;
          v30 = FormatColor.color.getter(v29);
          v31 = objc_opt_self();
          *&v77.f64[0] = v31;
          v32 = [v31 traitCollectionWithUserInterfaceStyle_];
          v33 = [(objc_class *)v30 resolvedColorWithTraitCollection:v32];
          v81 = v33;

          v84 = v25;
          v35 = FormatColor.color.getter(v34);
          v36 = [v31 traitCollectionWithUserInterfaceStyle_];
          v79 = [(objc_class *)v35 resolvedColorWithTraitCollection:v36];

          MEMORY[0x1EEE9AC00](v37, v38);
          v74 = &v85;
          v39 = v82;
          v40 = sub_1D632A694(v33, sub_1D5FBB0E0, v73, v82);
          v80 = 0;
          v41 = v77.f64[0];
          v42 = [*&v77.f64[0] traitCollectionWithUserInterfaceStyle_];
          v78 = [v40 resolvedColorWithTraitCollection_];

          MEMORY[0x1EEE9AC00](v43, v44);
          v74 = &v85;
          v46 = v79;
          v45 = v80;
          v47 = sub_1D632A694(v79, sub_1D5FBA648, v73, v39);
          v80 = v45;
          v48 = [*&v41 traitCollectionWithUserInterfaceStyle_];
          v49 = [v47 resolvedColorWithTraitCollection_];

          v50 = v78;
          sub_1D726353C();
          v75 = v52;
          v76 = v51;
          v54 = v53;
          v56 = v55;
          v57 = swift_allocObject();
          v77 = vdupq_n_s64(0x406FE00000000000uLL);
          *&v58.f64[0] = v76;
          *&v58.f64[1] = v75;
          *(v57 + 16) = vmulq_f64(v58, v77);
          *(v57 + 32) = v54 * 255.0;
          *(v57 + 40) = v56;
          *(v57 + 48) = 0;
          v59 = v57 | 0x6000000000000000;
          sub_1D726353C();
          v75 = v61;
          v76 = v60;
          v63 = v62;
          v65 = v64;

          v66 = swift_allocObject();
          *&v67.f64[0] = v76;
          *&v67.f64[1] = v75;
          *(v66 + 16) = vmulq_f64(v67, v77);
          *(v66 + 32) = v63 * 255.0;
          *(v66 + 40) = v65;
          *(v66 + 48) = 0;
          v68 = v66 | 0x6000000000000000;
          v69 = swift_allocObject();
          *(v69 + 16) = v59;
          *(v69 + 24) = v68;
          v70 = v69 | 0x3000000000000000;
          v71 = swift_allocObject();
          v72 = v82;
          *(v71 + 16) = v25;
          *(v71 + 24) = v72;
          *(v71 + 32) = v70;
          *a3 = v71 | 0xA000000000000000;
        }
      }

      return;
    }

LABEL_7:
    *a3 = a2;

    return;
  }

  if (((1 << v5) & 0xE60) != 0)
  {
    goto LABEL_7;
  }

  if (v5 == 7)
  {
    v8 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v7 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
    v9 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
    v10 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
    sub_1D5F58038(v8, v7, v9, v10);
    sub_1D5FB61D8(a1, v8, v7, v9, v10, &v83);
    if (v3)
    {
      sub_1D5F57FEC(v8, v7, v9, v10);
      return;
    }

    sub_1D5FA6CB0(a1, v83, &v84);

    v20 = v84;
    v21 = swift_allocObject();
    *(v21 + 16) = v8;
    *(v21 + 24) = v7;
    *(v21 + 32) = v9;
    *(v21 + 40) = v10;
    *(v21 + 48) = v20;
    v22 = 0x9000000000000000;
  }

  else
  {
    v15 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v16 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x18);

    sub_1D5F9F6DC(v15, v16, sub_1D5FAE784, &v83);
    sub_1D5FA6CB0(a1, v83, &v84);
    if (v3)
    {

      return;
    }

    v19 = v84;
    v21 = swift_allocObject();
    *(v21 + 16) = v15;
    *(v21 + 24) = v16;
    *(v21 + 32) = v19;
    v22 = 0xB000000000000000;
  }

  *a3 = v21 | v22;
}

void sub_1D5FA74A4(__int128 *a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = a1[5];
  v109 = a1[4];
  v110 = v4;
  v111 = a1[6];
  v5 = a1[1];
  v105 = *a1;
  v106 = v5;
  v6 = a1[3];
  v7 = a2 >> 60;
  v107 = a1[2];
  v108 = v6;
  if ((a2 >> 60) > 4)
  {
    if (((1 << v7) & 0xE60) == 0)
    {
      if (v7 == 7)
      {
        v10 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v9 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        v11 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v12 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
        v13 = a1[5];
        v115[4] = a1[4];
        v115[5] = v13;
        v115[6] = a1[6];
        v14 = a1[1];
        v115[0] = *a1;
        v115[1] = v14;
        v15 = a1[3];
        v115[2] = a1[2];
        v115[3] = v15;
        sub_1D5F58038(v10, v9, v11, v12);
        sub_1D5FB6948(v115, v10, v9, v11, v12, v101);
        if (v3)
        {
          sub_1D5F57FEC(v10, v9, v11, v12);
        }

        else
        {
          v114[4] = v109;
          v114[5] = v110;
          v114[6] = v111;
          v114[0] = v105;
          v114[1] = v106;
          v114[2] = v107;
          v114[3] = v108;
          sub_1D5FA74A4(v114, *&v101[0], v102);

          v36 = *&v102[0];
          v37 = swift_allocObject();
          *(v37 + 16) = v10;
          *(v37 + 24) = v9;
          *(v37 + 32) = v11;
          *(v37 + 40) = v12;
          *(v37 + 48) = v36;
          *a3 = v37 | 0x9000000000000000;
        }
      }

      else
      {
        v24 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v25 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        v26 = a1[5];
        v117[11] = a1[4];
        v117[12] = v26;
        v117[13] = a1[6];
        v27 = a1[1];
        v117[7] = *a1;
        v117[8] = v27;
        v28 = a1[3];
        v117[9] = a1[2];
        v117[10] = v28;

        sub_1D5F9E140(v24, v25, v101);
        v117[4] = v109;
        v117[5] = v110;
        v117[6] = v111;
        v117[0] = v105;
        v117[1] = v106;
        v117[3] = v108;
        v117[2] = v107;
        sub_1D5FA74A4(v117, *&v101[0], v102);
        if (v3)
        {
        }

        else
        {

          v29 = *&v102[0];
          v30 = swift_allocObject();
          *(v30 + 16) = v24;
          *(v30 + 24) = v25;
          *(v30 + 32) = v29;
          *a3 = v30 | 0xB000000000000000;
        }
      }

      return;
    }

LABEL_7:
    *a3 = a2;

    return;
  }

  if (v7 < 3)
  {
    goto LABEL_7;
  }

  if (v7 == 3)
  {
    v17 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v18 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
    v20 = swift_allocObject();
    v21 = a1[5];
    v116[4] = a1[4];
    v116[5] = v21;
    v116[6] = a1[6];
    v22 = a1[1];
    v116[0] = *a1;
    v116[1] = v22;
    v23 = a1[3];
    v116[2] = a1[2];
    v116[3] = v23;

    sub_1D5FA74A4(v116, v17, v102);
    if (v3)
    {

      swift_deallocUninitializedObject();
    }

    else
    {
      sub_1D5FA74A4(v116, v18, v101);
      v38 = *&v101[0];
      *(v20 + 16) = *&v102[0];
      *(v20 + 24) = v38;

      *a3 = v20 | 0x3000000000000000;
    }
  }

  else
  {
    v31 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v32 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
    v33 = a1[5];
    v113[4] = a1[4];
    v113[5] = v33;
    v113[6] = a1[6];
    v34 = a1[1];
    v113[0] = *a1;
    v113[1] = v34;
    v35 = a1[3];
    v113[2] = a1[2];
    v113[3] = v35;
    swift_retain_n();

    sub_1D5FA74A4(v113, v31, &v103);
    if (v3)
    {
    }

    else
    {

      v112[4] = v109;
      v112[5] = v110;
      v112[6] = v111;
      v112[0] = v105;
      v112[1] = v106;
      v112[2] = v107;
      v112[3] = v108;
      sub_1D5FA74A4(v112, v103, &v104);

      v40 = v104;
      v102[4] = v109;
      v102[5] = v110;
      v102[6] = v111;
      v102[0] = v105;
      v102[1] = v106;
      v102[2] = v107;
      v102[3] = v108;
      MEMORY[0x1EEE9AC00](v39, v41);
      v91[2] = v102;
      v42 = sub_1D5EC95F8(sub_1D5FBAAD4, v91, v32);
      v101[4] = v109;
      v101[5] = v110;
      v101[6] = v111;
      v101[0] = v105;
      v101[1] = v106;
      v101[2] = v107;
      v101[3] = v108;
      MEMORY[0x1EEE9AC00](v42, v43);
      v90 = v101;
      v44 = sub_1D5EC95F8(sub_1D5FBB128, v89, v42);
      v100 = 0;
      v97 = v44;

      *&v101[0] = v40;
      v46 = FormatColor.color.getter(v45);
      v47 = objc_opt_self();
      *&v94.f64[0] = v47;
      v48 = [v47 traitCollectionWithUserInterfaceStyle_];
      v98 = [(objc_class *)v46 resolvedColorWithTraitCollection:v48];

      *&v101[0] = v40;
      v50 = FormatColor.color.getter(v49);
      v51 = [v47 traitCollectionWithUserInterfaceStyle_];
      v99 = [(objc_class *)v50 resolvedColorWithTraitCollection:v51];

      MEMORY[0x1EEE9AC00](v52, v53);
      v90 = &v105;
      v54 = v97;
      v55 = v100;
      v56 = sub_1D632A694(v98, sub_1D5FBB140, v89, v97);
      v100 = v55;
      v57 = v94.f64[0];
      v58 = [*&v94.f64[0] traitCollectionWithUserInterfaceStyle_];
      v96 = &v92;
      v59 = v58;
      v95 = [v56 resolvedColorWithTraitCollection_];

      MEMORY[0x1EEE9AC00](v60, v61);
      v90 = &v105;
      v62 = v100;
      v63 = sub_1D632A694(v99, sub_1D5FBAAEC, v89, v54);
      v100 = v62;
      v64 = [*&v57 traitCollectionWithUserInterfaceStyle_];
      v65 = [v63 resolvedColorWithTraitCollection_];

      v66 = v95;
      sub_1D726353C();
      v92 = v68;
      v93 = v67;
      v70 = v69;
      v72 = v71;
      v73 = swift_allocObject();
      v94 = vdupq_n_s64(0x406FE00000000000uLL);
      *&v74.f64[0] = v93;
      *&v74.f64[1] = v92;
      *(v73 + 16) = vmulq_f64(v74, v94);
      *(v73 + 32) = v70 * 255.0;
      *(v73 + 40) = v72;
      *(v73 + 48) = 0;
      v75 = v73 | 0x6000000000000000;
      sub_1D726353C();
      v92 = v77;
      v93 = v76;
      v79 = v78;
      v81 = v80;

      v82 = swift_allocObject();
      *&v83.f64[0] = v93;
      *&v83.f64[1] = v92;
      *(v82 + 16) = vmulq_f64(v83, v94);
      *(v82 + 32) = v79 * 255.0;
      *(v82 + 40) = v81;
      *(v82 + 48) = 0;
      v84 = v82 | 0x6000000000000000;
      v85 = swift_allocObject();
      *(v85 + 16) = v75;
      *(v85 + 24) = v84;
      v86 = v85 | 0x3000000000000000;
      v87 = swift_allocObject();
      v88 = v97;
      *(v87 + 16) = v40;
      *(v87 + 24) = v88;
      *(v87 + 32) = v86;
      *a3 = v87 | 0xA000000000000000;
    }
  }
}

void sub_1D5FA7DC4(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v85 = a1;
  v5 = a2 >> 60;
  if ((a2 >> 60) <= 4)
  {
    if (v5 >= 3)
    {
      if (v5 == 3)
      {
        v12 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v13 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        v14 = swift_allocObject();

        sub_1D5FA7DC4(a1, v12, &v84);
        if (v3)
        {

          swift_deallocUninitializedObject();
        }

        else
        {
          sub_1D5FA7DC4(a1, v13, &v83);
          v23 = v83;
          *(v14 + 16) = v84;
          *(v14 + 24) = v23;

          *a3 = v14 | 0x3000000000000000;
        }
      }

      else
      {
        v17 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v18 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        swift_retain_n();

        sub_1D5FA7DC4(a1, v17, &v83);
        if (v3)
        {
        }

        else
        {

          sub_1D5FA7DC4(a1, v83, &v84);

          v25 = v84;
          v84 = a1;
          MEMORY[0x1EEE9AC00](v24, v26);
          v74 = &v84;
          v27 = sub_1D5EC95F8(sub_1D5FBA528, v73, v18);
          v84 = a1;
          MEMORY[0x1EEE9AC00](v27, v28);
          v74 = &v84;
          v82 = sub_1D5EC95F8(sub_1D5FBB098, v73, v27);

          v84 = v25;
          v30 = FormatColor.color.getter(v29);
          v31 = objc_opt_self();
          *&v77.f64[0] = v31;
          v32 = [v31 traitCollectionWithUserInterfaceStyle_];
          v33 = [(objc_class *)v30 resolvedColorWithTraitCollection:v32];
          v81 = v33;

          v84 = v25;
          v35 = FormatColor.color.getter(v34);
          v36 = [v31 traitCollectionWithUserInterfaceStyle_];
          v79 = [(objc_class *)v35 resolvedColorWithTraitCollection:v36];

          MEMORY[0x1EEE9AC00](v37, v38);
          v74 = &v85;
          v39 = v82;
          v40 = sub_1D632A694(v33, sub_1D5FBB0B0, v73, v82);
          v80 = 0;
          v41 = v77.f64[0];
          v42 = [*&v77.f64[0] traitCollectionWithUserInterfaceStyle_];
          v78 = [v40 resolvedColorWithTraitCollection_];

          MEMORY[0x1EEE9AC00](v43, v44);
          v74 = &v85;
          v46 = v79;
          v45 = v80;
          v47 = sub_1D632A694(v79, sub_1D5FBA57C, v73, v39);
          v80 = v45;
          v48 = [*&v41 traitCollectionWithUserInterfaceStyle_];
          v49 = [v47 resolvedColorWithTraitCollection_];

          v50 = v78;
          sub_1D726353C();
          v75 = v52;
          v76 = v51;
          v54 = v53;
          v56 = v55;
          v57 = swift_allocObject();
          v77 = vdupq_n_s64(0x406FE00000000000uLL);
          *&v58.f64[0] = v76;
          *&v58.f64[1] = v75;
          *(v57 + 16) = vmulq_f64(v58, v77);
          *(v57 + 32) = v54 * 255.0;
          *(v57 + 40) = v56;
          *(v57 + 48) = 0;
          v59 = v57 | 0x6000000000000000;
          sub_1D726353C();
          v75 = v61;
          v76 = v60;
          v63 = v62;
          v65 = v64;

          v66 = swift_allocObject();
          *&v67.f64[0] = v76;
          *&v67.f64[1] = v75;
          *(v66 + 16) = vmulq_f64(v67, v77);
          *(v66 + 32) = v63 * 255.0;
          *(v66 + 40) = v65;
          *(v66 + 48) = 0;
          v68 = v66 | 0x6000000000000000;
          v69 = swift_allocObject();
          *(v69 + 16) = v59;
          *(v69 + 24) = v68;
          v70 = v69 | 0x3000000000000000;
          v71 = swift_allocObject();
          v72 = v82;
          *(v71 + 16) = v25;
          *(v71 + 24) = v72;
          *(v71 + 32) = v70;
          *a3 = v71 | 0xA000000000000000;
        }
      }

      return;
    }

LABEL_7:
    *a3 = a2;

    return;
  }

  if (((1 << v5) & 0xE60) != 0)
  {
    goto LABEL_7;
  }

  if (v5 == 7)
  {
    v8 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v7 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
    v9 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
    v10 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
    sub_1D5F58038(v8, v7, v9, v10);
    sub_1D5FB6E58(a1, v8, v7, v9, v10, &v83);
    if (v3)
    {
      sub_1D5F57FEC(v8, v7, v9, v10);
      return;
    }

    sub_1D5FA7DC4(a1, v83, &v84);

    v20 = v84;
    v21 = swift_allocObject();
    *(v21 + 16) = v8;
    *(v21 + 24) = v7;
    *(v21 + 32) = v9;
    *(v21 + 40) = v10;
    *(v21 + 48) = v20;
    v22 = 0x9000000000000000;
  }

  else
  {
    v15 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v16 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x18);

    sub_1D5F9E8E0(v15, v16, &v83);
    sub_1D5FA7DC4(a1, v83, &v84);
    if (v3)
    {

      return;
    }

    v19 = v84;
    v21 = swift_allocObject();
    *(v21 + 16) = v15;
    *(v21 + 24) = v16;
    *(v21 + 32) = v19;
    v22 = 0xB000000000000000;
  }

  *a3 = v21 | v22;
}

void sub_1D5FA85A4(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v5 = a2 >> 60;
  if ((a2 >> 60) > 4)
  {
    if (((1 << v5) & 0xE60) == 0)
    {
      v6 = a3;
      if (v5 == 7)
      {
        v8 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v7 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        v9 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v10 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
        sub_1D5F58038(v8, v7, v9, v10);
        sub_1D5FB75BC(a1, v8, v7, v9, v10, &v77);
        if (v3)
        {
          sub_1D5F57FEC(v8, v7, v9, v10);
          return;
        }

        sub_1D5FA85A4(a1, v77, &v78);

        v19 = v78;
        v20 = swift_allocObject();
        *(v20 + 16) = v8;
        *(v20 + 24) = v7;
        *(v20 + 32) = v9;
        *(v20 + 40) = v10;
        *(v20 + 48) = v19;
        v21 = 0x9000000000000000;
      }

      else
      {
        v14 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v15 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x18);

        sub_1D5F9FD80(v14, v15, &v77);
        sub_1D5FA85A4(a1, v77, &v78);
        if (v3)
        {

          return;
        }

        v18 = v78;
        v20 = swift_allocObject();
        *(v20 + 16) = v14;
        *(v20 + 24) = v15;
        *(v20 + 32) = v18;
        v21 = 0xB000000000000000;
      }

LABEL_20:
      *v6 = v20 | v21;
      return;
    }

LABEL_7:
    *a3 = a2;

    return;
  }

  if (v5 < 3)
  {
    goto LABEL_7;
  }

  v6 = a3;
  if (v5 != 3)
  {
    v16 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v17 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
    swift_retain_n();

    sub_1D5FA85A4(a1, v16, &v77);
    if (v3)
    {

      return;
    }

    sub_1D5FA85A4(a1, v77, &v78);

    v24 = v78;
    MEMORY[0x1EEE9AC00](v23, v25);
    v69 = a1;
    v26 = sub_1D5EC95F8(sub_1D5FBA86C, v68, v17);
    MEMORY[0x1EEE9AC00](v26, v27);
    v69 = a1;
    v74 = sub_1D5EC95F8(sub_1D5FBB110, v68, v26);

    v78 = v24;
    v29 = FormatColor.color.getter(v28);
    v30 = objc_opt_self();
    v31 = [v30 traitCollectionWithUserInterfaceStyle_];
    v76 = [(objc_class *)v29 resolvedColorWithTraitCollection:v31];

    v78 = v24;
    v33 = FormatColor.color.getter(v32);
    v34 = [v30 traitCollectionWithUserInterfaceStyle_];
    v75 = [(objc_class *)v33 resolvedColorWithTraitCollection:v34];

    MEMORY[0x1EEE9AC00](v35, v36);
    v69 = a1;
    v37 = v74;
    v38 = sub_1D632A694(v76, sub_1D5FBB03C, v68, v74);
    v72.f64[0] = 0.0;
    v39 = v30;
    v40 = [v30 traitCollectionWithUserInterfaceStyle_];
    v73 = [v38 resolvedColorWithTraitCollection_];

    MEMORY[0x1EEE9AC00](v41, v42);
    v69 = a1;
    v43 = sub_1D632A694(v75, sub_1D5FBA8C0, v68, v37);
    v44 = [v39 traitCollectionWithUserInterfaceStyle_];
    v45 = [v43 resolvedColorWithTraitCollection_];

    v46 = v73;
    sub_1D726353C();
    v70 = v48;
    v71 = v47;
    v50 = v49;
    v52 = v51;
    v53 = swift_allocObject();
    v72 = vdupq_n_s64(0x406FE00000000000uLL);
    *&v54.f64[0] = v71;
    *&v54.f64[1] = v70;
    *(v53 + 16) = vmulq_f64(v54, v72);
    *(v53 + 32) = v50 * 255.0;
    *(v53 + 40) = v52;
    *(v53 + 48) = 0;
    v55 = v53 | 0x6000000000000000;
    sub_1D726353C();
    v70 = v57;
    v71 = v56;
    v59 = v58;
    v61 = v60;

    v62 = swift_allocObject();
    *&v63.f64[0] = v71;
    *&v63.f64[1] = v70;
    *(v62 + 16) = vmulq_f64(v63, v72);
    *(v62 + 32) = v59 * 255.0;
    *(v62 + 40) = v61;
    *(v62 + 48) = 0;
    v64 = v62 | 0x6000000000000000;
    v65 = swift_allocObject();
    *(v65 + 16) = v55;
    *(v65 + 24) = v64;
    v66 = v65 | 0x3000000000000000;
    v20 = swift_allocObject();
    v67 = v74;
    *(v20 + 16) = v24;
    *(v20 + 24) = v67;
    *(v20 + 32) = v66;
    v21 = 0xA000000000000000;
    goto LABEL_20;
  }

  v11 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
  v12 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
  v13 = swift_allocObject();

  sub_1D5FA85A4(a1, v11, &v78);
  if (v3)
  {

    swift_deallocUninitializedObject();
  }

  else
  {
    sub_1D5FA85A4(a1, v12, &v77);
    v22 = v77;
    *(v13 + 16) = v78;
    *(v13 + 24) = v22;

    *v6 = v13 | 0x3000000000000000;
  }
}

void sub_1D5FA8D3C(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v5 = a2 >> 60;
  if ((a2 >> 60) > 4)
  {
    if (((1 << v5) & 0xE60) == 0)
    {
      v6 = a3;
      if (v5 == 7)
      {
        v8 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v7 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        v9 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v10 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
        sub_1D5F58038(v8, v7, v9, v10);
        sub_1D5FB79AC(a1, v8, v7, v9, v10, &v77);
        if (v3)
        {
          sub_1D5F57FEC(v8, v7, v9, v10);
          return;
        }

        sub_1D5FA8D3C(a1, v77, &v78);

        v19 = v78;
        v20 = swift_allocObject();
        *(v20 + 16) = v8;
        *(v20 + 24) = v7;
        *(v20 + 32) = v9;
        *(v20 + 40) = v10;
        *(v20 + 48) = v19;
        v21 = 0x9000000000000000;
      }

      else
      {
        v14 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v15 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x18);

        sub_1D5FA073C(v14, v15, &v77);
        sub_1D5FA8D3C(a1, v77, &v78);
        if (v3)
        {

          return;
        }

        v18 = v78;
        v20 = swift_allocObject();
        *(v20 + 16) = v14;
        *(v20 + 24) = v15;
        *(v20 + 32) = v18;
        v21 = 0xB000000000000000;
      }

LABEL_20:
      *v6 = v20 | v21;
      return;
    }

LABEL_7:
    *a3 = a2;

    return;
  }

  if (v5 < 3)
  {
    goto LABEL_7;
  }

  v6 = a3;
  if (v5 != 3)
  {
    v16 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v17 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
    swift_retain_n();

    sub_1D5FA8D3C(a1, v16, &v77);
    if (v3)
    {

      return;
    }

    sub_1D5FA8D3C(a1, v77, &v78);

    v24 = v78;
    MEMORY[0x1EEE9AC00](v23, v25);
    v69 = a1;
    v26 = sub_1D5EC95F8(sub_1D5FBA798, v68, v17);
    MEMORY[0x1EEE9AC00](v26, v27);
    v69 = a1;
    v74 = sub_1D5EC95F8(sub_1D5FBB0F8, v68, v26);

    v78 = v24;
    v29 = FormatColor.color.getter(v28);
    v30 = objc_opt_self();
    v31 = [v30 traitCollectionWithUserInterfaceStyle_];
    v76 = [(objc_class *)v29 resolvedColorWithTraitCollection:v31];

    v78 = v24;
    v33 = FormatColor.color.getter(v32);
    v34 = [v30 traitCollectionWithUserInterfaceStyle_];
    v75 = [(objc_class *)v33 resolvedColorWithTraitCollection:v34];

    MEMORY[0x1EEE9AC00](v35, v36);
    v69 = a1;
    v37 = v74;
    v38 = sub_1D632A694(v76, sub_1D5FBB024, v68, v74);
    v72.f64[0] = 0.0;
    v39 = v30;
    v40 = [v30 traitCollectionWithUserInterfaceStyle_];
    v73 = [v38 resolvedColorWithTraitCollection_];

    MEMORY[0x1EEE9AC00](v41, v42);
    v69 = a1;
    v43 = sub_1D632A694(v75, sub_1D5FBA7EC, v68, v37);
    v44 = [v39 traitCollectionWithUserInterfaceStyle_];
    v45 = [v43 resolvedColorWithTraitCollection_];

    v46 = v73;
    sub_1D726353C();
    v70 = v48;
    v71 = v47;
    v50 = v49;
    v52 = v51;
    v53 = swift_allocObject();
    v72 = vdupq_n_s64(0x406FE00000000000uLL);
    *&v54.f64[0] = v71;
    *&v54.f64[1] = v70;
    *(v53 + 16) = vmulq_f64(v54, v72);
    *(v53 + 32) = v50 * 255.0;
    *(v53 + 40) = v52;
    *(v53 + 48) = 0;
    v55 = v53 | 0x6000000000000000;
    sub_1D726353C();
    v70 = v57;
    v71 = v56;
    v59 = v58;
    v61 = v60;

    v62 = swift_allocObject();
    *&v63.f64[0] = v71;
    *&v63.f64[1] = v70;
    *(v62 + 16) = vmulq_f64(v63, v72);
    *(v62 + 32) = v59 * 255.0;
    *(v62 + 40) = v61;
    *(v62 + 48) = 0;
    v64 = v62 | 0x6000000000000000;
    v65 = swift_allocObject();
    *(v65 + 16) = v55;
    *(v65 + 24) = v64;
    v66 = v65 | 0x3000000000000000;
    v20 = swift_allocObject();
    v67 = v74;
    *(v20 + 16) = v24;
    *(v20 + 24) = v67;
    *(v20 + 32) = v66;
    v21 = 0xA000000000000000;
    goto LABEL_20;
  }

  v11 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
  v12 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
  v13 = swift_allocObject();

  sub_1D5FA8D3C(a1, v11, &v78);
  if (v3)
  {

    swift_deallocUninitializedObject();
  }

  else
  {
    sub_1D5FA8D3C(a1, v12, &v77);
    v22 = v77;
    *(v13 + 16) = v78;
    *(v13 + 24) = v22;

    *v6 = v13 | 0x3000000000000000;
  }
}

void sub_1D5FA94D4(__int128 *a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = a1[3];
  v107 = a1[2];
  v108 = v4;
  v5 = a1[5];
  v109 = a1[4];
  v110 = v5;
  v6 = a1[1];
  v105 = *a1;
  v106 = v6;
  v7 = a2 >> 60;
  if ((a2 >> 60) > 4)
  {
    if (((1 << v7) & 0xE60) == 0)
    {
      if (v7 == 7)
      {
        v10 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v9 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        v11 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v12 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
        v13 = a1[3];
        v114[2] = a1[2];
        v114[3] = v13;
        v14 = a1[5];
        v114[4] = a1[4];
        v114[5] = v14;
        v15 = a1[1];
        v114[0] = *a1;
        v114[1] = v15;
        sub_1D5F58038(v10, v9, v11, v12);
        sub_1D5FB7E54(v114, v10, v9, v11, v12, v101);
        if (v3)
        {
          sub_1D5F57FEC(v10, v9, v11, v12);
        }

        else
        {
          v113[2] = v107;
          v113[3] = v108;
          v113[4] = v109;
          v113[5] = v110;
          v113[0] = v105;
          v113[1] = v106;
          sub_1D5FA94D4(v113, *&v101[0], v102);

          v36 = *&v102[0];
          v37 = swift_allocObject();
          *(v37 + 16) = v10;
          *(v37 + 24) = v9;
          *(v37 + 32) = v11;
          *(v37 + 40) = v12;
          *(v37 + 48) = v36;
          *a3 = v37 | 0x9000000000000000;
        }
      }

      else
      {
        v24 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v25 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        v26 = a1[3];
        v117[2] = a1[2];
        v117[3] = v26;
        v27 = a1[5];
        v117[4] = a1[4];
        v117[5] = v27;
        v28 = a1[1];
        v117[0] = *a1;
        v117[1] = v28;

        sub_1D5FA0FD8(v117, v24, v25, v101);
        v116[2] = v107;
        v116[3] = v108;
        v116[4] = v109;
        v116[5] = v110;
        v116[0] = v105;
        v116[1] = v106;
        sub_1D5FA94D4(v116, *&v101[0], v102);
        if (v3)
        {
        }

        else
        {

          v29 = *&v102[0];
          v30 = swift_allocObject();
          *(v30 + 16) = v24;
          *(v30 + 24) = v25;
          *(v30 + 32) = v29;
          *a3 = v30 | 0xB000000000000000;
        }
      }

      return;
    }

LABEL_7:
    *a3 = a2;

    return;
  }

  if (v7 < 3)
  {
    goto LABEL_7;
  }

  if (v7 == 3)
  {
    v17 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v18 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
    v20 = swift_allocObject();
    v21 = a1[3];
    v115[2] = a1[2];
    v115[3] = v21;
    v22 = a1[5];
    v115[4] = a1[4];
    v115[5] = v22;
    v23 = a1[1];
    v115[0] = *a1;
    v115[1] = v23;

    sub_1D5FA94D4(v115, v17, v102);
    if (v3)
    {

      swift_deallocUninitializedObject();
    }

    else
    {
      sub_1D5FA94D4(v115, v18, v101);
      v38 = *&v101[0];
      *(v20 + 16) = *&v102[0];
      *(v20 + 24) = v38;

      *a3 = v20 | 0x3000000000000000;
    }
  }

  else
  {
    v31 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v32 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
    v33 = a1[3];
    v112[2] = a1[2];
    v112[3] = v33;
    v34 = a1[5];
    v112[4] = a1[4];
    v112[5] = v34;
    v35 = a1[1];
    v112[0] = *a1;
    v112[1] = v35;
    swift_retain_n();

    sub_1D5FA94D4(v112, v31, &v103);
    if (v3)
    {
    }

    else
    {

      v111[2] = v107;
      v111[3] = v108;
      v111[4] = v109;
      v111[5] = v110;
      v111[0] = v105;
      v111[1] = v106;
      sub_1D5FA94D4(v111, v103, &v104);

      v40 = v104;
      v102[2] = v107;
      v102[3] = v108;
      v102[4] = v109;
      v102[5] = v110;
      v102[0] = v105;
      v102[1] = v106;
      MEMORY[0x1EEE9AC00](v39, v41);
      v91[2] = v102;
      v42 = sub_1D5EC95F8(sub_1D5FBA34C, v91, v32);
      v101[2] = v107;
      v101[3] = v108;
      v101[4] = v109;
      v101[5] = v110;
      v101[0] = v105;
      v101[1] = v106;
      MEMORY[0x1EEE9AC00](v42, v43);
      v90 = v101;
      v44 = sub_1D5EC95F8(sub_1D5FBB068, v89, v42);
      v100 = 0;
      v97 = v44;

      *&v101[0] = v40;
      v46 = FormatColor.color.getter(v45);
      v47 = objc_opt_self();
      *&v94.f64[0] = v47;
      v48 = [v47 traitCollectionWithUserInterfaceStyle_];
      v98 = [(objc_class *)v46 resolvedColorWithTraitCollection:v48];

      *&v101[0] = v40;
      v50 = FormatColor.color.getter(v49);
      v51 = [v47 traitCollectionWithUserInterfaceStyle_];
      v99 = [(objc_class *)v50 resolvedColorWithTraitCollection:v51];

      MEMORY[0x1EEE9AC00](v52, v53);
      v90 = &v105;
      v54 = v97;
      v55 = v100;
      v56 = sub_1D632A694(v98, sub_1D5FBB080, v89, v97);
      v100 = v55;
      v57 = v94.f64[0];
      v58 = [*&v94.f64[0] traitCollectionWithUserInterfaceStyle_];
      v96 = &v92;
      v59 = v58;
      v95 = [v56 resolvedColorWithTraitCollection_];

      MEMORY[0x1EEE9AC00](v60, v61);
      v90 = &v105;
      v62 = v100;
      v63 = sub_1D632A694(v99, sub_1D5FBA364, v89, v54);
      v100 = v62;
      v64 = [*&v57 traitCollectionWithUserInterfaceStyle_];
      v65 = [v63 resolvedColorWithTraitCollection_];

      v66 = v95;
      sub_1D726353C();
      v92 = v68;
      v93 = v67;
      v70 = v69;
      v72 = v71;
      v73 = swift_allocObject();
      v94 = vdupq_n_s64(0x406FE00000000000uLL);
      *&v74.f64[0] = v93;
      *&v74.f64[1] = v92;
      *(v73 + 16) = vmulq_f64(v74, v94);
      *(v73 + 32) = v70 * 255.0;
      *(v73 + 40) = v72;
      *(v73 + 48) = 0;
      v75 = v73 | 0x6000000000000000;
      sub_1D726353C();
      v92 = v77;
      v93 = v76;
      v79 = v78;
      v81 = v80;

      v82 = swift_allocObject();
      *&v83.f64[0] = v93;
      *&v83.f64[1] = v92;
      *(v82 + 16) = vmulq_f64(v83, v94);
      *(v82 + 32) = v79 * 255.0;
      *(v82 + 40) = v81;
      *(v82 + 48) = 0;
      v84 = v82 | 0x6000000000000000;
      v85 = swift_allocObject();
      *(v85 + 16) = v75;
      *(v85 + 24) = v84;
      v86 = v85 | 0x3000000000000000;
      v87 = swift_allocObject();
      v88 = v97;
      *(v87 + 16) = v40;
      *(v87 + 24) = v88;
      *(v87 + 32) = v86;
      *a3 = v87 | 0xA000000000000000;
    }
  }
}

void sub_1D5FA9D9C(__int128 *a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = a1[7];
  v121 = a1[6];
  v122 = v4;
  v123 = a1[8];
  v124 = *(a1 + 18);
  v5 = a1[3];
  v117 = a1[2];
  v118 = v5;
  v6 = a1[5];
  v119 = a1[4];
  v120 = v6;
  v7 = a1[1];
  v8 = a2 >> 60;
  v115 = *a1;
  v116 = v7;
  if ((a2 >> 60) > 4)
  {
    if (((1 << v8) & 0xE60) == 0)
    {
      if (v8 == 7)
      {
        v11 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v10 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        v12 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v13 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
        v14 = a1[7];
        v131[6] = a1[6];
        v131[7] = v14;
        v131[8] = a1[8];
        v132 = *(a1 + 18);
        v15 = a1[3];
        v131[2] = a1[2];
        v131[3] = v15;
        v16 = a1[5];
        v131[4] = a1[4];
        v131[5] = v16;
        v17 = a1[1];
        v131[0] = *a1;
        v131[1] = v17;
        sub_1D5F58038(v11, v10, v12, v13);
        sub_1D5FB82C8(v131, v11, v10, v13, v109);
        if (v3)
        {
          sub_1D5F57FEC(v11, v10, v12, v13);
        }

        else
        {
          v129[7] = v122;
          v129[8] = v123;
          v130 = v124;
          v129[2] = v117;
          v129[3] = v118;
          v129[4] = v119;
          v129[5] = v120;
          v129[6] = v121;
          v129[0] = v115;
          v129[1] = v116;
          sub_1D5FA9D9C(v129, *&v109[0], v111);

          v41 = *&v111[0];
          v42 = swift_allocObject();
          *(v42 + 16) = v11;
          *(v42 + 24) = v10;
          *(v42 + 32) = v12;
          *(v42 + 40) = v13;
          *(v42 + 48) = v41;
          *a3 = v42 | 0x9000000000000000;
        }
      }

      else
      {
        v27 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v28 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        v29 = a1[7];
        v137[6] = a1[6];
        v137[7] = v29;
        v137[8] = a1[8];
        v138 = *(a1 + 18);
        v30 = a1[3];
        v137[2] = a1[2];
        v137[3] = v30;
        v31 = a1[5];
        v137[4] = a1[4];
        v137[5] = v31;
        v32 = a1[1];
        v137[0] = *a1;
        v137[1] = v32;

        sub_1D5FA1914(v137, v27, v28, v109);
        v135[6] = v121;
        v135[7] = v122;
        v135[8] = v123;
        v136 = v124;
        v135[2] = v117;
        v135[3] = v118;
        v135[4] = v119;
        v135[5] = v120;
        v135[0] = v115;
        v135[1] = v116;
        sub_1D5FA9D9C(v135, *&v109[0], v111);
        if (v3)
        {
        }

        else
        {

          v33 = *&v111[0];
          v34 = swift_allocObject();
          *(v34 + 16) = v27;
          *(v34 + 24) = v28;
          *(v34 + 32) = v33;
          *a3 = v34 | 0xB000000000000000;
        }
      }

      return;
    }

LABEL_7:
    *a3 = a2;

    return;
  }

  if (v8 < 3)
  {
    goto LABEL_7;
  }

  if (v8 == 3)
  {
    v19 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v20 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
    v22 = swift_allocObject();
    v23 = a1[7];
    v133[6] = a1[6];
    v133[7] = v23;
    v133[8] = a1[8];
    v134 = *(a1 + 18);
    v24 = a1[3];
    v133[2] = a1[2];
    v133[3] = v24;
    v25 = a1[5];
    v133[4] = a1[4];
    v133[5] = v25;
    v26 = a1[1];
    v133[0] = *a1;
    v133[1] = v26;

    sub_1D5FA9D9C(v133, v19, v111);
    if (v3)
    {

      swift_deallocUninitializedObject();
    }

    else
    {
      sub_1D5FA9D9C(v133, v20, v109);
      v43 = *&v109[0];
      *(v22 + 16) = *&v111[0];
      *(v22 + 24) = v43;

      *a3 = v22 | 0x3000000000000000;
    }
  }

  else
  {
    v35 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v36 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
    v37 = a1[7];
    v127[6] = a1[6];
    v127[7] = v37;
    v127[8] = a1[8];
    v128 = *(a1 + 18);
    v38 = a1[3];
    v127[2] = a1[2];
    v127[3] = v38;
    v39 = a1[5];
    v127[4] = a1[4];
    v127[5] = v39;
    v40 = a1[1];
    v127[0] = *a1;
    v127[1] = v40;
    swift_retain_n();

    sub_1D5FA9D9C(v127, v35, &v113);
    if (v3)
    {
    }

    else
    {

      v125[6] = v121;
      v125[7] = v122;
      v125[8] = v123;
      v126 = v124;
      v125[2] = v117;
      v125[3] = v118;
      v125[4] = v119;
      v125[5] = v120;
      v125[0] = v115;
      v125[1] = v116;
      sub_1D5FA9D9C(v125, v113, &v114);

      v112 = v124;
      v45 = v114;
      v111[6] = v121;
      v111[7] = v122;
      v111[8] = v123;
      v111[2] = v117;
      v111[3] = v118;
      v111[4] = v119;
      v111[5] = v120;
      v111[0] = v115;
      v111[1] = v116;
      MEMORY[0x1EEE9AC00](v44, v46);
      v98[2] = v111;
      v47 = sub_1D5EC95F8(sub_1D5FBAD40, v98, v36);
      v110 = v124;
      v109[6] = v121;
      v109[7] = v122;
      v109[8] = v123;
      v109[2] = v117;
      v109[3] = v118;
      v109[4] = v119;
      v109[5] = v120;
      v109[0] = v115;
      v109[1] = v116;
      MEMORY[0x1EEE9AC00](v47, v48);
      v97 = v109;
      v49 = sub_1D5EC95F8(sub_1D5FBB158, v96, v47);
      v108 = 0;
      v107 = v49;

      *&v109[0] = v45;
      v51 = FormatColor.color.getter(v50);
      v101[0] = objc_opt_self();
      v105 = v45;
      v52 = [v101[0] traitCollectionWithUserInterfaceStyle_];
      v53 = [(objc_class *)v51 resolvedColorWithTraitCollection:v52];
      v104 = v53;

      *&v109[0] = v45;
      v55 = FormatColor.color.getter(v54);
      v56 = v101[0];
      v57 = [v101[0] traitCollectionWithUserInterfaceStyle_];
      v103 = [(objc_class *)v55 resolvedColorWithTraitCollection:v57];

      MEMORY[0x1EEE9AC00](v58, v59);
      v97 = &v115;
      v60 = v53;
      v62 = v107;
      v61 = v108;
      v63 = sub_1D632A694(v60, sub_1D5FBB170, v96, v107);
      v108 = v61;
      v64 = [v56 traitCollectionWithUserInterfaceStyle_];
      v106 = &v99;
      v65 = v64;
      v102 = [v63 resolvedColorWithTraitCollection_];

      MEMORY[0x1EEE9AC00](v66, v67);
      v97 = &v115;
      v68 = v103;
      v69 = v108;
      v70 = sub_1D632A694(v103, sub_1D5FBAD58, v96, v62);
      v108 = v69;
      v71 = [v56 traitCollectionWithUserInterfaceStyle_];
      v72 = [v70 resolvedColorWithTraitCollection_];

      v73 = v102;
      sub_1D726353C();
      v99 = v75;
      v100 = v74;
      v77 = v76;
      v79 = v78;
      v80 = swift_allocObject();
      *v101 = vdupq_n_s64(0x406FE00000000000uLL);
      *&v81.f64[0] = v100;
      *&v81.f64[1] = v99;
      *(v80 + 16) = vmulq_f64(v81, *v101);
      *(v80 + 32) = v77 * 255.0;
      *(v80 + 40) = v79;
      *(v80 + 48) = 0;
      v82 = v80 | 0x6000000000000000;
      sub_1D726353C();
      v99 = v84;
      v100 = v83;
      v86 = v85;
      v88 = v87;

      v89 = swift_allocObject();
      *&v90.f64[0] = v100;
      *&v90.f64[1] = v99;
      *(v89 + 16) = vmulq_f64(v90, *v101);
      *(v89 + 32) = v86 * 255.0;
      *(v89 + 40) = v88;
      *(v89 + 48) = 0;
      v91 = v89 | 0x6000000000000000;
      v92 = swift_allocObject();
      *(v92 + 16) = v82;
      *(v92 + 24) = v91;
      v93 = v92 | 0x3000000000000000;
      v94 = swift_allocObject();
      v95 = v107;
      *(v94 + 16) = v105;
      *(v94 + 24) = v95;
      *(v94 + 32) = v93;
      *a3 = v94 | 0xA000000000000000;
    }
  }
}

uint64_t FormatSymbolImage.name.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  return sub_1D5FB995C(v2, v3, v4, v5);
}

void FormatSymbolImage.config.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 48);
  *(a1 + 16) = v4;
  sub_1D5FB999C(v2, v3, v4);
}

double FormatSymbolImage.fill.getter@<D0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 56);
  v3 = *(v1 + 64);
  *a1 = v2;
  a1[1] = v3;
  return sub_1D5FB99B0(v2, v3);
}

uint64_t FormatSymbolImage.internal.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  v3 = *(v1 + 80);
  v4 = *(v1 + 88);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  return sub_1D5E04CC4(v2, v3, v4);
}

uint64_t sub_1D5FAA7E0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a2 + 72);
  v7 = *(a2 + 80);
  v8 = *(a2 + 88);
  sub_1D5E04CC4(*a1, v4, v5);
  result = sub_1D5D2F2C4(v6, v7, v8);
  *(a2 + 72) = v3;
  *(a2 + 80) = v4;
  *(a2 + 88) = v5;
  return result;
}

uint64_t FormatSymbolImage.internal.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = sub_1D5D2F2C4(*(v1 + 72), *(v1 + 80), *(v1 + 88));
  *(v1 + 72) = v2;
  *(v1 + 80) = v3;
  *(v1 + 88) = v4;
  return result;
}

double FormatSymbolImage.color.getter@<D0>(unint64_t *a1@<X8>)
{
  v2 = *(v1 + 96);
  *a1 = v2;
  return sub_1D5FB99FC(v2);
}

id FormatSymbolImageColor.symbolConfiguration(context:)(uint64_t a1)
{
  v4 = *v1;
  v5 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v5 != 2)
    {
      v18 = objc_opt_self();
      if (v4 == 0xC000000000000000)
      {
        return [v18 configurationPreferringMulticolor];
      }

      else
      {
        return [v18 configurationPreferringMonochrome];
      }
    }

    v13 = *((v4 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v14 = *((v4 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    sub_1D5F33D5C(v13);

    sub_1D5F9ED00(v13, v14, sub_1D5F33D5C, sub_1D5FA2640, &v22);
    v15 = v22;
    v21 = v22;
    v4 = FormatSymbolImageColor.symbolConfiguration(context:)(a1);
    sub_1D5F33D8C(v15);
    sub_1D5F33D8C(v13);

    return v4;
  }

  if (v5)
  {
    v16 = *((v4 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);

    sub_1D5FA6CB0(a1, v16, &v22);
    if (!v2)
    {
      v21 = v22;
      v19 = FormatColor.color.getter(v17);

      v20 = [objc_opt_self() configurationWithHierarchicalColor_];

      return v20;
    }

LABEL_19:

    return v4;
  }

  v6 = *(v4 + 16);
  v7 = *(v6 + 16);
  if (!v7)
  {
LABEL_9:
    sub_1D5C0B9F0();
    v12 = sub_1D726265C();

    v4 = [objc_opt_self() configurationWithPaletteColors_];

    return v4;
  }

  v22 = MEMORY[0x1E69E7CC0];

  v4 = &v22;
  result = sub_1D7263ECC();
  v9 = 0;
  while (v9 < *(v6 + 16))
  {
    v10 = *(v6 + 8 * v9 + 32);

    sub_1D5FA6CB0(a1, v10, &v21);
    if (v2)
    {

      goto LABEL_19;
    }

    ++v9;
    FormatColor.color.getter(v11);

    sub_1D7263E9C();
    sub_1D7263EDC();
    sub_1D7263EEC();
    v4 = &v22;
    result = sub_1D7263EAC();
    if (v7 == v9)
    {

      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

double FormatSymbolImageFill.fillColor.getter@<D0>(uint64_t *a1@<X8>)
{
  *a1 = *v1;

  return result;
}

double FormatSymbolImageFill.symbolColor.getter@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 8);

  return result;
}

uint64_t static FormatSymbolImageColor.== infix(_:_:)(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1 >> 62;
  if (v4 <= 1)
  {
    if (v4)
    {
      if (v3 >> 62 == 1)
      {
        v14 = *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        v18[0] = *((v2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        v17[0] = v14;
        sub_1D5F33D5C(v3);
        sub_1D5F33D5C(v2);
        v8 = static FormatColor.== infix(_:_:)(v18, v17);
        goto LABEL_12;
      }
    }

    else if (!(v3 >> 62))
    {
      v5 = *(v2 + 16);
      v6 = *(v3 + 16);
      sub_1D5F33D5C(*a2);
      sub_1D5F33D5C(v2);

      sub_1D6359350(v5, v6);
      v8 = v7;

LABEL_12:
      sub_1D5F33D8C(v2);
      sub_1D5F33D8C(v3);
      return v8 & 1;
    }

    goto LABEL_19;
  }

  if (v4 != 2)
  {
    if (v2 == 0xC000000000000000)
    {
      if (v3 != 0xC000000000000000)
      {
        goto LABEL_19;
      }

      sub_1D5F33D8C(0xC000000000000000);
      v15 = 0xC000000000000000;
    }

    else
    {
      if (v3 != 0xC000000000000008)
      {
        goto LABEL_19;
      }

      sub_1D5F33D8C(0xC000000000000008);
      v15 = 0xC000000000000008;
    }

    sub_1D5F33D8C(v15);
    v8 = 1;
    return v8 & 1;
  }

  if (v3 >> 62 != 2)
  {
LABEL_19:
    sub_1D5F33D5C(*a2);
    sub_1D5F33D5C(v2);
LABEL_20:
    sub_1D5F33D8C(v2);
    sub_1D5F33D8C(v3);
    goto LABEL_21;
  }

  v9 = *((v2 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
  v11 = *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  v10 = *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
  v18[0] = *((v2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  v18[1] = v9;
  v17[0] = v11;
  v17[1] = v10;
  sub_1D5F33D5C(v3);
  sub_1D5F33D5C(v2);
  sub_1D5F33D5C(v11);

  if ((static FormatSymbolImageColor.== infix(_:_:)(v18, v17) & 1) == 0)
  {
    sub_1D5F33D8C(v11);

    goto LABEL_20;
  }

  sub_1D6359438(v9, v10);
  v13 = v12;

  sub_1D5F33D8C(v11);

  sub_1D5F33D8C(v2);
  sub_1D5F33D8C(v3);
  if ((v13 & 1) == 0)
  {
LABEL_21:
    v8 = 0;
    return v8 & 1;
  }

  v8 = 1;
  return v8 & 1;
}

uint64_t sub_1D5FAAEB0(uint64_t a1, uint64_t a2, void **a3, uint64_t a4, void *a5)
{
  v51[2] = *MEMORY[0x1E69E9840];
  if (qword_1EDF2AB18 != -1)
  {
    goto LABEL_96;
  }

  while (1)
  {
    v51[0] = a2;
    v51[1] = a3;

    v9 = sub_1D6844380(v51);

    v46 = *(v9 + 16);
    if (!v46)
    {
LABEL_91:

      return 0;
    }

    v41 = a5;
    v42 = a4;
    v10 = 0;
    v50 = 0;
    v45 = v9 + 32;
    v47 = v9;
    v43 = a1;
LABEL_7:
    if (v10 < *(v9 + 16))
    {
      break;
    }

LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    v39 = a2;
    swift_once();
    a2 = v39;
  }

  v48 = v10;
  v11 = (v45 + 56 * v10);
  v12 = v11[1];
  v14 = v11[3];
  v13 = v11[4];
  v15 = v11[5];
  v16 = v11[6];
  LOBYTE(v11) = *(v14 + 32);
  a3 = (v11 & 0x3F);
  v17 = ((1 << v11) + 63) >> 6;
  v18 = (8 * v17);
  swift_bridgeObjectRetain_n();

  v49 = v12;
  v19 = v13;

  if (a3 > 0xD)
  {
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if ((isStackAllocationSafe & 1) == 0)
    {
      v18 = swift_slowAlloc();

      v37 = v50;
      a5 = sub_1D5FB8844(v18, v17, v14, a1, sub_1D5FB88DC);

      v50 = v37;
      if (v37)
      {
        goto LABEL_98;
      }

      MEMORY[0x1DA6FD500](v18, -1, -1);
      goto LABEL_11;
    }
  }

  a3 = &v41;
  MEMORY[0x1EEE9AC00](isStackAllocationSafe, v21);
  bzero(&v41 - ((v18 + 15) & 0x3FFFFFFFFFFFFFF0), v18);
  v22 = v50;
  sub_1D5FB88DC((&v41 - ((v18 + 15) & 0x3FFFFFFFFFFFFFF0)), v17, v14, a1);
  v50 = v22;
  if (!v22)
  {
    a5 = v23;

LABEL_11:
    a4 = v16;
    v24 = sub_1D5BFC390(a5, v14);

    if ((v24 & 1) == 0 || (sub_1D670EDB8(a1, v13), (v25 & 1) == 0))
    {

LABEL_49:
      v9 = v47;
      v30 = v48;
      goto LABEL_6;
    }

    v26 = *(v15 + 16);
    v44 = v19;
    if (!v26)
    {
      a3 = *(v16 + 16);
      if (!a3)
      {
        goto LABEL_92;
      }

      goto LABEL_53;
    }

    v27 = 0;
    a3 = (v15 + 40);
    while (v27 < *(v15 + 16))
    {
      a5 = *a3;

      switch(sub_1D72641CC())
      {
        case 0:
          if (qword_1EC87DB60 == -1)
          {
            goto LABEL_44;
          }

          goto LABEL_42;
        case 1:
          if (qword_1EDF05C38 != -1)
          {
            goto LABEL_42;
          }

          goto LABEL_44;
        case 2:
          if (qword_1EC87DB90 != -1)
          {
            goto LABEL_42;
          }

          goto LABEL_44;
        case 3:
          if (qword_1EDF1BBE8 != -1)
          {
            goto LABEL_42;
          }

          goto LABEL_44;
        case 4:
          if (qword_1EC87DB70 != -1)
          {
            goto LABEL_42;
          }

          goto LABEL_44;
        case 5:
          if (qword_1EDF05CB8 != -1)
          {
            goto LABEL_42;
          }

          goto LABEL_44;
        case 6:
          if (qword_1EC87DB80 != -1)
          {
            goto LABEL_42;
          }

          goto LABEL_44;
        case 7:
          if (qword_1EC87DB98 != -1)
          {
            goto LABEL_42;
          }

          goto LABEL_44;
        case 8:
          if (qword_1EC87DBA0 == -1)
          {
            goto LABEL_44;
          }

          goto LABEL_42;
        case 9:
          if (qword_1EC87DBA8 != -1)
          {
            goto LABEL_42;
          }

          goto LABEL_44;
        case 10:
          if (qword_1EC87DBB0 != -1)
          {
            goto LABEL_42;
          }

          goto LABEL_44;
        case 11:
          if (qword_1EC87DBB8 != -1)
          {
            goto LABEL_42;
          }

          goto LABEL_44;
        case 12:
          if (qword_1EC87DBC0 != -1)
          {
LABEL_42:
            swift_once();
          }

LABEL_44:

          goto LABEL_45;
        default:
          v28 = sub_1D726203C();
          v29 = [objc_opt_self() systemImageNamed_];

          if (!v29)
          {

            swift_bridgeObjectRelease_n();

LABEL_86:
            a1 = v43;
            goto LABEL_49;
          }

LABEL_45:
          ++v27;
          a3 += 2;
          if (v26 == v27)
          {

            a3 = *(a4 + 16);
            if (!a3)
            {
LABEL_92:

              return v42;
            }

LABEL_53:

            v31 = 0;
            v32 = (a4 + 40);
            while (1)
            {
              if (v31 >= *(a4 + 16))
              {
                goto LABEL_95;
              }

              v33 = *(v32 - 1);
              a5 = *v32;
              swift_bridgeObjectRetain_n();
              v34 = sub_1D61E05F4(v33, a5);
              if (v34 != 13)
              {
                break;
              }

              v35 = sub_1D726203C();
              v36 = [objc_opt_self() systemImageNamed_];

              if (v36)
              {
                swift_bridgeObjectRelease_n();

                goto LABEL_86;
              }

              v31 = (v31 + 1);
              v32 += 2;
              if (a3 == v31)
              {

                goto LABEL_92;
              }
            }

            a1 = v43;
            a3 = v44;
            v9 = v47;
            v30 = v48;
            switch(v34)
            {
              case 1:
                if (qword_1EDF05C38 != -1)
                {
                  goto LABEL_83;
                }

                break;
              case 2:
                if (qword_1EC87DB90 != -1)
                {
                  goto LABEL_83;
                }

                break;
              case 3:
                if (qword_1EDF1BBE8 != -1)
                {
                  goto LABEL_83;
                }

                break;
              case 4:
                if (qword_1EC87DB70 != -1)
                {
                  goto LABEL_83;
                }

                break;
              case 5:
                if (qword_1EDF05CB8 != -1)
                {
                  goto LABEL_83;
                }

                break;
              case 6:
                if (qword_1EC87DB80 != -1)
                {
                  goto LABEL_83;
                }

                break;
              case 7:
                if (qword_1EC87DB98 != -1)
                {
                  goto LABEL_83;
                }

                break;
              case 8:
                if (qword_1EC87DBA0 != -1)
                {
                  goto LABEL_83;
                }

                break;
              case 9:
                if (qword_1EC87DBA8 != -1)
                {
                  goto LABEL_83;
                }

                break;
              case 10:
                if (qword_1EC87DBB0 != -1)
                {
                  goto LABEL_83;
                }

                break;
              case 11:
                if (qword_1EC87DBB8 != -1)
                {
                  goto LABEL_83;
                }

                break;
              case 12:
                if (qword_1EC87DBC0 != -1)
                {
                  goto LABEL_83;
                }

                break;
              default:
                if (qword_1EC87DB60 != -1)
                {
LABEL_83:
                  swift_once();
                }

                break;
            }

            swift_bridgeObjectRelease_n();

LABEL_6:
            v10 = v30 + 1;
            if (v10 == v46)
            {
              goto LABEL_91;
            }

            goto LABEL_7;
          }

          break;
      }
    }

    __break(1u);
    goto LABEL_94;
  }

  v40 = v50;
  swift_willThrow();

  __break(1u);
LABEL_98:

  result = MEMORY[0x1DA6FD500](v18, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_1D5FAB9E0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v51[2] = *MEMORY[0x1E69E9840];
  if (qword_1EDF2AB18 != -1)
  {
    goto LABEL_96;
  }

  while (1)
  {
    v51[0] = a2;
    v51[1] = a3;

    v7 = sub_1D6844380(v51);

    v46 = *(v7 + 16);
    if (!v46)
    {
LABEL_91:

      return 0;
    }

    v42 = a4;
    v43 = a1;
    v8 = 0;
    v50 = 0;
    v45 = v7 + 32;
    v47 = v7;
LABEL_7:
    if (v8 < *(v7 + 16))
    {
      break;
    }

LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    v39 = a2;
    swift_once();
    a2 = v39;
  }

  v48 = v8;
  v10 = (v45 + 56 * v8);
  v11 = v10[1];
  v13 = v10[3];
  v12 = v10[4];
  v15 = v10[5];
  v14 = v10[6];
  LOBYTE(v10) = *(v13 + 32);
  v16 = v10 & 0x3F;
  v17 = ((1 << v10) + 63) >> 6;
  v18 = (8 * v17);
  swift_bridgeObjectRetain_n();

  v49 = v11;

  if (v16 > 0xD)
  {
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if ((isStackAllocationSafe & 1) == 0)
    {
      v18 = swift_slowAlloc();

      v37 = v50;
      a3 = sub_1D5FB8844(v18, v17, v13, a1, sub_1D5FB88DC);

      v50 = v37;
      if (v37)
      {
        goto LABEL_98;
      }

      MEMORY[0x1DA6FD500](v18, -1, -1);
      goto LABEL_11;
    }
  }

  MEMORY[0x1EEE9AC00](isStackAllocationSafe, v20);
  bzero(&v41 - ((v18 + 15) & 0x3FFFFFFFFFFFFFF0), v18);
  v21 = v50;
  sub_1D5FB88DC((&v41 - ((v18 + 15) & 0x3FFFFFFFFFFFFFF0)), v17, v13, a1);
  v50 = v21;
  if (!v21)
  {
    a3 = v22;

LABEL_11:
    a4 = v14;
    v23 = sub_1D5BFC390(a3, v13);

    if ((v23 & 1) == 0 || (sub_1D670EDB8(a1, v12), (v24 & 1) == 0))
    {

LABEL_49:
      v7 = v47;
      v9 = v48;
      goto LABEL_6;
    }

    v25 = *(v15 + 16);
    v44 = v12;
    if (!v25)
    {
      v30 = *(v14 + 16);
      if (!v30)
      {
        goto LABEL_92;
      }

      goto LABEL_53;
    }

    v26 = 0;
    v27 = (v15 + 40);
    while (v26 < *(v15 + 16))
    {
      a3 = *v27;

      switch(sub_1D72641CC())
      {
        case 0:
          if (qword_1EC87DB60 == -1)
          {
            goto LABEL_44;
          }

          goto LABEL_42;
        case 1:
          if (qword_1EDF05C38 != -1)
          {
            goto LABEL_42;
          }

          goto LABEL_44;
        case 2:
          if (qword_1EC87DB90 != -1)
          {
            goto LABEL_42;
          }

          goto LABEL_44;
        case 3:
          if (qword_1EDF1BBE8 != -1)
          {
            goto LABEL_42;
          }

          goto LABEL_44;
        case 4:
          if (qword_1EC87DB70 != -1)
          {
            goto LABEL_42;
          }

          goto LABEL_44;
        case 5:
          if (qword_1EDF05CB8 != -1)
          {
            goto LABEL_42;
          }

          goto LABEL_44;
        case 6:
          if (qword_1EC87DB80 != -1)
          {
            goto LABEL_42;
          }

          goto LABEL_44;
        case 7:
          if (qword_1EC87DB98 != -1)
          {
            goto LABEL_42;
          }

          goto LABEL_44;
        case 8:
          if (qword_1EC87DBA0 == -1)
          {
            goto LABEL_44;
          }

          goto LABEL_42;
        case 9:
          if (qword_1EC87DBA8 != -1)
          {
            goto LABEL_42;
          }

          goto LABEL_44;
        case 10:
          if (qword_1EC87DBB0 != -1)
          {
            goto LABEL_42;
          }

          goto LABEL_44;
        case 11:
          if (qword_1EC87DBB8 != -1)
          {
            goto LABEL_42;
          }

          goto LABEL_44;
        case 12:
          if (qword_1EC87DBC0 != -1)
          {
LABEL_42:
            swift_once();
          }

LABEL_44:

          goto LABEL_45;
        default:
          v28 = sub_1D726203C();
          v29 = [objc_opt_self() systemImageNamed_];

          if (!v29)
          {

            swift_bridgeObjectRelease_n();

LABEL_86:
            a1 = v43;
            goto LABEL_49;
          }

LABEL_45:
          ++v26;
          v27 += 2;
          if (v25 == v26)
          {

            v30 = *(a4 + 16);
            if (!v30)
            {
LABEL_92:

              return v42;
            }

LABEL_53:

            v31 = 0;
            v32 = (a4 + 40);
            while (1)
            {
              if (v31 >= *(a4 + 16))
              {
                goto LABEL_95;
              }

              v33 = *(v32 - 1);
              a3 = *v32;
              swift_bridgeObjectRetain_n();
              v34 = sub_1D61E05F4(v33, a3);
              if (v34 != 13)
              {
                break;
              }

              v35 = sub_1D726203C();
              v36 = [objc_opt_self() systemImageNamed_];

              if (v36)
              {
                swift_bridgeObjectRelease_n();

                goto LABEL_86;
              }

              ++v31;
              v32 += 2;
              if (v30 == v31)
              {

                goto LABEL_92;
              }
            }

            a1 = v43;
            v7 = v47;
            switch(v34)
            {
              case 1:
                if (qword_1EDF05C38 != -1)
                {
                  goto LABEL_83;
                }

                break;
              case 2:
                if (qword_1EC87DB90 != -1)
                {
                  goto LABEL_83;
                }

                break;
              case 3:
                if (qword_1EDF1BBE8 != -1)
                {
                  goto LABEL_83;
                }

                break;
              case 4:
                if (qword_1EC87DB70 != -1)
                {
                  goto LABEL_83;
                }

                break;
              case 5:
                if (qword_1EDF05CB8 != -1)
                {
                  goto LABEL_83;
                }

                break;
              case 6:
                if (qword_1EC87DB80 != -1)
                {
                  goto LABEL_83;
                }

                break;
              case 7:
                if (qword_1EC87DB98 != -1)
                {
                  goto LABEL_83;
                }

                break;
              case 8:
                if (qword_1EC87DBA0 != -1)
                {
                  goto LABEL_83;
                }

                break;
              case 9:
                if (qword_1EC87DBA8 != -1)
                {
                  goto LABEL_83;
                }

                break;
              case 10:
                if (qword_1EC87DBB0 != -1)
                {
                  goto LABEL_83;
                }

                break;
              case 11:
                if (qword_1EC87DBB8 != -1)
                {
                  goto LABEL_83;
                }

                break;
              case 12:
                if (qword_1EC87DBC0 != -1)
                {
                  goto LABEL_83;
                }

                break;
              default:
                if (qword_1EC87DB60 != -1)
                {
LABEL_83:
                  swift_once();
                }

                break;
            }

            swift_bridgeObjectRelease_n();

            v9 = v48;
LABEL_6:
            v8 = v9 + 1;
            if (v8 == v46)
            {
              goto LABEL_91;
            }

            goto LABEL_7;
          }

          break;
      }
    }

    __break(1u);
    goto LABEL_94;
  }

  v40 = v50;
  swift_willThrow();

  __break(1u);
LABEL_98:

  result = MEMORY[0x1DA6FD500](v18, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_1D5FAC504(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  LODWORD(v4) = a4;
  v51[2] = *MEMORY[0x1E69E9840];
  if (qword_1EDF2AB18 != -1)
  {
    goto LABEL_96;
  }

  while (1)
  {
    v51[0] = a2;
    v51[1] = a3;

    v7 = sub_1D6844380(v51);

    v46 = *(v7 + 16);
    if (!v46)
    {
LABEL_91:

      return 2;
    }

    v42 = v4;
    v8 = 0;
    v50 = 0;
    v45 = v7 + 32;
    v43 = a1;
    v47 = v7;
LABEL_7:
    if (v8 < *(v7 + 16))
    {
      break;
    }

LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    v39 = a2;
    swift_once();
    a2 = v39;
  }

  v48 = v8;
  v10 = (v45 + 56 * v8);
  v11 = v10[1];
  v13 = v10[3];
  v12 = v10[4];
  v15 = v10[5];
  v14 = v10[6];
  LOBYTE(v10) = *(v13 + 32);
  v16 = v10 & 0x3F;
  v17 = ((1 << v10) + 63) >> 6;
  v18 = 8 * v17;
  swift_bridgeObjectRetain_n();

  v49 = v11;

  if (v16 > 0xD)
  {
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if ((isStackAllocationSafe & 1) == 0)
    {
      v18 = swift_slowAlloc();

      v37 = v50;
      a3 = sub_1D5FB8844(v18, v17, v13, a1, sub_1D5FB88DC);

      v50 = v37;
      if (v37)
      {
        goto LABEL_98;
      }

      MEMORY[0x1DA6FD500](v18, -1, -1);
      goto LABEL_11;
    }
  }

  MEMORY[0x1EEE9AC00](isStackAllocationSafe, v20);
  bzero(&v41[-((v18 + 15) & 0x3FFFFFFFFFFFFFF0)], v18);
  v21 = v50;
  sub_1D5FB88DC(&v41[-((v18 + 15) & 0x3FFFFFFFFFFFFFF0)], v17, v13, a1);
  v50 = v21;
  if (!v21)
  {
    a3 = v22;

LABEL_11:
    v4 = v14;
    v23 = sub_1D5BFC390(a3, v13);

    if ((v23 & 1) == 0 || (sub_1D670EDB8(a1, v12), (v24 & 1) == 0))
    {

LABEL_49:
      v7 = v47;
      v9 = v48;
      goto LABEL_6;
    }

    v25 = *(v15 + 16);
    v44 = v12;
    if (!v25)
    {
      v30 = *(v14 + 16);
      if (!v30)
      {
        goto LABEL_92;
      }

      goto LABEL_53;
    }

    v26 = 0;
    v27 = (v15 + 40);
    while (v26 < *(v15 + 16))
    {
      a3 = *v27;

      switch(sub_1D72641CC())
      {
        case 0:
          if (qword_1EC87DB60 == -1)
          {
            goto LABEL_44;
          }

          goto LABEL_42;
        case 1:
          if (qword_1EDF05C38 != -1)
          {
            goto LABEL_42;
          }

          goto LABEL_44;
        case 2:
          if (qword_1EC87DB90 != -1)
          {
            goto LABEL_42;
          }

          goto LABEL_44;
        case 3:
          if (qword_1EDF1BBE8 != -1)
          {
            goto LABEL_42;
          }

          goto LABEL_44;
        case 4:
          if (qword_1EC87DB70 != -1)
          {
            goto LABEL_42;
          }

          goto LABEL_44;
        case 5:
          if (qword_1EDF05CB8 != -1)
          {
            goto LABEL_42;
          }

          goto LABEL_44;
        case 6:
          if (qword_1EC87DB80 != -1)
          {
            goto LABEL_42;
          }

          goto LABEL_44;
        case 7:
          if (qword_1EC87DB98 != -1)
          {
            goto LABEL_42;
          }

          goto LABEL_44;
        case 8:
          if (qword_1EC87DBA0 == -1)
          {
            goto LABEL_44;
          }

          goto LABEL_42;
        case 9:
          if (qword_1EC87DBA8 != -1)
          {
            goto LABEL_42;
          }

          goto LABEL_44;
        case 10:
          if (qword_1EC87DBB0 != -1)
          {
            goto LABEL_42;
          }

          goto LABEL_44;
        case 11:
          if (qword_1EC87DBB8 != -1)
          {
            goto LABEL_42;
          }

          goto LABEL_44;
        case 12:
          if (qword_1EC87DBC0 != -1)
          {
LABEL_42:
            swift_once();
          }

LABEL_44:

          goto LABEL_45;
        default:
          v28 = sub_1D726203C();
          v29 = [objc_opt_self() systemImageNamed_];

          if (!v29)
          {

            swift_bridgeObjectRelease_n();

LABEL_86:
            a1 = v43;
            goto LABEL_49;
          }

LABEL_45:
          ++v26;
          v27 += 2;
          if (v25 == v26)
          {

            v30 = *(v4 + 16);
            if (!v30)
            {
LABEL_92:

              return v42 & 1;
            }

LABEL_53:

            v31 = 0;
            v32 = (v4 + 40);
            while (1)
            {
              if (v31 >= *(v4 + 16))
              {
                goto LABEL_95;
              }

              v33 = *(v32 - 1);
              a3 = *v32;
              swift_bridgeObjectRetain_n();
              v34 = sub_1D61E05F4(v33, a3);
              if (v34 != 13)
              {
                break;
              }

              v35 = sub_1D726203C();
              v36 = [objc_opt_self() systemImageNamed_];

              if (v36)
              {
                swift_bridgeObjectRelease_n();

                goto LABEL_86;
              }

              ++v31;
              v32 += 2;
              if (v30 == v31)
              {

                goto LABEL_92;
              }
            }

            a1 = v43;
            v7 = v47;
            switch(v34)
            {
              case 1:
                if (qword_1EDF05C38 != -1)
                {
                  goto LABEL_83;
                }

                break;
              case 2:
                if (qword_1EC87DB90 != -1)
                {
                  goto LABEL_83;
                }

                break;
              case 3:
                if (qword_1EDF1BBE8 != -1)
                {
                  goto LABEL_83;
                }

                break;
              case 4:
                if (qword_1EC87DB70 != -1)
                {
                  goto LABEL_83;
                }

                break;
              case 5:
                if (qword_1EDF05CB8 != -1)
                {
                  goto LABEL_83;
                }

                break;
              case 6:
                if (qword_1EC87DB80 != -1)
                {
                  goto LABEL_83;
                }

                break;
              case 7:
                if (qword_1EC87DB98 != -1)
                {
                  goto LABEL_83;
                }

                break;
              case 8:
                if (qword_1EC87DBA0 != -1)
                {
                  goto LABEL_83;
                }

                break;
              case 9:
                if (qword_1EC87DBA8 != -1)
                {
                  goto LABEL_83;
                }

                break;
              case 10:
                if (qword_1EC87DBB0 != -1)
                {
                  goto LABEL_83;
                }

                break;
              case 11:
                if (qword_1EC87DBB8 != -1)
                {
                  goto LABEL_83;
                }

                break;
              case 12:
                if (qword_1EC87DBC0 != -1)
                {
                  goto LABEL_83;
                }

                break;
              default:
                if (qword_1EC87DB60 != -1)
                {
LABEL_83:
                  swift_once();
                }

                break;
            }

            swift_bridgeObjectRelease_n();

            v9 = v48;
LABEL_6:
            v8 = v9 + 1;
            if (v8 == v46)
            {
              goto LABEL_91;
            }

            goto LABEL_7;
          }

          break;
      }
    }

    __break(1u);
    goto LABEL_94;
  }

  v40 = v50;
  swift_willThrow();

  __break(1u);
LABEL_98:

  result = MEMORY[0x1DA6FD500](v18, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_1D5FAD028(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v50[2] = *MEMORY[0x1E69E9840];
  if (qword_1EDF2AB18 != -1)
  {
    goto LABEL_96;
  }

  while (1)
  {
    v50[0] = a2;
    v50[1] = a3;

    v7 = sub_1D6844380(v50);

    v45 = *(v7 + 16);
    if (!v45)
    {
LABEL_91:

      return 0;
    }

    v8 = 0;
    v49 = 0;
    v44 = v7 + 32;
    v43[0] = a1;
    v46 = v7;
LABEL_7:
    if (v8 < *(v7 + 16))
    {
      break;
    }

LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    v41 = a2;
    swift_once();
    a2 = v41;
  }

  v47 = v8;
  v9 = (v44 + 56 * v8);
  v10 = v9[1];
  v12 = v9[3];
  v11 = v9[4];
  v13 = v9[5];
  v14 = v9[6];
  LOBYTE(v9) = *(v12 + 32);
  v15 = v9 & 0x3F;
  v16 = ((1 << v9) + 63) >> 6;
  v17 = (8 * v16);
  swift_bridgeObjectRetain_n();

  v48 = v10;

  if (v15 > 0xD)
  {
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if ((isStackAllocationSafe & 1) == 0)
    {
      v17 = swift_slowAlloc();

      v39 = v49;
      v22 = sub_1D5FB8844(v17, v16, v12, a1, sub_1D5FB88DC);

      v49 = v39;
      if (v39)
      {
        goto LABEL_98;
      }

      MEMORY[0x1DA6FD500](v17, -1, -1);
      goto LABEL_11;
    }
  }

  MEMORY[0x1EEE9AC00](isStackAllocationSafe, v19);
  bzero(v43 - ((v17 + 15) & 0x3FFFFFFFFFFFFFF0), v17);
  v20 = v49;
  sub_1D5FB88DC((v43 - ((v17 + 15) & 0x3FFFFFFFFFFFFFF0)), v16, v12, a1);
  v49 = v20;
  if (!v20)
  {
    v22 = v21;

LABEL_11:
    a3 = v14;
    v23 = sub_1D5BFC390(v22, v12);

    if ((v23 & 1) == 0 || (sub_1D670EDB8(a1, v11), (v24 & 1) == 0))
    {

LABEL_49:
      v7 = v46;
      v30 = v47;
      goto LABEL_6;
    }

    v25 = *(v13 + 16);
    v43[1] = v11;
    if (!v25)
    {
      v31 = *(v14 + 16);
      if (!v31)
      {
        goto LABEL_92;
      }

      goto LABEL_53;
    }

    v26 = 0;
    v27 = v13 + 40;
    while (v26 < *(v13 + 16))
    {

      switch(sub_1D72641CC())
      {
        case 0:
          if (qword_1EC87DB60 == -1)
          {
            goto LABEL_44;
          }

          goto LABEL_42;
        case 1:
          if (qword_1EDF05C38 != -1)
          {
            goto LABEL_42;
          }

          goto LABEL_44;
        case 2:
          if (qword_1EC87DB90 != -1)
          {
            goto LABEL_42;
          }

          goto LABEL_44;
        case 3:
          if (qword_1EDF1BBE8 != -1)
          {
            goto LABEL_42;
          }

          goto LABEL_44;
        case 4:
          if (qword_1EC87DB70 != -1)
          {
            goto LABEL_42;
          }

          goto LABEL_44;
        case 5:
          if (qword_1EDF05CB8 != -1)
          {
            goto LABEL_42;
          }

          goto LABEL_44;
        case 6:
          if (qword_1EC87DB80 != -1)
          {
            goto LABEL_42;
          }

          goto LABEL_44;
        case 7:
          if (qword_1EC87DB98 != -1)
          {
            goto LABEL_42;
          }

          goto LABEL_44;
        case 8:
          if (qword_1EC87DBA0 == -1)
          {
            goto LABEL_44;
          }

          goto LABEL_42;
        case 9:
          if (qword_1EC87DBA8 != -1)
          {
            goto LABEL_42;
          }

          goto LABEL_44;
        case 10:
          if (qword_1EC87DBB0 != -1)
          {
            goto LABEL_42;
          }

          goto LABEL_44;
        case 11:
          if (qword_1EC87DBB8 != -1)
          {
            goto LABEL_42;
          }

          goto LABEL_44;
        case 12:
          if (qword_1EC87DBC0 != -1)
          {
LABEL_42:
            swift_once();
          }

LABEL_44:

          goto LABEL_45;
        default:
          v28 = sub_1D726203C();
          v29 = [objc_opt_self() systemImageNamed_];

          if (!v29)
          {

            swift_bridgeObjectRelease_n();

LABEL_86:
            a1 = v43[0];
            goto LABEL_49;
          }

LABEL_45:
          ++v26;
          v27 += 16;
          if (v25 == v26)
          {

            v31 = *(a3 + 16);
            if (!v31)
            {
LABEL_92:

              return *&a4;
            }

LABEL_53:

            v32 = 0;
            v33 = (a3 + 40);
            while (1)
            {
              if (v32 >= *(a3 + 16))
              {
                goto LABEL_95;
              }

              v34 = *(v33 - 1);
              v35 = *v33;
              swift_bridgeObjectRetain_n();
              v36 = sub_1D61E05F4(v34, v35);
              if (v36 != 13)
              {
                break;
              }

              v37 = sub_1D726203C();
              v38 = [objc_opt_self() systemImageNamed_];

              if (v38)
              {
                swift_bridgeObjectRelease_n();

                goto LABEL_86;
              }

              ++v32;
              v33 += 2;
              if (v31 == v32)
              {

                goto LABEL_92;
              }
            }

            a1 = v43[0];
            v7 = v46;
            v30 = v47;
            switch(v36)
            {
              case 1:
                if (qword_1EDF05C38 != -1)
                {
                  goto LABEL_83;
                }

                break;
              case 2:
                if (qword_1EC87DB90 != -1)
                {
                  goto LABEL_83;
                }

                break;
              case 3:
                if (qword_1EDF1BBE8 != -1)
                {
                  goto LABEL_83;
                }

                break;
              case 4:
                if (qword_1EC87DB70 != -1)
                {
                  goto LABEL_83;
                }

                break;
              case 5:
                if (qword_1EDF05CB8 != -1)
                {
                  goto LABEL_83;
                }

                break;
              case 6:
                if (qword_1EC87DB80 != -1)
                {
                  goto LABEL_83;
                }

                break;
              case 7:
                if (qword_1EC87DB98 != -1)
                {
                  goto LABEL_83;
                }

                break;
              case 8:
                if (qword_1EC87DBA0 != -1)
                {
                  goto LABEL_83;
                }

                break;
              case 9:
                if (qword_1EC87DBA8 != -1)
                {
                  goto LABEL_83;
                }

                break;
              case 10:
                if (qword_1EC87DBB0 != -1)
                {
                  goto LABEL_83;
                }

                break;
              case 11:
                if (qword_1EC87DBB8 != -1)
                {
                  goto LABEL_83;
                }

                break;
              case 12:
                if (qword_1EC87DBC0 != -1)
                {
                  goto LABEL_83;
                }

                break;
              default:
                if (qword_1EC87DB60 != -1)
                {
LABEL_83:
                  swift_once();
                }

                break;
            }

            swift_bridgeObjectRelease_n();

LABEL_6:
            v8 = v30 + 1;
            if (v8 == v45)
            {
              goto LABEL_91;
            }

            goto LABEL_7;
          }

          break;
      }
    }

    __break(1u);
    goto LABEL_94;
  }

  v42 = v49;
  swift_willThrow();

  __break(1u);
LABEL_98:

  result = MEMORY[0x1DA6FD500](v17, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_1D5FADB50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void, uint64_t, uint64_t (*)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))@<X2>, uint64_t (*a4)(void)@<X3>, void **a5@<X8>)
{
  v9 = v5;
  v62[2] = *MEMORY[0x1E69E9840];
  if (qword_1EDF2AB18 != -1)
  {
    goto LABEL_97;
  }

  while (1)
  {
    v12 = *(v9 + 8);
    v62[0] = *v9;
    v62[1] = v12;

    v13 = sub_1D6844380(v62);

    v57 = *(v13 + 16);
    if (!v57)
    {

LABEL_92:
      v40 = a4(0);
      return (*(*(v40 - 8) + 56))(a5, 1, 1, v40);
    }

    v49 = a2;
    v50 = a3;
    v51 = v9;
    v52 = a4;
    v53 = a5;
    v54 = a1;
    v14 = 0;
    v61 = 0;
    v56 = v13 + 32;
    v58 = v13;
    while (1)
    {
      if (v14 >= *(v13 + 16))
      {
        goto LABEL_95;
      }

      v59 = v14;
      v16 = (v56 + 56 * v14);
      v17 = v16[1];
      v9 = v16[3];
      v18 = v16[4];
      a2 = v16[5];
      v19 = v16[6];
      LOBYTE(v16) = *(v9 + 32);
      a5 = (v16 & 0x3F);
      v20 = ((1 << v16) + 63) >> 6;
      v21 = (8 * v20);
      swift_bridgeObjectRetain_n();

      v60 = v17;
      v22 = v18;

      if (a5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
      {
        a5 = &v48;
        MEMORY[0x1EEE9AC00](isStackAllocationSafe, v24);
        bzero(&v48 - ((v21 + 15) & 0x3FFFFFFFFFFFFFF0), v21);
        v25 = v61;
        sub_1D5FB88DC((&v48 - ((v21 + 15) & 0x3FFFFFFFFFFFFFF0)), v20, v9, a1);
        v61 = v25;
        if (v25)
        {

          v47 = v61;
          swift_willThrow();

          __break(1u);
LABEL_99:

          result = MEMORY[0x1DA6FD500](v21, -1, -1);
          __break(1u);
          return result;
        }

        a3 = v26;
      }

      else
      {
        v21 = swift_slowAlloc();

        v39 = v61;
        a3 = sub_1D5FB8844(v21, v20, v9, a1, sub_1D5FB88DC);

        v61 = v39;
        if (v39)
        {
          goto LABEL_99;
        }

        MEMORY[0x1DA6FD500](v21, -1, -1);
      }

      a4 = v19;
      v27 = sub_1D5BFC390(a3, v9);

      if ((v27 & 1) == 0)
      {

LABEL_48:
        v13 = v58;
        v15 = v59;
        goto LABEL_5;
      }

      sub_1D670EDB8(a1, v18);
      v13 = v58;
      if (v28)
      {
        break;
      }

      v15 = v59;
LABEL_5:
      v14 = v15 + 1;
      if (v14 == v57)
      {

        a4 = v52;
        a5 = v53;
        goto LABEL_92;
      }
    }

    v55 = v22;
    v29 = *(a2 + 16);
    if (!v29)
    {
      goto LABEL_49;
    }

    v30 = 0;
    a5 = (a2 + 40);
LABEL_14:
    if (v30 < *(a2 + 16))
    {
      break;
    }

    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    swift_once();
  }

  a3 = *a5;

  switch(sub_1D72641CC())
  {
    case 0:
      if (qword_1EC87DB60 == -1)
      {
        goto LABEL_43;
      }

      goto LABEL_41;
    case 1:
      if (qword_1EDF05C38 != -1)
      {
        goto LABEL_41;
      }

      goto LABEL_43;
    case 2:
      if (qword_1EC87DB90 != -1)
      {
        goto LABEL_41;
      }

      goto LABEL_43;
    case 3:
      if (qword_1EDF1BBE8 != -1)
      {
        goto LABEL_41;
      }

      goto LABEL_43;
    case 4:
      if (qword_1EC87DB70 != -1)
      {
        goto LABEL_41;
      }

      goto LABEL_43;
    case 5:
      if (qword_1EDF05CB8 != -1)
      {
        goto LABEL_41;
      }

      goto LABEL_43;
    case 6:
      if (qword_1EC87DB80 != -1)
      {
        goto LABEL_41;
      }

      goto LABEL_43;
    case 7:
      if (qword_1EC87DB98 != -1)
      {
        goto LABEL_41;
      }

      goto LABEL_43;
    case 8:
      if (qword_1EC87DBA0 == -1)
      {
        goto LABEL_43;
      }

      goto LABEL_41;
    case 9:
      if (qword_1EC87DBA8 != -1)
      {
        goto LABEL_41;
      }

      goto LABEL_43;
    case 10:
      if (qword_1EC87DBB0 != -1)
      {
        goto LABEL_41;
      }

      goto LABEL_43;
    case 11:
      if (qword_1EC87DBB8 != -1)
      {
        goto LABEL_41;
      }

      goto LABEL_43;
    case 12:
      if (qword_1EC87DBC0 != -1)
      {
LABEL_41:
        swift_once();
      }

LABEL_43:

      goto LABEL_44;
    default:
      v31 = sub_1D726203C();
      v32 = [objc_opt_self() systemImageNamed_];

      if (!v32)
      {

        swift_bridgeObjectRelease_n();

        goto LABEL_85;
      }

LABEL_44:
      ++v30;
      a5 += 2;
      if (v29 != v30)
      {
        goto LABEL_14;
      }

LABEL_49:
      a5 = *(a4 + 2);
      if (!a5)
      {
        goto LABEL_93;
      }

      v33 = 0;
      v34 = (a4 + 40);
      while (2)
      {
        if (v33 >= *(a4 + 2))
        {
          goto LABEL_96;
        }

        v35 = *(v34 - 1);
        a3 = *v34;
        swift_bridgeObjectRetain_n();
        v36 = sub_1D61E05F4(v35, a3);
        if (v36 != 13)
        {
          a1 = v54;
          a5 = v55;
          v13 = v58;
          v15 = v59;
          switch(v36)
          {
            case 1:
              if (qword_1EDF05C38 != -1)
              {
                goto LABEL_80;
              }

              break;
            case 2:
              if (qword_1EC87DB90 != -1)
              {
                goto LABEL_80;
              }

              break;
            case 3:
              if (qword_1EDF1BBE8 != -1)
              {
                goto LABEL_80;
              }

              break;
            case 4:
              if (qword_1EC87DB70 != -1)
              {
                goto LABEL_80;
              }

              break;
            case 5:
              if (qword_1EDF05CB8 != -1)
              {
                goto LABEL_80;
              }

              break;
            case 6:
              if (qword_1EC87DB80 != -1)
              {
                goto LABEL_80;
              }

              break;
            case 7:
              if (qword_1EC87DB98 != -1)
              {
                goto LABEL_80;
              }

              break;
            case 8:
              if (qword_1EC87DBA0 != -1)
              {
                goto LABEL_80;
              }

              break;
            case 9:
              if (qword_1EC87DBA8 != -1)
              {
                goto LABEL_80;
              }

              break;
            case 10:
              if (qword_1EC87DBB0 != -1)
              {
                goto LABEL_80;
              }

              break;
            case 11:
              if (qword_1EC87DBB8 != -1)
              {
                goto LABEL_80;
              }

              break;
            case 12:
              if (qword_1EC87DBC0 != -1)
              {
                goto LABEL_80;
              }

              break;
            default:
              if (qword_1EC87DB60 != -1)
              {
LABEL_80:
                swift_once();
              }

              break;
          }

          swift_bridgeObjectRelease_n();

          goto LABEL_5;
        }

        v37 = sub_1D726203C();
        v38 = [objc_opt_self() systemImageNamed_];

        if (v38)
        {
          swift_bridgeObjectRelease_n();

LABEL_85:
          a1 = v54;
          goto LABEL_48;
        }

        v33 = (v33 + 1);
        v34 += 2;
        if (a5 != v33)
        {
          continue;
        }

        break;
      }

LABEL_93:

      v42 = *(v50(0, v49, type metadata accessor for FormatSelectorValueSelector) + 36);
      v43 = v52(0);
      v44 = *(v43 - 8);
      v45 = v51 + v42;
      v46 = v53;
      (*(v44 + 16))(v53, v45, v43);
      return (*(v44 + 56))(v46, 0, 1, v43);
  }
}

void sub_1D5FAE784(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X3>, uint64_t **a5@<X8>)
{
  v50[2] = *MEMORY[0x1E69E9840];
  if (qword_1EDF2AB18 != -1)
  {
    goto LABEL_98;
  }

  while (1)
  {
    v50[0] = a2;
    v50[1] = a3;

    v9 = sub_1D6844380(v50);

    v45 = *(v9 + 16);
    if (!v45)
    {

LABEL_93:
      *a5 = 0xF000000000000007;
      return;
    }

    v40 = a4;
    v41 = a5;
    v10 = 0;
    v49 = 0;
    v44 = v9 + 32;
    v46 = v9;
    v42 = a1;
LABEL_8:
    if (v10 >= *(v9 + 16))
    {
      goto LABEL_96;
    }

    v47 = v10;
    v12 = (v44 + 56 * v10);
    v13 = v12[1];
    v15 = v12[3];
    v14 = v12[4];
    v16 = v12[5];
    v17 = v12[6];
    LOBYTE(v12) = *(v15 + 32);
    a4 = (v12 & 0x3F);
    v18 = ((1 << v12) + 63) >> 6;
    v19 = (8 * v18);
    swift_bridgeObjectRetain_n();

    v48 = v13;
    v20 = v14;

    if (a4 > 0xD)
    {
      isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
      if ((isStackAllocationSafe & 1) == 0)
      {
        v19 = swift_slowAlloc();

        v37 = v49;
        a3 = sub_1D5FB8844(v19, v18, v15, a1, sub_1D5FB88DC);

        v49 = v37;
        if (v37)
        {
          goto LABEL_100;
        }

        MEMORY[0x1DA6FD500](v19, -1, -1);
        goto LABEL_12;
      }
    }

    a4 = &v40;
    MEMORY[0x1EEE9AC00](isStackAllocationSafe, v22);
    bzero(&v40 - ((v19 + 15) & 0x3FFFFFFFFFFFFFF0), v19);
    v23 = v49;
    sub_1D5FB88DC((&v40 - ((v19 + 15) & 0x3FFFFFFFFFFFFFF0)), v18, v15, a1);
    v49 = v23;
    if (v23)
    {
      break;
    }

    a3 = v24;

LABEL_12:
    a5 = v17;
    v25 = sub_1D5BFC390(a3, v15);

    if ((v25 & 1) == 0 || (sub_1D670EDB8(a1, v14), (v26 & 1) == 0))
    {

LABEL_50:
      v9 = v46;
      v11 = v47;
      goto LABEL_7;
    }

    v27 = *(v16 + 16);
    v43 = v20;
    if (!v27)
    {
      a4 = *(v17 + 16);
      if (!a4)
      {
        goto LABEL_94;
      }

      goto LABEL_54;
    }

    v28 = 0;
    a4 = (v16 + 40);
    while (v28 < *(v16 + 16))
    {
      a3 = *a4;

      switch(sub_1D72641CC())
      {
        case 0:
          if (qword_1EC87DB60 == -1)
          {
            goto LABEL_45;
          }

          goto LABEL_43;
        case 1:
          if (qword_1EDF05C38 != -1)
          {
            goto LABEL_43;
          }

          goto LABEL_45;
        case 2:
          if (qword_1EC87DB90 != -1)
          {
            goto LABEL_43;
          }

          goto LABEL_45;
        case 3:
          if (qword_1EDF1BBE8 != -1)
          {
            goto LABEL_43;
          }

          goto LABEL_45;
        case 4:
          if (qword_1EC87DB70 != -1)
          {
            goto LABEL_43;
          }

          goto LABEL_45;
        case 5:
          if (qword_1EDF05CB8 != -1)
          {
            goto LABEL_43;
          }

          goto LABEL_45;
        case 6:
          if (qword_1EC87DB80 != -1)
          {
            goto LABEL_43;
          }

          goto LABEL_45;
        case 7:
          if (qword_1EC87DB98 != -1)
          {
            goto LABEL_43;
          }

          goto LABEL_45;
        case 8:
          if (qword_1EC87DBA0 == -1)
          {
            goto LABEL_45;
          }

          goto LABEL_43;
        case 9:
          if (qword_1EC87DBA8 != -1)
          {
            goto LABEL_43;
          }

          goto LABEL_45;
        case 10:
          if (qword_1EC87DBB0 != -1)
          {
            goto LABEL_43;
          }

          goto LABEL_45;
        case 11:
          if (qword_1EC87DBB8 != -1)
          {
            goto LABEL_43;
          }

          goto LABEL_45;
        case 12:
          if (qword_1EC87DBC0 != -1)
          {
LABEL_43:
            swift_once();
          }

LABEL_45:

          goto LABEL_46;
        default:
          v29 = sub_1D726203C();
          v30 = [objc_opt_self() systemImageNamed_];

          if (!v30)
          {

            swift_bridgeObjectRelease_n();

LABEL_87:
            a1 = v42;
            goto LABEL_50;
          }

LABEL_46:
          ++v28;
          a4 += 2;
          if (v27 == v28)
          {

            a4 = a5[2];
            if (!a4)
            {
LABEL_94:

              *v41 = v40;

              return;
            }

LABEL_54:

            v31 = 0;
            v32 = (a5 + 5);
            while (1)
            {
              if (v31 >= a5[2])
              {
                goto LABEL_97;
              }

              v33 = *(v32 - 1);
              a3 = *v32;
              swift_bridgeObjectRetain_n();
              v34 = sub_1D61E05F4(v33, a3);
              if (v34 != 13)
              {
                break;
              }

              v35 = sub_1D726203C();
              v36 = [objc_opt_self() systemImageNamed_];

              if (v36)
              {
                swift_bridgeObjectRelease_n();

                goto LABEL_87;
              }

              v31 = (v31 + 1);
              v32 += 2;
              if (a4 == v31)
              {

                goto LABEL_94;
              }
            }

            a1 = v42;
            v9 = v46;
            switch(v34)
            {
              case 1:
                if (qword_1EDF05C38 != -1)
                {
                  goto LABEL_84;
                }

                break;
              case 2:
                if (qword_1EC87DB90 != -1)
                {
                  goto LABEL_84;
                }

                break;
              case 3:
                if (qword_1EDF1BBE8 != -1)
                {
                  goto LABEL_84;
                }

                break;
              case 4:
                if (qword_1EC87DB70 != -1)
                {
                  goto LABEL_84;
                }

                break;
              case 5:
                if (qword_1EDF05CB8 != -1)
                {
                  goto LABEL_84;
                }

                break;
              case 6:
                if (qword_1EC87DB80 != -1)
                {
                  goto LABEL_84;
                }

                break;
              case 7:
                if (qword_1EC87DB98 != -1)
                {
                  goto LABEL_84;
                }

                break;
              case 8:
                if (qword_1EC87DBA0 != -1)
                {
                  goto LABEL_84;
                }

                break;
              case 9:
                if (qword_1EC87DBA8 != -1)
                {
                  goto LABEL_84;
                }

                break;
              case 10:
                if (qword_1EC87DBB0 != -1)
                {
                  goto LABEL_84;
                }

                break;
              case 11:
                if (qword_1EC87DBB8 != -1)
                {
                  goto LABEL_84;
                }

                break;
              case 12:
                if (qword_1EC87DBC0 != -1)
                {
                  goto LABEL_84;
                }

                break;
              default:
                if (qword_1EC87DB60 != -1)
                {
LABEL_84:
                  swift_once();
                }

                break;
            }

            swift_bridgeObjectRelease_n();

            v11 = v47;
LABEL_7:
            v10 = v11 + 1;
            if (v10 == v45)
            {

              a5 = v41;
              goto LABEL_93;
            }

            goto LABEL_8;
          }

          break;
      }
    }

    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    v38 = a2;
    swift_once();
    a2 = v38;
  }

  v39 = v49;
  swift_willThrow();

  __break(1u);
LABEL_100:

  MEMORY[0x1DA6FD500](v19, -1, -1);
  __break(1u);
}

void sub_1D5FAF2C8(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X3>, uint64_t **a5@<X8>)
{
  v51[2] = *MEMORY[0x1E69E9840];
  if (qword_1EDF2AB18 != -1)
  {
    goto LABEL_98;
  }

  while (1)
  {
    v51[0] = a2;
    v51[1] = a3;

    v9 = sub_1D6844380(v51);

    v46 = *(v9 + 16);
    if (!v46)
    {

LABEL_93:
      *a5 = 0xF000000000000007;
      return;
    }

    v41 = a4;
    v42 = a5;
    v10 = 0;
    v50 = 0;
    v45 = v9 + 32;
    v47 = v9;
    v43 = a1;
LABEL_8:
    if (v10 >= *(v9 + 16))
    {
      goto LABEL_96;
    }

    v48 = v10;
    v12 = (v45 + 56 * v10);
    v13 = v12[1];
    v15 = v12[3];
    v14 = v12[4];
    v16 = v12[5];
    v17 = v12[6];
    LOBYTE(v12) = *(v15 + 32);
    a4 = (v12 & 0x3F);
    v18 = ((1 << v12) + 63) >> 6;
    v19 = (8 * v18);
    swift_bridgeObjectRetain_n();

    v49 = v13;
    v20 = v14;

    if (a4 > 0xD)
    {
      isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
      if ((isStackAllocationSafe & 1) == 0)
      {
        v19 = swift_slowAlloc();

        v37 = v50;
        a3 = sub_1D5FB8844(v19, v18, v15, a1, sub_1D5FB88DC);

        v50 = v37;
        if (v37)
        {
          goto LABEL_100;
        }

        MEMORY[0x1DA6FD500](v19, -1, -1);
        goto LABEL_12;
      }
    }

    a4 = &v41;
    MEMORY[0x1EEE9AC00](isStackAllocationSafe, v22);
    bzero(&v41 - ((v19 + 15) & 0x3FFFFFFFFFFFFFF0), v19);
    v23 = v50;
    sub_1D5FB88DC((&v41 - ((v19 + 15) & 0x3FFFFFFFFFFFFFF0)), v18, v15, a1);
    v50 = v23;
    if (v23)
    {
      break;
    }

    a3 = v24;

LABEL_12:
    a5 = v17;
    v25 = sub_1D5BFC390(a3, v15);

    if ((v25 & 1) == 0 || (sub_1D670EDB8(a1, v14), (v26 & 1) == 0))
    {

LABEL_50:
      v9 = v47;
      v11 = v48;
      goto LABEL_7;
    }

    v27 = *(v16 + 16);
    v44 = v20;
    if (!v27)
    {
      a4 = *(v17 + 16);
      if (!a4)
      {
        goto LABEL_94;
      }

      goto LABEL_54;
    }

    v28 = 0;
    a4 = (v16 + 40);
    while (v28 < *(v16 + 16))
    {
      a3 = *a4;

      switch(sub_1D72641CC())
      {
        case 0:
          if (qword_1EC87DB60 == -1)
          {
            goto LABEL_45;
          }

          goto LABEL_43;
        case 1:
          if (qword_1EDF05C38 != -1)
          {
            goto LABEL_43;
          }

          goto LABEL_45;
        case 2:
          if (qword_1EC87DB90 != -1)
          {
            goto LABEL_43;
          }

          goto LABEL_45;
        case 3:
          if (qword_1EDF1BBE8 != -1)
          {
            goto LABEL_43;
          }

          goto LABEL_45;
        case 4:
          if (qword_1EC87DB70 != -1)
          {
            goto LABEL_43;
          }

          goto LABEL_45;
        case 5:
          if (qword_1EDF05CB8 != -1)
          {
            goto LABEL_43;
          }

          goto LABEL_45;
        case 6:
          if (qword_1EC87DB80 != -1)
          {
            goto LABEL_43;
          }

          goto LABEL_45;
        case 7:
          if (qword_1EC87DB98 != -1)
          {
            goto LABEL_43;
          }

          goto LABEL_45;
        case 8:
          if (qword_1EC87DBA0 == -1)
          {
            goto LABEL_45;
          }

          goto LABEL_43;
        case 9:
          if (qword_1EC87DBA8 != -1)
          {
            goto LABEL_43;
          }

          goto LABEL_45;
        case 10:
          if (qword_1EC87DBB0 != -1)
          {
            goto LABEL_43;
          }

          goto LABEL_45;
        case 11:
          if (qword_1EC87DBB8 != -1)
          {
            goto LABEL_43;
          }

          goto LABEL_45;
        case 12:
          if (qword_1EC87DBC0 != -1)
          {
LABEL_43:
            swift_once();
          }

LABEL_45:

          goto LABEL_46;
        default:
          v29 = sub_1D726203C();
          v30 = [objc_opt_self() systemImageNamed_];

          if (!v30)
          {

            swift_bridgeObjectRelease_n();

LABEL_87:
            a1 = v43;
            goto LABEL_50;
          }

LABEL_46:
          ++v28;
          a4 += 2;
          if (v27 == v28)
          {

            a4 = a5[2];
            if (!a4)
            {
LABEL_94:

              v38 = v41;
              *v42 = v41;
              sub_1D5F33D5C(v38);
              return;
            }

LABEL_54:

            v31 = 0;
            v32 = (a5 + 5);
            while (1)
            {
              if (v31 >= a5[2])
              {
                goto LABEL_97;
              }

              v33 = *(v32 - 1);
              a3 = *v32;
              swift_bridgeObjectRetain_n();
              v34 = sub_1D61E05F4(v33, a3);
              if (v34 != 13)
              {
                break;
              }

              v35 = sub_1D726203C();
              v36 = [objc_opt_self() systemImageNamed_];

              if (v36)
              {
                swift_bridgeObjectRelease_n();

                goto LABEL_87;
              }

              v31 = (v31 + 1);
              v32 += 2;
              if (a4 == v31)
              {

                goto LABEL_94;
              }
            }

            a1 = v43;
            v9 = v47;
            switch(v34)
            {
              case 1:
                if (qword_1EDF05C38 != -1)
                {
                  goto LABEL_84;
                }

                break;
              case 2:
                if (qword_1EC87DB90 != -1)
                {
                  goto LABEL_84;
                }

                break;
              case 3:
                if (qword_1EDF1BBE8 != -1)
                {
                  goto LABEL_84;
                }

                break;
              case 4:
                if (qword_1EC87DB70 != -1)
                {
                  goto LABEL_84;
                }

                break;
              case 5:
                if (qword_1EDF05CB8 != -1)
                {
                  goto LABEL_84;
                }

                break;
              case 6:
                if (qword_1EC87DB80 != -1)
                {
                  goto LABEL_84;
                }

                break;
              case 7:
                if (qword_1EC87DB98 != -1)
                {
                  goto LABEL_84;
                }

                break;
              case 8:
                if (qword_1EC87DBA0 != -1)
                {
                  goto LABEL_84;
                }

                break;
              case 9:
                if (qword_1EC87DBA8 != -1)
                {
                  goto LABEL_84;
                }

                break;
              case 10:
                if (qword_1EC87DBB0 != -1)
                {
                  goto LABEL_84;
                }

                break;
              case 11:
                if (qword_1EC87DBB8 != -1)
                {
                  goto LABEL_84;
                }

                break;
              case 12:
                if (qword_1EC87DBC0 != -1)
                {
                  goto LABEL_84;
                }

                break;
              default:
                if (qword_1EC87DB60 != -1)
                {
LABEL_84:
                  swift_once();
                }

                break;
            }

            swift_bridgeObjectRelease_n();

            v11 = v48;
LABEL_7:
            v10 = v11 + 1;
            if (v10 == v46)
            {

              a5 = v42;
              goto LABEL_93;
            }

            goto LABEL_8;
          }

          break;
      }
    }

    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    v39 = a2;
    swift_once();
    a2 = v39;
  }

  v40 = v50;
  swift_willThrow();

  __break(1u);
LABEL_100:

  MEMORY[0x1DA6FD500](v19, -1, -1);
  __break(1u);
}

void sub_1D5FAFE08(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X3>, uint64_t **a5@<X8>)
{
  v50[2] = *MEMORY[0x1E69E9840];
  if (qword_1EDF2AB18 != -1)
  {
    goto LABEL_98;
  }

  while (1)
  {
    v50[0] = a2;
    v50[1] = a3;

    v9 = sub_1D6844380(v50);

    v45 = *(v9 + 16);
    if (!v45)
    {

LABEL_93:
      *a5 = 0xF000000000000007;
      return;
    }

    v40 = a4;
    v41 = a5;
    v10 = 0;
    v49 = 0;
    v44 = v9 + 32;
    v46 = v9;
    v42 = a1;
LABEL_8:
    if (v10 >= *(v9 + 16))
    {
      goto LABEL_96;
    }

    v47 = v10;
    v12 = (v44 + 56 * v10);
    v13 = v12[1];
    v15 = v12[3];
    v14 = v12[4];
    v16 = v12[5];
    v17 = v12[6];
    LOBYTE(v12) = *(v15 + 32);
    a4 = (v12 & 0x3F);
    v18 = ((1 << v12) + 63) >> 6;
    v19 = (8 * v18);
    swift_bridgeObjectRetain_n();

    v48 = v13;
    v20 = v14;

    if (a4 > 0xD)
    {
      isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
      if ((isStackAllocationSafe & 1) == 0)
      {
        v19 = swift_slowAlloc();

        v37 = v49;
        a3 = sub_1D5FB8844(v19, v18, v15, a1, sub_1D5FB88DC);

        v49 = v37;
        if (v37)
        {
          goto LABEL_100;
        }

        MEMORY[0x1DA6FD500](v19, -1, -1);
        goto LABEL_12;
      }
    }

    a4 = &v40;
    MEMORY[0x1EEE9AC00](isStackAllocationSafe, v22);
    bzero(&v40 - ((v19 + 15) & 0x3FFFFFFFFFFFFFF0), v19);
    v23 = v49;
    sub_1D5FB88DC((&v40 - ((v19 + 15) & 0x3FFFFFFFFFFFFFF0)), v18, v15, a1);
    v49 = v23;
    if (v23)
    {
      break;
    }

    a3 = v24;

LABEL_12:
    a5 = v17;
    v25 = sub_1D5BFC390(a3, v15);

    if ((v25 & 1) == 0 || (sub_1D670EDB8(a1, v14), (v26 & 1) == 0))
    {

LABEL_50:
      v9 = v46;
      v11 = v47;
      goto LABEL_7;
    }

    v27 = *(v16 + 16);
    v43 = v20;
    if (!v27)
    {
      a4 = *(v17 + 16);
      if (!a4)
      {
        goto LABEL_94;
      }

      goto LABEL_54;
    }

    v28 = 0;
    a4 = (v16 + 40);
    while (v28 < *(v16 + 16))
    {
      a3 = *a4;

      switch(sub_1D72641CC())
      {
        case 0:
          if (qword_1EC87DB60 == -1)
          {
            goto LABEL_45;
          }

          goto LABEL_43;
        case 1:
          if (qword_1EDF05C38 != -1)
          {
            goto LABEL_43;
          }

          goto LABEL_45;
        case 2:
          if (qword_1EC87DB90 != -1)
          {
            goto LABEL_43;
          }

          goto LABEL_45;
        case 3:
          if (qword_1EDF1BBE8 != -1)
          {
            goto LABEL_43;
          }

          goto LABEL_45;
        case 4:
          if (qword_1EC87DB70 != -1)
          {
            goto LABEL_43;
          }

          goto LABEL_45;
        case 5:
          if (qword_1EDF05CB8 != -1)
          {
            goto LABEL_43;
          }

          goto LABEL_45;
        case 6:
          if (qword_1EC87DB80 != -1)
          {
            goto LABEL_43;
          }

          goto LABEL_45;
        case 7:
          if (qword_1EC87DB98 != -1)
          {
            goto LABEL_43;
          }

          goto LABEL_45;
        case 8:
          if (qword_1EC87DBA0 == -1)
          {
            goto LABEL_45;
          }

          goto LABEL_43;
        case 9:
          if (qword_1EC87DBA8 != -1)
          {
            goto LABEL_43;
          }

          goto LABEL_45;
        case 10:
          if (qword_1EC87DBB0 != -1)
          {
            goto LABEL_43;
          }

          goto LABEL_45;
        case 11:
          if (qword_1EC87DBB8 != -1)
          {
            goto LABEL_43;
          }

          goto LABEL_45;
        case 12:
          if (qword_1EC87DBC0 != -1)
          {
LABEL_43:
            swift_once();
          }

LABEL_45:

          goto LABEL_46;
        default:
          v29 = sub_1D726203C();
          v30 = [objc_opt_self() systemImageNamed_];

          if (!v30)
          {

            swift_bridgeObjectRelease_n();

LABEL_87:
            a1 = v42;
            goto LABEL_50;
          }

LABEL_46:
          ++v28;
          a4 += 2;
          if (v27 == v28)
          {

            a4 = a5[2];
            if (!a4)
            {
LABEL_94:

              *v41 = v40;

              return;
            }

LABEL_54:

            v31 = 0;
            v32 = (a5 + 5);
            while (1)
            {
              if (v31 >= a5[2])
              {
                goto LABEL_97;
              }

              v33 = *(v32 - 1);
              a3 = *v32;
              swift_bridgeObjectRetain_n();
              v34 = sub_1D61E05F4(v33, a3);
              if (v34 != 13)
              {
                break;
              }

              v35 = sub_1D726203C();
              v36 = [objc_opt_self() systemImageNamed_];

              if (v36)
              {
                swift_bridgeObjectRelease_n();

                goto LABEL_87;
              }

              v31 = (v31 + 1);
              v32 += 2;
              if (a4 == v31)
              {

                goto LABEL_94;
              }
            }

            a1 = v42;
            v9 = v46;
            switch(v34)
            {
              case 1:
                if (qword_1EDF05C38 != -1)
                {
                  goto LABEL_84;
                }

                break;
              case 2:
                if (qword_1EC87DB90 != -1)
                {
                  goto LABEL_84;
                }

                break;
              case 3:
                if (qword_1EDF1BBE8 != -1)
                {
                  goto LABEL_84;
                }

                break;
              case 4:
                if (qword_1EC87DB70 != -1)
                {
                  goto LABEL_84;
                }

                break;
              case 5:
                if (qword_1EDF05CB8 != -1)
                {
                  goto LABEL_84;
                }

                break;
              case 6:
                if (qword_1EC87DB80 != -1)
                {
                  goto LABEL_84;
                }

                break;
              case 7:
                if (qword_1EC87DB98 != -1)
                {
                  goto LABEL_84;
                }

                break;
              case 8:
                if (qword_1EC87DBA0 != -1)
                {
                  goto LABEL_84;
                }

                break;
              case 9:
                if (qword_1EC87DBA8 != -1)
                {
                  goto LABEL_84;
                }

                break;
              case 10:
                if (qword_1EC87DBB0 != -1)
                {
                  goto LABEL_84;
                }

                break;
              case 11:
                if (qword_1EC87DBB8 != -1)
                {
                  goto LABEL_84;
                }

                break;
              case 12:
                if (qword_1EC87DBC0 != -1)
                {
                  goto LABEL_84;
                }

                break;
              default:
                if (qword_1EC87DB60 != -1)
                {
LABEL_84:
                  swift_once();
                }

                break;
            }

            swift_bridgeObjectRelease_n();

            v11 = v47;
LABEL_7:
            v10 = v11 + 1;
            if (v10 == v45)
            {

              a5 = v41;
              goto LABEL_93;
            }

            goto LABEL_8;
          }

          break;
      }
    }

    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    v38 = a2;
    swift_once();
    a2 = v38;
  }

  v39 = v49;
  swift_willThrow();

  __break(1u);
LABEL_100:

  MEMORY[0x1DA6FD500](v19, -1, -1);
  __break(1u);
}

uint64_t sub_1D5FB094C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_1EDF2AB18 != -1)
  {
LABEL_10:
    v17 = a2;
    swift_once();
    a2 = v17;
  }

  *&v19[0] = a2;
  *(&v19[0] + 1) = a3;

  a3 = sub_1D6844380(v19);

  v7 = -*(a3 + 16);
  v8 = -1;
  v9 = 32;
  while (v7 + v8 != -1)
  {
    if (++v8 >= *(a3 + 16))
    {
      __break(1u);
      goto LABEL_10;
    }

    v10 = v9 + 56;
    v11 = (a3 + v9);
    v12 = *v11;
    v13 = v11[1];
    v14 = v11[2];
    v20 = *(v11 + 6);
    v19[1] = v13;
    v19[2] = v14;
    v19[0] = v12;
    sub_1D5E3B610(v19, v18);
    v15 = sub_1D68444DC(a1);
    sub_1D5E3B66C(v19);
    v9 = v10;
    if (v15)
    {

      return a4;
    }
  }

  return 0;
}

void sub_1D5FB0A94(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  if (qword_1EDF2AB18 != -1)
  {
LABEL_9:
    v18 = a2;
    swift_once();
    a2 = v18;
  }

  *&v20[0] = a2;
  *(&v20[0] + 1) = a3;

  a3 = sub_1D6844380(v20);

  v9 = -*(a3 + 16);
  v10 = -1;
  v11 = 32;
  while (v9 + v10 != -1)
  {
    if (++v10 >= *(a3 + 16))
    {
      __break(1u);
      goto LABEL_9;
    }

    v12 = v11 + 56;
    v13 = (a3 + v11);
    v14 = *v13;
    v15 = v13[1];
    v16 = v13[2];
    v21 = *(v13 + 6);
    v20[1] = v15;
    v20[2] = v16;
    v20[0] = v14;
    sub_1D5E3B610(v20, v19);
    v17 = sub_1D68444DC(a1);
    sub_1D5E3B66C(v20);
    v11 = v12;
    if (v17)
    {

      *a5 = a4;

      return;
    }
  }

  *a5 = 0xF000000000000007;
}

void sub_1D5FB0BE4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  if (qword_1EDF2AB18 != -1)
  {
LABEL_9:
    v18 = a2;
    swift_once();
    a2 = v18;
  }

  *&v20[0] = a2;
  *(&v20[0] + 1) = a3;

  a3 = sub_1D6844380(v20);

  v9 = -*(a3 + 16);
  v10 = -1;
  v11 = 32;
  while (v9 + v10 != -1)
  {
    if (++v10 >= *(a3 + 16))
    {
      __break(1u);
      goto LABEL_9;
    }

    v12 = v11 + 56;
    v13 = (a3 + v11);
    v14 = *v13;
    v15 = v13[1];
    v16 = v13[2];
    v21 = *(v13 + 6);
    v20[1] = v15;
    v20[2] = v16;
    v20[0] = v14;
    sub_1D5E3B610(v20, v19);
    v17 = sub_1D68444DC(a1);
    sub_1D5E3B66C(v20);
    v11 = v12;
    if (v17)
    {

      *a5 = a4;

      return;
    }
  }

  *a5 = 0xF000000000000007;
}

void sub_1D5FB0D34(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  if (qword_1EDF2AB18 != -1)
  {
LABEL_9:
    swift_once();
  }

  v20 = *v3;
  v21[0] = v20;
  sub_1D5FBA2F0(&v20, v19);
  v6 = sub_1D6844380(v21);

  v7 = -*(v6 + 16);
  v8 = -1;
  v9 = 32;
  while (v7 + v8 != -1)
  {
    if (++v8 >= *(v6 + 16))
    {
      __break(1u);
      goto LABEL_9;
    }

    v10 = v9 + 56;
    v11 = v6 + v9;
    v12 = *v11;
    v13 = *(v11 + 16);
    v14 = *(v11 + 32);
    v22 = *(v11 + 48);
    v21[1] = v13;
    v21[2] = v14;
    v21[0] = v12;
    sub_1D5E3B610(v21, v19);
    v15 = sub_1D68444DC(a1);
    sub_1D5E3B66C(v21);
    v9 = v10;
    if (v15)
    {

      v16 = *(v3 + 2);
      v17 = *(v3 + 3);
      v18 = *(v3 + 32);
      *a2 = v16;
      *(a2 + 8) = v17;
      *(a2 + 16) = v18;
      sub_1D5E04CC4(v16, v17, v18);
      return;
    }
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = -1;
}

void sub_1D5FB0E90(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  if (qword_1EDF2AB18 != -1)
  {
LABEL_9:
    v18 = a2;
    swift_once();
    a2 = v18;
  }

  *&v20[0] = a2;
  *(&v20[0] + 1) = a3;

  a3 = sub_1D6844380(v20);

  v9 = -*(a3 + 16);
  v10 = -1;
  v11 = 32;
  while (v9 + v10 != -1)
  {
    if (++v10 >= *(a3 + 16))
    {
      __break(1u);
      goto LABEL_9;
    }

    v12 = v11 + 56;
    v13 = (a3 + v11);
    v14 = *v13;
    v15 = v13[1];
    v16 = v13[2];
    v21 = *(v13 + 6);
    v20[1] = v15;
    v20[2] = v16;
    v20[0] = v14;
    sub_1D5E3B610(v20, v19);
    v17 = sub_1D68444DC(a1);
    sub_1D5E3B66C(v20);
    v11 = v12;
    if (v17)
    {

      *a5 = a4;

      return;
    }
  }

  *a5 = 0;
}

void sub_1D5FB0FDC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char *a5@<X8>)
{
  if (qword_1EDF2AB18 != -1)
  {
LABEL_10:
    v18 = a2;
    swift_once();
    a2 = v18;
  }

  *&v20[0] = a2;
  *(&v20[0] + 1) = a3;

  a3 = sub_1D6844380(v20);

  v9 = -*(a3 + 16);
  v10 = -1;
  v11 = 32;
  while (v9 + v10 != -1)
  {
    if (++v10 >= *(a3 + 16))
    {
      __break(1u);
      goto LABEL_10;
    }

    v12 = v11 + 56;
    v13 = (a3 + v11);
    v14 = *v13;
    v15 = v13[1];
    v16 = v13[2];
    v21 = *(v13 + 6);
    v20[1] = v15;
    v20[2] = v16;
    v20[0] = v14;
    sub_1D5E3B610(v20, v19);
    v17 = sub_1D68444DC(a1);
    sub_1D5E3B66C(v20);
    v11 = v12;
    if (v17)
    {
      goto LABEL_8;
    }
  }

  a4 = 6;
LABEL_8:

  *a5 = a4;
}

void sub_1D5FB1118(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char *a5@<X8>)
{
  if (qword_1EDF2AB18 != -1)
  {
LABEL_10:
    v18 = a2;
    swift_once();
    a2 = v18;
  }

  *&v20[0] = a2;
  *(&v20[0] + 1) = a3;

  a3 = sub_1D6844380(v20);

  v9 = -*(a3 + 16);
  v10 = -1;
  v11 = 32;
  while (v9 + v10 != -1)
  {
    if (++v10 >= *(a3 + 16))
    {
      __break(1u);
      goto LABEL_10;
    }

    v12 = v11 + 56;
    v13 = (a3 + v11);
    v14 = *v13;
    v15 = v13[1];
    v16 = v13[2];
    v21 = *(v13 + 6);
    v20[1] = v15;
    v20[2] = v16;
    v20[0] = v14;
    sub_1D5E3B610(v20, v19);
    v17 = sub_1D68444DC(a1);
    sub_1D5E3B66C(v20);
    v11 = v12;
    if (v17)
    {
      goto LABEL_8;
    }
  }

  a4 = 7;
LABEL_8:

  *a5 = a4;
}

void sub_1D5FB1254(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char *a5@<X8>)
{
  if (qword_1EDF2AB18 != -1)
  {
LABEL_10:
    v18 = a2;
    swift_once();
    a2 = v18;
  }

  *&v20[0] = a2;
  *(&v20[0] + 1) = a3;

  a3 = sub_1D6844380(v20);

  v9 = -*(a3 + 16);
  v10 = -1;
  v11 = 32;
  while (v9 + v10 != -1)
  {
    if (++v10 >= *(a3 + 16))
    {
      __break(1u);
      goto LABEL_10;
    }

    v12 = v11 + 56;
    v13 = (a3 + v11);
    v14 = *v13;
    v15 = v13[1];
    v16 = v13[2];
    v21 = *(v13 + 6);
    v20[1] = v15;
    v20[2] = v16;
    v20[0] = v14;
    sub_1D5E3B610(v20, v19);
    v17 = sub_1D68444DC(a1);
    sub_1D5E3B66C(v20);
    v11 = v12;
    if (v17)
    {
      goto LABEL_8;
    }
  }

  a4 = 3;
LABEL_8:

  *a5 = a4;
}

void sub_1D5FB1390(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char *a5@<X8>)
{
  if (qword_1EDF2AB18 != -1)
  {
LABEL_10:
    v18 = a2;
    swift_once();
    a2 = v18;
  }

  *&v20[0] = a2;
  *(&v20[0] + 1) = a3;

  a3 = sub_1D6844380(v20);

  v9 = -*(a3 + 16);
  v10 = -1;
  v11 = 32;
  while (v9 + v10 != -1)
  {
    if (++v10 >= *(a3 + 16))
    {
      __break(1u);
      goto LABEL_10;
    }

    v12 = v11 + 56;
    v13 = (a3 + v11);
    v14 = *v13;
    v15 = v13[1];
    v16 = v13[2];
    v21 = *(v13 + 6);
    v20[1] = v15;
    v20[2] = v16;
    v20[0] = v14;
    sub_1D5E3B610(v20, v19);
    v17 = sub_1D68444DC(a1);
    sub_1D5E3B66C(v20);
    v11 = v12;
    if (v17)
    {
      goto LABEL_8;
    }
  }

  a4 = 4;
LABEL_8:

  *a5 = a4;
}

void sub_1D5FB14CC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void (*a6)(uint64_t)@<X5>, void *a7@<X8>)
{
  if (qword_1EDF2AB18 != -1)
  {
LABEL_9:
    v22 = a2;
    swift_once();
    a2 = v22;
  }

  *&v24[0] = a2;
  *(&v24[0] + 1) = a3;

  a3 = sub_1D6844380(v24);

  v13 = -*(a3 + 16);
  v14 = -1;
  v15 = 32;
  while (v13 + v14 != -1)
  {
    if (++v14 >= *(a3 + 16))
    {
      __break(1u);
      goto LABEL_9;
    }

    v16 = v15 + 56;
    v17 = (a3 + v15);
    v18 = *v17;
    v19 = v17[1];
    v20 = v17[2];
    v25 = *(v17 + 6);
    v24[1] = v19;
    v24[2] = v20;
    v24[0] = v18;
    sub_1D5E3B610(v24, v23);
    v21 = sub_1D68444DC(a1);
    sub_1D5E3B66C(v24);
    v15 = v16;
    if (v21)
    {

      *a7 = a4;
      a6(a4);
      return;
    }
  }

  *a7 = a5;
}

void sub_1D5FB162C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  if (qword_1EDF2AB18 != -1)
  {
LABEL_9:
    v18 = a2;
    swift_once();
    a2 = v18;
  }

  *&v20[0] = a2;
  *(&v20[0] + 1) = a3;

  a3 = sub_1D6844380(v20);

  v9 = -*(a3 + 16);
  v10 = -1;
  v11 = 32;
  while (v9 + v10 != -1)
  {
    if (++v10 >= *(a3 + 16))
    {
      __break(1u);
      goto LABEL_9;
    }

    v12 = v11 + 56;
    v13 = (a3 + v11);
    v14 = *v13;
    v15 = v13[1];
    v16 = v13[2];
    v21 = *(v13 + 6);
    v20[1] = v15;
    v20[2] = v16;
    v20[0] = v14;
    sub_1D5E3B610(v20, v19);
    v17 = sub_1D68444DC(a1);
    sub_1D5E3B66C(v20);
    v11 = v12;
    if (v17)
    {

      *a5 = a4;

      return;
    }
  }

  *a5 = 0xF000000000000007;
}

void sub_1D5FB177C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char *a5@<X8>)
{
  if (qword_1EDF2AB18 != -1)
  {
LABEL_10:
    v19 = a2;
    swift_once();
    a2 = v19;
  }

  *&v21[0] = a2;
  *(&v21[0] + 1) = a3;

  a3 = sub_1D6844380(v21);

  v9 = -*(a3 + 16);
  v10 = -1;
  v11 = 32;
  while (v9 + v10 != -1)
  {
    if (++v10 >= *(a3 + 16))
    {
      __break(1u);
      goto LABEL_10;
    }

    v12 = v11 + 56;
    v13 = (a3 + v11);
    v14 = *v13;
    v15 = v13[1];
    v16 = v13[2];
    v22 = *(v13 + 6);
    v21[1] = v15;
    v21[2] = v16;
    v21[0] = v14;
    sub_1D5E3B610(v21, v20);
    v17 = sub_1D68444DC(a1);
    sub_1D5E3B66C(v21);
    v11 = v12;
    if (v17)
    {

      v18 = a4 & 1;
      goto LABEL_8;
    }
  }

  v18 = 2;
LABEL_8:
  *a5 = v18;
}

void sub_1D5FB18C4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  if (qword_1EDF2AB18 != -1)
  {
LABEL_9:
    v18 = a2;
    swift_once();
    a2 = v18;
  }

  *&v20[0] = a2;
  *(&v20[0] + 1) = a3;

  a3 = sub_1D6844380(v20);

  v9 = -*(a3 + 16);
  v10 = -1;
  v11 = 32;
  while (v9 + v10 != -1)
  {
    if (++v10 >= *(a3 + 16))
    {
      __break(1u);
      goto LABEL_9;
    }

    v12 = v11 + 56;
    v13 = (a3 + v11);
    v14 = *v13;
    v15 = v13[1];
    v16 = v13[2];
    v21 = *(v13 + 6);
    v20[1] = v15;
    v20[2] = v16;
    v20[0] = v14;
    sub_1D5E3B610(v20, v19);
    v17 = sub_1D68444DC(a1);
    sub_1D5E3B66C(v20);
    v11 = v12;
    if (v17)
    {

      *a5 = a4;

      return;
    }
  }

  *a5 = 0xF000000000000007;
}

uint64_t sub_1D5FB1A58(uint64_t a1, _OWORD *a2, unint64_t a3)
{
  v6 = a3 >> 61;
  if ((a3 >> 61) <= 1)
  {
    if (v6)
    {
      v16 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v11 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);

      v17 = sub_1D5FB1A58(a1, a2, v16);
      if (!v3)
      {
        if (v17)
        {

          LOBYTE(a2) = 1;
          return a2 & 1;
        }

        goto LABEL_26;
      }
    }

    else
    {
      v10 = *(a3 + 16);
      v11 = *(a3 + 24);

      v12 = sub_1D5FB1A58(a1, a2, v10);
      if (!v3)
      {
        if ((v12 & 1) == 0)
        {

          LOBYTE(a2) = 0;
          return a2 & 1;
        }

LABEL_26:
        LOBYTE(a2) = sub_1D5FB1A58(a1, a2, v11);

        return a2 & 1;
      }
    }

    LOBYTE(a2) = v3;

    return a2 & 1;
  }

  if (v6 == 2)
  {
    v13 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

    LOBYTE(a2) = sub_1D5FB1A58(a1, a2, v13);

    if (!v3)
    {
      LOBYTE(a2) = a2 ^ 1;
    }
  }

  else
  {
    if (v6 == 3)
    {
      v7 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x11);
      v8 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      LOBYTE(v22) = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v9 = sub_1D68669F8();
      if (v7 > 5)
      {
        if (v7 <= 8)
        {
          if (v7 != 6)
          {
            if (v7 != 7)
            {
              goto LABEL_8;
            }

            goto LABEL_22;
          }

LABEL_34:
          LOBYTE(a2) = v9 == v8;
          return a2 & 1;
        }

        if (v7 != 9)
        {
          if (v7 != 10)
          {
            goto LABEL_30;
          }

          goto LABEL_33;
        }
      }

      else
      {
        if (v7 <= 2)
        {
          if (v7)
          {
            if (v7 != 1)
            {
LABEL_8:
              LOBYTE(a2) = v9 < v8;
              return a2 & 1;
            }

LABEL_22:
            LOBYTE(a2) = v9 != v8;
            return a2 & 1;
          }

          goto LABEL_34;
        }

        if (v7 != 3)
        {
          if (v7 != 4)
          {
LABEL_30:
            v21 = v8 > v9;
            goto LABEL_36;
          }

LABEL_33:
          LOBYTE(a2) = v8 < v9;
          return a2 & 1;
        }
      }

      v21 = v9 > v8;
LABEL_36:
      LOBYTE(a2) = !v21;
      return a2 & 1;
    }

    v14 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v15 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);

    swift_retain_n();
    sub_1D5FA74A4(a2, v14, &v22);

    if (v3)
    {
    }

    else
    {

      v19 = FormatColor.color.getter(v18);
      LOBYTE(a2) = sub_1D5FB1A58(v19, a2, v15);
    }
  }

  return a2 & 1;
}

uint64_t sub_1D5FB1DCC(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t))
{
  v9 = a3 >> 61;
  if ((a3 >> 61) <= 1)
  {
    if (v9)
    {
      v20 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v14 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);

      v21 = a4(a1, a2, v20);
      if (!v5)
      {
        if (v21)
        {

          LOBYTE(a4) = 1;
          return a4 & 1;
        }

        goto LABEL_27;
      }
    }

    else
    {
      v13 = *(a3 + 16);
      v14 = *(a3 + 24);

      v15 = a4(a1, a2, v13);
      if (!v5)
      {
        if ((v15 & 1) == 0)
        {

          LOBYTE(a4) = 0;
          return a4 & 1;
        }

LABEL_27:
        LOBYTE(a4) = a4(a1, a2, v14);

        return a4 & 1;
      }
    }

    LOBYTE(a4) = v5;

    return a4 & 1;
  }

  if (v9 == 2)
  {
    v16 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

    LOBYTE(a4) = a4(a1, a2, v16);

    if (!v5)
    {
      LOBYTE(a4) = a4 ^ 1;
    }
  }

  else
  {
    if (v9 == 3)
    {
      v10 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x11);
      v11 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      LOBYTE(v26) = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v12 = sub_1D68669F8();
      if (v10 > 5)
      {
        if (v10 <= 8)
        {
          if (v10 != 6)
          {
            if (v10 != 7)
            {
              goto LABEL_8;
            }

            goto LABEL_23;
          }

LABEL_34:
          LOBYTE(a4) = v12 == v11;
          return a4 & 1;
        }

        if (v10 != 9)
        {
          if (v10 != 10)
          {
            goto LABEL_30;
          }

          goto LABEL_33;
        }
      }

      else
      {
        if (v10 <= 2)
        {
          if (v10)
          {
            if (v10 != 1)
            {
LABEL_8:
              LOBYTE(a4) = v12 < v11;
              return a4 & 1;
            }

LABEL_23:
            LOBYTE(a4) = v12 != v11;
            return a4 & 1;
          }

          goto LABEL_34;
        }

        if (v10 != 3)
        {
          if (v10 != 4)
          {
LABEL_30:
            v25 = v11 > v12;
            goto LABEL_36;
          }

LABEL_33:
          LOBYTE(a4) = v11 < v12;
          return a4 & 1;
        }
      }

      v25 = v12 > v11;
LABEL_36:
      LOBYTE(a4) = !v25;
      return a4 & 1;
    }

    v17 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v18 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);

    swift_retain_n();
    a5(&v26, a2, v17);

    if (v5)
    {
    }

    else
    {

      v24 = FormatColor.color.getter(v23);
      LOBYTE(a4) = a4(v24, a2, v18);
    }
  }

  return a4 & 1;
}

uint64_t sub_1D5FB2130(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = a3 >> 61;
  if ((a3 >> 61) <= 1)
  {
    if (v6)
    {
      v16 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v11 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);

      v17 = sub_1D5FB2130(a1, a2, v16);
      if (!v3)
      {
        if (v17)
        {

          LOBYTE(a2) = 1;
          return a2 & 1;
        }

        goto LABEL_26;
      }
    }

    else
    {
      v10 = *(a3 + 16);
      v11 = *(a3 + 24);

      v12 = sub_1D5FB2130(a1, a2, v10);
      if (!v3)
      {
        if ((v12 & 1) == 0)
        {

          LOBYTE(a2) = 0;
          return a2 & 1;
        }

LABEL_26:
        LOBYTE(a2) = sub_1D5FB2130(a1, a2, v11);

        return a2 & 1;
      }
    }

    LOBYTE(a2) = v3;

    return a2 & 1;
  }

  if (v6 == 2)
  {
    v13 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

    LOBYTE(a2) = sub_1D5FB2130(a1, a2, v13);

    if (!v3)
    {
      LOBYTE(a2) = a2 ^ 1;
    }
  }

  else
  {
    if (v6 == 3)
    {
      v7 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x11);
      v8 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      LOBYTE(v22) = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v9 = sub_1D68669F8();
      if (v7 > 5)
      {
        if (v7 <= 8)
        {
          if (v7 != 6)
          {
            if (v7 != 7)
            {
              goto LABEL_8;
            }

            goto LABEL_22;
          }

LABEL_34:
          LOBYTE(a2) = v9 == v8;
          return a2 & 1;
        }

        if (v7 != 9)
        {
          if (v7 != 10)
          {
            goto LABEL_30;
          }

          goto LABEL_33;
        }
      }

      else
      {
        if (v7 <= 2)
        {
          if (v7)
          {
            if (v7 != 1)
            {
LABEL_8:
              LOBYTE(a2) = v9 < v8;
              return a2 & 1;
            }

LABEL_22:
            LOBYTE(a2) = v9 != v8;
            return a2 & 1;
          }

          goto LABEL_34;
        }

        if (v7 != 3)
        {
          if (v7 != 4)
          {
LABEL_30:
            v21 = v8 > v9;
            goto LABEL_36;
          }

LABEL_33:
          LOBYTE(a2) = v8 < v9;
          return a2 & 1;
        }
      }

      v21 = v9 > v8;
LABEL_36:
      LOBYTE(a2) = !v21;
      return a2 & 1;
    }

    v14 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v15 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);

    swift_retain_n();
    sub_1D5FA85A4(a2, v14, &v22);

    if (v3)
    {
    }

    else
    {

      v19 = FormatColor.color.getter(v18);
      LOBYTE(a2) = sub_1D5FB2130(v19, a2, v15);
    }
  }

  return a2 & 1;
}

BOOL sub_1D5FB2460(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = a1;
  v6 = a3 >> 61;
  if ((a3 >> 61) <= 1)
  {
    if (v6)
    {
      v14 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v9 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);

      v15 = sub_1D5FB2460(v5, a2, v14);
      if (!v3)
      {
        if (v15)
        {

          LOBYTE(v5) = 1;
          return v5 & 1;
        }

        goto LABEL_19;
      }
    }

    else
    {
      v8 = *(a3 + 16);
      v9 = *(a3 + 24);

      v10 = sub_1D5FB2460(v5, a2, v8);
      if (!v3)
      {
        if ((v10 & 1) == 0)
        {

          LOBYTE(v5) = 0;
          return v5 & 1;
        }

LABEL_19:
        LOBYTE(v5) = sub_1D5FB2460(v5, a2, v9);

        return v5 & 1;
      }
    }

    return v5 & 1;
  }

  if (v6 == 2)
  {
    v11 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

    LOBYTE(v5) = sub_1D5FB2460(v5, a2, v11);

    if (!v3)
    {
      LOBYTE(v5) = v5 ^ 1;
    }
  }

  else
  {
    if (v6 == 3)
    {
      return sub_1D5FB3CB0(*((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x18), a1, a2, *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10));
    }

    v12 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v13 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);

    swift_retain_n();
    sub_1D5FA8D3C(a2, v12, &v18);

    if (v3)
    {
    }

    else
    {

      v17 = FormatColor.color.getter(v16);
      LOBYTE(v5) = sub_1D5FB2460(v17, a2, v13);
    }
  }

  return v5 & 1;
}

uint64_t sub_1D5FB26CC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = a3 >> 61;
  if ((a3 >> 61) <= 1)
  {
    if (v6)
    {
      v13 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v8 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);

      v14 = sub_1D5FB26CC(a1, a2, v13);
      if (!v3)
      {
        if (v14)
        {

          LOBYTE(a2) = 1;
          return a2 & 1;
        }

        goto LABEL_18;
      }
    }

    else
    {
      v7 = *(a3 + 16);
      v8 = *(a3 + 24);

      v9 = sub_1D5FB26CC(a1, a2, v7);
      if (!v3)
      {
        if ((v9 & 1) == 0)
        {

          LOBYTE(a2) = 0;
          return a2 & 1;
        }

LABEL_18:
        LOBYTE(a2) = sub_1D5FB26CC(a1, a2, v8);

        return a2 & 1;
      }
    }

    LOBYTE(a2) = v3;

    return a2 & 1;
  }

  if (v6 == 2)
  {
    v10 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

    LOBYTE(a2) = sub_1D5FB26CC(a1, a2, v10);

    if (!v3)
    {
      LOBYTE(a2) = a2 ^ 1;
    }
  }

  else if (v6 == 3)
  {
    LOBYTE(a2) = sub_1D5FB3E84(*((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x18), a1, *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10));
  }

  else
  {
    v11 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v12 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);

    swift_retain_n();
    sub_1D5FA94D4(a2, v11, &v18);

    if (v3)
    {
    }

    else
    {

      v16 = FormatColor.color.getter(v15);
      LOBYTE(a2) = sub_1D5FB26CC(v16, a2, v12);
    }
  }

  return a2 & 1;
}

uint64_t sub_1D5FB2954(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = a3 >> 61;
  if ((a3 >> 61) <= 1)
  {
    if (v6)
    {
      v13 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v8 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);

      v14 = sub_1D5FB2954(a1, a2, v13);
      if (!v3)
      {
        if (v14)
        {

          LOBYTE(a2) = 1;
          return a2 & 1;
        }

        goto LABEL_18;
      }
    }

    else
    {
      v7 = *(a3 + 16);
      v8 = *(a3 + 24);

      v9 = sub_1D5FB2954(a1, a2, v7);
      if (!v3)
      {
        if ((v9 & 1) == 0)
        {

          LOBYTE(a2) = 0;
          return a2 & 1;
        }

LABEL_18:
        LOBYTE(a2) = sub_1D5FB2954(a1, a2, v8);

        return a2 & 1;
      }
    }

    LOBYTE(a2) = v3;

    return a2 & 1;
  }

  if (v6 == 2)
  {
    v10 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

    LOBYTE(a2) = sub_1D5FB2954(a1, a2, v10);

    if (!v3)
    {
      LOBYTE(a2) = a2 ^ 1;
    }
  }

  else if (v6 == 3)
  {
    LOBYTE(a2) = sub_1D5FB3E84(*((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x18), a1, *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10));
  }

  else
  {
    v11 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v12 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);

    swift_retain_n();
    sub_1D5FA9D9C(a2, v11, &v18);

    if (v3)
    {
    }

    else
    {

      v16 = FormatColor.color.getter(v15);
      LOBYTE(a2) = sub_1D5FB2954(v16, a2, v12);
    }
  }

  return a2 & 1;
}

void sub_1D5FB2C1C(_OWORD *a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = a2 >> 61;
  if ((a2 >> 61) <= 1)
  {
    if (v6)
    {
      v20 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v21 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v22 = swift_allocObject();

      sub_1D5FB2C1C(a1, v20, &v28);
      if (!v3)
      {
        v24 = v28;
        sub_1D5FB2C1C(a1, v21, &v27);
        v26 = v27;
        *(v22 + 16) = v24;
        *(v22 + 24) = v26;

        *a3 = v22 | 0x2000000000000000;
        return;
      }
    }

    else
    {
      v10 = *(a2 + 16);
      v11 = *(a2 + 24);
      v12 = swift_allocObject();

      sub_1D5FB2C1C(a1, v10, &v28);
      if (!v3)
      {
        v13 = v28;
        sub_1D5FB2C1C(a1, v11, &v27);
        v14 = v27;
        *(v12 + 16) = v13;
        *(v12 + 24) = v14;

        *a3 = v12;
        return;
      }
    }
  }

  else
  {
    if (v6 == 2)
    {
      v15 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v16 = swift_allocObject();

      sub_1D5FB2C1C(a1, v15, &v28);

      if (!v3)
      {
        *(v16 + 16) = v28;
        *a3 = v16 | 0x4000000000000000;
        return;
      }

      goto LABEL_17;
    }

    if (v6 == 3)
    {
      v7 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v8 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v9 = swift_allocObject();
      *(v9 + 16) = v7;
      *(v9 + 24) = v8;
      *a3 = v9 | 0x6000000000000000;
      return;
    }

    v17 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v18 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    v19 = swift_allocObject();

    sub_1D5FA74A4(a1, v17, &v28);
    if (!v3)
    {
      v23 = v28;
      sub_1D5FB2C1C(a1, v18, &v27);
      v25 = v27;
      *(v19 + 16) = v23;
      *(v19 + 24) = v25;

      *a3 = v19 | 0x8000000000000000;
      return;
    }
  }

LABEL_17:
  swift_deallocUninitializedObject();
}

void sub_1D5FB2F78(uint64_t a1@<X0>, unint64_t a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, uint64_t)@<X2>, void (*a4)(uint64_t *__return_ptr, uint64_t, uint64_t)@<X3>, void *a5@<X8>)
{
  v9 = a2 >> 61;
  if ((a2 >> 61) <= 1)
  {
    if (v9)
    {
      v24 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v25 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v26 = swift_allocObject();

      a3(&v32, a1, v24);
      if (!v5)
      {
        v28 = v32;
        a3(&v31, a1, v25);
        v30 = v31;
        *(v26 + 16) = v28;
        *(v26 + 24) = v30;

        *a5 = v26 | 0x2000000000000000;
        return;
      }
    }

    else
    {
      v13 = *(a2 + 16);
      v14 = *(a2 + 24);
      v15 = swift_allocObject();

      a3(&v32, a1, v13);
      if (!v5)
      {
        v16 = v32;
        a3(&v31, a1, v14);
        v17 = v31;
        *(v15 + 16) = v16;
        *(v15 + 24) = v17;

        *a5 = v15;
        return;
      }
    }
  }

  else
  {
    if (v9 == 2)
    {
      v18 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v19 = swift_allocObject();

      a3(&v32, a1, v18);

      if (!v5)
      {
        *(v19 + 16) = v32;
        *a5 = v19 | 0x4000000000000000;
        return;
      }

      goto LABEL_17;
    }

    if (v9 == 3)
    {
      v10 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v11 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v12 = swift_allocObject();
      *(v12 + 16) = v10;
      *(v12 + 24) = v11;
      *a5 = v12 | 0x6000000000000000;
      return;
    }

    v20 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v21 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    v23 = swift_allocObject();

    a4(&v32, a1, v20);
    if (!v5)
    {
      v27 = v32;
      a3(&v31, a1, v21);
      v29 = v31;
      *(v23 + 16) = v27;
      *(v23 + 24) = v29;

      *a5 = v23 | 0x8000000000000000;
      return;
    }
  }

LABEL_17:
  swift_deallocUninitializedObject();
}

void sub_1D5FB3338(uint64_t a1@<X0>, unint64_t a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, uint64_t)@<X2>, void (*a4)(uint64_t *__return_ptr, uint64_t, uint64_t)@<X3>, void *a5@<X8>)
{
  v9 = a2 >> 61;
  if ((a2 >> 61) <= 1)
  {
    if (v9)
    {
      v24 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v25 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v26 = swift_allocObject();

      a3(&v32, a1, v24);
      if (!v5)
      {
        v28 = v32;
        a3(&v31, a1, v25);
        v30 = v31;
        *(v26 + 16) = v28;
        *(v26 + 24) = v30;

        *a5 = v26 | 0x2000000000000000;
        return;
      }
    }

    else
    {
      v13 = *(a2 + 16);
      v14 = *(a2 + 24);
      v15 = swift_allocObject();

      a3(&v32, a1, v13);
      if (!v5)
      {
        v16 = v32;
        a3(&v31, a1, v14);
        v17 = v31;
        *(v15 + 16) = v16;
        *(v15 + 24) = v17;

        *a5 = v15;
        return;
      }
    }
  }

  else
  {
    if (v9 == 2)
    {
      v18 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v19 = swift_allocObject();

      a3(&v32, a1, v18);

      if (!v5)
      {
        *(v19 + 16) = v32;
        *a5 = v19 | 0x4000000000000000;
        return;
      }

      goto LABEL_17;
    }

    if (v9 == 3)
    {
      v10 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v11 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v12 = swift_allocObject();
      *(v12 + 16) = v10;
      *(v12 + 24) = v11;
      *a5 = v12 | 0x6000000000000000;
      return;
    }

    v20 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v21 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    v23 = swift_allocObject();

    a4(&v32, a1, v20);
    if (!v5)
    {
      v27 = v32;
      a3(&v31, a1, v21);
      v29 = v31;
      *(v23 + 16) = v27;
      *(v23 + 24) = v29;

      *a5 = v23 | 0x8000000000000000;
      return;
    }
  }

LABEL_17:
  swift_deallocUninitializedObject();
}

void sub_1D5FB3678(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = a2 >> 61;
  if ((a2 >> 61) <= 1)
  {
    if (v6)
    {
      v20 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v21 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v22 = swift_allocObject();

      sub_1D5FB3678(a1, v20, &v28);
      if (!v3)
      {
        v24 = v28;
        sub_1D5FB3678(a1, v21, &v27);
        v26 = v27;
        *(v22 + 16) = v24;
        *(v22 + 24) = v26;

        *a3 = v22 | 0x2000000000000000;
        return;
      }
    }

    else
    {
      v10 = *(a2 + 16);
      v11 = *(a2 + 24);
      v12 = swift_allocObject();

      sub_1D5FB3678(a1, v10, &v28);
      if (!v3)
      {
        v13 = v28;
        sub_1D5FB3678(a1, v11, &v27);
        v14 = v27;
        *(v12 + 16) = v13;
        *(v12 + 24) = v14;

        *a3 = v12;
        return;
      }
    }
  }

  else
  {
    if (v6 == 2)
    {
      v15 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v16 = swift_allocObject();

      sub_1D5FB3678(a1, v15, &v28);

      if (!v3)
      {
        *(v16 + 16) = v28;
        *a3 = v16 | 0x4000000000000000;
        return;
      }

      goto LABEL_17;
    }

    if (v6 == 3)
    {
      v7 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v8 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v9 = swift_allocObject();
      *(v9 + 16) = v7;
      *(v9 + 24) = v8;
      *a3 = v9 | 0x6000000000000000;
      return;
    }

    v17 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v18 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    v19 = swift_allocObject();

    sub_1D5FA94D4(a1, v17, &v28);
    if (!v3)
    {
      v23 = v28;
      sub_1D5FB3678(a1, v18, &v27);
      v25 = v27;
      *(v19 + 16) = v23;
      *(v19 + 24) = v25;

      *a3 = v19 | 0x8000000000000000;
      return;
    }
  }

LABEL_17:
  swift_deallocUninitializedObject();
}

void sub_1D5FB3994(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = a2 >> 61;
  if ((a2 >> 61) <= 1)
  {
    if (v6)
    {
      v20 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v21 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v22 = swift_allocObject();

      sub_1D5FB3994(a1, v20, &v28);
      if (!v3)
      {
        v24 = v28;
        sub_1D5FB3994(a1, v21, &v27);
        v26 = v27;
        *(v22 + 16) = v24;
        *(v22 + 24) = v26;

        *a3 = v22 | 0x2000000000000000;
        return;
      }
    }

    else
    {
      v10 = *(a2 + 16);
      v11 = *(a2 + 24);
      v12 = swift_allocObject();

      sub_1D5FB3994(a1, v10, &v28);
      if (!v3)
      {
        v13 = v28;
        sub_1D5FB3994(a1, v11, &v27);
        v14 = v27;
        *(v12 + 16) = v13;
        *(v12 + 24) = v14;

        *a3 = v12;
        return;
      }
    }
  }

  else
  {
    if (v6 == 2)
    {
      v15 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v16 = swift_allocObject();

      sub_1D5FB3994(a1, v15, &v28);

      if (!v3)
      {
        *(v16 + 16) = v28;
        *a3 = v16 | 0x4000000000000000;
        return;
      }

      goto LABEL_17;
    }

    if (v6 == 3)
    {
      v7 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v8 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v9 = swift_allocObject();
      *(v9 + 16) = v7;
      *(v9 + 24) = v8;
      *a3 = v9 | 0x6000000000000000;
      return;
    }

    v17 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v18 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    v19 = swift_allocObject();

    sub_1D5FA9D9C(a1, v17, &v28);
    if (!v3)
    {
      v23 = v28;
      sub_1D5FB3994(a1, v18, &v27);
      v25 = v27;
      *(v19 + 16) = v23;
      *(v19 + 24) = v25;

      *a3 = v19 | 0x8000000000000000;
      return;
    }
  }

LABEL_17:
  swift_deallocUninitializedObject();
}

BOOL sub_1D5FB3CB0(double a1, uint64_t a2, uint64_t a3, __int16 a4)
{
  v5 = HIBYTE(a4);
  if (a4 <= 2u)
  {
    if (!a4)
    {
      sub_1D72635BC();
      v6 = v8;
      goto LABEL_15;
    }

    if (a4 == 1)
    {
      sub_1D72635BC();
      v6 = v9;
      goto LABEL_15;
    }

    sub_1D72635BC();
  }

  else
  {
    if (a4 <= 4u)
    {
      if (a4 == 3)
      {
        sub_1D72635BC();
        v6 = v11;
      }

      else
      {
        sub_1D72635CC();
        v6 = v8;
      }

      goto LABEL_15;
    }

    if (a4 == 5)
    {
      sub_1D72635CC();
      v6 = v9;
      goto LABEL_15;
    }

    sub_1D72635CC();
  }

  v6 = v10;
LABEL_15:
  if (v12)
  {
    v6 = 0.0;
  }

  if (v5 > 5u)
  {
    if (v5 <= 8u)
    {
      if (v5 != 6)
      {
        if (v5 != 7)
        {
          return v6 < a1;
        }

        return v6 != a1;
      }

      return v6 == a1;
    }

    if (v5 != 9)
    {
      if (v5 != 10)
      {
        return v6 >= a1;
      }

      return v6 > a1;
    }
  }

  else
  {
    if (v5 <= 2u)
    {
      if (v5)
      {
        if (v5 != 1)
        {
          return v6 < a1;
        }

        return v6 != a1;
      }

      return v6 == a1;
    }

    if (v5 != 3)
    {
      if (v5 != 4)
      {
        return v6 >= a1;
      }

      return v6 > a1;
    }
  }

  return v6 <= a1;
}

BOOL sub_1D5FB3E84(double a1, uint64_t a2, __int16 a3)
{
  v4 = HIBYTE(a3);
  if (a3 <= 2u)
  {
    if (!a3)
    {
      sub_1D72635BC();
      v5 = v7;
      goto LABEL_15;
    }

    if (a3 == 1)
    {
      sub_1D72635BC();
      v5 = v8;
      goto LABEL_15;
    }

    sub_1D72635BC();
  }

  else
  {
    if (a3 <= 4u)
    {
      if (a3 == 3)
      {
        sub_1D72635BC();
        v5 = v10;
      }

      else
      {
        sub_1D72635CC();
        v5 = v7;
      }

      goto LABEL_15;
    }

    if (a3 == 5)
    {
      sub_1D72635CC();
      v5 = v8;
      goto LABEL_15;
    }

    sub_1D72635CC();
  }

  v5 = v9;
LABEL_15:
  if (v11)
  {
    v5 = 0.0;
  }

  if (v4 > 5u)
  {
    if (v4 <= 8u)
    {
      if (v4 != 6)
      {
        if (v4 != 7)
        {
          return v5 < a1;
        }

        return v5 != a1;
      }

      return v5 == a1;
    }

    if (v4 != 9)
    {
      if (v4 != 10)
      {
        return v5 >= a1;
      }

      return v5 > a1;
    }
  }

  else
  {
    if (v4 <= 2u)
    {
      if (v4)
      {
        if (v4 != 1)
        {
          return v5 < a1;
        }

        return v5 != a1;
      }

      return v5 == a1;
    }

    if (v4 != 3)
    {
      if (v4 != 4)
      {
        return v5 >= a1;
      }

      return v5 > a1;
    }
  }

  return v5 <= a1;
}

id sub_1D5FB4058(uint64_t a1, id a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void), void (*a7)(void **__return_ptr, void **, unint64_t *, double))
{
  v11 = [a2 resolvedColorWithTraitCollection_];
  v12 = a6();
  if (v12)
  {
    MEMORY[0x1EEE9AC00](v12, v13);
    v16[2] = a5;
    v14 = sub_1D632A694(v11, a7, v16, a4);

    return v14;
  }

  return v11;
}

uint64_t sub_1D5FB4138()
{
  type metadata accessor for FormatLayoutError(0);
  sub_1D5FBA0C0(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
  swift_allocError();
  *v0 = 0xD00000000000007ALL;
  v0[1] = 0x80000001D73C3800;
  swift_storeEnumTagMultiPayload();
  return swift_willThrow();
}

void sub_1D5FB41E4(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  v11 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = (a3 >> 7) & 0xFE | (a3 >> 5) & 1;
  if (v15 <= 2)
  {
    if (v15)
    {
      if (v15 == 1)
      {
        sub_1D6752174(*(a1 + *a4 + 8), v14);
        if (!v5)
        {
          LOBYTE(v37) = a2;
          sub_1D613C6BC(v14, a5);
          sub_1D5C0AD20(v14, type metadata accessor for FeedHeadline);
        }
      }

      else
      {
        sub_1D6750B04(*(a1 + *a4 + 8), &v37);
        if (!v5)
        {
          v18 = v37;
          LOBYTE(v37) = a2;
          sub_1D5FCCDD4(v18, a5);
          swift_unknownObjectRelease();
        }
      }
    }

    else
    {
      sub_1D6751EC0(*(a1 + *a4 + 8), &v37);
      if (!v5)
      {
        v35 = v43;
        v36[0] = v44[0];
        *(v36 + 9) = *(v44 + 9);
        v31 = v39;
        v32 = v40;
        v33 = v41;
        v34 = v42;
        v29 = v37;
        v30 = v38;
        v27 = v43;
        v28[0] = v44[0];
        *(v28 + 9) = *(v44 + 9);
        v23 = v39;
        v24 = v40;
        v25 = v41;
        v26 = v42;
        LOBYTE(v45) = a2;
        v21 = v37;
        v22 = v38;
        sub_1D6327A70(&v21, a5);
        sub_1D5ECF320(&v29);
      }
    }
  }

  else if (v15 > 4)
  {
    if (v15 == 5)
    {
      sub_1D67505CC(*(a1 + *a4 + 8), &v37);
      if (!v5)
      {
        v16 = v37;
        v17 = [objc_msgSend(v37 backingTag)];
        swift_unknownObjectRelease();
        if (v17)
        {
          LOBYTE(v37) = a2;
          sub_1D5FCCDD4(v17, a5);
          swift_unknownObjectRelease();
        }

        else
        {
          type metadata accessor for FormatLayoutError(0);
          sub_1D5FBA0C0(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
          swift_allocError();
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
        }
      }
    }

    else
    {
      sub_1D6750380(*(a1 + *a4 + 8), &v37);
      if (!v5)
      {
        *&v29 = a2;
        BYTE8(v29) = a3;
        sub_1D6ACAC18(&v37, a5);
        swift_unknownObjectRelease();
      }
    }
  }

  else if (v15 == 3)
  {
    sub_1D6751370(*(a1 + *a4 + 8), &v37);
    if (!v5)
    {
      v29 = v37;
      v30 = v38;
      v31 = v39;
      v32 = v40;
      v45 = a2;
      v46 = a3 & 0xDF;
      v21 = v37;
      v22 = v38;
      v23 = v39;
      v24 = v40;
      sub_1D6AFCE08(&v21, a5);
      sub_1D5F2DE58(&v29);
    }
  }

  else
  {
    sub_1D67505CC(*(a1 + *a4 + 8), &v37);
    if (!v5)
    {
      v19 = v37;
      LOBYTE(v37) = a2;
      v20 = FCFeedDescriptor.feedTag.getter();
      sub_1D5FCCDD4(v20, a5);

      swift_unknownObjectRelease();
    }
  }
}

void sub_1D5FB4614(uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t *x8_0@<X8>)
{
  v8 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = (a3 >> 7) & 0xFE | (a3 >> 5) & 1;
  if (v12 <= 2)
  {
    if (v12)
    {
      if (v12 == 1)
      {
        sub_1D5FB500C(sub_1D6752174);
        if (!v4)
        {
          LOBYTE(v34) = a2;
          sub_1D613C6BC(v11, x8_0);
          sub_1D5C0AD20(v11, type metadata accessor for FeedHeadline);
        }
      }

      else
      {
        sub_1D5FB6008(&v34);
        if (!v4)
        {
          v15 = v34;
          LOBYTE(v34) = a2;
          sub_1D5FCCDD4(v15, x8_0);
          swift_unknownObjectRelease();
        }
      }
    }

    else
    {
      sub_1D5FB5E58(sub_1D6751EC0);
      if (!v4)
      {
        v32 = v40;
        v33[0] = v41[0];
        *(v33 + 9) = *(v41 + 9);
        v28 = v36;
        v29 = v37;
        v30 = v38;
        v31 = v39;
        v26 = v34;
        v27 = v35;
        v24 = v40;
        v25[0] = v41[0];
        *(v25 + 9) = *(v41 + 9);
        v20 = v36;
        v21 = v37;
        v22 = v38;
        v23 = v39;
        LOBYTE(v42) = a2;
        v18 = v34;
        v19 = v35;
        sub_1D6327A70(&v18, x8_0);
        sub_1D5ECF320(&v26);
      }
    }
  }

  else if (v12 > 4)
  {
    if (v12 == 5)
    {
      sub_1D5FB5A80(&v34);
      if (!v4)
      {
        v13 = v34;
        v14 = [objc_msgSend(v34 backingTag)];
        swift_unknownObjectRelease();
        if (v14)
        {
          LOBYTE(v34) = a2;
          sub_1D5FCCDD4(v14, x8_0);
          swift_unknownObjectRelease();
        }

        else
        {
          type metadata accessor for FormatLayoutError(0);
          sub_1D5FBA0C0(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
          swift_allocError();
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
        }
      }
    }

    else
    {
      sub_1D5FB58A4(sub_1D6750380);
      if (!v4)
      {
        *&v26 = a2;
        BYTE8(v26) = a3;
        sub_1D6ACAC18(&v34, x8_0);
        swift_unknownObjectRelease();
      }
    }
  }

  else if (v12 == 3)
  {
    sub_1D5FB54EC(sub_1D6751370);
    if (!v4)
    {
      v26 = v34;
      v27 = v35;
      v28 = v36;
      v29 = v37;
      v42 = a2;
      v43 = a3 & 0xDF;
      v18 = v34;
      v19 = v35;
      v20 = v36;
      v21 = v37;
      sub_1D6AFCE08(&v18, x8_0);
      sub_1D5F2DE58(&v26);
    }
  }

  else
  {
    sub_1D5FB5A80(&v34);
    if (!v4)
    {
      v16 = v34;
      LOBYTE(v34) = a2;
      v17 = FCFeedDescriptor.feedTag.getter();
      sub_1D5FCCDD4(v17, x8_0);

      swift_unknownObjectRelease();
    }
  }
}

void sub_1D5FB4A34(uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t *x8_0@<X8>)
{
  v8 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = (a3 >> 7) & 0xFE | (a3 >> 5) & 1;
  if (v12 <= 2)
  {
    if (v12)
    {
      if (v12 == 1)
      {
        sub_1D5F55D7C(v11);
        if (!v4)
        {
          LOBYTE(v34) = a2;
          sub_1D613C6BC(v11, x8_0);
          sub_1D5C0AD20(v11, type metadata accessor for FeedHeadline);
        }
      }

      else
      {
        sub_1D5F55B34(&v34);
        if (!v4)
        {
          v15 = v34;
          LOBYTE(v34) = a2;
          sub_1D5FCCDD4(v15, x8_0);
          swift_unknownObjectRelease();
        }
      }
    }

    else
    {
      sub_1D5F55870(&v34);
      if (!v4)
      {
        v32 = v40;
        v33[0] = v41[0];
        *(v33 + 9) = *(v41 + 9);
        v28 = v36;
        v29 = v37;
        v30 = v38;
        v31 = v39;
        v26 = v34;
        v27 = v35;
        v24 = v40;
        v25[0] = v41[0];
        *(v25 + 9) = *(v41 + 9);
        v20 = v36;
        v21 = v37;
        v22 = v38;
        v23 = v39;
        LOBYTE(v42) = a2;
        v18 = v34;
        v19 = v35;
        sub_1D6327A70(&v18, x8_0);
        sub_1D5ECF320(&v26);
      }
    }
  }

  else if (v12 > 4)
  {
    if (v12 == 5)
    {
      sub_1D5F54F8C(&v34);
      if (!v4)
      {
        v13 = v34;
        v14 = [objc_msgSend(v34 backingTag)];
        swift_unknownObjectRelease();
        if (v14)
        {
          LOBYTE(v34) = a2;
          sub_1D5FCCDD4(v14, x8_0);
          swift_unknownObjectRelease();
        }

        else
        {
          type metadata accessor for FormatLayoutError(0);
          sub_1D5FBA0C0(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
          swift_allocError();
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
        }
      }
    }

    else
    {
      sub_1D5F549CC(&v34);
      if (!v4)
      {
        *&v26 = a2;
        BYTE8(v26) = a3;
        sub_1D6ACAC18(&v34, x8_0);
        swift_unknownObjectRelease();
      }
    }
  }

  else if (v12 == 3)
  {
    sub_1D5F544DC(&v34);
    if (!v4)
    {
      v26 = v34;
      v27 = v35;
      v28 = v36;
      v29 = v37;
      v42 = a2;
      v43 = a3 & 0xDF;
      v18 = v34;
      v19 = v35;
      v20 = v36;
      v21 = v37;
      sub_1D6AFCE08(&v18, x8_0);
      sub_1D5F2DE58(&v26);
    }
  }

  else
  {
    sub_1D5F54F8C(&v34);
    if (!v4)
    {
      v16 = v34;
      LOBYTE(v34) = a2;
      v17 = FCFeedDescriptor.feedTag.getter();
      sub_1D5FCCDD4(v17, x8_0);

      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1D5FB4E04()
{
  type metadata accessor for FormatLayoutError(0);
  sub_1D5FBA0C0(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
  swift_allocError();
  *v0 = 0xD000000000000048;
  v0[1] = 0x80000001D73C36B0;
  swift_storeEnumTagMultiPayload();
  return swift_willThrow();
}

uint64_t sub_1D5FB4EB0()
{
  type metadata accessor for FormatLayoutError(0);
  sub_1D5FBA0C0(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
  swift_allocError();
  *v0 = 0xD00000000000005DLL;
  v0[1] = 0x80000001D73C3880;
  swift_storeEnumTagMultiPayload();
  return swift_willThrow();
}

void sub_1D5FB500C(void (*a1)(void, void))
{
  v3 = type metadata accessor for FormatOptionsNodeStatementContext(0);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5D286BC(v1, v6, type metadata accessor for FormatOptionsNodeStatementContext);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v8 = *v6;
  if (EnumCaseMultiPayload == 1)
  {
    sub_1D5EB9920(0);
    v10 = *(v9 + 48);
    a1(*(v8 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack), *(v8 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack + 8));

    sub_1D5FBA900(0, &qword_1EDF3BEE0, sub_1D5EB5218, &type metadata for FormatLayout, MEMORY[0x1E69D74C0]);
    (*(*(v11 - 8) + 8))(&v6[v10], v11);
  }

  else
  {

    a1(*(v8 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_bindingStack), *(v8 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_bindingStack + 8));
  }
}

void sub_1D5FB526C(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for FormatOptionsNodeStatementContext(0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5D286BC(v2, v7, type metadata accessor for FormatOptionsNodeStatementContext);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v9 = *v7;
  if (EnumCaseMultiPayload == 1)
  {
    sub_1D5EB9920(0);
    v11 = *(v10 + 48);
    sub_1D6B7C06C(*(v9 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack), a1);

    sub_1D5FBA900(0, &qword_1EDF3BEE0, sub_1D5EB5218, &type metadata for FormatLayout, MEMORY[0x1E69D74C0]);
    (*(*(v12 - 8) + 8))(&v7[v11], v12);
  }

  else
  {

    sub_1D6B7C06C(*(v9 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_bindingStack), a1);
  }
}

void sub_1D5FB54EC(void (*a1)(void, void))
{
  v3 = type metadata accessor for FormatOptionsNodeStatementContext(0);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5D286BC(v1, v6, type metadata accessor for FormatOptionsNodeStatementContext);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v8 = *v6;
  if (EnumCaseMultiPayload == 1)
  {
    sub_1D5EB9920(0);
    v10 = *(v9 + 48);
    a1(*(v8 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack), *(v8 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack + 8));

    sub_1D5FBA900(0, &qword_1EDF3BEE0, sub_1D5EB5218, &type metadata for FormatLayout, MEMORY[0x1E69D74C0]);
    (*(*(v11 - 8) + 8))(&v6[v10], v11);
  }

  else
  {

    a1(*(v8 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_bindingStack), *(v8 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_bindingStack + 8));
  }
}

void sub_1D5FB56C8(void (*a1)(void, void))
{
  v3 = type metadata accessor for FormatOptionsNodeStatementContext(0);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5D286BC(v1, v6, type metadata accessor for FormatOptionsNodeStatementContext);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v8 = *v6;
  if (EnumCaseMultiPayload == 1)
  {
    sub_1D5EB9920(0);
    v10 = *(v9 + 48);
    a1(*(v8 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack), *(v8 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack + 8));

    sub_1D5FBA900(0, &qword_1EDF3BEE0, sub_1D5EB5218, &type metadata for FormatLayout, MEMORY[0x1E69D74C0]);
    (*(*(v11 - 8) + 8))(&v6[v10], v11);
  }

  else
  {

    a1(*(v8 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_bindingStack), *(v8 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_bindingStack + 8));
  }
}

void sub_1D5FB58A4(void (*a1)(void, void))
{
  v3 = type metadata accessor for FormatOptionsNodeStatementContext(0);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5D286BC(v1, v6, type metadata accessor for FormatOptionsNodeStatementContext);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v8 = *v6;
  if (EnumCaseMultiPayload == 1)
  {
    sub_1D5EB9920(0);
    v10 = *(v9 + 48);
    a1(*(v8 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack), *(v8 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack + 8));

    sub_1D5FBA900(0, &qword_1EDF3BEE0, sub_1D5EB5218, &type metadata for FormatLayout, MEMORY[0x1E69D74C0]);
    (*(*(v11 - 8) + 8))(&v6[v10], v11);
  }

  else
  {

    a1(*(v8 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_bindingStack), *(v8 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_bindingStack + 8));
  }
}

void sub_1D5FB5A80(void *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for FormatOptionsNodeStatementContext(0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5D286BC(v2, v7, type metadata accessor for FormatOptionsNodeStatementContext);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v9 = *v7;
  if (EnumCaseMultiPayload == 1)
  {
    sub_1D5EB9920(0);
    v11 = *(v10 + 48);
    sub_1D67505CC(*(v9 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack + 8), a1);

    sub_1D5FBA900(0, &qword_1EDF3BEE0, sub_1D5EB5218, &type metadata for FormatLayout, MEMORY[0x1E69D74C0]);
    (*(*(v12 - 8) + 8))(&v7[v11], v12);
  }

  else
  {

    sub_1D67505CC(*(v9 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_bindingStack + 8), a1);
  }
}

void sub_1D5FB5C50(void (*a1)(void, void))
{
  v3 = type metadata accessor for FormatOptionsNodeStatementContext(0);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5D286BC(v1, v6, type metadata accessor for FormatOptionsNodeStatementContext);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v8 = *v6;
  if (EnumCaseMultiPayload == 1)
  {
    sub_1D5EB9920(0);
    v10 = *(v9 + 48);
    a1(*(v8 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack), *(v8 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack + 8));

    sub_1D5FBA900(0, &qword_1EDF3BEE0, sub_1D5EB5218, &type metadata for FormatLayout, MEMORY[0x1E69D74C0]);
    (*(*(v11 - 8) + 8))(&v6[v10], v11);
  }

  else
  {

    a1(*(v8 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_bindingStack), *(v8 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_bindingStack + 8));
  }
}

void sub_1D5FB5E58(void (*a1)(void, void))
{
  v3 = type metadata accessor for FormatOptionsNodeStatementContext(0);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5D286BC(v1, v6, type metadata accessor for FormatOptionsNodeStatementContext);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v8 = *v6;
  if (EnumCaseMultiPayload == 1)
  {
    sub_1D5EB9920(0);
    v10 = *(v9 + 48);
    a1(*(v8 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack), *(v8 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack + 8));

    sub_1D5FBA900(0, &qword_1EDF3BEE0, sub_1D5EB5218, &type metadata for FormatLayout, MEMORY[0x1E69D74C0]);
    (*(*(v11 - 8) + 8))(&v6[v10], v11);
  }

  else
  {

    a1(*(v8 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_bindingStack), *(v8 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_bindingStack + 8));
  }
}

void sub_1D5FB6008(void *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for FormatOptionsNodeStatementContext(0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5D286BC(v2, v7, type metadata accessor for FormatOptionsNodeStatementContext);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v9 = *v7;
  if (EnumCaseMultiPayload == 1)
  {
    sub_1D5EB9920(0);
    v11 = *(v10 + 48);
    sub_1D6750B04(*(v9 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack + 8), a1);

    sub_1D5FBA900(0, &qword_1EDF3BEE0, sub_1D5EB5218, &type metadata for FormatLayout, MEMORY[0x1E69D74C0]);
    (*(*(v12 - 8) + 8))(&v7[v11], v12);
  }

  else
  {

    sub_1D6750B04(*(v9 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_bindingStack + 8), a1);
  }
}

void sub_1D5FB61D8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unsigned __int8 a5@<W4>, uint64_t *a6@<X8>)
{
  v53 = a2;
  v49 = a4;
  v52 = a3;
  v81 = a1;
  v51 = a6;
  v7 = type metadata accessor for FeedRecipe(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FormatLayoutError(0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v50 = (&v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5B7B320(0, &qword_1EDF337F0, type metadata accessor for FormatOption);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v48 - v16;
  v18 = type metadata accessor for FormatOption(0);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = &v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v23 - 8, v24);
  v26 = &v48 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = a5;
  if (a5 > 3u)
  {
    if (a5 > 5u)
    {
      v36 = v54;
      v37 = v52;
      if (v27 == 6)
      {
        sub_1D6B7BBAC(*(v81 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack), &v55);
        if (!v36)
        {
          v71 = v55;
          v72 = v56;
          v73 = v57;
          v74 = v58;
          v79 = v53;
          v80 = v37;
          v63 = v55;
          v64 = v56;
          v65 = v57;
          v66 = v58;
          sub_1D6AFCE08(&v63, v51);
          sub_1D5F2DE58(&v71);
        }
      }

      else
      {
        sub_1D6B7B210(*(v81 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack), v10);
        if (!v36)
        {
          LOBYTE(v55) = v53;
          sub_1D5E46CD8(v10, v51);
          v30 = type metadata accessor for FeedRecipe;
          v31 = v10;
LABEL_25:
          sub_1D5C0AD20(v31, v30);
        }
      }
    }

    else
    {
      v32 = v54;
      v33 = v52;
      if (v27 == 4)
      {
        sub_1D5FB41E4(v81, v53, v52, &OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack, v51);
      }

      else
      {
        sub_1D6B7B65C(*(v81 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack), &v55);
        if (!v32)
        {
          *&v71 = v53;
          BYTE8(v71) = v33;
          sub_1D6ACAC18(&v55, v51);
          swift_unknownObjectRelease();
        }
      }
    }
  }

  else if (a5 > 1u)
  {
    v34 = v53;
    if (a5 == 2)
    {
      v35 = v54;
      sub_1D6B7C1C8(*(v81 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack), &v55);
      if (!v35)
      {
        v76 = v60;
        v77 = v61;
        v78[0] = v62[0];
        *(v78 + 9) = *(v62 + 9);
        v73 = v57;
        v74 = v58;
        v75 = v59;
        v71 = v55;
        v72 = v56;
        v69 = v61;
        v70[0] = v62[0];
        *(v70 + 9) = *(v62 + 9);
        v65 = v57;
        v66 = v58;
        v67 = v59;
        v68 = v60;
        LOBYTE(v79) = v34;
        v63 = v55;
        v64 = v56;
        sub_1D6327A70(&v63, v51);
        sub_1D5ECF320(&v71);
      }
    }

    else
    {
      v39 = v52;

      FormatOptionCollection.subscript.getter(v34, v39, v17);
      if ((*(v19 + 48))(v17, 1, v18) == 1)
      {
        sub_1D5B87964(v17, &qword_1EDF337F0, type metadata accessor for FormatOption);
        v40 = v50;
        *v50 = v34;
        *(v40 + 8) = v39;
        swift_storeEnumTagMultiPayload();
        v41 = *(v81 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config);
        sub_1D5FBA0C0(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
        v43 = swift_allocError();
        if (v41)
        {
          sub_1D5FBA968(v40, v42, type metadata accessor for FormatLayoutError);
          v44 = swift_allocObject();
          *(v44 + 16) = 2;
          *(v44 + 24) = 0x3FF0000000000000;
          *(v44 + 32) = 0;

          *v51 = v44 | 0x1000000000000000;
        }

        else
        {
          sub_1D5D286BC(v40, v42, type metadata accessor for FormatLayoutError);
          swift_willThrow();
          sub_1D5C0AD20(v40, type metadata accessor for FormatLayoutError);
        }
      }

      else
      {
        v45 = v34;

        sub_1D5FBA968(v17, v22, type metadata accessor for FormatOption);

        v46 = v81;
        v47 = v54;
        sub_1D6B744A8(v81, &v55);
        if (!v47)
        {

          sub_1D6B7DC08(v55, v45, v39, v49, v46, v51);
        }

        sub_1D5C0AD20(v22, type metadata accessor for FormatOption);
      }
    }
  }

  else
  {
    v28 = v53;
    if (!v27)
    {
      v29 = v54;
      sub_1D6B7C374(*(v81 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack), v26);
      if (v29)
      {
        return;
      }

      LOBYTE(v55) = v28;
      sub_1D613C6BC(v26, v51);
      v30 = type metadata accessor for FeedHeadline;
      v31 = v26;
      goto LABEL_25;
    }

    v38 = v54;
    sub_1D6B7C06C(*(v81 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack), &v55);
    if (!v38)
    {
      LOBYTE(v71) = v28;
      sub_1D5FCCDD4(v56, v51);
      sub_1D5EE5B54(&v55);
    }
  }
}

void sub_1D5FB6948(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unsigned __int8 a5@<W4>, unint64_t *a6@<X8>)
{
  v35 = a4;
  v49 = a3;
  v38 = a2;
  v36 = a6;
  v8 = type metadata accessor for FormatLayoutError(0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = (v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5B7B320(0, &qword_1EDF337F0, type metadata accessor for FormatOption);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = v33 - v14;
  v16 = type metadata accessor for FormatOption(0);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a5 > 3u)
  {
    if (a5 == 4)
    {
      sub_1D5FB4138();
      return;
    }

    goto LABEL_8;
  }

  if (a5 <= 2u)
  {
LABEL_8:
    sub_1D5FBA0C0(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
    swift_allocError();
    *v30 = 0xD00000000000006ELL;
    v30[1] = 0x80000001D73C3790;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return;
  }

  v33[1] = v8;
  v21 = a1[5];
  v44 = a1[4];
  v45 = v21;
  v46 = a1[6];
  v22 = a1[1];
  v40 = *a1;
  v41 = v22;
  v23 = a1[3];
  v42 = a1[2];
  v43 = v23;
  v34 = off_1F51B1B98[0];
  v24 = v49;

  (v34)(v38, v24, &type metadata for FormatPrefetchContext, &off_1F51B1B80);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    v25 = *(a1 + 8);
    sub_1D5B87964(v15, &qword_1EDF337F0, type metadata accessor for FormatOption);
    v26 = v49;
    *v11 = v38;
    v11[1] = v26;
    swift_storeEnumTagMultiPayload();
    sub_1D5FBA0C0(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
    v28 = swift_allocError();
    if (v25)
    {
      sub_1D5FBA968(v11, v27, type metadata accessor for FormatLayoutError);
      v29 = swift_allocObject();
      *(v29 + 16) = 2;
      *(v29 + 24) = 0x3FF0000000000000;
      *(v29 + 32) = 0;

      *v36 = v29 | 0x1000000000000000;
    }

    else
    {
      sub_1D5D286BC(v11, v27, type metadata accessor for FormatLayoutError);
      swift_willThrow();
      sub_1D5C0AD20(v11, type metadata accessor for FormatLayoutError);
    }
  }

  else
  {
    v31 = v49;

    sub_1D5FBA968(v15, v20, type metadata accessor for FormatOption);
    v48[4] = v44;
    v48[5] = v45;
    v48[6] = v46;
    v48[0] = v40;
    v48[1] = v41;
    v48[2] = v42;
    v48[3] = v43;

    v32 = v37;
    sub_1D6B74D28(v48, &v39);
    if (!v32)
    {

      v47[3] = v43;
      v47[4] = v44;
      v47[5] = v45;
      v47[6] = v46;
      v47[0] = v40;
      v47[1] = v41;
      v47[2] = v42;
      sub_1D6B7E640(v39, v38, v31, v35, v47, v36);
    }

    sub_1D5C0AD20(v20, type metadata accessor for FormatOption);
  }
}

void sub_1D5FB6E58(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unsigned __int8 a5@<W4>, uint64_t *a6@<X8>)
{
  v53 = a2;
  v49 = a4;
  v52 = a3;
  v81 = a1;
  v51 = a6;
  v7 = type metadata accessor for FeedRecipe(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FormatLayoutError(0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v50 = (&v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5B7B320(0, &qword_1EDF337F0, type metadata accessor for FormatOption);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v48 - v16;
  v18 = type metadata accessor for FormatOption(0);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = &v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v23 - 8, v24);
  v26 = &v48 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = a5;
  if (a5 > 3u)
  {
    if (a5 > 5u)
    {
      v36 = v54;
      v37 = v52;
      if (v27 == 6)
      {
        sub_1D6B7BBAC(*(v81 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_bindingStack), &v55);
        if (!v36)
        {
          v71 = v55;
          v72 = v56;
          v73 = v57;
          v74 = v58;
          v79 = v53;
          v80 = v37;
          v63 = v55;
          v64 = v56;
          v65 = v57;
          v66 = v58;
          sub_1D6AFCE08(&v63, v51);
          sub_1D5F2DE58(&v71);
        }
      }

      else
      {
        sub_1D6B7B210(*(v81 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_bindingStack), v10);
        if (!v36)
        {
          LOBYTE(v55) = v53;
          sub_1D5E46CD8(v10, v51);
          v30 = type metadata accessor for FeedRecipe;
          v31 = v10;
LABEL_25:
          sub_1D5C0AD20(v31, v30);
        }
      }
    }

    else
    {
      v32 = v54;
      v33 = v52;
      if (v27 == 4)
      {
        sub_1D5FB41E4(v81, v53, v52, &OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_bindingStack, v51);
      }

      else
      {
        sub_1D6B7B65C(*(v81 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_bindingStack), &v55);
        if (!v32)
        {
          *&v71 = v53;
          BYTE8(v71) = v33;
          sub_1D6ACAC18(&v55, v51);
          swift_unknownObjectRelease();
        }
      }
    }
  }

  else if (a5 > 1u)
  {
    v34 = v53;
    if (a5 == 2)
    {
      v35 = v54;
      sub_1D6B7C1C8(*(v81 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_bindingStack), &v55);
      if (!v35)
      {
        v76 = v60;
        v77 = v61;
        v78[0] = v62[0];
        *(v78 + 9) = *(v62 + 9);
        v73 = v57;
        v74 = v58;
        v75 = v59;
        v71 = v55;
        v72 = v56;
        v69 = v61;
        v70[0] = v62[0];
        *(v70 + 9) = *(v62 + 9);
        v65 = v57;
        v66 = v58;
        v67 = v59;
        v68 = v60;
        LOBYTE(v79) = v34;
        v63 = v55;
        v64 = v56;
        sub_1D6327A70(&v63, v51);
        sub_1D5ECF320(&v71);
      }
    }

    else
    {
      v39 = v52;

      FormatOptionCollection.subscript.getter(v34, v39, v17);
      if ((*(v19 + 48))(v17, 1, v18) == 1)
      {
        sub_1D5B87964(v17, &qword_1EDF337F0, type metadata accessor for FormatOption);
        v40 = v50;
        *v50 = v34;
        *(v40 + 8) = v39;
        swift_storeEnumTagMultiPayload();
        v41 = *(v81 + 48);
        sub_1D5FBA0C0(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
        v43 = swift_allocError();
        if (v41)
        {
          sub_1D5FBA968(v40, v42, type metadata accessor for FormatLayoutError);
          v44 = swift_allocObject();
          *(v44 + 16) = 2;
          *(v44 + 24) = 0x3FF0000000000000;
          *(v44 + 32) = 0;

          *v51 = v44 | 0x1000000000000000;
        }

        else
        {
          sub_1D5D286BC(v40, v42, type metadata accessor for FormatLayoutError);
          swift_willThrow();
          sub_1D5C0AD20(v40, type metadata accessor for FormatLayoutError);
        }
      }

      else
      {
        v45 = v34;

        sub_1D5FBA968(v17, v22, type metadata accessor for FormatOption);

        v46 = v81;
        v47 = v54;
        sub_1D6B755A8(v81, &v55);
        if (!v47)
        {

          sub_1D6B7F7A4(v55, v45, v39, v49, v46, v51);
        }

        sub_1D5C0AD20(v22, type metadata accessor for FormatOption);
      }
    }
  }

  else
  {
    v28 = v53;
    if (!v27)
    {
      v29 = v54;
      sub_1D6B7C374(*(v81 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_bindingStack), v26);
      if (v29)
      {
        return;
      }

      LOBYTE(v55) = v28;
      sub_1D613C6BC(v26, v51);
      v30 = type metadata accessor for FeedHeadline;
      v31 = v26;
      goto LABEL_25;
    }

    v38 = v54;
    sub_1D6B7C06C(*(v81 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_bindingStack), &v55);
    if (!v38)
    {
      LOBYTE(v71) = v28;
      sub_1D5FCCDD4(v56, v51);
      sub_1D5EE5B54(&v55);
    }
  }
}

void sub_1D5FB75BC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unsigned __int8 a5@<W4>, uint64_t *a6@<X8>)
{
  v49 = a6;
  v12 = type metadata accessor for FeedRecipe(0);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = &v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a5 > 3u)
  {
    if (a5 > 5u)
    {
      if (a5 != 6)
      {
        sub_1D5FB500C(sub_1D6B7B210);
        if (v6)
        {
          return;
        }

        LOBYTE(v23) = a2;
        sub_1D5E46CD8(v15, v49);
        v20 = type metadata accessor for FeedRecipe;
        v21 = v15;
        goto LABEL_22;
      }

      sub_1D5FB54EC(sub_1D6B7BBAC);
      if (!v6)
      {
        v39 = v23;
        v40 = v24;
        v41 = v25;
        v42 = v26;
        v47 = a2;
        v48 = a3;
        v31 = v23;
        v32 = v24;
        v33 = v25;
        v34 = v26;
        sub_1D6AFCE08(&v31, v49);
        sub_1D5F2DE58(&v39);
      }
    }

    else if (a5 == 4)
    {
      sub_1D5FB4614(a2, a3, v49);
    }

    else
    {
      sub_1D5FB58A4(sub_1D6B7B65C);
      if (!v6)
      {
        *&v39 = a2;
        BYTE8(v39) = a3;
        sub_1D6ACAC18(&v23, v49);
        swift_unknownObjectRelease();
      }
    }
  }

  else if (a5 > 1u)
  {
    if (a5 == 2)
    {
      sub_1D5FB5E58(sub_1D6B7C1C8);
      if (!v6)
      {
        v44 = v28;
        v45 = v29;
        v46[0] = v30[0];
        *(v46 + 9) = *(v30 + 9);
        v41 = v25;
        v42 = v26;
        v43 = v27;
        v39 = v23;
        v40 = v24;
        v37 = v29;
        v38[0] = v30[0];
        *(v38 + 9) = *(v30 + 9);
        v33 = v25;
        v34 = v26;
        v35 = v27;
        v36 = v28;
        LOBYTE(v47) = a2;
        v31 = v23;
        v32 = v24;
        sub_1D6327A70(&v31, v49);
        sub_1D5ECF320(&v39);
      }
    }

    else
    {
      sub_1D6F70570(a1, a2, a3, a4, v49);
    }
  }

  else
  {
    if (!a5)
    {
      sub_1D5FB500C(sub_1D6B7C374);
      if (v6)
      {
        return;
      }

      LOBYTE(v23) = a2;
      sub_1D613C6BC(v19, v49);
      v20 = type metadata accessor for FeedHeadline;
      v21 = v19;
LABEL_22:
      sub_1D5C0AD20(v21, v20);
      return;
    }

    sub_1D5FB526C(&v23);
    if (!v6)
    {
      LOBYTE(v39) = a2;
      sub_1D5FCCDD4(v24, v49);
      sub_1D5EE5B54(&v23);
    }
  }
}