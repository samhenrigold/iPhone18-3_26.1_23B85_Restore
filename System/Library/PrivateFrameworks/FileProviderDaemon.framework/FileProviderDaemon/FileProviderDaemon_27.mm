double sub_1CF324DE0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v31 = a5;
  v32 = a6;
  v30 = a2;
  v35 = sub_1CF9E63A8();
  v38 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1CF9E6448();
  v36 = *(v11 - 8);
  v37 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v18 = &v30 - v17;
  v33 = *&v6[OBJC_IVAR____TtC18FileProviderDaemon17LocalFileProvider_queue];
  sub_1CEFCCBDC(a4, &v30 - v17, &unk_1EC4BE310, qword_1CF9FCBE0);
  v19 = (*(v15 + 80) + 48) & ~*(v15 + 80);
  v20 = swift_allocObject();
  v20[2] = a3;
  v20[3] = a1;
  v21 = v30;
  v20[4] = v6;
  v20[5] = v21;
  sub_1CEFE55D0(v18, v20 + v19, &unk_1EC4BE310, qword_1CF9FCBE0);
  v22 = (v20 + ((v16 + v19 + 7) & 0xFFFFFFFFFFFFFFF8));
  v23 = v32;
  *v22 = v31;
  v22[1] = v23;
  aBlock[4] = sub_1CF326164;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CEFCA444;
  aBlock[3] = &block_descriptor_67_0;
  v24 = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  v25 = v6;
  v26 = v21;

  sub_1CF9E63F8();
  v39 = MEMORY[0x1E69E7CC0];
  sub_1CEFD5B1C(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
  sub_1CEFCCCEC(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0, MEMORY[0x1E69E6328]);
  v28 = v34;
  v27 = v35;
  sub_1CF9E77B8();
  MEMORY[0x1D3869630](0, v13, v28, v24);
  _Block_release(v24);
  (*(v38 + 8))(v28, v27);
  (*(v36 + 8))(v13, v37);

  return result;
}

void sub_1CF3251C0(void *a1, const void *a2)
{
  v3 = swift_allocObject();
  *(v3 + 16) = a2;
  _Block_copy(a2);
  sub_1CEFFCE80();
  if (qword_1EDEA3408 != -1)
  {
    swift_once();
  }

  v4 = qword_1EDEBB5A0;
  v5 = sub_1CF9E7298();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1CF9FA440;
  sub_1CEFFD0A8();
  v7 = sub_1CF9E7718();
  v9 = v8;
  v10 = MEMORY[0x1E69E6158];
  *(v6 + 56) = MEMORY[0x1E69E6158];
  v11 = sub_1CEFD51C4();
  *(v6 + 32) = v7;
  *(v6 + 40) = v9;
  *(v6 + 96) = v10;
  *(v6 + 104) = v11;
  *(v6 + 64) = v11;
  *(v6 + 72) = 0xD000000000000016;
  *(v6 + 80) = 0x80000001CFA3EF90;
  sub_1CF9E6018("[DEBUG] ┏%@ %@", 16, 0, &dword_1CEFC7000, v4, v5, v6);
  v6, v12, v13, v14, v15, v16, v17, v18;
  type metadata accessor for LocalFileProvider.BarrierDelegate(0);
  swift_allocObject();
  v19 = (sub_1CF31448C(a1) + OBJC_IVAR____TtCFC18FileProviderDaemon17LocalFileProvider20waitForStabilizationFT17completionHandlerFGSqPs5Error__T__T_L_15BarrierDelegate_onStabilize);
  v20 = *v19;
  v21 = v19[1];
  *v19 = sub_1CF067718;
  v19[1] = v3;

  sub_1CEFF7124(v20, v21);
  sub_1CF315174();

  v22 = sub_1CF9E7298();
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1CF9FA450;
  v24 = sub_1CF9E7718();
  *(v23 + 56) = MEMORY[0x1E69E6158];
  *(v23 + 64) = v11;
  *(v23 + 32) = v24;
  *(v23 + 40) = v25;
  sub_1CF9E6018("[DEBUG] ┗%@", 13, 0, &dword_1CEFC7000, v4, v22, v23);

  v23, v26, v27, v28, v29, v30, v31, v32;
}

void sub_1CF32548C(uint64_t a1, void (*a2)(id, id, void, unint64_t, void), uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v9 = [objc_allocWithZone(MEMORY[0x1E696AE38]) init];
  v10 = swift_allocObject();
  *(v10 + 16) = a4;
  *(v10 + 24) = a5;
  aBlock[4] = sub_1CF326110;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CEFCA444;
  aBlock[3] = &block_descriptor_37;
  v11 = _Block_copy(aBlock);

  sub_1CF03C63C(sub_1CF326110, v10);

  [v9 setCancellationHandler_];
  _Block_release(v11);

  if (os_variant_has_internal_content() && (v41 = a1, v12 = objc_allocWithZone(MEMORY[0x1E695E000]), v13 = sub_1CF9E6888(), v14 = [v12 initWithSuiteName_], v13, v14) && (v15 = sub_1CF9E6888(), v16 = objc_msgSend(v14, sel_BOOLForKey_, v15), v14, v15, v16))
  {
    v38 = a4;
    v40 = a1 + 64;
    v17 = 1 << *(a1 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & *(a1 + 64);
    v39 = (v17 + 63) >> 6;

    v20 = 0;
    while (v19)
    {
LABEL_15:
      v30 = (v20 << 9) | (8 * __clz(__rbit64(v19)));
      v31 = *(*(a1 + 48) + v30);
      v32 = *(*(a1 + 56) + v30);
      if (v32 >> 62)
      {
        v33 = sub_1CF9E7818();
      }

      else
      {
        v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v19 &= v19 - 1;
      if (v33)
      {
        if (v33 < 1)
        {
          goto LABEL_27;
        }

        v34 = v31;

        for (i = 0; i != v33; ++i)
        {
          if ((v32 & 0xC000000000000001) != 0)
          {
            v36 = MEMORY[0x1D3869C30](i, v32);
          }

          else
          {
            v36 = *(&v32[1].super.isa + i);
          }

          v37 = v36;
          a2(v34, v36, 0, 0xF000000000000000, 0);
        }

        v32, v22, v23, v24, v25, v26, v27, v28;
        a1 = v41;
      }
    }

    while (1)
    {
      v29 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v29 >= v39)
      {

        v21 = 0;
        v38(0);
        goto LABEL_8;
      }

      v19 = *(v40 + 8 * v29);
      ++v20;
      if (v19)
      {
        v20 = v29;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
  }

  else
  {
    v21 = FPNotSupportedError();
    a4(v21);
LABEL_8:
  }
}

uint64_t sub_1CF325814(void *a1, uint64_t a2)
{
  v71 = *MEMORY[0x1E69E9840];
  v4 = sub_1CF9E5A58();
  v68 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v66 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v65 - v10;
  v69 = 0;
  v70 = 0xE000000000000000;
  sub_1CF9E7948();
  v70, v12, v13, v14, v15, v16, v17, v18;
  v69 = 0xD000000000000013;
  v70 = 0x80000001CFA3F0D0;
  v19 = [a1 description];
  v20 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v22 = v21;

  MEMORY[0x1D3868CC0](v20, v22);
  v22, v23, v24, v25, v26, v27, v28, v29;
  MEMORY[0x1D3868CC0](544497952, 0xE400000000000000);
  sub_1CEFCCBDC(a2, v11, &unk_1EC4BE310, qword_1CF9FCBE0);
  v30 = sub_1CF9E6948();
  v32 = v31;
  MEMORY[0x1D3868CC0](v30);
  v32, v33, v34, v35, v36, v37, v38, v39;
  v40 = v69;
  v41 = v70;
  if (qword_1EDEA3408 != -1)
  {
    swift_once();
  }

  v42 = qword_1EDEBB5A0;
  v43 = sub_1CF9E7298();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_1CF9FA450;
  *(v44 + 56) = MEMORY[0x1E69E6158];
  *(v44 + 64) = sub_1CEFD51C4();
  *(v44 + 32) = v40;
  *(v44 + 40) = v41;
  sub_1CF9E6018("[DEBUG] %@", 10, 2, &dword_1CEFC7000, v42, v43, v44);
  v44, v45, v46, v47, v48, v49, v50, v51;
  sub_1CEFCCBDC(a2, v8, &unk_1EC4BE310, qword_1CF9FCBE0);
  v52 = v68;
  if ((*(v68 + 48))(v8, 1, v4) == 1)
  {
    return sub_1CEFCCC44(v8, &unk_1EC4BE310, qword_1CF9FCBE0);
  }

  v54 = v66;
  (*(v52 + 32))(v66, v8, v4);
  v55 = v67;
  v56 = sub_1CF9E5928();
  v57 = sub_1CF9E5928();
  v58 = [v56 fp:v57 relationshipToItemAtURL:?];

  if (v58 == 1)
  {
    v59 = [objc_opt_self() defaultManager];
    v60 = sub_1CF9E5928();
    v69 = 0;
    v61 = [v59 removeItemAtURL:v60 error:&v69];

    if (v61)
    {
      v62 = v69;
    }

    else
    {
      v63 = v69;
      v64 = sub_1CF9E57F8();

      swift_willThrow();
    }

    *(v55 + OBJC_IVAR____TtCFC18FileProviderDaemon17LocalFileProvider20waitForStabilizationFT17completionHandlerFGSqPs5Error__T__T_L_15BarrierDelegate_hasFired) = 1;
    sub_1CF31559C();
  }

  return (*(v52 + 8))(v54, v4);
}

uint64_t sub_1CF325C98(uint64_t a1, uint64_t a2)
{
  v67 = *MEMORY[0x1E69E9840];
  v4 = sub_1CF9E5A58();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v64[0] = v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v64 - v11;
  v65 = 0;
  v66 = 0xE000000000000000;
  sub_1CF9E7948();
  v66, v13, v14, v15, v16, v17, v18, v19;
  v65 = 0xD000000000000013;
  v66 = 0x80000001CFA3F0D0;
  v20 = NSFileProviderItemIdentifier.description.getter(a1);
  v22 = v21;
  MEMORY[0x1D3868CC0](v20);
  v22, v23, v24, v25, v26, v27, v28, v29;
  MEMORY[0x1D3868CC0](544497952, 0xE400000000000000);
  sub_1CEFCCBDC(a2, v12, &unk_1EC4BE310, qword_1CF9FCBE0);
  v30 = sub_1CF9E6948();
  v32 = v31;
  MEMORY[0x1D3868CC0](v30);
  v32, v33, v34, v35, v36, v37, v38, v39;
  v40 = v65;
  v41 = v66;
  if (qword_1EDEA3408 != -1)
  {
    swift_once();
  }

  v42 = qword_1EDEBB5A0;
  v43 = sub_1CF9E7298();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_1CF9FA450;
  *(v44 + 56) = MEMORY[0x1E69E6158];
  *(v44 + 64) = sub_1CEFD51C4();
  *(v44 + 32) = v40;
  *(v44 + 40) = v41;
  sub_1CF9E6018("[DEBUG] %@", 10, 2, &dword_1CEFC7000, v42, v43, v44);
  v44, v45, v46, v47, v48, v49, v50, v51;
  sub_1CEFCCBDC(a2, v9, &unk_1EC4BE310, qword_1CF9FCBE0);
  if ((*(v5 + 48))(v9, 1, v4) == 1)
  {
    return sub_1CEFCCC44(v9, &unk_1EC4BE310, qword_1CF9FCBE0);
  }

  v53 = v64[0];
  (*(v5 + 32))(v64[0], v9, v4);
  v54 = v64[1];
  v55 = sub_1CF9E5928();
  v56 = sub_1CF9E5928();
  v57 = [v55 fp:v56 relationshipToItemAtURL:?];

  if (v57 == 1)
  {
    v58 = [objc_opt_self() defaultManager];
    v59 = sub_1CF9E5928();
    v65 = 0;
    v60 = [v58 removeItemAtURL:v59 error:&v65];

    if (v60)
    {
      v61 = v65;
    }

    else
    {
      v62 = v65;
      v63 = sub_1CF9E57F8();

      swift_willThrow();
    }

    *(v54 + OBJC_IVAR____TtCFC18FileProviderDaemon17LocalFileProvider20waitForStabilizationFT17completionHandlerFGSqPs5Error__T__T_L_15BarrierDelegate_hasFired) = 1;
    sub_1CF31559C();
  }

  return (*(v5 + 8))(v53, v4);
}

void sub_1CF3260EC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, void *a5, _TtC18FileProviderDaemon8FSTester *a6, uint64_t a7, void *a8)
{
  if (a6 != 1)
  {
    a6, a2, a3, a4, a5, a6, a7, a8;
  }
}

void sub_1CF326164()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0) - 8);
  v2 = (*(v1 + 80) + 48) & ~*(v1 + 80);
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 1);

  sub_1CF312D90(v3, v4, v5, v6, (v0 + v2), v8, v9);
}

double sub_1CF326324()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0) - 8);
  v2 = (*(v1 + 80) + 56) & ~*(v1 + 80);
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 1);

  return sub_1CF3112CC(v3, v4, v5, v6, v7, (v0 + v2), v9, v10);
}

uint64_t objectdestroy_81Tm()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = type metadata accessor for ItemMetadata(0);
  v5 = *(*(v4 - 1) + 80);

  swift_unknownObjectRelease();

  v6 = sub_1CF9E5A58();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v2, 1, v6))
  {
    (*(v7 + 8))(v0 + v2, v6);
  }

  v8 = v0 + ((v3 + v5 + 8) & ~v5);
  v9 = v4[7];
  v10 = sub_1CF9E5CF8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 8);
  v12(v8 + v9, v10);
  v12(v8 + v4[8], v10);
  *(v8 + v4[14] + 8), v13, v14, v15, v16, v17, v18, v19;
  v20 = v4[30];
  if (!(*(v11 + 48))(v8 + v20, 1, v10))
  {
    v12(v8 + v20, v10);
  }

  *(v8 + v4[31]), v21, v22, v23, v24, v25, v26, v27;
  *(v8 + v4[33]), v28, v29, v30, v31, v32, v33, v34;
  v41 = (v8 + v4[34]);
  v42 = v41[1];
  if (v42 >> 60 != 15)
  {
    sub_1CEFE4714(*v41, v42);
  }

  *(v8 + v4[38] + 8), v42, v35, v36, v37, v38, v39, v40;

  return swift_deallocObject();
}

void sub_1CF3266D8(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0) - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(type metadata accessor for ItemMetadata(0) - 8);
  v7 = (v5 + *(v6 + 80) + 8) & ~*(v6 + 80);
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[4];
  v11 = *(v1 + v5);
  v12 = *(v1 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1CF312210(a1, v8, v9, v10, v1 + v4, v11, v1 + v7, v12);
}

uint64_t objectdestroy_99Tm(uint64_t a1, const char *a2, int64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1CF326844@<X0>(_DWORD *a1@<X8>)
{
  result = sub_1CEFE1894(sub_1CF326A6C);
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t objectdestroy_111Tm()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0) - 8);
  v2 = (*(v1 + 80) + 72) & ~*(v1 + 80);

  swift_unknownObjectRelease();
  v3 = sub_1CF9E5A58();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  return swift_deallocObject();
}

uint64_t sub_1CF326AE4@<X0>(_DWORD *a1@<X8>)
{
  result = sub_1CEFE1894(sub_1CF326AC4);
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t objectdestroy_197Tm()
{
  *(v0 + 40), v1, v2, v3, v4, v5, v6, v7;

  return swift_deallocObject();
}

uint64_t objectdestroy_207Tm()
{
  v1 = sub_1CF9E5CF8();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

BOOL sub_1CF326CAC(uint64_t a1)
{
  v3 = *(sub_1CF9E5CF8() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1CF30DEB4(a1, v1 + v4, *(v1 + v5), *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)));
}

void sub_1CF326D60(void *a1)
{
  sub_1CF9E5A58();

  sub_1CF30D98C(a1);
}

unint64_t sub_1CF326DD0()
{
  result = qword_1EC4C11C0;
  if (!qword_1EC4C11C0)
  {
    sub_1CEFD57E0(255, &qword_1EDEA3440, 0x1E696ABC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C11C0);
  }

  return result;
}

uint64_t sub_1CF326E94(uint64_t a1)
{
  v3 = *(type metadata accessor for FSDirectoryEnumerator(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_1CF55CB7C(a1, v1 + v4, *v5, *(v5 + 8)) & 1;
}

uint64_t objectdestroy_117Tm()
{
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = (type metadata accessor for LocalContainer(0) - 8);
  v6 = (v3 + v4 + *(*v5 + 80)) & ~*(*v5 + 80);

  v7 = *(v2 + 8);
  v7(v0 + v3, v1);

  *(v0 + v6 + 16), v8, v9, v10, v11, v12, v13, v14;
  v15 = v0 + v6 + v5[8];
  *(v15 + 24), v16, v17, v18, v19, v20, v21, v22;
  *(v15 + 40), v23, v24, v25, v26, v27, v28, v29;
  v30 = type metadata accessor for LocalDomain(0);
  v7(v15 + *(v30 + 32), v1);
  v7(v0 + v6 + v5[9], v1);

  return swift_deallocObject();
}

void sub_1CF327150(uint64_t a1, void *a2)
{
  v5 = *(sub_1CF9E5A58() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for LocalContainer(0) - 8);
  v9 = v2[2];
  v10 = v2[3];
  v11 = v2[4];
  v12 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  sub_1CF302914(a1, a2, v9, v10, v11, v2 + v6, v12);
}

id sub_1CF327484(uint64_t *a1)
{
  v110 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v1 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v6 = a1[4];
  v5 = a1[5];
  v101 = a1[7];
  v7 = MEMORY[0x1E6969080];
  v108 = MEMORY[0x1E6969080];
  v109 = MEMORY[0x1E6969078];
  v106 = v2;
  v107 = v1;
  v8 = __swift_project_boxed_opaque_existential_1(&v106, MEMORY[0x1E6969080]);
  v9 = *v8;
  v10 = v8[1];
  v11 = v10 >> 62;
  v100 = v2;
  v102 = v1;
  if ((v10 >> 62) > 1)
  {
    if (v11 != 2)
    {
      memset(v103, 0, 14);
      sub_1CEFE42D4(v2, v1);
      v12 = v103;
      goto LABEL_28;
    }

    v97 = v4;
    v13 = v3;
    v14 = *(v9 + 16);
    v15 = *(v9 + 24);
    sub_1CEFE42D4(v2, v1);
    v16 = sub_1CF9E5498();
    if (v16)
    {
      v17 = v6;
      v18 = sub_1CF9E54C8();
      if (__OFSUB__(v14, v18))
      {
LABEL_67:
        __break(1u);
        goto LABEL_68;
      }

      v19 = v5;
      v16 += v14 - v18;
      v20 = v15 - v14;
      if (!__OFSUB__(v15, v14))
      {
        goto LABEL_8;
      }
    }

    else
    {
      v17 = v6;
      v19 = v5;
      v20 = v15 - v14;
      if (!__OFSUB__(v15, v14))
      {
LABEL_8:
        v21 = sub_1CF9E54B8();
        if (v21 >= v20)
        {
          v22 = v20;
        }

        else
        {
          v22 = v21;
        }

        v23 = &v16[v22];
        if (v16)
        {
          v24 = v23;
        }

        else
        {
          v24 = 0;
        }

        sub_1CF7123EC(v16, v24, &v104);
        v5 = v19;
LABEL_26:
        v6 = v17;
        v3 = v13;
        v4 = v97;
        goto LABEL_29;
      }
    }

    __break(1u);
    goto LABEL_64;
  }

  if (v11)
  {
    v97 = v4;
    v13 = v3;
    v17 = v6;
    v25 = v5;
    v26 = v9;
    v27 = v9 >> 32;
    v28 = v27 - v26;
    if (v27 >= v26)
    {
      sub_1CEFE42D4(v2, v1);
      v29 = sub_1CF9E5498();
      if (v29)
      {
        v30 = sub_1CF9E54C8();
        if (__OFSUB__(v26, v30))
        {
LABEL_69:
          __break(1u);
          goto LABEL_70;
        }

        v29 += v26 - v30;
      }

      v5 = v25;
      v31 = sub_1CF9E54B8();
      if (v31 >= v28)
      {
        v32 = v28;
      }

      else
      {
        v32 = v31;
      }

      v33 = &v29[v32];
      if (v29)
      {
        v34 = v33;
      }

      else
      {
        v34 = 0;
      }

      sub_1CF7123EC(v29, v34, &v104);
      goto LABEL_26;
    }

LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v103[0] = *v8;
  LOWORD(v103[1]) = v10;
  BYTE2(v103[1]) = BYTE2(v10);
  BYTE3(v103[1]) = BYTE3(v10);
  BYTE4(v103[1]) = BYTE4(v10);
  BYTE5(v103[1]) = BYTE5(v10);
  sub_1CEFE42D4(v2, v1);
  v12 = v103 + BYTE6(v10);
LABEL_28:
  sub_1CF7123EC(v103, v12, &v104);
LABEL_29:
  v35 = v104;
  v36 = v105;
  __swift_destroy_boxed_opaque_existential_1(&v106);
  v37 = sub_1CF9E5B48();
  sub_1CEFE4714(v35, v36);
  v108 = v7;
  v109 = MEMORY[0x1E6969078];
  v106 = v3;
  v107 = v6;
  v38 = __swift_project_boxed_opaque_existential_1(&v106, v7);
  v39 = *v38;
  v40 = v38[1];
  v41 = v40 >> 62;
  if ((v40 >> 62) <= 1)
  {
    if (!v41)
    {
      v103[0] = *v38;
      LOWORD(v103[1]) = v40;
      BYTE2(v103[1]) = BYTE2(v40);
      BYTE3(v103[1]) = BYTE3(v40);
      BYTE4(v103[1]) = BYTE4(v40);
      BYTE5(v103[1]) = BYTE5(v40);
      sub_1CEFE42D4(v3, v6);
      v42 = v103 + BYTE6(v40);
LABEL_56:
      sub_1CF7123EC(v103, v42, &v104);
      goto LABEL_57;
    }

    v99 = v4;
    v53 = v5;
    v54 = v39;
    v55 = v39 >> 32;
    v56 = v55 - v54;
    if (v55 >= v54)
    {
      sub_1CEFE42D4(v3, v6);
      v57 = sub_1CF9E5498();
      if (!v57)
      {
LABEL_48:
        v5 = v53;
        v59 = sub_1CF9E54B8();
        if (v59 >= v56)
        {
          v60 = v56;
        }

        else
        {
          v60 = v59;
        }

        v61 = &v57[v60];
        if (v57)
        {
          v62 = v61;
        }

        else
        {
          v62 = 0;
        }

        sub_1CF7123EC(v57, v62, &v104);
        v4 = v99;
        goto LABEL_57;
      }

      v58 = sub_1CF9E54C8();
      if (!__OFSUB__(v54, v58))
      {
        v57 += v54 - v58;
        goto LABEL_48;
      }

LABEL_70:
      __break(1u);
    }

    goto LABEL_65;
  }

  if (v41 != 2)
  {
    memset(v103, 0, 14);
    sub_1CEFE42D4(v3, v6);
    v42 = v103;
    goto LABEL_56;
  }

  v98 = v5;
  v44 = *(v39 + 16);
  v43 = *(v39 + 24);
  sub_1CEFE42D4(v3, v6);
  v45 = sub_1CF9E5498();
  if (v45)
  {
    v46 = sub_1CF9E54C8();
    if (__OFSUB__(v44, v46))
    {
LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

    v45 += v44 - v46;
  }

  v47 = __OFSUB__(v43, v44);
  v48 = v43 - v44;
  if (v47)
  {
    goto LABEL_66;
  }

  v49 = sub_1CF9E54B8();
  if (v49 >= v48)
  {
    v50 = v48;
  }

  else
  {
    v50 = v49;
  }

  v51 = &v45[v50];
  if (v45)
  {
    v52 = v51;
  }

  else
  {
    v52 = 0;
  }

  sub_1CF7123EC(v45, v52, &v104);
  v5 = v98;
LABEL_57:
  v63 = v104;
  v64 = v105;
  __swift_destroy_boxed_opaque_existential_1(&v106);
  v65 = sub_1CF9E5B48();
  sub_1CEFE4714(v63, v64);
  if (v101)
  {

    v66 = sub_1CF9E6888();
    sub_1CEFE4714(v100, v102);
    v4, v67, v68, v69, v70, v71, v72, v73;
    sub_1CEFE4714(v3, v6);
    swift_bridgeObjectRelease_n();
  }

  else
  {
    sub_1CEFE4714(v100, v102);
    v4, v81, v82, v83, v84, v85, v86, v87;
    sub_1CEFE4714(v3, v6);
    0, v88, v89, v90, v91, v92, v93, v94;
    v66 = 0;
  }

  v5, v74, v75, v76, v77, v78, v79, v80;
  v95 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContentVersion:v37 metadataVersion:v65 lastEditorDeviceName:v66];

  return v95;
}

uint64_t FPItemVersionData.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1CF1A91AC(a1, v10);
  v5 = sub_1CF9E5B98();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v8 = v5;
  v9 = v6;
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v8;
  a2[1] = v9;
  return result;
}

double static FPItemVersionData.zero(for:)@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = [objc_opt_self() beforeFirstSyncComponent];
  v6 = sub_1CF9E5B88();
  v8 = v7;

  *&v14 = v6;
  *(&v14 + 1) = v8;
  v13[3] = MEMORY[0x1E6969080];
  v13[4] = MEMORY[0x1E6969078];
  v13[0] = v3;
  v13[1] = v4;
  v9 = __swift_project_boxed_opaque_existential_1(v13, MEMORY[0x1E6969080]);
  v10 = *v9;
  v11 = v9[1];
  sub_1CEFE42D4(v6, v8);
  sub_1CEFE42D4(v3, v4);
  sub_1CF3283DC(v10, v11, &v14);
  sub_1CEFE4714(v6, v8);
  __swift_destroy_boxed_opaque_existential_1(v13);
  result = *&v14;
  *a2 = v14;
  return result;
}

uint64_t sub_1CF327BF0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1CF1A91AC(a1, v10);
  v5 = sub_1CF9E5B98();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v8 = v5;
  v9 = v6;
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v8;
  a2[1] = v9;
  return result;
}

void FPItemVersionData.init(rs:at:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = [a1 dataAtIndex_];
  v6 = sub_1CF9E5B88();
  v8 = v7;

  *a3 = v6;
  a3[1] = v8;
}

uint64_t FPItemVersionData.encode(_:)(void *a1)
{
  v2 = sub_1CF9E5B48();
  v3 = [a1 bindObjectParameter_];

  v4 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  return v4;
}

uint64_t sub_1CF327E40()
{
  v1 = 0x746E65746E6F63;
  if (*v0 != 1)
  {
    v1 = 1852073324;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x617461646174656DLL;
  }
}

uint64_t sub_1CF327E94@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, _TtC18FileProviderDaemon8FSTester *a3@<X1>, int64_t a4@<X2>, int64_t a5@<X3>, void *a6@<X4>, void *a7@<X5>, uint64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_1CF328B0C(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_1CF327EBC(uint64_t a1)
{
  v2 = sub_1CF3287C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CF327EF8(uint64_t a1)
{
  v2 = sub_1CF3287C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t NSFileProviderItemVersionWrapper.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF660, &qword_1CFA01E00);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v29 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF3287C8();
  sub_1CF9E8298();
  if (!v2)
  {
    v36 = a2;
    v39 = 0;
    sub_1CF190888();
    sub_1CF9E7D88();
    v9 = v37;
    v10 = v38;
    v39 = 1;
    sub_1CF9E7D88();
    v11 = v9;
    v35 = v10;
    v12 = v37;
    v13 = v38;
    LOBYTE(v37) = 2;
    v14 = sub_1CF9E7D48();
    v17 = v16;
    v29 = v14;
    v32 = objc_allocWithZone(MEMORY[0x1E69674E8]);
    v30 = sub_1CF9E5B48();
    v31 = v11;
    v33 = v13;
    v34 = v12;
    v18 = v35;
    v19 = sub_1CF9E5B48();
    v20 = sub_1CF9E6888();
    v17, v21, v22, v23, v24, v25, v26, v27;
    v28 = v30;
    v32 = [v32 initWithContentVersion:v30 metadataVersion:v19 lastEditorDeviceName:v20];

    sub_1CEFE4714(v31, v18);
    sub_1CEFE4714(v34, v33);
    (*(v6 + 8))(v8, v5);
    *v36 = v32;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1CF32824C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x1E69E9840];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_1CF3285A8(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_1CEFE4714(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_1CF363A5C(v13, a3, a4, &v12);
  v10 = v4;
  sub_1CEFE4714(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_1CF3283DC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      return sub_1CF9E5B08();
    }

    v4 = a1;
    v5 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_1CF328514(v4, v5);
  }

  if (v3 == 2)
  {
    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
    return sub_1CF328514(v4, v5);
  }

  return sub_1CF9E5B08();
}

uint64_t sub_1CF328514(uint64_t a1, uint64_t a2)
{
  result = sub_1CF9E5498();
  if (!result || (result = sub_1CF9E54C8(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_1CF9E54B8();
      return sub_1CF9E5B08();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1CF3285A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_1CF9E5498();
  v11 = result;
  if (result)
  {
    result = sub_1CF9E54C8();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_1CF9E54B8();
  sub_1CF363A5C(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL sub_1CF328660(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_1CEFE42D4(a3, a4);
          return sub_1CF32824C(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

unint64_t sub_1CF3287C8()
{
  result = qword_1EC4BF668;
  if (!qword_1EC4BF668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BF668);
  }

  return result;
}

unint64_t sub_1CF32881C(void *a1)
{
  a1[2] = sub_1CF328854();
  a1[3] = sub_1CF3288A8();
  result = sub_1CF3288FC();
  a1[4] = result;
  return result;
}

unint64_t sub_1CF328854()
{
  result = qword_1EDEAD668;
  if (!qword_1EDEAD668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEAD668);
  }

  return result;
}

unint64_t sub_1CF3288A8()
{
  result = qword_1EDEAD678[0];
  if (!qword_1EDEAD678[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDEAD678);
  }

  return result;
}

unint64_t sub_1CF3288FC()
{
  result = qword_1EDEAD670;
  if (!qword_1EDEAD670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEAD670);
  }

  return result;
}

uint64_t sub_1CF328960(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1CF3289A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1CF328A08()
{
  result = qword_1EC4BF670;
  if (!qword_1EC4BF670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BF670);
  }

  return result;
}

unint64_t sub_1CF328A60()
{
  result = qword_1EC4BF678;
  if (!qword_1EC4BF678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BF678);
  }

  return result;
}

unint64_t sub_1CF328AB8()
{
  result = qword_1EC4BF680;
  if (!qword_1EC4BF680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BF680);
  }

  return result;
}

uint64_t sub_1CF328B0C(uint64_t a1, _TtC18FileProviderDaemon8FSTester *a2, int64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  v10 = a1 == 0x617461646174656DLL && a2 == 0xE800000000000000;
  if (v10 || (sub_1CF9E8048() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else if (a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000 || (sub_1CF9E8048() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 1;
  }

  else if (a1 == 1852073324 && a2 == 0xE400000000000000)
  {
    0xE400000000000000, a2, a3, a4, a5, a6, a7, a8;
    return 2;
  }

  else
  {
    v12 = sub_1CF9E8048();
    a2, v13, v14, v15, v16, v17, v18, v19;
    if (v12)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1CF328C7C(uint64_t a1, id *a2, uint64_t *a3)
{
  v4 = *a2;
  v5 = sub_1CF9E5B88();
  v7 = v6;

  v8 = sub_1CF9E5B48();
  result = sub_1CEFE4714(v5, v7);
  *a3 = v8;
  return result;
}

uint64_t NSFileProviderPage.description.getter(uint64_t a1)
{
  if (qword_1EDEAB5E8 != -1)
  {
    swift_once();
  }

  v1 = sub_1CF9E5B88();
  v3 = v2;
  v4 = sub_1CF9E5B88();
  v6 = v5;
  v7 = sub_1CF328660(v1, v3, v4, v5);
  sub_1CEFE4714(v4, v6);
  sub_1CEFE4714(v1, v3);
  if (v7)
  {
    return 0xD000000000000017;
  }

  if (qword_1EDEAB5F0 != -1)
  {
    swift_once();
  }

  v9 = sub_1CF9E5B88();
  v11 = v10;
  v12 = sub_1CF9E5B88();
  v14 = v13;
  v15 = sub_1CF328660(v9, v11, v12, v13);
  sub_1CEFE4714(v12, v14);
  sub_1CEFE4714(v9, v11);
  if (v15)
  {
    return 0xD000000000000017;
  }

  v16 = sub_1CF9E5B88();
  v18 = v17;
  FPItemVersionData.description.getter();
  v20 = v19;
  sub_1CEFE4714(v16, v18);
  return v20;
}

uint64_t sub_1CF328E9C(void *a1)
{
  sub_1CF1A91AC(a1, v9);
  v4 = sub_1CF9E5B98();
  if (!v1)
  {
    v6 = v4;
    v7 = v5;
    v2 = sub_1CF9E5B48();
    sub_1CEFE4714(v6, v7);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

uint64_t sub_1CF328F2C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1CF9E5B88();
  v4 = v3;
  sub_1CF9E5BD8();
  return sub_1CEFE4714(v2, v4);
}

uint64_t NSFileProviderSyncAnchor.description.getter(uint64_t a1)
{
  v1 = sub_1CF9E5B88();
  v3 = v2;
  FPItemVersionData.description.getter();
  v5 = v4;
  sub_1CEFE4714(v1, v3);
  return v5;
}

uint64_t sub_1CF328FF0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1CF1A91AC(a1, v11);
  v5 = sub_1CF9E5B98();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v8 = v5;
  v9 = v6;
  v10 = sub_1CF9E5B48();
  sub_1CEFE4714(v8, v9);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v10;
  return result;
}

uint64_t sub_1CF329084()
{
  v0 = sub_1CF9E5B88();
  v2 = v1;
  FPItemVersionData.description.getter();
  v4 = v3;
  sub_1CEFE4714(v0, v2);
  return v4;
}

uint64_t sub_1CF3290E8(void *a1)
{
  v2 = swift_allocObject();
  sub_1CF329138(a1);
  return v2;
}

uint64_t sub_1CF329138(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF6A0, &qword_1CFA023D0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14[-1] - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF329E70();
  sub_1CF9E8298();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for FileProviderPageToken();
    swift_deallocPartialClassInstance();
  }

  else
  {
    type metadata accessor for NSFileProviderItemIdentifier(0);
    v15 = 0;
    sub_1CF04E530(&qword_1EDEAB538, type metadata accessor for NSFileProviderItemIdentifier, &protocol conformance descriptor for NSFileProviderItemIdentifier);
    sub_1CF9E7D88();
    *(v1 + 16) = v14[0];
    v15 = 1;
    sub_1CF190888();
    sub_1CF9E7D88();
    v10 = v14[0];
    v11 = v14[1];
    v12 = sub_1CF9E5B48();
    sub_1CEFE4714(v10, v11);
    *(v3 + 24) = v12;
    sub_1CF9E7CA8();
    __swift_destroy_boxed_opaque_existential_1(v14);
    (*(v6 + 8))(v8, v5);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v3;
}

uint64_t sub_1CF329408()
{
  if (*v0)
  {
    return 1701273968;
  }

  else
  {
    return 0x726F746365726964;
  }
}

void sub_1CF329444(uint64_t a1@<X0>, _TtC18FileProviderDaemon8FSTester *a2@<X1>, char *a3@<X8>, int64_t a4@<X2>, int64_t a5@<X3>, void *a6@<X4>, void *a7@<X5>, uint64_t a8@<X6>, void *a9@<X7>)
{
  v12 = 0xEB00000000444979;
  v13 = a1 == 0x726F746365726964 && a2 == 0xEB00000000444979;
  if (v13 || (sub_1CF9E8048() & 1) != 0)
  {
    a2, v12, a4, a5, a6, a7, a8, a9;
    v14 = 0;
  }

  else if (a1 == 1701273968 && a2 == 0xE400000000000000)
  {
    0xE400000000000000, v12, a4, a5, a6, a7, a8, a9;
    v14 = 1;
  }

  else
  {
    v15 = sub_1CF9E8048();
    a2, v16, v17, v18, v19, v20, v21, v22;
    if (v15)
    {
      v14 = 1;
    }

    else
    {
      v14 = 2;
    }
  }

  *a3 = v14;
}

uint64_t sub_1CF329524(uint64_t a1)
{
  v2 = sub_1CF329E70();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CF329560(uint64_t a1)
{
  v2 = sub_1CF329E70();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CF32959C(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE1F0, &qword_1CF9FCCD0);
  v15 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v14 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF698, &qword_1CFA023C8);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF329E70();
  sub_1CF9E82A8();
  v17 = *(v2 + 16);
  v20 = 0;
  type metadata accessor for NSFileProviderItemIdentifier(0);
  sub_1CF04E530(&qword_1EDEAB558, type metadata accessor for NSFileProviderItemIdentifier, &protocol conformance descriptor for NSFileProviderItemIdentifier);
  v11 = v16;
  sub_1CF9E7F08();
  if (v11)
  {
    return (*(v8 + 8))(v10, v7);
  }

  v16 = v4;
  v17 = sub_1CF9E5B88();
  v18 = v12;
  v20 = 1;
  sub_1CF190A74();
  sub_1CF9E7F08();
  sub_1CEFE4714(v17, v18);
  sub_1CF9E7E28();
  __swift_project_boxed_opaque_existential_1(&v17, v19);
  sub_1CF1D6D18();
  sub_1CF9E82A8();
  (*(v15 + 8))(v6, v16);
  (*(v8 + 8))(v10, v7);
  return __swift_destroy_boxed_opaque_existential_1(&v17);
}

uint64_t sub_1CF329894()
{
  v1 = NSFileProviderItemIdentifier.description.getter(*(v0 + 16));
  v3 = v2;
  MEMORY[0x1D3868CC0](v1);
  v3, v4, v5, v6, v7, v8, v9, v10;
  MEMORY[0x1D3868CC0](0x7B3A6567617020, 0xE700000000000000);
  v11 = NSFileProviderPage.description.getter(*(v0 + 24));
  v13 = v12;
  MEMORY[0x1D3868CC0](v11);
  v13, v14, v15, v16, v17, v18, v19, v20;
  MEMORY[0x1D3868CC0](125, 0xE100000000000000);
  return 3826793;
}

void sub_1CF32993C()
{
  v1 = *(v0 + 24);
}

uint64_t sub_1CF32996C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

id sub_1CF3299E8()
{
  if (qword_1EDEAB5F0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDEBBA38;
  qword_1EDEBB820 = qword_1EDEBBA38;
  *algn_1EDEBB828 = 0;

  return v1;
}

void sub_1CF329A50(uint64_t a1@<X0>, _TtC18FileProviderDaemon8FSTester *a2@<X1>, char *a3@<X8>, int64_t a4@<X2>, int64_t a5@<X3>, void *a6@<X4>, void *a7@<X5>, uint64_t a8@<X6>, void *a9@<X7>)
{
  v11 = a1 == 1701273968 && a2 == 0xE400000000000000;
  if (v11 || (sub_1CF9E8048() & 1) != 0)
  {
    a2, a2, a4, a5, a6, a7, a8, a9;
    v13 = 0;
  }

  else if (a1 == 0x726F68636E61 && a2 == 0xE600000000000000)
  {
    0xE600000000000000, a2, a4, a5, a6, a7, a8, a9;
    v13 = 1;
  }

  else
  {
    v14 = sub_1CF9E8048();
    a2, v15, v16, v17, v18, v19, v20, v21;
    if (v14)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }
  }

  *a3 = v13;
}

uint64_t sub_1CF329B28(uint64_t a1)
{
  v2 = sub_1CF04F0B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CF329B64(uint64_t a1)
{
  v2 = sub_1CF04F0B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CF329BA0@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1CF329C1C(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

uint64_t sub_1CF329C1C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF688, &qword_1CFA023B0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF04F0B8();
  sub_1CF9E8298();
  type metadata accessor for NSFileProviderPage(0);
  HIBYTE(v8) = 0;
  sub_1CF04E530(&qword_1EDEA3620, type metadata accessor for NSFileProviderPage, &protocol conformance descriptor for NSFileProviderPage);
  sub_1CF9E7CF8();
  v7 = v9;
  type metadata accessor for NSFileProviderSyncAnchor(0);
  HIBYTE(v8) = 1;
  sub_1CF04E530(&qword_1EDEA3530, type metadata accessor for NSFileProviderSyncAnchor, &protocol conformance descriptor for NSFileProviderSyncAnchor);
  sub_1CF9E7CF8();
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v7;
}

unint64_t sub_1CF329E70()
{
  result = qword_1EDEAB010;
  if (!qword_1EDEAB010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEAB010);
  }

  return result;
}

unint64_t sub_1CF329EE8()
{
  result = qword_1EC4BF6A8;
  if (!qword_1EC4BF6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BF6A8);
  }

  return result;
}

unint64_t sub_1CF329F40()
{
  result = qword_1EC4BF6B0;
  if (!qword_1EC4BF6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BF6B0);
  }

  return result;
}

unint64_t sub_1CF329F98()
{
  result = qword_1EDEAB000;
  if (!qword_1EDEAB000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEAB000);
  }

  return result;
}

unint64_t sub_1CF329FF0()
{
  result = qword_1EDEAB008;
  if (!qword_1EDEAB008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEAB008);
  }

  return result;
}

unint64_t sub_1CF32A048()
{
  result = qword_1EDEA5AB8;
  if (!qword_1EDEA5AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA5AB8);
  }

  return result;
}

unint64_t sub_1CF32A0A0()
{
  result = qword_1EDEA5AC0;
  if (!qword_1EDEA5AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA5AC0);
  }

  return result;
}

uint64_t sub_1CF32A13C(uint64_t a1, uint64_t a2, void *a3)
{
  v40 = *MEMORY[0x1E69E9840];
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1CF32A8C4;
  *(v7 + 24) = v6;
  v38 = sub_1CEFE75B8;
  v39 = v7;
  aBlock = MEMORY[0x1E69E9820];
  v35 = 1107296256;
  v36 = sub_1CEFE7548;
  v37 = &block_descriptor_13;
  v8 = _Block_copy(&aBlock);

  aBlock = 0;
  v9 = [a3 fetchSwift:v8 error:&aBlock];
  _Block_release(v8);
  v10 = aBlock;
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  if (v9)
  {
    v12 = 0xA3A6E616C70;
    aBlock = 0xA3A6E616C70;
    v35 = 0xE600000000000000;
    if ([v9 next])
    {
      do
      {
        v13 = objc_autoreleasePoolPush();
        v14 = [v9 stringAtIndex_];
        v15 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v17 = v16;

        MEMORY[0x1D3868CC0](v15, v17);
        v17, v18, v19, v20, v21, v22, v23, v24;
        MEMORY[0x1D3868CC0](10, 0xE100000000000000);
        MEMORY[0x1D3868CC0](538976288, 0xE400000000000000);
        0xE400000000000000, v25, v26, v27, v28, v29, v30, v31;
        objc_autoreleasePoolPop(v13);
      }

      while (([v9 next] & 1) != 0);
      v12 = aBlock;
    }
  }

  else
  {
    v32 = sub_1CF9E57F8();

    swift_willThrow();

    return 0xD000000000000016;
  }

  return v12;
}

unint64_t sub_1CF32A40C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1CF9E7948();
  0xE000000000000000, v5, v6, v7, v8, v9, v10, v11;
  MEMORY[0x1D3868CC0](a2, a3);
  return 0xD000000000000013;
}

id sub_1CF32A4EC()
{
  v1 = OBJC_IVAR____TtC18FileProviderDaemon27PQLConnectionWithStatistics_dbStatistics;
  *&v0[OBJC_IVAR____TtC18FileProviderDaemon27PQLConnectionWithStatistics_dbStatistics] = 0;
  if (os_variant_has_internal_content() && (v2 = objc_allocWithZone(MEMORY[0x1E695E000]), v3 = sub_1CF9E6888(), v4 = [v2 initWithSuiteName_], v3, v4) && (v5 = sub_1CF9E6888(), v6 = objc_msgSend(v4, sel_BOOLForKey_, v5), v5, v4, v6))
  {
    v7 = sub_1CF4E308C(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v7 = 0;
  }

  swift_beginAccess();
  v8 = *&v0[v1];
  *&v0[v1] = v7;
  v8, v9, v10, v11, v12, v13, v14, v15;
  v16 = [objc_opt_self() defaultStore];
  v17 = [v16 sqlDatabaseStatementWarnTime];

  *&v0[OBJC_IVAR____TtC18FileProviderDaemon27PQLConnectionWithStatistics_maxQueryExecutionTime] = v17;
  v19.receiver = v0;
  v19.super_class = type metadata accessor for PQLConnectionWithStatistics();
  return objc_msgSendSuper2(&v19, sel_init);
}

void sub_1CF32A694(char a1)
{
  if ((a1 & 1) != 0 && (v2 = OBJC_IVAR____TtC18FileProviderDaemon27PQLConnectionWithStatistics_dbStatistics, swift_beginAccess(), (v3 = *&v1[v2]) != 0))
  {
    v48 = v2;
    *&v1[v2] = 0;
    v4 = 1 << *(v3 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(v3 + 64);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    while (v6)
    {
LABEL_13:
      v26 = __clz(__rbit64(v6)) | (v8 << 6);
      v27 = (*(v3 + 48) + 16 * v26);
      v29 = *v27;
      v28 = v27[1];
      v30 = *(*(v3 + 56) + 8 * v26);

      v31 = v30;
      v32 = [v31 queryPlan];
      if (v32)
      {
        v17 = v32;
        v28, v33, v34, v35, v36, v37, v38, v39;
      }

      else
      {
        sub_1CF32A13C(v29, v28, v1);
        v10 = v9;
        v28, v9, v11, v12, v13, v14, v15, v16;
        v17 = sub_1CF9E6888();
        v10, v18, v19, v20, v21, v22, v23, v24;
        [v31 setQueryPlan_];
      }

      v6 &= v6 - 1;
    }

    while (1)
    {
      v25 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v25 >= v7)
      {

        v40 = *&v1[v48];
        *&v1[v48] = v3;
        v40, v41, v42, v43, v44, v45, v46, v47;
        goto LABEL_16;
      }

      v6 = *(v3 + 64 + 8 * v25);
      ++v8;
      if (v6)
      {
        v8 = v25;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:
    swift_beginAccess();
  }
}

id sub_1CF32A85C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PQLConnectionWithStatistics();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1CF32A97C()
{
  v1 = *(v0 + 16);
  if (v1 <= 0xFB)
  {
    return 0;
  }

  else
  {
    return 4 - (v1 + 4);
  }
}

unint64_t sub_1CF32A998(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CF9FA450;
  *(inited + 32) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  *(inited + 40) = v6;
  sub_1CF338150(v2, v3, v4);
  v7 = sub_1CF9E6948();
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v7;
  *(inited + 56) = v8;
  v9 = sub_1CF4E04E8(inited);
  swift_setDeallocating();
  sub_1CEFCCC44(inited + 32, &unk_1EC4BE300, &unk_1CF9FC5D0);
  return v9;
}

uint64_t sub_1CF32AA84(uint64_t a1)
{
  v2 = sub_1CF338AD4();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1CF32AAC0(uint64_t a1)
{
  v2 = sub_1CF338AD4();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

BOOL sub_1CF32AAFC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 - 8);
  v4 = MEMORY[0x1EEE9AC00](a1);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v7, a1, v4);
  v8 = sub_1CF9E7FB8();
  if (v8)
  {
    v9 = v8;
    (*(v3 + 8))(v6, a1);
  }

  else
  {
    v9 = swift_allocError();
    (*(v3 + 32))(v10, v6, a1);
  }

  v11 = sub_1CF337FA0(0, 0, 3, v9);

  return v11;
}

void sub_1CF32AC50()
{
  v0 = objc_allocWithZone(MEMORY[0x1E698E478]);
  v1 = sub_1CF9E6888();
  v2 = [v0 initWithIdentifier_];

  v3 = v2;
  [v3 setPriority_];
  [v3 setScheduleAfter_];
  [v3 setTrySchedulingBefore_];
  [v3 setRequiresExternalPower_];
  [v3 setRequiresInexpensiveNetworkConnectivity_];
  v4 = [objc_allocWithZone(FPDSharedSystemScheduler) initWithTaskRequest:v3 options:0];

  qword_1EDEBBA80 = v4;
}

void sub_1CF32AD5C()
{
  v0 = objc_allocWithZone(MEMORY[0x1E698E490]);
  v1 = sub_1CF9E6888();
  v2 = [v0 initWithIdentifier_];

  v3 = v2;
  [v3 setPriority_];
  [v3 setInterval_];
  [v3 setMinDurationBetweenInstances_];
  [v3 setRequiresExternalPower_];
  [v3 setRequiresInexpensiveNetworkConnectivity_];
  v4 = [objc_allocWithZone(FPDSharedSystemScheduler) initWithTaskRequest:v3 options:0];

  qword_1EDEBBA88 = v4;
}

void sub_1CF32AE74()
{
  v0 = objc_allocWithZone(MEMORY[0x1E698E478]);
  v1 = sub_1CF9E6888();
  v2 = [v0 initWithIdentifier_];

  v3 = v2;
  [v3 setPriority_];
  [v3 setScheduleAfter_];
  [v3 setTrySchedulingBefore_];
  [v3 setRequiresProtectionClass_];
  v4 = [objc_allocWithZone(FPDSharedSystemScheduler) initWithTaskRequest:v3 options:0];

  qword_1EDEBBB20 = v4;
}

unint64_t sub_1CF32AF64(uint64_t a1, _TtC18FileProviderDaemon8FSTester *a2)
{
  v3 = sub_1CF9E7C78();
  a2, v4, v5, v6, v7, v8, v9, v10;
  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1CF32AFB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8[0] = a1;
  v8[1] = a2;
  v8[2] = a3;
  v8[3] = a4;
  v4 = _s9SQLFieldsOMa_3(255, v8);
  sub_1CF9E7FA8();
  swift_allocObject();
  v5 = sub_1CF9E6D68();
  *v6 = 256;
  *(v6 + 2) = 2;
  return sub_1CF045898(v5, v4);
}

uint64_t sub_1CF32B024(char a1)
{
  if (!a1)
  {
    return 1684957547;
  }

  if (a1 == 1)
  {
    return 0x64695F6D657469;
  }

  return 0x657079745F626F6ALL;
}

uint64_t sub_1CF32B074(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();

  return sub_1CF9E8088();
}

uint64_t sub_1CF32B0E8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69348](a1, a2, WitnessTable, v5);
}

uint64_t sub_1CF32B154(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69358](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1CF32B1C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69350](a1, a2, a3, WitnessTable, v7);
}

unint64_t sub_1CF32B234@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1CF32AF64(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1CF32B264@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1CF32B024(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1CF32B290@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1CF32AFB0(a1[2], a1[3], a1[4], a1[5]);
  *a2 = result;
  return result;
}

uint64_t sub_1CF32B2C4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();
  v3 = swift_getWitnessTable();

  return sub_1CF382150(a1, WitnessTable, v3);
}

uint64_t sub_1CF32B344(char a1, void *a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = sub_1CF9E75D8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v22 - v10;
  if (!a1)
  {
    sub_1CF050DB4(a3);
    v23 = 0;
    v14 = *(a3 + 40);
    *&v24[0] = v6;
    *(v24 + 8) = *(a3 + 24);
    *(&v24[1] + 1) = v14;
    v15 = type metadata accessor for ThrottlingKey.Kind(0, v24);
    WitnessTable = swift_getWitnessTable();
    return sub_1CF04EAEC(&v23, v15, WitnessTable);
  }

  if (a1 == 1)
  {
    v12 = v9;
    sub_1CF050EC8(a3, v11);
    v13 = Optional<A>.encode(_:)(a2, v12, *(*(a3 + 32) + 8));
    (*(v8 + 8))(v11, v12);
  }

  else
  {
    v18 = sub_1CF051078(a3);
    if (v18 == 89)
    {
      memset(v24, 0, sizeof(v24));
    }

    else
    {
      v19 = qword_1CFA02AA8[v18];
      *(&v24[1] + 1) = MEMORY[0x1E69E6530];
      *&v24[0] = v19;
    }

    v13 = sub_1CEFF8EA0(v24);
    v21 = v20;
    sub_1CEFCCC44(v24, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    if (!v21)
    {
      result = sub_1CF9E7B68();
      __break(1u);
      return result;
    }
  }

  return v13;
}

uint64_t sub_1CF32B598@<X0>(char a1@<W0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v34 = a8;
  v16 = sub_1CF9E75D8();
  *&v19 = MEMORY[0x1EEE9AC00](v16).n128_u64[0];
  v21 = v33 - v20;
  if (a1)
  {
    if (a1 == 1)
    {
      v22 = v18;
      v23 = v17;
      result = Optional<A>.init(rs:at:)(a2, a3, a4, *(a6 + 8), v21);
      if (!v8)
      {
        v25 = *(a4 - 8);
        if ((*(v25 + 48))(v21, 1, a4) == 1)
        {
          result = (*(v22 + 8))(v21, v23);
          v26 = v34;
          *v34 = 0u;
          *(v26 + 1) = 0u;
        }

        else
        {
          v31 = v34;
          v34[3] = a4;
          boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v31);
          return (*(v25 + 32))(boxed_opaque_existential_0, v21, a4);
        }
      }
    }

    else
    {
      result = [a2 isNullAtIndex_];
      v29 = v34;
      if (result)
      {
        *v34 = 0u;
        *(v29 + 1) = 0u;
      }

      else
      {
        result = sub_1CF043D7C([a2 longAtIndex_]);
        if (result == 89)
        {
          sub_1CF1DA5D8();
          swift_allocError();
          *v30 = 0;
          return swift_willThrow();
        }

        else
        {
          v29[3] = &type metadata for JobCode;
          *v29 = result;
        }
      }
    }
  }

  else
  {
    v33[0] = a4;
    v33[1] = a5;
    v33[2] = a6;
    v33[3] = a7;
    v27 = type metadata accessor for ThrottlingKey.Kind(0, v33);
    v28 = v34;
    v34[3] = v27;
    swift_getWitnessTable();
    result = sub_1CF4C1A28(a3, v27, v28);
    if (v8)
    {
      return __swift_deallocate_boxed_opaque_existential_0(v28);
    }
  }

  return result;
}

uint64_t sub_1CF32B86C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v55 = a7;
  v57 = a4;
  v58 = a2;
  v49 = a6;
  v50 = a8;
  v53 = a3;
  v59 = a3;
  v60 = a5;
  v48 = a5;
  v61 = a6;
  type metadata accessor for ThrottlingKey.Kind(255, &v58);
  v10 = sub_1CF9E75D8();
  v11 = sub_1CF9E75D8();
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BF730, &qword_1CF9FF048);
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v51 = *(TupleTypeMetadata3 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata3);
  v15 = &v46 - v14;
  v52 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v46 - v20;
  LOBYTE(v58) = 0;
  v22 = v10;
  v23 = v56;
  v24 = v10;
  v25 = v55;
  v54 = a1;
  result = sub_1CF0230B4(&v58, v22, v57, v24, v55);
  if (!v23)
  {
    v46 = v18;
    v47 = v15;
    v56 = TupleTypeMetadata3;
    v27 = v53;
    v28 = v63;
    LOBYTE(v58) = 1;
    sub_1CF0230B4(&v58, v11, v57, v11, v25);
    v29 = v11;
    LOBYTE(v58) = 2;
    sub_1CF0230B4(&v58, v12, v57, v12, v25);
    v30 = v62;
    v31 = *(v56 + 48);
    v32 = *(v56 + 64);
    v33 = v29;
    v34 = v47;
    *v47 = v28;
    v35 = v21;
    v36 = v30;
    v37 = v33;
    (*(v52 + 32))(&v34[v31], v35);
    v34[v32] = v36;
    v38 = v34;
    if ((v28 & 1) == 0)
    {
      v39 = a2;
      v40 = *(a2 - 8);
      if ((*(v40 + 48))(&v38[v31], 1, v39) != 1)
      {
        v41 = v46;
        (*(v52 + 16))(v46, &v38[v31], v37);
        if (v36 != 89)
        {
          v58 = v39;
          v59 = v27;
          v60 = v48;
          v61 = v49;
          type metadata accessor for ReconciliationID(255, &v58);
          v57 = v39;
          v43 = *(swift_getTupleTypeMetadata2() + 48);
          v44 = v37;
          v45 = v50;
          (*(v40 + 32))(v50, v41, v57);
          swift_storeEnumTagMultiPayload();
          *(v45 + v43) = v36;
          return (*(v52 + 8))(&v47[v31], v44);
        }

        (*(v40 + 8))(v41, v39);
      }
    }

    sub_1CF1DA5D8();
    swift_allocError();
    *v42 = 0;
    swift_willThrow();
    return (*(v51 + 8))(v38, v56);
  }

  return result;
}

id sub_1CF32BD2C(uint64_t a1)
{
  v1 = *(a1 + 88);

  v2 = sub_1CF9E6888();
  v1, v3, v4, v5, v6, v7, v8, v9;

  return v2;
}

void sub_1CF32BD80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v12 = *(a1 + 88);
  *(a1 + 80) = v4;
  *(a1 + 88) = v5;

  v12, v5, v6, v7, v8, v9, v10, v11;
}

uint64_t sub_1CF32BDC4()
{
  if ((*(v0 + 112) & 1) == 0)
  {
    dispatch_group_leave(*(v0 + 152));
  }

  if (*(v0 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1CF9E7448();
    swift_unknownObjectRelease();
    if (*(v0 + 16))
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_1CF9E7418();
      swift_unknownObjectRelease();
    }
  }

  *(v0 + 16) = 0;
  result = swift_unknownObjectRelease();
  *(v0 + 104) = 0;
  *(v0 + 112) = 1;
  return result;
}

double sub_1CF32BE74(void *a1)
{
  v3 = [a1 label];
  v4 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v6 = v5;
  if (qword_1EDEAC3C8 != -1)
  {
    swift_once();
  }

  v7 = qword_1EDEBBA88;
  v8 = [qword_1EDEBBA88 label];
  v9 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v11 = v10;

  if (v9 == v4 && v11 == v6)
  {
    v6, v12, v13, v14, v15, v16, v17, v18;

    v11, v35, v36, v37, v38, v39, v40, v41;
    goto LABEL_10;
  }

  v20 = sub_1CF9E8048();
  v11, v21, v22, v23, v24, v25, v26, v27;
  if (v20)
  {
    v6, v28, v29, v30, v31, v32, v33, v34;

LABEL_10:

    [v7 markWatcherDone_];
    return result;
  }

  if (v4 == 0xD000000000000025 && 0x80000001CFA3FF80 == v6)
  {

    v6, v43, v44, v45, v46, v47, v48, v49;
    v50 = *(v1 + 136);
    if (!v50)
    {
      return result;
    }

    goto LABEL_19;
  }

  v51 = sub_1CF9E8048();
  v6, v52, v53, v54, v55, v56, v57, v58;
  if ((v51 & 1) == 0)
  {
    v64 = a1;
    sub_1CF515660();
  }

  v50 = *(v1 + 136);
  if (v50)
  {
LABEL_19:
    v59 = *(v1 + 144);

    v61 = v1;
    v62 = v50(v60);
    sub_1CEFF7124(v50, v59);
    if (v62)
    {
      v63 = *(*v62 + 416);

      v63("sharedSchedulerCanRun(_:)", 25, 2, 0, sub_1CF045408, 0, nullsub_1, 0, sub_1CF3389A4, v61);
    }
  }

  return result;
}

uint64_t sub_1CF32C168(void *a1, _BYTE *a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_1CF9E75D8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  a2[162] = 0;
  if (qword_1EDEACB30 != -1)
  {
    swift_once();
  }

  [qword_1EDEBBB20 removeWatcher_];
  v9 = a1[3];
  v10 = a1[4];
  v11 = __swift_project_boxed_opaque_existential_1(a1, v9);
  (*(*(AssociatedTypeWitness - 8) + 56))(v8, 1, 1, AssociatedTypeWitness);
  sub_1CF32C350(9, 0, 0, v8, v11, v9, v10);
  return (*(v6 + 8))(v8, v5);
}

void sub_1CF32C350(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v38 = a5;
  v14 = *v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE7E0, &qword_1CF9FE6B0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1CF9FA450;
  *(v15 + 32) = a1;
  v39 = v15;
  if (a1 == 11)
  {
    v15 = sub_1CF1F65A8(1, 2, 1, v15, v16, v17, v18, v19);
    *(v15 + 16) = 2;
    v20 = 12;
    goto LABEL_5;
  }

  if (a1 == 5)
  {
    v15 = sub_1CF1F65A8(1, 2, 1, v15, v16, v17, v18, v19);
    *(v15 + 16) = 2;
    v20 = 10;
LABEL_5:
    *(v15 + 33) = v20;
    v39 = v15;
  }

  MEMORY[0x1EEE9AC00](v15);
  v21 = *(v14 + 96);
  v30 = *(v14 + 80);
  v31 = a6;
  v32 = v21;
  v33 = a7;
  v34 = &v39;
  v35 = a2;
  v36 = a3;
  v37 = a4;
  sub_1CF32E010(0, 1, v38, sub_1CF338524, &v29, a6, a7);
  v39, v22, v23, v24, v25, v26, v27, v28;
}

double sub_1CF32C4E4(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;

  sub_1CF32BE74(v3);

  return result;
}

void sub_1CF32C538(char a1, char *a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 97) = a1;
  if (a1)
  {
    sub_1CF32BDC4();
  }

  else
  {
    sub_1CF32C57C(a2, a3, a4);
  }
}

void sub_1CF32C57C(char *a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v6 = v3;
  v221 = a1;
  v213 = *v3;
  v9 = sub_1CF9E6448();
  v215 = *(v9 - 8);
  v216 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v214 = &v206 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1CF9E73D8();
  v218 = *(v11 - 8);
  v219 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v217 = &v206 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1CF9E5CF8();
  v220 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v206 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v222 = sub_1CF9E6118();
  v16 = *(v222 - 8);
  MEMORY[0x1EEE9AC00](v222);
  v18 = &v206 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  MEMORY[0x1EEE9AC00](v20);
  MEMORY[0x1EEE9AC00](v21);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v206 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v31 = &v206 - v30;
  if (*(v6 + 97) == 1)
  {
    v32 = fpfs_current_or_default_log();
    sub_1CF9E6128();

    v33 = sub_1CF9E6108();
    v34 = sub_1CF9E7298();
    v35 = v6;
    if (os_log_type_enabled(v33, v34))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v223 = v37;
      *v36 = 136446210;
      v38 = *(v35 + 24);

      if (v38)
      {
        v39 = 20550;
      }

      else
      {
        v39 = 21318;
      }

      v40 = sub_1CEFD0DF0(v39, 0xE200000000000000, &v223);
      0xE200000000000000, v41, v42, v43, v44, v45, v46, v47;
      *(v36 + 4) = v40;
      _os_log_impl(&dword_1CEFC7000, v33, v34, "⏳  %{public}s: retries are disabled", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v37);
      MEMORY[0x1D386CDC0](v37, -1, -1);
      MEMORY[0x1D386CDC0](v36, -1, -1);
    }

    else
    {
    }

    (*(v16 + 8))(v31, v222);
    return;
  }

  v209 = v28;
  v210 = v24;
  v208 = v29;
  v211 = v27;
  v212 = v16;
  v48 = MEMORY[0x1EEE9AC00](v26);
  *(&v206 - 4) = a2;
  *(&v206 - 3) = a3;
  *(&v206 - 2) = v6;
  v49 = (*(a3 + 24))(sub_1CF3387F0, v48);
  if (v5)
  {
    return;
  }

  v50 = v49;
  v51 = 0;
  if (![v49 next] || (objc_msgSend(v50, sel_isNullAtIndex_, 0) & 1) != 0)
  {
    v52 = v50;
    v53 = fpfs_current_or_default_log();
    sub_1CF9E6128();

    v54 = sub_1CF9E6108();
    v55 = sub_1CF9E7298();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v223 = v57;
      *v56 = 136446210;
      v58 = *(v6 + 24);

      if (v58)
      {
        v59 = 20550;
      }

      else
      {
        v59 = 21318;
      }

      v60 = sub_1CEFD0DF0(v59, 0xE200000000000000, &v223);
      0xE200000000000000, v61, v62, v63, v64, v65, v66, v67;
      *(v56 + 4) = v60;
      _os_log_impl(&dword_1CEFC7000, v54, v55, "⏳  %{public}s: no pending throttles", v56, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v57);
      MEMORY[0x1D386CDC0](v57, -1, -1);
      MEMORY[0x1D386CDC0](v56, -1, -1);
    }

    else
    {
    }

    (*(v212 + 8))(v18, v222);
    sub_1CF32BDC4();

    return;
  }

  v206 = a2;
  v207 = a3;
  v68 = v50;
  v221 = [v50 longAtIndex_];
  v69 = v212;
  v70 = v6;
  if (v221 != 0x7FFFFFFFFFFFFFFFLL)
  {
    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v89 = v88;
    (*(v220 + 8))(v15, v13);
    v90 = v89 * 1000000000.0;
    if (COERCE__INT64(fabs(v89 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v90 > -9.22337204e18)
    {
      v220 = 0;
      if (v90 < 9.22337204e18)
      {
        v91 = v90;
        if ((v6[14] & 1) == 0 && v221 == v6[13])
        {
          v92 = fpfs_current_or_default_log();
          v93 = v209;
          sub_1CF9E6128();

          v94 = sub_1CF9E6108();
          v95 = sub_1CF9E7298();
          if (!os_log_type_enabled(v94, v95))
          {

            (*(v69 + 8))(v93, v222);
            return;
          }

          v96 = v68;
          v97 = swift_slowAlloc();
          v98 = swift_slowAlloc();
          v225 = v98;
          *v97 = 136446466;
          v99 = *(v70 + 24);

          if (v99)
          {
            v100 = 20550;
          }

          else
          {
            v100 = 21318;
          }

          v101 = sub_1CEFD0DF0(v100, 0xE200000000000000, &v225);
          0xE200000000000000, v102, v103, v104, v105, v106, v107, v108;
          *(v97 + 4) = v101;
          *(v97 + 12) = 2082;
          v109 = &v221[-v91];
          if (!__OFSUB__(v221, v91))
          {
            if ((v109 & 0x8000000000000000) == 0)
            {
              v110 = 0;
              v111 = 0xE000000000000000;
LABEL_77:
              v187 = sub_1CF04F854(v109);
              v189 = v188;
              v223 = v110;
              v224 = v111;
              MEMORY[0x1D3868CC0](v187);
              v189, v190, v191, v192, v193, v194, v195, v196;
              v197 = v224;
              v198 = sub_1CEFD0DF0(v223, v224, &v225);
              v197, v199, v200, v201, v202, v203, v204, v205;
              *(v97 + 14) = v198;
              _os_log_impl(&dword_1CEFC7000, v94, v95, "⏳  %{public}s: schedule throttling unchanged in %{public}s", v97, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x1D386CDC0](v98, -1, -1);
              MEMORY[0x1D386CDC0](v97, -1, -1);

              (*(v69 + 8))(v209, v222);
              return;
            }

            v165 = __OFSUB__(0, v109);
            v109 = v91 - v221;
            if (!v165)
            {
              v111 = 0xE100000000000000;
              v110 = 45;
              goto LABEL_77;
            }

            goto LABEL_87;
          }

LABEL_86:
          __break(1u);
LABEL_87:
          __break(1u);
          goto LABEL_88;
        }

        if ((v6[16] & 1) == 0 && v6[15] >= v221 && ((v112 = fpfs_current_or_default_log(), v113 = v208, sub_1CF9E6128(), , v114 = sub_1CF9E6108(), v115 = sub_1CF9E7298(), !os_log_type_enabled(v114, v115)) ? (v114, , v129 = v69) : ((v116 = swift_slowAlloc(), v221 = swift_slowAlloc(), v223 = v221, *v116 = 136446210, v117 = *(v6 + 24), , v118 = v117 == 0, v70 = v6, v118) ? (v119 = 21318) : (v119 = 20550), v120 = sub_1CEFD0DF0(v119, 0xE200000000000000, &v223), 0xE200000000000000, v121, v122, v123, v124, v125, v126, v127, *(v116 + 4) = v120, _os_log_impl(&dword_1CEFC7000, v114, v115, "⏳  %{public}s: asking to reschedule throttling at the same time as before, adding 1s of leeway", v116, 0xCu), v128 = v221, __swift_destroy_boxed_opaque_existential_1(v221), MEMORY[0x1D386CDC0](v128, -1, -1), MEMORY[0x1D386CDC0](v116, -1, -1), v114, v129 = v212), (*(v129 + 8))(v113, v222), v221 = (v91 + 1000000000), __OFADD__(v91, 1000000000)))
        {
          __break(1u);
        }

        else
        {
          dispatch_group_enter(v70[19]);
          sub_1CF32BDC4();
          v70[13] = v221;
          *(v70 + 112) = 0;
          v130 = v70[17];
          if (!v130)
          {
LABEL_88:
            __break(1u);
            return;
          }

          v210 = v91;
          v131 = v70[18];

          v133 = v130(v132);
          v134 = sub_1CEFF7124(v130, v131);
          v51 = v68;
          if (v133)
          {
            v135 = (*(*v133 + 168))(v134);
          }

          else
          {
            v135 = 0;
          }

          sub_1CEFD57E0(0, &qword_1EDEAED60, 0x1E69E9630);
          v223 = MEMORY[0x1E69E7CC0];
          sub_1CF3387FC();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE3A0, &qword_1CFA006D0);
          sub_1CEFCCCEC(&qword_1EDEAB650, &qword_1EC4BE3A0, &qword_1CFA006D0, MEMORY[0x1E69E6328]);
          v136 = v217;
          v137 = v219;
          sub_1CF9E77B8();
          v138 = sub_1CF9E73E8();

          (*(v218 + 8))(v136, v137);
          v70[2] = v138;
          swift_unknownObjectRelease();
          if (v70[2])
          {
            ObjectType = swift_getObjectType();
            v140 = swift_allocObject();
            swift_weakInit();
            v141 = swift_allocObject();
            v142 = v213;
            v141[2] = v213[10];
            v143 = v206;
            v141[3] = v142[11];
            v141[4] = v143;
            v141[5] = v142[12];
            v144 = v207;
            v141[6] = v142[13];
            v141[7] = v144;
            v141[8] = v140;
            swift_unknownObjectRetain();

            v145 = v214;
            sub_1CF042F9C();
            sub_1CEFD5828(0, v145, sub_1CF338854, v141, ObjectType);
            swift_unknownObjectRelease();

            (*(v215 + 8))(v145, v216);
          }

          v146 = fpfs_current_or_default_log();
          v147 = v211;
          sub_1CF9E6128();

          v148 = sub_1CF9E6108();
          v149 = sub_1CF9E7288();
          if (!os_log_type_enabled(v148, v149))
          {

            (*(v212 + 8))(v147, v222);
LABEL_67:
            if (!v70[2])
            {
              goto LABEL_71;
            }

            swift_getObjectType();
            swift_unknownObjectRetain();
            v185 = dispatch_time(0x8000000000000000, 0);
            if (!__OFSUB__(v221, v210))
            {
              v186 = dispatch_time(v185, v221 - v210);
              sub_1CF4FBB4C(v186);
              swift_unknownObjectRelease();
              if (v70[2])
              {
                swift_getObjectType();
                swift_unknownObjectRetain();
                sub_1CF9E7428();
                swift_unknownObjectRelease();
              }

LABEL_71:
              if (*(v70 + 161))
              {

                return;
              }

              *(v70 + 161) = 1;
              if (qword_1EDEAC3C8 == -1)
              {
                goto LABEL_74;
              }

              goto LABEL_83;
            }

            goto LABEL_81;
          }

          v150 = swift_slowAlloc();
          v151 = swift_slowAlloc();
          v225 = v151;
          *v150 = 136446466;
          v152 = *(v70 + 24);

          if (v152)
          {
            v153 = 20550;
          }

          else
          {
            v153 = 21318;
          }

          v154 = sub_1CEFD0DF0(v153, 0xE200000000000000, &v225);
          0xE200000000000000, v155, v156, v157, v158, v159, v160, v161;
          *(v150 + 4) = v154;
          *(v150 + 12) = 2082;
          v162 = v221 - v210;
          if (__OFSUB__(v221, v210))
          {
            goto LABEL_82;
          }

          if ((v162 & 0x8000000000000000) == 0)
          {
            v163 = 0;
            v164 = 0xE000000000000000;
LABEL_66:
            v166 = sub_1CF04F854(v162);
            v168 = v167;
            v223 = v163;
            v224 = v164;
            MEMORY[0x1D3868CC0](v166);
            v168, v169, v170, v171, v172, v173, v174, v175;
            v176 = v224;
            v177 = sub_1CEFD0DF0(v223, v224, &v225);
            v176, v178, v179, v180, v181, v182, v183, v184;
            *(v150 + 14) = v177;
            _os_log_impl(&dword_1CEFC7000, v148, v149, "⏳ %{public}s: schedule throttling handling in %{public}s", v150, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x1D386CDC0](v151, -1, -1);
            MEMORY[0x1D386CDC0](v150, -1, -1);

            (*(v212 + 8))(v211, v222);
            v70 = v6;
            goto LABEL_67;
          }

          v165 = __OFSUB__(0, v162);
          v162 = v210 - v221;
          if (!v165)
          {
            v164 = 0xE100000000000000;
            v163 = 45;
            goto LABEL_66;
          }
        }

        __break(1u);
        goto LABEL_86;
      }

LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      swift_once();
LABEL_74:
      [qword_1EDEBBA88 addWatcher_];

      return;
    }

    __break(1u);
    goto LABEL_80;
  }

  v71 = fpfs_current_or_default_log();
  v72 = v210;
  sub_1CF9E6128();

  v73 = sub_1CF9E6108();
  v74 = sub_1CF9E7298();
  if (os_log_type_enabled(v73, v74))
  {
    v75 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    v223 = v76;
    *v75 = 136446210;
    v77 = *(v6 + 24);

    if (v77)
    {
      v78 = 20550;
    }

    else
    {
      v78 = 21318;
    }

    v79 = v68;
    v80 = sub_1CEFD0DF0(v78, 0xE200000000000000, &v223);
    0xE200000000000000, v81, v82, v83, v84, v85, v86, v87;
    *(v75 + 4) = v80;
    _os_log_impl(&dword_1CEFC7000, v73, v74, "⏳  %{public}s: only infinite throttles", v75, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v76);
    MEMORY[0x1D386CDC0](v76, -1, -1);
    MEMORY[0x1D386CDC0](v75, -1, -1);

    (*(v212 + 8))(v72, v222);
  }

  else
  {

    (*(v69 + 8))(v72, v222);
    v79 = v50;
  }

  sub_1CF32BDC4();
}

void sub_1CF32D628()
{
  if ((*(v0 + 162) & 1) == 0)
  {
    *(v0 + 162) = 1;
    if (qword_1EDEACB30 != -1)
    {
      swift_once();
    }

    v1 = qword_1EDEBBB20;

    [v1 addWatcher_];
  }
}

uint64_t sub_1CF32D6A8(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000023, 0x80000001CFA402B0);
  MEMORY[0x1D3868CC0](*(a2 + 32), *(a2 + 40));
  MEMORY[0x1D3868CC0](0xD000000000000010, 0x80000001CFA401A0);
  v3 = sub_1CF9E7F98();
  v5 = v4;
  MEMORY[0x1D3868CC0](v3);
  v5, v6, v7, v8, v9, v10, v11, v12;
  return 0;
}

double sub_1CF32D774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v9 = *(Strong + 136);
    if (v9 && (v10 = *(Strong + 144), v11 = , v12 = v9(v11), v13 = sub_1CEFF7124(v9, v10), v12))
    {
      v14 = MEMORY[0x1EEE9AC00](v13);
      (*(*v12 + 440))(sub_1CF338868, v14);
    }

    else
    {
    }
  }

  return result;
}

void sub_1CF32D8B4(void *a1, uint64_t a2)
{
  v4 = sub_1CF9E5CF8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v9 = v8;
  (*(v5 + 8))(v7, v4);
  v10 = v9 * 1000000000.0;
  if (COERCE__INT64(fabs(v9 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v10 <= -9.22337204e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v10 >= 9.22337204e18)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v11 = v10;
  if ((*(a2 + 112) & 1) == 0 && *(a2 + 104) > v11)
  {
    v11 = *(a2 + 104);
  }

  *(a2 + 120) = v11;
  *(a2 + 128) = 0;
  v12 = a1[3];
  v13 = a1[4];
  v14 = __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_1CF32DA38(v11, v14, v12, *(v13 + 8));
}

void sub_1CF32DA38(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v22 = a3;
  v23 = a4;
  v8 = sub_1CF9E6118();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v12 = *(v5 + 136);
  if (v12)
  {
    v21 = a2;
    v13 = *(v5 + 144);

    v15 = v12(v14);
    if (v15)
    {
      v16 = v15;
      v17 = sub_1CEFF7124(v12, v13);
      v18 = MEMORY[0x1EEE9AC00](v17);
      v19 = v23;
      v20[-4] = v22;
      v20[-3] = v19;
      v20[-2] = v5;
      v20[-1] = a1;
      (*(*v16 + 424))("trigger(now:with:)", 18, 2, sub_1CF338888, v18);
      v20[2] = v10;
      sub_1CF32C57C(v21, v22, v23);

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1CF32E010(uint64_t a1, int a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v281 = a7;
  v270 = a6;
  v305 = a5;
  v287 = a4;
  v269 = a3;
  v276 = a2;
  v285 = a1;
  v9 = *(*v7 + 88);
  v10 = *(*v7 + 96);
  v11 = *(*v7 + 104);
  *&v291 = *(*v7 + 80);
  v8 = v291;
  *(&v291 + 1) = v9;
  *&v292 = v10;
  *(&v292 + 1) = v11;
  v272 = type metadata accessor for PersistenceTrigger(0, &v291);
  v263 = *(v272 - 8);
  MEMORY[0x1EEE9AC00](v272);
  v271 = &v252 - v12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = swift_getAssociatedTypeWitness();
  v267 = v10;
  v15 = v11;
  v284 = v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v278 = v9;
  v17 = v7;
  v18 = swift_getAssociatedConformanceWitness();
  *&v291 = AssociatedTypeWitness;
  *(&v291 + 1) = v14;
  *&v292 = AssociatedConformanceWitness;
  *(&v292 + 1) = v18;
  v19 = type metadata accessor for ThrottlingKey(0, &v291);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v257 = &v252 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v277 = &v252 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v282 = &v252 - v25;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v274 = *(TupleTypeMetadata2 - 8);
  v253 = *(v274 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v273 = &v252 - v27;
  v268 = sub_1CF9E6118();
  v265 = *(v268 - 8);
  MEMORY[0x1EEE9AC00](v268);
  v279 = &v252 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v266 = (&v252 - v30);
  v31 = v7[17];
  if (!v31)
  {
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
    return;
  }

  v32 = v7[18];

  v34 = v31(v33);
  if (!v34)
  {
    goto LABEL_55;
  }

  v261 = v20;
  v280 = v34;
  v283 = v19;
  sub_1CEFF7124(v31, v32);
  v275 = TupleTypeMetadata2;
  v296 = sub_1CF9E6DA8();
  if (qword_1EDEAC220 != -1)
  {
    swift_once();
  }

  v35 = sub_1CEFCB1A0(sub_1CF089FF4, 0);
  MEMORY[0x1EEE9AC00](v35);
  v36 = v305;
  *(&v252 - 4) = v287;
  *(&v252 - 3) = v36;
  v38 = v37 & 1;
  MEMORY[0x1EEE9AC00](v37);
  v39 = v278;
  *(&v252 - 8) = v284;
  *(&v252 - 7) = v39;
  v40 = v270;
  v41 = v267;
  *(&v252 - 6) = v270;
  *(&v252 - 5) = v41;
  *(&v252 - 4) = v15;
  v42 = v281;
  *(&v252 - 3) = v281;
  v250 = &v296;
  v250 = *(v42 + 8);
  v43 = v276;
  v44 = v286;
  sub_1CF32F18C(v269, sub_1CF338230, v45, sub_1CF338B28, (&v252 - 10), v285, v276 & 1, v40, v250);
  if (v44)
  {
    v285 = v44;
    v47 = v296;

    v47, v48, v49, v50, v51, v52, v53, v54;
    return;
  }

  if (v43)
  {
    v55 = MEMORY[0x1EEE9AC00](v46);
    *(&v252 - 6) = v40;
    *(&v252 - 5) = v42;
    v56 = v287;
    *(&v252 - 4) = v17;
    *(&v252 - 3) = v56;
    v250 = v305;
    LOBYTE(v251) = v38;
    (*(v42 + 32))(sub_1CF33823C, v55);
  }

  v285 = 0;
  v57 = fpfs_current_or_default_log();
  v58 = v266;
  sub_1CF9E6128();

  v59 = sub_1CF9E6108();
  v60 = sub_1CF9E7288();
  v61 = os_log_type_enabled(v59, v60);
  v288 = v17;
  v62 = v283;
  if (v61)
  {
    v63 = swift_slowAlloc();
    v305 = swift_slowAlloc();
    *&v291 = v305;
    *v63 = 136446466;
    v64 = *(v288 + 24);

    if (v64)
    {
      v65 = 20550;
    }

    else
    {
      v65 = 21318;
    }

    v66 = sub_1CEFD0DF0(v65, 0xE200000000000000, &v291);
    0xE200000000000000, v67, v68, v69, v70, v71, v72, v73;
    *(v63 + 4) = v66;
    *(v63 + 12) = 2048;
    swift_beginAccess();
    v74 = v296;

    v75 = v275;
    v76 = sub_1CF9E6DF8();
    v77 = v74;
    v42 = v281;
    v77, v78, v79, v80, v81, v82, v83, v84;
    *(v63 + 14) = v76;
    _os_log_impl(&dword_1CEFC7000, v59, v60, "⌛️  %{public}s: %ld throttles expired", v63, 0x16u);
    v85 = v305;
    __swift_destroy_boxed_opaque_existential_1(v305);
    MEMORY[0x1D386CDC0](v85, -1, -1);
    MEMORY[0x1D386CDC0](v63, -1, -1);

    v86 = v265;
    v262 = *(v265 + 1);
    v262(v266, v268);
  }

  else
  {

    v86 = v265;
    v262 = *(v265 + 1);
    v262(v58, v268);
    v75 = v275;
  }

  v87 = v277;
  v88 = v273;
  swift_beginAccess();
  v89 = v296;

  if (!sub_1CF9E6DF8())
  {
    v89, v90, v91, v92, v93, v94, v95, v96;
    v227 = v280;
LABEL_50:
    (*(*v227 + 304))();

    sub_1CF9E6DF8();

    swift_bridgeObjectRelease_n();
    return;
  }

  v98 = 0;
  v265 = &v88[*(v75 + 48)];
  v267 = (v274 + 16);
  v99 = v261;
  v278 = (v261 + 16);
  v284 = (v261 + 8);
  v261 = v86 + 8;
  v255 = v42 + 32;
  ++v263;
  v264 = (v99 + 32);
  *&v97 = 136446722;
  v254 = v97;
  v256 = xmmword_1CF9FD920;
  v100 = v282;
  v266 = v89;
  while (1)
  {
    v101 = sub_1CF9E6DC8();
    sub_1CF9E6D78();
    if (v101)
    {
      (*(v274 + 16))(v88, v89 + ((*(v274 + 80) + 32) & ~*(v274 + 80)) + *(v274 + 72) * v98, v75);
      v109 = v98 + 1;
      if (__OFADD__(v98, 1))
      {
        goto LABEL_47;
      }
    }

    else
    {
      v226 = sub_1CF9E7998();
      if (v253 != 8)
      {
        goto LABEL_56;
      }

      *&v291 = v226;
      (*v267)(v88, &v291, v75);
      swift_unknownObjectRelease();
      v109 = v98 + 1;
      if (__OFADD__(v98, 1))
      {
LABEL_47:
        __break(1u);
LABEL_48:
        v227 = v280;
        v89, v102, v103, v104, v105, v106, v107, v108;
        goto LABEL_50;
      }
    }

    v286 = v98;
    v287 = v109;
    v110 = *(v265 + 3);
    v293 = *(v265 + 2);
    v294 = v110;
    v295 = *(v265 + 8);
    v111 = *(v265 + 1);
    v291 = *v265;
    v292 = v111;
    (*v264)(v100, v88, v62);
    v112 = *(&v291 + 1);
    v113 = *(&v292 + 1);
    v305 = v292;
    v114 = v293;
    v115 = *(&v293 + 1);
    v116 = sub_1CF94CA10(*(&v114 + 1));
    if (v116 > 0xBu)
    {
      v119 = v87;
    }

    else
    {
      v119 = v87;
      if (((1 << v116) & 0x860) != 0)
      {
        v113 = 0x7FFFFFFFFFFFFFFFLL;
      }
    }

    v297[0] = 2;
    v298 = v112;
    v299 = v305;
    v300 = v113;
    v301 = v114;
    v302 = v116;
    v303 = v117;
    v304 = v118;
    v120 = v288;
    if (!*(&v114 + 1))
    {
      goto LABEL_32;
    }

    sub_1CF2F462C();
    v121 = swift_allocError();
    *v122 = v256;
    *(v122 + 16) = 3;
    v123 = *(&v114 + 1);
    v124 = sub_1CF9E57E8();

    v125 = sub_1CF9E57E8();
    v126 = [v124 domain];
    v127 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v129 = v128;

    v130 = [v125 domain];
    v131 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v133 = v132;

    if (v127 == v131 && v129 == v133)
    {
      break;
    }

    v148 = sub_1CF9E8048();
    v129, v149, v150, v151, v152, v153, v154, v155;
    v133, v156, v157, v158, v159, v160, v161, v162;
    if (v148)
    {
      goto LABEL_27;
    }

    v120 = v288;
    v100 = v282;
    v62 = v283;
    v119 = v277;
LABEL_32:
    v167 = fpfs_current_or_default_log();
    v168 = v279;
    sub_1CF9E6128();
    v169 = v100;
    v170 = v119;
    v171 = v62;
    v172 = *v278;
    (*v278)(v170, v169, v171);

    sub_1CF338250(v297, v290);
    v173 = sub_1CF9E6108();
    v174 = sub_1CF9E7298();
    sub_1CF2CA1E8(v297);
    v175 = os_log_type_enabled(v173, v174);
    v305 = v172;
    if (v175)
    {
      v176 = swift_slowAlloc();
      v259 = v173;
      v177 = v176;
      v260 = swift_slowAlloc();
      v289 = v260;
      *v177 = v254;
      v178 = *(v120 + 24);

      if (v178)
      {
        v179 = 20550;
      }

      else
      {
        v179 = 21318;
      }

      v180 = sub_1CEFD0DF0(v179, 0xE200000000000000, &v289);
      0xE200000000000000, v181, v182, v183, v184, v185, v186, v187;
      *(v177 + 4) = v180;
      *(v177 + 12) = 2080;
      v188 = v257;
      (v172)(v257, v170, v171);
      v189 = v171;
      v258 = v174;
      v190 = *v284;
      (*v284)(v170, v171);
      v191 = sub_1CF94BC9C(v171);
      v193 = v192;
      v194 = v189;
      v195 = v190;
      v190(v188, v194);
      v196 = v191;
      v119 = v277;
      v197 = sub_1CEFD0DF0(v196, v193, &v289);
      v193, v198, v199, v200, v201, v202, v203, v204;
      *(v177 + 14) = v197;
      *(v177 + 22) = 2080;
      sub_1CF338250(v297, v290);
      v205 = sub_1CF94B3EC();
      v207 = v206;
      sub_1CF2CA1E8(v297);
      v208 = sub_1CEFD0DF0(v205, v207, &v289);
      v209 = v207;
      v120 = v288;
      v209, v210, v211, v212, v213, v214, v215, v216;
      *(v177 + 24) = v208;
      v217 = v259;
      _os_log_impl(&dword_1CEFC7000, v259, v258, "✍️  %{public}s: throttle %s: %s", v177, 0x20u);
      v218 = v260;
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v218, -1, -1);
      MEMORY[0x1D386CDC0](v177, -1, -1);

      v219 = (v262)(v279, v268);
      v220 = v276;
      v75 = v275;
    }

    else
    {
      v195 = *v284;
      (*v284)(v170, v171);

      v219 = (v262)(v168, v268);
      v220 = v276;
      v75 = v275;
      v119 = v170;
    }

    v100 = v282;
    if ((v220 & 1) == 0)
    {
      v221 = MEMORY[0x1EEE9AC00](v219);
      *(&v252 - 4) = v270;
      *(&v252 - 3) = v222;
      v250 = v120;
      v251 = v100;
      v223 = v285;
      (*(v222 + 32))(sub_1CF3382AC, v221);
      v285 = v223;
      if (v223)
      {

        sub_1CF2CA1E8(&v291);
        sub_1CF2CA1E8(v297);
        v228 = v266;
        v266, v229, v230, v231, v232, v233, v234, v235;
        v195(v100, v283);
        goto LABEL_53;
      }
    }

    v62 = v283;
    v166 = v305;
LABEL_41:
    v224 = v271;
    v166(v271, v100, v62);
    v225 = v272;
    swift_storeEnumTagMultiPayload();
    (*(*v280 + 312))(v224);
    sub_1CF2CA1E8(&v291);
    sub_1CF2CA1E8(v297);
    (*v263)(v224, v225);
    (*v284)(v100, v62);
    v89 = v266;
    if (v287 == sub_1CF9E6DF8())
    {
      goto LABEL_48;
    }

    v87 = v119;
    v98 = v286 + 1;
    v88 = v273;
  }

  v129, v134, v135, v136, v137, v138, v139, v140;
  v133, v141, v142, v143, v144, v145, v146, v147;
LABEL_27:
  v163 = [v124 code];
  v164 = [v114 code];

  v120 = v288;
  v100 = v282;
  v62 = v283;
  v119 = v277;
  if (v163 != v164 || v305)
  {
    goto LABEL_32;
  }

  v165 = v285;
  sub_1CF32F450(v282, v269, v270, v281);
  v285 = v165;
  if (!v165)
  {
    v166 = *v278;
    v75 = v275;
    goto LABEL_41;
  }

  sub_1CF2CA1E8(&v291);
  sub_1CF2CA1E8(v297);
  v228 = v266;
  v266, v243, v244, v245, v246, v247, v248, v249;
  (*v284)(v100, v62);
LABEL_53:
  v228, v236, v237, v238, v239, v240, v241, v242;
}

uint64_t sub_1CF32F09C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  sub_1CF9E7948();
  0xE000000000000000, v7, v8, v9, v10, v11, v12, v13;
  v14 = sub_1CF9E7F98();
  v16 = v15;
  MEMORY[0x1D3868CC0](v14);
  v16, v17, v18, v19, v20, v21, v22, v23;
  MEMORY[0x1D3868CC0](0x20444E4120, 0xE500000000000000);
  v24 = a2(a1, a4);
  v26 = v25;
  MEMORY[0x1D3868CC0](v24);
  v26, v27, v28, v29, v30, v31, v32, v33;
  return 0x203D206574617473;
}

void sub_1CF32F18C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *, _OWORD *), uint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9)
{
  v14 = *v9;
  v19 = a8;
  v20 = a9;
  v21 = v9;
  v22 = a2;
  v23 = a3;
  v24 = a6;
  v25 = a7 & 1;
  v15 = (*(v20 + 24))(sub_1CF33817C, v18, a8, v20);
  if (!v10)
  {
    v16 = v15;
    if ([v15 next])
    {
      do
      {
        v17 = objc_autoreleasePoolPush();
        sub_1CF334AAC(v16, a4, a5, v14[10], v14[11], a8, v14[12], v14[13]);
        objc_autoreleasePoolPop(v17);
      }

      while (([v16 next] & 1) != 0);
    }
  }
}

uint64_t sub_1CF32F2D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4, uint64_t a5)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x20455441445055, 0xE700000000000000);
  MEMORY[0x1D3868CC0](*(a2 + 32), *(a2 + 40));
  MEMORY[0x1D3868CC0](0xD000000000000010, 0x80000001CFA40180);
  v9 = sub_1CF9E7F98();
  v11 = v10;
  MEMORY[0x1D3868CC0](v9);
  v11, v12, v13, v14, v15, v16, v17, v18;
  MEMORY[0x1D3868CC0](0xD000000000000010, 0x80000001CFA401A0);
  v19 = sub_1CF9E7F98();
  v21 = v20;
  MEMORY[0x1D3868CC0](v19);
  v21, v22, v23, v24, v25, v26, v27, v28;
  MEMORY[0x1D3868CC0](0x20444E4120, 0xE500000000000000);
  v29 = a3(a1, a5);
  v31 = v30;
  MEMORY[0x1D3868CC0](v29);
  v31, v32, v33, v34, v35, v36, v37, v38;
  return 0;
}

uint64_t sub_1CF32F450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v99 = a3;
  v100 = a1;
  v101 = a4;
  v108 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v97 = sub_1CF9E75D8();
  v95 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v94 = &v82 - v6;
  v7 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = swift_getAssociatedConformanceWitness();
  v102[0] = AssociatedTypeWitness;
  v102[1] = v7;
  v102[2] = AssociatedConformanceWitness;
  v102[3] = v9;
  v10 = type metadata accessor for ThrottlingKey(0, v102);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v82 - v15;
  v17 = sub_1CF9E6118();
  v96 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v82 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v98;
  v21 = v99;
  v22 = sub_1CF33159C(v100, v108, v99, *(v101 + 8));
  if (!v20)
  {
    v88 = v16;
    v24 = v13;
    v91 = v11;
    v92 = v22;
    v90 = v19;
    v89 = v17;
    v98 = AssociatedTypeWitness;
    v25 = v97;
    v26 = MEMORY[0x1EEE9AC00](v22);
    v27 = v101;
    *(&v82 - 4) = v21;
    *(&v82 - 3) = v27;
    v93 = v4;
    v28 = v100;
    *(&v82 - 2) = v4;
    *(&v82 - 1) = v28;
    if (v29 == 1)
    {
      v30 = sub_1CF3382C4;
    }

    else
    {
      v30 = sub_1CF3382B8;
    }

    (*(v27 + 32))(v30, v26);
    v87 = 0;
    v32 = *(v27 + 24);
    v86 = v27 + 24;
    v85 = v32;
    v33 = v32(v99, v27);
    v34 = v98;
    v35 = v91;
    if (v33)
    {
      v36 = v10;
      v37 = fpfs_current_or_default_log();
      v38 = v90;
      sub_1CF9E6128();
      v39 = v88;
      v84 = *(v35 + 16);
      v84(v88, v100, v36);
      v40 = v93;

      v41 = sub_1CF9E6108();
      LODWORD(v100) = sub_1CF9E7298();
      if (os_log_type_enabled(v41, v100))
      {
        v83 = v41;
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v102[0] = v43;
        *v42 = 136446722;
        v44 = *(v40 + 24);

        if (v44)
        {
          v45 = 20550;
        }

        else
        {
          v45 = 21318;
        }

        v46 = sub_1CEFD0DF0(v45, 0xE200000000000000, v102);
        0xE200000000000000, v47, v48, v49, v50, v51, v52, v53;
        *(v42 + 4) = v46;
        *(v42 + 12) = 2080;
        v84(v24, v39, v36);
        v54 = *(v35 + 8);
        v55 = v39;
        v56 = v42;
        v54(v55, v36);
        v57 = sub_1CF94BC9C(v36);
        v59 = v58;
        v54(v24, v36);
        v60 = sub_1CEFD0DF0(v57, v59, v102);
        v59, v61, v62, v63, v64, v65, v66, v67;
        *(v56 + 14) = v60;
        *(v56 + 22) = 2080;
        if (qword_1EDEAA348 != -1)
        {
          swift_once();
        }

        v105 = xmmword_1EDEBB9C0;
        v106 = unk_1EDEBB9D0;
        v107 = qword_1EDEBB9E0;
        v103 = xmmword_1EDEBB9A0;
        v104 = *algn_1EDEBB9B0;
        v68 = sub_1CF94B3EC();
        v70 = v69;
        v71 = sub_1CEFD0DF0(v68, v69, v102);
        v70, v72, v73, v74, v75, v76, v77, v78;
        *(v56 + 24) = v71;
        v79 = v83;
        _os_log_impl(&dword_1CEFC7000, v83, v100, "✍️  %{public}s: throttle %s: %s", v56, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1D386CDC0](v43, -1, -1);
        MEMORY[0x1D386CDC0](v56, -1, -1);

        (*(v96 + 8))(v90, v89);
        v27 = v101;
        v34 = v98;
      }

      else
      {
        (*(v35 + 8))(v39, v36);

        (*(v96 + 8))(v38, v89);
        v27 = v101;
      }

      v25 = v97;
    }

    if (v92 == 1)
    {
      v80 = v94;
      (*(*(v34 - 8) + 56))(v94, 1, 1, v34);
      v81 = v87;
      sub_1CF32C350(1, 0, 0, v80, v108);
      v87 = v81;
      if (v81)
      {
        (*(v95 + 8))(v80, v25);
        v23 = &v109;
        return v23 & 1;
      }

      (*(v95 + 8))(v80, v25);
    }

    LOBYTE(v23) = v85(v99, v27) != 0;
  }

  return v23 & 1;
}

uint64_t sub_1CF32FC38(uint64_t a1, uint64_t **a2, uint64_t a3)
{
  v6 = *a2;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x20455441445055, 0xE700000000000000);
  MEMORY[0x1D3868CC0](a2[4], a2[5]);
  MEMORY[0x1D3868CC0](0xD000000000000010, 0x80000001CFA40180);
  v7 = sub_1CF9E7F98();
  v9 = v8;
  MEMORY[0x1D3868CC0](v7);
  v9, v10, v11, v12, v13, v14, v15, v16;
  MEMORY[0x1D3868CC0](0xD000000000000010, 0x80000001CFA401A0);
  v17 = sub_1CF9E7F98();
  v19 = v18;
  MEMORY[0x1D3868CC0](v17);
  v19, v20, v21, v22, v23, v24, v25, v26;
  MEMORY[0x1D3868CC0](0x20444E412020200ALL, 0xE800000000000000);
  v27 = sub_1CF050908(a3, a1, v6[10], v6[11], v6[12], v6[13]);
  v29 = v28;
  MEMORY[0x1D3868CC0](v27);
  v29, v30, v31, v32, v33, v34, v35, v36;
  return 0;
}

unint64_t sub_1CF32FE00(void *a1, uint64_t a2, _TtC18FileProviderDaemon8FSTester **a3, uint64_t a4, _TtC18FileProviderDaemon8FSTester *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v101 = a8;
  v102 = a6;
  v99 = a11;
  v100 = a12;
  v98 = a9;
  v103 = 0;
  v104 = 0xE000000000000000;
  sub_1CF9E7948();
  0xE000000000000000, v16, v17, v18, v19, v20, v21, v22;
  v110 = 0xD000000000000015;
  v111 = 0x80000001CFA400E0;
  v23 = *a3;
  v108 = 40;
  v109 = 0xE100000000000000;
  v24 = swift_allocObject();
  *(v24 + 16) = a1;
  v103 = v23;
  v104 = sub_1CF21B060;
  v105 = 0;
  v106 = sub_1CF086BF0;
  v107 = v24;

  v25 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF740, &qword_1CFA028D8);
  sub_1CEFCCCEC(&qword_1EDEA33E8, &qword_1EC4BF740, &qword_1CFA028D8, MEMORY[0x1E69E6CC8]);
  sub_1CEFE4E68();
  v26 = sub_1CF9E6C18();
  v28 = v27;

  MEMORY[0x1D3868CC0](v26, v28);
  v28, v29, v30, v31, v32, v33, v34, v35;
  MEMORY[0x1D3868CC0](41, 0xE100000000000000);
  v23, v36, v37, v38, v39, v40, v41, v42;
  MEMORY[0x1D3868CC0](v108, v109);
  v109, v43, v44, v45, v46, v47, v48, v49;
  MEMORY[0x1D3868CC0](10, 0xE100000000000000);
  if (a5)
  {

    sub_1CF9E7948();
    0xE000000000000000, v50, v51, v52, v53, v54, v55, v56;
    v103 = 0xD000000000000021;
    v104 = 0x80000001CFA40100;
    v57 = sub_1CF9E6888();
    v58 = [v25 bindStringParameter_];

    v59 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v61 = v60;

    MEMORY[0x1D3868CC0](v59, v61);
    a5, v62, v63, v64, v65, v66, v67, v68;
    v61, v69, v70, v71, v72, v73, v74, v75;
    v76 = 0xD000000000000021;
    v77 = 0x80000001CFA40100;
  }

  else
  {
    v76 = 0;
    v77 = 0xE000000000000000;
  }

  MEMORY[0x1D3868CC0](v76, v77);
  v77, v78, v79, v80, v81, v82, v83, v84;
  v85 = MEMORY[0x1D3868CC0](10, 0xE100000000000000);
  MEMORY[0x1EEE9AC00](v85);
  v97[2] = a7;
  v97[3] = v101;
  v97[4] = v98;
  v97[5] = a10;
  v97[6] = v99;
  v97[7] = v100;
  v97[8] = v25;
  swift_getAssociatedTypeWitness();
  sub_1CF9E75D8();
  sub_1CF06E1CC(sub_1CF338560, v97, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6158], v86, &v103);
  if (v104)
  {
    v87 = v103;
  }

  else
  {
    v87 = 0;
  }

  if (v104)
  {
    v88 = v104;
  }

  else
  {
    v88 = 0xE000000000000000;
  }

  MEMORY[0x1D3868CC0](v87, v88);
  v88, v89, v90, v91, v92, v93, v94, v95;
  return v110;
}

void sub_1CF330198(uint64_t a1@<X1>, void *a4@<X8>)
{
  sub_1CF9E7948();
  0xE000000000000000, v6, v7, v8, v9, v10, v11, v12;
  strcpy(v27, "AND item_id = ");
  HIBYTE(v27[1]) = -18;
  swift_getAssociatedTypeWitness();
  v13 = *(swift_getAssociatedConformanceWitness() + 8);
  v14 = *(v13 + 32);
  v15 = swift_checkMetadataState();
  v16 = v14(a1, v15, v13);
  v18 = v17;
  MEMORY[0x1D3868CC0](v16);
  v18, v19, v20, v21, v22, v23, v24, v25;
  v26 = v27[1];
  *a4 = v27[0];
  a4[1] = v26;
}

uint64_t sub_1CF3302CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = a2;
  v21 = a4;
  v19 = a3;
  v22[5] = a1;
  v18 = v4;
  v22[0] = swift_getAssociatedTypeWitness();
  v22[1] = swift_getAssociatedTypeWitness();
  v22[2] = swift_getAssociatedConformanceWitness();
  v22[3] = swift_getAssociatedConformanceWitness();
  v6 = type metadata accessor for ThrottlingKey(255, v22);
  sub_1CF9E6E58();
  swift_getWitnessTable();
  result = sub_1CF9E7128();
  if ((result & 1) == 0)
  {
    result = sub_1CF9E6DF8();
    if (result >= 1)
    {
      v8 = result;
      result = 0;
      while (1)
      {
        v9 = result + 100;
        if (__OFADD__(result, 100))
        {
          break;
        }

        if (v8 >= v9)
        {
          v10 = result + 100;
        }

        else
        {
          v10 = v8;
        }

        if (v9 < result)
        {
          goto LABEL_15;
        }

        v11 = v6;
        v12 = sub_1CF9E6E98();
        MEMORY[0x1EEE9AC00](v12);
        v17[2] = v19;
        v17[3] = v21;
        v17[4] = v18;
        v17[5] = v13;
        v17[6] = v14;
        v17[7] = v15;
        v17[8] = v16;
        sub_1CF32E010(0, 1, v20, sub_1CF3381FC, v17, v19, v21);
        if (v5)
        {
          return swift_unknownObjectRelease();
        }

        swift_unknownObjectRelease();
        result = v10;
        v6 = v11;
        if (v9 >= v8)
        {
          return result;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
    }
  }

  return result;
}

unint64_t sub_1CF330558(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = a2;
  sub_1CF9E7948();
  0xE000000000000000, v13, v14, v15, v16, v17, v18, v19;
  v75 = 0xD000000000000015;
  v76 = 0x80000001CFA401C0;
  v20 = sub_1CF9E7F98();
  v22 = v21;
  MEMORY[0x1D3868CC0](v20);
  v22, v23, v24, v25, v26, v27, v28, v29;
  MEMORY[0x1D3868CC0](10, 0xE100000000000000);
  v30 = sub_1CF338480(v12);
  v32 = v31;
  MEMORY[0x1D3868CC0](v30);
  v32, v33, v34, v35, v36, v37, v38, v39;
  MEMORY[0x1D3868CC0](0x2820444E410ALL, 0xE600000000000000);
  v71 = a4;
  v72 = a5;
  v73 = a6;
  v74 = a7;
  v66 = a8;
  v67 = a9;
  v68 = a3;
  v69 = a1;
  v70[0] = swift_getAssociatedTypeWitness();
  v70[1] = swift_getAssociatedTypeWitness();
  v70[2] = swift_getAssociatedConformanceWitness();
  v70[3] = swift_getAssociatedConformanceWitness();
  type metadata accessor for ThrottlingKey(255, v70);
  v40 = sub_1CF9E7778();
  WitnessTable = swift_getWitnessTable();
  v43 = sub_1CF054A5C(sub_1CF338684, v65, v40, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v42);
  v71 = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4BE0, &unk_1CF9FEE90);
  sub_1CEFCCCEC(&qword_1EDEAB670, &unk_1EC4C4BE0, &unk_1CF9FEE90, MEMORY[0x1E69E6310]);
  v44 = sub_1CF9E67D8();
  v46 = v45;
  v43, v45, v47, v48, v49, v50, v51, v52;
  MEMORY[0x1D3868CC0](v44, v46);
  v46, v53, v54, v55, v56, v57, v58, v59;
  MEMORY[0x1D3868CC0](41, 0xE100000000000000);
  return v75;
}

uint64_t sub_1CF330888@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = sub_1CF050908(a1, a3, *(*a2 + 80), *(*a2 + 88), *(*a2 + 96), *(*a2 + 104));
  v7 = v6;
  MEMORY[0x1D3868CC0](v5);
  v7, v8, v9, v10, v11, v12, v13, v14;
  result = MEMORY[0x1D3868CC0](41, 0xE100000000000000);
  *a4 = 40;
  a4[1] = 0xE100000000000000;
  return result;
}

void sub_1CF330958(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1CF9E5CF8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDEAC220 != -1)
  {
    swift_once();
  }

  v10 = sub_1CEFCB1A0(sub_1CF089FF4, 0);
  if (v10 != 2 && (v10 & 1) != 0)
  {
    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v12 = v11;
    v13 = (*(v7 + 8))(v9, v6);
    v14 = v12 * 1000000000.0;
    if (COERCE__INT64(fabs(v12 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v14 > -9.22337204e18)
    {
      if (v14 < 9.22337204e18)
      {
        MEMORY[0x1EEE9AC00](v13);
        *(&v16 - 2) = v15;
        sub_1CF32E010(0, 1, a1, sub_1CF3388E8, &v16 - 4, a2, a3);
        return;
      }

LABEL_12:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_12;
  }
}

unint64_t sub_1CF330B7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32[1] = 0xE000000000000000;
  sub_1CF9E7948();
  0xE000000000000000, v4, v5, v6, v7, v8, v9, v10;
  v33 = 0xD000000000000013;
  v34 = 0x80000001CFA40290;
  v32[3] = MEMORY[0x1E69E6530];
  v32[0] = a3;
  v11 = sub_1CEFF8EA0(v32);
  v13 = v12;
  sub_1CEFCCC44(v32, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (v13)
  {
    MEMORY[0x1D3868CC0](v11, v13);
    v13, v14, v15, v16, v17, v18, v19, v20;
    MEMORY[0x1D3868CC0](0xD000000000000019, 0x80000001CFA40360);
    v32[0] = 7;
    v21 = sub_1CF9E7F98();
    v23 = v22;
    MEMORY[0x1D3868CC0](v21);
    v23, v24, v25, v26, v27, v28, v29, v30;
    return v33;
  }

  else
  {
    result = sub_1CF9E7B68();
    __break(1u);
  }

  return result;
}

double sub_1CF330CE4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = a1[3];
  v12 = a1[4];
  v13 = __swift_project_boxed_opaque_existential_1(a1, v11);
  v24[2] = a4;
  v24[3] = a5;
  v24[4] = a3;
  v24[5] = a2;
  sub_1CF32E010(0, 1, v13, sub_1CF3388A8, v24, v11, v12);
  if (!v5)
  {
    v15 = a1[3];
    v16 = a1[4];
    v17 = __swift_project_boxed_opaque_existential_1(a1, v15);
    v18 = sub_1CF330FA0(v17, v15, *(v16 + 8));
    if (v18)
    {
      v19 = *(a2 + 136);
      if (v19)
      {
        v20 = *(a2 + 144);

        v22 = v19(v21);
        v23 = sub_1CEFF7124(v19, v20);
        if (v22)
        {
          (*(*v22 + 344))(v23);
        }
      }
    }
  }

  return result;
}

unint64_t sub_1CF330E20(uint64_t a1, char a2, uint64_t a3, void *a4)
{
  v34[1] = 0xE000000000000000;
  sub_1CF9E7948();
  0xE000000000000000, v6, v7, v8, v9, v10, v11, v12;
  v35 = 0xD000000000000013;
  v36 = 0x80000001CFA40290;
  v34[3] = MEMORY[0x1E69E6530];
  v34[0] = a3;
  v13 = sub_1CEFF8EA0(v34);
  v15 = v14;
  sub_1CEFCCC44(v34, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (v15)
  {
    MEMORY[0x1D3868CC0](v13, v15);
    v15, v16, v17, v18, v19, v20, v21, v22;
    MEMORY[0x1D3868CC0](10, 0xE100000000000000);
    v23 = sub_1CF338480(a2 & 1);
    v25 = v24;
    MEMORY[0x1D3868CC0](v23);
    v25, v26, v27, v28, v29, v30, v31, v32;
    return v35;
  }

  else
  {
    result = sub_1CF9E7B68();
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF330FA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8[2] = a2;
  v8[3] = a3;
  v5 = (*(a3 + 24))(sub_1CF3388B4, v8, a2);
  if (!v4)
  {
    v6 = v5;
    v3 = [v5 next];
  }

  return v3 & 1;
}

void sub_1CF331038(char *a1, uint64_t a2, uint64_t a3)
{
  sub_1CF32C57C(a1, a2, a3);
  if (!v3)
  {
    v6 = MEMORY[0x1EEE9AC00](v5);
    v7 = (*(a3 + 24))(sub_1CF3388DC, v6);
    v8 = v7;
    if ([v7 next])
    {
      sub_1CF32D628();
    }
  }
}

uint64_t sub_1CF331110(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000016, 0x80000001CFA40300);
  MEMORY[0x1D3868CC0](*(a2 + 32), *(a2 + 40));
  MEMORY[0x1D3868CC0](0xD00000000000001CLL, 0x80000001CFA40320);
  v3 = sub_1CF9E7F98();
  v5 = v4;
  MEMORY[0x1D3868CC0](v3);
  v5, v6, v7, v8, v9, v10, v11, v12;
  MEMORY[0x1D3868CC0](0xD000000000000010, 0x80000001CFA40340);
  v13 = sub_1CF9E7F98();
  v15 = v14;
  MEMORY[0x1D3868CC0](v13);
  v15, v16, v17, v18, v19, v20, v21, v22;
  MEMORY[0x1D3868CC0](0x2054494D494C200ALL, 0xE900000000000031);
  return 0;
}

void sub_1CF331254(uint64_t a1)
{
  v2 = *(v1 + 136);
  if (!v2)
  {
    goto LABEL_8;
  }

  v3 = v1;
  v4 = *(v1 + 144);

  v6 = v2(v5);
  if (!v6)
  {
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v7 = v6;
  v8 = sub_1CEFF7124(v2, v4);
  v9 = (*(*v7 + 168))(v8);
  v10 = fpfs_current_log();
  v42 = fpfs_adopt_log();
  aBlock = sub_1CF9E73C8();
  v44 = v11;
  MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
  v12 = sub_1CF9E7988();
  v14 = v13;
  MEMORY[0x1D3868CC0](v12);
  v14, v15, v16, v17, v18, v19, v20, v21;
  sub_1CF9E6978();
  v44, v22, v23, v24, v25, v26, v27, v28;
  v29 = __fp_log_fork();

  v41[1] = v41;
  v51 = v29;
  v52 = 0;
  MEMORY[0x1EEE9AC00](v30);
  v37[2] = v10;
  v37[3] = &v51;
  v37[4] = v9;
  v37[5] = "invalidate()";
  v37[6] = 12;
  v38 = 2;
  v39 = sub_1CF3386A8;
  v40 = v3;
  v50 = 1;
  v49 = 0;
  v31 = swift_allocObject();
  v31[2] = &v50;
  v31[3] = sub_1CF2B16F4;
  v31[4] = v37;
  v31[5] = &v49;
  v32 = swift_allocObject();
  *(v32 + 16) = sub_1CF2B16B0;
  *(v32 + 24) = v31;
  v47 = sub_1CEFFD054;
  v48 = v32;
  aBlock = MEMORY[0x1E69E9820];
  v44 = 1107296256;
  v45 = sub_1CEFFD02C;
  v46 = &block_descriptor_14;
  v33 = _Block_copy(&aBlock);

  FPDispatchAsyncAndWait(v9, v33);
  _Block_release(v33);
  LOBYTE(v33) = swift_isEscapingClosureAtFileLocation();

  if (v33)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (!v49)
  {
    if ((v50 & 1) == 0)
    {

      v34 = v42;
      v35 = fpfs_adopt_log();

      return;
    }

    goto LABEL_10;
  }

LABEL_11:
  swift_willThrow();

  v36 = fpfs_adopt_log();
  __break(1u);
}

void *sub_1CF33159C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8[5] = a1;
  v8[2] = a3;
  v8[3] = a4;
  result = (*(a4 + 24))(sub_1CF338678, v8);
  v6 = result;
  if (!v4)
  {
    if ([result next])
    {
      v7 = [v6 longAtIndex_];

      LODWORD(result) = sub_1CF94C0BC(v7);
      if (result == 13)
      {
        return 0;
      }

      else
      {
        return result;
      }
    }

    else
    {

      return 0;
    }
  }

  return result;
}

unint64_t sub_1CF331664(uint64_t a1, uint64_t **a2, uint64_t a3)
{
  v6 = *a2;
  sub_1CF9E7948();
  0xE000000000000000, v7, v8, v9, v10, v11, v12, v13;
  MEMORY[0x1D3868CC0](a2[4], a2[5]);
  MEMORY[0x1D3868CC0](0x204552454857200ALL, 0xE800000000000000);
  v14 = sub_1CF050908(a3, a1, v6[10], v6[11], v6[12], v6[13]);
  v16 = v15;
  MEMORY[0x1D3868CC0](v14);
  v16, v17, v18, v19, v20, v21, v22, v23;
  return 0xD000000000000020;
}

uint64_t sub_1CF33177C(uint64_t a1, uint64_t **a2, uint64_t a3)
{
  v6 = *a2;
  BYTE5(v25[1]) = 0;
  sub_1CF9E7948();
  0xE000000000000000, v7, v8, v9, v10, v11, v12, v13;
  strcpy(v25, "DELETE FROM ");
  HIWORD(v25[1]) = -5120;
  MEMORY[0x1D3868CC0](a2[4], a2[5]);
  MEMORY[0x1D3868CC0](0x572020202020200ALL, 0xED00002045524548);
  v14 = sub_1CF050908(a3, a1, v6[10], v6[11], v6[12], v6[13]);
  v16 = v15;
  MEMORY[0x1D3868CC0](v14);
  v16, v17, v18, v19, v20, v21, v22, v23;
  return v25[0];
}

uint64_t sub_1CF3318A0(void *a1, uint64_t **a2, uint64_t a3)
{
  v6 = *a2;
  sub_1CF9E7948();
  0xE000000000000000, v7, v8, v9, v10, v11, v12, v13;
  MEMORY[0x1D3868CC0](a2[4], a2[5]);
  MEMORY[0x1D3868CC0](0x205445532020200ALL, 0xE800000000000000);
  if (qword_1EDEAA348 != -1)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v21 = sub_1CF1CB920();
    v22 = *v21->tree;
    if (!v22)
    {
      break;
    }

    v23 = 0;
    while (v23 < *v21->tree)
    {
      sub_1CF486464(*(&v21[1].super.isa + v23++), a1);
      v24, v24, v25, v26, v27, v28, v29, v30;
      if (v22 == v23)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
LABEL_8:
    swift_once();
  }

LABEL_6:
  v21, v14, v15, v16, v17, v18, v19, v20;
  v31 = sub_1CF1CB920();
  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  *(v32 + 24) = 0xE000000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF748, &qword_1CFA028E0);
  sub_1CF3385C8();
  v33 = sub_1CF9E67D8();
  v35 = v34;

  v31, v36, v37, v38, v39, v40, v41, v42;
  MEMORY[0x1D3868CC0](v33, v35);
  v35, v43, v44, v45, v46, v47, v48, v49;
  MEMORY[0x1D3868CC0](0x204552454857200ALL, 0xE800000000000000);
  v50 = sub_1CF050908(a3, a1, v6[10], v6[11], v6[12], v6[13]);
  v52 = v51;
  MEMORY[0x1D3868CC0](v50);
  v52, v53, v54, v55, v56, v57, v58, v59;
  MEMORY[0x1D3868CC0](0xD000000000000011, 0x80000001CFA40130);
  v60 = sub_1CF9E7F98();
  v62 = v61;
  MEMORY[0x1D3868CC0](v60);
  v62, v63, v64, v65, v66, v67, v68, v69;
  return 0x20455441445055;
}

void sub_1CF331B8C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *__return_ptr, _OWORD *), uint64_t a5, uint64_t a6, void (*a7)(char *, uint64_t, uint64_t))
{
  v166 = a7;
  v151 = a3;
  v152 = a6;
  v141 = a5;
  v142 = a4;
  v140 = a2;
  v150 = a1;
  v8 = *(*v7 + 88);
  v9 = *(*v7 + 96);
  v10 = *(*v7 + 104);
  *v158 = *(*v7 + 80);
  *&v158[8] = v8;
  *&v158[16] = v9;
  *&v158[24] = v10;
  v11 = type metadata accessor for PersistenceTrigger(0, v158);
  v146 = *(v11 - 8);
  v147 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v145 = &v130 - v12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v16 = v150;
  v17 = swift_getAssociatedConformanceWitness();
  *v158 = AssociatedTypeWitness;
  *&v158[8] = v14;
  v18 = v7;
  *&v158[16] = AssociatedConformanceWitness;
  *&v158[24] = v17;
  v148 = type metadata accessor for ThrottlingKey(0, v158);
  v143 = *(v148 - 8);
  MEMORY[0x1EEE9AC00](v148);
  v20 = &v130 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v130 - v22;
  v24 = sub_1CF9E6118();
  v144 = *(v24 - 8);
  v25 = MEMORY[0x1EEE9AC00](v24);
  v27 = &v130 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153[2] = v152;
  v153[3] = v166;
  v154 = v7;
  v155 = v16;
  v28 = v149;
  v29 = (*(*(v166 + 1) + 24))(sub_1CF3388C0, v153, v25);
  if (v28)
  {
    return;
  }

  v30 = v29;
  v136 = v23;
  v137 = v24;
  v134 = v20;
  v139 = v27;
  v149 = 0;
  if ([v29 next])
  {
    v31 = sub_1CF1CB920();
    v32 = v149;
    sub_1CF24041C(v30, v31, 0, v158);
    v149 = v32;
    if (v32)
    {

      v31, v40, v41, v42, v43, v44, v45, v46;
      return;
    }

    v47 = v16;
    v48 = v18;
    v135 = v30;
    v31, v33, v34, v35, v36, v37, v38, v39;
    v51 = v158[0];
    v53 = *&v158[8];
    v54 = *&v158[24];
    v50 = *&v158[40];
    v49 = v159[0];
    v52 = *&v159[8];
  }

  else
  {
    v135 = v30;
    v47 = v16;
    v48 = v7;
    if (qword_1EDEAA348 != -1)
    {
      swift_once();
    }

    *&v159[16] = qword_1EDEBB9E0;
    *&v158[32] = xmmword_1EDEBB9C0;
    *v159 = unk_1EDEBB9D0;
    *v158 = xmmword_1EDEBB9A0;
    *&v158[16] = *algn_1EDEBB9B0;
    v49 = unk_1EDEBB9D0;
    v50 = *(&xmmword_1EDEBB9C0 + 1);
    v138 = *&v158[24];
    v132 = *&v158[8];
    v133 = *&v159[8];
    v51 = xmmword_1EDEBB9A0;
    sub_1CF338250(v158, v157);
    v53 = v132;
    v52 = v133;
    v54 = v138;
  }

  v55 = v136;
  v56 = v142;
  LODWORD(v142) = v51;
  v158[0] = v51;
  *&v158[8] = v53;
  v138 = v54;
  *&v158[24] = v54;
  *&v158[40] = v50;
  v159[0] = v49;
  *&v159[8] = v52;
  v164[2] = *&v158[32];
  v164[3] = *v159;
  v165 = *(&v52 + 1);
  v164[0] = *v158;
  v164[1] = *&v158[16];
  v56(v160, v164);
  v57 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v58 = v143;
  v60 = (v143 + 16);
  v59 = *(v143 + 16);
  v61 = v148;
  v59(v55, v47, v148);

  sub_1CF338250(v160, v157);
  v62 = sub_1CF9E6108();
  v63 = sub_1CF9E7298();
  sub_1CF2CA1E8(v160);
  LODWORD(v141) = v63;
  v64 = os_log_type_enabled(v62, v63);
  v136 = v60;
  if (v64)
  {
    v65 = v48;
    v66 = v55;
    v67 = swift_slowAlloc();
    *&v132 = swift_slowAlloc();
    v156 = v132;
    *v67 = 136446722;
    v131 = v62;
    v68 = *(v65 + 24);

    if (v68)
    {
      v69 = 20550;
    }

    else
    {
      v69 = 21318;
    }

    v70 = sub_1CEFD0DF0(v69, 0xE200000000000000, &v156);
    0xE200000000000000, v71, v72, v73, v74, v75, v76, v77;
    *(v67 + 4) = v70;
    *(v67 + 12) = 2080;
    v78 = v134;
    v59(v134, v66, v61);
    *&v133 = v65;
    v79 = *(v58 + 8);
    v79(v66, v61);
    v80 = sub_1CF94BC9C(v61);
    v81 = v61;
    v83 = v82;
    v79(v78, v81);
    v84 = v150;
    v48 = v133;
    v85 = sub_1CEFD0DF0(v80, v83, &v156);
    v83, v86, v87, v88, v89, v90, v91, v92;
    *(v67 + 14) = v85;
    *(v67 + 22) = 2080;
    sub_1CF338250(v160, v157);
    v93 = sub_1CF94B3EC();
    v95 = v94;
    sub_1CF2CA1E8(v160);
    v96 = sub_1CEFD0DF0(v93, v95, &v156);
    v95, v97, v98, v99, v100, v101, v102, v103;
    *(v67 + 24) = v96;
    v104 = v131;
    _os_log_impl(&dword_1CEFC7000, v131, v141, "✍️  %{public}s: throttle %s: %s", v67, 0x20u);
    v105 = v132;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v105, -1, -1);
    MEMORY[0x1D386CDC0](v67, -1, -1);

    v106 = (*(v144 + 8))(v139, v137);
    v107 = v146;
    v108 = v59;
  }

  else
  {
    (*(v58 + 8))(v55, v61);

    v106 = (*(v144 + 8))(v139, v137);
    v107 = v146;
    v108 = v59;
    v84 = v150;
  }

  v109 = MEMORY[0x1EEE9AC00](v106);
  *(&v130 - 6) = v110;
  *(&v130 - 5) = v111;
  *(&v130 - 4) = v48;
  *(&v130 - 3) = v84;
  *(&v130 - 2) = v160;
  v112 = v149;
  (*(v111 + 32))(sub_1CF3388CC, v109);
  v113 = v48;
  v114 = v147;
  v115 = v145;
  v116 = v142;
  if (v112)
  {

    sub_1CF2CA1E8(v158);
    sub_1CF2CA1E8(v160);
    return;
  }

  if (LOBYTE(v160[0]) != 1)
  {
    goto LABEL_28;
  }

  v117 = v140;
  if (v161 > v140 && v163 == 9)
  {
    sub_1CF32D628();
    v117 = v140;
  }

  if (v116 == 1 && v138 > v117 || v161 <= v117)
  {
LABEL_28:

    sub_1CF2CA1E8(v158);
    v128 = v160;
LABEL_29:
    sub_1CF2CA1E8(v128);
    return;
  }

  v118 = v162;
  if (!v162)
  {

    sub_1CF2CA1E8(v160);
    v128 = v158;
    goto LABEL_29;
  }

  v149 = 0;
  v119 = *(v113 + 136);
  if (v119)
  {
    v166 = v108;
    v120 = *(v113 + 144);
    v121 = v162;
    v122 = sub_1CF03C63C(v119, v120);
    v123 = v119(v122);
    sub_1CEFF7124(v119, v120);
    if (v123)
    {
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
      v124 = v148;
      v125 = *(swift_getTupleTypeMetadata2() + 48);
      v166(v115, v84, v124);
      *&v115[v125] = v118;
      swift_storeEnumTagMultiPayload();
      v126 = *(*v123 + 312);
      v127 = v118;
      v126(v115);
      sub_1CF2CA1E8(v160);

      sub_1CF2CA1E8(v158);

      (*(v107 + 8))(v115, v114);
      return;
    }
  }

  else
  {
    v129 = v162;
  }

  sub_1CF2CA1E8(v160);

  sub_1CF2CA1E8(v158);
}

uint64_t sub_1CF3325B0(uint64_t a1, uint64_t **a2, uint64_t a3)
{
  v6 = *a2;
  sub_1CF9E7948();
  0xE000000000000000, v7, v8, v9, v10, v11, v12, v13;
  MEMORY[0x1D3868CC0](a2[6], a2[7]);
  MEMORY[0x1D3868CC0](0x204D4F524620200ALL, 0xE800000000000000);
  MEMORY[0x1D3868CC0](a2[4], a2[5]);
  MEMORY[0x1D3868CC0](0x204552454857200ALL, 0xE800000000000000);
  v14 = sub_1CF050908(a3, a1, v6[10], v6[11], v6[12], v6[13]);
  v16 = v15;
  MEMORY[0x1D3868CC0](v14);
  v16, v17, v18, v19, v20, v21, v22, v23;
  return 0x205443454C4553;
}

void sub_1CF3326EC(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v58[1] = a4;
  v59 = a3;
  v62[0] = swift_getAssociatedTypeWitness();
  v62[1] = swift_getAssociatedTypeWitness();
  v62[2] = swift_getAssociatedConformanceWitness();
  v62[3] = swift_getAssociatedConformanceWitness();
  v6 = type metadata accessor for ThrottlingKey(255, v62);
  v7 = sub_1CF9E75D8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v58 - v9;
  v62[0] = 0;
  v62[1] = 0xE000000000000000;
  sub_1CF9E7948();
  v62[1], v11, v12, v13, v14, v15, v16, v17;
  strcpy(v62, "REPLACE INTO ");
  HIWORD(v62[1]) = -4864;
  MEMORY[0x1D3868CC0](a2[4], a2[5]);
  MEMORY[0x1D3868CC0](10272, 0xE200000000000000);
  MEMORY[0x1D3868CC0](a2[8], a2[9]);
  MEMORY[0x1D3868CC0](8236, 0xE200000000000000);
  MEMORY[0x1D3868CC0](a2[6], a2[7]);
  MEMORY[0x1D3868CC0](0xD000000000000010, 0x80000001CFA402E0);
  v18 = *(v6 - 8);
  (*(v18 + 16))(v10, v59, v6);
  (*(v18 + 56))(v10, 0, 1, v6);
  WitnessTable = swift_getWitnessTable();
  v20 = sub_1CF073320(v10, v6, WitnessTable);
  v22 = v21;
  (*(v8 + 8))(v10, v7);
  MEMORY[0x1D3868CC0](v20, v22);
  v22, v23, v24, v25, v26, v27, v28, v29;
  MEMORY[0x1D3868CC0](8236, 0xE200000000000000);
  v37 = sub_1CF1CB920();
  v38 = *v37->tree;
  if (v38)
  {
    v39 = 0;
    while (v39 < *v37->tree)
    {
      sub_1CF486464(*(&v37[1].super.isa + v39++), a1);
      v40, v40, v41, v42, v43, v44, v45, v46;
      if (v38 == v39)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:
    v37, v30, v31, v32, v33, v34, v35, v36;
    v47 = sub_1CF9E6B18();
    v60 = v47;
    v61 = v48;
    v49 = (v48 >> 56) & 0xF;
    if ((v48 & 0x2000000000000000) == 0)
    {
      v49 = v47 & 0xFFFFFFFFFFFFLL;
    }

    if (v49)
    {
      sub_1CF03DE28(2);
      v47 = v60;
      v50 = v61;
    }

    else
    {
      v50 = v48;
    }

    MEMORY[0x1D3868CC0](v47, v50);
    v50, v51, v52, v53, v54, v55, v56, v57;
    MEMORY[0x1D3868CC0](41, 0xE100000000000000);
  }
}

__n128 sub_1CF332B48@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = swift_getAssociatedTypeWitness();
  v6 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = swift_getAssociatedConformanceWitness();
  *&v26 = v6;
  *(&v26 + 1) = v5;
  v27.n128_u64[0] = AssociatedConformanceWitness;
  v27.n128_u64[1] = v8;
  v9 = type metadata accessor for ThrottlingKey(0, &v26);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v23 - v11;
  (*(v13 + 16))(&v23 - v11, v24, v10);
  v14 = *(v2 + 248);
  v15 = *(v2 + 280);
  v32 = *(v2 + 264);
  v33 = v15;
  v34 = *(v2 + 296);
  v16 = *(v2 + 184);
  v17 = *(v2 + 216);
  v28 = *(v2 + 200);
  v29 = v17;
  v30 = *(v2 + 232);
  v31 = v14;
  v26 = *(v2 + 168);
  v27 = v16;
  sub_1CF3386F8(&v26, v25);
  v25[0] = v6;
  v25[1] = v5;
  v25[2] = AssociatedConformanceWitness;
  v25[3] = v8;
  v18 = type metadata accessor for ReconciliationID(0, v25);
  (*(*(v18 - 8) + 8))(v12, v18);
  v19 = v33;
  *(a2 + 96) = v32;
  *(a2 + 112) = v19;
  *(a2 + 128) = v34;
  v20 = v29;
  *(a2 + 32) = v28;
  *(a2 + 48) = v20;
  v21 = v31;
  *(a2 + 64) = v30;
  *(a2 + 80) = v21;
  result = v27;
  *a2 = v26;
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_1CF332DC0(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6)
{
  v67 = a6;
  v68 = a4;
  v69 = a5;
  v71 = a2;
  v72 = a3;
  v73 = a1;
  v8 = *v6;
  v9 = *(*v6 + 80);
  v65 = *(*v6 + 96);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(v8 + 104);
  v70 = v6;
  v12 = *(v8 + 88);
  v14 = v71;
  v13 = v72;
  v62 = AssociatedTypeWitness;
  v74 = AssociatedTypeWitness;
  v75 = swift_getAssociatedTypeWitness();
  v60 = v75;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v77 = swift_getAssociatedConformanceWitness();
  v15 = type metadata accessor for ThrottlingKey(0, &v74);
  v66 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = v16;
  MEMORY[0x1EEE9AC00](v18);
  v87 = &v56 - v19;
  v20 = v65;
  v64 = v9;
  v61 = v12;
  v63 = v11;
  v21 = sub_1CF052838(v73);
  v22 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_28;
  }

  v59 = v21;
  sub_1CF2F462C();
  v11 = swift_allocError();
  *v23 = v14;
  *(v23 + 8) = 0;
  *(v23 + 16) = 0;
  v24 = sub_1CF94CA10(v11);
  LOBYTE(v9) = v24;
  v14 += v13;
  if (v24 <= 0xBu)
  {
    v14 = v22;
    if (((1 << v24) & 0x860) != 0)
    {
      v14 = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  if (v24 == 7)
  {
    v56 = v26;
    v57 = v25;
    if (qword_1EDEAC220 == -1)
    {
LABEL_7:
      MEMORY[0x1EEE9AC00](v24);
      *(&v56 - 2) = v22;
      v27 = v72;
      *(&v56 - 1) = v72;
      sub_1CF961460(sub_1CF3387E8, (&v56 - 4));
      v13 = v27;
      if (v28 == 3)
      {
        v29 = 1;
      }

      else
      {
        v29 = v28;
      }

      v20 = v65;
      v25 = v57;
      v26 = v56;
      goto LABEL_14;
    }

LABEL_28:
    v24 = swift_once();
    goto LABEL_7;
  }

  if (v14 > v13)
  {
    v29 = 1;
  }

  else
  {
    v29 = 2;
  }

LABEL_14:
  v78[0] = v29;
  v79 = v59;
  v80 = 0;
  v81 = v14;
  v82 = v13;
  v83 = v11;
  v84 = v9;
  v85 = v25;
  v86 = v26;
  v30 = sub_1CF04FB84(v73, v62, v60, v64, v61, v20, v63);
  if (!sub_1CF9E6DF8())
  {
LABEL_25:
    v30, v31, v32, v33, v34, v35, v36, v37;
    sub_1CF32C57C(v68, v69, *(v67 + 8));
    return sub_1CF2CA1E8(v78);
  }

  v38 = 0;
  v65 = (v66 + 16);
  v39 = (v66 + 32);
  v64 = (v66 + 8);
  while (1)
  {
    v40 = sub_1CF9E6DC8();
    sub_1CF9E6D78();
    if (v40)
    {
      (*(v66 + 16))(v87, v30 + ((*(v66 + 80) + 32) & ~*(v66 + 80)) + *(v66 + 72) * v38, v15);
      v41 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        goto LABEL_24;
      }

      goto LABEL_18;
    }

    result = sub_1CF9E7998();
    if (v58 != 8)
    {
      break;
    }

    v74 = result;
    (*v65)(v87, &v74, v15);
    swift_unknownObjectRelease();
    v41 = v38 + 1;
    if (__OFADD__(v38, 1))
    {
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

LABEL_18:
    v42 = (*v39)(v17, v87, v15);
    MEMORY[0x1EEE9AC00](v42);
    v43 = v69;
    v44 = v70;
    v46 = v67;
    v45 = v68;
    *(&v56 - 10) = v69;
    *(&v56 - 9) = v46;
    *(&v56 - 8) = v17;
    *(&v56 - 7) = v44;
    *(&v56 - 6) = v78;
    v47 = v72;
    *(&v56 - 5) = v71;
    *(&v56 - 4) = 0;
    *(&v56 - 24) = 0;
    *(&v56 - 2) = v73;
    *(&v56 - 1) = v47;
    sub_1CF331B8C(v17, v47, v45, sub_1CF3387A8, (&v56 - 12), v43, v46);
    if (v7)
    {
      v30, v48, v49, v50, v51, v52, v53, v54;
      sub_1CF2CA1E8(v78);
      return (*v64)(v17, v15);
    }

    (*v64)(v17, v15);
    ++v38;
    if (v41 == sub_1CF9E6DF8())
    {
      goto LABEL_25;
    }
  }

  __break(1u);
  return result;
}

void sub_1CF3333CC(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unsigned int a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v97 = a8;
  v98 = a4;
  v93 = a7;
  v91 = a5;
  v92 = a6;
  v99 = a1;
  v100 = a9;
  v12 = *a3;
  v13 = *(*a3 + 96);
  v14 = *(*a3 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = *(v12 + 104);
  v17 = swift_getAssociatedTypeWitness();
  v95 = v14;
  v96 = v13;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v94 = v16;
  v19 = swift_getAssociatedConformanceWitness();
  v101 = AssociatedTypeWitness;
  v102 = v17;
  v103 = AssociatedConformanceWitness;
  v104 = v19;
  v20 = type metadata accessor for ThrottlingKey(0, &v101);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v91 - v22;
  (*(v24 + 16))(&v91 - v22, a2, v21);
  v101 = AssociatedTypeWitness;
  v102 = v17;
  v103 = AssociatedConformanceWitness;
  v104 = v19;
  v25 = type metadata accessor for ReconciliationID(255, &v101);
  LODWORD(a2) = v23[*(swift_getTupleTypeMetadata2() + 48)];
  (*(*(v25 - 8) + 8))(v23, v25);
  if (a2 == 2)
  {
    a3[160] = 1;
  }

  v26 = v99;
  if (*v99 == 1)
  {
    v30 = *(v99 + 40);
    if (v30)
    {
      sub_1CF2F462C();
      v36 = swift_allocError();
      v38 = v91;
      v37 = v92;
      *v39 = v91;
      *(v39 + 8) = v37;
      v40 = v93;
      *(v39 + 16) = v93;
      v41 = v30;
      sub_1CF338150(v38, v37, v40);
      v42 = sub_1CF9E57E8();

      v43 = sub_1CF9E57E8();
      v44 = [v42 domain];
      v45 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v47 = v46;

      v48 = [v43 domain];
      v49 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v51 = v50;

      if (v45 == v49 && v47 == v51)
      {
        v47, v52, v53, v54, v55, v56, v57, v58;
        v51, v59, v60, v61, v62, v63, v64, v65;
      }

      else
      {
        v66 = sub_1CF9E8048();
        v47, v67, v68, v69, v70, v71, v72, v73;
        v51, v74, v75, v76, v77, v78, v79, v80;
        if ((v66 & 1) == 0)
        {

          goto LABEL_14;
        }
      }

      v81 = [v42 code];
      v82 = [v43 code];

      if (v81 == v82)
      {
        v27 = *(v26 + 56);
        v28 = *(v26 + 64);
        v83 = v26;
        v29 = *(v26 + 48);
        v84 = v26 + 24;
        v32 = *(v26 + 24);
        v31 = *(v84 + 8);
        v34 = *(v83 + 8);
        v33 = *(v83 + 16);
        sub_1CF338250(v83, &v101);
        goto LABEL_26;
      }
    }
  }

  else if (!*v99)
  {
    v27 = *(v98 + 56);
    v28 = *(v98 + 64);
    v29 = *(v98 + 48);
    v31 = *(v98 + 32);
    v30 = *(v98 + 40);
    v33 = *(v98 + 16);
    v32 = *(v98 + 24);
    v34 = *(v98 + 8);
    v35 = *v98;
    sub_1CF338250(v98, &v101);
LABEL_27:
    v89 = v100;
    goto LABEL_28;
  }

LABEL_14:
  v34 = sub_1CF052838(v97);
  v33 = *(v26 + 16);
  v32 = *(v98 + 24);
  v31 = *(v98 + 32);
  v30 = *(v98 + 40);
  v85 = v30;
  v86 = sub_1CF94CA10(v30);
  v29 = v86;
  v27 = v87;
  v28 = v88;
  if (v86 - 5 >= 2)
  {
    if (v86 == 7)
    {
      if (qword_1EDEAC220 != -1)
      {
        v86 = swift_once();
      }

      MEMORY[0x1EEE9AC00](v86);
      *(&v91 - 2) = v32;
      *(&v91 - 1) = a10;
      sub_1CF961460(sub_1CF338B2C, (&v91 - 4));
      if (v90 == 3)
      {
        v35 = 1;
      }

      else
      {
        v35 = v90;
      }

      v29 = 7;
      goto LABEL_27;
    }

    if (v86 != 11)
    {
      if (v32 <= a10)
      {
        goto LABEL_18;
      }

LABEL_26:
      v35 = 1;
      goto LABEL_27;
    }
  }

  v32 = 0x7FFFFFFFFFFFFFFFLL;
  if (a10 != 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_26;
  }

LABEL_18:
  v89 = v100;
  v35 = 2;
LABEL_28:
  *v89 = v35;
  *(v89 + 8) = v34;
  *(v89 + 16) = v33;
  *(v89 + 24) = v32;
  *(v89 + 32) = v31;
  *(v89 + 40) = v30;
  *(v89 + 48) = v29;
  *(v89 + 56) = v27;
  *(v89 + 64) = v28;
}

void sub_1CF333918(uint64_t a1, void (**a2)(char *, uint64_t), char *a3, uint64_t a4, uint64_t a5)
{
  v167 = a2;
  v172 = a5;
  v173 = a4;
  v171 = a3;
  v179 = a1;
  v6 = *v5;
  v7 = *(*v5 + 88);
  v8 = *(*v5 + 104);
  v163 = type metadata accessor for FileTreeError(0, v7, v8, a4);
  v154 = *(v163 - 1);
  MEMORY[0x1EEE9AC00](v163);
  v153 = &v145 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v164 = &v145 - v11;
  v12 = *(v6 + 80);
  v174 = v5;
  v13 = *(v6 + 96);
  v165 = type metadata accessor for FileTreeError(0, v12, v13, v14);
  v156 = *(v165 - 1);
  MEMORY[0x1EEE9AC00](v165);
  v155 = &v145 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v162 = (&v145 - v17);
  *&v18 = v12;
  *(&v18 + 1) = v7;
  *&v19 = v13;
  *(&v19 + 1) = v8;
  v151 = v19;
  v152 = v18;
  v176 = v19;
  v175 = v18;
  v20 = type metadata accessor for PersistenceTrigger(0, &v175);
  v149 = *(v20 - 8);
  v150 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v148 = &v145 - v21;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v23 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v25 = swift_getAssociatedConformanceWitness();
  v160 = v23;
  v161 = AssociatedTypeWitness;
  *&v175 = AssociatedTypeWitness;
  *(&v175 + 1) = v23;
  v26 = v13;
  v27 = v12;
  v146 = v25;
  v147 = AssociatedConformanceWitness;
  *&v176 = AssociatedConformanceWitness;
  *(&v176 + 1) = v25;
  v28 = type metadata accessor for ThrottlingKey(0, &v175);
  v170 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v166 = &v145 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v169 = &v145 - v31;
  v145 = v32;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v145 - v34;
  v157 = v26;
  v158 = v7;
  v159 = v8;
  v36 = sub_1CF057B00(v179);
  v39 = v36;
  if (v38 > 2u)
  {
    if (v38 != 3)
    {
      if (v38 == 4 && v36 == 1 && !v37)
      {
        sub_1CF03C530(1, 0, 4u);
        v43 = sub_1CF04FB80();
        if (sub_1CF9E6DF8())
        {
          v51 = 0;
          v52 = 0;
          v169 = (v170 + 16);
          v167 = (v170 + 8);
          v53 = v168;
          do
          {
            v54 = sub_1CF9E6DC8();
            sub_1CF9E6D78();
            if (v54)
            {
              v55 = v53;
              (*(v170 + 16))(v35, v43 + ((*(v170 + 80) + 32) & ~*(v170 + 80)) + *(v170 + 72) * v51, v28);
            }

            else
            {
              v74 = sub_1CF9E7998();
              if (v145 != 8)
              {
                goto LABEL_77;
              }

              v55 = v53;
              *&v175 = v74;
              (*v169)(v35, &v175, v28);
              swift_unknownObjectRelease();
            }

            v56 = v51 + 1;
            if (__OFADD__(v51, 1))
            {
              __break(1u);
LABEL_77:
              __break(1u);
              goto LABEL_78;
            }

            v57 = sub_1CF32F450(v35, v171, v173, v172);
            if (v55)
            {
              v43, v58, v59, v60, v61, v62, v63, v64;
              sub_1CF03D7A8(1, 0, 4u);
              (*v167)(v35, v28);
              return;
            }

            v65 = v57;
            (*v167)(v35, v28);
            v52 |= v65;
            ++v51;
            v66 = v56 == sub_1CF9E6DF8();
            v53 = 0;
          }

          while (!v66);
          v43, v67, v68, v69, v70, v71, v72, v73;
          if (v52)
          {
            sub_1CF32C57C(v171, v173, *(v172 + 8));
            v97 = v179;
            goto LABEL_45;
          }
        }

        else
        {
          v43, v44, v45, v46, v47, v48, v49, v50;
        }

        v97 = v179;
LABEL_45:
        if ((v97 & 0x8000000000000000) == 0 && (v175 = v152, v176 = v151, type metadata accessor for Ingestion.FetchItemMetadata(0, &v175), (v98 = swift_dynamicCastClass()) != 0) && (*(v98 + 136) & 0x2140) != 0 && (v99 = v174[17]) != 0 && (v100 = v98, v101 = v174[18], v102 = , v103 = v99(v102), sub_1CEFF7124(v99, v101), v103))
        {
          v104 = v161;
          *&v175 = v161;
          *(&v175 + 1) = v160;
          *&v176 = v147;
          *(&v176 + 1) = v146;
          type metadata accessor for ReconciliationID(255, &v175);
          v105 = *(swift_getTupleTypeMetadata2() + 48);
          v106 = v100 + *(*v100 + 576);
          v107 = v148;
          (*(*(v104 - 8) + 16))(v148, v106, v104);
          swift_storeEnumTagMultiPayload();
          v107[v105] = 3;
          v108 = v150;
          swift_storeEnumTagMultiPayload();
          (*(*v103 + 312))(v107);

          sub_1CF03D7A8(1, 0, 4u);
          (*(v149 + 8))(v107, v108);
        }

        else
        {
          sub_1CF03D7A8(1, 0, 4u);
        }
      }

      return;
    }

    v177 = v36;
    *&v152 = v37;
    sub_1CF03C530(v36, v37, 3u);
    v83 = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
    v84 = swift_dynamicCast();
    v85 = v165;
    v86 = v166;
    v87 = v164;
    if (v84)
    {
      if (!v176)
      {
        sub_1CF332DC0(v179, v175, v167, v171, v173, v172);
        sub_1CF03D7A8(v39, v152, 3u);

        return;
      }

      sub_1CF3386E4(v175, *(&v175 + 1), v176);
    }

    *&v175 = v39;
    v88 = v39;
    v89 = v162;
    if (swift_dynamicCast())
    {
      if (swift_getEnumCaseMultiPayload() == 8)
      {
        sub_1CF03D7A8(v39, v152, 3u);
        (*(v156 + 8))(v89, v85);
LABEL_59:

        return;
      }

      (*(v156 + 8))(v89, v85);
    }

    *&v175 = v39;
    v95 = v39;
    v96 = v163;
    if (swift_dynamicCast())
    {
      if (swift_getEnumCaseMultiPayload() == 8)
      {
        sub_1CF03D7A8(v39, v152, 3u);
        (*(v154 + 8))(v87, v96);
        goto LABEL_59;
      }

      (*(v154 + 8))(v87, v96);
    }

    *&v175 = v39;
    v109 = v39;
    v110 = v155;
    if (swift_dynamicCast())
    {
      if (swift_getEnumCaseMultiPayload() == 18)
      {
LABEL_58:
        sub_1CF03D7A8(v39, v152, 3u);
        goto LABEL_59;
      }

      (*(v156 + 8))(v110, v85);
    }

    *&v175 = v39;
    v111 = v39;
    v112 = v153;
    v113 = v163;
    if (swift_dynamicCast())
    {
      if (swift_getEnumCaseMultiPayload() == 18)
      {
        goto LABEL_58;
      }

      (*(v154 + 8))(v112, v113);
    }

    v165 = v39;
    v114 = v39;
    v115 = sub_1CF04FB84(v179, v161, v160, v27, v158, v157, v159);
    if (!sub_1CF9E6DF8())
    {
LABEL_72:
      v115, v116, v117, v118, v119, v120, v121, v122;
      sub_1CF32C57C(v171, v173, *(v172 + 8));
      v134 = v165;
      v135 = v152;
      sub_1CF03D7A8(v165, v152, 3u);
      sub_1CF03D7A8(v134, v135, 3u);
      return;
    }

    v123 = 0;
    v162 = (v170 + 32);
    v163 = (v170 + 8);
    v164 = (v170 + 16);
    v124 = v168;
    while (1)
    {
      v125 = sub_1CF9E6DC8();
      sub_1CF9E6D78();
      if (v125)
      {
        (*(v170 + 16))(v169, v115 + ((*(v170 + 80) + 32) & ~*(v170 + 80)) + *(v170 + 72) * v123, v28);
        v126 = v123 + 1;
        if (__OFADD__(v123, 1))
        {
          goto LABEL_71;
        }
      }

      else
      {
        v133 = sub_1CF9E7998();
        if (v145 != 8)
        {
LABEL_78:
          __break(1u);
          return;
        }

        *&v175 = v133;
        (*v164)(v169, &v175, v28);
        swift_unknownObjectRelease();
        v126 = v123 + 1;
        if (__OFADD__(v123, 1))
        {
LABEL_71:
          __break(1u);
          goto LABEL_72;
        }
      }

      v127 = (*v162)(v86, v169, v28);
      MEMORY[0x1EEE9AC00](v127);
      v129 = v172;
      v128 = v173;
      *(&v145 - 8) = v173;
      *(&v145 - 7) = v129;
      v130 = v179;
      *(&v145 - 6) = v165;
      *(&v145 - 5) = v130;
      v131 = v167;
      v132 = v174;
      *(&v145 - 4) = v167;
      *(&v145 - 3) = v132;
      *(&v145 - 2) = v86;
      sub_1CF331B8C(v86, v131, v171, sub_1CF3386D0, (&v145 - 10), v128, v129);
      if (v124)
      {
        v136 = v165;
        v137 = v152;
        sub_1CF03D7A8(v165, v152, 3u);
        v115, v138, v139, v140, v141, v142, v143, v144;
        sub_1CF03D7A8(v136, v137, 3u);
        (*v163)(v86, v28);
        return;
      }

      (*v163)(v86, v28);
      ++v123;
      if (v126 == sub_1CF9E6DF8())
      {
        goto LABEL_72;
      }
    }
  }

  v40 = v38;
  v41 = v36;
  if (v38)
  {
    if (v38 != 1)
    {
      return;
    }

    v42 = v36;
    if (!v36)
    {
      return;
    }
  }

  else
  {
    v42 = v37;
    if (!v37)
    {
      return;
    }
  }

  v75 = *(*v42 + 88);
  v76 = v37;
  v77 = sub_1CF03C530(v36, v37, v38);
  v78 = v75(v77);
  v80 = v79;
  v82 = v81;
  sub_1CF03D7A8(v41, v76, v40);
  if (v82 > 1u)
  {
    if (v82 == 2)
    {
      v90 = *(v174 + 31);
      v91 = *(v174 + 23);
      v92 = *(v174 + 27);
      v178[2] = *(v174 + 25);
      v178[3] = v92;
      v178[4] = *(v174 + 29);
      v178[5] = v90;
      v178[0] = *(v174 + 21);
      v178[1] = v91;
      v93 = *(v174 + 35);
      v178[6] = *(v174 + 33);
      v178[7] = v93;
      v178[8] = *(v174 + 37);
      sub_1CF3386F8(v178, &v175);
      v94 = v78(v178);
      sub_1CF338754(v178);
      sub_1CF332DC0(v179, v94, v167, v171, v173, v172);
      sub_1CF1DBCF0(v78, v80, 2);
    }
  }

  else if (!v82)
  {
    sub_1CF332DC0(v179, v78, v167, v171, v173, v172);
  }
}

__n128 sub_1CF3347F8@<Q0>(void *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v9 = sub_1CF052838(a2);
  sub_1CF332B48(a4, v12);
  sub_1CF94A494(a1, v9, a3, v12, v13);
  sub_1CF338754(v12);
  v10 = v13[3];
  *(a5 + 32) = v13[2];
  *(a5 + 48) = v10;
  *(a5 + 64) = v14;
  result = v13[1];
  *a5 = v13[0];
  *(a5 + 16) = result;
  return result;
}

uint64_t sub_1CF334900(void *a1, void *a2, uint64_t (*a3)(void *), uint64_t a4, uint64_t a5, char a6)
{
  v11 = 0xE000000000000000;
  sub_1CF9E7948();
  0xE000000000000000, v12, v13, v14, v15, v16, v17, v18;
  MEMORY[0x1D3868CC0](a2[8], a2[9]);
  MEMORY[0x1D3868CC0](8236, 0xE200000000000000);
  MEMORY[0x1D3868CC0](a2[6], a2[7]);
  MEMORY[0x1D3868CC0](0x204D4F524620200ALL, 0xE800000000000000);
  MEMORY[0x1D3868CC0](a2[4], a2[5]);
  MEMORY[0x1D3868CC0](0x204552454857200ALL, 0xE800000000000000);
  v19 = a3(a1);
  v21 = v20;
  MEMORY[0x1D3868CC0](v19);
  v21, v22, v23, v24, v25, v26, v27, v28;
  MEMORY[0x1D3868CC0](8202, 0xE200000000000000);
  if (a6)
  {
    v29 = 0;
  }

  else
  {
    v30 = [a1 bindLongParameter_];
    v31 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v33 = v32;

    MEMORY[0x1D3868CC0](v31, v33);
    v33, v34, v35, v36, v37, v38, v39, v40;
    v29 = 0x2054494D494CLL;
    v11 = 0xE600000000000000;
  }

  MEMORY[0x1D3868CC0](v29, v11);
  v11, v41, v42, v43, v44, v45, v46, v47;
  return 0x205443454C4553;
}

void sub_1CF334AAC(void *a1, void (*a2)(char *, _OWORD *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v45[1] = a3;
  v46 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = swift_getAssociatedConformanceWitness();
  *&v48 = AssociatedTypeWitness;
  *(&v48 + 1) = v10;
  *&v49 = AssociatedConformanceWitness;
  *(&v49 + 1) = v12;
  v13 = type metadata accessor for ThrottlingKey(0, &v48);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v45 - v15;
  WitnessTable = swift_getWitnessTable();
  v18 = v55;
  sub_1CF01E03C(a1, 0, v13, WitnessTable, v16);
  if (!v18)
  {
    v55 = 0;
    v19 = swift_getWitnessTable();
    v20 = sub_1CF01E0C4(v13, v19);
    v47[0] = AssociatedTypeWitness;
    v47[1] = v10;
    v47[2] = AssociatedConformanceWitness;
    v47[3] = v12;
    _s9SQLFieldsOMa_3(0, v47);
    v21 = sub_1CF9E6DF8();
    v20, v22, v23, v24, v25, v26, v27, v28;
    if (v21 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (v21 <= 0x7FFFFFFF)
    {
      v29 = sub_1CF1CB920();
      v30 = v55;
      sub_1CF24041C(a1, v29, v21, &v48);
      if (v30)
      {
        (*(v14 + 8))(v16, v13);
        v29, v38, v39, v40, v41, v42, v43, v44;
      }

      else
      {
        v29, v31, v32, v33, v34, v35, v36, v37;
        v53[2] = v50;
        v53[3] = v51;
        v54 = v52;
        v53[0] = v48;
        v53[1] = v49;
        v46(v16, v53);
        sub_1CF2CA1E8(v53);
        (*(v14 + 8))(v16, v13);
      }

      return;
    }

    __break(1u);
  }
}

_TtC18FileProviderDaemon8FSTester *sub_1CF334DAC(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *v7;
  v9 = *(*v7 + 96);
  v10 = *(*v7 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(v8 + 104);
  v13 = *(v8 + 88);
  v50[0] = AssociatedTypeWitness;
  v50[1] = swift_getAssociatedTypeWitness();
  v50[2] = swift_getAssociatedConformanceWitness();
  v50[3] = swift_getAssociatedConformanceWitness();
  type metadata accessor for ThrottlingKey(255, v50);
  swift_getTupleTypeMetadata2();
  v51 = sub_1CF9E6DA8();
  v40 = v10;
  v41 = v13;
  v42 = a6;
  v43 = v9;
  v44 = v12;
  v45 = a7;
  v46 = a1;
  v47 = a2;
  v48 = a3;
  v49 = a4 & 1;
  v32 = v10;
  v33 = v13;
  v34 = a6;
  v35 = v9;
  v36 = v12;
  v37 = a7;
  v38 = &v51;
  sub_1CF32F18C(a5, sub_1CF3388FC, v39, sub_1CF338940, v31, 0, 1, a6, a7);
  v21 = v51;
  if (v30)
  {
    v51, v14, v15, v16, v17, v18, v19, v20;
  }

  return v21;
}

uint64_t sub_1CF334FC4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = a3;
  v12 = 0xE000000000000000;
  v99 = 0xE000000000000000;
  sub_1CF9E7948();
  0xE000000000000000, v13, v14, v15, v16, v17, v18, v19;
  v103 = 0x203D20646E696BLL;
  v104 = 0xE700000000000000;
  v98 = 0;
  v20 = MEMORY[0x1E69E6530];
  v21 = sub_1CF9E7F98();
  v23 = v22;
  MEMORY[0x1D3868CC0](v21);
  v23, v24, v25, v26, v27, v28, v29, v30;
  MEMORY[0x1D3868CC0](0x65746920444E4120, 0xEF203D2064695F6DLL);
  swift_getAssociatedTypeWitness();
  v31 = *(swift_getAssociatedConformanceWitness() + 8);
  v32 = *(v31 + 32);
  v33 = swift_checkMetadataState();
  v34 = v32(a1, v33, v31);
  v36 = v35;
  MEMORY[0x1D3868CC0](v34);
  v36, v37, v38, v39, v40, v41, v42, v43;
  MEMORY[0x1D3868CC0](10, 0xE100000000000000);
  if (v11 == 89)
  {
    v44 = 0;
  }

  else
  {
    v98 = 0;
    v99 = 0xE000000000000000;
    sub_1CF9E7948();
    0xE000000000000000, v45, v46, v47, v48, v49, v50, v51;
    v101 = 0x5F626F6A20444E41;
    v102 = 0xEF203D2065707974;
    v52 = qword_1CFA02AA8[a3];
    v100 = v20;
    v98 = v52;
    v53 = sub_1CEFF8EA0(&v98);
    v55 = v54;
    sub_1CEFCCC44(&v98, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    if (!v55)
    {
      result = sub_1CF9E7B68();
      __break(1u);
      return result;
    }

    MEMORY[0x1D3868CC0](v53, v55);
    v55, v56, v57, v58, v59, v60, v61, v62;
    v44 = v101;
    v12 = v102;
  }

  MEMORY[0x1D3868CC0](v44, v12);
  v12, v63, v64, v65, v66, v67, v68, v69;
  MEMORY[0x1D3868CC0](10, 0xE100000000000000);
  v70 = 0xE000000000000000;
  if (a5)
  {
    v71 = 0;
  }

  else
  {
    v98 = 0;
    v99 = 0xE000000000000000;
    sub_1CF9E7948();
    v99, v72, v73, v74, v75, v76, v77, v78;
    v98 = 0xD000000000000017;
    v99 = 0x80000001CFA403A0;
    v79 = sub_1CF1D5A14();
    v81 = v80;
    MEMORY[0x1D3868CC0](v79);
    v81, v82, v83, v84, v85, v86, v87, v88;
    v71 = v98;
    v70 = v99;
  }

  MEMORY[0x1D3868CC0](v71, v70);
  v70, v89, v90, v91, v92, v93, v94, v95;
  return v103;
}

uint64_t sub_1CF335304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19 = a3;
  v20[0] = swift_getAssociatedTypeWitness();
  v20[1] = swift_getAssociatedTypeWitness();
  v20[2] = swift_getAssociatedConformanceWitness();
  v20[3] = swift_getAssociatedConformanceWitness();
  v10 = type metadata accessor for ThrottlingKey(255, v20);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v12 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v15 = &v20[-1] + *(v14 + 48) - v13;
  (*(*(v10 - 8) + 16))(&v20[-1] - v13, a1, v10, v12);
  v16 = *(a2 + 48);
  *(v15 + 2) = *(a2 + 32);
  *(v15 + 3) = v16;
  *(v15 + 8) = *(a2 + 64);
  v17 = *(a2 + 16);
  *v15 = *a2;
  *(v15 + 1) = v17;
  sub_1CF338250(a2, v20);
  sub_1CF9E6E58();
  return sub_1CF9E6E18();
}

BOOL sub_1CF3354D8(char a1, uint64_t a2, unint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14[2] = a6;
  v14[3] = a7;
  v14[5] = a2;
  v15 = a1;
  v16 = a4;
  v9 = (*(a7 + 24))(sub_1CF338990, v14, a6, a7);
  if (!v7)
  {
    v11 = v9;
    if ([v9 next])
    {
      v12 = [v11 unsignedLongAtIndex_];

      if (sub_1CF93D5F8(a3) <= 1u)
      {
        return v12 >= a3;
      }

      else
      {
        return (v12 & 0x1FFFFFFFFFFFFFFFLL) >= (a3 & 0x1FFFFFFFFFFFFFFFLL);
      }
    }

    else
    {

      return 0;
    }
  }

  return v10;
}

uint64_t sub_1CF3355C8(uint64_t a1, uint64_t *a2, uint64_t a3, char a4, char a5)
{
  v81 = 0;
  v82 = 0xE000000000000000;
  sub_1CF9E7948();
  v84 = 0;
  v85 = 0xE000000000000000;
  MEMORY[0x1D3868CC0](0xD000000000000017, 0x80000001CFA403C0);
  MEMORY[0x1D3868CC0](a2[4], a2[5]);
  MEMORY[0x1D3868CC0](0x204552454857200ALL, 0xEF203D20646E696BLL);
  v81 = 0;
  v8 = MEMORY[0x1E69E6530];
  v9 = sub_1CF9E7F98();
  v11 = v10;
  MEMORY[0x1D3868CC0](v9);
  v11, v12, v13, v14, v15, v16, v17, v18;
  MEMORY[0x1D3868CC0](0xD000000000000012, 0x80000001CFA403E0);
  swift_getAssociatedTypeWitness();
  v19 = *(swift_getAssociatedConformanceWitness() + 8);
  v20 = *(v19 + 32);
  v21 = swift_checkMetadataState();
  v22 = v20(a1, v21, v19);
  v24 = v23;
  MEMORY[0x1D3868CC0](v22);
  v24, v25, v26, v27, v28, v29, v30, v31;
  MEMORY[0x1D3868CC0](0xD000000000000013, 0x80000001CFA40400);
  v32 = qword_1CFA02AA8[a4];
  v83 = v8;
  v81 = v32;
  v33 = sub_1CEFF8EA0(&v81);
  v35 = v34;
  sub_1CEFCCC44(&v81, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (v35)
  {
    MEMORY[0x1D3868CC0](v33, v35);
    v35, v36, v37, v38, v39, v40, v41, v42;
    MEMORY[0x1D3868CC0](0xD000000000000010, 0x80000001CFA40340);
    v81 = 1;
    v43 = sub_1CF9E7F98();
    v45 = v44;
    MEMORY[0x1D3868CC0](v43);
    v45, v46, v47, v48, v49, v50, v51, v52;
    MEMORY[0x1D3868CC0](538976266, 0xE400000000000000);
    v53 = 0xE000000000000000;
    if (a5)
    {
      v81 = 0;
      v82 = 0xE000000000000000;
      sub_1CF9E7948();
      v82, v54, v55, v56, v57, v58, v59, v60;
      v81 = 0xD000000000000017;
      v82 = 0x80000001CFA40420;
      v61 = sub_1CF9E7F98();
      v63 = v62;
      MEMORY[0x1D3868CC0](v61);
      v63, v64, v65, v66, v67, v68, v69, v70;
      v71 = v81;
      v53 = v82;
    }

    else
    {
      v71 = 0;
    }

    MEMORY[0x1D3868CC0](v71, v53);
    v53, v72, v73, v74, v75, v76, v77, v78;
    return v84;
  }

  else
  {
    result = sub_1CF9E7B68();
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF335964(uint64_t a1, uint64_t a2)
{
  v3 = sub_1CF9E5CF8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = 0;
  v43 = 0xE000000000000000;
  sub_1CF9E7948();
  v45 = v42;
  v46 = v43;
  MEMORY[0x1D3868CC0](0xD000000000000010, 0x80000001CFA40230);
  MEMORY[0x1D3868CC0](*(a2 + 32), *(a2 + 40));
  MEMORY[0x1D3868CC0](0xD000000000000010, 0x80000001CFA401A0);
  v42 = 1;
  v7 = MEMORY[0x1E69E6530];
  v8 = sub_1CF9E7F98();
  v10 = v9;
  MEMORY[0x1D3868CC0](v8);
  v10, v11, v12, v13, v14, v15, v16, v17;
  MEMORY[0x1D3868CC0](0xD00000000000001CLL, 0x80000001CFA40250);
  v42 = 7;
  v18 = sub_1CF9E7F98();
  v20 = v19;
  MEMORY[0x1D3868CC0](v18);
  v20, v21, v22, v23, v24, v25, v26, v27;
  MEMORY[0x1D3868CC0](0xD00000000000001BLL, 0x80000001CFA40270);
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v29 = v28;
  (*(v4 + 8))(v6, v3);
  v30 = v29 * 1000000000.0;
  if (COERCE__INT64(fabs(v29 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v30 <= -9.22337204e18)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v30 >= 9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v44 = v7;
  v42 = v30;
  v31 = sub_1CEFF8EA0(&v42);
  v33 = v32;
  sub_1CEFCCC44(&v42, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (v33)
  {
    MEMORY[0x1D3868CC0](v31, v33);
    v33, v34, v35, v36, v37, v38, v39, v40;
    MEMORY[0x1D3868CC0](0x2054494D494C200ALL, 0xE900000000000031);
    return v45;
  }

LABEL_9:
  result = sub_1CF9E7B68();
  __break(1u);
  return result;
}

void sub_1CF335C78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v5[5] = a1;
  sub_1CF32E010(a2, 0, a3, sub_1CF3388F0, v5, a4, a5);
}

uint64_t sub_1CF335CC8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = a2;
  v38[1] = 0xE000000000000000;
  sub_1CF9E7948();
  v39 = 0;
  v40 = 0xE000000000000000;
  MEMORY[0x1D3868CC0](0xD000000000000015, 0x80000001CFA401C0);
  v6 = MEMORY[0x1E69E6530];
  v7 = sub_1CF9E7F98();
  v9 = v8;
  MEMORY[0x1D3868CC0](v7);
  v9, v10, v11, v12, v13, v14, v15, v16;
  MEMORY[0x1D3868CC0](10, 0xE100000000000000);
  v17 = sub_1CF338480(v5);
  v19 = v18;
  MEMORY[0x1D3868CC0](v17);
  v19, v20, v21, v22, v23, v24, v25, v26;
  MEMORY[0x1D3868CC0](0xD000000000000017, 0x80000001CFA40380);
  v38[3] = v6;
  v38[0] = a4;
  v27 = sub_1CEFF8EA0(v38);
  v29 = v28;
  sub_1CEFCCC44(v38, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (v29)
  {
    MEMORY[0x1D3868CC0](v27, v29);
    v29, v30, v31, v32, v33, v34, v35, v36;
    return v39;
  }

  else
  {
    result = sub_1CF9E7B68();
    __break(1u);
  }

  return result;
}

unint64_t sub_1CF335F00(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a2;
  sub_1CF9E7948();
  0xE000000000000000, v5, v6, v7, v8, v9, v10, v11;
  v12 = sub_1CF9E7F98();
  v14 = v13;
  MEMORY[0x1D3868CC0](v12);
  v14, v15, v16, v17, v18, v19, v20, v21;
  MEMORY[0x1D3868CC0](10, 0xE100000000000000);
  v22 = sub_1CF338480(v3);
  v24 = v23;
  MEMORY[0x1D3868CC0](v22);
  v24, v25, v26, v27, v28, v29, v30, v31;
  MEMORY[0x1D3868CC0](0x65746920444E410ALL, 0xEF203D2064695F6DLL);
  swift_getAssociatedTypeWitness();
  v32 = *(swift_getAssociatedConformanceWitness() + 8);
  v33 = *(v32 + 32);
  v34 = swift_checkMetadataState();
  v35 = v33(a1, v34, v32);
  v37 = v36;
  MEMORY[0x1D3868CC0](v35);
  v37, v38, v39, v40, v41, v42, v43, v44;
  return 0xD000000000000015;
}

void sub_1CF336124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a3;
  v5[3] = a4;
  v5[5] = a1;
  sub_1CF32E010(0, 1, a2, a5, v5, a3, a4);
}

unint64_t sub_1CF33616C(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a2;
  sub_1CF9E7948();
  0xE000000000000000, v5, v6, v7, v8, v9, v10, v11;
  v12 = sub_1CF9E7F98();
  v14 = v13;
  MEMORY[0x1D3868CC0](v12);
  v14, v15, v16, v17, v18, v19, v20, v21;
  MEMORY[0x1D3868CC0](10, 0xE100000000000000);
  v22 = sub_1CF338480(v3);
  v24 = v23;
  MEMORY[0x1D3868CC0](v22);
  v24, v25, v26, v27, v28, v29, v30, v31;
  MEMORY[0x1D3868CC0](0x65746920444E410ALL, 0xEF203D2064695F6DLL);
  swift_getAssociatedTypeWitness();
  v32 = *(swift_getAssociatedConformanceWitness() + 8);
  v33 = *(v32 + 32);
  v34 = swift_checkMetadataState();
  v35 = v33(a1, v34, v32);
  v37 = v36;
  MEMORY[0x1D3868CC0](v35);
  v37, v38, v39, v40, v41, v42, v43, v44;
  return 0xD000000000000015;
}

void sub_1CF336364(void *a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5)
{
  v148 = a1;
  v133 = a5;
  v131 = a3;
  v132 = a4;
  v134 = a2;
  *&v162 = swift_getAssociatedTypeWitness();
  *(&v162 + 1) = swift_getAssociatedTypeWitness();
  v5 = v133;
  *&v163 = swift_getAssociatedConformanceWitness();
  *(&v163 + 1) = swift_getAssociatedConformanceWitness();
  v6 = type metadata accessor for ThrottlingKey(255, &v162);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v7 = *(TupleTypeMetadata2 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v143 = v128 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v144 = v128 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v128 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = (v128 - v15);
  v17 = sub_1CF9E6DA8();
  v167 = v17;
  v18 = v149;
  v19 = sub_1CF334DAC(v148, 89, 0, 1, v131, v132, *(v5 + 8));
  if (!v18)
  {
    v27 = v19;
    v142 = v16;
    v145 = v13;
    v128[0] = v8;
    v28 = TupleTypeMetadata2;
    v29 = sub_1CF9E6DF8();
    v128[1] = 0;
    if (!v29)
    {
      v27, v30, v31, v32, v33, v34, v35, v36;
      goto LABEL_35;
    }

    v37 = 0;
    v139 = v142 + *(v28 + 48);
    v140 = v7;
    v141 = (v7 + 16);
    v136 = (v7 + 8);
    v38 = v27;
    v129 = (v134 + 32);
    v39 = v145;
    v146 = v6;
    v137 = v27;
    v138 = v6 - 8;
LABEL_4:
    v40 = sub_1CF9E6DC8();
    sub_1CF9E6D78();
    if (v40)
    {
      v41 = v38 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v37;
      v38 = v142;
      v147 = *(v7 + 16);
      v147(v142, v41, v28);
      v49 = __OFADD__(v37++, 1);
      if (v49)
      {
        goto LABEL_32;
      }

LABEL_6:
      v161 = *(v139 + 8);
      v50 = *(v139 + 3);
      v159 = *(v139 + 2);
      v160 = v50;
      v51 = *(v139 + 1);
      v157 = *v139;
      v158 = v51;
      v52 = v38;
      v53 = &v39[*(v28 + 48)];
      v54 = *(v6 - 8);
      (*(v54 + 32))(v39, v52, v6);
      v55 = v160;
      *(v53 + 2) = v159;
      *(v53 + 3) = v55;
      *(v53 + 8) = v161;
      v56 = v158;
      *v53 = v157;
      *(v53 + 1) = v56;
      v57 = v144;
      v58 = v39;
      v59 = v147;
      v147(v144, v58, v28);
      v60 = &v57[*(v28 + 48)];
      v166 = *(v60 + 8);
      v61 = *(v60 + 3);
      v164 = *(v60 + 2);
      v165 = v61;
      v62 = *(v60 + 1);
      v162 = *v60;
      v163 = v62;
      sub_1CF2CA1E8(&v162);
      LODWORD(v53) = v162;
      v63 = v6;
      v64 = *(v54 + 8);
      v64(v57, v63);
      if (v53 != 1)
      {
        v39 = v145;
        (*v136)(v145, v28);
        v38 = v137;
        goto LABEL_27;
      }

      v65 = v143;
      v66 = v145;
      v59(v143, v145, v28);
      v67 = &v65[*(v28 + 48)];
      v68 = *(v67 + 3);
      v154 = *(v67 + 2);
      v155 = v68;
      v156 = *(v67 + 8);
      v69 = *(v67 + 1);
      v153[0] = *v67;
      v153[1] = v69;
      v70 = *(&v154 + 1);
      v71 = *(&v154 + 1);
      sub_1CF2CA1E8(v153);
      if (!v70)
      {
        (*v136)(v66, v28);
        v38 = v137;
        v39 = v66;
LABEL_23:
        v64(v143, v146);
        v28 = TupleTypeMetadata2;
        goto LABEL_27;
      }

      *&v150[0] = v70;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
      sub_1CEFD57E0(0, &qword_1EDEA3440, 0x1E696ABC0);
      if ((swift_dynamicCast() & 1) == 0)
      {
        v39 = v66;
        (*v136)(v66, TupleTypeMetadata2);
        v38 = v137;
        goto LABEL_23;
      }

      v130 = v37;
      v148 = v152;
      v64(v143, v146);
      v72 = *(v134 + 16);
      if (!v72)
      {
LABEL_24:

        v28 = TupleTypeMetadata2;
        v39 = v145;
        (*v136)(v145, TupleTypeMetadata2);
        goto LABEL_26;
      }

      v73 = v129;
      while (1)
      {
        v83 = *v73;
        v84 = *v73;
        v149 = sub_1CF9E57E8();
        v85 = [v149 domain];
        v86 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v88 = v87;

        v89 = [v148 domain];
        v90 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v92 = v91;

        if (v86 == v90 && v88 == v92)
        {
          v88, v93, v94, v95, v96, v97, v98, v99;
          v92, v74, v75, v76, v77, v78, v79, v80;
          v81 = v149;
        }

        else
        {
          v101 = sub_1CF9E8048();
          v88, v102, v103, v104, v105, v106, v107, v108;
          v92, v109, v110, v111, v112, v113, v114, v115;
          v81 = v149;
          if ((v101 & 1) == 0)
          {
            goto LABEL_13;
          }
        }

        v82 = [v81 code];
        if (v82 == [v148 code])
        {
          v116 = v81;
          v117 = v144;
          v39 = v145;
          v28 = TupleTypeMetadata2;
          v147(v144, v145, TupleTypeMetadata2);
          v118 = &v117[*(v28 + 48)];
          v151 = *(v118 + 8);
          v119 = *(v118 + 3);
          v150[2] = *(v118 + 2);
          v150[3] = v119;
          v120 = *(v118 + 1);
          v150[0] = *v118;
          v150[1] = v120;
          sub_1CF2CA1E8(v150);
          sub_1CF9E6E58();
          sub_1CF9E6E18();

          (*v136)(v39, v28);
LABEL_26:
          v38 = v137;
          v37 = v130;
LABEL_27:
          v121 = sub_1CF9E6DF8();
          v7 = v140;
          if (v37 == v121)
          {
            goto LABEL_33;
          }

          v6 = v146;
          goto LABEL_4;
        }

LABEL_13:

        ++v73;
        if (!--v72)
        {
          goto LABEL_24;
        }
      }
    }

    v122 = sub_1CF9E7998();
    if (v128[0] != 8)
    {
      __break(1u);
      return;
    }

    *&v162 = v122;
    v38 = v142;
    v123 = *v141;
    v149 = v122;
    v147 = v123;
    v123(v142, &v162, v28);
    swift_unknownObjectRelease();
    v49 = __OFADD__(v37++, 1);
    if (!v49)
    {
      goto LABEL_6;
    }

LABEL_32:
    __break(1u);
LABEL_33:
    v38, v42, v43, v44, v45, v46, v47, v48;
LABEL_35:
    v17 = v167;
    *&v162 = v167;
    sub_1CF9E6E58();
    swift_getWitnessTable();
    if (sub_1CF9E7128())
    {
      v17, v131, v132, v133, v124, v125, v126, v127;
      return;
    }

    sub_1CF3302CC(v17, v131, v132, v133);
  }

  v17, v20, v21, v22, v23, v24, v25, v26;
}

uint64_t sub_1CF336BFC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_1CF9E5CF8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v5 + 112))
  {
    v14 = a2[3];
    v15 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v14);
    sub_1CF4FB2BC(0xD000000000000025, 0x80000001CFA40040, v14, v15);
LABEL_12:
    v59 = a2[3];
    v60 = a2[4];
    v61 = __swift_project_boxed_opaque_existential_1(a2, v59);
    MEMORY[0x1EEE9AC00](v61);
    *(&v62 - 4) = a3;
    *(&v62 - 3) = a4;
    *(&v62 - 2) = v5;
    *(&v62 - 1) = a1;
    return sub_1CF4FB38C(8224, 0xE200000000000000, sub_1CF3381A8, (&v62 - 6), v59, MEMORY[0x1E69E7CA8] + 8, v60);
  }

  v16 = *(v5 + 104);
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v18 = v17;
  result = (*(v11 + 8))(v13, v10);
  v20 = v18 * 1000000000.0;
  if (COERCE__INT64(fabs(v18 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v20 <= -9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v20 >= 9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21 = v20;
  v22 = a2[3];
  v62 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v22);
  v65 = 0;
  v66 = 0xE000000000000000;
  sub_1CF9E7948();
  v66, v23, v24, v25, v26, v27, v28, v29;
  v65 = 0xD000000000000021;
  v66 = 0x80000001CFA40070;
  result = v16 - v21;
  if (__OFSUB__(v16, v21))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    v30 = 0;
    v31 = 0xE000000000000000;
LABEL_11:
    v33 = sub_1CF04F854(result);
    v35 = v34;
    v63 = v30;
    v64 = v31;
    MEMORY[0x1D3868CC0](v33);
    v35, v36, v37, v38, v39, v40, v41, v42;
    v43 = v64;
    MEMORY[0x1D3868CC0](v63, v64);
    v43, v44, v45, v46, v47, v48, v49, v50;
    v51 = v66;
    sub_1CF4FB2BC(v65, v66, v22, v62);
    v51, v52, v53, v54, v55, v56, v57, v58;
    goto LABEL_12;
  }

  v32 = __OFSUB__(0, result);
  result = v21 - v16;
  if (!v32)
  {
    v31 = 0xE100000000000000;
    v30 = 45;
    goto LABEL_11;
  }

LABEL_17:
  __break(1u);
  return result;
}

void sub_1CF336EF8(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *a2;
  if (*(a2 + 162) == 1)
  {
    v42 = a3;
    v43 = v5;
    v11 = a1[3];
    v41 = a1[4];
    v40 = __swift_project_boxed_opaque_existential_1(a1, v11);
    if (qword_1EDEACB30 != -1)
    {
      swift_once();
    }

    v12 = [qword_1EDEBBB20 description];
    v13 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v15 = v14;

    sub_1CF4FB2BC(v13, v15, v11, v41);
    v15, v16, v17, v18, v19, v20, v21, v22;
    v5 = v43;
  }

  MEMORY[0x1EEE9AC00](a1);
  v23 = *(v10 + 96);
  v35[1] = *(v10 + 80);
  v36 = a4;
  v37 = v23;
  v38 = a5;
  v39 = a1;
  sub_1CF32F18C(v24, sub_1CF337170, 0, sub_1CF3381C8, v35, 0, 1, a4, a5);
  if (v5)
  {
    v25 = a1[3];
    v26 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v25);
    v44 = 0;
    v45 = 0xE000000000000000;
    sub_1CF9E7948();
    MEMORY[0x1D3868CC0](0xD000000000000010, 0x80000001CFA400A0);
    MEMORY[0x1D3868CC0](a2[4], a2[5]);
    MEMORY[0x1D3868CC0](8250, 0xE200000000000000);
    v46 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
    sub_1CF9E7B58();
    v27 = v45;
    sub_1CF4FB2BC(v44, v45, v25, v26);
    v27, v28, v29, v30, v31, v32, v33, v34;
  }
}

void sub_1CF33718C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3[3];
  v27 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v8);
  v29 = 0;
  v30 = 0xE000000000000000;
  v28[0] = swift_getAssociatedTypeWitness();
  v28[1] = swift_getAssociatedTypeWitness();
  v28[2] = swift_getAssociatedConformanceWitness();
  v28[3] = swift_getAssociatedConformanceWitness();
  type metadata accessor for ThrottlingKey(0, v28);
  swift_getWitnessTable();
  sub_1CF9E7FE8();
  MEMORY[0x1D3868CC0](8250, 0xE200000000000000);
  v9 = sub_1CF94B3EC();
  v11 = v10;
  MEMORY[0x1D3868CC0](v9);
  v11, v12, v13, v14, v15, v16, v17, v18;
  v19 = v30;
  sub_1CF4FB2BC(v29, v30, v8, v27);
  v19, v20, v21, v22, v23, v24, v25, v26;
}

uint64_t sub_1CF33731C()
{
  swift_unknownObjectRelease();
  *(v0 + 40), v1, v2, v3, v4, v5, v6, v7;
  *(v0 + 56), v8, v9, v10, v11, v12, v13, v14;
  *(v0 + 72), v15, v16, v17, v18, v19, v20, v21;
  *(v0 + 88), v22, v23, v24, v25, v26, v27, v28;
  sub_1CEFF7124(*(v0 + 136), *(v0 + 144));

  v29 = *(v0 + 248);
  v30 = *(v0 + 280);
  v34[6] = *(v0 + 264);
  v34[7] = v30;
  v34[8] = *(v0 + 296);
  v31 = *(v0 + 184);
  v32 = *(v0 + 216);
  v34[2] = *(v0 + 200);
  v34[3] = v32;
  v34[4] = *(v0 + 232);
  v34[5] = v29;
  v34[0] = *(v0 + 168);
  v34[1] = v31;
  sub_1CF338754(v34);
  return v0;
}

uint64_t sub_1CF3373B4()
{
  sub_1CF33731C();

  return swift_deallocClassInstance();
}

uint64_t sub_1CF337400(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = a2;
  v16 = a3;
  v17 = v3;
  v5 = *(a3 + 32);
  result = (v5)(sub_1CF337F64, v14, a2, a3);
  if (!v4)
  {
    v7 = MEMORY[0x1EEE9AC00](result);
    v8 = v5(sub_1CF337F70, v7);
    v9 = MEMORY[0x1EEE9AC00](v8);
    v10 = v5(sub_1CF337F7C, v9);
    v11 = MEMORY[0x1EEE9AC00](v10);
    v12 = v5(sub_1CF337F88, v11);
    v13 = MEMORY[0x1EEE9AC00](v12);
    return v5(sub_1CF337F94, v13);
  }

  return result;
}

uint64_t sub_1CF3375F8(uint64_t a1, uint64_t *a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x5420455441455243, 0xED000020454C4241);
  MEMORY[0x1D3868CC0](a2[4], a2[5]);
  MEMORY[0x1D3868CC0](0xD000000000000026, 0x80000001CFA3FE40);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5 = (*(*(AssociatedConformanceWitness + 8) + 8))(AssociatedTypeWitness);
  v7 = v6;
  MEMORY[0x1D3868CC0](v5);
  v7, v8, v9, v10, v11, v12, v13, v14;
  MEMORY[0x1D3868CC0](0xD000000000000100, 0x80000001CFA3FE70);
  return 0;
}

uint64_t sub_1CF33776C(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000014, 0x80000001CFA3FDE0);
  v4 = *(a2 + 32);
  v3 = *(a2 + 40);
  MEMORY[0x1D3868CC0](v4, v3);
  MEMORY[0x1D3868CC0](0xD000000000000010, 0x80000001CFA3FE00);
  MEMORY[0x1D3868CC0](v4, v3);
  MEMORY[0x1D3868CC0](0xD000000000000019, 0x80000001CFA3FE20);
  return 0;
}

uint64_t sub_1CF337844(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  0xE000000000000000, v3, v4, v5, v6, v7, v8, v9;
  strcpy(v13, "CREATE INDEX ");
  HIWORD(v13[1]) = -4864;
  v11 = *(a2 + 32);
  v10 = *(a2 + 40);
  MEMORY[0x1D3868CC0](v11, v10);
  MEMORY[0x1D3868CC0](0x4F2065746174735FLL, 0xEA0000000000204ELL);
  MEMORY[0x1D3868CC0](v11, v10);
  MEMORY[0x1D3868CC0](0x29657461747328, 0xE700000000000000);
  return v13[0];
}

uint64_t sub_1CF337918(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x4920455441455243, 0xED0000205845444ELL);
  v4 = *(a2 + 32);
  v3 = *(a2 + 40);
  MEMORY[0x1D3868CC0](v4, v3);
  MEMORY[0x1D3868CC0](0xD000000000000015, 0x80000001CFA3FDA0);
  MEMORY[0x1D3868CC0](v4, v3);
  MEMORY[0x1D3868CC0](0xD000000000000018, 0x80000001CFA3FDC0);
  return 0;
}

uint64_t sub_1CF3379F8(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x4920455441455243, 0xED0000205845444ELL);
  v4 = *(a2 + 32);
  v3 = *(a2 + 40);
  MEMORY[0x1D3868CC0](v4, v3);
  MEMORY[0x1D3868CC0](0xD000000000000025, 0x80000001CFA3FD50);
  MEMORY[0x1D3868CC0](v4, v3);
  MEMORY[0x1D3868CC0](0xD000000000000019, 0x80000001CFA3FD80);
  return 0;
}

uint64_t sub_1CF337AD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = a2;
  v12 = a3;
  v13 = v3;
  v5 = *(a3 + 32);
  result = (v5)(sub_1CF337F40, v10, a2, a3);
  if (!v4)
  {
    v7 = MEMORY[0x1EEE9AC00](result);
    v8 = v5(sub_1CF337F4C, v7);
    v9 = MEMORY[0x1EEE9AC00](v8);
    return v5(sub_1CF337F58, v9);
  }

  return result;
}

uint64_t sub_1CF337C18(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x4154205245544C41, 0xEC00000020454C42);
  MEMORY[0x1D3868CC0](*(a2 + 32), *(a2 + 40));
  MEMORY[0x1D3868CC0](0xD000000000000030, 0x80000001CFA3FD10);
  return 0;
}

unint64_t sub_1CF337CB0(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  0xE000000000000000, v3, v4, v5, v6, v7, v8, v9;
  MEMORY[0x1D3868CC0](*(a2 + 32), *(a2 + 40));
  MEMORY[0x1D3868CC0](0xD000000000000018, 0x80000001CFA3FCF0);
  return 0xD000000000000015;
}

uint64_t sub_1CF337D44(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x4920455441455243, 0xED0000205845444ELL);
  v4 = *(a2 + 32);
  v3 = *(a2 + 40);
  MEMORY[0x1D3868CC0](v4, v3);
  MEMORY[0x1D3868CC0](0xD00000000000001CLL, 0x80000001CFA3FC70);
  MEMORY[0x1D3868CC0](v4, v3);
  MEMORY[0x1D3868CC0](0xD000000000000036, 0x80000001CFA3FC90);
  return 0;
}

uint64_t sub_1CF337E88(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1CF337F04(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

BOOL sub_1CF337FA0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (!a4)
  {
    return 0;
  }

  v5 = a3;
  sub_1CF2F462C();
  v8 = swift_allocError();
  *v9 = a1;
  *(v9 + 8) = a2;
  *(v9 + 16) = v5;
  v10 = a4;
  sub_1CF338150(a1, a2, v5);
  v11 = sub_1CF9E57E8();

  v12 = sub_1CF9E57E8();
  v13 = [v11 domain];
  v14 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v16 = v15;

  v17 = [v12 domain];
  v18 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v20 = v19;

  if (v14 == v18 && v16 == v20)
  {
    v16, v21, v22, v23, v24, v25, v26, v27;
    v20, v28, v29, v30, v31, v32, v33, v34;
LABEL_7:
    v51 = [v11 code];
    v52 = [v12 code];

    return v51 == v52;
  }

  v36 = sub_1CF9E8048();
  v16, v37, v38, v39, v40, v41, v42, v43;
  v20, v44, v45, v46, v47, v48, v49, v50;
  if (v36)
  {
    goto LABEL_7;
  }

  return 0;
}

uint64_t sub_1CF338150(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 <= 0xFBu)
  {
    return sub_1CF338164(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_1CF338164(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 2)
  {
  }

  return result;
}

BOOL sub_1CF3382D0(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  if (!a4)
  {
    return 1;
  }

  sub_1CF2F462C();
  v8 = swift_allocError();
  *v9 = a1;
  *(v9 + 8) = a2;
  *(v9 + 16) = a3;
  v10 = a4;
  sub_1CF338150(a1, a2, a3);
  v11 = sub_1CF9E57E8();

  v12 = sub_1CF9E57E8();
  v13 = [v11 domain];
  v14 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v16 = v15;

  v17 = [v12 domain];
  v18 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v20 = v19;

  if (v14 == v18 && v16 == v20)
  {
    v16, v21, v22, v23, v24, v25, v26, v27;
    v20, v28, v29, v30, v31, v32, v33, v34;
LABEL_7:
    v51 = [v11 code];
    v52 = [v12 code];

    return v51 != v52;
  }

  v36 = sub_1CF9E8048();
  v16, v37, v38, v39, v40, v41, v42, v43;
  v20, v44, v45, v46, v47, v48, v49, v50;
  if (v36)
  {
    goto LABEL_7;
  }

  return 1;
}

unint64_t sub_1CF338480(char a1)
{
  if (a1)
  {
    return 0;
  }

  sub_1CF9E7948();
  0xE000000000000000, v2, v3, v4, v5, v6, v7, v8;
  v9 = sub_1CF9E7F98();
  v11 = v10;
  MEMORY[0x1D3868CC0](v9);
  v11, v12, v13, v14, v15, v16, v17, v18;
  return 0xD00000000000001BLL;
}

uint64_t sub_1CF338598@<X0>(unsigned __int8 *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1CF3ED5F8(*a1, *(v2 + 16), *(v2 + 24));
  *a2 = result;
  a2[1] = v5;
  return result;
}

unint64_t sub_1CF3385C8()
{
  result = qword_1EC4BF750;
  if (!qword_1EC4BF750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BF748, &qword_1CFA028E0);
    sub_1CEFCCCEC(&qword_1EC4BF758, &qword_1EC4BF760, &qword_1CF9FCBB0, MEMORY[0x1E69E6310]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BF750);
  }

  return result;
}

uint64_t sub_1CF3386E4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 <= 0xFBu)
  {
    return sub_1CF1DBCF0(a1, a2, a3);
  }

  return a1;
}

unint64_t sub_1CF3387FC()
{
  result = qword_1EDEAB5E0;
  if (!qword_1EDEAB5E0)
  {
    sub_1CF9E73D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEAB5E0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_18FileProviderDaemon22ContinuationSchedulingO(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t get_enum_tag_for_layout_string_18FileProviderDaemon15ThrottlingErrorO(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 > 3)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1CF338A04(uint64_t a1, unsigned int a2)
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
  if (v3 > 3)
  {
    v4 = (v3 ^ 0xFF) + 1;
  }

  else
  {
    v4 = 0;
  }

  if (v4 >= 5)
  {
    return v4 - 4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1CF338A4C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 249;
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
      *(result + 16) = -4 - a2;
    }
  }

  return result;
}

uint64_t sub_1CF338A98(uint64_t result, unsigned int a2)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
  }

  else if (a2)
  {
    *(result + 16) = -a2;
  }

  return result;
}

unint64_t sub_1CF338AD4()
{
  result = qword_1EDEA7418[0];
  if (!qword_1EDEA7418[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDEA7418);
  }

  return result;
}

void sub_1CF339634(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C05D0, &unk_1CF9FE620);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1CF9FA450;
  *(v5 + 56) = a1;
  *(v5 + 64) = a2;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v5 + 32));
  (*(*(a1 - 8) + 16))(boxed_opaque_existential_0, v2, a1);
  v7 = (*(a2 + 8))(a1, a2);
  v15 = v7;
  v16 = *(v7 + 16);
  if (!v16)
  {
LABEL_17:
    v15, v8, v9, v10, v11, v12, v13, v14;
    return;
  }

  v17 = v7 + 32;
  while (1)
  {
    sub_1CF1A91AC(v17, v42);
    v18 = v43;
    v19 = v44;
    __swift_project_boxed_opaque_existential_1(v42, v43);
    v20 = sub_1CF339634(v18, v19);
    __swift_destroy_boxed_opaque_existential_1(v42);
    v28 = *v20->tree;
    v29 = *(v5 + 16);
    v30 = v29 + v28;
    if (__OFADD__(v29, v28))
    {
      break;
    }

    if (v30 > *(v5 + 24) >> 1)
    {
      if (v29 <= v30)
      {
        v41 = (v29 + v28);
      }

      else
      {
        v41 = *(v5 + 16);
      }

      v5 = sub_1CF1F7048(1, v41, 1, v5);
      v29 = *(v5 + 16);
      if (*v20->tree)
      {
LABEL_8:
        if (((*(v5 + 24) >> 1) - v29) < v28)
        {
          goto LABEL_20;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE770, &qword_1CFA059A0);
        swift_arrayInitWithCopy();
        v20, v31, v32, v33, v34, v35, v36, v37;
        if (v28)
        {
          v38 = *(v5 + 16);
          v39 = __OFADD__(v38, v28);
          v40 = v38 + v28;
          if (v39)
          {
            goto LABEL_21;
          }

          *(v5 + 16) = v40;
        }

        goto LABEL_4;
      }
    }

    else if (v28)
    {
      goto LABEL_8;
    }

    v20, v21, v22, v23, v24, v25, v26, v27;
    if (v28)
    {
      goto LABEL_19;
    }

LABEL_4:
    v17 += 40;
    if (!--v16)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_1CF33988C(uint64_t a1)
{
  v151 = *MEMORY[0x1E69E9840];
  v136 = sub_1CF9E6118();
  v135 = *(v136 - 1);
  MEMORY[0x1EEE9AC00](v136);
  v141 = &v133 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v133 - v5;
  v140 = sub_1CF9E5A58();
  v142 = *(v140 - 8);
  MEMORY[0x1EEE9AC00](v140);
  v134 = &v133 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v137 = &v133 - v9;
  v139 = sub_1CF9E5828();
  v138 = *(v139 - 8);
  MEMORY[0x1EEE9AC00](v139);
  v147 = (&v133 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = [objc_opt_self() defaultManager];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF778, &qword_1CFA02DD8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CF9FA440;
  v13 = *MEMORY[0x1E696A360];
  *(inited + 32) = *MEMORY[0x1E696A360];
  *(inited + 40) = 0x656C69626F6DLL;
  *(inited + 48) = 0xE600000000000000;
  v14 = *MEMORY[0x1E696A328];
  *(inited + 56) = *MEMORY[0x1E696A328];
  *(inited + 64) = 0x656C69626F6DLL;
  *(inited + 72) = 0xE600000000000000;
  v15 = v13;
  v16 = v14;
  v17 = v11;
  v18 = sub_1CF4E2278(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF780, &qword_1CFA02DE0);
  swift_arrayDestroy();
  sub_1CF7BAC94(v18);
  v20 = v19;
  type metadata accessor for FileAttributeKey(0);
  v22 = v21;
  v143 = sub_1CF00BBC0(&unk_1EC4BF620, type metadata accessor for FileAttributeKey, &unk_1CF9F9AE0);
  v144 = v22;
  v23 = sub_1CF9E6618();
  v20, v24, v25, v26, v27, v28, v29, v30;
  v31 = a1;
  sub_1CF9E5A18();
  v33 = v32;
  v34 = sub_1CF9E6888();
  v33, v35, v36, v37, v38, v39, v40, v41;
  v149[0] = 0;
  LODWORD(a1) = [v17 setAttributes:v23 ofItemAtPath:v34 error:v149];

  if (a1)
  {
    v145 = v18;
    v42 = v149[0];
    v43 = v31;
    v146 = v17;
    v44 = sub_1CF9E7268();
    if (v44)
    {
      v135 = v1;
      v52 = v147;
      v136 = v44;
      sub_1CF9E7238();
      sub_1CF9E5818();
      v53 = v137;
      v54 = v140;
      v55 = v145;
      if (v150)
      {
        v56 = (v142 + 56);
        v141 = (v142 + 32);
        v142 += 8;
        do
        {
          v57 = swift_dynamicCast();
          v58 = *v56;
          if (v57)
          {
            v58(v6, 0, 1, v54);
            (*v141)(v53, v6, v54);
            v59 = objc_autoreleasePoolPush();
            sub_1CF7BAC94(v55);
            v61 = v60;
            v62 = sub_1CF9E6618();
            v61, v63, v64, v65, v66, v67, v68, v69;
            sub_1CF9E5A18();
            v71 = v70;
            v72 = v53;
            v73 = sub_1CF9E6888();
            v71, v74, v75, v76, v77, v78, v79, v80;
            v148 = 0;
            v81 = [v146 setAttributes:v62 ofItemAtPath:v73 error:&v148];

            if (!v81)
            {
              v125 = v148;
              v145, v126, v127, v128, v129, v130, v131, v132;
              sub_1CF9E57F8();

              swift_willThrow();
              objc_autoreleasePoolPop(v59);

              (*v142)(v72, v54);
              v122 = *(v138 + 8);
              v123 = v147;
              v124 = &v153;
              goto LABEL_17;
            }

            v82 = v148;
            objc_autoreleasePoolPop(v59);
            (*v142)(v72, v54);
            v53 = v72;
            v52 = v147;
            v55 = v145;
          }

          else
          {
            v58(v6, 1, 1, v54);
            sub_1CEFCCC44(v6, &unk_1EC4BE310, qword_1CF9FCBE0);
          }

          sub_1CF9E5818();
        }

        while (v150);
      }

      (*(v138 + 8))(v52, v139);

      v55, v92, v93, v94, v95, v96, v97, v98;
    }

    else
    {
      v145, v45, v46, v47, v48, v49, v50, v51;
      v99 = fpfs_current_or_default_log();
      v100 = v141;
      sub_1CF9E6128();
      v101 = v142;
      v102 = v134;
      v103 = v43;
      v104 = v140;
      (*(v142 + 16))(v134, v103, v140);
      v105 = sub_1CF9E6108();
      v106 = sub_1CF9E72A8();
      if (os_log_type_enabled(v105, v106))
      {
        v107 = swift_slowAlloc();
        v147 = swift_slowAlloc();
        v149[0] = v147;
        *v107 = 136315138;
        v108 = sub_1CF9E5928();
        v109 = [v108 fp_shortDescription];

        v110 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v112 = v111;

        (*(v101 + 8))(v102, v140);
        v113 = sub_1CEFD0DF0(v110, v112, v149);
        v112, v114, v115, v116, v117, v118, v119, v120;
        *(v107 + 4) = v113;
        _os_log_impl(&dword_1CEFC7000, v105, v106, "Failed to get enumerator for %s", v107, 0xCu);
        v121 = v147;
        __swift_destroy_boxed_opaque_existential_1(v147);
        MEMORY[0x1D386CDC0](v121, -1, -1);
        MEMORY[0x1D386CDC0](v107, -1, -1);

        v122 = *(v135 + 8);
        v123 = v141;
      }

      else
      {

        (*(v101 + 8))(v102, v104);
        v122 = *(v135 + 8);
        v123 = v100;
      }

      v124 = &v152;
LABEL_17:
      v122(v123, *(v124 - 32));
    }
  }

  else
  {
    v83 = v17;
    v84 = v149[0];
    v18, v85, v86, v87, v88, v89, v90, v91;
    sub_1CF9E57F8();

    swift_willThrow();
  }
}

char *FPFSSQLBackupEngine.init(userURL:outputUserURL:)(char *a1, char *a2)
{
  v3 = v2;
  v6 = sub_1CF9E6118();
  v70 = *(v6 - 8);
  v71 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v72 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1CF9E5A58();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v67 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v65 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v66 = &v65 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v65 - v17;
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v65 - v21;
  v23 = *(v9 + 16);
  v69 = OBJC_IVAR____TtC18FileProviderDaemon19FPFSSQLBackupEngine_userURL;
  v74 = a1;
  v23(&v3[OBJC_IVAR____TtC18FileProviderDaemon19FPFSSQLBackupEngine_userURL], a1, v8, v20);
  v68 = OBJC_IVAR____TtC18FileProviderDaemon19FPFSSQLBackupEngine_outputUserURL;
  (v23)(&v3[OBJC_IVAR____TtC18FileProviderDaemon19FPFSSQLBackupEngine_outputUserURL], a2, v8);
  v73 = a2;
  sub_1CF9E5958();
  v24 = [objc_opt_self() defaultManager];
  v75 = v22;
  sub_1CF9E5A18();
  v26 = v25;
  v27 = sub_1CF9E6888();
  v26, v28, v29, v30, v31, v32, v33, v34;
  LODWORD(v26) = [v24 fileExistsAtPath_];

  if (v26)
  {
    v35 = v75;
    sub_1CF9E5958();
    v36 = OBJC_IVAR____TtC18FileProviderDaemon19FPFSSQLBackupEngine_destinationDirectoryURL;
    (v23)(&v3[OBJC_IVAR____TtC18FileProviderDaemon19FPFSSQLBackupEngine_destinationDirectoryURL], v18, v8);
    (v23)(v13, &v3[v36], v8);
    v37 = v66;
    sub_1CF9E5968();
    v38 = *(v9 + 8);
    v38(v13, v8);
    (*(v9 + 32))(&v3[OBJC_IVAR____TtC18FileProviderDaemon19FPFSSQLBackupEngine_backupManifestURL], v37, v8);
    v39 = type metadata accessor for FPFSSQLBackupEngine(0);
    v76.receiver = v3;
    v76.super_class = v39;
    v40 = objc_msgSendSuper2(&v76, sel_init);
    v38(v73, v8);
    v38(v74, v8);
    v38(v18, v8);
    v38(v35, v8);
    return v40;
  }

  else
  {
    v66 = v3;
    v42 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v43 = v67;
    (v23)(v67, v75, v8);
    v44 = sub_1CF9E6108();
    v45 = sub_1CF9E72C8();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v77 = v65;
      *v46 = 136446210;
      v47 = sub_1CF9E5928();
      v48 = [v47 fp_shortDescription];

      v49 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v50 = v43;
      v52 = v51;

      v53 = *(v9 + 8);
      v53(v50, v8);
      v54 = sub_1CEFD0DF0(v49, v52, &v77);
      v52, v55, v56, v57, v58, v59, v60, v61;
      *(v46 + 4) = v54;
      _os_log_impl(&dword_1CEFC7000, v44, v45, "%{public}s does not exist. No need to back up.", v46, 0xCu);
      v62 = v65;
      __swift_destroy_boxed_opaque_existential_1(v65);
      MEMORY[0x1D386CDC0](v62, -1, -1);
      MEMORY[0x1D386CDC0](v46, -1, -1);

      v53(v73, v8);
      v63 = v74;
    }

    else
    {

      v53 = *(v9 + 8);
      v53(v73, v8);
      v53(v74, v8);
      v63 = v43;
    }

    v53(v63, v8);
    (*(v70 + 8))(v72, v71);
    v53(v75, v8);
    v64 = v66;
    v53(&v66[v69], v8);
    v53(&v64[v68], v8);
    type metadata accessor for FPFSSQLBackupEngine(0);
    swift_deallocPartialClassInstance();
    return 0;
  }
}

uint64_t type metadata accessor for FPFSSQLBackupEngine(uint64_t a1)
{
  result = qword_1EC4BF768;
  if (!qword_1EC4BF768)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1CF33A90C(void (*a1)(uint64_t, void *), uint64_t a2)
{
  v3 = v2;
  v151 = a2;
  v152 = a1;
  v160[1] = *MEMORY[0x1E69E9840];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v153 = v145 - v5;
  v6 = sub_1CF9E5A58();
  v7 = *(v6 - 8);
  v154 = v6;
  v155 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v9 = v145 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1CF9E6118();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v145[1] = v145 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v147 = v145 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v145 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v145[0] = v145 - v19;
  MEMORY[0x1EEE9AC00](v20);
  MEMORY[0x1EEE9AC00](v21);
  v146 = (v145 - v22);
  MEMORY[0x1EEE9AC00](v23);
  v25 = v145 - v24;
  v26 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v27 = sub_1CF9E6108();
  v28 = sub_1CF9E72C8();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_1CEFC7000, v27, v28, "Starting backup...", v29, 2u);
    MEMORY[0x1D386CDC0](v29, -1, -1);
  }

  v30 = *(v11 + 8);
  v149 = v10;
  v150 = v11 + 8;
  v148 = v30;
  v30(v25, v10);
  v31 = objc_opt_self();
  v32 = [v31 defaultManager];
  v33 = OBJC_IVAR____TtC18FileProviderDaemon19FPFSSQLBackupEngine_destinationDirectoryURL;
  sub_1CF9E5A18();
  v35 = v34;
  v36 = sub_1CF9E6888();
  v35, v37, v38, v39, v40, v41, v42, v43;
  LODWORD(v35) = [v32 fileExistsAtPath_];

  if (v35)
  {
    v44 = [v31 defaultManager];
    v45 = sub_1CF9E5928();
    v160[0] = 0;
    v46 = [v44 removeItemAtURL:v45 error:v160];

    if (!v46)
    {
      v81 = v160[0];
      v56 = sub_1CF9E57F8();

      swift_willThrow();
      v82 = sub_1CF9E5A18();
      v84 = v83;
      v85 = fpfs_current_or_default_log();
      sub_1CF9E6128();

      v86 = v56;
      v87 = sub_1CF9E6108();
      v88 = sub_1CF9E72A8();
      v84, v89, v90, v91, v92, v93, v94, v95;

      if (os_log_type_enabled(v87, v88))
      {
        v96 = swift_slowAlloc();
        v97 = swift_slowAlloc();
        v98 = swift_slowAlloc();
        v160[0] = v98;
        *v96 = 136315394;
        v99 = sub_1CEFD0DF0(v82, v84, v160);
        v84, v100, v101, v102, v103, v104, v105, v106;
        *(v96 + 4) = v99;
        *(v96 + 12) = 2112;
        swift_getErrorValue();
        v107 = Error.prettyDescription.getter(v156, v157);
        *(v96 + 14) = v107;
        *v97 = v107;
        _os_log_impl(&dword_1CEFC7000, v87, v88, "Unable to delete existing destination directory at %s: %@", v96, 0x16u);
        sub_1CEFCCC44(v97, &qword_1EC4BE350, &unk_1CF9FC3B0);
        MEMORY[0x1D386CDC0](v97, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v98);
        MEMORY[0x1D386CDC0](v98, -1, -1);
        MEMORY[0x1D386CDC0](v96, -1, -1);
      }

      else
      {

        v84, v111, v112, v113, v114, v115, v116, v117;
      }

      v148(v17, v149);
      v108 = v153;
      (*(v155 + 56))(v153, 1, 1, v154);
      goto LABEL_16;
    }

    v47 = v160[0];
  }

  v48 = [v31 defaultManager];
  v49 = sub_1CF9E5928();
  v160[0] = 0;
  v50 = [v48 createDirectoryAtURL:v49 withIntermediateDirectories:0 attributes:0 error:v160];

  v51 = v160[0];
  if (!v50)
  {
    v55 = v160[0];
    v56 = sub_1CF9E57F8();

    swift_willThrow();
    v57 = fpfs_current_or_default_log();
    v58 = v147;
    sub_1CF9E6128();
    v59 = v3;
    v60 = v56;
    v61 = sub_1CF9E6108();
    v62 = sub_1CF9E72A8();

    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v160[0] = v65;
      *v63 = 136315394;
      v66 = sub_1CF9E5928();
      v67 = [v66 fp_shortDescription];

      v68 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v70 = v69;

      v71 = sub_1CEFD0DF0(v68, v70, v160);
      v70, v72, v73, v74, v75, v76, v77, v78;
      *(v63 + 4) = v71;
      *(v63 + 12) = 2112;
      swift_getErrorValue();
      v79 = Error.prettyDescription.getter(v158, v159);
      *(v63 + 14) = v79;
      *v64 = v79;
      _os_log_impl(&dword_1CEFC7000, v61, v62, "Unable to create destination directory %s: %@", v63, 0x16u);
      sub_1CEFCCC44(v64, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v64, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v65);
      MEMORY[0x1D386CDC0](v65, -1, -1);
      MEMORY[0x1D386CDC0](v63, -1, -1);

      v80 = v147;
    }

    else
    {

      v80 = v58;
    }

    v148(v80, v149);
    v108 = v153;
    (*(v155 + 56))(v153, 1, 1, v154);
LABEL_16:
    v118 = v56;
    v152(v108, v56);

    return sub_1CEFCCC44(v108, &unk_1EC4BE310, qword_1CF9FCBE0);
  }

  v52 = v3;
  v53 = *(v155 + 16);
  v53(v9, &v3[OBJC_IVAR____TtC18FileProviderDaemon19FPFSSQLBackupEngine_backupManifestURL], v154);
  type metadata accessor for SQLBackupManifest(0);
  swift_allocObject();
  v54 = v51;
  v109 = sub_1CF1BA200(v9);
  v110 = OBJC_IVAR____TtC18FileProviderDaemon19FPFSSQLBackupEngine_userURL;

  sub_1CF33DF24(&v52[v110], v109);
  v147 = v109;

  sub_1CF1BC728();
  sub_1CF33988C(&v52[v33]);
  v119 = fpfs_current_or_default_log();
  v120 = v145[0];
  sub_1CF9E6128();
  v121 = v52;
  v122 = sub_1CF9E6108();
  v123 = sub_1CF9E72C8();

  v124 = os_log_type_enabled(v122, v123);
  v125 = v154;
  if (v124)
  {
    v126 = swift_slowAlloc();
    v146 = swift_slowAlloc();
    v160[0] = v146;
    *v126 = 136315138;
    v127 = sub_1CF9E5928();
    v128 = [v127 fp_shortDescription];

    v129 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v131 = v130;

    v132 = sub_1CEFD0DF0(v129, v131, v160);
    v131, v133, v134, v135, v136, v137, v138, v139;
    *(v126 + 4) = v132;
    _os_log_impl(&dword_1CEFC7000, v122, v123, "Calling completion handler with %s", v126, 0xCu);
    v140 = v146;
    __swift_destroy_boxed_opaque_existential_1(v146);
    MEMORY[0x1D386CDC0](v140, -1, -1);
    v141 = v126;
    v125 = v154;
    MEMORY[0x1D386CDC0](v141, -1, -1);

    v142 = v145[0];
  }

  else
  {

    v142 = v120;
  }

  v148(v142, v149);
  v144 = v155;
  v108 = v153;
  v53(v153, &v52[v33], v125);
  (*(v144 + 56))(v108, 0, 1, v125);
  v152(v108, 0);

  return sub_1CEFCCC44(v108, &unk_1EC4BE310, qword_1CF9FCBE0);
}

id sub_1CF33BA94()
{
  v1 = v0;
  v42[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1CF9E6118();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() defaultManager];
  v7 = sub_1CF9E5928();
  v42[0] = 0;
  v8 = [v6 removeItemAtURL:v7 error:v42];

  v9 = v42[0];
  if (v8)
  {

    return v9;
  }

  else
  {
    v39 = v42[0];
    v11 = v42[0];
    v12 = sub_1CF9E57F8();

    swift_willThrow();
    v13 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v14 = v1;
    v15 = v12;
    v16 = sub_1CF9E6108();
    v17 = sub_1CF9E72A8();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v39 = v3;
      v20 = v19;
      v21 = swift_slowAlloc();
      v38 = v2;
      v22 = v21;
      v42[0] = v21;
      *v18 = 136315394;
      v23 = sub_1CF9E5928();
      v24 = [v23 fp_shortDescription];

      v25 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v27 = v26;

      v28 = sub_1CEFD0DF0(v25, v27, v42);
      v27, v29, v30, v31, v32, v33, v34, v35;
      *(v18 + 4) = v28;
      *(v18 + 12) = 2112;
      swift_getErrorValue();
      v36 = Error.prettyDescription.getter(v40, v41);
      *(v18 + 14) = v36;
      *v20 = v36;
      _os_log_impl(&dword_1CEFC7000, v16, v17, "Failed to remove directory %s: %@", v18, 0x16u);
      sub_1CEFCCC44(v20, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v20, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x1D386CDC0](v22, -1, -1);
      MEMORY[0x1D386CDC0](v18, -1, -1);

      return v39[1](v5, v38);
    }

    else
    {

      return v3[1](v5, v2);
    }
  }
}

id FPFSSQLBackupEngine.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FPFSSQLBackupEngine.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FPFSSQLBackupEngine(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1CF33BFEC(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  result = sub_1CF9E6A08();
  if (v4)
  {
    result = 15;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_12;
  }

  return sub_1CF9E6B58();
}

_TtC18FileProviderDaemon8FSTester *sub_1CF33C0A8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a5@<X8>)
{
  v247 = a3;
  v246 = a2;
  v243 = a5;
  v251 = sub_1CF9E53C8();
  v250 = *(v251 - 1);
  MEMORY[0x1EEE9AC00](v251);
  v249 = &v238 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v253 = sub_1CF9E5A58();
  v257 = *(v253 - 8);
  MEMORY[0x1EEE9AC00](v253);
  v252 = (&v238 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v245 = &v238 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v248 = &v238 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v244 = &v238 - v13;
  v14 = sub_1CF9E6118();
  v15 = *(v14 - 8);
  v254 = v14;
  v255 = v15;
  MEMORY[0x1EEE9AC00](v14);
  v258 = &v238 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v238 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v238 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v238 - v24;
  v26 = sub_1CF9E5648();
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v238 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v238 - v31;
  v33 = v256;
  sub_1CF9E58A8();
  if (v33)
  {
    v34 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v35 = v257;
    v36 = v252;
    v37 = v253;
    (*(v257 + 16))(v252, a1, v253);
    v38 = v33;
    v39 = sub_1CF9E6108();
    v40 = sub_1CF9E72A8();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v251 = swift_slowAlloc();
      v256 = swift_slowAlloc();
      v262[0] = v256;
      *v41 = 136315394;
      v42 = sub_1CF9E5928();
      v43 = [v42 fp_shortDescription];
      LODWORD(v250) = v40;
      v44 = v43;

      v45 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v47 = v46;

      (*(v35 + 8))(v36, v37);
      v48 = sub_1CEFD0DF0(v45, v47, v262);
      v47, v49, v50, v51, v52, v53, v54, v55;
      *(v41 + 4) = v48;
      *(v41 + 12) = 2112;
      swift_getErrorValue();
      v56 = Error.prettyDescription.getter(v262[5], v262[6]);
      *(v41 + 14) = v56;
      v57 = v251;
      *v251 = v56;
      _os_log_impl(&dword_1CEFC7000, v39, v250, "Failed to fetch resource values for %s: %@", v41, 0x16u);
      sub_1CEFCCC44(v57, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v57, -1, -1);
      v58 = v256;
      __swift_destroy_boxed_opaque_existential_1(v256);
      MEMORY[0x1D386CDC0](v58, -1, -1);
      MEMORY[0x1D386CDC0](v41, -1, -1);
    }

    else
    {

      (*(v35 + 8))(v36, v37);
    }

    (*(v255 + 8))(v258, v254);
    return swift_willThrow();
  }

  v240 = v19;
  v241 = v22;
  v239 = v25;
  v256 = a1;
  v252 = 0;
  (*(v27 + 32))(v32, v29, v26);
  v59 = sub_1CF9E5598();
  v61 = v26;
  v258 = v32;
  v242 = v27;
  if (!v60)
  {
    v133 = fpfs_current_or_default_log();
    v134 = v240;
    sub_1CF9E6128();
    v135 = v257;
    v136 = v245;
    v137 = v253;
    (*(v257 + 16))(v245, v256, v253);
    v138 = sub_1CF9E6108();
    v139 = sub_1CF9E72A8();
    if (os_log_type_enabled(v138, v139))
    {
      v140 = swift_slowAlloc();
      v252 = swift_slowAlloc();
      v262[0] = v252;
      *v140 = 136315138;
      v141 = sub_1CF9E5928();
      v142 = [v141 fp_shortDescription];

      v143 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v256 = v61;
      v145 = v144;

      (*(v135 + 8))(v136, v137);
      v146 = sub_1CEFD0DF0(v143, v145, v262);
      v147 = v145;
      v61 = v256;
      v147, v148, v149, v150, v151, v152, v153, v154;
      *(v140 + 4) = v146;
      _os_log_impl(&dword_1CEFC7000, v138, v139, "Failed to get canonical path for %s", v140, 0xCu);
      v155 = v252;
      __swift_destroy_boxed_opaque_existential_1(v252);
      MEMORY[0x1D386CDC0](v155, -1, -1);
      MEMORY[0x1D386CDC0](v140, -1, -1);

      (*(v255 + 8))(v240, v254);
    }

    else
    {

      (*(v135 + 8))(v136, v137);
      (*(v255 + 8))(v134, v254);
    }

    LODWORD(v262[0]) = 2;
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF00BBC0(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
    v191 = v249;
    v192 = v251;
    sub_1CF9E57D8();
    sub_1CF9E53A8();
    (*(v250 + 8))(v191, v192);
    swift_willThrow();
    return (*(v242 + 8))(v258, v61);
  }

  v62 = v59;
  v63 = v60;
  v64 = sub_1CF9E69D8();
  v65 = sub_1CF9E69D8();
  v66 = __OFSUB__(v64, v65);
  result = (v64 - v65);
  v68 = v257;
  if (v66)
  {
    __break(1u);
    goto LABEL_35;
  }

  v69 = sub_1CF33BFEC(result, v62, v63);
  v71 = v70;
  v72 = MEMORY[0x1D3868C10](v69);
  v74 = v73;
  v71, v73, v75, v76, v77, v78, v79, v80;
  result = sub_1CF9E5568();
  v88 = *MEMORY[0x1E695E2F0];
  if (!*MEMORY[0x1E695E2F0])
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v89 = result;
  v63, v81, v82, v83, v84, v85, v86, v87;
  if (!*v89->tree)
  {
LABEL_19:
    v89, v90, v91, v92, v93, v94, v95, v96;
    v74, v156, v157, v158, v159, v160, v161, v162;
LABEL_20:
    v163 = v256;
    v164 = fpfs_current_or_default_log();
    v165 = v241;
    sub_1CF9E6128();
    v166 = v248;
    v167 = v253;
    (*(v68 + 16))(v248, v163, v253);
    v168 = sub_1CF9E6108();
    v169 = sub_1CF9E72A8();
    if (os_log_type_enabled(v168, v169))
    {
      v170 = swift_slowAlloc();
      v256 = swift_slowAlloc();
      v262[0] = v256;
      *v170 = 136315138;
      v171 = sub_1CF9E5928();
      v172 = v68;
      v173 = [v171 fp_shortDescription];

      v174 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v175 = v61;
      v177 = v176;

      (*(v172 + 8))(v248, v167);
      v178 = sub_1CEFD0DF0(v174, v177, v262);
      v179 = v177;
      v61 = v175;
      v179, v180, v181, v182, v183, v184, v185, v186;
      *(v170 + 4) = v178;
      _os_log_impl(&dword_1CEFC7000, v168, v169, "Failed to get the inode for %s", v170, 0xCu);
      v187 = v256;
      __swift_destroy_boxed_opaque_existential_1(v256);
      MEMORY[0x1D386CDC0](v187, -1, -1);
      MEMORY[0x1D386CDC0](v170, -1, -1);

      (*(v255 + 8))(v241, v254);
    }

    else
    {

      (*(v68 + 8))(v166, v167);
      (*(v255 + 8))(v165, v254);
    }

    v188 = v251;
    v189 = v250;
    v190 = v249;
    LODWORD(v262[0]) = 2;
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF00BBC0(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
    sub_1CF9E57D8();
    sub_1CF9E53A8();
    (*(v189 + 8))(v190, v188);
    swift_willThrow();
    return (*(v242 + 8))(v258, v61);
  }

  v97 = v88;
  v98 = sub_1CEFE863C(v97);
  if ((v99 & 1) == 0)
  {

    goto LABEL_19;
  }

  v100 = v61;
  sub_1CEFD1104(*v89[1].tester + 32 * v98, v262);
  v89, v101, v102, v103, v104, v105, v106, v107;

  sub_1CEFD1104(v262, v261);
  sub_1CF2CA148();
  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1(v262);
    v74, v193, v194, v195, v196, v197, v198, v199;
    goto LABEL_20;
  }

  v108 = v260[0];
  v247 = [v260[0] integerValue];

  v246 = sub_1CF9E55C8();
  v110 = v109;
  v111 = sub_1CF9E6888();
  v119 = sub_1CF9E5568();
  v120 = *v119->tree;
  v248 = v111;
  if (v120 && (v121 = sub_1CEFE863C(v111), (v112 & 1) != 0))
  {
    sub_1CEFD1104(*v119[1].tester + 32 * v121, v261);
    v119, v122, v123, v124, v125, v126, v127, v128;
    sub_1CEFD1104(v261, v260);
    if (swift_dynamicCast())
    {
      v129 = v259;
      v130 = [v259 unsignedIntValue];

      __swift_destroy_boxed_opaque_existential_1(v261);
      __swift_destroy_boxed_opaque_existential_1(v262);
      result = (*(v242 + 8))(v258, v100);
      v131 = v243;
      *v243 = v72;
      v131[1] = v74;
      v132 = v246;
      v131[2] = v247;
      v131[3] = v132;
      *(v131 + 32) = v110 & 1;
      *(v131 + 9) = v130;
      return result;
    }

    __swift_destroy_boxed_opaque_existential_1(v261);
  }

  else
  {
    v119, v112, v113, v114, v115, v116, v117, v118;
  }

  v74, v200, v201, v202, v203, v204, v205, v206;
  v207 = fpfs_current_or_default_log();
  v208 = v239;
  sub_1CF9E6128();
  v209 = v244;
  v210 = v253;
  (*(v68 + 16))(v244, v256, v253);
  v211 = sub_1CF9E6108();
  v212 = sub_1CF9E72A8();
  v213 = v100;
  if (os_log_type_enabled(v211, v212))
  {
    v214 = swift_slowAlloc();
    v252 = v214;
    v256 = swift_slowAlloc();
    v261[0] = v256;
    *v214 = 136315138;
    v215 = sub_1CF9E5928();
    v216 = v209;
    v217 = [v215 fp_shortDescription];

    v218 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v219 = v68;
    v221 = v220;

    v222 = v216;
    v213 = v100;
    (*(v219 + 8))(v222, v210);
    v223 = sub_1CEFD0DF0(v218, v221, v261);
    v221, v224, v225, v226, v227, v228, v229, v230;
    v231 = v252;
    *(v252 + 4) = v223;
    v232 = v231;
    _os_log_impl(&dword_1CEFC7000, v211, v212, "Failed to get gen count for %s", v231, 0xCu);
    v233 = v256;
    __swift_destroy_boxed_opaque_existential_1(v256);
    MEMORY[0x1D386CDC0](v233, -1, -1);
    MEMORY[0x1D386CDC0](v232, -1, -1);

    (*(v255 + 8))(v239, v254);
  }

  else
  {

    (*(v68 + 8))(v209, v210);
    (*(v255 + 8))(v208, v254);
  }

  v234 = v258;
  v235 = v248;
  LODWORD(v261[0]) = 2;
  sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
  sub_1CF00BBC0(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
  v236 = v249;
  v237 = v251;
  sub_1CF9E57D8();
  sub_1CF9E53A8();
  (*(v250 + 8))(v236, v237);
  swift_willThrow();

  __swift_destroy_boxed_opaque_existential_1(v262);
  return (*(v242 + 8))(v234, v213);
}

void sub_1CF33D130(char *a1, void *a2, uint64_t a3)
{
  v192 = a2;
  v197[7] = a3;
  v187 = a1;
  v182 = sub_1CF9E53C8();
  v181 = *(v182 - 8);
  MEMORY[0x1EEE9AC00](v182);
  v180 = &v174 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v183 = &v174 - v5;
  v184 = sub_1CF9E5828();
  v176 = *(v184 - 8);
  MEMORY[0x1EEE9AC00](v184);
  v190 = (&v174 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v191 = sub_1CF9E5A58();
  v188 = *(v191 - 8);
  MEMORY[0x1EEE9AC00](v191);
  v178 = &v174 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v177 = &v174 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v179 = &v174 - v11;
  v186 = sub_1CF9E6118();
  v185 = *v186[-1].tester;
  MEMORY[0x1EEE9AC00](v186);
  v13 = &v174 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v174 - v15;
  v17 = sub_1CF9E5648();
  v189 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v174 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4700, &qword_1CFA00810);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CF9FA450;
  v21 = *MEMORY[0x1E695DA88];
  *(inited + 32) = *MEMORY[0x1E695DA88];
  v22 = v21;
  sub_1CEFF8A84(inited);
  v24 = v23;
  swift_setDeallocating();
  sub_1CF33F938(inited + 32);
  v25 = v193;
  v26 = v192;
  sub_1CF9E58A8();
  if (v25)
  {

    v24, v34, v35, v36, v37, v38, v39, v40;
    return;
  }

  v175 = 0;
  v174 = v13;
  v193 = v17;
  v24, v27, v28, v29, v30, v31, v32, v33;
  v41 = sub_1CF9E5598();
  if (!v42)
  {
    v187 = v19;
    v93 = fpfs_current_or_default_log();
    v94 = v16;
    sub_1CF9E6128();
    v95 = v188;
    v96 = v179;
    v97 = v191;
    (*(v188 + 16))(v179, v26, v191);
    v98 = sub_1CF9E6108();
    v99 = sub_1CF9E72A8();
    if (os_log_type_enabled(v98, v99))
    {
      v100 = swift_slowAlloc();
      v192 = v94;
      v101 = v100;
      v102 = v95;
      v190 = swift_slowAlloc();
      v194[0] = v190;
      *v101 = 136315138;
      v103 = sub_1CF9E5928();
      v104 = [v103 fp_shortDescription];

      v105 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v107 = v106;

      (*(v102 + 8))(v96, v97);
      v108 = sub_1CEFD0DF0(v105, v107, v194);
      v107, v109, v110, v111, v112, v113, v114, v115;
      *(v101 + 4) = v108;
      _os_log_impl(&dword_1CEFC7000, v98, v99, "Could not get canonical path for %s", v101, 0xCu);
      v116 = v190;
      __swift_destroy_boxed_opaque_existential_1(v190);
      MEMORY[0x1D386CDC0](v116, -1, -1);
      MEMORY[0x1D386CDC0](v101, -1, -1);

      (*(v185 + 8))(v192, v186);
    }

    else
    {

      (*(v95 + 8))(v96, v97);
      (*(v185 + 8))(v94, v186);
    }

    v146 = v189;
    v147 = v193;
    v148 = v182;
    v149 = v181;
    v150 = v180;
    LODWORD(v194[0]) = 2;
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF00BBC0(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
    sub_1CF9E57D8();
    sub_1CF9E53A8();
    (*(v149 + 8))(v150, v148);
    swift_willThrow();
    (*(v146 + 8))(v187, v147);
    goto LABEL_14;
  }

  v43 = v42;
  v192 = v41;
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_1CF9FC330;
  *(v44 + 32) = v22;
  v45 = *MEMORY[0x1E695E2F0];
  if (!*MEMORY[0x1E695E2F0])
  {
    __break(1u);
    return;
  }

  v46 = *MEMORY[0x1E695DAB8];
  *(v44 + 40) = v45;
  *(v44 + 48) = v46;
  v47 = v44;
  v48 = v22;
  v49 = v46;
  v50 = v45;
  *v47[1].tester = sub_1CF9E6888();

  v52 = sub_1CF8E4440(v51);
  v47, v53, v54, v55, v56, v57, v58, v59;
  v60 = [objc_opt_self() defaultManager];
  v61 = v187;
  v62 = sub_1CF9E7268();

  v47, v63, v64, v65, v66, v67, v68, v69;
  v77 = v175;
  if (!v62)
  {
    v43, v70, v71, v72, v73, v74, v75, v76;
    v52, v117, v118, v119, v120, v121, v122, v123;
    v124 = fpfs_current_or_default_log();
    v125 = v174;
    sub_1CF9E6128();
    v126 = v188;
    v127 = v177;
    v128 = v191;
    (*(v188 + 16))(v177, v61, v191);
    v129 = sub_1CF9E6108();
    v130 = sub_1CF9E72A8();
    if (os_log_type_enabled(v129, v130))
    {
      v131 = swift_slowAlloc();
      v192 = swift_slowAlloc();
      v194[0] = v192;
      *v131 = 136315138;
      v132 = sub_1CF9E5928();
      v133 = [v132 fp_shortDescription];

      v134 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v187 = v19;
      v136 = v135;

      (*(v126 + 8))(v127, v128);
      v137 = sub_1CEFD0DF0(v134, v136, v194);
      v136, v138, v139, v140, v141, v142, v143, v144;
      *(v131 + 4) = v137;
      _os_log_impl(&dword_1CEFC7000, v129, v130, "Failed to get enumerator for %s", v131, 0xCu);
      v145 = v192;
      __swift_destroy_boxed_opaque_existential_1(v192);
      MEMORY[0x1D386CDC0](v145, -1, -1);
      MEMORY[0x1D386CDC0](v131, -1, -1);

      (*(v185 + 8))(v174, v186);
      (*(v189 + 8))(v187, v193);
    }

    else
    {

      (*(v126 + 8))(v127, v128);
      (*(v185 + 8))(v125, v186);
      (*(v189 + 8))(v19, v193);
    }

LABEL_14:

    return;
  }

  sub_1CF33C0A8(v61, v192, v43, v196);
  v78 = v191;
  if (v77)
  {
    (*(v189 + 8))(v19, v193);

    v43, v79, v80, v81, v82, v83, v84, v85;
    v52, v86, v87, v88, v89, v90, v91, v92;
  }

  else
  {
    sub_1CF1BBDD4(v196);
    v186 = v43;
    v187 = v19;
    sub_1CF1C090C(v196);
    sub_1CF9E7238();
    sub_1CF9E5818();
    if (v195)
    {
      v151 = (v188 + 56);
      v152 = (v188 + 32);
      v153 = (v188 + 8);
      do
      {
        v155 = v183;
        v156 = swift_dynamicCast();
        v157 = *v151;
        if (v156)
        {
          v157(v155, 0, 1, v78);
          v158 = v178;
          (*v152)();
          v159 = objc_autoreleasePoolPush();
          sub_1CF33C0A8(v158, v192, v186, v197);
          sub_1CF1BBDD4(v197);
          sub_1CF1C090C(v197);
          objc_autoreleasePoolPop(v159);
          v78 = v191;
          (*v153)(v158, v191);
        }

        else
        {
          v157(v155, 1, 1, v78);
          sub_1CEFCCC44(v155, &unk_1EC4BE310, qword_1CF9FCBE0);
        }

        sub_1CF9E5818();
        v154 = v184;
      }

      while (v195);
    }

    else
    {
      v154 = v184;
    }

    v186, v160, v161, v162, v163, v164, v165, v166;
    v52, v167, v168, v169, v170, v171, v172, v173;
    (*(v176 + 8))(v190, v154);
    (*(v189 + 8))(v187, v193);
  }
}

double sub_1CF33DF24(void *a1, uint64_t a2)
{
  v4 = sub_1CF9E5A58();
  v5 = *(v4 - 8);
  v6 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF290, &unk_1CFA006C0);
  v9 = *(v5 + 72);
  v10 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v48 = swift_allocObject();
  v11 = v48 + v10;

  sub_1CF9E5958();
  v45 = v9;
  sub_1CF9E5958();
  v12 = objc_opt_self();
  v13 = *(v6 + 16);
  v50 = (v6 + 8);
  v47 = v11;
  v51 = v4;
  v13(v8, v11, v4);
  v46 = objc_autoreleasePoolPush();
  v14 = [v12 defaultManager];
  sub_1CF9E5A18();
  v16 = v15;
  v17 = sub_1CF9E6888();
  v16, v18, v19, v20, v21, v22, v23, v24;
  LODWORD(v16) = [v14 fileExistsAtPath_];

  if (v16)
  {

    v25 = v49;
    sub_1CF33D130(v8, a1, a2);
    if (v25)
    {
      v26 = v46;
      goto LABEL_8;
    }

    v44 = a1;
    v49 = 0;
  }

  else
  {
    v44 = a1;
  }

  objc_autoreleasePoolPop(v46);
  v27 = *v50;
  v28 = v51;
  (*v50)(v8, v51);
  v13(v8, v47 + v45, v28);
  v26 = objc_autoreleasePoolPush();
  v29 = [v12 defaultManager];
  sub_1CF9E5A18();
  v31 = v30;
  v32 = sub_1CF9E6888();
  v31, v33, v34, v35, v36, v37, v38, v39;
  LODWORD(v31) = [v29 fileExistsAtPath_];

  if (!v31 || (, v40 = v49, sub_1CF33D130(v8, v44, a2), !v40))
  {
    objc_autoreleasePoolPop(v26);
    v27(v8, v51);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    goto LABEL_10;
  }

LABEL_8:
  swift_setDeallocating();
  v41 = v51;
  swift_arrayDestroy();
  swift_deallocClassInstance();
  objc_autoreleasePoolPop(v26);
  (*v50)(v8, v41);
LABEL_10:

  return result;
}

uint64_t sub_1CF33E2FC(uint64_t a1)
{
  result = sub_1CF9E5A58();
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

uint64_t sub_1CF33E3F0(char *a1, uint64_t a2)
{
  v194 = a2;
  v201[1] = *MEMORY[0x1E69E9840];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v187 = &v175 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v188 = &v175 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v189 = &v175 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v190 = &v175 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v185 = &v175 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v186 = &v175 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v182 = &v175 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v183 = &v175 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v179 = &v175 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v180 = &v175 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v175 = &v175 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v176 = &v175 - v26;
  v27 = sub_1CF9E5A58();
  v28 = *(v27 - 8);
  v195 = v27;
  v196 = v28;
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v175 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1CF9E6118();
  v32 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v178 = &v175 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v177 = &v175 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v184 = &v175 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v181 = &v175 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v175 - v41;
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v175 - v44;
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v175 - v47;
  v49 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v50 = sub_1CF9E6108();
  v51 = sub_1CF9E72C8();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    *v52 = 0;
    _os_log_impl(&dword_1CEFC7000, v50, v51, "Starting backup...", v52, 2u);
    MEMORY[0x1D386CDC0](v52, -1, -1);
  }

  v53 = *(v32 + 8);
  v192 = v31;
  v193 = v32 + 8;
  v191 = v53;
  v53(v48, v31);
  v54 = objc_opt_self();
  v55 = [v54 defaultManager];
  v56 = OBJC_IVAR____TtC18FileProviderDaemon19FPFSSQLBackupEngine_destinationDirectoryURL;
  sub_1CF9E5A18();
  v58 = v57;
  v59 = sub_1CF9E6888();
  v58, v60, v61, v62, v63, v64, v65, v66;
  LODWORD(v58) = [v55 fileExistsAtPath_];

  if (v58)
  {
    v67 = [v54 defaultManager];
    v68 = sub_1CF9E5928();
    v201[0] = 0;
    v69 = [v67 removeItemAtURL:v68 error:v201];

    if (!v69)
    {
      v108 = v201[0];
      v80 = sub_1CF9E57F8();

      swift_willThrow();
      v109 = sub_1CF9E5A18();
      v111 = v110;
      v112 = fpfs_current_or_default_log();
      sub_1CF9E6128();

      v113 = v80;
      v114 = sub_1CF9E6108();
      v115 = sub_1CF9E72A8();
      v111, v116, v117, v118, v119, v120, v121, v122;

      if (os_log_type_enabled(v114, v115))
      {
        v123 = swift_slowAlloc();
        v124 = swift_slowAlloc();
        v125 = swift_slowAlloc();
        v201[0] = v125;
        *v123 = 136315394;
        v126 = sub_1CEFD0DF0(v109, v111, v201);
        v111, v127, v128, v129, v130, v131, v132, v133;
        *(v123 + 4) = v126;
        *(v123 + 12) = 2112;
        swift_getErrorValue();
        v134 = Error.prettyDescription.getter(v197, v198);
        *(v123 + 14) = v134;
        *v124 = v134;
        _os_log_impl(&dword_1CEFC7000, v114, v115, "Unable to delete existing destination directory at %s: %@", v123, 0x16u);
        sub_1CEFCCC44(v124, &qword_1EC4BE350, &unk_1CF9FC3B0);
        MEMORY[0x1D386CDC0](v124, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v125);
        MEMORY[0x1D386CDC0](v125, -1, -1);
        MEMORY[0x1D386CDC0](v123, -1, -1);
      }

      else
      {

        v111, v138, v139, v140, v141, v142, v143, v144;
      }

      v191(v45, v192);
      v107 = v187;
      v104 = v195;
      v105 = v196;
      v103 = v188;
      (*(v196 + 56))(v188, 1, 1, v195);
      v106 = v103;
      goto LABEL_15;
    }

    v70 = v201[0];
  }

  v71 = [v54 defaultManager];
  v72 = sub_1CF9E5928();
  v201[0] = 0;
  v73 = [v71 createDirectoryAtURL:v72 withIntermediateDirectories:0 attributes:0 error:v201];

  v74 = v201[0];
  if (v73)
  {
    v75 = v195;
    v76 = v196;
    v77 = *(v196 + 16);
    v77(v30, &a1[OBJC_IVAR____TtC18FileProviderDaemon19FPFSSQLBackupEngine_backupManifestURL], v195);
    type metadata accessor for SQLBackupManifest(0);
    swift_allocObject();
    v78 = v74;
    v135 = sub_1CF1BA200(v30);
    v136 = a1;
    v137 = OBJC_IVAR____TtC18FileProviderDaemon19FPFSSQLBackupEngine_userURL;

    sub_1CF33DF24(&v136[v137], v135);
    v190 = v135;

    sub_1CF1BC728();
    sub_1CF33988C(&v136[v56]);
    v151 = fpfs_current_or_default_log();
    v152 = v177;
    sub_1CF9E6128();
    v153 = v136;
    v189 = v136;
    v154 = v153;
    v155 = sub_1CF9E6108();
    v156 = sub_1CF9E72C8();

    if (os_log_type_enabled(v155, v156))
    {
      v157 = swift_slowAlloc();
      v188 = swift_slowAlloc();
      v201[0] = v188;
      *v157 = 136315138;
      v158 = sub_1CF9E5928();
      v159 = [v158 fp_shortDescription];

      v160 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v162 = v161;

      v76 = v196;
      v163 = sub_1CEFD0DF0(v160, v162, v201);
      v162, v164, v165, v166, v167, v168, v169, v170;
      *(v157 + 4) = v163;
      _os_log_impl(&dword_1CEFC7000, v155, v156, "Calling completion handler with %s", v157, 0xCu);
      v171 = v188;
      __swift_destroy_boxed_opaque_existential_1(v188);
      MEMORY[0x1D386CDC0](v171, -1, -1);
      MEMORY[0x1D386CDC0](v157, -1, -1);

      v172 = v177;
    }

    else
    {

      v172 = v152;
    }

    v191(v172, v192);
    v149 = v176;
    v77(v176, &v189[v56], v75);
    (*(v76 + 56))(v149, 0, 1, v75);
    v173 = v175;
    sub_1CF33F8C8(v149, v175);
    if ((*(v76 + 48))(v173, 1, v75) == 1)
    {
      v174 = 0;
    }

    else
    {
      v174 = sub_1CF9E5928();
      (*(v76 + 8))(v173, v75);
    }

    (*(v194 + 16))(v194, v174, 0);

    return sub_1CEFCCC44(v149, &unk_1EC4BE310, qword_1CF9FCBE0);
  }

  v79 = v201[0];
  v80 = sub_1CF9E57F8();

  swift_willThrow();
  v81 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v82 = a1;
  v83 = v80;
  v84 = sub_1CF9E6108();
  v85 = sub_1CF9E72A8();

  if (os_log_type_enabled(v84, v85))
  {
    v86 = swift_slowAlloc();
    v87 = swift_slowAlloc();
    v188 = swift_slowAlloc();
    v201[0] = v188;
    *v86 = 136315394;
    v88 = sub_1CF9E5928();
    v89 = [v88 fp_shortDescription];

    v90 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v92 = v91;

    v93 = sub_1CEFD0DF0(v90, v92, v201);
    v92, v94, v95, v96, v97, v98, v99, v100;
    *(v86 + 4) = v93;
    *(v86 + 12) = 2112;
    swift_getErrorValue();
    v101 = Error.prettyDescription.getter(v199, v200);
    *(v86 + 14) = v101;
    *v87 = v101;
    _os_log_impl(&dword_1CEFC7000, v84, v85, "Unable to create destination directory %s: %@", v86, 0x16u);
    sub_1CEFCCC44(v87, &qword_1EC4BE350, &unk_1CF9FC3B0);
    MEMORY[0x1D386CDC0](v87, -1, -1);
    v102 = v188;
    __swift_destroy_boxed_opaque_existential_1(v188);
    MEMORY[0x1D386CDC0](v102, -1, -1);
    MEMORY[0x1D386CDC0](v86, -1, -1);
  }

  v191(v42, v192);
  v103 = v190;
  v104 = v195;
  v105 = v196;
  (*(v196 + 56))(v190, 1, 1, v195);
  v106 = v103;
  v107 = v189;
LABEL_15:
  sub_1CF33F8C8(v106, v107);
  v145 = (*(v105 + 48))(v107, 1, v104);
  v146 = v80;
  if (v145 == 1)
  {
    v147 = 0;
  }

  else
  {
    v147 = sub_1CF9E5928();
    (*(v105 + 8))(v107, v104);
  }

  v148 = sub_1CF9E57E8();
  (*(v194 + 16))(v194, v147, v148);

  v149 = v103;
  return sub_1CEFCCC44(v149, &unk_1EC4BE310, qword_1CF9FCBE0);
}

uint64_t sub_1CF33F8C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CF33F938(uint64_t a1)
{
  type metadata accessor for URLResourceKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CF33FA30()
{
  v1 = (v0 + OBJC_IVAR____TtC18FileProviderDaemon26FPCKOnDemandUpdateReceiver_report);
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC18FileProviderDaemon26FPCKOnDemandUpdateReceiver_report));
  v2 = sub_1CF4DFA80();
  os_unfair_lock_unlock(v1);
  return v2;
}

id FPCKOnDemandUpdateReceiver.__allocating_init(withDomainBackend:persistUpdates:)(uint64_t a1, char a2)
{
  v4 = objc_allocWithZone(v2);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v4[OBJC_IVAR____TtC18FileProviderDaemon26FPCKOnDemandUpdateReceiver_persistUpdates] = a2;
  v5 = [objc_allocWithZone(type metadata accessor for FPCKReport()) init];
  v6 = &v4[OBJC_IVAR____TtC18FileProviderDaemon26FPCKOnDemandUpdateReceiver_report];
  *v6 = 0;
  *(v6 + 1) = v5;
  v9.receiver = v4;
  v9.super_class = v2;
  v7 = objc_msgSendSuper2(&v9, sel_init);
  swift_unknownObjectRelease();
  return v7;
}

id FPCKOnDemandUpdateReceiver.init(withDomainBackend:persistUpdates:)(uint64_t a1, char a2)
{
  v2 = sub_1CF3402F4(a1, a2);
  swift_unknownObjectRelease();
  return v2;
}

void sub_1CF33FBC0(void *a1)
{
  v2 = v1;
  v4 = sub_1CF9E6118();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v9 = a1;
  v10 = sub_1CF9E6108();
  v11 = sub_1CF9E7288();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    *(v12 + 4) = v9;
    *v13 = v9;
    v14 = v9;
    _os_log_impl(&dword_1CEFC7000, v10, v11, "🧹 Update receiver received a telemetry update: %@", v12, 0xCu);
    sub_1CF19CAB0(v13);
    MEMORY[0x1D386CDC0](v13, -1, -1);
    MEMORY[0x1D386CDC0](v12, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  v15 = (v2 + OBJC_IVAR____TtC18FileProviderDaemon26FPCKOnDemandUpdateReceiver_report);
  os_unfair_lock_lock((v2 + OBJC_IVAR____TtC18FileProviderDaemon26FPCKOnDemandUpdateReceiver_report));
  sub_1CF4DF514(v9);
  os_unfair_lock_unlock(v15);
  if (*(v2 + OBJC_IVAR____TtC18FileProviderDaemon26FPCKOnDemandUpdateReceiver_persistUpdates) == 1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong registerFPCKProgress_];
      swift_unknownObjectRelease();
    }
  }
}

void sub_1CF33FEB8(uint64_t a1, uint64_t a2)
{
  v2 = sub_1CF9E6118();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    if ([Strong respondsToSelector_])
    {
      swift_unknownObjectRetain();
      v14 = sub_1CF9E5B48();
      [v7 sendDiagnosticsFromFPCKForItemIDs_];
      swift_unknownObjectRelease_n();
      v8 = v14;
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }

  else
  {
    v9 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v10 = sub_1CF9E6108();
    v11 = sub_1CF9E72A8();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1CEFC7000, v10, v11, "🧹 No backend for sendDiagnostics(ForItemIDs:)", v12, 2u);
      MEMORY[0x1D386CDC0](v12, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
  }
}

id FPCKOnDemandUpdateReceiver.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FPCKOnDemandUpdateReceiver.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FPCKOnDemandUpdateReceiver();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1CF3402F4(uint64_t a1, char a2)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v2[OBJC_IVAR____TtC18FileProviderDaemon26FPCKOnDemandUpdateReceiver_persistUpdates] = a2;
  v4 = [objc_allocWithZone(type metadata accessor for FPCKReport()) init];
  v5 = &v2[OBJC_IVAR____TtC18FileProviderDaemon26FPCKOnDemandUpdateReceiver_report];
  *v5 = 0;
  *(v5 + 1) = v4;
  v7.receiver = v2;
  v7.super_class = type metadata accessor for FPCKOnDemandUpdateReceiver();
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t sub_1CF340394()
{
  v0 = sub_1CF9E6118();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v5 = sub_1CF9E6108();
  v6 = sub_1CF9E7298();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1CEFC7000, v5, v6, "🧹 reingestItemIDs not supported for onDemand", v7, 2u);
    MEMORY[0x1D386CDC0](v7, -1, -1);
  }

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1CF3406A4()
{
  swift_weakDestroy();

  return swift_deallocClassInstance();
}

void sub_1CF340700(uint64_t a1, __int16 a2)
{
  if ((a2 & 0x200) != 0)
  {
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v4 = *(Strong + 16);
      v5 = *(Strong + 24);
      sub_1CF2B9F74(v4, v5);

      if (v4)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4F70, &unk_1CF9FE710);
        v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED40, &unk_1CFA00720) - 8);
        v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
        v8 = swift_allocObject();
        *(v8 + 16) = xmmword_1CF9FA450;
        *(v8 + v7) = a1;
        swift_storeEnumTagMultiPayload();
        v4(v8, MEMORY[0x1E69E7CC0], 0, 0);
        sub_1CF045404(v4, v5);

        v8, v9, v10, v11, v12, v13, v14, v15;
      }
    }
  }
}