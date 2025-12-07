uint64_t sub_1ADF507BC(void *a1)
{
  v3 = v1;
  v5 = *v3;
  result = swift_beginAccess();
  if (v3[7] != 1)
  {
    type metadata accessor for CRDecoder();
    result = swift_initStackObject();
    v7 = MEMORY[0x1E69E7CC0];
    *(result + 32) = MEMORY[0x1E69E7CC0];
    *(result + 40) = v7;
    *(result + 48) = MEMORY[0x1E69E7CC8];
    *(result + 16) = 0;
    *(result + 24) = v7;
    *(result + 64) = 0;
    *(result + 72) = 0;
    *(result + 56) = 513;
    v8 = v3[7];
    if (v8 == 1)
    {
      __break(1u);
      return result;
    }

    v9 = v3[5];
    v10 = v3[6];
    v11 = v3[4];
    *&v31 = v3[3];
    *(&v31 + 1) = v11;
    v32 = v9;
    v33 = v10;
    v34 = v8;
    v12 = *(v3[8] + OBJC_IVAR___CRContext_assetManager);
    sub_1ADE92304(v31, v11, v9, v10, v8);
    v13 = *(v5 + 80);
    v14 = *(v5 + 88);

    sub_1ADE63800(a1, &v31, v12, v13, v14, &v35);
    if (v2)
    {
      v15 = v32;
      v16 = v33;
      sub_1ADDCC35C(v31, *(&v31 + 1));
      sub_1ADDCC35C(v15, v16);

LABEL_19:

      swift_setDeallocating();
      CRDecoder.deinit();
      return swift_deallocClassInstance();
    }

    v17 = v32;
    v18 = v33;
    sub_1ADDCC35C(v31, *(&v31 + 1));
    sub_1ADDCC35C(v17, v18);

    v19 = v35;
    v20 = v36;
    swift_beginAccess();
    if (v3[7] == 1)
    {
      swift_endAccess();
      sub_1ADF4EFC0(0, 0, 7892834, 0xE300000000000000, 0, 0xE000000000000000);
    }

    else
    {
      v35 = v19;
      v36 = v20;
      type metadata accessor for Capsule(0, v13, v14, v21);
      v22 = Capsule.merge(delta:)(&v35);
      swift_endAccess();
      sub_1ADF4EFC0(0, 0, 7892834, 0xE300000000000000, 0, 0xE000000000000000);
      if (v22)
      {
        if (qword_1EB5B9AA0 != -1)
        {
          swift_once();
        }

        v23 = sub_1AE23C78C();
        __swift_project_value_buffer(v23, qword_1EB5D78E0);
        v24 = sub_1AE23C76C();
        v25 = sub_1AE23D60C();
        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          *v26 = 0;
          _os_log_impl(&dword_1ADDCA000, v24, v25, "Delta merge succeed", v26, 2u);
          MEMORY[0x1B26FDA50](v26, -1, -1);
        }

        sub_1ADF52834();
        goto LABEL_18;
      }
    }

    if (qword_1EB5B9AA0 != -1)
    {
      swift_once();
    }

    v27 = sub_1AE23C78C();
    __swift_project_value_buffer(v27, qword_1EB5D78E0);
    v28 = sub_1AE23C76C();
    v29 = sub_1AE23D60C();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_1ADDCA000, v28, v29, "Delta merge fail", v30, 2u);
      MEMORY[0x1B26FDA50](v30, -1, -1);
    }

    sub_1ADF4E084(0);
LABEL_18:

    goto LABEL_19;
  }

  return result;
}

double sub_1ADF50BB4(uint64_t *a1)
{
  v3 = v1;
  v5 = *v3;
  v23[0] = 2;
  v6 = v3[8];
  v7 = *(v6 + OBJC_IVAR___CRContext_assetManager);
  sub_1ADE73B00(a1, &v24);
  v8 = *(v5 + 80);
  v9 = *(v5 + 88);

  sub_1AE1EB234(v23, a1, 0, v7, 1, v8, v9, &v28);
  if (!v2)
  {
    v32 = v28.n128_u64[1];
    v11 = v28.n128_u64[0];
    v12 = v29;
    v13 = v30;
    v14 = v31;
    if (v3[30])
    {

      sub_1AE23C90C();
    }

    v3[30] = 0;

    swift_beginAccess();
    if (v3[7] == 1)
    {
      v15 = v3[3];
      v22 = v3[4];
      v16 = v3[5];
      v17 = v3[6];
      v18 = v32;
      v3[3] = v11;
      v3[4] = v18;
      v3[5] = v12;
      v3[6] = v13;
      v3[7] = v14;
      sub_1ADDD86D8(v11, v18);
      sub_1ADDD86D8(v12, v13);

      sub_1ADE92284(v15, v22, v16, v17, 1);
    }

    else
    {
      swift_beginAccess();
      if (v3[7] != 1)
      {
        v24.n128_u64[0] = v11;
        v24.n128_u64[1] = v32;
        v25 = v12;
        v26 = v13;
        v27 = v14;
        v20 = type metadata accessor for Capsule(0, v8, v9, v19);
        Capsule.merge<A>(_:)(&v24, v20, v8, v9);
      }

      swift_endAccess();
      swift_beginAccess();
      if (v3[7] != 1)
      {
        type metadata accessor for Capsule(0, v8, v9, v21);
        Capsule.finalizeTimestamps(_:)(v6);
      }

      swift_endAccess();
      v18 = v32;
    }

    sub_1ADF52834();
    sub_1ADF4EFC0(0, 0, 7892834, 0xE300000000000000, 0, 0xE000000000000000);
    v24.n128_u64[0] = v11;
    v24.n128_u64[1] = v18;
    v25 = v12;
    v26 = v13;
    v27 = v14;
    sub_1ADF52064(&v24);
    sub_1ADDCC35C(v11, v18);
    sub_1ADDCC35C(v12, v13);
  }

  return result;
}

void *sub_1ADF50E5C(char *a1)
{
  v3 = v1;
  v5 = *v1;
  result = swift_beginAccess();
  v8 = v3[7];
  if (v8 != 1)
  {
    v9 = *(v3 + 5);
    v51[0] = *(v3 + 3);
    v51[1] = v9;
    v52 = v8;
    type metadata accessor for Capsule(0, *(v5 + 80), *(v5 + 88), v7);
    Capsule.version.getter(&v62);
    v10 = *a1;
    v75 = v2;
    if (v10)
    {
      v49 = v63;
      v50 = v62;
    }

    else
    {

      v11 = v3[18];
      if (v11[2])
      {
        v12 = v11[5];
        v50 = v11[4];

        v49 = v12;
      }

      else
      {
        v49 = 0;
        v50 = 0;
      }
    }

    type metadata accessor for CRDecoder();
    inited = swift_initStackObject();
    v14 = MEMORY[0x1E69E7CC0];
    *(inited + 32) = MEMORY[0x1E69E7CC0];
    *(inited + 40) = v14;
    *(inited + 48) = MEMORY[0x1E69E7CC8];
    *(inited + 56) = 512;
    *(inited + 16) = 0;
    *(inited + 24) = v14;
    *(inited + 64) = 0;
    *(inited + 72) = 0;
    v16 = *(a1 + 1);
    v15 = *(a1 + 2);
    v18 = *(a1 + 3);
    v17 = *(a1 + 4);
    v19 = *(a1 + 5);
    v20 = *(a1 + 6);
    v43 = *(a1 + 7);
    v44 = *(a1 + 8);
    v62 = v16;
    v63 = v15;
    v64 = v18;
    v65 = v17;
    v66 = v19;
    v67 = v20;
    v68 = v43;
    v69 = v44;
    v47 = *(a1 + 88);
    v48 = *(a1 + 72);
    v70 = v48;
    v71 = v47;
    v45 = *(a1 + 120);
    v46 = *(a1 + 104);
    v72 = v46;
    v73 = v45;
    v21 = sub_1ADEDA0E0(&v62);
    if (v21 == 1)
    {
      v16 = 0xF000000000000007;
      v22 = 0;
    }

    else
    {
      v22 = v15;
    }

    if (v21 == 1)
    {
      v23 = 0;
    }

    else
    {
      v23 = v18;
    }

    if (v21 == 1)
    {
      v24 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v24 = v17;
    }

    if (v21 == 1)
    {
      v25 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v25 = v19;
    }

    if (v21 == 1)
    {
      v26 = 0;
    }

    else
    {
      v26 = v20;
    }

    v27 = 0xC000000000000000;
    if (v21 != 1)
    {
      v27 = v43;
    }

    v28 = vdup_n_s32(v21 == 1);
    v29 = v44;
    if (v21 == 1)
    {
      v29 = MEMORY[0x1E69E7CC0];
    }

    *&v53 = v16;
    *(&v53 + 1) = v22;
    v30.i64[0] = v28.u32[0];
    v30.i64[1] = v28.u32[1];
    *&v54 = v23;
    *(&v54 + 1) = v24;
    *&v55 = v25;
    *(&v55 + 1) = v26;
    v31 = vcgezq_s64(vshlq_n_s64(v30, 0x3FuLL));
    *&v56 = v27;
    *(&v56 + 1) = v29;
    v57 = vandq_s8(v48, v31);
    v58 = vandq_s8(v47, v31);
    v59 = vandq_s8(v46, v31);
    v60 = vandq_s8(v45, v31);
    v74[0] = v53;
    v74[1] = v54;
    v74[2] = v55;
    v74[3] = v56;
    v74[4] = v57;
    v74[5] = v58;
    v74[6] = v59;
    v74[7] = v60;
    sub_1ADEDA1A4(a1, v51);
    v32 = v75;
    sub_1ADDD5D3C(v74);
    if (v32)
    {
      sub_1ADE6AF00(&v53);
      sub_1ADF562FC(v50, v49, MEMORY[0x1E69E7CF8]);
      swift_setDeallocating();
      CRDecoder.deinit();
      return swift_deallocClassInstance();
    }

    else
    {
      if ((~v16 & 0xF000000000000007) != 0 && (v16 & 0xC000000000000000) == 0x4000000000000000)
      {
        v33 = v16 & 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        type metadata accessor for Proto_Value._StorageClass();
        v33 = swift_initStaticObject();
      }

      v34 = *(v33 + 16);
      if ((~v34 & 0xF000000000000007) != 0 && ((v34 >> 59) & 0x1E | (v34 >> 2) & 1) == 6)
      {
        v35 = v34 & 0xFFFFFFFFFFFFFFBLL;
        v36 = *(v35 + 16);
        v37 = *(v35 + 24);
      }

      else
      {
        v36 = MEMORY[0x1E69E7CC0];
        v37 = MEMORY[0x1E69E7CC0];
      }

      sub_1ADDD6748(v36, v37, inited, v61);
      sub_1ADE6AF00(&v53);
      swift_setDeallocating();
      CRDecoder.deinit();
      swift_deallocClassInstance();
      v38 = v61[0];
      if (v50)
      {
        sub_1ADF637A8(v49, v61[1]);
        if (v39)
        {
          sub_1ADF562FC(v50, v49, MEMORY[0x1E69E7CF8]);

          return sub_1ADF512D4(v40);
        }

        sub_1ADF637A8(v50, v38);
        v42 = v41;
        sub_1ADF562FC(v50, v49, MEMORY[0x1E69E7CF8]);

        if (v42)
        {
          return sub_1ADF512D4(v40);
        }
      }

      else
      {
      }

      return sub_1ADF4EFC0(0, 0, 0x746E696F70, 0xE500000000000000, 0, 0xE000000000000000);
    }
  }

  return result;
}

void *sub_1ADF512D4(double a1)
{
  v2 = *v1;
  v3 = sub_1AE23C8EC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v19 - v8;
  v10 = sub_1AE23C88C();
  MEMORY[0x1EEE9AC00](v10);
  if (v1[30])
  {

    return sub_1ADF4EFC0(0, 0, 0x746E696F70, 0xE500000000000000, 0, 0xE000000000000000);
  }

  else
  {
    sub_1ADF4EFC0(0, 0, 0x6570617274766E69, 0xEC0000006D75697ALL, 0, 0xE000000000000000);
    v12 = swift_allocObject();
    v20 = v4;
    v21 = v3;
    v13 = v12;
    swift_weakInit();
    v14 = swift_allocObject();
    v14[2] = *(v2 + 80);
    v14[3] = *(v2 + 88);
    v14[4] = v13;
    aBlock[4] = sub_1ADF56340;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1ADDD2200;
    aBlock[3] = &block_descriptor_82;
    v19 = _Block_copy(aBlock);
    v22 = MEMORY[0x1E69E7CC0];
    sub_1ADDCEEA8(&qword_1ED96AC40, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9E80, &qword_1AE2521E0);
    sub_1ADDCF010(&qword_1ED96AA50, &unk_1EB5B9E80, &qword_1AE2521E0);
    sub_1AE23D8DC();
    sub_1AE23C91C();
    swift_allocObject();
    v15 = sub_1AE23C8FC();
    v17 = v20;
    v16 = v21;

    v1[30] = v15;

    sub_1ADF55084(0.01, 0.05);
    sub_1AE23C8DC();
    sub_1AE23C92C();
    v18 = *(v17 + 8);
    result = v18(v6, v16);
    if (v1[30])
    {

      sub_1AE23D66C();

      return v18(v9, v16);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

double sub_1ADF516E0(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1ADF518DC();
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + 240) = 0;
  }

  return result;
}

void sub_1ADF518DC()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = v0[7];
  if (v2 != 1)
  {
    v3 = v0[4];
    v5 = v0[5];
    v4 = v0[6];
    v43 = v0;
    v41 = v0[3];
    sub_1ADDD86D8(v41, v3);
    sub_1ADDD86D8(v5, v4);
    v6 = qword_1EB5B9AA0;

    if (v6 != -1)
    {
LABEL_30:
      swift_once();
    }

    v7 = sub_1AE23C78C();
    __swift_project_value_buffer(v7, qword_1EB5D78E0);
    v8 = sub_1AE23C76C();
    v9 = sub_1AE23D60C();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1ADDCA000, v8, v9, "Send fullModel", v10, 2u);
      MEMORY[0x1B26FDA50](v10, -1, -1);
    }

    v11 = v43;
    sub_1ADF4EFC0(0, 0, 0x75697A6570617274, 0xE90000000000006DLL, 0, 0xE000000000000000);
    *&v56 = v41;
    *(&v56 + 1) = v3;
    v39 = v4;
    v40 = v3;
    v37 = v2;
    v38 = v5;
    *&v57 = v5;
    *(&v57 + 1) = v4;
    *&v58 = v2;
    v35 = *(v1 + 88);
    v36 = *(v1 + 80);
    type metadata accessor for Capsule(0, v36, v35, v12);
    v1 = sub_1AE1FDF30();
    v2 = v1 + 64;
    v13 = 1 << *(v1 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v3 = v14 & *(v1 + 64);

    swift_beginAccess();
    v15 = 0;
    v5 = (v13 + 63) >> 6;
    v42 = v1;
    if (v3)
    {
      while (1)
      {
        while (1)
        {
          v4 = v15;
LABEL_12:
          v16 = __clz(__rbit64(v3));
          v3 &= v3 - 1;
          v17 = (v4 << 10) | (16 * v16);
          v18 = (*(v1 + 48) + v17);
          v19 = v18[1];
          v46 = *v18;
          v20 = *(*(v1 + 56) + v17);
          if (v11[13])
          {
            break;
          }

          sub_1ADDD86D8(v46, v19);

          sub_1ADDCC35C(v46, v19);

          v15 = v4;
          if (!v3)
          {
            goto LABEL_9;
          }
        }

        sub_1ADF4E010((v11 + 10), &v56);
        v44 = v58;
        v45 = *(&v57 + 1);
        __swift_project_boxed_opaque_existential_1(&v56, *(&v57 + 1));
        v22 = *(v20 + 16);
        v21 = *(v20 + 24);

        sub_1ADDD86D8(v46, v19);

        sub_1ADDD86D8(v22, v21);
        sub_1AE1A3880(v22, v21, &v48);

        sub_1ADDCC35C(v22, v21);
        v23 = v68;
        (*(v44 + 16))(&v48, v45);
        v68 = v23;
        if (v23)
        {
          break;
        }

        sub_1ADDCC35C(v46, v19);

        __swift_destroy_boxed_opaque_existential_1(&v56);
        v15 = v4;
        v1 = v42;
        v11 = v43;
        if (!v3)
        {
          goto LABEL_9;
        }
      }

      sub_1ADE92284(v41, v40, v38, v39, v37);
      sub_1ADDCC35C(v46, v19);

      v34 = &v56;
    }

    else
    {
      while (1)
      {
LABEL_9:
        v4 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          __break(1u);
          goto LABEL_30;
        }

        if (v4 >= v5)
        {
          break;
        }

        v3 = *(v2 + 8 * v4);
        ++v15;
        if (v3)
        {
          goto LABEL_12;
        }
      }

      v24 = v11[8];
      LOBYTE(v56) = 2;
      type metadata accessor for CREncoder();
      swift_allocObject();
      CREncoder.init(_:version:fileSignature:)(v24, &v56, 0, 0xF000000000000000);
      v64[0] = v41;
      v64[1] = v40;
      v64[2] = v38;
      v64[3] = v39;
      v64[4] = v37;
      v25 = v68;
      sub_1ADE66B08(v64, 0, 0, 0, v36, v35, v65);
      v68 = v25;
      if (v25)
      {

        sub_1ADE92284(v41, v40, v38, v39, v37);
        return;
      }

      v52 = v65[4];
      v53 = v65[5];
      v54 = v65[6];
      v55[0] = v65[7];
      v48 = v65[0];
      v49 = v65[1];
      v50 = v65[2];
      v51 = v65[3];
      sub_1ADEDA148(&v48);
      v62 = v54;
      v63[0] = v55[0];
      *(v63 + 9) = *(v55 + 9);
      v58 = v50;
      v59 = v51;
      v60 = v52;
      v61 = v53;
      v56 = v48;
      v57 = v49;
      Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(&v56);
      v66[6] = v62;
      v67[0] = v63[0];
      *(v67 + 9) = *(v63 + 9);
      v66[2] = v58;
      v66[3] = v59;
      v66[4] = v60;
      v66[5] = v61;
      v66[0] = v56;
      v66[1] = v57;
      sub_1ADDF6EEC();
      swift_beginAccess();
      if (!v11[13])
      {
        sub_1ADE6AF00(v65);
        sub_1ADE92284(v41, v40, v38, v39, v37);

        return;
      }

      sub_1ADF4E010((v11 + 10), v47);
      v26 = v47[4];
      __swift_project_boxed_opaque_existential_1(v47, v47[3]);
      v27 = v68;
      sub_1ADF51F10(v66, v28, v29);
      v68 = v27;
      if (!v27)
      {
        v32 = v30;
        v33 = v31;
        (*(v26 + 8))();
        v68 = 0;
        sub_1ADDCC35C(v32, v33);
      }

      sub_1ADE92284(v41, v40, v38, v39, v37);

      sub_1ADE6AF00(v65);
      v34 = v47;
    }

    __swift_destroy_boxed_opaque_existential_1(v34);
  }
}

void sub_1ADF51F10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 153);
  v6 = *(v3 + 168);
  if (v5 == 1 && v6 >> 60 == 15)
  {
    sub_1ADED9ED8(a1, a2, a3);
    sub_1AE23C51C();
  }

  else
  {
    v8 = sub_1ADF4BFFC(6, *(v3 + 152) | (v5 << 8), *(v3 + 160), v6);
    v10 = v9;
    sub_1ADED9ED8(v8, v9, v11);
    v12 = sub_1AE23C51C();
    if (v4)
    {
      sub_1ADDCC35C(v8, v10);
    }

    else
    {
      v14 = v12;
      v15 = v13;
      sub_1AE23BEEC();
      sub_1ADDCC35C(v14, v15);
    }
  }
}

void sub_1ADF52064(__int128 *a1)
{
  v3 = v2;
  v4 = v1;
  v70 = a1[1];
  v72 = *a1;
  v5 = *(a1 + 4);
  v6 = *v1;
  swift_beginAccess();
  v7 = v4[7];
  if (v7 != 1)
  {
    v8 = v4[3];
    v9 = v4[4];
    v11 = v4[5];
    v10 = v4[6];
    if (v4[30])
    {
      v12 = v4[3];
      sub_1ADE92304(v8, v4[4], v4[5], v4[6], v4[7]);

      sub_1AE23C90C();

      v4[30] = 0;

      sub_1ADF518DC();
      sub_1ADE92284(v12, v9, v11, v10, v7);
    }

    else
    {
      v13 = v4[4];
      v14 = &v78;
      *&v83 = v4[3];
      *(&v83 + 1) = v13;
      *&v84 = v11;
      *(&v84 + 1) = v10;
      *&v85 = v7;
      v15 = v11;
      v16 = v4[8];
      v81[0] = v72;
      v81[1] = v70;
      v82 = v5;
      v95 = v8;
      v71 = v13;
      sub_1ADDD86D8(v8, v13);
      v73 = v15;
      sub_1ADDD86D8(v15, v10);
      type metadata accessor for Capsule(0, *(v6 + 80), *(v6 + 88), v17);

      Capsule.delta(_:from:)(v16, v81, &v78);
      v18 = v78;
      if (v78)
      {
        v69 = *(&v78 + 1);
        if (qword_1EB5B9AA0 != -1)
        {
LABEL_33:
          swift_once();
        }

        v19 = sub_1AE23C78C();
        __swift_project_value_buffer(v19, qword_1EB5D78E0);
        v20 = sub_1AE23C76C();
        v21 = sub_1AE23D60C();
        if (os_log_type_enabled(v20, v21))
        {
          v65 = v18;
          v22 = v10;
          v23 = swift_slowAlloc();
          *v23 = 0;
          _os_log_impl(&dword_1ADDCA000, v20, v21, "Send delta", v23, 2u);
          v24 = v23;
          v10 = v22;
          v18 = v65;
          MEMORY[0x1B26FDA50](v24, -1, -1);
        }

        LOBYTE(v83) = 2;
        type metadata accessor for CREncoder();
        swift_allocObject();
        CREncoder.init(_:version:fileSignature:)(v16, &v83, 0, 0xF000000000000000);
        v91[0] = v18;
        v16 = v69;
        v91[1] = v69;
        sub_1ADE69718(v91, v92);
        if (v3)
        {

          sub_1ADE92284(v95, v71, v73, v10, v7);
          sub_1ADF562FC(v18, v69, MEMORY[0x1E69E7D48]);
        }

        else
        {
          v66 = v18;
          v63 = v7;
          v64 = v10;
          v34 = v92[4];
          v35 = v92[6];
          v36 = v92[7];
          v14[5] = v92[5];
          v14[6] = v35;
          v14[7] = v36;
          v78 = v92[0];
          v79 = v92[1];
          v80 = v92[2];
          v14[3] = v92[3];
          v14[4] = v34;

          v37 = v14[5];
          v38 = v14[6];
          v39 = v14[3];
          v14[12] = v14[4];
          v14[13] = v37;
          v40 = v14[7];
          v14[14] = v38;
          v14[15] = v40;
          v41 = v79;
          v14[8] = v78;
          v14[9] = v41;
          v14[10] = v80;
          v14[11] = v39;
          sub_1ADEDA0F8(v81);
          v42 = v14[14];
          v43 = v14[15];
          v44 = v14[12];
          v14[22] = v14[13];
          v14[23] = v42;
          v14[24] = v43;
          *(v90 + 9) = *(v14 + 249);
          v45 = v14[11];
          v85 = v14[10];
          v86 = v45;
          v87 = v44;
          v46 = v14[9];
          v83 = v14[8];
          v84 = v46;
          Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(&v83);
          v93[5] = v88;
          v93[6] = v89;
          v94[0] = v90[0];
          *(v94 + 9) = *(v90 + 9);
          v93[2] = v85;
          v93[3] = v86;
          v93[4] = v87;
          v47 = 1 << *(v69 + 32);
          v48 = -1;
          v93[0] = v83;
          v93[1] = v84;
          v3 = v69 + 56;
          if (v47 < 64)
          {
            v48 = ~(-1 << v47);
          }

          v49 = v48 & *(v69 + 56);

          swift_beginAccess();
          v7 = 0;
          v18 = (v47 + 63) >> 6;
          while (v49)
          {
            v50 = v49;
LABEL_25:
            v49 = (v50 - 1) & v50;
            if (v4[13])
            {
              v67 = (v50 - 1) & v50;
              v52 = (v16[6] + ((v7 << 10) | (16 * __clz(__rbit64(v50)))));
              v54 = *v52;
              v53 = v52[1];
              sub_1ADF4E010((v4 + 10), v75);
              v55 = v76;
              v56 = v77;
              __swift_project_boxed_opaque_existential_1(v75, v76);
              sub_1ADDD86D8(v54, v53);

              sub_1AE1A3880(v54, v53, v74);

              (*(v56 + 16))(v74, v55, v56);

              sub_1ADDCC35C(v54, v53);
              __swift_destroy_boxed_opaque_existential_1(v75);
              v16 = v69;
              v49 = v67;
            }
          }

          v10 = v64;
          v14 = v71;
          while (1)
          {
            v51 = v7 + 1;
            if (__OFADD__(v7, 1))
            {
              __break(1u);
              goto LABEL_33;
            }

            if (v51 >= v18)
            {
              break;
            }

            v50 = *(v3 + 8 * v51);
            ++v7;
            if (v50)
            {
              v7 = v51;
              goto LABEL_25;
            }
          }

          swift_beginAccess();
          if (v4[13])
          {
            sub_1ADF4E010((v4 + 10), v75);
            v57 = v77;
            __swift_project_boxed_opaque_existential_1(v75, v76);
            sub_1ADF51F10(v93, v58, v59);
            v61 = v60;
            v68 = v62;
            (*(v57 + 8))();
            sub_1ADDCC35C(v61, v68);
            sub_1ADE92284(v95, v71, v73, v64, v63);
            sub_1ADF562FC(v66, v69, MEMORY[0x1E69E7D48]);
            sub_1ADE6AF00(v92);
            __swift_destroy_boxed_opaque_existential_1(v75);
          }

          else
          {
            sub_1ADE6AF00(v92);
            sub_1ADE92284(v95, v71, v73, v64, v63);
            sub_1ADF562FC(v66, v16, MEMORY[0x1E69E7D48]);
          }
        }
      }

      else
      {
        if (qword_1EB5B9AA0 != -1)
        {
          swift_once();
        }

        v25 = sub_1AE23C78C();
        __swift_project_value_buffer(v25, qword_1EB5D78E0);
        v26 = sub_1AE23C76C();
        v27 = sub_1AE23D60C();
        if (os_log_type_enabled(v26, v27))
        {
          v28 = v10;
          v29 = swift_slowAlloc();
          *v29 = 0;
          _os_log_impl(&dword_1ADDCA000, v26, v27, "No delta to send", v29, 2u);
          MEMORY[0x1B26FDA50](v29, -1, -1);
          v30 = v95;
          v31 = v71;
          v32 = v73;
          v33 = v28;
        }

        else
        {
          v30 = v95;
          v31 = v71;
          v32 = v73;
          v33 = v10;
        }

        sub_1ADE92284(v30, v31, v32, v33, v7);
      }
    }
  }
}

double sub_1ADF52834()
{
  v1 = v0;
  v2 = *v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5BDD00, &qword_1AE242340);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v25 - v4;
  swift_beginAccess();
  v7 = v0[7];
  if (v7 != 1)
  {
    v25 = v5;
    v8 = v0[4];
    v9 = v0[5];
    v10 = v0[6];
    v27 = v0[3];
    sub_1ADDD86D8(v27, v8);
    sub_1ADDD86D8(v9, v10);
    v11 = qword_1EB5B9AA0;

    if (v11 != -1)
    {
      swift_once();
    }

    v12 = sub_1AE23C78C();
    __swift_project_value_buffer(v12, qword_1EB5D78E0);
    v13 = sub_1AE23C76C();
    v14 = sub_1AE23D60C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1ADDCA000, v13, v14, "Publish changes", v15, 2u);
      MEMORY[0x1B26FDA50](v15, -1, -1);
    }

    swift_beginAccess();
    v26 = v1;
    type metadata accessor for CRMulticastSyncManagerSubscription(0, *(v2 + 80), *(v2 + 88), v16);

    if (sub_1AE23D0AC())
    {
      v17 = 4;
      do
      {
        v18 = v17 - 4;
        v19 = sub_1AE23D08C();
        sub_1AE23D00C();
        if (v19)
        {

          v20 = v17 - 3;
          if (__OFADD__(v18, 1))
          {
            goto LABEL_14;
          }
        }

        else
        {
          sub_1AE23DAAC();
          v20 = v17 - 3;
          if (__OFADD__(v18, 1))
          {
LABEL_14:
            __break(1u);
            break;
          }
        }

        v28 = v27;
        v29 = v8;
        v30 = v9;
        v31 = v10;
        v32 = v7;
        sub_1AE23C86C();

        ++v17;
      }

      while (v20 != sub_1AE23D0AC());
    }

    v21 = sub_1AE23D1BC();
    v22 = v25;
    (*(*(v21 - 8) + 56))(v25, 1, 1, v21);
    v23 = swift_allocObject();
    v23[2] = 0;
    v23[3] = 0;
    v24 = v27;
    v23[4] = v26;
    v23[5] = v24;
    v23[6] = v8;
    v23[7] = v9;
    v23[8] = v10;
    v23[9] = v7;

    sub_1AE217C10(0, 0, v22, &unk_1AE24C568, v23);
  }

  return result;
}

uint64_t sub_1ADF52B90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 56) = a4;
  *(v5 + 64) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1ADF52BB0, 0, 0);
}

uint64_t sub_1ADF52BB0(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v4 = *(*(v3 + 56) + 248);
  *(v3 + 72) = v4;
  if (v4)
  {
    v5 = *(v3 + 64);
    v6 = *(v5 + 32);
    v7 = *(v5 + 16);
    *(v3 + 16) = *v5;
    *(v3 + 32) = v7;
    *(v3 + 48) = v6;

    a1 = sub_1ADF52C44;
    a2 = v4;
    a3 = 0;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE6DFA0](a1, a2, a3);
}

uint64_t sub_1ADF52C44()
{
  sub_1AE00B314((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

void *CRMulticastSyncManager.getModel()(void x0_0, void x1_0, void a3, uint64_t a1)
{
  type metadata accessor for Capsule(255, *(*v2 + 80), *(*v2 + 88), a1);
  sub_1AE23D7CC();
  return sub_1AE23D6AC();
}

uint64_t sub_1ADF52D54@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *a1;
  swift_beginAccess();
  if (a1[7] != 1)
  {
    type metadata accessor for Capsule(0, *(v6 + 80), *(v6 + 88), v7);
    Capsule.finalizeTimestamps(_:)(a2);
  }

  swift_endAccess();
  v8 = a1[3];
  v9 = a1[4];
  v10 = a1[5];
  v11 = a1[6];
  v12 = a1[7];
  *a3 = v8;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  a3[4] = v12;
  return sub_1ADE92304(v8, v9, v10, v11, v12);
}

double CRMulticastSyncManager.sync(_:sendDelta:)(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = *v3;
  v7 = sub_1AE23C88C();
  v25 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1AE23C8CC();
  v10 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 16);
  v28[0] = *a1;
  v28[1] = v13;
  v29 = *(a1 + 32);
  v23 = v3[9];
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  v16 = *(v6 + 80);
  *(v15 + 16) = v16;
  v17 = *(v6 + 88);
  v18 = *(a1 + 16);
  *(v15 + 40) = *a1;
  *(v15 + 24) = v17;
  *(v15 + 32) = v14;
  *(v15 + 56) = v18;
  *(v15 + 72) = *(a1 + 32);
  *(v15 + 80) = a2;
  aBlock[4] = sub_1ADF533EC;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1ADDD2200;
  aBlock[3] = &block_descriptor_10;
  v19 = _Block_copy(aBlock);

  v21 = type metadata accessor for Capsule(0, v16, v17, v20);
  (*(*(v21 - 8) + 16))(v26, v28, v21);
  sub_1AE23C8AC();
  v26[0] = MEMORY[0x1E69E7CC0];
  sub_1ADDCEEA8(&qword_1ED96AC40, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9E80, &qword_1AE2521E0);
  sub_1ADDCF010(&qword_1ED96AA50, &unk_1EB5B9E80, &qword_1AE2521E0);
  sub_1AE23D8DC();
  MEMORY[0x1B26FBF60](0, v12, v9, v19);
  _Block_release(v19);
  (*(v25 + 8))(v9, v7);
  (*(v10 + 8))(v12, v24);

  return result;
}

double sub_1ADF531D4(uint64_t a1, __int128 *a2, char a3, uint64_t a4, uint64_t a5)
{
  v24 = a2[1];
  v25 = *a2;
  v9 = *(a2 + 4);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v23 = a3;
    swift_beginAccess();
    v13 = v12[3];
    v14 = v12[4];
    v15 = v12[5];
    v16 = v12[6];
    v17 = v12[7];
    if (v17 == 1)
    {
      sub_1ADE92304(v12[3], v12[4], v12[5], v12[6], 1);
      *(v12 + 5) = v24;
      *(v12 + 3) = v25;
      v12[7] = v9;
      sub_1ADE92284(v13, v14, v15, v16, 1);
      v19 = type metadata accessor for Capsule(0, a4, a5, v18);
      (*(*(v19 - 8) + 16))(&v26, a2, v19);
    }

    else
    {
      swift_beginAccess();
      if (v12[7] == 1)
      {
        swift_endAccess();
        sub_1ADE92304(v13, v14, v15, v16, v17);
      }

      else
      {
        v20 = a2[1];
        v26 = *a2;
        v27 = v20;
        v28 = *(a2 + 4);
        sub_1ADE92304(v13, v14, v15, v16, v17);
        v22 = type metadata accessor for Capsule(0, a4, a5, v21);
        Capsule.merge<A>(_:)(&v26, v22, a4, a5);
        swift_endAccess();
      }
    }

    v26.n128_u64[0] = v13;
    v26.n128_u64[1] = v14;
    *&v27 = v15;
    *(&v27 + 1) = v16;
    v28 = v17;
    sub_1ADF53400(&v26, v23 & 1);

    return sub_1ADE92284(v13, v14, v15, v16, v17);
  }

  return result;
}

double sub_1ADF53400(uint64_t *a1, char a2)
{
  v3 = v2;
  v6 = *a1;
  v5 = a1[1];
  v8 = a1[2];
  v7 = a1[3];
  v9 = a1[4];
  v10 = *v2;
  swift_beginAccess();
  if (v3[7] != 1)
  {
    v12 = v3[8];
    type metadata accessor for Capsule(0, *(v10 + 80), *(v10 + 88), v11);
    Capsule.finalizeTimestamps(_:)(v12);
  }

  swift_endAccess();
  if (qword_1EB5B9AA0 != -1)
  {
    swift_once();
  }

  v13 = sub_1AE23C78C();
  __swift_project_value_buffer(v13, qword_1EB5D78E0);
  v14 = sub_1AE23C76C();
  v15 = sub_1AE23D60C();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = a2;
    v17 = v9;
    v18 = v6;
    v19 = v5;
    v20 = v8;
    v21 = v7;
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_1ADDCA000, v14, v15, "New state", v22, 2u);
    v23 = v22;
    v7 = v21;
    v8 = v20;
    v5 = v19;
    v6 = v18;
    v9 = v17;
    a2 = v16;
    MEMORY[0x1B26FDA50](v23, -1, -1);
  }

  sub_1ADF4EFC0(0, 0, 1818326639, 0xE400000000000000, 0x663D656C7974732CLL, 0xED000064656C6C69);
  if (a2)
  {
    if (v9 == 1)
    {
      sub_1ADF518DC();
    }

    else
    {
      *&v25 = v6;
      *(&v25 + 1) = v5;
      v26 = v8;
      v27 = v7;
      v28 = v9;
      sub_1ADDD86D8(v6, v5);
      sub_1ADDD86D8(v8, v7);

      sub_1ADF52064(&v25);
      return sub_1ADE92284(v6, v5, v8, v7, v9);
    }
  }

  return result;
}

double CRMulticastSyncManager.merge<A>(_:sendDelta:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  v10 = sub_1AE23C88C();
  v28 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1AE23C8CC();
  v26 = *(v13 - 8);
  v27 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a1 + 16);
  v31[0] = *a1;
  v31[1] = v16;
  v32 = *(a1 + 32);
  v25[1] = v4[9];
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  *(v18 + 16) = *(v9 + 80);
  *(v18 + 24) = a3;
  v19 = *(v9 + 88);
  v20 = *(a1 + 16);
  *(v18 + 56) = *a1;
  *(v18 + 32) = v19;
  *(v18 + 40) = a4;
  *(v18 + 48) = v17;
  *(v18 + 72) = v20;
  *(v18 + 88) = *(a1 + 32);
  *(v18 + 96) = a2;
  aBlock[4] = sub_1ADF53CAC;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1ADDD2200;
  aBlock[3] = &block_descriptor_19_0;
  v21 = _Block_copy(aBlock);

  v23 = type metadata accessor for Capsule(0, a3, a4, v22);
  (*(*(v23 - 8) + 16))(v29, v31, v23);
  sub_1AE23C8AC();
  v29[0] = MEMORY[0x1E69E7CC0];
  sub_1ADDCEEA8(&qword_1ED96AC40, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9E80, &qword_1AE2521E0);
  sub_1ADDCF010(&qword_1ED96AA50, &unk_1EB5B9E80, &qword_1AE2521E0);
  sub_1AE23D8DC();
  MEMORY[0x1B26FBF60](0, v15, v12, v21);
  _Block_release(v21);
  (*(v28 + 8))(v12, v10);
  (*(v26 + 8))(v15, v27);

  return result;
}

double sub_1ADF53B10(uint64_t a1, __int128 *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    swift_beginAccess();
    v16 = v15[7];
    if (v16 == 1)
    {
    }

    else
    {
      v24 = a7;
      v25 = a3;
      v17 = v15[3];
      v18 = v15[4];
      v19 = v15[5];
      v20 = v15[6];
      swift_beginAccess();
      if (v15[7] == 1)
      {
        swift_endAccess();
        sub_1ADE92304(v17, v18, v19, v20, v16);
      }

      else
      {
        v21 = a2[1];
        v26 = *a2;
        v27 = v21;
        v28 = *(a2 + 4);
        sub_1ADE92304(v17, v18, v19, v20, v16);
        v23 = type metadata accessor for Capsule(0, a4, a6, v22);
        Capsule.merge<A>(_:)(&v26, v23, a5, v24);
        swift_endAccess();
      }

      v26.n128_u64[0] = v17;
      v26.n128_u64[1] = v18;
      *&v27 = v19;
      *(&v27 + 1) = v20;
      v28 = v16;
      sub_1ADF53400(&v26, v25 & 1);

      return sub_1ADE92284(v17, v18, v19, v20, v16);
    }
  }

  return result;
}

double CRMulticastSyncManager.sync(_:)(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 16);
  v4[0] = *a1;
  v4[1] = v2;
  v5 = v1;
  return CRMulticastSyncManager.sync(_:sendDelta:)(v4, 1);
}

void *CRMulticastSyncManager.__allocating_init(_:sendHeartbeats:)(__int128 *a1, char a2)
{
  v4 = *(a1 + 4);
  *&v16 = 0;
  v14 = 0u;
  v15 = 0u;
  v5 = sub_1ADDCE2E4(0, &v14);
  sub_1ADDCEDE0(&v14, &qword_1EB5B9DB0, &qword_1AE240B80);
  v6 = *a1;
  v12[1] = a1[1];
  v12[0] = v6;
  v13 = v4;
  v7 = 0x3FF0000000000000;
  if ((a2 & 1) == 0)
  {
    v7 = 0;
  }

  v10 = v7;
  v11 = (a2 & 1) == 0;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = sub_1ADF55A94(v5, v12, &v10, 256, 0, 0xF000000000000000, &v14);

  return v8;
}

void *CRMulticastSyncManager.__allocating_init(_:model:appFormat:identifier:catchup:)(void *a1, uint64_t a2, __int16 a3, uint64_t a4, unint64_t a5, uint64_t *a6)
{
  v9 = *(a2 + 32);
  v10 = *a6;
  v11 = *(a6 + 8);
  v12 = *(a2 + 16);
  v17[0] = *a2;
  v17[1] = v12;
  v18 = v9;
  v15 = v10;
  v16 = v11;
  memset(v19, 0, sizeof(v19));
  v13 = sub_1ADF55A94(a1, v17, &v15, a3 & 0x1FF, a4, a5, v19);
  sub_1ADDE1588(a4, a5);

  return v13;
}

void *CRMulticastSyncManager.__allocating_init(_:model:appFormat:identifier:sendHeartbeats:)(void *a1, uint64_t a2, __int16 a3, uint64_t a4, unint64_t a5, char a6)
{
  v9 = *(a2 + 32);
  v10 = *(a2 + 16);
  v16[0] = *a2;
  v16[1] = v10;
  v17 = v9;
  v11 = 0x3FF0000000000000;
  if ((a6 & 1) == 0)
  {
    v11 = 0;
  }

  v14 = v11;
  v15 = (a6 & 1) == 0;
  memset(v18, 0, sizeof(v18));
  v12 = sub_1ADF55A94(a1, v16, &v14, a3 & 0x1FF, a4, a5, v18);
  sub_1ADDE1588(a4, a5);

  return v12;
}

void *sub_1ADF53F1C(void *a1, uint64_t a2, char a3)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 16);
  v11[0] = *a2;
  v11[1] = v5;
  v12 = v4;
  v6 = 0x3FF0000000000000;
  if ((a3 & 1) == 0)
  {
    v6 = 0;
  }

  v9 = v6;
  v10 = (a3 & 1) == 0;
  memset(v13, 0, sizeof(v13));
  v7 = sub_1ADF55A94(a1, v11, &v9, 256, 0, 0xF000000000000000, v13);

  return v7;
}

void CRMulticastSyncManager.updates.getter()
{
  if (*(v0 + 248))
  {

    sub_1AE00C4CC();
  }

  else
  {
    __break(1u);
  }
}

uint64_t CRMulticastSyncManager.deinit()
{

  sub_1ADE92284(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));

  sub_1ADDCEDE0(v0 + 80, qword_1EB5BB188, &qword_1AE24C078);
  swift_unknownObjectRelease();

  sub_1ADDE1588(*(v0 + 160), *(v0 + 168));
  sub_1ADF55B20(*(v0 + 176), *(v0 + 184), *(v0 + 192), *(v0 + 200), *(v0 + 208), *(v0 + 216));

  return v0;
}

uint64_t CRMulticastSyncManager.__deallocating_deinit()
{
  CRMulticastSyncManager.deinit();

  return swift_deallocClassInstance();
}

uint64_t CRMulticastSyncManager.receive(_:)(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = v1;
  CRMulticastSyncManager.sync(_:sendDelta:)(v5, 1);

  return MEMORY[0x1EEDB5BB8](v3);
}

uint64_t sub_1ADF54160(unint64_t *a1, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5)
{
  v5 = a5;
  v6 = a4;
  v7 = a1;
  v55 = *MEMORY[0x1E69E9840];
  v9 = *a1;
  v8 = a1[1];
  v10 = v8 >> 62;
  if ((v8 >> 62) <= 1)
  {
    LODWORD(v51) = a2;
    v52 = a3;
    if (v10)
    {
      sub_1ADDE0F78(a4, a5);
      sub_1ADDD86D8(v9, v8);
      sub_1ADDCC35C(v9, v8);
      *&v54 = v9;
      *(&v54 + 1) = v8 & 0x3FFFFFFFFFFFFFFFLL;
      *v7 = xmmword_1AE241910;
      sub_1ADDCC35C(0, 0xC000000000000000);
      sub_1ADF54878(&v54, v51, v52 & 0x1FF, v6, v5);
      result = sub_1ADDE1588(v6, v5);
      v21 = *(&v54 + 1) | 0x4000000000000000;
      *v7 = v54;
      v7[1] = v21;
      return result;
    }

    v50 = a1;
    v6 = v9 >> 8;
    v7 = (v9 >> 16);
    sub_1ADDE0F78(a4, a5);
    sub_1ADDCC35C(v9, v8);
    *&v53 = v9;
    WORD4(v53) = v8;
    BYTE10(v53) = BYTE2(v8);
    BYTE11(v53) = BYTE3(v8);
    BYTE12(v53) = BYTE4(v8);
    BYTE13(v53) = BYTE5(v8);
    BYTE14(v53) = BYTE6(v8);
    if (qword_1EB5B9AA8 != -1)
    {
      swift_once();
    }

    v12 = *(&xmmword_1EB5D78F8 + 1);
    v11 = xmmword_1EB5D78F8;
    v54 = xmmword_1EB5D78F8;
    v13 = *(&xmmword_1EB5D78F8 + 1) >> 62;
    if ((*(&xmmword_1EB5D78F8 + 1) >> 62) <= 1)
    {
      v14 = a5;
      v15 = a4;
      v5 = v50;
      if (!v13)
      {
        v9 = BYTE14(xmmword_1EB5D78F8);
        goto LABEL_39;
      }

      goto LABEL_34;
    }

    v14 = a5;
    v15 = a4;
    v5 = v50;
    if (v13 != 2)
    {
      v9 = 0;
      goto LABEL_39;
    }

    v23 = *(xmmword_1EB5D78F8 + 16);
    v22 = *(xmmword_1EB5D78F8 + 24);
    v9 = v22 - v23;
    if (!__OFSUB__(v22, v23))
    {
      goto LABEL_39;
    }

    __break(1u);
    goto LABEL_26;
  }

  v15 = a2;
  if (v10 != 2)
  {
    v14 = a3;
    *(&v53 + 7) = 0;
    *&v53 = 0;
    sub_1ADDE0F78(a4, a5);
    if (qword_1EB5B9AA8 != -1)
    {
      swift_once();
    }

    v12 = *(&xmmword_1EB5D78F8 + 1);
    v11 = xmmword_1EB5D78F8;
    v54 = xmmword_1EB5D78F8;
    v22 = *(&xmmword_1EB5D78F8 + 1) >> 62;
    if ((*(&xmmword_1EB5D78F8 + 1) >> 62) <= 1)
    {
      if (v22 && __OFSUB__(DWORD1(xmmword_1EB5D78F8), xmmword_1EB5D78F8))
      {
        goto LABEL_100;
      }

      goto LABEL_46;
    }

LABEL_26:
    if (v22 == 2)
    {
      v19 = *(v11 + 24);
      if (__OFSUB__(v19, *(v11 + 16)))
      {
        __break(1u);
        goto LABEL_30;
      }
    }

LABEL_46:
    v30 = sub_1ADDD86D8(v11, v12);
    sub_1ADE73ED0(v30, v31, v32);
    sub_1AE23BB1C();
    sub_1ADDCC35C(v54, *(&v54 + 1));
    BYTE4(v53) = v15;
    if ((v14 & 0x100) != 0)
    {
      v33 = 0;
    }

    else
    {
      v33 = v14;
    }

    BYTE6(v53) = v33;
    if (v5 >> 60 == 15)
    {
      goto LABEL_84;
    }

    v28 = v5 >> 62;
    if ((v5 >> 62) > 1)
    {
      goto LABEL_58;
    }

    if (!v28)
    {
LABEL_84:
      sub_1ADDE1588(v6, v5);
      return sub_1ADDE1588(v6, v5);
    }

    LODWORD(v39) = HIDWORD(v6) - v6;
    if (!__OFSUB__(HIDWORD(v6), v6))
    {
      v39 = v39;
      goto LABEL_82;
    }

    goto LABEL_103;
  }

  v52 = a3;
  v14 = a4;
  sub_1ADDE0F78(a4, a5);

  sub_1ADDCC35C(v9, v8);
  *&v54 = v9;
  *(&v54 + 1) = v8 & 0x3FFFFFFFFFFFFFFFLL;
  v50 = v7;
  *v7 = xmmword_1AE241910;
  sub_1ADDCC35C(0, 0xC000000000000000);
  sub_1AE23BDEC();
  v9 = *(&v54 + 1);
  v16 = *(v54 + 16);
  v6 = *(v54 + 24);
  v51 = v54;
  v17 = sub_1AE23BB7C();
  if (!v17)
  {
    result = sub_1ADDE1588(v14, v5);
    __break(1u);
    return result;
  }

  v7 = v17;
  v18 = sub_1AE23BBAC();
  if (__OFSUB__(v16, v18))
  {
    __break(1u);
    goto LABEL_91;
  }

  if (__OFSUB__(v6, v16))
  {
    goto LABEL_93;
  }

  v6 = v16 - v18;
  sub_1AE23BB9C();
  if (qword_1EB5B9AA8 != -1)
  {
    goto LABEL_96;
  }

  while (1)
  {
    v12 = *(&xmmword_1EB5D78F8 + 1);
    v11 = xmmword_1EB5D78F8;
    v53 = xmmword_1EB5D78F8;
    v19 = *(&xmmword_1EB5D78F8 + 1) >> 62;
    if ((*(&xmmword_1EB5D78F8 + 1) >> 62) <= 1)
    {
      if (v19)
      {
LABEL_62:
        if (__OFSUB__(HIDWORD(v11), v11))
        {
          goto LABEL_101;
        }
      }

LABEL_63:
      v7 = (v7 + v6);
      v40 = sub_1ADDD86D8(v11, v12);
      sub_1ADE73ED0(v40, v41, v42);
      sub_1AE23BB1C();
      sub_1ADDCC35C(v53, *(&v53 + 1));
      *(v7 + 4) = v15;
      v15 = v52;
      if ((v52 & 0x100) != 0)
      {
        v43 = 0;
      }

      else
      {
        v43 = v52;
      }

      *(v7 + 6) = v43;
      if (v5 >> 60 == 15)
      {
LABEL_67:
        LOBYTE(v44) = 0;
        goto LABEL_89;
      }

      v45 = v5 >> 62;
      if ((v5 >> 62) <= 1)
      {
        if (!v45)
        {
          v44 = HIWORD(v5);
          goto LABEL_89;
        }

        LODWORD(v44) = HIDWORD(v14) - v14;
        if (!__OFSUB__(HIDWORD(v14), v14))
        {
          v44 = v44;
LABEL_87:
          if ((v44 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v44 <= 0xFF)
          {
LABEL_89:
            *(v7 + 7) = v44;
            sub_1ADDE1588(v14, v5);
            result = sub_1ADDE1588(v14, v5);
            *v50 = v51;
            v50[1] = v9 | 0x8000000000000000;
            return result;
          }

          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
        }

        __break(1u);
      }

      if (v45 != 2)
      {
        goto LABEL_67;
      }

      v47 = *(v14 + 16);
      v46 = *(v14 + 24);
      v36 = __OFSUB__(v46, v47);
      v44 = v46 - v47;
      if (!v36)
      {
        goto LABEL_87;
      }

      __break(1u);
LABEL_75:
      LODWORD(v28) = HIDWORD(v15) - v15;
      if (__OFSUB__(HIDWORD(v15), v15))
      {
        goto LABEL_102;
      }

      v28 = v28;
LABEL_77:
      if ((v28 & 0x8000000000000000) != 0)
      {
LABEL_91:
        __break(1u);
LABEL_92:
        __break(1u);
LABEL_93:
        __break(1u);
      }

      else if (v28 <= 0xFF)
      {
        goto LABEL_79;
      }

      __break(1u);
      goto LABEL_95;
    }

LABEL_30:
    if (v19 != 2 || !__OFSUB__(*(v11 + 24), *(v11 + 16)))
    {
      goto LABEL_63;
    }

    __break(1u);
LABEL_34:
    if (__OFSUB__(HIDWORD(v11), v11))
    {
      goto LABEL_99;
    }

    v9 = HIDWORD(v11) - v11;
LABEL_39:
    v24 = sub_1ADDD86D8(v11, v12);
    sub_1ADE73ED0(v24, v25, v26);
    sub_1AE23BB1C();
    sub_1ADDCC35C(v54, *(&v54 + 1));
    BYTE4(v53) = v51;
    v27 = v52;
    if ((v52 & 0x100) != 0)
    {
      v27 = 0;
    }

    BYTE6(v53) = v27;
    if (v14 >> 60 == 15)
    {
LABEL_42:
      LOBYTE(v28) = 0;
      goto LABEL_79;
    }

    v29 = v14 >> 62;
    if ((v14 >> 62) <= 1)
    {
      break;
    }

    if (v29 != 2)
    {
      goto LABEL_42;
    }

    v35 = *(v15 + 16);
    v34 = *(v15 + 24);
    v36 = __OFSUB__(v34, v35);
    v28 = v34 - v35;
    if (!v36)
    {
      goto LABEL_77;
    }

    __break(1u);
LABEL_58:
    if (v28 != 2)
    {
      goto LABEL_84;
    }

    v38 = *(v6 + 16);
    v37 = *(v6 + 24);
    v36 = __OFSUB__(v37, v38);
    v39 = v37 - v38;
    if (v36)
    {
      __break(1u);
      goto LABEL_62;
    }

LABEL_82:
    if ((v39 & 0x8000000000000000) != 0)
    {
      goto LABEL_92;
    }

    if (v39 <= 0xFF)
    {
      goto LABEL_84;
    }

LABEL_95:
    __break(1u);
LABEL_96:
    swift_once();
  }

  if (v29)
  {
    goto LABEL_75;
  }

  v28 = HIWORD(v14);
LABEL_79:
  BYTE7(v53) = v28;
  sub_1ADDE1588(v15, v14);
  result = sub_1ADDE1588(v15, v14);
  *v5 = v53;
  *(v5 + 8) = DWORD2(v53) | ((WORD6(v53) | (BYTE14(v53) << 16)) << 32);
  return result;
}

void sub_1ADF54878(int *a1, char a2, __int16 a3, uint64_t a4, unint64_t a5)
{
  v7 = v5;
  sub_1AE23BE0C();
  v12 = *a1;
  if (a1[1] < v12)
  {
    __break(1u);
    goto LABEL_33;
  }

  v13 = sub_1AE23BB7C();
  if (v13)
  {
    v6 = v13;
    v14 = sub_1AE23BBAC();
    v7 = v12 - v14;
    if (!__OFSUB__(v12, v14))
    {
      sub_1AE23BB9C();
      if (qword_1EB5B9AA8 == -1)
      {
        goto LABEL_5;
      }

      goto LABEL_34;
    }

LABEL_33:
    __break(1u);
LABEL_34:
    swift_once();
LABEL_5:
    v15 = xmmword_1EB5D78F8;
    v28 = xmmword_1EB5D78F8;
    v16 = *(&xmmword_1EB5D78F8 + 1) >> 62;
    if ((*(&xmmword_1EB5D78F8 + 1) >> 62) > 1)
    {
      if (v16 != 2 || !__OFSUB__(*(xmmword_1EB5D78F8 + 24), *(xmmword_1EB5D78F8 + 16)))
      {
        goto LABEL_13;
      }

      __break(1u);
    }

    else if (!v16)
    {
      goto LABEL_13;
    }

    if (__OFSUB__(DWORD1(v15), v15))
    {
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

LABEL_13:
    v17 = (v6 + v7);
    v18 = sub_1ADDD86D8(v15, *(&v15 + 1));
    sub_1ADE73ED0(v18, v19, v20);
    sub_1AE23BB1C();
    sub_1ADDCC35C(v28, *(&v28 + 1));
    v17[4] = a2;
    if ((a3 & 0x100) != 0)
    {
      v21 = 0;
    }

    else
    {
      v21 = a3;
    }

    v17[6] = v21;
    if (a5 >> 60 == 15)
    {
      LOBYTE(v22) = 0;
      v23 = a4;
LABEL_31:
      v17[7] = v22;

      sub_1ADDE1588(v23, a5);
      return;
    }

    v24 = a5 >> 62;
    v23 = a4;
    if ((a5 >> 62) > 1)
    {
      if (v24 != 2)
      {
        goto LABEL_30;
      }

      v26 = *(a4 + 16);
      v25 = *(a4 + 24);
      v27 = __OFSUB__(v25, v26);
      v22 = v25 - v26;
      if (!v27)
      {
LABEL_27:
        if ((v22 & 0x8000000000000000) == 0)
        {
          if (v22 <= 0xFF)
          {
            goto LABEL_31;
          }

          __break(1u);
LABEL_30:
          LOBYTE(v22) = 0;
          goto LABEL_31;
        }

        __break(1u);
        goto LABEL_36;
      }

      __break(1u);
    }

    else if (!v24)
    {
      v22 = HIWORD(a5);
      goto LABEL_31;
    }

    LODWORD(v22) = HIDWORD(a4) - a4;
    if (__OFSUB__(HIDWORD(a4), a4))
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v22 = v22;
    goto LABEL_27;
  }

LABEL_38:
  __break(1u);
}

uint64_t sub_1ADF54A9C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v4)
    {
      return sub_1AE23BE4C();
    }

    goto LABEL_10;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    a1 = sub_1AE23BB7C();
    if (a1)
    {
      a1 = sub_1AE23BBAC();
      if (__OFSUB__(v5, a1))
      {
        goto LABEL_16;
      }
    }

    if (!__OFSUB__(v6, v5))
    {
LABEL_13:
      sub_1AE23BB9C();
      return sub_1AE23BE4C();
    }

    __break(1u);
LABEL_10:
    v7 = a1;
    if (a1 >> 32 >= a1)
    {
      if (!sub_1AE23BB7C() || !__OFSUB__(v7, sub_1AE23BBAC()))
      {
        goto LABEL_13;
      }

LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  return sub_1AE23BE4C();
}

uint64_t sub_1ADF54CE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v22[1] = a3;
  v5 = sub_1AE23E36C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB3B0, &qword_1AE24C528);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v22 - v10;
  v12 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v18 = *(v12 + 16);
  v18(v22 - v19, a1, a2, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB3B8, &qword_1AE24C530);
  if (swift_dynamicCast())
  {
    sub_1ADE23E6C(v23, v25);
    __swift_project_boxed_opaque_existential_1(v25, v25[3]);
    sub_1AE23DBDC();
    return __swift_destroy_boxed_opaque_existential_1(v25);
  }

  else
  {
    v24 = 0;
    memset(v23, 0, sizeof(v23));
    sub_1ADDCEDE0(v23, &unk_1EB5BB3C0, &qword_1AE24C538);
    (v18)(v15, a1, a2);
    v21 = sub_1AE23E35C();
    (*(*(v21 - 8) + 56))(v11, 1, 1, v21);
    (*(v6 + 104))(v8, *MEMORY[0x1E69E75D8], v5);
    return sub_1AE23E37C();
  }
}

double sub_1ADF54FD0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  a3[3] = MEMORY[0x1E69E6158];
  *a3 = a1;
  a3[1] = a2;

  return result;
}

uint64_t sub_1ADF54FE8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_1AE23DD9C();
  a2[3] = MEMORY[0x1E69E6158];
  *a2 = result;
  a2[1] = v4;
  return result;
}

void sub_1ADF55084(double a1, double a2)
{
  if (a1 == a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = a2 - a1;
  if (COERCE__INT64(fabs(a2 - a1)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v5 = 0;
  MEMORY[0x1B26FDA70](&v5, 8);
  if (v4 * vcvtd_n_f64_u64(v5 & 0x1FFFFFFFFFFFFFLL, 0x35uLL) + a1 == a2)
  {
    sub_1ADF55084(a1, a2);
  }
}

uint64_t *sub_1ADF55128(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  swift_weakInit();
  v5 = *(*v2 + 96);
  type metadata accessor for Capsule(255, *(v4 + 80), *(v4 + 88), v6);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB5BB180, &unk_1AE2427A0);
  v7 = sub_1AE23C80C();
  (*(*(v7 - 8) + 32))(v2 + v5, a2, v7);
  swift_weakAssign();
  return v2;
}

void *sub_1ADF55238(void *a1, __int128 *a2, uint64_t *a3, int a4, uint64_t a5, unint64_t a6, _OWORD *a7)
{
  v8 = v7;
  v86 = a7;
  v89 = a6;
  v88 = a5;
  v87 = a4;
  v85 = a1;
  v11 = *v7;
  *&v90 = v11;
  v82 = sub_1AE23D68C();
  v81 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v80 = v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_1AE23D65C();
  MEMORY[0x1EEE9AC00](v78);
  v75 = v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1AE23C8CC();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v15 = sub_1AE23BFEC();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = *(a2 + 4);
  v84 = *a3;
  v83 = *(a3 + 8);
  v77 = *(v11 + 80);
  v76 = *(v11 + 88);
  type metadata accessor for CRMulticastSyncManagerSubscription(0, v77, v76, v19);
  v20 = *a2;
  v74 = a2[1];
  v73 = v20;
  v21 = sub_1AE23C9DC();
  *(v8 + 3) = 0u;
  v8[2] = v21;
  *(v8 + 5) = 0u;
  v8[7] = 1;
  v72[1] = sub_1ADDEE524(0, &qword_1ED96B370, 0x1E69E9610);
  *&v94[0] = 0;
  *(&v94[0] + 1) = 0xE000000000000000;
  sub_1AE23DA2C();

  *&v94[0] = 0xD000000000000010;
  *(&v94[0] + 1) = 0x80000001AE261010;
  sub_1AE23BFDC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5BB3D0, &unk_1AE24C540);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1AE241900;
  sub_1AE23BFCC();
  v23 = MEMORY[0x1E69E7508];
  v24 = MEMORY[0x1E69E7558];
  *(v22 + 56) = MEMORY[0x1E69E7508];
  *(v22 + 64) = v24;
  *(v22 + 32) = v25;
  sub_1AE23BFCC();
  *(v22 + 96) = v23;
  *(v22 + 104) = v24;
  *(v22 + 72) = v26;
  v27 = sub_1AE23CD3C();
  v29 = v28;
  (*(v16 + 8))(v18, v15);
  MEMORY[0x1B26FB670](v27, v29);

  sub_1AE23C8BC();
  v30 = MEMORY[0x1E69E7CC0];
  *&v94[0] = MEMORY[0x1E69E7CC0];
  sub_1ADDCEEA8(&unk_1ED96B1F0, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9E60, &qword_1AE251B80);
  sub_1ADDCF010(&qword_1ED96B200, &qword_1EB5B9E60, &qword_1AE251B80);
  sub_1AE23D8DC();
  (*(v81 + 104))(v80, *MEMORY[0x1E69E8090], v82);
  v31 = sub_1AE23D6CC();
  *(v8 + 5) = 0u;
  *(v8 + 6) = 0u;
  v8[14] = 0;
  v8[17] = 0;
  v8[18] = v30;
  *(v8 + 11) = 0u;
  *(v8 + 12) = 0u;
  *(v8 + 13) = 0u;
  *(v8 + 14) = 0u;
  *(v8 + 15) = 0u;
  v32 = v85;
  v8[8] = v85;
  v8[9] = v31;
  swift_beginAccess();
  v33 = v8[3];
  v34 = v8[4];
  v35 = v8[5];
  v36 = v8[6];
  v37 = v8[7];
  v38 = v74;
  *(v8 + 3) = v73;
  *(v8 + 5) = v38;
  v8[7] = v79;
  v39 = v32;
  v40 = v35;
  v41 = v77;
  v42 = v36;
  v43 = v76;
  sub_1ADE92284(v33, v34, v40, v42, v37);
  v44 = *(v8 + 12);
  v94[0] = *(v8 + 11);
  v94[1] = v44;
  v45 = *(v8 + 14);
  v94[2] = *(v8 + 13);
  v94[3] = v45;
  v46 = v86;
  v47 = v86[1];
  *(v8 + 11) = *v86;
  *(v8 + 12) = v47;
  v48 = v46[3];
  *(v8 + 13) = v46[2];
  *(v8 + 14) = v48;
  type metadata accessor for CRMulticastSyncManager.DebugInfo(255, v41, v43, v49);
  v50 = sub_1AE23D7CC();
  v51 = *(v50 - 8);
  (*(v51 + 16))(v92, v46, v50);
  (*(v51 + 8))(v94, v50);
  v8[15] = v84;
  *(v8 + 128) = v83;
  v52 = BYTE1(v87);
  *(v8 + 152) = v87;
  *(v8 + 153) = v52 & 1;
  v53 = v88;
  v54 = v89;
  v8[20] = v88;
  v8[21] = v54;
  swift_beginAccess();
  v55 = v8[7];
  sub_1ADDE0F78(v53, v54);
  if (v55 != 1)
  {
    type metadata accessor for Capsule(0, v41, v43, v56);
    Capsule.finalizeTimestamps(_:)(v39);
  }

  swift_endAccess();
  v57 = v90;
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for AsyncUpdatesActor(0, v41, v57, WitnessTable);

  v60 = sub_1AE00CC84(v59);

  v8[31] = v60;

  v61 = v8[18];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8[18] = v61;
  if (!isUniquelyReferenced_nonNull_native || *(v61 + 3) <= 3uLL)
  {
    if (*(v61 + 2) <= 2uLL)
    {
      v64 = 2;
    }

    else
    {
      v64 = *(v61 + 2);
    }

    v61 = sub_1ADE55E64(isUniquelyReferenced_nonNull_native, v64, 0, v61);
  }

  v8[18] = v61;
  v65 = v8[7];
  if (v65 != 1)
  {
    v66 = *(v8 + 5);
    v92[0] = *(v8 + 3);
    v92[1] = v66;
    v93 = v65;
    type metadata accessor for Capsule(0, v41, v43, v63);
    Capsule.version.getter(&v91);
    v90 = v91;
    v67 = v8[18];
    v68 = swift_isUniquelyReferenced_nonNull_native();
    v8[18] = v67;
    if ((v68 & 1) == 0)
    {
      v67 = sub_1ADE55E64(0, *(v67 + 2) + 1, 1, v67);
      v8[18] = v67;
    }

    v70 = *(v67 + 2);
    v69 = *(v67 + 3);
    if (v70 >= v69 >> 1)
    {
      v67 = sub_1ADE55E64((v69 > 1), v70 + 1, 1, v67);
    }

    *(v67 + 2) = v70 + 1;
    *&v67[16 * v70 + 32] = v90;
    v8[18] = v67;
  }

  return v8;
}

double sub_1ADF55B20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1ADF55B94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Capsule(255, *(a1 + 80), *(a1 + 88), a4);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB5BB180, &unk_1AE2427A0);
  result = sub_1AE23C80C();
  if (v5 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1ADF55DD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1ADF55E20(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1ADF55E68(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1ADF55ED0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1ADF55F50()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1ADF55F80@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 24);
  v4 = (*(*(v3 - 8) + 80) + 40) & ~*(*(v3 - 8) + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB180, &unk_1AE2427A0);

  return sub_1ADF54CE8(v1 + v4, v3, a1);
}

double sub_1ADF56024@<D0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  a1[3] = MEMORY[0x1E69E6158];
  *a1 = v3;
  a1[1] = v2;

  return result;
}

uint64_t sub_1ADF5603C@<X0>(uint64_t *a1@<X8>)
{
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  result = sub_1AE23DD9C();
  a1[3] = MEMORY[0x1E69E6158];
  *a1 = result;
  a1[1] = v4;
  return result;
}

void sub_1ADF56124(double *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24) + 1.0;
  if (v3 <= *(v2 + 40) + 0.1)
  {
    v3 = *(v2 + 40) + 0.1;
  }

  *(v2 + 40) = v3;
  *a1 = v3;
}

uint64_t sub_1ADF561D4(uint64_t a1)
{
  v1 = *(a1 + 136);
  if (v1 <= 8)
  {
    return 0;
  }

  else
  {
    return v1 ^ 0xFF;
  }
}

uint64_t sub_1ADF561E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1ADE74240;

  return sub_1ADF52B90(a1, v4, v5, v6, (v1 + 5));
}

uint64_t sub_1ADF562FC(uint64_t result, uint64_t a2, void (*a3)(void))
{
  if (result)
  {
    a3();
  }

  return result;
}

double sub_1ADF5634C(uint64_t a1)
{
  *(a1 + 128) = 0;
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 136) = -2;
  return result;
}

uint64_t sub_1ADF56370(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB5BB188, &qword_1AE24C078);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1ADF5643C(uint64_t a1)
{
  sub_1ADF568BC();
  if (v1 <= 0x3F)
  {
    sub_1AE23D7CC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1ADF564C4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(v4 + 80);
  v8 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v8;
  }

  if (!a2)
  {
    return 0;
  }

  v9 = a2 - v6;
  if (a2 > v6)
  {
    v10 = v8 + ((v7 + 16) & ~v7);
    v11 = 8 * v10;
    if (v10 > 3)
    {
      goto LABEL_8;
    }

    v13 = ((v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v13))
    {
      v12 = *(a1 + v10);
      if (v12)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v13 <= 0xFF)
      {
        if (v13 < 2)
        {
          goto LABEL_26;
        }

LABEL_8:
        v12 = *(a1 + v10);
        if (!*(a1 + v10))
        {
          goto LABEL_26;
        }

LABEL_15:
        v14 = (v12 - 1) << v11;
        if (v10 > 3)
        {
          v14 = 0;
        }

        if (v10)
        {
          if (v10 > 3)
          {
            LODWORD(v10) = 4;
          }

          if (v10 > 2)
          {
            if (v10 == 3)
            {
              LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              LODWORD(v10) = *a1;
            }
          }

          else if (v10 == 1)
          {
            LODWORD(v10) = *a1;
          }

          else
          {
            LODWORD(v10) = *a1;
          }
        }

        return v6 + (v10 | v14) + 1;
      }

      v12 = *(a1 + v10);
      if (*(a1 + v10))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_26:
  if (v5 < 2)
  {
    return 0;
  }

  v16 = (*(v4 + 48))((a1 + v7 + 16) & ~v7);
  if (v16 >= 2)
  {
    return v16 - 1;
  }

  else
  {
    return 0;
  }
}

void sub_1ADF5665C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  if (v8)
  {
    v9 = v8 - 1;
  }

  else
  {
    v9 = 0;
  }

  v10 = *(v7 + 80);
  v11 = *(*(*(a4 + 16) - 8) + 64);
  if (!v8)
  {
    ++v11;
  }

  v12 = v11 + ((v10 + 16) & ~v10);
  v13 = a3 >= v9;
  v14 = a3 - v9;
  if (v14 == 0 || !v13)
  {
LABEL_18:
    if (v9 < a2)
    {
      goto LABEL_19;
    }

    goto LABEL_28;
  }

  if (v12 > 3)
  {
    v6 = 1;
    if (v9 < a2)
    {
      goto LABEL_19;
    }

    goto LABEL_28;
  }

  v15 = ((v14 + ~(-1 << (8 * v12))) >> (8 * v12)) + 1;
  if (!HIWORD(v15))
  {
    if (v15 < 0x100)
    {
      v16 = 1;
    }

    else
    {
      v16 = 2;
    }

    if (v15 >= 2)
    {
      v6 = v16;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_18;
  }

  v6 = 4;
  if (v9 < a2)
  {
LABEL_19:
    v17 = ~v9 + a2;
    if (v12 < 4)
    {
      v18 = (v17 >> (8 * v12)) + 1;
      if (v12)
      {
        v19 = v17 & ~(-1 << (8 * v12));
        bzero(a1, v12);
        if (v12 != 3)
        {
          if (v12 == 2)
          {
            *a1 = v19;
            if (v6 > 1)
            {
LABEL_46:
              if (v6 == 2)
              {
                *&a1[v12] = v18;
              }

              else
              {
                *&a1[v12] = v18;
              }

              return;
            }
          }

          else
          {
            *a1 = v17;
            if (v6 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v19;
        a1[2] = BYTE2(v19);
      }

      if (v6 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v12);
      *a1 = v17;
      v18 = 1;
      if (v6 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v6)
    {
      a1[v12] = v18;
    }

    return;
  }

LABEL_28:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *&a1[v12] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_35;
    }

    *&a1[v12] = 0;
  }

  else if (v6)
  {
    a1[v12] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_35;
  }

  if (!a2)
  {
    return;
  }

LABEL_35:
  if (v8 >= 2)
  {
    v20 = *(v7 + 56);
    v21 = &a1[v10 + 16] & ~v10;
    v22 = a2 + 1;

    v20(v21, v22);
  }
}

void sub_1ADF568BC()
{
  if (!qword_1ED969F38)
  {
    v0 = sub_1AE23D5CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED969F38);
    }
  }
}

uint64_t sub_1ADF56914(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1ADF56968(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = sub_1AE23D7CC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - v6;
  v8 = *(v3 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, &v1[*(a1 + 36)], v4, v10);
  if ((*(v8 + 48))(v7, 1, v3) == 1)
  {
    (*(v5 + 8))(v7, v4);
    v13 = *(v1 + 1);
    v17 = *v1;
    v20 = v13;
    v21 = 0;
    v22 = 0xE000000000000000;
    sub_1AE23DBAC();
    MEMORY[0x1B26FB670](3943982, 0xE300000000000000);
    sub_1AE23DBAC();
    MEMORY[0x1B26FB670](16186, 0xE200000000000000);
    return v21;
  }

  else
  {
    (*(v8 + 32))(v12, v7, v3);
    v21 = 0;
    v22 = 0xE000000000000000;
    v15 = *v1;
    v19 = *(v1 + 1);
    v20 = v15;
    v17 = 0;
    v18 = 0xE000000000000000;
    sub_1AE23DBAC();
    MEMORY[0x1B26FB670](3943982, 0xE300000000000000);
    sub_1AE23DBAC();
    MEMORY[0x1B26FB670](v17, v18);

    MEMORY[0x1B26FB670](58, 0xE100000000000000);
    sub_1AE23DFCC();
    v14 = v21;
    (*(v8 + 8))(v12, v3);
  }

  return v14;
}

BOOL sub_1ADF56C64(char *a1, char *a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1AE23D7CC();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v31 - v13;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v20 = v31 - v19;
  result = 0;
  if (*a1 == *a2)
  {
    v31[1] = a4;
    v32 = v18;
    v34 = v14;
    v31[0] = v10;
    v22 = v17;
    v23 = *(type metadata accessor for Run(0, a3, a4, v16) + 36);
    v33 = v22;
    v24 = *(v22 + 48);
    v35 = v12;
    v25 = *(v12 + 16);
    v25(v20, &a1[v23], v11);
    v25(&v20[v24], &a2[v23], v11);
    v26 = *(v8 + 48);
    if (v26(v20, 1, a3) == 1)
    {
      if (v26(&v20[v24], 1, a3) == 1)
      {
        (*(v35 + 8))(v20, v11);
        return 1;
      }
    }

    else
    {
      v27 = v34;
      v25(v34, v20, v11);
      if (v26(&v20[v24], 1, a3) != 1)
      {
        v28 = v31[0];
        (*(v8 + 32))(v31[0], &v20[v24], a3);
        v29 = sub_1AE23CCBC();
        v30 = *(v8 + 8);
        v30(v28, a3);
        v30(v27, a3);
        (*(v35 + 8))(v20, v11);
        return (v29 & 1) != 0;
      }

      (*(v8 + 8))(v27, a3);
    }

    (*(v32 + 8))(v20, v33);
    return 0;
  }

  return result;
}

void sub_1ADF57030(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v13 = sub_1AE23BFEC();
  v14 = sub_1ADDDF5BC(&qword_1ED96A718, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1ADDEB5C8(a1, a2, v13, a3, &protocol witness table for UUID, v14, a4, a5, v16);
  if (!v6)
  {
    v15 = v16[1];
    *a6 = v16[0];
    a6[1] = v15;
  }
}

uint64_t sub_1ADF57104(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  v8 = *v2;
  v7 = v2[1];
  type metadata accessor for Proto_CRDT._StorageClass();
  inited = swift_initStaticObject();
  v24 = v8;
  v25 = v7;
  v10 = sub_1AE23BFEC();
  v11 = *(a2 + 16);
  v12 = sub_1ADDDF5BC(&qword_1ED96A718, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);

  v22[0] = v10;
  v22[1] = v11;
  v22[2] = &protocol witness table for UUID;
  v22[3] = v12;
  v23 = *(a2 + 24);
  v13 = type metadata accessor for CROrderedDictionary(0, v22);
  v14 = v4;
  v15 = sub_1AE00E9E4(a1, v13);

  if (!v14)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = swift_allocObject();
      v17 = *(inited + 16);
      *(v16 + 16) = v17;
      sub_1ADE5215C(v17);

      inited = v16;
    }

    v18 = swift_allocObject();
    *(v18 + 16) = v15;
    v19 = v18 | 0x6000000000000000;
    v20 = *(inited + 16);
    *(inited + 16) = v19;
    sub_1ADE52174(v20);
  }

  return inited;
}

void CRArray.copy(renamingReferences:)(uint64_t a1@<X0>, void *a2@<X1>, unint64_t *a3@<X8>)
{
  v6 = *v3;
  v7 = v3[1];
  if (*(*a1 + 16))
  {
    v19 = v6;
    v20 = v7;
    MEMORY[0x1EEE9AC00](a1);
    v8 = a2[2];
    v9 = a2[3];
    v18[2] = v8;
    v18[3] = v9;
    v10 = a2[4];
    v18[4] = v10;
    v18[5] = v11;
    v19 = CRArray.map<A>(_:)(sub_1ADF573E4, v18, a2, v8);
    v12 = sub_1AE23D11C();
    WitnessTable = swift_getWitnessTable();
    v14 = a3;
    v15 = v8;
    v16 = v12;
  }

  else
  {
    v19 = v6;
    v20 = v7;
    v17 = a2[2];
    v9 = a2[3];
    v10 = a2[4];

    WitnessTable = swift_getWitnessTable();
    v14 = a3;
    v15 = v17;
    v16 = a2;
  }

  CRArray.init<A>(_:)(&v19, v15, v16, v9, v10, WitnessTable, v14);
}

uint64_t CRArray.map<A>(_:)(void (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a1;
  v30 = a2;
  MEMORY[0x1EEE9AC00](a1);
  v28[4] = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1AE23BFEC();
  v8 = *(a3 + 16);
  v33 = a3;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v28[0] = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v11 = v28 - v10;
  v35 = v12;
  v13 = sub_1AE23D7CC();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = v28 - v14;
  v16 = *v4;
  v17 = v4[1];
  v45 = sub_1AE23C9DC();
  v36 = v16;
  v37 = v17;
  CRArray.count.getter(a3);
  v28[1] = sub_1AE23D11C();
  sub_1AE23D02C();
  v42 = v16;
  v43 = v17;
  v18 = sub_1ADDDF5BC(&qword_1ED96A718, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  v19 = *(v33 + 24);
  v20 = *(v33 + 32);

  v36 = v7;
  v37 = v8;
  v38 = &protocol witness table for UUID;
  v39 = v18;
  v32 = v19;
  v33 = v18;
  v40 = v19;
  v41 = v20;
  v31 = v20;
  v21 = type metadata accessor for CROrderedDictionary(0, &v36);
  CROrderedDictionary.makeIterator()(v21, &v44);

  v22 = (v28[0] + 48);
  v28[2] = v8 - 8;
  v28[3] = v7 - 8;
  for (i = (v28[0] + 8); ; (*i)(v11, v35))
  {
    v36 = v7;
    v37 = v8;
    v38 = &protocol witness table for UUID;
    v39 = v33;
    v40 = v32;
    v41 = v31;
    v24 = type metadata accessor for CROrderedDictionary.Iterator(0, &v36);
    CROrderedDictionary.Iterator.next()(v24, v15);
    if ((*v22)(v15, 1, v35) == 1)
    {

      return v45;
    }

    v25 = *(v35 + 48);
    (*(*(v7 - 8) + 32))(v11, v15, v7);
    (*(*(v8 - 8) + 32))(&v11[v25], &v15[v25], v8);
    v26 = v34;
    v29(&v11[v25]);
    if (v26)
    {
      break;
    }

    v34 = 0;
    sub_1AE23D0CC();
  }

  (*i)(v11, v35);
}

void CRArray.init<A>(_:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t *a7@<X8>)
{
  v61 = a6;
  v62 = a4;
  v63 = a5;
  v51 = a1;
  v50 = a7;
  v9 = sub_1AE23BFEC();
  v53 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1AE23D7CC();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v47 - v16;
  v18 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v47 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v24 = &v47 - v23;
  v58 = sub_1ADDDF5BC(&qword_1ED96A718, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  v59 = v9;
  CROrderedDictionary.init()(v9, a2, &protocol witness table for UUID, v58, v62, v63, &v64);
  v70 = v64;
  v71 = v65;
  v48 = v18;
  (*(v18 + 16))(v21, v51, a3);
  sub_1AE23CE7C();
  v25 = v52;
  v49 = a3;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v60 = v24;
  v61 = AssociatedTypeWitness;
  v57 = AssociatedConformanceWitness;
  sub_1AE23D80C();
  v55 = *(v25 + 48);
  v56 = v25 + 48;
  if (v55(v17, 1, a2) == 1)
  {
LABEL_2:
    (*(v48 + 8))(v51, v49);
    (*(v47 + 8))(v60, v61);
    v27 = v71;
    v28 = v50;
    *v50 = v70;
    v28[1] = v27;
    return;
  }

  v30 = *(v25 + 32);
  v29 = v25 + 32;
  ++v53;
  v54 = v30;
  v31 = (v29 - 24);
  v52 = v29;
  v30(v14, v17, a2);
  while (1)
  {
    if (qword_1ED96AC50 != -1)
    {
      swift_once();
    }

    v37 = qword_1ED96F298;
    v38 = clock_gettime_nsec_np(_CLOCK_REALTIME);
    v39 = ((v38 / 0xF4240) << 12) | (4095 * (v38 % 0xF4240) / 0xF4240);
    v40 = *(v37 + 24);
    os_unfair_lock_lock((v40 + 32));
    v41 = *(v40 + 16);
    if (v41 <= v39)
    {
      v33 = v39;
    }

    else
    {
      v33 = *(v40 + 16);
    }

    if (v41 < v39)
    {
      goto LABEL_5;
    }

    v42 = *(v37 + 16);
    if (v42 > 0x4000000000000000)
    {
      break;
    }

    v43 = *(v40 + 24);
    if (v42)
    {
      v64 = 0;
      MEMORY[0x1B26FDA70](&v64, 8);
      v44 = (v64 * v42) >> 64;
      if (v42 > v64 * v42)
      {
        v45 = -v42 % v42;
        if (v45 > v64 * v42)
        {
          do
          {
            v64 = 0;
            MEMORY[0x1B26FDA70](&v64, 8);
          }

          while (v45 > v64 * v42);
          v44 = (v64 * v42) >> 64;
        }
      }
    }

    else
    {
      v44 = 0;
    }

    v46 = v43 + 1;
    if (v43 == -1)
    {
      goto LABEL_26;
    }

    v34 = v46 + v44;
    if (__CFADD__(v46, v44))
    {
      goto LABEL_27;
    }

    if (v34 >> 62)
    {
      if (__CFADD__(v33++, 1))
      {
        goto LABEL_28;
      }

LABEL_5:
      v64 = 0;
      MEMORY[0x1B26FDA70](&v64, 8);
      v34 = v64 >> 3;
    }

    *(v40 + 16) = v33;
    *(v40 + 24) = v34;
    os_unfair_lock_unlock((v40 + 32));
    sub_1AE001F28(v33 >> 12, v33 & 0xFFF, v34);
    sub_1AE23BFBC();
    v35 = v59;
    v64 = v59;
    v65 = a2;
    v66 = &protocol witness table for UUID;
    v67 = v58;
    v68 = v62;
    v69 = v63;
    v36 = type metadata accessor for CROrderedDictionary(0, &v64);
    CROrderedDictionary.append(value:forKey:)(v14, v11, v36);
    (*v53)(v11, v35);
    (*v31)(v14, a2);
    sub_1AE23D80C();
    if (v55(v17, 1, a2) == 1)
    {
      goto LABEL_2;
    }

    v54(v14, v17, a2);
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
}

uint64_t CRArray.copy(renamingReferences:)@<X0>(unint64_t a1@<X0>, void *a2@<X1>, unint64_t *a3@<X8>)
{
  if (a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = sub_1ADE51288(MEMORY[0x1E69E7CC0]);
  }

  v7 = v5;

  CRArray.copy(renamingReferences:)(&v7, a2, a3);
}

void CRArray.init(_:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  CRArray.init()(a2, a3, a4, v8);

  v7 = v8[1];
  *a5 = v8[0];
  a5[1] = v7;
}

void CRArray.init()(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = sub_1AE23BFEC();
  v9 = sub_1ADDDF5BC(&qword_1ED96A718, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  CROrderedDictionary.init()(v8, a1, &protocol witness table for UUID, v9, a2, a3, v11);
  v10 = v11[1];
  *a4 = v11[0];
  a4[1] = v10;
}

void CRArray.init(defaultState:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  CRArray.init()(a1, a2, a3, v6);
  v5 = v6[1];
  *a4 = v6[0];
  a4[1] = v5;
}

uint64_t CRArray.init<A>(_:_:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v16 = *(a4 - 8);
  v17 = MEMORY[0x1EEE9AC00](a1);
  v19 = v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v19, v17);
  CRArray.init<A>(_:)(v19, a3, a4, a5, a6, a7, v22);

  result = (*(v16 + 8))(a2, a4);
  v21 = v22[1];
  *a8 = v22[0];
  a8[1] = v21;
  return result;
}

uint64_t CRArray.append(_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AE23BFEC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED96AC50 != -1)
  {
    swift_once();
  }

  sub_1ADDD0F70();
  sub_1AE23BFBC();
  v8 = *(a2 + 16);
  v9 = sub_1ADDDF5BC(&qword_1ED96A718, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  v12[0] = v4;
  v12[1] = v8;
  v12[2] = &protocol witness table for UUID;
  v12[3] = v9;
  v13 = *(a2 + 24);
  v10 = type metadata accessor for CROrderedDictionary(0, v12);
  CROrderedDictionary.append(value:forKey:)(a1, v7, v10);
  return (*(v5 + 8))(v7, v4);
}

double CRArray.merge(_:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, _WORD *a3@<X8>)
{
  v5 = a1[1];
  v13[0] = *a1;
  v13[1] = v5;
  v6 = sub_1AE23BFEC();
  v7 = *(a2 + 16);
  v8 = sub_1ADDDF5BC(&qword_1ED96A718, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);

  v11[0] = v6;
  v11[1] = v7;
  v11[2] = &protocol witness table for UUID;
  v11[3] = v8;
  v12 = *(a2 + 24);
  v9 = type metadata accessor for CROrderedDictionary(0, v11);
  CROrderedDictionary.merge(_:)(v13, v9, a3);

  return result;
}

double CRArray.merge(_:)(uint64_t *a1, uint64_t a2)
{
  v2 = a1[1];
  v4[0] = *a1;
  v4[1] = v2;
  return CRArray.merge(_:)(v4, a2, &v5);
}

uint64_t CRArray.newRefs(from:)(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = a1[1];
  v7 = *v2;
  v6 = v2[1];
  v16[2] = v7;
  v16[3] = v6;
  v16[0] = v4;
  v16[1] = v5;
  v8 = sub_1AE23BFEC();
  v9 = *(a2 + 16);
  v10 = sub_1ADDDF5BC(&qword_1ED96A718, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);

  v14[0] = v8;
  v14[1] = v9;
  v14[2] = &protocol witness table for UUID;
  v14[3] = v10;
  v15 = *(a2 + 24);
  v11 = type metadata accessor for CROrderedDictionary(0, v14);
  v12 = CROrderedDictionary.newRefs(from:)(v16, v11);

  return v12;
}

double CRArray.visitReferences(_:)(void *a1, uint64_t a2)
{
  v6 = *v2;
  v5 = v2[1];
  v14 = v6;
  v15 = v5;
  v7 = sub_1AE23BFEC();
  v8 = *(a2 + 16);
  v9 = sub_1ADDDF5BC(&qword_1ED96A718, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);

  v12[0] = v7;
  v12[1] = v8;
  v12[2] = &protocol witness table for UUID;
  v12[3] = v9;
  v13 = *(a2 + 24);
  v10 = type metadata accessor for CROrderedDictionary(0, v12);
  CROrderedDictionary.visitReferences(_:)(a1, v10);

  return result;
}

id CRArray.count.getter(uint64_t a1)
{
  v3 = v1[1];
  v10 = *v1;
  v11 = v3;
  v4 = sub_1AE23BFEC();
  v5 = *(a1 + 16);
  v8[0] = v4;
  v8[1] = v5;
  v8[2] = &protocol witness table for UUID;
  v8[3] = sub_1ADDDF5BC(&qword_1ED96A718, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  v9 = *(a1 + 24);
  v6 = type metadata accessor for CROrderedDictionary(0, v8);
  return CROrderedDictionary.count.getter(v6);
}

uint64_t CRArray.array.getter(uint64_t a1)
{
  v2 = v1[1];
  v7 = *v1;
  v8 = v2;
  v5 = *(a1 + 16);
  v6 = *(a1 + 32);
  return CRArray.map<A>(_:)(sub_1ADF5C63C, &v4, a1, v5);
}

uint64_t CRArray.insert(_:at:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1AE23BFEC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED96AC50 != -1)
  {
    swift_once();
  }

  sub_1ADDD0F70();
  sub_1AE23BFBC();
  v10 = *(a3 + 16);
  v11 = sub_1ADDDF5BC(&qword_1ED96A718, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  v14[0] = v6;
  v14[1] = v10;
  v14[2] = &protocol witness table for UUID;
  v14[3] = v11;
  v15 = *(a3 + 24);
  v12 = type metadata accessor for CROrderedDictionary(0, v14);
  CROrderedDictionary.insert(value:forKey:at:)(a1, v9, a2, v12);
  return (*(v7 + 8))(v9, v6);
}

Swift::Void __swiftcall CRArray.move(from:to:)(Swift::Int from, Swift::Int to)
{
  v3 = v2;
  v6 = sub_1AE23BFEC();
  v7 = *(v3 + 16);
  v8[0] = v6;
  v8[1] = v7;
  v8[2] = &protocol witness table for UUID;
  v8[3] = sub_1ADDDF5BC(&qword_1ED96A718, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  v9 = *(v3 + 24);
  type metadata accessor for CROrderedDictionary(0, v8);
  CROrderedDictionary.move(from:to:)(from, to);
}

uint64_t CRArray.index(where:)(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v29 = a1;
  v30 = a2;
  v5 = *(*(a3 + 16) - 8);
  MEMORY[0x1EEE9AC00](a1);
  v27 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = v7;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v35 = sub_1AE23D7CC();
  v9 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - v12;
  v14 = v3[1];
  v36 = *v3;
  v37 = v14;
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x1B26FB780](v38, a3, WitnessTable);
  v36 = v38[0];
  v37 = v38[1];
  sub_1AE23DC9C();
  sub_1AE23DC6C();
  v16 = sub_1AE23DC8C();
  v32 = (v9 + 32);
  v33 = v16;
  v31 = TupleTypeMetadata2 - 8;
  v26 = (v5 + 32);
  while (1)
  {
    v17 = v34;
    sub_1AE23DC7C();
    (*v32)(v13, v17, v35);
    if ((*(*(TupleTypeMetadata2 - 8) + 48))(v13, 1, TupleTypeMetadata2) == 1)
    {
      break;
    }

    v18 = *v13;
    v19 = TupleTypeMetadata2;
    v20 = *(TupleTypeMetadata2 + 48);
    v21 = v27;
    v22 = v28;
    (*v26)(v27, &v13[v20], v28);
    v23 = v39;
    v24 = v29(v21);
    (*(v5 + 8))(v21, v22);
    v39 = v23;
    if (!v23)
    {
      TupleTypeMetadata2 = v19;
      if ((v24 & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_7;
  }

  v18 = 0;
LABEL_7:

  return v18;
}

uint64_t CRArray.first.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (CRArray.count.getter(a1) < 1)
  {
    v4 = *(*(*(a1 + 16) - 8) + 56);
    v5 = a2;
    v6 = 1;
  }

  else
  {
    CRArray.subscript.getter(0, a1, a2);
    v4 = *(*(*(a1 + 16) - 8) + 56);
    v5 = a2;
    v6 = 0;
  }

  return v4(v5, v6, 1);
}

uint64_t CRArray.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = v3[1];
  v14 = *v3;
  v15 = v7;
  v8 = sub_1AE23BFEC();
  v9 = *(a2 + 16);
  v12[0] = v8;
  v12[1] = v9;
  v12[2] = &protocol witness table for UUID;
  v12[3] = sub_1ADDDF5BC(&qword_1ED96A718, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  v13 = *(a2 + 24);
  v10 = type metadata accessor for CROrderedDictionary(0, v12);
  return CROrderedDictionary.subscript.getter(a1, v10, a3);
}

Swift::Bool __swiftcall CRArray.needToFinalizeTimestamps()()
{
  v2 = v0;
  v4 = *v1;
  v3 = v1[1];
  v11 = v4;
  v12 = v3;
  v5 = sub_1AE23BFEC();
  v6 = *(v2 + 16);
  v7 = sub_1ADDDF5BC(&qword_1ED96A718, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);

  v9[0] = v5;
  v9[1] = v6;
  v9[2] = &protocol witness table for UUID;
  v9[3] = v7;
  v10 = *(v2 + 24);
  type metadata accessor for CROrderedDictionary(0, v9);
  LOBYTE(v2) = CROrderedDictionary.needToFinalizeTimestamps()();

  return v2 & 1;
}

uint64_t sub_1ADF590B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v6 = sub_1AE23BFEC();
  v7 = *(a2 + 16);
  v10[0] = v6;
  v10[1] = v7;
  v10[2] = &protocol witness table for UUID;
  v10[3] = sub_1ADDDF5BC(&qword_1ED96A718, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  v11 = *(a2 + 24);
  v8 = type metadata accessor for CROrderedDictionary(0, v10);
  return a3(a1, v8);
}

void CRArray.actionUndoingDifference(from:)(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  v7 = a1[1];
  v9 = *v3;
  v8 = v3[1];
  v17[2] = v9;
  v17[3] = v8;
  v17[0] = v6;
  v17[1] = v7;
  v10 = sub_1AE23BFEC();
  v11 = *(a2 + 16);
  v12 = sub_1ADDDF5BC(&qword_1ED96A718, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);

  v15[0] = v10;
  v15[1] = v11;
  v15[2] = &protocol witness table for UUID;
  v15[3] = v12;
  v16 = *(a2 + 24);
  v13 = type metadata accessor for CROrderedDictionary(0, v15);
  CROrderedDictionary.actionUndoingDifference(from:)(v17, v13, &v18);

  if (v18 == 1)
  {
    v14 = 0uLL;
  }

  else
  {
    v14 = v19;
  }

  *a3 = v18;
  *(a3 + 8) = v14;
}

void CRArray.apply(_:)(void **a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  if (*a1 == 1)
  {
    v6 = 0;
  }

  else
  {
    v6 = a1[1];
  }

  if (*a1 == 1)
  {
    v7 = 0;
  }

  else
  {
    v7 = a1[2];
  }

  v13 = *a1;
  v14 = v6;
  v15 = v7;
  sub_1ADF5C694(v4, v3, v5);
  v8 = sub_1AE23BFEC();
  v9 = *(a2 + 16);
  v11[0] = v8;
  v11[1] = v9;
  v11[2] = &protocol witness table for UUID;
  v11[3] = sub_1ADDDF5BC(&qword_1ED96A718, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  v12 = *(a2 + 24);
  v10 = type metadata accessor for CROrderedDictionary(0, v11);
  CROrderedDictionary.apply(_:)(&v13, v10);
  sub_1ADE24060(v13, v14, v15);
}

uint64_t CRArray.hasDelta(from:)(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = a1[1];
  v7 = *v2;
  v6 = v2[1];
  v15[2] = v7;
  v15[3] = v6;
  v15[0] = v4;
  v15[1] = v5;
  v8 = sub_1AE23BFEC();
  v9 = *(a2 + 16);
  v10 = sub_1ADDDF5BC(&qword_1ED96A718, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);

  v13[0] = v8;
  v13[1] = v9;
  v13[2] = &protocol witness table for UUID;
  v13[3] = v10;
  v14 = *(a2 + 24);
  v11 = type metadata accessor for CROrderedDictionary(0, v13);
  LOBYTE(a2) = CROrderedDictionary.hasDelta(from:)(v15, v11);

  return a2 & 1;
}

uint64_t CRArray.delta(_:from:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t CRArray.merge(delta:)(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  v5[0] = *a1;
  v5[1] = v3;

  CRArray.merge(_:)(v5, a2, &v6);

  return 1;
}

uint64_t CRArray.observableDifference(from:with:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, char *a4@<X8>)
{
  v52 = a2;
  v54 = a4;
  v7 = sub_1AE23C12C();
  v49 = *(v7 - 8);
  v50 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v48 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v47 = &v44 - v10;
  v11 = sub_1AE23BFEC();
  v53 = v11;
  v51 = a3[2];
  v12 = v51;
  v13 = sub_1ADDDF5BC(&qword_1ED96A718, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  v15 = a3[3];
  v14 = a3[4];
  v56 = v11;
  v57 = v12;
  v58 = &protocol witness table for UUID;
  v59 = v13;
  v60 = v15;
  v61 = v14;
  v16 = type metadata accessor for CROrderedDictionary.ObservableDifference(255, &v56);
  v17 = sub_1AE23D7CC();
  v45 = *(v17 - 8);
  v46 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v44 - v18;
  v20 = *(v16 - 1);
  MEMORY[0x1EEE9AC00](v21);
  v23 = (&v44 - v22);
  v24 = *a1;
  v25 = a1[1];
  v26 = *v4;
  v27 = v4[1];
  v55[2] = v26;
  v55[3] = v27;
  v55[0] = v24;
  v55[1] = v25;

  v28 = v51;

  v56 = v53;
  v57 = v28;
  v58 = &protocol witness table for UUID;
  v59 = v13;
  v60 = v15;
  v61 = v14;
  v53 = v14;
  v29 = type metadata accessor for CROrderedDictionary(0, &v56);
  CROrderedDictionary.observableDifference(from:with:)(v55, v52, v29, v19);

  if ((*(v20 + 48))(v19, 1, v16) == 1)
  {
    (*(v45 + 8))(v19, v46);
    v30 = 1;
    v31 = v53;
    v32 = v54;
  }

  else
  {
    (*(v20 + 32))(v23, v19, v16);
    v33 = *v23;
    v34 = v50;
    v35 = *(v49 + 32);
    v36 = v47;
    v35(v47, v23 + v16[17], v50);
    v37 = *(v23 + v16[18]);
    v38 = v23 + v16[19];
    v39 = v48;
    v35(v48, v38, v34);
    v32 = v54;
    v40 = v39;
    v41 = v53;
    sub_1ADF5C040(v33, v36, v37, v40, v28, v15, v53, v54);
    v30 = 0;
    v31 = v41;
  }

  v42 = type metadata accessor for CRArray.ObservableDifference(0, v28, v15, v31);
  return (*(*(v42 - 8) + 56))(v32, v30, 1, v42);
}

uint64_t sub_1ADF59998(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return static CRDT.== infix(_:_:)(a1, a2, a3, WitnessTable);
}

void CRArray.init(from:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  if (*(a1 + 64))
  {
    type metadata accessor for CRDecoder.CRDTContainer();
    inited = swift_initStackObject();
    *(inited + 16) = a1;
    *(inited + 24) = 0;
    *(inited + 32) = 1;
    sub_1ADE64E54(a2, a3, a4, v14);
    swift_setDeallocating();

    if (!v5)
    {
      v12 = v14[1];
      *a5 = v14[0];
      a5[1] = v12;
    }
  }

  else
  {
    sub_1ADE42E40(a1, a2, a3);
    swift_allocError();
    *v13 = 0xD000000000000014;
    *(v13 + 8) = 0x80000001AE25FB50;
    *(v13 + 16) = 0;
    swift_willThrow();
  }
}

double CRArray.encode(to:)(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *v3;
  v7 = v3[1];
  sub_1ADDFCC74(a1, a2, a3);
  if (!v4)
  {
    v12[0] = v6;
    v12[1] = v7;
    v9 = a2[2];
    v10 = a2[3];
    v11 = a2[4];

    sub_1ADE6BE6C(v12, v9, v10, v11);
  }

  return result;
}

BOOL CRArray.isDefaultState.getter(uint64_t a1)
{
  v3 = v1[1];
  v9 = *v1;
  v10 = v3;
  v4 = sub_1AE23BFEC();
  v5 = *(a1 + 16);
  v7[0] = v4;
  v7[1] = v5;
  v7[2] = &protocol witness table for UUID;
  v7[3] = sub_1ADDDF5BC(&qword_1ED96A718, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  v8 = *(a1 + 24);
  type metadata accessor for CROrderedDictionary(0, v7);
  return CROrderedDictionary.isDefaultState.getter();
}

uint64_t CRArray.index(of:)(uint64_t a1, uint64_t a2)
{
  v24[0] = a1;
  v4 = *(a2 + 16);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v26 = sub_1AE23D7CC();
  v9 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v25 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v24 - v12;
  v14 = v2[1];
  v29[2] = *v2;
  v29[3] = v14;
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x1B26FB780](v29, a2, WitnessTable);
  v27 = v29[0];
  v28 = v29[1];
  sub_1AE23DC9C();
  sub_1AE23DC6C();
  v24[1] = a2;
  v16 = sub_1AE23DC8C();
  v17 = (v9 + 32);
  v24[2] = TupleTypeMetadata2 - 8;
  v24[3] = v16;
  v18 = (v5 + 32);
  v19 = (v5 + 8);
  while (1)
  {
    v20 = v25;
    sub_1AE23DC7C();
    (*v17)(v13, v20, v26);
    if ((*(*(TupleTypeMetadata2 - 8) + 48))(v13, 1, TupleTypeMetadata2) == 1)
    {
      break;
    }

    v21 = *v13;
    (*v18)(v7, &v13[*(TupleTypeMetadata2 + 48)], v4);
    v22 = sub_1AE23CCBC();
    (*v19)(v7, v4);
    if (v22)
    {
      goto LABEL_6;
    }
  }

  v21 = 0;
LABEL_6:

  return v21;
}

uint64_t CRArray.Iterator.next()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1AE23BFEC();
  v5 = *(a1 + 16);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v7 = sub_1AE23D7CC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v18 - v12;
  v14 = sub_1ADDDF5BC(&qword_1ED96A718, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  v18[0] = v4;
  v18[1] = v5;
  v18[2] = &protocol witness table for UUID;
  v18[3] = v14;
  v19 = *(a1 + 24);
  v15 = type metadata accessor for CROrderedDictionary.Iterator(0, v18);
  CROrderedDictionary.Iterator.next()(v15, v13);
  (*(v8 + 32))(v10, v13, v7);
  if ((*(*(TupleTypeMetadata2 - 8) + 48))(v10, 1, TupleTypeMetadata2) == 1)
  {
    (*(v8 + 8))(v10, v7);
    return (*(*(v5 - 8) + 56))(a2, 1, 1, v5);
  }

  else
  {
    v17 = *(v5 - 8);
    (*(v17 + 32))(a2, &v10[*(TupleTypeMetadata2 + 48)], v5);
    (*(v17 + 56))(a2, 0, 1, v5);
    return (*(*(v4 - 8) + 8))(v10, v4);
  }
}

double CRArray.makeIterator()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *v2;
  v5 = v2[1];
  v17 = v6;
  v18 = v5;
  v7 = sub_1AE23BFEC();
  v8 = *(a1 + 16);
  v9 = sub_1ADDDF5BC(&qword_1ED96A718, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);

  *&v13 = v7;
  *(&v13 + 1) = v8;
  v14 = &protocol witness table for UUID;
  v15 = v9;
  v16 = *(a1 + 24);
  v10 = type metadata accessor for CROrderedDictionary(0, &v13);
  CROrderedDictionary.makeIterator()(v10, &v13);

  result = *&v13;
  v12 = v14;
  *a2 = v13;
  *(a2 + 16) = v12;
  return result;
}

double sub_1ADF5A38C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  CRArray.makeIterator()(a1, a2);

  return result;
}

uint64_t sub_1ADF5A3C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

uint64_t sub_1ADF5A424(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v6 = sub_1AE23836C(v3, a1, WitnessTable);

  return v6;
}

uint64_t sub_1ADF5A4D0@<X0>(uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t x8_0@<X8>)
{
  v5 = *a2;
  v6 = type metadata accessor for CRArray(0, *(a2 + a3 - 24), *(a2 + a3 - 16), *(a2 + a3 - 8));
  return CRArray.subscript.getter(v5, v6, x8_0);
}

uint64_t CRArray.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1ADF5C6F0(a1, a2, a3);
  v5 = *(*(*(a3 + 16) - 8) + 8);

  return v5(a1);
}

void (*CRArray.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, char a2)
{
  v7 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x38uLL);
  }

  v9 = v8;
  *a1 = v8;
  v8[1] = a3;
  v8[2] = v3;
  *v8 = a2;
  v10 = *(a3 + 16);
  v8[3] = v10;
  v11 = *(v10 - 8);
  v8[4] = v11;
  v12 = *(v11 + 64);
  if (v7)
  {
    v8[5] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v8[5] = malloc(v12);
    v13 = malloc(v12);
  }

  v9[6] = v13;
  CRArray.subscript.getter(a2, a3, v13);
  return sub_1ADF5A6D8;
}

void sub_1ADF5A6D8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v4 = (*a1)[6];
  v5 = (*a1)[3];
  v6 = (*a1)[4];
  v7 = (*a1)[1];
  v8 = **a1;
  if (a2)
  {
    (*(v6 + 16))((*a1)[5], v4, v5);
    sub_1ADF5C6F0(v3, v8, v7);
    v9 = *(v6 + 8);
    v9(v3, v5);
    v9(v4, v5);
  }

  else
  {
    sub_1ADF5C6F0((*a1)[6], v8, v7);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

Swift::Int __swiftcall CRArray.index(after:)(Swift::Int after)
{
  v1 = __OFADD__(after, 1);
  result = after + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t CRArray.replaceSubrange<A>(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v58 = a4;
  v70 = *MEMORY[0x1E69E9840];
  v11 = sub_1AE23BFEC();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v63 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1AE23C12C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1AE23D44C())
  {
    sub_1AE23C00C();
    v18 = v58;
    v19 = *(v58 + 16);
    v20 = sub_1ADDDF5BC(&qword_1ED96A718, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    v65 = v11;
    v66 = v19;
    v67 = &protocol witness table for UUID;
    v68 = v20;
    v69 = *(v18 + 24);
    v21 = type metadata accessor for CROrderedDictionary(0, &v65);
    CROrderedDictionary.remove(atOffsets:)(v17, v21);
    return (*(v15 + 8))(v17, v14);
  }

  v59 = v11;
  v23 = sub_1AE23D43C();
  v24 = sub_1ADDE4ECC(0, v23 & ~(v23 >> 63), 0, MEMORY[0x1E69E7CC0]);
  v25 = sub_1AE23D43C();
  if (v25 < 0)
  {
LABEL_39:
    __break(1u);
  }

  v26 = a6;
  v56 = a3;
  v57 = a2;
  if (v25)
  {
    v27 = 0;
    v60 = v12 + 32;
    v61 = v25;
    v28 = v59;
    v62 = a1;
    while (1)
    {
      if (qword_1ED96AC50 != -1)
      {
        swift_once();
      }

      v29 = qword_1ED96F298;
      v30 = clock_gettime_nsec_np(_CLOCK_REALTIME);
      v31 = ((v30 / 0xF4240) << 12) | (4095 * (v30 % 0xF4240) / 0xF4240);
      v32 = *(v29 + 24);
      os_unfair_lock_lock((v32 + 32));
      v33 = *(v32 + 16);
      v34 = v33 <= v31 ? v31 : *(v32 + 16);
      if (v33 >= v31)
      {
        v36 = v26;
        v37 = a5;
        v38 = *(v29 + 16);
        if (v38 > 0x4000000000000000)
        {
          goto LABEL_35;
        }

        v39 = *(v32 + 24);
        if (v38)
        {
          v65 = 0;
          MEMORY[0x1B26FDA70](&v65, 8);
          v40 = (v65 * v38) >> 64;
          if (v38 > v65 * v38)
          {
            v41 = -v38 % v38;
            if (v41 > v65 * v38)
            {
              do
              {
                v65 = 0;
                MEMORY[0x1B26FDA70](&v65, 8);
              }

              while (v41 > v65 * v38);
              v40 = (v65 * v38) >> 64;
            }
          }
        }

        else
        {
          v40 = 0;
        }

        v42 = v39 + 1;
        if (v39 == -1)
        {
          goto LABEL_36;
        }

        v35 = v42 + v40;
        if (__CFADD__(v42, v40))
        {
          goto LABEL_37;
        }

        if (v35 >> 62)
        {
          if (__CFADD__(v34++, 1))
          {
            goto LABEL_38;
          }

          a5 = v37;
          v65 = 0;
          MEMORY[0x1B26FDA70](&v65, 8);
          v35 = v65 >> 3;
        }

        else
        {
          a5 = v37;
        }

        v26 = v36;
        v28 = v59;
      }

      else
      {
        v65 = 0;
        MEMORY[0x1B26FDA70](&v65, 8);
        v35 = v65 >> 3;
      }

      *(v32 + 16) = v34;
      *(v32 + 24) = v35;
      os_unfair_lock_unlock((v32 + 32));
      if (v34 >> 60)
      {
        break;
      }

      sub_1AE23BFBC();
      v45 = v24[2];
      v44 = v24[3];
      if (v45 >= v44 >> 1)
      {
        v24 = sub_1ADDE4ECC((v44 > 1), v45 + 1, 1, v24);
      }

      a1 = v62;
      v46 = v63;
      ++v27;
      v24[2] = v45 + 1;
      (*(v12 + 32))(v24 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v45, v46, v28);
      if (v27 == v61)
      {
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v28 = v59;
LABEL_33:
  v64 = v24;
  v47 = v58;
  v48 = v28;
  v49 = *(v58 + 16);
  v50 = sub_1ADDDF5BC(&qword_1ED96A718, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  v65 = v48;
  v66 = v49;
  v67 = &protocol witness table for UUID;
  v68 = v50;
  v69 = *(v47 + 24);
  v51 = type metadata accessor for CROrderedDictionary(0, &v65);
  v52 = v26;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB4B0, &unk_1AE24C630);
  v54 = sub_1ADF5C7A8();
  sub_1AE011700(a1, v57, &v64, v56, v51, v53, a5, v54, v52);
}

uint64_t CRArray.filter(_:)@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v52 = a2;
  v51 = a1;
  v47 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB4C0, &unk_1AE2514B0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v44 = &v42 - v7;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB4C8, &unk_1AE24C640);
  MEMORY[0x1EEE9AC00](v43);
  v9 = &v42 - v8;
  v10 = *(*(a3 + 16) - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = v14;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v16 = sub_1AE23D7CC();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v42 - v17;
  v49 = sub_1AE23C12C();
  v48 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v21 = *v4;
  v20 = v4[1];
  v50 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AE23C11C();
  v62 = v21;
  v63 = v20;
  v45 = v21;
  v58 = v21;
  v46 = v20;
  v59 = v20;
  swift_getWitnessTable();
  sub_1AE23D3FC();
  v65 = v66;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB4D0, qword_1AE24CCE0);
  WitnessTable = swift_getWitnessTable();
  v24 = sub_1ADF5CBA8(&qword_1EB5BB4D8, MEMORY[0x1E69E66D0]);
  sub_1AE23E25C();
  v62 = v67;
  v63 = v68;
  v64 = v69;
  v58 = a3;
  v56 = v22;
  v59 = v22;
  v55 = WitnessTable;
  v60 = WitnessTable;
  v61 = v24;
  v54 = v24;
  sub_1AE23DA9C();
  sub_1AE23DA6C();
  v53 = TupleTypeMetadata2 - 8;
  for (i = (v10 + 8); ; (*i)(v13, v57))
  {
    v67 = a3;
    v68 = v56;
    *&v69 = v55;
    *(&v69 + 1) = v54;
    sub_1AE23DA8C();
    sub_1AE23DA7C();
    if ((*(*(TupleTypeMetadata2 - 8) + 48))(v18, 1, TupleTypeMetadata2) == 1)
    {
      break;
    }

    (*(v10 + 32))(v13, v18, v57);
    v26 = v71;
    v27 = v51(v13);
    v71 = v26;
    if (v26)
    {
      (*i)(v13, v57);

      return (*(v48 + 8))(v50, v49);
    }

    if ((v27 & 1) == 0)
    {
      sub_1AE23C08C();
    }
  }

  v28 = v50;
  if (sub_1AE23C0AC())
  {
    (*(v48 + 8))(v28, v49);
    v29 = v47;
    v30 = v46;
    *v47 = v45;
    v29[1] = v30;
  }

  else
  {
    v67 = v45;
    v68 = v46;

    v32 = v44;
    sub_1AE23C10C();
    v33 = sub_1AE23C0EC();
    v34 = *(v33 - 8);
    (*(v34 + 16))(v9, v32, v33);
    v35 = *(v43 + 36);
    sub_1ADDDF5BC(&qword_1ED96A708, MEMORY[0x1E6969B30], MEMORY[0x1E6969B48]);
    sub_1AE23D46C();
    (*(v34 + 8))(v32, v33);
    sub_1AE23D41C();
    if (*&v9[v35] != v70[0])
    {
      sub_1ADDDF5BC(&qword_1EB5BB4E0, MEMORY[0x1E6969B30], MEMORY[0x1E6969B38]);
      do
      {
        sub_1AE23CBDC();
        v36 = sub_1AE23D51C();
        v38 = *v37;
        v39 = v37[1];
        v36(v70, 0);
        v70[0] = v38;
        v70[1] = v39;
        swift_getWitnessTable();
        sub_1AE23D54C();
        sub_1AE23D41C();
      }

      while (*&v9[v35] != v70[0]);
    }

    sub_1ADF5C860(v9);
    result = (*(v48 + 8))(v50, v49);
    v40 = v68;
    v41 = v47;
    *v47 = v67;
    v41[1] = v40;
  }

  return result;
}

uint64_t (*sub_1ADF5B5B4(void *a1, uint64_t *a2, uint64_t a3))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = CRArray.subscript.modify(v6, *a2, a3);
  return sub_1ADECDC64;
}

double sub_1ADF5B63C(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v5 = *a2;
  sub_1AE1E9F48(a1, &v5, a3, a4);

  return result;
}

uint64_t (*sub_1ADF5B684(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))()
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
  v8[4] = sub_1AE1DF030(v8, a2, a3, a4);
  return sub_1ADEBEB94;
}

uint64_t sub_1ADF5B80C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  CRArray.replaceSubrange<A>(_:with:)(*a1, a1[1], a2, a5, a3, a4);
  v7 = *(*(a3 - 8) + 8);

  return v7(a2, a3);
}

uint64_t sub_1ADF5B8B8(uint64_t a1, uint64_t a2)
{
  CRArray.append(_:)(a1, a2);
  v4 = *(*(*(a2 + 16) - 8) + 8);

  return v4(a1);
}

uint64_t sub_1ADF5B954(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, void))
{
  (a5)(a1, *a2, a3, a4);
  v7 = *(*(*(a3 + 16) - 8) + 8);

  return v7(a1);
}

id sub_1ADF5BA7C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = CRArray.endIndex.getter(a1);
  *a2 = result;
  return result;
}

void (*sub_1ADF5BAA4(void *a1, uint64_t *a2, uint64_t a3))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_1ADF5BB2C(v6, *a2, a3);
  return sub_1ADDF195C;
}

void (*sub_1ADF5BB2C(void *a1, uint64_t a2, uint64_t a3))(void *a1)
{
  v6 = *(a3 + 16);
  *a1 = v6;
  v7 = *(v6 - 8);
  a1[1] = v7;
  v8 = *(v7 + 64);
  if (MEMORY[0x1E69E7D08])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(v8);
  }

  a1[2] = v9;
  CRArray.subscript.getter(a2, a3, v9);
  return sub_1ADE022F8;
}

uint64_t sub_1ADF5BBFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *x8_0@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1AE1DF3FC(a1, a2, WitnessTable, x8_0);
}

void *sub_1ADF5BC64()
{
  swift_getWitnessTable();

  return sub_1AE23D3FC();
}

void *sub_1ADF5BCE4@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result + 1;
  }

  return result;
}

void *sub_1ADF5BCFC(void *result)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    ++*result;
  }

  return result;
}

uint64_t sub_1ADF5BD14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();

  return sub_1AE23D3DC();
}

uint64_t CRArray.ObservableDifference.removed.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 44);
  v5 = sub_1AE23C12C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t CRArray.ObservableDifference.added.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 52);
  v5 = sub_1AE23C12C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1ADF5C040@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  *a8 = a1;
  v12 = type metadata accessor for CRArray.ObservableDifference(0, a5, a6, a7);
  v13 = v12[11];
  v14 = sub_1AE23C12C();
  v17 = *(*(v14 - 8) + 32);
  (v17)((v14 - 8), &a8[v13], a2, v14);
  *&a8[v12[12]] = a3;
  v15 = &a8[v12[13]];

  return v17(v15, a4, v14);
}

uint64_t CRArray<>.encode(to:)(void *a1, void *a2, uint64_t a3)
{
  v25[6] = a3;
  v7 = a2[2];
  v18 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1AE23D7CC();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v18 - v11;
  v13 = *v3;
  v20 = v3[1];
  v21 = v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1AE23E3AC();
  v22 = v21;
  v23 = v20;
  CRArray.makeIterator()(a2, &v24);
  v21 = type metadata accessor for CRArray.Iterator(0, v7, a2[3], a2[4]);
  CRArray.Iterator.next()(v21, v12);
  v14 = v18;
  v19 = *(v18 + 48);
  v20 = v18 + 48;
  if (v19(v12, 1, v7) != 1)
  {
    v16 = *(v14 + 32);
    v15 = v14 + 32;
    v18 = v16;
    do
    {
      (v18)(v9, v12, v7);
      __swift_mutable_project_boxed_opaque_existential_1(v25, v25[3]);
      sub_1AE23DE6C();
      (*(v15 - 24))(v9, v7);
      if (v4)
      {
        break;
      }

      CRArray.Iterator.next()(v21, v12);
    }

    while (v19(v12, 1, v7) != 1);
  }

  return __swift_destroy_boxed_opaque_existential_1(v25);
}

uint64_t CRArray.Partial.merge(delta:)(uint64_t *a1, void *a2)
{
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  v3 = type metadata accessor for CRArray(0, a2[2], a2[3], a2[4]);

  CRArray.merge(_:)(v5, v3, &v6);

  return 1;
}

double CRArray.Partial.visitReferences(_:)(void *a1, void *a2)
{
  v3 = type metadata accessor for CRArray(0, a2[2], a2[3], a2[4]);

  CRArray.visitReferences(_:)(a1, v3);

  return result;
}

void CRArray.Partial.init(from:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  CRArray.init(from:)(a1, a2, a3, a4, v8);
  if (!v5)
  {
    v7 = v8[1];
    *a5 = v8[0];
    a5[1] = v7;
  }
}

double CRArray.Partial.encode(to:)(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for CRArray(0, a2[2], a2[3], a2[4]);

  CRArray.encode(to:)(a1, v3, v4);

  return result;
}

id sub_1ADF5C694(id result, uint64_t a2, void *a3)
{
  if (result != 1)
  {
    sub_1ADE42C78(result, a2);

    return a3;
  }

  return result;
}

id sub_1ADF5C6F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1AE23BFEC();
  v7 = *(a3 + 16);
  v10[0] = v6;
  v10[1] = v7;
  v10[2] = &protocol witness table for UUID;
  v10[3] = sub_1ADDDF5BC(&qword_1ED96A718, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  v11 = *(a3 + 24);
  v8 = type metadata accessor for CROrderedDictionary(0, v10);
  return sub_1AE017788(a1, a2, v8);
}

unint64_t sub_1ADF5C7A8()
{
  result = qword_1EB5BB4B8;
  if (!qword_1EB5BB4B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB5BB4B0, &unk_1AE24C630);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BB4B8);
  }

  return result;
}

unint64_t sub_1ADF5C80C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB5B8C28;
  if (!qword_1EB5B8C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5B8C28);
  }

  return result;
}

uint64_t sub_1ADF5C860(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB4C8, &unk_1AE24C640);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1ADF5C904(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 16) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_1ADF5CBA8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB5BB4D0, qword_1AE24CCE0);
    sub_1ADF5C80C(v4, v5, v6);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1ADF5CC84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1ADF5CCC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1ADF5CCFC(uint64_t a1, int a2)
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

uint64_t sub_1ADF5CD1C(uint64_t result, int a2, int a3)
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

void sub_1ADF5CD58(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  sub_1AE23CB1C();
  if (v1 <= 0x3F)
  {
    sub_1AE23C12C();
    if (v2 <= 0x3F)
    {
      sub_1ADF5CE54();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1ADF5CE54()
{
  if (!qword_1EB5B8C18)
  {
    v0 = sub_1AE23D11C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB5B8C18);
    }
  }
}

uint64_t sub_1ADF5CEA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_9Coherence12CRDictionaryV14MutatingActionVy10Foundation4UUIDVx_GSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1ADF5CF10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void *sub_1ADF5CF74()
{
  v0 = sub_1AE23C0EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AE23C10C();
  sub_1ADF5E938();
  v4 = sub_1AE23D43C();
  if (v4)
  {
    v5 = v4;
    v29 = MEMORY[0x1E69E7CC0];
    sub_1ADE0B11C(0, v4 & ~(v4 >> 63), 0);
    v6 = v29;
    result = sub_1AE23D41C();
    if ((v5 & 0x8000000000000000) == 0)
    {
      v25 = v1;
      while (1)
      {
        v8 = sub_1AE23D51C();
        v10 = *v9;
        v11 = v9[1];
        result = v8(&v27, 0);
        v12 = __OFSUB__(v11, 1);
        v13 = v11 - 1;
        if (v12)
        {
          break;
        }

        if (v10 == v13)
        {
          v27 = v10;
          v14 = sub_1AE23DD9C();
        }

        else
        {
          v26 = v10;
          v27 = sub_1AE23DD9C();
          v28 = v16;
          MEMORY[0x1B26FB670](45, 0xE100000000000000);
          v26 = v13;
          v17 = sub_1AE23DD9C();
          MEMORY[0x1B26FB670](v17);

          v14 = v27;
          v15 = v28;
        }

        v29 = v6;
        v19 = *(v6 + 16);
        v18 = *(v6 + 24);
        if (v19 >= v18 >> 1)
        {
          v24 = v14;
          v21 = v15;
          sub_1ADE0B11C((v18 > 1), v19 + 1, 1);
          v15 = v21;
          v14 = v24;
          v6 = v29;
        }

        *(v6 + 16) = v19 + 1;
        v20 = v6 + 16 * v19;
        *(v20 + 32) = v14;
        *(v20 + 40) = v15;
        sub_1AE23D47C();
        if (!--v5)
        {
          (*(v25 + 8))(v3, v0);
          goto LABEL_13;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
    (*(v1 + 8))(v3, v0);
    v6 = MEMORY[0x1E69E7CC0];
LABEL_13:
    v27 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA250, &unk_1AE251E30);
    sub_1ADF5E990();
    v22 = sub_1AE23CBFC();

    return v22;
  }

  return result;
}

void sub_1ADF5D268(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a4;
  v37 = a8;
  v35 = a3;
  v12 = a1;
  v13 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1AE23D0AC();
  v17 = [objc_allocWithZone(MEMORY[0x1E696AE30]) init];
  v18 = [v17 activeProcessorCount];

  v20 = 3 * v18;
  if ((v18 * 3) >> 64 != (3 * v18) >> 63)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (!v20)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v16 == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_12;
  }

  v21 = v16 / v20;
  if (v21 > 0)
  {
    v38 = 0;
    MEMORY[0x1EEE9AC00](v16 / v21);
    *(&v34 - 12) = a6;
    *(&v34 - 11) = a7;
    *(&v34 - 10) = v37;
    *(&v34 - 9) = v22;
    *(&v34 - 8) = &v38;
    *(&v34 - 7) = v16;
    *(&v34 - 6) = v23;
    *(&v34 - 5) = v12;
    *(&v34 - 4) = a2;
    *(&v34 - 3) = a5;
    v24 = v36;
    *(&v34 - 2) = v35;
    *(&v34 - 1) = v24;
    v12 = 0;
    v19 = sub_1AE23D07C();
    if (v38)
    {
      return;
    }

    __break(1u);
  }

  v12(v19);
  sub_1ADE0FC48(a7, a7);
  swift_allocObject();
  v25 = sub_1AE23CFFC();
  (*(v13 + 16))(v26, v15, a7);
  sub_1ADE0FCBC(v25, a7);
  v34 = v27;
  v38 = a5;
  MEMORY[0x1EEE9AC00](v27);
  *(&v34 - 6) = a6;
  *(&v34 - 5) = a7;
  v28 = v37;
  v30 = v35;
  v29 = v36;
  *(&v34 - 4) = v37;
  *(&v34 - 3) = v30;
  *(&v34 - 2) = v29;
  *(&v34 - 1) = v15;
  v31 = sub_1AE23D11C();
  WitnessTable = swift_getWitnessTable();
  sub_1ADE08EB0(sub_1ADF5E9F4, (&v34 - 8), v31, v28, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v33);
  (*(v13 + 8))(v15, a7);
}

uint64_t sub_1ADF5D580(void *a1, void *a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  *a2 = a3;
  result = sub_1AE23D7DC();
  if (result)
  {
    MEMORY[0x1EEE9AC00](result);
    *a4 = sub_1AE23D07C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1ADF5D680(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  *a2 = a3;
  result = sub_1AE23D7DC();
  if (result)
  {
    v15 = sub_1ADDCED94();
    MEMORY[0x1EEE9AC00](v15);
    return sub_1AE23D67C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1ADF5D778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(char *, char *), uint64_t a10, uint64_t a11)
{
  v73 = a11;
  v74 = a7;
  MEMORY[0x1EEE9AC00](a1);
  v72 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = v13;
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v71 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = v17;
  v64 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28.n128_f64[0] = MEMORY[0x1EEE9AC00](v21);
  v76 = &v63 - v29;
  v31 = v30 * v22;
  if ((v30 * v22) >> 64 != (v30 * v22) >> 63)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v32 = v31 + v22;
  if (__OFADD__(v31, v22))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (!__OFADD__(v32, v22))
  {
    v77 = v27;
    if (v32 + v22 <= v23)
    {
      v33 = v31 + v22;
    }

    else
    {
      v33 = v23;
    }

    v34 = v76;
    v35 = v25;
    v36 = v26;
    v24(v28);
    v37 = v64;
    v38 = v35 + *(v64 + 72) * a1;
    v39 = v34;
    v40 = v14;
    v41 = v65;
    (*(v64 + 16))(v20, v39, v65);
    (*(v37 + 32))(v38, v20, v41);
    v42 = *(v14 + 72);
    v43 = v36 + v42 * v31;
    v86 = v43;
    v70 = v42;
    v44 = v36 + v42 * v33;
    v83 = v44;
    v45 = sub_1AE23D7BC();
    swift_getWitnessTable();
    if ((sub_1AE23CC4C() & 1) == 0)
    {
      goto LABEL_19;
    }

    v68 = a9;
    v69 = a10;
    v83 = v43;
    v84 = v44;
    v86 = v43;
    v87 = v44;
    v46 = sub_1AE23D5CC();
    WitnessTable = swift_getWitnessTable();
    v50 = sub_1ADF5C80C(WitnessTable, v48, v49);
    sub_1AE23D5DC();
    v67 = (v77 + 8);
    v66 = (v40 + 32);
    v51 = v72;
    while (1)
    {
      sub_1AE23D5EC();
      v52 = v85;
      if (v85 == v83)
      {
        goto LABEL_14;
      }

      v82 = v85;
      sub_1AE23D5DC();
      sub_1AE23D5EC();
      if ((sub_1AE23CC4C() & 1) == 0)
      {
        break;
      }

      v83 = v81;
      v84 = v80;
      v78 = WitnessTable;
      v79 = v50;
      v53 = swift_getWitnessTable();
      sub_1ADF5EC9C(&v82, &v83, v46, v53);
      v85 = v52 + v70;
      v54 = v73;
      sub_1AE23D15C();
      v77 = v31;
      v55 = v46;
      v56 = v50;
      v57 = WitnessTable;
      v58 = v45;
      v59 = v71;
      v68(v76, v51);
      (*v67)(v51, v54);
      v60 = v59;
      v45 = v58;
      WitnessTable = v57;
      v50 = v56;
      v46 = v55;
      v61 = v77;
      (*v66)(v52, v60, v75);
      v62 = __OFADD__(v61, 1);
      v31 = v61 + 1;
      if (v62)
      {
        __break(1u);
LABEL_14:
        (*(v64 + 8))(v76, v65);
        return;
      }
    }

    __break(1u);
    goto LABEL_16;
  }

LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
}

uint64_t sub_1ADF5DC6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1AE23C0EC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = a1;
  sub_1AE23C10C();
  sub_1AE23C0DC();
  v10 = *(v7 + 8);
  v10(v9, v6);
  v34 = a2;
  sub_1AE23C10C();
  v11 = type metadata accessor for IndexSetBoundaryIterator(0);
  v12 = a3 + v11[5];
  sub_1AE23C0DC();
  v10(v9, v6);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA440, &unk_1AE24CCB0);
  v14 = *(v13 + 36);
  sub_1ADF5E938();
  sub_1AE23D46C();
  v15 = *(a3 + v14);
  v16 = v36[0];
  v17 = 0uLL;
  if (v15 != v36[0])
  {
    v18 = sub_1AE23D51C();
    v33 = *v19;
    v18(v36, 0);
    sub_1AE23D47C();
    v17 = v33;
  }

  v20 = a3 + v11[6];
  *v20 = v17;
  *(v20 + 16) = v15 == v16;
  v21 = *(v13 + 36);
  sub_1AE23D46C();
  v22 = *(v12 + v21);
  v23 = v36[0];
  if (v22 == v36[0])
  {
    v24 = 0;
    v25 = 0;
  }

  else
  {
    v26 = sub_1AE23D51C();
    v25 = v27[1];
    *&v33 = *v27;
    v26(v36, 0);
    v24 = v33;
    sub_1AE23D47C();
  }

  v28 = v22 == v23;
  v29 = a3 + v11[7];
  v30 = sub_1AE23C12C();
  v31 = *(*(v30 - 8) + 8);
  v31(v34, v30);
  result = (v31)(v35, v30);
  *v29 = v24;
  *(v29 + 8) = v25;
  *(v29 + 16) = v28;
  *(a3 + v11[8]) = 0;
  *(a3 + v11[9]) = 0;
  return result;
}

uint64_t sub_1ADF5DF58()
{
  v1 = v0;
  v2 = type metadata accessor for IndexSetBoundaryIterator(0);
  v3 = v0 + v2[6];
  if (*(v3 + 16) != 1)
  {
    v6 = (v3 + 8);
    if (!*(v0 + v2[8]))
    {
      v6 = (v0 + v2[6]);
    }

    v5 = *v6;
    v4 = v0 + v2[7];
    v45 = (v4 + 8);
    v46 = (v4 + 16);
    if (*(v4 + 16))
    {
      v7 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_16;
    }

LABEL_9:
    v8 = (v4 + 8);
    v9 = (v0 + v2[9]);
    LOBYTE(v10) = *v9;
    if (!*v9)
    {
      v8 = v4;
    }

    v7 = *v8;
    if (*v8 < v5)
    {
      if (*v9)
      {
        v39 = *v8;
        v43 = *v9;
        v11 = v0 + v2[5];
        v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA440, &unk_1AE24CCB0) + 36);
        sub_1AE23C0EC();
        sub_1ADF5E938();
        sub_1AE23D46C();
        v13 = 0;
        v14 = 0;
        v15 = *(v11 + v12);
        v16 = v47[0];
        if (v15 != v47[0])
        {
          v17 = sub_1AE23D51C();
          v13 = *v18;
          v14 = v18[1];
          v17(v47, 0);
          sub_1AE23D47C();
        }

        *v4 = v13;
        *v45 = v14;
        *v46 = v15 == v16;
        v5 = v39;
        LOBYTE(v10) = v43;
      }

      else
      {
        v5 = *v8;
      }

LABEL_27:
      *v9 = v10 ^ 1;
      return v5;
    }

LABEL_16:
    v19 = v2[8];
    v9 = (v0 + v19);
    v10 = *(v0 + v19);
    if (v10 == 1)
    {
      v40 = v7;
      v41 = (v0 + v19);
      v38 = v2;
      v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA440, &unk_1AE24CCB0) + 36);
      sub_1AE23C0EC();
      sub_1ADF5E938();
      sub_1AE23D46C();
      v21 = *(v0 + v20);
      v22 = v47[0];
      v23 = 0uLL;
      if (v21 != v47[0])
      {
        v24 = sub_1AE23D51C();
        v37 = *v25;
        v24(v47, 0);
        sub_1AE23D47C();
        v23 = v37;
      }

      *v3 = v23;
      *(v3 + 16) = v21 == v22;
      v2 = v38;
      v7 = v40;
      v9 = v41;
      LOBYTE(v10) = 1;
    }

    if (v5 == v7)
    {
      v26 = v2[9];
      v27 = *(v0 + v26);
      if (v27 == 1)
      {
        v44 = v10;
        v42 = v9;
        v28 = v0 + v2[5];
        v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA440, &unk_1AE24CCB0) + 36);
        sub_1AE23C0EC();
        sub_1ADF5E938();
        sub_1AE23D46C();
        v30 = 0;
        v31 = 0;
        v32 = *(v28 + v29);
        v33 = v47[0];
        if (v32 != v47[0])
        {
          v34 = sub_1AE23D51C();
          v30 = *v35;
          v31 = v35[1];
          v34(v47, 0);
          sub_1AE23D47C();
        }

        *v4 = v30;
        *v45 = v31;
        *v46 = v32 == v33;
        v9 = v42;
        LOBYTE(v10) = v44;
      }

      *(v1 + v26) = v27 ^ 1;
    }

    goto LABEL_27;
  }

  v4 = v0 + v2[7];
  if ((*(v4 + 16) & 1) == 0)
  {
    v45 = (v4 + 8);
    v46 = (v4 + 16);
    v5 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  return 0;
}

uint64_t sub_1ADF5E2F8@<X0>(uint64_t a1@<X8>)
{
  result = sub_1ADF5DF58();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1ADF5E328(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1AE23C12C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v58 - v9;
  v11 = type metadata accessor for IndexSetBoundaryIterator(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v5 + 16);
  v15(v10, v2, v4, v12);
  v60 = a1;
  v16 = a1;
  v17 = v11;
  (v15)(v7, v16, v4);
  v18 = v7;
  v19 = v14;
  sub_1ADF5DC6C(v10, v18, v14);
  v59 = 0;
  v61 = 0;
  v20 = &v14[*(v11 + 24)];
  v64 = v19 + 16;
  v65 = v11;
  v67 = v2;
  v68 = v19;
  v66 = v20;
  while (2)
  {
    v21 = 0;
    do
    {
      while (1)
      {
        if (v20[16] == 1)
        {
          v22 = v17[7];
          if (*(v64 + v22))
          {
            goto LABEL_40;
          }

          v23 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v24 = (v20 + 8);
          v22 = v17[7];
          if (!*(v19 + v17[8]))
          {
            v24 = v20;
          }

          v23 = *v24;
        }

        v25 = v19 + v22;
        if (*(v19 + v22 + 16))
        {
          v26 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_18:
          v28 = (v19 + v17[8]);
          v29 = *v28;
          if (*v28)
          {
            v70 = (v19 + v17[8]);
            LODWORD(v69) = v21;
            v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA440, &unk_1AE24CCB0) + 36);
            sub_1AE23C0EC();
            sub_1ADF5E938();
            sub_1AE23D46C();
            v38 = *(v19 + v37);
            v39 = v71[0];
            v40 = 0uLL;
            if (v38 != v71[0])
            {
              v41 = sub_1AE23D51C();
              v63 = *v42;
              v41(v71, 0);
              sub_1AE23D47C();
              v40 = v63;
            }

            v20 = v66;
            *v66 = v40;
            v20[16] = v38 == v39;
            v17 = v65;
            v19 = v68;
            LOBYTE(v21) = v69;
            v28 = v70;
          }

          if (v23 == v26)
          {
            v43 = v21;
            v44 = v17[9];
            v21 = *(v19 + v44);
            if (v21 == 1)
            {
              v70 = v28;
              v45 = v19 + v17[5];
              v46 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA440, &unk_1AE24CCB0) + 36);
              v47 = sub_1AE23C0EC();
              sub_1ADF5E938();
              v69 = v47;
              sub_1AE23D46C();
              v48 = v46;
              v49 = *(v45 + v46);
              v50 = v71[0];
              v51 = 0uLL;
              if (v49 != v71[0])
              {
                *&v63 = v48;
                v52 = sub_1AE23D51C();
                v62 = *v53;
                v52(v71, 0);
                sub_1AE23D47C();
                v51 = v62;
              }

              *v25 = v51;
              *(v25 + 16) = v49 == v50;
              v17 = v65;
              v20 = v66;
              v19 = v68;
              v28 = v70;
            }

            *(v19 + v44) = v21 ^ 1;
            v26 = v23;
            LOBYTE(v21) = v43;
          }

          else
          {
            v26 = v23;
          }

          goto LABEL_29;
        }

        v27 = (v25 + 8);
        v28 = (v19 + v17[9]);
        v29 = *v28;
        if (!*v28)
        {
          v27 = v25;
        }

        v26 = *v27;
        if (*v27 >= v23)
        {
          goto LABEL_18;
        }

        if (*v28)
        {
          v70 = (v19 + v17[9]);
          LODWORD(v69) = v21;
          v30 = v19 + v17[5];
          v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA440, &unk_1AE24CCB0) + 36);
          sub_1AE23C0EC();
          sub_1ADF5E938();
          sub_1AE23D46C();
          v32 = *(v30 + v31);
          v33 = v71[0];
          v34 = 0uLL;
          if (v32 != v71[0])
          {
            v35 = sub_1AE23D51C();
            v63 = *v36;
            v35(v71, 0);
            sub_1AE23D47C();
            v34 = v63;
          }

          *v25 = v34;
          *(v25 + 16) = v32 == v33;
          v19 = v68;
          v20 = v66;
          LOBYTE(v21) = v69;
          v28 = v70;
        }

LABEL_29:
        *v28 = v29 ^ 1;
        result = sub_1AE23C0CC();
        if (v21)
        {
          break;
        }

        v21 = 0;
        if (result)
        {
          v21 = sub_1AE23C0CC();
          v55 = v61;
          if (v21)
          {
            v55 = v26;
          }

          v61 = v55;
        }
      }

      if ((result & 1) == 0)
      {
        break;
      }

      result = sub_1AE23C0CC();
      v21 = 1;
    }

    while ((result & 1) != 0);
    v56 = v26 - v61;
    if (!__OFSUB__(v26, v61))
    {
      v57 = __OFADD__(v59, v56);
      v59 += v56;
      if (!v57)
      {
        continue;
      }

      __break(1u);
LABEL_40:
      sub_1ADF5E8DC(v19);
      return v59;
    }

    break;
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for IndexSetBoundaryIterator(uint64_t a1)
{
  result = qword_1ED966550;
  if (!qword_1ED966550)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1ADF5E8DC(uint64_t a1)
{
  v2 = type metadata accessor for IndexSetBoundaryIterator(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1ADF5E938()
{
  result = qword_1ED96A708;
  if (!qword_1ED96A708)
  {
    sub_1AE23C0EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED96A708);
  }

  return result;
}

unint64_t sub_1ADF5E990()
{
  result = qword_1EB5B8C10;
  if (!qword_1EB5B8C10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB5BA250, &unk_1AE251E30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5B8C10);
  }

  return result;
}

uint64_t sub_1ADF5EB00(uint64_t a1)
{
  v21 = sub_1AE23BFCC();
  LOWORD(v22) = v1;
  BYTE2(v22) = v2;
  BYTE3(v22) = v3;
  BYTE4(v22) = v4;
  BYTE5(v22) = v5;
  BYTE6(v22) = v6;
  HIBYTE(v22) = v7;
  v19 = sub_1AE23BFCC();
  LOWORD(v20) = v8;
  BYTE2(v20) = v9;
  BYTE3(v20) = v10;
  BYTE4(v20) = v11;
  BYTE5(v20) = v12;
  BYTE6(v20) = v13;
  HIBYTE(v20) = v14;
  v15 = bswap64(v21);
  v16 = bswap64(v19);
  if (v15 == v16 && (v15 = bswap64(v22), v16 = bswap64(v20), v15 == v16))
  {
    v17 = 0;
  }

  else if (v15 < v16)
  {
    v17 = -1;
  }

  else
  {
    v17 = 1;
  }

  return v17 >> 31;
}

uint64_t sub_1ADF5EC9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = sub_1AE23CC1C();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  sub_1AE23D5CC();
  result = sub_1AE23CC0C();
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

void sub_1ADF5ED90(uint64_t a1)
{
  sub_1ADF5EE20(319);
  if (v1 <= 0x3F)
  {
    sub_1ADF5EE84(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1ADF5EE20(uint64_t a1)
{
  if (!qword_1ED9664A8)
  {
    sub_1AE23C0EC();
    sub_1ADF5E938();
    v1 = sub_1AE23DBBC();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED9664A8);
    }
  }
}

void sub_1ADF5EE84(uint64_t a1)
{
  if (!qword_1EB5B8C00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB5BB4D0, qword_1AE24CCE0);
    v1 = sub_1AE23D7CC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB5B8C00);
    }
  }
}

uint64_t (*sub_1ADF5EEE8(uint64_t *a1, uint64_t a2))()
{
  v4 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = *(*(type metadata accessor for Replica(0) - 8) + 64);
  if (v4)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v6[4] = v8;
  sub_1ADDDE3A0(a2, v8, type metadata accessor for Replica);
  v6[5] = sub_1ADF71C9C(v6, v9);
  return sub_1ADDFDDC4;
}

void (*sub_1ADF5EFC4(uint64_t **a1, uint64_t a2, uint64_t a3))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_1ADF71D98(v6, a2, a3);
  return sub_1ADF771D4;
}

void (*sub_1ADF5F04C(uint64_t **a1, uint64_t a2, uint64_t a3))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_1ADF71E44(v6, a2, a3);
  return sub_1ADF771D4;
}

uint64_t (*sub_1ADF5F0D4(uint64_t *a1))()
{
  v2 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = sub_1AE23BDDC();
  v4[4] = v5;
  v6 = *(v5 - 8);
  v7 = v6;
  v4[5] = v6;
  if (v2)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v6 + 64));
  }

  v9 = v8;
  v4[6] = v8;
  (*(v7 + 16))();
  v4[7] = sub_1ADF71EF0(v4, v9);
  return sub_1ADF5F1EC;
}

void sub_1ADF5F1EC(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  (*(*a1 + 56))(*a1, 0);
  (*(v4 + 8))(v2, v3);
  free(v2);

  free(v1);
}

void (*sub_1ADF5F264(uint64_t **a1, uint64_t a2, uint64_t a3))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_1ADF720C4(v6, a2, a3);
  return sub_1ADF5F2EC;
}

void (*sub_1ADF5F2F0(uint64_t **a1, uint64_t a2, uint64_t a3))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_1ADF72174(v6, a2, a3);
  return sub_1ADF771D4;
}

uint64_t sub_1ADF5F378(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1ADDFF050(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v12 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1ADF71A24(&qword_1EB5BA0C8, &qword_1AE2418A8);
    v7 = v12;
  }

  v8 = *(v7 + 48);
  v9 = sub_1AE23BDDC();
  (*(*(v9 - 8) + 8))(v8 + *(*(v9 - 8) + 72) * v5, v9);
  v10 = *(*(v7 + 56) + 8 * v5);
  sub_1ADF6E274(v5, v7);
  *v2 = v7;
  return v10;
}

void CRVersion.init()(void *a1@<X8>)
{
  v1 = MEMORY[0x1E69E7CC8];
  *a1 = MEMORY[0x1E69E7CC8];
  a1[1] = v1;
}

void CRVersion.hasDelta(from:)(uint64_t *a1, __n128 a2)
{
  v3 = *a1;
  v4 = *v2;
  sub_1ADF637A8(v2[1], a1[1]);
  if ((v5 & 1) == 0)
  {

    sub_1ADF637A8(v4, v3);
  }
}

uint64_t sub_1ADF5F4C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AE23C12C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v23 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v23 - v12;
  v14 = type metadata accessor for Replica(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1ADDDE3A0(a1, v16, type metadata accessor for Replica);
  v17 = sub_1ADF5EEE8(v25, v16);
  v19 = v18;
  if ((*(v5 + 48))(v18, 1, v4))
  {
    (v17)(v25, 0);
  }

  else
  {
    v24 = v17;
    v20 = a2;
    v21 = *(v5 + 16);
    v21(v10, v19, v4);
    v21(v7, v20, v4);
    sub_1ADDDF604(&qword_1ED96A278, MEMORY[0x1E6969B50], MEMORY[0x1E6969B90]);
    sub_1AE23D8AC();
    sub_1AE23D89C();
    (*(v5 + 8))(v13, v4);
    (v24)(v25, 0);
  }

  return sub_1ADDE4FF8(v16, type metadata accessor for Replica);
}

void sub_1ADF5F770(int64_t isUniquelyReferenced_nonNull_native@<X0>, _BYTE *a2@<X8>)
{
  v119 = a2;
  v3 = sub_1AE23C12C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v122 = &v117 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v145 = &v117 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v146 = &v117 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v144 = &v117 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v117 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v130 = &v117 - v16;
  v118 = type metadata accessor for Replica(0);
  v136 = *(v118 - 8);
  MEMORY[0x1EEE9AC00](v118);
  v123 = &v117 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v132 = &v117 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v117 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v129 = &v117 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA458, &qword_1AE251E00);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v27 = &v117 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v135 = &v117 - v29;
  if (qword_1ED9670C0 != -1)
  {
    goto LABEL_111;
  }

  while (1)
  {
    v30 = word_1ED96F220;
    v31 = HIBYTE(word_1ED96F220);
    v32 = *(isUniquelyReferenced_nonNull_native + 64);
    v127 = isUniquelyReferenced_nonNull_native + 64;
    v33 = 1 << *(isUniquelyReferenced_nonNull_native + 32);
    v34 = v33 < 64 ? ~(-1 << v33) : -1;
    v35 = v34 & v32;
    v125 = byte_1ED96F222;
    v151 = byte_1ED96F222;
    v36 = isUniquelyReferenced_nonNull_native;
    isUniquelyReferenced_nonNull_native = (v33 + 63) >> 6;
    v141 = (v4 + 2);
    v149 = (v4 + 4);
    v128 = (v4 + 5);
    v140 = v4;
    v133 = (v4 + 1);
    v131 = v36;

    v37 = 0;
    v120 = v31;
    v126 = v31;
    v121 = v30;
    v38 = v30;
    v138 = v27;
    v139 = v22;
    v134 = isUniquelyReferenced_nonNull_native;
    v147 = v14;
LABEL_6:
    v124 = v38;
    v39 = v37;
    if (v35)
    {
      break;
    }

LABEL_8:
    if (isUniquelyReferenced_nonNull_native <= v39 + 1)
    {
      v41 = v39 + 1;
    }

    else
    {
      v41 = isUniquelyReferenced_nonNull_native;
    }

    v37 = v41 - 1;
    v14 = &unk_1AE242200;
    while (1)
    {
      v40 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        break;
      }

      if (v40 >= isUniquelyReferenced_nonNull_native)
      {
        v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
        (*(*(v81 - 8) + 56))(v27, 1, 1, v81);
        v35 = 0;
        goto LABEL_17;
      }

      v35 = *(v127 + 8 * v40);
      ++v39;
      if (v35)
      {
        v4 = v3;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_108:
    __break(1u);
LABEL_109:
    __break(1u);
LABEL_110:
    __break(1u);
LABEL_111:
    swift_once();
  }

  while (1)
  {
    v4 = v3;
    v40 = v39;
LABEL_16:
    v42 = __clz(__rbit64(v35));
    v35 &= v35 - 1;
    v43 = v42 | (v40 << 6);
    v44 = v131;
    v45 = v129;
    sub_1ADDDE3A0(*(v131 + 48) + *(v136 + 72) * v43, v129, type metadata accessor for Replica);
    v46 = v140;
    v47 = v130;
    (v140[2])(v130, *(v44 + 56) + v140[9] * v43, v4);
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
    v49 = *(v48 + 48);
    v50 = v45;
    v27 = v138;
    sub_1ADDDE540(v50, v138, type metadata accessor for Replica);
    v51 = v46[4];
    v3 = v4;
    v51(&v27[v49], v47, v4);
    (*(*(v48 - 8) + 56))(v27, 0, 1, v48);
    v37 = v40;
    v22 = v139;
LABEL_17:
    v52 = v135;
    sub_1ADDD2198(v27, v135, &qword_1EB5BA458, &qword_1AE251E00);
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
    if ((*(*(v53 - 8) + 48))(v52, 1, v53) == 1)
    {

      v115 = v151;
      v116 = v119;
      *v119 = v121;
      v116[1] = v120;
      v116[2] = v115;
      return;
    }

    v54 = *(v53 + 48);
    sub_1ADDDE540(v52, v22, type metadata accessor for Replica);
    v14 = v147;
    v137 = *v149;
    v137(v147, v52 + v54, v3);
    v55 = *v148;
    if (!*(*v148 + 16))
    {
      break;
    }

    v56 = sub_1ADDD8A6C(v22);
    if ((v57 & 1) == 0)
    {
      break;
    }

    v143 = v37;
    v58 = v3;
    v3 = v140[9];
    v59 = v140[2];
    v4 = v148;
    v59(v144, *(v55 + 56) + v3 * v56, v58);
    v142 = sub_1AE23C04C();
    v60 = v146;
    sub_1AE23C06C();
    v27 = v132;
    sub_1ADDDE3A0(v22, v132, type metadata accessor for Replica);
    v61 = v60;
    v14 = v58;
    v59(v145, v61, v58);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = v4;
    v150 = *v4;
    v62 = v150;
    v64 = sub_1ADDD8A6C(v27);
    v65 = *(v62 + 16);
    v66 = (v63 & 1) == 0;
    v67 = v65 + v66;
    if (__OFADD__(v65, v66))
    {
      goto LABEL_108;
    }

    v68 = v63;
    if (*(v62 + 24) >= v67)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        isUniquelyReferenced_nonNull_native = v150;
        if (v63)
        {
          goto LABEL_28;
        }
      }

      else
      {
        sub_1ADDFB81C();
        isUniquelyReferenced_nonNull_native = v150;
        if (v68)
        {
          goto LABEL_28;
        }
      }
    }

    else
    {
      sub_1ADDDDED0(v67, isUniquelyReferenced_nonNull_native);
      v69 = sub_1ADDD8A6C(v27);
      if ((v68 & 1) != (v70 & 1))
      {
        goto LABEL_113;
      }

      v64 = v69;
      isUniquelyReferenced_nonNull_native = v150;
      if (v68)
      {
LABEL_28:
        v75 = *(isUniquelyReferenced_nonNull_native + 56) + v64 * v3;
        v3 = v14;
        (*v128)(v75, v145, v14);
        sub_1ADDE4FF8(v27, type metadata accessor for Replica);
        goto LABEL_29;
      }
    }

    *(isUniquelyReferenced_nonNull_native + 8 * (v64 >> 6) + 64) |= 1 << v64;
    sub_1ADDDE3A0(v27, *(isUniquelyReferenced_nonNull_native + 48) + *(v136 + 72) * v64, type metadata accessor for Replica);
    v71 = *(isUniquelyReferenced_nonNull_native + 56) + v64 * v3;
    v3 = v14;
    v137(v71, v145, v14);
    sub_1ADDE4FF8(v27, type metadata accessor for Replica);
    v72 = *(isUniquelyReferenced_nonNull_native + 16);
    v73 = __OFADD__(v72, 1);
    v74 = v72 + 1;
    if (v73)
    {
      goto LABEL_109;
    }

    *(isUniquelyReferenced_nonNull_native + 16) = v74;
LABEL_29:
    *v4 = isUniquelyReferenced_nonNull_native;
    v76 = v146;
    v77 = sub_1AE23C04C();
    v78 = v142;
    v37 = v143;
    v27 = v138;
    if (v142 != v77)
    {
      if (qword_1EB5B9528 != -1)
      {
        swift_once();
      }

      v93 = word_1EB5D74C0;
      v94 = HIBYTE(word_1EB5D74C0);
      v95 = byte_1EB5D74C2;
      v96 = *v133;
      (*v133)(v146, v3);
      v96(v144, v3);
      v96(v147, v3);
      v22 = v139;
      goto LABEL_80;
    }

    v79 = v147;
    if (sub_1AE23C04C() < v78)
    {
      v22 = v139;
      if (qword_1EB5B9908 != -1)
      {
        swift_once();
      }

      v97 = word_1EB5D7508;
      LODWORD(v142) = HIBYTE(word_1EB5D7508);
      v98 = byte_1EB5D750A;
      v99 = *v133;
      (*v133)(v146, v3);
      v99(v144, v3);
      v99(v147, v3);
      sub_1ADDE4FF8(v22, type metadata accessor for Replica);
      v38 = v124;
      if (v124 == v97)
      {
        v100 = v125;
        v101 = v126;
      }

      else
      {
        v100 = v125;
        v101 = v126;
        if (v97)
        {
          v102 = v142;
          if (v124 > 1)
          {
            if (v124 == 2)
            {
              v103 = v97 == 1;
LABEL_57:
              if (v103)
              {
                v38 = 3;
              }

              else
              {
                v38 = v97;
              }

              v121 = v38;
            }
          }

          else
          {
            v121 = v97;
            v38 = v97;
            if (v124)
            {
              v103 = v97 == 2;
              goto LABEL_57;
            }
          }

LABEL_61:
          if (v101 == v102 || !v102)
          {
            v104 = v101;
          }

          else if (v101 > 1)
          {
            v104 = v101;
            if (v101 == 2)
            {
              v105 = v102 == 1;
LABEL_69:
              if (v105)
              {
                v104 = 3;
              }

              else
              {
                v104 = v102;
              }

              v120 = v104;
            }
          }

          else
          {
            v120 = v102;
            v104 = v102;
            if (v101)
            {
              v105 = v102 == 2;
              goto LABEL_69;
            }
          }

          v106 = v100 | v98;
LABEL_105:
          v125 = v106;
          v151 = v106 & 1;
          v126 = v104;
          isUniquelyReferenced_nonNull_native = v134;
          goto LABEL_6;
        }
      }

      v102 = v142;
      goto LABEL_61;
    }

    v80 = *v133;
    (*v133)(v76, v3);
    v80(v144, v3);
    v80(v79, v3);
    v22 = v139;
    sub_1ADDE4FF8(v139, type metadata accessor for Replica);
    v39 = v37;
    isUniquelyReferenced_nonNull_native = v134;
    if (!v35)
    {
      goto LABEL_8;
    }
  }

  v82 = v123;
  sub_1ADDDE3A0(v22, v123, type metadata accessor for Replica);
  (*v141)(v122, v14, v3);
  v83 = v148;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v84 = *v83;
  v150 = v84;
  v85 = sub_1ADDD8A6C(v82);
  v87 = *(v84 + 16);
  v88 = (v86 & 1) == 0;
  v73 = __OFADD__(v87, v88);
  v89 = v87 + v88;
  if (v73)
  {
    goto LABEL_110;
  }

  v90 = v86;
  if (*(v84 + 24) >= v89)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v107 = v85;
      sub_1ADDFB81C();
      v85 = v107;
      v92 = v150;
      if (v90)
      {
        goto LABEL_42;
      }

      goto LABEL_75;
    }

LABEL_41:
    v92 = v150;
    if (v90)
    {
LABEL_42:
      (v140[5])(v92[7] + v140[9] * v85, v122, v3);
      sub_1ADDE4FF8(v123, type metadata accessor for Replica);
LABEL_77:
      *v148 = v92;
      if (qword_1EB5B9910 != -1)
      {
        swift_once();
      }

      v93 = word_1EB5D750B;
      v94 = HIBYTE(word_1EB5D750B);
      v95 = byte_1EB5D750D;
      (*v133)(v14, v3);
LABEL_80:
      sub_1ADDE4FF8(v22, type metadata accessor for Replica);
      v38 = v124;
      if (v124 == v93)
      {
        v112 = v125;
        goto LABEL_92;
      }

      v112 = v125;
      if (v93)
      {
        if (v124 > 1)
        {
          if (v124 != 2)
          {
            goto LABEL_92;
          }

          v113 = v93 == 1;
        }

        else
        {
          v121 = v93;
          v38 = v93;
          if (!v124)
          {
            goto LABEL_92;
          }

          v113 = v93 == 2;
        }

        if (v113)
        {
          v38 = 3;
        }

        else
        {
          v38 = v93;
        }

        v121 = v38;
      }

LABEL_92:
      if (v126 == v94 || !v94)
      {
        v104 = v126;
      }

      else if (v126 > 1)
      {
        v104 = v126;
        if (v126 == 2)
        {
          v114 = v94 == 1;
          goto LABEL_100;
        }
      }

      else
      {
        v120 = v94;
        v104 = v94;
        if (v126)
        {
          v114 = v94 == 2;
LABEL_100:
          if (v114)
          {
            v104 = 3;
          }

          else
          {
            v104 = v94;
          }

          v120 = v104;
        }
      }

      v106 = v112 | v95;
      goto LABEL_105;
    }

LABEL_75:
    v92[(v85 >> 6) + 8] |= 1 << v85;
    v108 = v85;
    v109 = v123;
    sub_1ADDDE3A0(v123, v92[6] + *(v136 + 72) * v85, type metadata accessor for Replica);
    v137((v92[7] + v140[9] * v108), v122, v3);
    sub_1ADDE4FF8(v109, type metadata accessor for Replica);
    v110 = v92[2];
    v73 = __OFADD__(v110, 1);
    v111 = v110 + 1;
    if (v73)
    {
      __break(1u);
      goto LABEL_113;
    }

    v92[2] = v111;
    goto LABEL_77;
  }

  sub_1ADDDDED0(v89, isUniquelyReferenced_nonNull_native);
  v85 = sub_1ADDD8A6C(v123);
  if ((v90 & 1) == (v91 & 1))
  {
    goto LABEL_41;
  }

LABEL_113:
  sub_1AE23E27C();
  __break(1u);
}

uint64_t sub_1ADF60694(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v290 = a2;
  v264 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB780, &qword_1AE24CD18);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v271 = &v244 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v247 = &v244 - v8;
  v293 = sub_1AE23C12C();
  v9 = *(v293 - 8);
  MEMORY[0x1EEE9AC00](v293);
  v255 = &v244 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v260 = &v244 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v244 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v287 = &v244 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v253 = &v244 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v254 = &v244 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v245 = &v244 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v262 = &v244 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v263 = &v244 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v261 = &v244 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v251 = &v244 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v246 = &v244 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v248 = &v244 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v265 = &v244 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v258 = &v244 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v285 = &v244 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v286 = &v244 - v43;
  v244 = type metadata accessor for Replica(0);
  v283 = *(v244 - 8);
  MEMORY[0x1EEE9AC00](v244);
  v257 = &v244 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v276 = &v244 - v46;
  MEMORY[0x1EEE9AC00](v47);
  v256 = &v244 - v48;
  MEMORY[0x1EEE9AC00](v49);
  v51 = &v244 - v50;
  MEMORY[0x1EEE9AC00](v52);
  v282 = &v244 - v53;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA458, &qword_1AE251E00);
  MEMORY[0x1EEE9AC00](v54 - 8);
  v280 = &v244 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v56);
  v273 = &v244 - v57;
  MEMORY[0x1EEE9AC00](v58);
  v60 = &v244 - v59;
  MEMORY[0x1EEE9AC00](v61);
  v270 = &v244 - v62;
  v266 = v3;
  v63 = *v3 + 64;
  v64 = 1 << *(*v3 + 32);
  v65 = -1;
  if (v64 < 64)
  {
    v65 = ~(-1 << v64);
  }

  v66 = v65 & *(*v3 + 64);
  v67 = (v64 + 63) >> 6;
  v291 = (v9 + 16);
  v292 = (v9 + 32);
  v288 = (v9 + 8);
  v272 = (v9 + 56);
  v289 = v9;
  v250 = (v9 + 40);

  v69 = v67;
  LODWORD(v277) = 0;
  v279 = 0;
  v259 = 0;
  v70 = 0;
  v268 = v68;
  v281 = v68;
  v278 = v15;
  v267 = a3;
  v269 = v51;
  v284 = v60;
  v274 = v67;
  v275 = v63;
LABEL_4:
  v71 = v270;
  while (1)
  {
    if (v66)
    {
      v72 = v70;
      goto LABEL_16;
    }

    v73 = v69 <= v70 + 1 ? v70 + 1 : v69;
    v74 = v73 - 1;
    do
    {
      v72 = v70 + 1;
      if (__OFADD__(v70, 1))
      {
        __break(1u);
LABEL_103:
        __break(1u);
LABEL_104:
        __break(1u);
LABEL_105:
        __break(1u);
LABEL_106:
        __break(1u);
LABEL_107:
        __break(1u);
LABEL_108:
        result = sub_1AE23E27C();
        __break(1u);
        return result;
      }

      if (v72 >= v69)
      {
        v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
        (*(*(v100 - 8) + 56))(v60, 1, 1, v100);
        v66 = 0;
        v70 = v74;
        goto LABEL_17;
      }

      v66 = *(v63 + 8 * v72);
      ++v70;
    }

    while (!v66);
    v70 = v72;
LABEL_16:
    v75 = __clz(__rbit64(v66));
    v66 &= v66 - 1;
    v76 = v75 | (v72 << 6);
    v77 = v268;
    v78 = v282;
    sub_1ADDDE3A0(*(v268 + 6) + *(v283 + 72) * v76, v282, type metadata accessor for Replica);
    v79 = v289;
    v80 = v286;
    v81 = v293;
    (*(v289 + 16))(v286, *(v77 + 7) + *(v289 + 72) * v76, v293);
    v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
    v83 = *(v82 + 48);
    v84 = v78;
    v85 = v284;
    sub_1ADDDE540(v84, v284, type metadata accessor for Replica);
    v86 = v80;
    v60 = v85;
    (*(v79 + 32))(&v85[v83], v86, v81);
    (*(*(v82 - 8) + 56))(v85, 0, 1, v82);
    a3 = v267;
    v51 = v269;
    v71 = v270;
LABEL_17:
    sub_1ADDD2198(v60, v71, &qword_1EB5BA458, &qword_1AE251E00);
    v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
    v88 = *(v87 - 8);
    v89 = *(v88 + 48);
    if (v89(v71, 1, v87) == 1)
    {
      break;
    }

    v90 = *(v87 + 48);
    sub_1ADDDE540(v71, v51, type metadata accessor for Replica);
    v91 = *v292;
    (*v292)(v285, v71 + v90, v293);
    v63 = v275;
    if (*(v290 + 16))
    {
      v92 = sub_1ADDD8A6C(v51);
      if (v93)
      {
        v94 = *(v289 + 72);
        v95 = *(v289 + 16);
        v95(v265, *(v290 + 56) + v94 * v92, v293);
        if (!*(a3 + 16) || (v96 = sub_1ADDD8A6C(v51), (v97 & 1) == 0))
        {
          (*v288)(v265, v293);
          goto LABEL_23;
        }

        v110 = v248;
        v111 = v293;
        v95(v248, *(a3 + 56) + v96 * v94, v293);
        v95(v286, v110, v111);
        v95(v263, v110, v111);
        v95(v262, v265, v111);
        v112 = sub_1ADDDF604(&qword_1ED96A278, MEMORY[0x1E6969B50], MEMORY[0x1E6969B90]);
        v113 = v261;
        v249 = v112;
        sub_1AE23D8AC();
        v114 = v286;
        sub_1AE23D88C();
        v252 = *v288;
        v252(v113, v111);
        v115 = v114;
        v116 = v285;
        v95(v115, v285, v111);
        v95(v263, v116, v111);
        v95(v262, v251, v111);
        sub_1AE23D8AC();
        sub_1AE23D88C();
        v117 = v111;
        v51 = v269;
        v252(v113, v117);
        v118 = v264;
        if (*(v264 + 16) && (v119 = sub_1ADDD8A6C(v51), (v120 & 1) != 0))
        {
          v121 = v245;
          v122 = v293;
          v95(v245, *(v118 + 56) + v119 * v94, v293);
          v123 = v265;
          v95(v286, v265, v122);
          v95(v263, v123, v122);
          v95(v262, v121, v122);
          v124 = v261;
          sub_1AE23D8AC();
          sub_1AE23D88C();
          v125 = v124;
          v126 = v246;
          v127 = v252;
          v252(v125, v122);
          v128 = v122;
          v51 = v269;
          v127(v245, v128);
        }

        else
        {
          v126 = v246;
          (v95)(v246);
        }

        if (v277)
        {
          LODWORD(v277) = 1;
        }

        else if (sub_1AE23C0AC())
        {
          LODWORD(v277) = 0;
        }

        else
        {
          LODWORD(v277) = sub_1AE23D8CC() ^ 1;
          v279 |= v277;
        }

        v249 = v94;
        v129 = v126;
        if ((sub_1AE23C0AC() & 1) == 0)
        {
          sub_1AE23C0FC();
          v259 = 1;
        }

        v130 = v293;
        v131 = v252;
        v252(v251, v293);
        v131(v129, v130);
        v131(v248, v130);
        v131(v265, v130);
        v108 = v258;
LABEL_39:
        v132 = v108;
        if (sub_1AE23C04C() < 1)
        {
          v147 = sub_1ADDD8A6C(v51);
          v148 = v249;
          if (v149)
          {
            v150 = v147;
            v151 = v266;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v153 = *v151;
            v294 = *v151;
            v154 = v247;
            if (!isUniquelyReferenced_nonNull_native)
            {
              sub_1ADDFB81C();
              v153 = v294;
            }

            sub_1ADDE4FF8(*(v153 + 48) + *(v283 + 72) * v150, type metadata accessor for Replica);
            v155 = v293;
            v91(v154, *(v153 + 56) + v148 * v150, v293);
            sub_1ADDF9CEC(v150, v153);
            v156 = v154;
            v157 = v252;
            v252(v258, v155);
            v157(v285, v155);
            v51 = v269;
            sub_1ADDE4FF8(v269, type metadata accessor for Replica);
            v158 = 0;
            v281 = v153;
            *v266 = v153;
          }

          else
          {
            v168 = v108;
            v169 = v293;
            v170 = v252;
            v252(v168, v293);
            v170(v285, v169);
            sub_1ADDE4FF8(v51, type metadata accessor for Replica);
            v158 = 1;
            v156 = v247;
          }

          (*v272)(v156, v158, 1, v293);
          sub_1ADDCEDE0(v156, &qword_1EB5BB780, &qword_1AE24CD18);
          goto LABEL_57;
        }

        v133 = v51;
        v134 = v256;
        sub_1ADDDE3A0(v133, v256, type metadata accessor for Replica);
        v95(v253, v108, v293);
        v135 = v266;
        v136 = swift_isUniquelyReferenced_nonNull_native();
        v137 = *v135;
        v294 = v137;
        v138 = sub_1ADDD8A6C(v134);
        v140 = v137[2];
        v141 = (v139 & 1) == 0;
        v142 = __OFADD__(v140, v141);
        v143 = v140 + v141;
        v144 = v249;
        if (v142)
        {
          goto LABEL_105;
        }

        v145 = v139;
        if (v137[3] >= v143)
        {
          if ((v136 & 1) == 0)
          {
            v171 = v138;
            sub_1ADDFB81C();
            v138 = v171;
          }
        }

        else
        {
          sub_1ADDDDED0(v143, v136);
          v138 = sub_1ADDD8A6C(v256);
          if ((v145 & 1) != (v146 & 1))
          {
            goto LABEL_108;
          }
        }

        v159 = v294;
        v281 = v294;
        if (v145)
        {
          v160 = v293;
          (*v250)(v294[7] + v144 * v138, v253, v293);
          sub_1ADDE4FF8(v256, type metadata accessor for Replica);
          v161 = v252;
          v252(v132, v160);
          v161(v285, v160);
          v51 = v269;
          sub_1ADDE4FF8(v269, type metadata accessor for Replica);
          goto LABEL_54;
        }

        v294[(v138 >> 6) + 8] |= 1 << v138;
        v162 = v138;
        v163 = v256;
        sub_1ADDDE3A0(v256, v159[6] + *(v283 + 72) * v138, type metadata accessor for Replica);
        v164 = v293;
        v91((v159[7] + v144 * v162), v253, v293);
        sub_1ADDE4FF8(v163, type metadata accessor for Replica);
        v165 = v252;
        v252(v258, v164);
        v165(v285, v164);
        v51 = v269;
        sub_1ADDE4FF8(v269, type metadata accessor for Replica);
        v166 = v159[2];
        v142 = __OFADD__(v166, 1);
        v167 = v166 + 1;
        if (v142)
        {
          goto LABEL_107;
        }

        v159[2] = v167;
LABEL_54:
        *v266 = v159;
LABEL_57:
        a3 = v267;
        v60 = v284;
        v69 = v274;
        goto LABEL_4;
      }
    }

LABEL_23:
    if (*(a3 + 16))
    {
      v98 = sub_1ADDD8A6C(v51);
      if (v99)
      {
        v101 = *(a3 + 56);
        v249 = *(v289 + 72);
        v95 = *(v289 + 16);
        v102 = v254;
        v103 = v293;
        v95(v254, v101 + v249 * v98, v293);
        v104 = v285;
        v95(v286, v285, v103);
        v95(v263, v104, v103);
        v95(v262, v102, v103);
        sub_1ADDDF604(&qword_1ED96A278, MEMORY[0x1E6969B50], MEMORY[0x1E6969B90]);
        v105 = v261;
        sub_1AE23D8AC();
        v106 = v258;
        sub_1AE23D88C();
        v107 = *(v289 + 8);
        v108 = v106;
        v107(v105, v103);
        LODWORD(v105) = sub_1AE23C0AC();
        v109 = v103;
        v51 = v269;
        v252 = v107;
        v107(v254, v109);
        LODWORD(v277) = v105 ^ 1 | v277;
        v279 |= v105 ^ 1;
        goto LABEL_39;
      }
    }

    (*v288)(v285, v293);
    sub_1ADDE4FF8(v51, type metadata accessor for Replica);
    LODWORD(v277) = 1;
    v279 = 1;
    v60 = v284;
    v69 = v274;
  }

  v285 = v89;

  v172 = *(v290 + 64);
  v274 = v290 + 64;
  v173 = 1 << *(v290 + 32);
  v174 = -1;
  if (v173 < 64)
  {
    v174 = ~(-1 << v173);
  }

  v175 = v174 & v172;
  v176 = (v173 + 63) >> 6;
  v284 = (v88 + 56);

  v177 = 0;
  v178 = v276;
  v179 = v281;
  v270 = v176;
LABEL_61:
  v281 = v179;
  if (!v175)
  {
LABEL_64:
    if (v176 <= v177 + 1)
    {
      v184 = v177 + 1;
    }

    else
    {
      v184 = v176;
    }

    v185 = v184 - 1;
    v186 = v280;
    while (1)
    {
      v187 = v177 + 1;
      if (__OFADD__(v177, 1))
      {
        goto LABEL_103;
      }

      if (v187 >= v176)
      {
        break;
      }

      v175 = *(v274 + 8 * v187);
      ++v177;
      if (v175)
      {
        goto LABEL_74;
      }
    }

    v175 = 0;
    v188 = 1;
    goto LABEL_75;
  }

  while (1)
  {
    v187 = v177;
LABEL_74:
    v189 = __clz(__rbit64(v175));
    v175 &= v175 - 1;
    v190 = v189 | (v187 << 6);
    v191 = v290;
    v192 = v282;
    sub_1ADDDE3A0(*(v290 + 48) + *(v283 + 72) * v190, v282, type metadata accessor for Replica);
    v193 = *(v191 + 56);
    v194 = v289;
    v195 = v286;
    v196 = v293;
    (*(v289 + 16))(v286, v193 + *(v289 + 72) * v190, v293);
    v197 = *(v87 + 48);
    v198 = v192;
    v186 = v280;
    sub_1ADDDE540(v198, v280, type metadata accessor for Replica);
    (*(v194 + 32))(v186 + v197, v195, v196);
    v188 = 0;
    v185 = v187;
    v178 = v276;
    v179 = v281;
LABEL_75:
    (*v284)(v186, v188, 1, v87);
    v199 = v273;
    sub_1ADDD2198(v186, v273, &qword_1EB5BA458, &qword_1AE251E00);
    if ((v285)(v199, 1, v87) == 1)
    {
      break;
    }

    v200 = *(v87 + 48);
    sub_1ADDDE540(v199, v178, type metadata accessor for Replica);
    v201 = *v292;
    (*v292)(v287, v199 + v200, v293);
    if (*(v179 + 2))
    {
      v202 = sub_1ADDD8A6C(v178);
      if (v203)
      {
        v180 = v289;
        v181 = v271;
        v182 = v185;
        v183 = v293;
        (*(v289 + 16))(v271, *(v179 + 7) + *(v289 + 72) * v202, v293);
        (*(v180 + 56))(v181, 0, 1, v183);
        (*(v180 + 8))(v287, v183);
        sub_1ADDE4FF8(v178, type metadata accessor for Replica);
        sub_1ADDCEDE0(v181, &qword_1EB5BB780, &qword_1AE24CD18);
        v177 = v182;
        if (!v175)
        {
          goto LABEL_64;
        }

        continue;
      }
    }

    v277 = v201;
    v204 = v271;
    (*v272)(v271, 1, 1, v293);
    sub_1ADDCEDE0(v204, &qword_1EB5BB780, &qword_1AE24CD18);
    v205 = v278;
    if (*(v264 + 16))
    {
      sub_1ADDD8A6C(v178);
      v206 = *v291;
      if (v207)
      {
        v275 = v185;
        v208 = v293;
        v209 = v260;
        v206(v260);
        v210 = v287;
        (v206)(v286, v287, v208);
        (v206)(v263, v210, v208);
        (v206)(v262, v209, v208);
        sub_1ADDDF604(&qword_1ED96A278, MEMORY[0x1E6969B50], MEMORY[0x1E6969B90]);
        v211 = v261;
        v178 = v276;
        sub_1AE23D8AC();
        sub_1AE23D88C();
        v212 = *(v289 + 8);
        v212(v211, v208);
        v213 = v209;
        v176 = v270;
        v205 = v278;
        v214 = v208;
        v185 = v275;
        v212(v213, v214);
        v215 = v266;
        goto LABEL_83;
      }
    }

    else
    {
      v206 = *v291;
    }

    v215 = v266;
    (v206)(v205, v287, v293);
LABEL_83:
    if ((sub_1AE23C0AC() & 1) == 0)
    {
      v218 = v178;
      v219 = v257;
      sub_1ADDDE3A0(v218, v257, type metadata accessor for Replica);
      (v206)(v255, v205, v293);
      v220 = swift_isUniquelyReferenced_nonNull_native();
      v294 = *v215;
      v221 = v294;
      v223 = sub_1ADDD8A6C(v219);
      v224 = v221[2];
      v225 = (v222 & 1) == 0;
      v226 = v224 + v225;
      if (__OFADD__(v224, v225))
      {
        goto LABEL_104;
      }

      if (v221[3] >= v226)
      {
        v178 = v276;
        if ((v220 & 1) == 0)
        {
          v228 = v222;
          sub_1ADDFB81C();
          goto LABEL_90;
        }
      }

      else
      {
        v227 = v220;
        v228 = v222;
        sub_1ADDDDED0(v226, v227);
        v229 = sub_1ADDD8A6C(v257);
        v178 = v276;
        if ((v228 & 1) != (v230 & 1))
        {
          goto LABEL_108;
        }

        v223 = v229;
LABEL_90:
        v222 = v228;
      }

      v275 = v185;
      v231 = v294;
      if (v222)
      {
        v232 = v289;
        v233 = v293;
        (*(v289 + 40))(v294[7] + *(v289 + 72) * v223, v255, v293);
        v281 = type metadata accessor for Replica;
        sub_1ADDE4FF8(v257, type metadata accessor for Replica);
        v234 = *(v232 + 8);
        v234(v205, v233);
        v234(v287, v233);
        v179 = v231;
        sub_1ADDE4FF8(v178, v281);
      }

      else
      {
        v294[(v223 >> 6) + 8] |= 1 << v223;
        v235 = *(v231 + 6) + *(v283 + 72) * v223;
        v281 = v231;
        v236 = v257;
        sub_1ADDDE3A0(v257, v235, type metadata accessor for Replica);
        v237 = v289;
        v238 = v293;
        v277((*(v281 + 7) + *(v289 + 72) * v223), v255, v293);
        sub_1ADDE4FF8(v236, type metadata accessor for Replica);
        v239 = *(v237 + 8);
        v239(v278, v238);
        v239(v287, v238);
        v179 = v281;
        sub_1ADDE4FF8(v178, type metadata accessor for Replica);
        v240 = *(v179 + 2);
        v142 = __OFADD__(v240, 1);
        v241 = v240 + 1;
        if (v142)
        {
          goto LABEL_106;
        }

        *(v179 + 2) = v241;
      }

      *v266 = v179;
      v259 = 1;
      v177 = v275;
      goto LABEL_61;
    }

    v216 = *v288;
    v217 = v293;
    (*v288)(v205, v293);
    v216(v287, v217);
    sub_1ADDE4FF8(v178, type metadata accessor for Replica);
    v177 = v185;
    v179 = v281;
    if (!v175)
    {
      goto LABEL_64;
    }
  }

  if (v279)
  {
    v242 = 256;
  }

  else
  {
    v242 = 0;
  }

  return v242 & 0xFFFFFFFE | v259 & 1;
}

double sub_1ADF62304@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v131 = *MEMORY[0x1E69E9840];
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB7C0, &unk_1AE2514A0);
  MEMORY[0x1EEE9AC00](v111);
  v122 = &v97 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA480, &qword_1AE25AAE0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v97 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v100 = &v97 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v116 = &v97 - v11;
  v12 = type metadata accessor for Timestamp(0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v97 = &v97 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v97 - v16;
  v126 = sub_1AE23C12C();
  v18 = *(v126 - 8);
  MEMORY[0x1EEE9AC00](v126);
  v123 = &v97 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v105 = &v97 - v21;
  v99 = type metadata accessor for Replica(0);
  v104 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99);
  v114 = &v97 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v103 = &v97 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA458, &qword_1AE251E00);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v113 = &v97 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v27);
  v30 = &v97 - v29;
  v32 = *(v13 + 56);
  v31 = v13 + 56;
  v125 = a2;
  v117 = v32;
  (v32)(a2, 1, 1, v12, v28);
  v33 = *(a1 + 64);
  v112 = a1 + 64;
  v34 = 1 << *(a1 + 32);
  v35 = -1;
  if (v34 < 64)
  {
    v35 = ~(-1 << v34);
  }

  v36 = v35 & v33;
  v98 = (v34 + 63) >> 6;
  v102 = v18 + 16;
  v121 = (v18 + 32);
  v118 = v31;
  v115 = (v31 - 8);
  v37 = v17;
  v106 = v18;
  v109 = (v18 + 8);
  v107 = a1;

  v38 = 0;
  v120 = v30;
  v101 = v7;
  v124 = v37;
  v110 = v12;
  v39 = v112;
  if (!v36)
  {
    goto LABEL_6;
  }

  while (1)
  {
    v44 = v38;
LABEL_16:
    v46 = __clz(__rbit64(v36));
    v36 &= v36 - 1;
    v47 = v46 | (v44 << 6);
    v48 = v107;
    v49 = v103;
    sub_1ADDDE3A0(*(v107 + 48) + *(v104 + 72) * v47, v103, type metadata accessor for Replica);
    v50 = v106;
    v51 = v105;
    v52 = v126;
    (*(v106 + 16))(v105, *(v48 + 56) + *(v106 + 72) * v47, v126);
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
    v54 = *(v53 + 48);
    v55 = v49;
    v43 = v113;
    sub_1ADDDE540(v55, v113, type metadata accessor for Replica);
    (*(v50 + 32))(v43 + v54, v51, v52);
    (*(*(v53 - 8) + 56))(v43, 0, 1, v53);
    v42 = v114;
    v30 = v120;
    v37 = v124;
LABEL_17:
    sub_1ADDD2198(v43, v30, &qword_1EB5BA458, &qword_1AE251E00);
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
    if ((*(*(v56 - 8) + 48))(v30, 1, v56) == 1)
    {
      break;
    }

    (*v121)(v123, &v30[*(v56 + 48)], v126);
    sub_1ADDDE540(v30, v42, type metadata accessor for Replica);
    v57 = sub_1AE23C03C();
    if (v58)
    {
      goto LABEL_51;
    }

    v59 = v57;
    sub_1ADDDE540(v42, v37, type metadata accessor for Replica);
    v60 = v110;
    v61 = *(v110 + 20);
    v119 = v59;
    *(v37 + v61) = v59;
    v62 = v116;
    v117(v116, 1, 1, v60);
    v63 = *(v111 + 48);
    v64 = v122;
    sub_1ADDCEE40(v125, v122, &qword_1EB5BA480, &qword_1AE25AAE0);
    sub_1ADDCEE40(v62, v64 + v63, &qword_1EB5BA480, &qword_1AE25AAE0);
    v65 = *v115;
    if ((*v115)(v64, 1, v60) == 1)
    {
      sub_1ADDCEDE0(v62, &qword_1EB5BA480, &qword_1AE25AAE0);
      v66 = v65;
      if (v65(v64 + v63, 1, v60) != 1)
      {
        goto LABEL_25;
      }

      sub_1ADDCEDE0(v122, &qword_1EB5BA480, &qword_1AE25AAE0);
      v30 = v120;
LABEL_22:
      (*v109)(v123, v126);
LABEL_41:
      v95 = v125;
      sub_1ADDCEDE0(v125, &qword_1EB5BA480, &qword_1AE25AAE0);
      v37 = v124;
      sub_1ADDDE540(v124, v95, type metadata accessor for Timestamp);
      v117(v95, 0, 1, v60);
      v39 = v112;
      if (!v36)
      {
LABEL_6:
        if (v98 <= v38 + 1)
        {
          v40 = v38 + 1;
        }

        else
        {
          v40 = v98;
        }

        v41 = v40 - 1;
        v43 = v113;
        v42 = v114;
        while (1)
        {
          v44 = v38 + 1;
          if (__OFADD__(v38, 1))
          {
            break;
          }

          if (v44 >= v98)
          {
            v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
            (*(*(v45 - 8) + 56))(v43, 1, 1, v45);
            v36 = 0;
            v38 = v41;
            goto LABEL_17;
          }

          v36 = *(v39 + 8 * v44);
          ++v38;
          if (v36)
          {
            v38 = v44;
            goto LABEL_16;
          }
        }

        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
      }
    }

    else
    {
      v67 = v100;
      sub_1ADDCEE40(v64, v100, &qword_1EB5BA480, &qword_1AE25AAE0);
      v108 = v65;
      if (v65(v64 + v63, 1, v60) == 1)
      {
        sub_1ADDCEDE0(v116, &qword_1EB5BA480, &qword_1AE25AAE0);
        sub_1ADDE4FF8(v67, type metadata accessor for Timestamp);
        v66 = v108;
LABEL_25:
        sub_1ADDCEDE0(v122, &qword_1EB5BB7C0, &unk_1AE2514A0);
        v68 = v101;
        v30 = v120;
        goto LABEL_31;
      }

      v69 = v97;
      sub_1ADDDE540(v64 + v63, v97, type metadata accessor for Timestamp);
      if (*(v67 + *(v60 + 20)) == *(v69 + *(v60 + 20)) && *(v67 + *(v99 + 20)) == *(v69 + *(v99 + 20)))
      {
        v70 = sub_1AE23BF8C();
        sub_1ADDE4FF8(v69, type metadata accessor for Timestamp);
        sub_1ADDCEDE0(v116, &qword_1EB5BA480, &qword_1AE25AAE0);
        sub_1ADDE4FF8(v67, type metadata accessor for Timestamp);
        sub_1ADDCEDE0(v122, &qword_1EB5BA480, &qword_1AE25AAE0);
        v68 = v101;
        v30 = v120;
        v66 = v108;
        if (v70)
        {
          goto LABEL_22;
        }
      }

      else
      {
        sub_1ADDE4FF8(v69, type metadata accessor for Timestamp);
        sub_1ADDCEDE0(v116, &qword_1EB5BA480, &qword_1AE25AAE0);
        sub_1ADDE4FF8(v67, type metadata accessor for Timestamp);
        sub_1ADDCEDE0(v122, &qword_1EB5BA480, &qword_1AE25AAE0);
        v68 = v101;
        v30 = v120;
        v66 = v108;
      }

LABEL_31:
      sub_1ADDCEE40(v125, v68, &qword_1EB5BA480, &qword_1AE25AAE0);
      if (v66(v68, 1, v60) == 1)
      {
        goto LABEL_52;
      }

      v71 = v60;
      v72 = *(v68 + *(v60 + 20));
      v73 = v119;
      if (v72 == v119)
      {
        v74 = *(v99 + 20);
        v75 = *(v68 + v74);
        v76 = *(v124 + v74);
        if (v75 == v76)
        {
          v129 = sub_1AE23BFCC();
          LOWORD(v130) = v77;
          BYTE2(v130) = v78;
          BYTE3(v130) = v79;
          BYTE4(v130) = v80;
          BYTE5(v130) = v81;
          BYTE6(v130) = v82;
          HIBYTE(v130) = v83;
          v127 = sub_1AE23BFCC();
          LOWORD(v128) = v84;
          BYTE2(v128) = v85;
          BYTE3(v128) = v86;
          BYTE4(v128) = v87;
          BYTE5(v128) = v88;
          BYTE6(v128) = v89;
          HIBYTE(v128) = v90;
          v91 = bswap64(v129);
          v92 = bswap64(v127);
          if (v91 == v92)
          {
            v91 = bswap64(v130);
            v92 = bswap64(v128);
            v60 = v71;
            if (v91 == v92)
            {
              v93 = 0;
              goto LABEL_47;
            }
          }

          else
          {
            v60 = v71;
          }

          if (v91 < v92)
          {
            v93 = -1;
          }

          else
          {
            v93 = 1;
          }

LABEL_47:
          (*v109)(v123, v126);
          sub_1ADDE4FF8(v68, type metadata accessor for Timestamp);
          if (v93 < 0)
          {
            goto LABEL_41;
          }

          goto LABEL_5;
        }

        (*v109)(v123, v126);
        sub_1ADDE4FF8(v68, type metadata accessor for Timestamp);
        v94 = v75 < v76;
      }

      else
      {
        (*v109)(v123, v126);
        sub_1ADDE4FF8(v68, type metadata accessor for Timestamp);
        v94 = v72 < v73;
      }

      v60 = v71;
      if (v94)
      {
        goto LABEL_41;
      }

LABEL_5:
      v37 = v124;
      sub_1ADDE4FF8(v124, type metadata accessor for Timestamp);
      v39 = v112;
      if (!v36)
      {
        goto LABEL_6;
      }
    }
  }

  return result;
}

void sub_1ADF63098(uint64_t a1, uint64_t a2)
{
  v73 = sub_1AE23C12C();
  v67 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v57 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v56 = &v55 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v55 = &v55 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v69 = &v55 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v65 = &v55 - v12;
  v13 = type metadata accessor for Replica(0);
  v62 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v68 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v61 = &v55 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA458, &qword_1AE251E00);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v66 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v70 = &v55 - v20;
  v72 = a2;
  if (*(a2 + 16) && *(a1 + 16))
  {
    v21 = *(a1 + 64);
    v59 = a1 + 64;
    v60 = a1;
    v22 = 1 << *(a1 + 32);
    v23 = -1;
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    v24 = v23 & v21;
    v58 = (v22 + 63) >> 6;
    v71 = (v67 + 32);
    v63 = (v67 + 8);
    v64 = v67 + 16;

    v25 = 0;
    while (v24)
    {
      v26 = v25;
LABEL_17:
      v30 = __clz(__rbit64(v24));
      v24 &= v24 - 1;
      v31 = v30 | (v26 << 6);
      v32 = v60;
      v33 = v61;
      sub_1ADDDE3A0(*(v60 + 48) + *(v62 + 72) * v31, v61, type metadata accessor for Replica);
      v34 = v67;
      v35 = v65;
      v36 = v73;
      (*(v67 + 16))(v65, *(v32 + 56) + *(v67 + 72) * v31, v73);
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
      v38 = *(v37 + 48);
      v29 = v66;
      sub_1ADDDE540(v33, v66, type metadata accessor for Replica);
      (*(v34 + 32))(v29 + v38, v35, v36);
      (*(*(v37 - 8) + 56))(v29, 0, 1, v37);
LABEL_18:
      v39 = v70;
      sub_1ADDD2198(v29, v70, &qword_1EB5BA458, &qword_1AE251E00);
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
      if ((*(*(v40 - 8) + 48))(v39, 1, v40) == 1)
      {
LABEL_25:

        return;
      }

      v41 = v70;
      v42 = *v71;
      (*v71)(v69, v70 + *(v40 + 48), v73);
      v43 = v68;
      sub_1ADDDE540(v41, v68, type metadata accessor for Replica);
      if (*(v72 + 16) && (v44 = sub_1ADDD8A6C(v43), v43 = v68, (v45 & 1) != 0))
      {
        v46 = *(v67 + 16);
        v47 = v68;
        v48 = v56;
        v49 = v73;
        v46(v56, *(v72 + 56) + *(v67 + 72) * v44, v73);
        sub_1ADDE4FF8(v47, type metadata accessor for Replica);
        v50 = v65;
        v51 = v55;
        v42(v55, v48, v49);
        v46(v57, v51, v49);
        v52 = v69;
        sub_1ADDDF604(&qword_1ED96A278, MEMORY[0x1E6969B50], MEMORY[0x1E6969B90]);
        sub_1AE23D88C();
        LOBYTE(v48) = sub_1AE23D8BC();
        v53 = *(v67 + 8);
        v53(v50, v49);
        v53(v51, v49);
        v53(v52, v49);
        if ((v48 & 1) == 0)
        {
          goto LABEL_25;
        }
      }

      else
      {
        sub_1ADDE4FF8(v43, type metadata accessor for Replica);
        (*v63)(v69, v73);
      }
    }

    if (v58 <= v25 + 1)
    {
      v27 = v25 + 1;
    }

    else
    {
      v27 = v58;
    }

    v28 = v27 - 1;
    v29 = v66;
    while (1)
    {
      v26 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v26 >= v58)
      {
        v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
        (*(*(v54 - 8) + 56))(v29, 1, 1, v54);
        v24 = 0;
        v25 = v28;
        goto LABEL_18;
      }

      v24 = *(v59 + 8 * v26);
      ++v25;
      if (v24)
      {
        v25 = v26;
        goto LABEL_17;
      }
    }

    __break(1u);
  }
}

void sub_1ADF637A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AE23C12C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v64 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v63 = &v52 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v68 = &v52 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v59 = &v52 - v12;
  v13 = type metadata accessor for Replica(0);
  v58 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v57 = &v52 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA458, &qword_1AE251E00);
  MEMORY[0x1EEE9AC00](v18 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = *(a1 + 16);
  v67 = a2;
  if (*(a2 + 16) >= v22)
  {
    v61 = v15;
    v62 = &v52 - v20;
    v23 = *(a1 + 64);
    v53 = a1 + 64;
    v24 = 1 << *(a1 + 32);
    v25 = -1;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    v26 = v25 & v23;
    v52 = (v24 + 63) >> 6;
    v65 = v21;
    v66 = v5 + 16;
    v69 = (v5 + 32);
    v60 = (v5 + 8);
    v56 = a1;

    v27 = 0;
    v54 = v4;
    v55 = v5;
    while (v26)
    {
      v28 = v27;
LABEL_15:
      v32 = __clz(__rbit64(v26));
      v26 &= v26 - 1;
      v33 = v32 | (v28 << 6);
      v34 = v56;
      v35 = v57;
      sub_1ADDDE3A0(*(v56 + 48) + *(v58 + 72) * v33, v57, type metadata accessor for Replica);
      v4 = v54;
      v5 = v55;
      v36 = v59;
      (*(v55 + 16))(v59, *(v34 + 56) + *(v55 + 72) * v33, v54);
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
      v38 = *(v37 + 48);
      v39 = v35;
      v31 = v65;
      sub_1ADDDE540(v39, v65, type metadata accessor for Replica);
      (*(v5 + 32))(v31 + v38, v36, v4);
      (*(*(v37 - 8) + 56))(v31, 0, 1, v37);
LABEL_16:
      v40 = v62;
      sub_1ADDD2198(v31, v62, &qword_1EB5BA458, &qword_1AE251E00);
      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
      if ((*(*(v41 - 8) + 48))(v40, 1, v41) == 1)
      {
LABEL_20:

        return;
      }

      v42 = *v69;
      (*v69)(v68, v40 + *(v41 + 48), v4);
      v43 = v61;
      sub_1ADDDE540(v40, v61, type metadata accessor for Replica);
      if (!*(v67 + 16) || (v44 = sub_1ADDD8A6C(v43), (v45 & 1) == 0))
      {

        sub_1ADDE4FF8(v43, type metadata accessor for Replica);
        (*v60)(v68, v4);
        return;
      }

      v46 = v64;
      (*(v5 + 16))(v64, *(v67 + 56) + *(v5 + 72) * v44, v4);
      sub_1ADDE4FF8(v43, type metadata accessor for Replica);
      v47 = v63;
      v42(v63, v46, v4);
      v48 = v68;
      v49 = sub_1AE23C0BC();
      v50 = *(v5 + 8);
      v50(v47, v4);
      v50(v48, v4);
      if ((v49 & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v52 <= v27 + 1)
    {
      v29 = v27 + 1;
    }

    else
    {
      v29 = v52;
    }

    v30 = v29 - 1;
    v31 = v65;
    while (1)
    {
      v28 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v28 >= v52)
      {
        v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
        (*(*(v51 - 8) + 56))(v31, 1, 1, v51);
        v26 = 0;
        v27 = v30;
        goto LABEL_16;
      }

      v26 = *(v53 + 8 * v28);
      ++v27;
      if (v26)
      {
        v27 = v28;
        goto LABEL_15;
      }
    }

    __break(1u);
  }
}

uint64_t *sub_1ADF63DF4(uint64_t a1, uint64_t a2)
{
  v79 = a2;
  v3 = sub_1AE23C12C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v63 = &v60[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v60[-v7];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v60[-v10];
  MEMORY[0x1EEE9AC00](v12);
  v70 = &v60[-v13];
  v14 = type metadata accessor for Replica(0);
  v69 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v60[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v17);
  v67 = &v60[-v18];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA458, &qword_1AE251E00);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v76 = &v60[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v21);
  v75 = &v60[-v22];
  v23 = *(a1 + 64);
  v66 = a1 + 64;
  v24 = 1 << *(a1 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & v23;
  v65 = (v24 + 63) >> 6;
  v72 = v4 + 16;
  v73 = v4;
  v80 = (v4 + 32);
  v77 = (v4 + 8);
  v74 = a1;

  v27 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v71 = v11;
  v68 = v16;
  v62 = v8;
  v82 = v3;
LABEL_4:
  v61 = v29;
  v78 = v28;
LABEL_5:
  v64 = v27;
  v32 = v75;
  v31 = v76;
  while (1)
  {
    LODWORD(v81) = v27;
    if (!v26)
    {
      break;
    }

    v33 = v30;
LABEL_17:
    v37 = __clz(__rbit64(v26));
    v26 &= v26 - 1;
    v38 = v37 | (v33 << 6);
    v39 = v74;
    v40 = v67;
    sub_1ADDDE3A0(*(v74 + 48) + *(v69 + 72) * v38, v67, type metadata accessor for Replica);
    v41 = v73;
    v42 = v70;
    v43 = v82;
    (*(v73 + 16))(v70, *(v39 + 56) + *(v73 + 72) * v38, v82);
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
    v45 = *(v44 + 48);
    v46 = v40;
    v31 = v76;
    sub_1ADDDE540(v46, v76, type metadata accessor for Replica);
    (*(v41 + 32))(&v31[v45], v42, v43);
    (*(*(v44 - 8) + 56))(v31, 0, 1, v44);
    v11 = v71;
    v16 = v68;
    v32 = v75;
LABEL_18:
    sub_1ADDD2198(v31, v32, &qword_1EB5BA458, &qword_1AE251E00);
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
    if ((*(*(v47 - 8) + 48))(v32, 1, v47) == 1)
    {

      if (v64)
      {
        v58 = v78;
        v59 = 256;
      }

      else
      {
        v59 = 0;
        v58 = v78;
      }

      return (v59 | v58 & 1u);
    }

    v48 = *v80;
    (*v80)(v11, v32 + *(v47 + 48), v82);
    sub_1ADDDE540(v32, v16, type metadata accessor for Replica);
    if (*(v79 + 16))
    {
      v49 = sub_1ADDD8A6C(v16);
      if (v50)
      {
        v52 = v63;
        v53 = v82;
        (*(v73 + 16))(v63, *(v79 + 56) + *(v73 + 72) * v49, v82);
        sub_1ADDE4FF8(v16, type metadata accessor for Replica);
        v54 = v62;
        v48(v62, v52, v53);
        v55 = sub_1ADF5E328(v11);
        if (v78)
        {
          v56 = *v77;
          (*v77)(v54, v53);
          v56(v11, v53);
          goto LABEL_26;
        }

        v81 = sub_1AE23C04C();
        v57 = *v77;
        (*v77)(v54, v53);
        v57(v11, v53);
        if (v55 < v81)
        {
          if (v61)
          {
LABEL_36:

            v58 = 1;
            if (v64)
            {
LABEL_37:
              v59 = 256;
            }

            else
            {
              v59 = 0;
            }

            return (v59 | v58 & 1u);
          }

          v29 = 0;
          v27 = 1;
          v28 = 1;
          if (!v64)
          {
            v27 = 0;
            v29 = 0;
            if (v55 > 0)
            {
              goto LABEL_33;
            }
          }
        }

        else
        {
LABEL_26:
          v27 = 1;
          if (v64)
          {
            goto LABEL_5;
          }

          v27 = v55 > 0;
          v29 = v27 | v61;
          v28 = (v55 < 1) & v78;
          if (v55 >= 1 && ((v78 ^ 1) & 1) == 0)
          {
LABEL_33:

            v58 = 1;
            goto LABEL_37;
          }
        }

        goto LABEL_4;
      }
    }

    sub_1ADDE4FF8(v16, type metadata accessor for Replica);
    (*v77)(v11, v82);
    v27 = 0;
    v78 = 1;
    if (v81)
    {
      goto LABEL_36;
    }
  }

  if (v65 <= v30 + 1)
  {
    v34 = v30 + 1;
  }

  else
  {
    v34 = v65;
  }

  v35 = v34 - 1;
  result = &qword_1EB5BA2A0;
  while (1)
  {
    v33 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    if (v33 >= v65)
    {
      v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
      (*(*(v51 - 8) + 56))(v31, 1, 1, v51);
      v26 = 0;
      v30 = v35;
      goto LABEL_18;
    }

    v26 = *(v66 + 8 * v33);
    ++v30;
    if (v26)
    {
      v30 = v33;
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

void sub_1ADF6457C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v75 = a3;
  v68 = a2;
  v74 = sub_1AE23C12C();
  v4 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v57 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v60 = &v56 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v76 = &v56 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v66 = &v56 - v11;
  v12 = type metadata accessor for Replica(0);
  v65 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v63 = &v56 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA458, &qword_1AE251E00);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v56 - v21;
  v23 = *(a1 + 64);
  v59 = a1 + 64;
  v24 = 1 << *(a1 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & v23;
  v58 = (v24 + 63) >> 6;
  v69 = v4 + 16;
  v70 = v4;
  v72 = (v4 + 8);
  v73 = (v4 + 32);
  v67 = a1;

  v61 = 0;
  v62 = v19;
  v27 = 0;
  v64 = v14;
  v71 = v22;
  while (1)
  {
    if (!v26)
    {
      if (v58 <= v27 + 1)
      {
        v31 = v27 + 1;
      }

      else
      {
        v31 = v58;
      }

      v32 = v31 - 1;
      while (1)
      {
        v30 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          break;
        }

        if (v30 >= v58)
        {
          v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
          (*(*(v54 - 8) + 56))(v19, 1, 1, v54);
          v26 = 0;
          v27 = v32;
          goto LABEL_17;
        }

        v26 = *(v59 + 8 * v30);
        ++v27;
        if (v26)
        {
          v27 = v30;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
      return;
    }

    v30 = v27;
LABEL_16:
    v33 = __clz(__rbit64(v26));
    v26 &= v26 - 1;
    v34 = v33 | (v30 << 6);
    v35 = v67;
    v36 = v63;
    sub_1ADDDE3A0(*(v67 + 48) + *(v65 + 72) * v34, v63, type metadata accessor for Replica);
    v37 = v70;
    v38 = v66;
    v39 = v74;
    (*(v70 + 16))(v66, *(v35 + 56) + *(v70 + 72) * v34, v74);
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
    v41 = *(v40 + 48);
    v42 = v36;
    v19 = v62;
    sub_1ADDDE540(v42, v62, type metadata accessor for Replica);
    (*(v37 + 32))(&v19[v41], v38, v39);
    (*(*(v40 - 8) + 56))(v19, 0, 1, v40);
    v14 = v64;
    v22 = v71;
LABEL_17:
    sub_1ADDD2198(v19, v22, &qword_1EB5BA458, &qword_1AE251E00);
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
    if ((*(*(v43 - 8) + 48))(v22, 1, v43) == 1)
    {
      break;
    }

    v44 = v74;
    v45 = *v73;
    (*v73)(v76, &v22[*(v43 + 48)], v74);
    sub_1ADDDE540(v22, v14, type metadata accessor for Replica);
    if (*(v75 + 16) && (v46 = sub_1ADDD8A6C(v14), (v47 & 1) != 0))
    {
      v48 = v57;
      (*(v70 + 16))(v57, *(v75 + 56) + *(v70 + 72) * v46, v44);
      sub_1ADDE4FF8(v14, type metadata accessor for Replica);
      v49 = v44;
      v50 = v60;
      v45(v60, v48, v49);
      if (sub_1AE23C0BC())
      {
        v51 = sub_1AE23C04C();
        v52 = 2 * (v51 != sub_1AE23C04C());
        v53 = v50;
      }

      else
      {
        v55 = sub_1AE23C04C();
        if (sub_1AE23C04C() < v55 && (sub_1AE23C0BC() & 1) != 0)
        {
          v52 = 1;
        }

        else
        {
          v52 = 3;
        }

        v53 = v60;
      }

      v44 = v74;
      v29 = *v72;
      (*v72)(v53, v74);
      v28 = *v68 | v52;
      *v68 = v28;
      if (__OFADD__(v61, 1))
      {
        goto LABEL_35;
      }

      ++v61;
    }

    else
    {
      sub_1ADDE4FF8(v14, type metadata accessor for Replica);
      v28 = *v68 | 1;
      *v68 = v28;
      v29 = *v72;
    }

    v29(v76, v44);
    v22 = v71;
    if (v28 == 3)
    {

      return;
    }
  }

  if (v61 != *(v75 + 16))
  {
    *v68 |= 2uLL;
  }
}

void sub_1ADF64C74(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AE23C12C();
  v66 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v65 = &v51 - v8;
  v9 = type metadata accessor for Replica(0);
  v58 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v59 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v57 = &v51 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA458, &qword_1AE251E00);
  MEMORY[0x1EEE9AC00](v13 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v51 - v15;
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v60 = v16;
    v56 = a2;
    v18 = 0;
    v52 = a1;
    v19 = *(a1 + 64);
    v51 = a1 + 64;
    v20 = 1 << *(a1 + 32);
    v21 = -1;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    v22 = v21 & v19;
    v23 = (v20 + 63) >> 6;
    v62 = v66 + 16;
    v63 = &v51 - v15;
    v64 = (v66 + 32);
    v54 = v6;
    v55 = (v66 + 8);
    v53 = v4;
    while (v22)
    {
      v61 = (v22 - 1) & v22;
      v24 = __clz(__rbit64(v22)) | (v18 << 6);
LABEL_16:
      v30 = v52;
      v31 = v57;
      sub_1ADDDE3A0(*(v52 + 48) + *(v58 + 72) * v24, v57, type metadata accessor for Replica);
      v33 = v65;
      v32 = v66;
      (*(v66 + 16))(v65, *(v30 + 56) + *(v66 + 72) * v24, v4);
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
      v35 = *(v34 + 48);
      v36 = v31;
      v27 = v60;
      sub_1ADDDE540(v36, v60, type metadata accessor for Replica);
      (*(v32 + 32))(v27 + v35, v33, v4);
      (*(*(v34 - 8) + 56))(v27, 0, 1, v34);
      v17 = v63;
      v22 = v61;
LABEL_17:
      sub_1ADDD2198(v27, v17, &qword_1EB5BA458, &qword_1AE251E00);
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
      if ((*(*(v37 - 8) + 48))(v17, 1, v37) == 1)
      {
        return;
      }

      v38 = *(v37 + 48);
      v39 = v59;
      sub_1ADDDE540(v17, v59, type metadata accessor for Replica);
      v40 = &v17[v38];
      v4 = v53;
      v41 = v54;
      (*v64)(v54, v40, v53);
      v42 = v56;
      v43 = sub_1ADDD8A6C(v39);
      LOBYTE(v38) = v44;
      sub_1ADDE4FF8(v39, type metadata accessor for Replica);
      if ((v38 & 1) == 0)
      {
        (*v55)(v41, v4);
        return;
      }

      v45 = v66;
      v46 = *(v42 + 56) + *(v66 + 72) * v43;
      v47 = v65;
      (*(v66 + 16))(v65, v46, v4);
      sub_1ADDDF604(&qword_1ED967150, MEMORY[0x1E6969B50], MEMORY[0x1E6969B70]);
      v48 = sub_1AE23CCBC();
      v49 = *(v45 + 8);
      v49(v47, v4);
      v49(v41, v4);
      v17 = v63;
      if ((v48 & 1) == 0)
      {
        return;
      }
    }

    if (v23 <= v18 + 1)
    {
      v25 = v18 + 1;
    }

    else
    {
      v25 = v23;
    }

    v26 = v25 - 1;
    v27 = v60;
    while (1)
    {
      v28 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v28 >= v23)
      {
        v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA2A0, &unk_1AE242200);
        (*(*(v50 - 8) + 56))(v27, 1, 1, v50);
        v22 = 0;
        v18 = v26;
        goto LABEL_17;
      }

      v29 = *(v51 + 8 * v28);
      ++v18;
      if (v29)
      {
        v61 = (v29 - 1) & v29;
        v24 = __clz(__rbit64(v29)) | (v28 << 6);
        v18 = v28;
        goto LABEL_16;
      }
    }

    __break(1u);
  }
}

void sub_1ADF6528C(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = a1;
    if (*(a1 + 16) == *(a2 + 16))
    {
      v4 = 0;
      v5 = a1 + 64;
      v6 = 1 << *(a1 + 32);
      v7 = -1;
      if (v6 < 64)
      {
        v7 = ~(-1 << v6);
      }

      v8 = v7 & *(a1 + 64);
      v24 = (v6 + 63) >> 6;
      while (v8)
      {
        v9 = __clz(__rbit64(v8));
        v10 = (v8 - 1) & v8;
LABEL_13:
        v13 = v9 | (v4 << 6);
        v14 = (*(v3 + 48) + 16 * v13);
        v15 = *v14;
        v16 = v14[1];
        v17 = *(*(v3 + 56) + 8 * v13);

        if (!v16)
        {
          return;
        }

        v18 = v10;
        v19 = v3;
        v20 = sub_1ADDD7A10(v15, v16);
        v22 = v21;

        if ((v22 & 1) == 0)
        {

          return;
        }

        v23 = *(**(*(a2 + 56) + 8 * v20) + 264);

        LOBYTE(v23) = v23(v17);

        v3 = v19;
        v8 = v18;
        if ((v23 & 1) == 0)
        {
          return;
        }
      }

      v11 = v4;
      while (1)
      {
        v4 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v4 >= v24)
        {
          return;
        }

        v12 = *(v5 + 8 * v4);
        ++v11;
        if (v12)
        {
          v9 = __clz(__rbit64(v12));
          v10 = (v12 - 1) & v12;
          goto LABEL_13;
        }
      }

      __break(1u);
    }
  }
}

void sub_1ADF65450(uint64_t a1, uint64_t a2)
{
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v4 = 0;
    v20 = a1 + 64;
    v5 = 1 << *(a1 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a1 + 64);
    v19 = (v5 + 63) >> 6;
    while (v7)
    {
      v8 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_13:
      v11 = v8 | (v4 << 6);
      v12 = (*(a1 + 48) + 16 * v11);
      v13 = *v12;
      v14 = v12[1];
      v15 = *(*(a1 + 56) + 8 * v11);
      sub_1ADDD86D8(*v12, v14);
      if (v14 >> 60 != 15)
      {
        v16 = sub_1ADDDE7CC(v13, v14);
        v18 = v17;
        sub_1ADDCC35C(v13, v14);
        if ((v18 & 1) != 0 && *(*(a2 + 56) + 8 * v16) == v15)
        {
          continue;
        }
      }

      return;
    }

    v9 = v4;
    while (1)
    {
      v4 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v4 >= v19)
      {
        return;
      }

      v10 = *(v20 + 8 * v4);
      ++v9;
      if (v10)
      {
        v8 = __clz(__rbit64(v10));
        v7 = (v10 - 1) & v10;
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

BOOL sub_1ADF655B8(uint64_t a1, uint64_t a2)
{
  v66[3] = *MEMORY[0x1E69E9840];
  if (a1 == a2)
  {
    return 1;
  }

  v2 = a1;
  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v58 = 0;
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;
  while (1)
  {
    if (v7)
    {
      v9 = __clz(__rbit64(v7));
      v10 = (v7 - 1) & v7;
      goto LABEL_13;
    }

    v11 = v3;
    do
    {
      v3 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
        goto LABEL_82;
      }

      if (v3 >= v8)
      {
        return 1;
      }

      v12 = *(v4 + 8 * v3);
      ++v11;
    }

    while (!v12);
    v9 = __clz(__rbit64(v12));
    v10 = (v12 - 1) & v12;
LABEL_13:
    v13 = 16 * (v9 | (v3 << 6));
    v14 = (*(v2 + 48) + v13);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(v2 + 56) + v13);
    v18 = *v17;
    v63 = v17[1];
    sub_1ADDD86D8(*v14, v16);
    v19 = v18 == 0;

    if (!v18)
    {
      return v19;
    }

    v62 = v10;
    v20 = sub_1ADDDE7CC(v15, v16);
    v22 = v21;
    sub_1ADDCC35C(v15, v16);
    if ((v22 & 1) == 0)
    {
      goto LABEL_78;
    }

    v23 = (*(a2 + 56) + 16 * v20);
    v24 = v23[1];
    v25 = *(*v23 + 16);
    v26 = *(*v23 + 24);
    v27 = *(v18 + 16);
    v28 = *(v18 + 24);
    v29 = v26 >> 62;
    v30 = v28 >> 62;
    v61 = v24;
    if (v26 >> 62 == 3)
    {
      if (v25)
      {
        v31 = 0;
      }

      else
      {
        v31 = v26 == 0xC000000000000000;
      }

      v32 = v31 && v28 >> 62 == 3;
      if (!v32 || (!v27 ? (v33 = v28 == 0xC000000000000000) : (v33 = 0), !v33))
      {
LABEL_39:
        v34 = 0;
        if (v30 > 1)
        {
          goto LABEL_40;
        }

LABEL_37:
        if (!v30)
        {
          v38 = BYTE6(v28);
          goto LABEL_46;
        }

        LODWORD(v38) = HIDWORD(v27) - v27;
        if (!__OFSUB__(HIDWORD(v27), v27))
        {
          v38 = v38;
          goto LABEL_46;
        }

LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
        goto LABEL_84;
      }

      goto LABEL_74;
    }

    if (v29 > 1)
    {
      if (v29 != 2)
      {
        goto LABEL_39;
      }

      v36 = *(v25 + 16);
      v35 = *(v25 + 24);
      v37 = __OFSUB__(v35, v36);
      v34 = v35 - v36;
      if (!v37)
      {
        if (v30 > 1)
        {
          goto LABEL_40;
        }

        goto LABEL_37;
      }

LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
    }

    if (v29)
    {
      LODWORD(v34) = HIDWORD(v25) - v25;
      if (__OFSUB__(HIDWORD(v25), v25))
      {
        goto LABEL_85;
      }

      v34 = v34;
      if (v30 <= 1)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v34 = BYTE6(v26);
      if (v30 <= 1)
      {
        goto LABEL_37;
      }
    }

LABEL_40:
    if (v30 != 2)
    {
      if (v34)
      {
        goto LABEL_78;
      }

      goto LABEL_74;
    }

    v40 = *(v27 + 16);
    v39 = *(v27 + 24);
    v37 = __OFSUB__(v39, v40);
    v38 = v39 - v40;
    if (v37)
    {
      goto LABEL_83;
    }

LABEL_46:
    if (v34 != v38)
    {
      goto LABEL_78;
    }

    if (v34 >= 1)
    {
      break;
    }

LABEL_74:
    v2 = a1;
    v7 = v62;

    if (v61 != v63)
    {
      return v19;
    }
  }

  v59 = *(v18 + 16);
  if (v29 > 1)
  {
    if (v29 != 2)
    {
      memset(v66, 0, 14);

      sub_1ADDD86D8(v25, v26);
      v41 = v59;
      sub_1ADDD86D8(v59, v28);
      goto LABEL_65;
    }

    v54 = *(v25 + 24);
    v56 = *(v25 + 16);

    sub_1ADDD86D8(v25, v26);
    v57 = v28;
    sub_1ADDD86D8(v59, v28);
    v42 = sub_1AE23BB7C();
    if (v42)
    {
      v43 = v42;
      v44 = sub_1AE23BBAC();
      v45 = v56;
      if (__OFSUB__(v56, v44))
      {
        goto LABEL_88;
      }

      v53 = v56 - v44 + v43;
    }

    else
    {
      v53 = 0;
      v45 = v56;
    }

    if (__OFSUB__(v54, v45))
    {
      goto LABEL_87;
    }

    sub_1AE23BB9C();
    v51 = v53;
  }

  else
  {
    if (!v29)
    {
      v66[0] = v25;
      LOWORD(v66[1]) = v26;
      BYTE2(v66[1]) = BYTE2(v26);
      BYTE3(v66[1]) = BYTE3(v26);
      BYTE4(v66[1]) = BYTE4(v26);
      BYTE5(v66[1]) = BYTE5(v26);
      v41 = v27;

      sub_1ADDD86D8(v25, v26);
      sub_1ADDD86D8(v41, v28);
LABEL_65:
      v49 = v41;
      v50 = v58;
      sub_1ADDD8820(v66, v49, v28, &v65);
      sub_1ADDCC35C(v25, v26);
      sub_1ADDCC35C(v59, v28);
      if (!v65)
      {
        goto LABEL_77;
      }

LABEL_73:
      v58 = v50;

      goto LABEL_74;
    }

    if (v25 >> 32 < v25)
    {
      goto LABEL_86;
    }

    sub_1ADDD86D8(v25, v26);
    v57 = v28;
    sub_1ADDD86D8(v59, v28);
    v46 = sub_1AE23BB7C();
    if (v46)
    {
      v55 = v46;
      v47 = sub_1AE23BBAC();
      if (__OFSUB__(v25, v47))
      {
        goto LABEL_89;
      }

      v48 = v25 - v47 + v55;
    }

    else
    {
      v48 = 0;
    }

    sub_1AE23BB9C();
    v51 = v48;
  }

  v50 = v58;
  sub_1ADDD8820(v51, v59, v57, v66);
  sub_1ADDCC35C(v25, v26);
  sub_1ADDCC35C(v59, v57);
  if (v66[0])
  {
    goto LABEL_73;
  }

LABEL_77:

LABEL_78:

  return 0;
}

double sub_1ADF65B3C(uint64_t a1, void *a2)
{
  v63 = a1;
  v67[5] = *MEMORY[0x1E69E9840];
  v3 = sub_1AE23C0EC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v56 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_1AE23C12C();
  v60 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v54 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA440, &unk_1AE24CCB0);
  MEMORY[0x1EEE9AC00](v53);
  v8 = &v46 - v7;
  v9 = type metadata accessor for Replica(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a2[2];
  v59 = a2;
  v58 = v10;
  v57 = v12;
  if (v13)
  {
    *&v62 = v4;
    v14 = sub_1AE194450(v13, 0);
    sub_1AE03AAF0(v67, v14 + ((*(v10 + 80) + 32) & ~*(v10 + 80)), v13, a2);
    v16 = v15;
    v17 = v67[0];

    sub_1ADDDCE74(v17);
    if (v16 != v13)
    {
      goto LABEL_34;
    }

    a2 = v59;
    v10 = v58;
    v12 = v57;
    v4 = v62;
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  v67[0] = v14;
  sub_1ADF68C38(v67);
  v18 = v67[0];
  v52 = *(v67[0] + 16);
  if (v52)
  {
    v19 = 0;
    v51 = v67[0] + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v50 = v60 + 16;
    v49 = v60 + 8;
    v48 = (v4 + 8);
    v62 = xmmword_1AE2418F0;
    v47 = v67[0];
    while (v19 < *(v18 + 16))
    {
      v20 = sub_1ADDDE3A0(v51 + *(v10 + 72) * v19, v12, type metadata accessor for Replica);
      v21 = sub_1ADDD8E0C(v20);
      v23 = v22;
      sub_1AE1B1DC4(v21, v22, v63, v24);
      sub_1ADDCC35C(v21, v23);
      if (!a2[2])
      {
        goto LABEL_30;
      }

      v25 = sub_1ADDD8A6C(v12);
      v27 = v26;
      sub_1ADDE4FF8(v12, type metadata accessor for Replica);
      if ((v27 & 1) == 0)
      {
        goto LABEL_31;
      }

      v61 = v19;
      v28 = v60;
      v29 = a2[7] + *(v60 + 72) * v25;
      v30 = v54;
      v31 = v55;
      (*(v60 + 16))(v54, v29, v55);
      v32 = v56;
      sub_1AE23C10C();
      (*(v28 + 8))(v30, v31);
      sub_1AE23C0DC();
      (*v48)(v32, v3);
      v33 = *(v53 + 36);
      sub_1ADDDF604(&qword_1ED96A708, MEMORY[0x1E6969B30], MEMORY[0x1E6969B48]);
      while (1)
      {
        sub_1AE23D46C();
        if (*&v8[v33] == v67[0])
        {
          break;
        }

        v34 = sub_1AE23D51C();
        v36 = *v35;
        v37 = v35[1];
        v34(v67, 0);
        sub_1AE23D47C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA130, &qword_1AE241B50);
        inited = swift_initStackObject();
        *(inited + 16) = v62;
        *(inited + 32) = v36;
        *(inited + 40) = v37;
        v67[3] = MEMORY[0x1E69E6290];
        v67[4] = MEMORY[0x1E6969DF8];
        v67[0] = inited + 32;
        v67[1] = inited + 48;
        v39 = __swift_project_boxed_opaque_existential_1(v67, MEMORY[0x1E69E6290]);
        v40 = *v39;
        if (!*v39 || (v41 = v39[1], v42 = v41 - v40, v41 == v40))
        {
          __swift_destroy_boxed_opaque_existential_1(v67);
          swift_setDeallocating();
          sub_1AE23C9BC();
          sub_1ADDDF604(&qword_1EB5BB808, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
          memset(__dst, 0, sizeof(__dst));
          sub_1AE23C93C();
        }

        else if (v42 <= 14)
        {
          memset(__dst, 0, sizeof(__dst));
          v66 = v41 - v40;
          memcpy(__dst, v40, v41 - v40);
          __swift_destroy_boxed_opaque_existential_1(v67);
          swift_setDeallocating();
          v64[0] = *__dst;
          *(v64 + 6) = *&__dst[6];
          sub_1AE23C9BC();
          sub_1ADDDF604(&qword_1EB5BB808, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
          sub_1AE23C93C();
        }

        else
        {
          sub_1AE23BBCC();
          swift_allocObject();
          v43 = sub_1AE23BB6C();
          if (v42 >= 0x7FFFFFFF)
          {
            sub_1AE23BE2C();
            v44 = swift_initStackObject();
            *(v44 + 16) = 0;
            *(v44 + 24) = v42;
            __swift_destroy_boxed_opaque_existential_1(v67);

            sub_1ADDD86D8(v44, v43 | 0x8000000000000000);
            if (sub_1AE23BB7C() && __OFSUB__(0, sub_1AE23BBAC()))
            {
              goto LABEL_33;
            }

            sub_1AE23BB9C();
            sub_1AE23C9BC();
            sub_1ADDDF604(&qword_1EB5BB808, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
            sub_1AE23C93C();

            swift_setDeallocating();
            sub_1AE23BE3C();
          }

          else
          {
            __swift_destroy_boxed_opaque_existential_1(v67);
            swift_setDeallocating();
            sub_1ADDD86D8(v42 << 32, v43 | 0x4000000000000000);
            if (sub_1AE23BB7C() && __OFSUB__(0, sub_1AE23BBAC()))
            {
              goto LABEL_32;
            }

            sub_1AE23BB9C();
            sub_1AE23C9BC();
            sub_1ADDDF604(&qword_1EB5BB808, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
            sub_1AE23C93C();
          }
        }
      }

      v19 = v61 + 1;
      sub_1ADDCEDE0(v8, &qword_1EB5BA440, &unk_1AE24CCB0);
      a2 = v59;
      v10 = v58;
      v12 = v57;
      v18 = v47;
      if (v19 == v52)
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
    __break(1u);
  }

LABEL_28:

  return result;
}