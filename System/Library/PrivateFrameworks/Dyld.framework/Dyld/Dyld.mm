CFTypeRef dyld_process_create_for_task(uint64_t a1, _DWORD *a2)
{
  if (a2)
  {
    *a2 = 0;
  }

  v9 = 0;
  v3 = [[_DYProcess alloc] initWithTask:a1 queue:0 error:&v9];
  v4 = v9;
  v5 = v4;
  if (v4)
  {
    KernReturn = extractKernReturn(v4);
    v7 = 0;
    if (a2)
    {
      *a2 = KernReturn;
    }
  }

  else
  {
    v7 = CFRetain(v3);
  }

  return v7;
}

char *sub_1AE4A36C4(mach_port_name_t a1, void *a2)
{
  v4 = v2;
  v7 = OBJC_IVAR____DYProcess_impl;
  *&v4[OBJC_IVAR____DYProcess_impl] = 0;
  type metadata accessor for Process.Impl();
  swift_allocObject();
  v8 = a2;
  v9 = sub_1AE4A37D0(a1, a2);
  if (v3)
  {

    type metadata accessor for _DYProcess(v10);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v11 = v9;
    swift_beginAccess();
    *&v4[v7] = v11;

    v13.receiver = v4;
    v13.super_class = _DYProcess;
    v4 = objc_msgSendSuper2(&v13, sel_init);
  }

  return v4;
}

uint64_t sub_1AE4A37D0(mach_port_name_t name, id a2)
{
  v4 = v2;
  v7 = MEMORY[0x1E69E7CC8];
  *(v2 + 16) = MEMORY[0x1E69E7CC8];
  *(v2 + 24) = v7;
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  *(v2 + 56) = 4;
  *(v2 + 64) = 0;
  v8 = MEMORY[0x1E69E9A60];
  v9 = mach_port_mod_refs(*MEMORY[0x1E69E9A60], name, 0, 1);
  if (v9)
  {
    sub_1AE4C9430();
    swift_allocError();
    *v10 = v9;
    *(v10 + 8) = 0;
    *(v10 + 16) = 0;
    *(v10 + 24) = 0;
    *(v10 + 32) = 0;
    swift_willThrow();
LABEL_5:

    if (!v9)
    {
      mach_port_deallocate(*v8, *(v4 + 32));
    }

    sub_1AE4BD9E8(*(v4 + 40), *(v4 + 48), *(v4 + 56));

    type metadata accessor for Process.Impl();
    swift_deallocPartialClassInstance();
    return v4;
  }

  *(v4 + 32) = name;
  v11 = *(v4 + 64);
  *(v4 + 64) = a2;
  a2 = a2;

  *(v4 + 72) = 1;
  v12 = sub_1AE4A39D4(*(v4 + 32), v22);
  if (v3)
  {
    v14 = v23;
    sub_1AE4C9430();
    v20 = v22[1];
    v21 = v22[0];
    swift_allocError();
    *v15 = v21;
    *(v15 + 16) = v20;
    *(v15 + 32) = v14;
    goto LABEL_5;
  }

  *(v4 + 80) = v12;
  *(v4 + 88) = v13;
  v17 = *(v4 + 64);
  if (v17)
  {
    v18 = qword_1EB5DD1C0;
    v19 = v17;
    if (v18 != -1)
    {
      swift_once();
    }

    v24 = 1;
    sub_1AE4EAF90();
  }

  else
  {
  }

  return v4;
}

void *sub_1AE4A39D4(lsl::MemoryManager *a1, uint64_t *a2)
{
  v43 = a2;
  v3 = v2;
  v68 = *MEMORY[0x1E69E9840];
  v48 = sub_1AE4EAA30();
  MEMORY[0x1EEE9AC00](v48);
  v47 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = *MEMORY[0x1E6968FF8];
  v45 = (v6 + 104);
  v44 = (v6 + 8);
  v7 = 100;
  v8 = MEMORY[0x1E69E9A60];
  while (1)
  {
    *task_info_out = 0;
    v60 = 0;
    v61 = 0;
    task_info_outCnt[0] = 5;
    v9 = task_info(a1, 0x11u, task_info_out, task_info_outCnt);
    if (v9)
    {
      v30 = v9;
      v63 = v9;
      sub_1AE4C9430();
      v65 = 0;
      v66 = 0;
      v64 = 0;
      LOBYTE(v67) = 0;
      swift_willThrowTypedImpl();
      v31 = 0;
      v29 = 0;
      v32 = 0;
      LOBYTE(v33) = 0;
      goto LABEL_44;
    }

    v10 = *task_info_out;
    if (v61)
    {
      if (v61 != 1)
      {
        goto LABEL_40;
      }

      task_info_outCnt[0] = 0;
      *task_info_out = 0;
      safe = vm_read_safe(a1, v10, 0x170uLL, task_info_out, task_info_outCnt);
      if (safe)
      {
LABEL_33:
        v30 = safe;
        v63 = safe;
        sub_1AE4C9430();
        v65 = 0;
        v66 = 0;
        v64 = 0;
        LOBYTE(v67) = 0;
        swift_willThrowTypedImpl();
        LOBYTE(v33) = 0;
        goto LABEL_43;
      }

      v12 = task_info_outCnt[0];
      if (task_info_outCnt[0] < 0x170)
      {
        goto LABEL_34;
      }

      v13 = *task_info_out;
      if (!*task_info_out)
      {
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
      }

      v14 = *(*task_info_out + 184);
      v15 = *(*task_info_out + 304);
      v16 = *(*task_info_out + 312);
    }

    else
    {
      task_info_outCnt[0] = 0;
      *task_info_out = 0;
      safe = vm_read_safe(a1, v10, 0xE0uLL, task_info_out, task_info_outCnt);
      if (safe)
      {
        goto LABEL_33;
      }

      v12 = task_info_outCnt[0];
      if (task_info_outCnt[0] < 0xE0)
      {
LABEL_34:
        v30 = 4;
        v63 = 4;
        v64 = 0;
        v65 = 0;
        v66 = 0;
        LOBYTE(v33) = -64;
        LOBYTE(v67) = -64;
        sub_1AE4C9430();
        swift_willThrowTypedImpl();
        mach_vm_deallocate(*v8, *task_info_out, task_info_outCnt[0]);
        goto LABEL_43;
      }

      v13 = *task_info_out;
      if (!*task_info_out)
      {
        goto LABEL_48;
      }

      v14 = *(*task_info_out + 104);
      v15 = *(*task_info_out + 168);
      v16 = *(*task_info_out + 172);
    }

    mach_vm_deallocate(*v8, v13, v12);
    if (!v16 || !v14)
    {
      break;
    }

    task_info_outCnt[0] = 0;
    *task_info_out = 0;
    v17 = vm_read_safe(a1, v15, v16, task_info_out, task_info_outCnt);
    if (v17)
    {
      v63 = v17;
      sub_1AE4C9430();
      v65 = 0;
      v66 = 0;
      v64 = 0;
      LOBYTE(v67) = 0;
      swift_willThrowTypedImpl();
    }

    else
    {
      v18 = *task_info_out;
      if (!*task_info_out)
      {
        goto LABEL_49;
      }

      v19 = task_info_outCnt[0];
      v20 = v47;
      (*v45)(v47, v46, v48);
      sub_1AE4EAA20();
      if (v19)
      {
        sub_1AE4EA9D0();
        swift_allocObject();

        v21 = sub_1AE4EA970();
        v22 = sub_1AE4AB51C(v21, v19);
        v24 = v23;
      }

      else
      {
        v25 = sub_1AE4EAA20();
        v25(v18, 0);

        v22 = 0;
        v24 = 0xC000000000000000;
      }

      (*v44)(v20, v48);
      v66 = &type metadata for Snapshot.DefaultDelegate;
      v67 = &off_1F240DAF0;
      sub_1AE4A6E5C(&v63, task_info_out);
      __swift_mutable_project_boxed_opaque_existential_1(task_info_out, v62);
      v57 = &type metadata for Snapshot.DefaultDelegate;
      v58 = &off_1F240DAF0;
      type metadata accessor for Snapshot.DecoderContext(0);
      v26 = swift_allocObject();
      __swift_mutable_project_boxed_opaque_existential_1(task_info_outCnt, &type metadata for Snapshot.DefaultDelegate);
      *(v26 + 5) = &type metadata for Snapshot.DefaultDelegate;
      *(v26 + 6) = &off_1F240DAF0;
      *(v26 + 7) = 0;
      v27 = OBJC_IVAR____TtCV4Dyld8Snapshot14DecoderContext_sharedCachePath;
      v28 = sub_1AE4EAC50();
      (*(*(v28 - 8) + 56))(&v26[v27], 1, 1, v28);
      *&v26[OBJC_IVAR____TtCV4Dyld8Snapshot14DecoderContext_sharedCache] = 0;
      v26[OBJC_IVAR____TtCV4Dyld8Snapshot14DecoderContext_privateSharedRegion] = 0;
      *&v26[OBJC_IVAR____TtCV4Dyld8Snapshot14DecoderContext_sharedCacheSlide] = 0;
      *&v26[OBJC_IVAR____TtCV4Dyld8Snapshot14DecoderContext_pointerSize] = 8;
      __swift_destroy_boxed_opaque_existential_1(task_info_outCnt);
      __swift_destroy_boxed_opaque_existential_1(task_info_out);
      type metadata accessor for Snapshot.Impl();
      v29 = swift_allocObject();

      sub_1AE4A423C(v22, v24, v26, &v51);
      if (!v3)
      {
        goto LABEL_46;
      }

      v3 = 0;
      v30 = v51;
      v31 = v52;
      v29 = v53;
      v32 = v54;
      v33 = v55;
      __swift_destroy_boxed_opaque_existential_1(&v63);

      v34 = v33 >> 6;
      if (v33 >> 6 <= 1)
      {
        v8 = MEMORY[0x1E69E9A60];
        if (v34)
        {
          goto LABEL_31;
        }
      }

      else
      {
        v8 = MEMORY[0x1E69E9A60];
        if (v34 == 2)
        {
          sub_1AE4DFB40(v30, v31, v29, v32, v33);
        }

        else if (v33 != 192 || v30 != 1 || v29 | v31 | v32)
        {
LABEL_31:
          v63 = v30;
          v64 = v31;
          v65 = v29;
          v66 = v32;
          LOBYTE(v67) = v33;
          sub_1AE4C9430();
          swift_willThrowTypedImpl();
          goto LABEL_44;
        }
      }
    }

    if (!--v7)
    {
      v30 = 3;
      goto LABEL_42;
    }
  }

  v49 = 0;
  v50 = 0;
  if (!scavengeProcess(a1, &v50, &v49))
  {
LABEL_40:
    v30 = 4;
LABEL_42:
    v63 = v30;
    v64 = 0;
    v65 = 0;
    v66 = 0;
    LOBYTE(v33) = -64;
    LOBYTE(v67) = -64;
    sub_1AE4C9430();
    swift_willThrowTypedImpl();
LABEL_43:
    v31 = 0;
    v29 = 0;
    v32 = 0;
    goto LABEL_44;
  }

  result = v50;
  if (v50)
  {
    if ((v49 & 0x8000000000000000) != 0)
    {
      goto LABEL_50;
    }

    v36 = sub_1AE4E59B8(v50, v49);
    v38 = v37;
    free(v50);
    v66 = &type metadata for Snapshot.DefaultDelegate;
    v67 = &off_1F240DAF0;
    sub_1AE4A6E5C(&v63, task_info_out);
    __swift_mutable_project_boxed_opaque_existential_1(task_info_out, v62);
    v57 = &type metadata for Snapshot.DefaultDelegate;
    v58 = &off_1F240DAF0;
    type metadata accessor for Snapshot.DecoderContext(0);
    v39 = swift_allocObject();
    __swift_mutable_project_boxed_opaque_existential_1(task_info_outCnt, &type metadata for Snapshot.DefaultDelegate);
    *(v39 + 5) = &type metadata for Snapshot.DefaultDelegate;
    *(v39 + 6) = &off_1F240DAF0;
    *(v39 + 7) = 0;
    v40 = OBJC_IVAR____TtCV4Dyld8Snapshot14DecoderContext_sharedCachePath;
    v41 = sub_1AE4EAC50();
    (*(*(v41 - 8) + 56))(&v39[v40], 1, 1, v41);
    *&v39[OBJC_IVAR____TtCV4Dyld8Snapshot14DecoderContext_sharedCache] = 0;
    v39[OBJC_IVAR____TtCV4Dyld8Snapshot14DecoderContext_privateSharedRegion] = 0;
    *&v39[OBJC_IVAR____TtCV4Dyld8Snapshot14DecoderContext_sharedCacheSlide] = 0;
    *&v39[OBJC_IVAR____TtCV4Dyld8Snapshot14DecoderContext_pointerSize] = 8;
    __swift_destroy_boxed_opaque_existential_1(task_info_outCnt);
    __swift_destroy_boxed_opaque_existential_1(task_info_out);
    type metadata accessor for Snapshot.Impl();
    v29 = swift_allocObject();

    sub_1AE4A423C(v36, v38, v39, &v51);
    if (!v3)
    {
LABEL_46:
      __swift_destroy_boxed_opaque_existential_1(&v63);
      return v29;
    }

    v30 = v51;
    v31 = v52;
    v29 = v53;
    v32 = v54;
    LOBYTE(v33) = v55;
    __swift_destroy_boxed_opaque_existential_1(&v63);

LABEL_44:
    v42 = v43;
    *v43 = v30;
    v42[1] = v31;
    v42[2] = v29;
    v42[3] = v32;
    *(v42 + 32) = v33;
    return v29;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AE4A41E8(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

void *sub_1AE4A423C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t *a4)
{
  v152 = a4;
  v151 = *v4;
  *&v149 = sub_1AE4EAB10();
  *&v150 = *(v149 - 8);
  MEMORY[0x1EEE9AC00](v149);
  v9 = &v137 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD4B8, "R3");
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v137 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD520, &qword_1AE4EDB98);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = (&v137 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v137 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = (&v137 - v20);
  v4[9] = a3;
  v157 = a3;

  sub_1AE4A6FD8(a1, a2);
  v153 = a1;
  v154 = a2;
  v22 = v155;
  v23 = sub_1AE4A702C(a1, a2, v175);
  v156 = v4;
  v155 = v22;
  if (!v22)
  {
    v145 = v21;
    v146 = v19;
    v148 = v12;
    v144 = v9;
    v32 = v150;
    v147 = v16;
    v4[2] = v23;
    v4[3] = v24;
    v33 = v4 + 2;
    v33[2] = v25;
    v33[3] = v26;
    swift_beginAccess();
    v34 = sub_1AE4AA0F0(0x2E737365636F7270uLL, 0xED00007473696C70, v175);
    v36 = v35;
    swift_endAccess();
    if (v36 >> 60 == 15)
    {
      sub_1AE4C9430();
      v28 = swift_allocError();
      *v37 = 2;
      *(v37 + 8) = 0;
      *(v37 + 16) = 0;
      *(v37 + 24) = 0;
      *(v37 + 32) = -64;
      swift_willThrow();
      v29 = 0;
      goto LABEL_6;
    }

    sub_1AE4AB600(v34, v36);
    v38 = sub_1AE4AB614(v34, v36);
    sub_1AE4ABE40(v34, v36);
    v39 = sub_1AE4AC2B4(v38);
    v41 = v40;
    v43 = v42;
    v143 = v34;

    v62 = v43;
    v63 = v156;
    v156[6] = v39;
    v63[7] = v41;
    v63[8] = v62;

    sub_1AE4AC9B8(v64, v41, v62, v158);

    v66 = v63[6];
    v65 = v63[7];
    v67 = v63[8];

    v68 = sub_1AE4AC6E0(0x7367616C66, 0xE500000000000000, 0, v66, v65, v67);
    if (v68)
    {
      v69 = sub_1AE4A6A00(v68);
      v70 = v32;

      v71 = v157;
    }

    else
    {

      v69 = 0;
      v71 = v157;
      v70 = v32;
    }

    v72 = v156;
    v156[10] = v69;
    v74 = v72[6];
    v73 = v72[7];
    v75 = v72[8];

    v76 = sub_1AE4AC6E0(828601188, 0xE400000000000000, 0, v74, v73, v75);
    if (!v76)
    {

      sub_1AE4ABE40(v143, v36);
      sub_1AE4A41E8(v153, v154);
LABEL_41:
      v55 = v156;
      *(v71 + OBJC_IVAR____TtCV4Dyld8Snapshot14DecoderContext_privateSharedRegion) = (v156[10] & 4) != 0;

      return v55;
    }

    v77 = sub_1AE4AC2B4(v76);
    v141 = v78;
    v142 = v79;

    type metadata accessor for SharedCache.ProcessRecord();
    v16 = swift_allocObject();
    v80 = v141;
    v16[2] = v77;
    v16[3] = v80;
    v16[4] = v142;
    *(v71 + 56) = v16;
    v139 = v77;

    v81 = sub_1AE4AC6E0(1701603686, 0xE400000000000000, 0, v16[2], v16[3], v16[4]);
    if (v81)
    {
      v82 = sub_1AE4AF28C(v81);
      v84 = v83;

      v85 = v145;
      MEMORY[0x1B27010F0](v82, v84);
      v86 = sub_1AE4EAC50();
      v87 = *(v86 - 8);
      v88 = *(v87 + 56);
      v142 = v86;
      v141 = v88;
      v140 = v87 + 56;
      v88(v85, 0, 1);
      v89 = OBJC_IVAR____TtCV4Dyld8Snapshot14DecoderContext_sharedCachePath;
      swift_beginAccess();
      v137 = v89;
      sub_1AE4B06C8(v85, v71 + v89, &qword_1EB5DD520, &qword_1AE4EDB98);
      swift_endAccess();
      v90 = sub_1AE4AC6E0(1684632949, 0xE400000000000000, 0, v16[2], v16[3], v16[4]);
      if (v90)
      {
        v92 = sub_1AE4AEC7C(v90, v91);
        v94 = v93;

        v95 = v148;
        sub_1AE4B0730(v92, v94);
        (*(v70 + 56))(v95, 0, 1, v149);
        v96 = sub_1AE4AC6E0(1701603686, 0xE400000000000000, 0, v16[2], v16[3], v16[4]);
        if (v96)
        {
          v97 = sub_1AE4AF28C(v96);
          v99 = v98;

          v100 = v97;
          v101 = v146;
          MEMORY[0x1B27010F0](v100, v99);
          v141(v101, 0, 1, v142);
          if (qword_1EB5DD140 != -1)
          {
            swift_once();
          }

          swift_beginAccess();
          v102 = qword_1EB5DD188;

          os_unfair_lock_lock(v102 + 4);
          v103 = v148;
          sub_1AE4B0920(v148, &qword_1EB5DD170, v101, 0, &v164);
          v145 = v16;
          v115 = v164;
          v116 = v165;
          v138 = v166;
          os_unfair_lock_unlock(v102 + 4);
          swift_endAccess();

          sub_1AE4B4558(v101, &qword_1EB5DD520, &qword_1AE4EDB98);
          sub_1AE4B4558(v103, &qword_1EB5DD4B8, "R3");
          if (v115)
          {
            v148 = v116;
            v16 = v36;
            v104 = v147;
            goto LABEL_36;
          }

          v104 = v147;
          v16 = v36;
          v105 = sub_1AE4AC6E0(1684632949, 0xE400000000000000, 0, v145[2], v145[3], v145[4]);
          v107 = v149;
          if (v105)
          {
            v108 = sub_1AE4AEC7C(v105, v106);
            v110 = v109;

            v111 = v144;
            sub_1AE4B0730(v108, v110);
            v112 = sub_1AE4D1B1C();
            v148 = v113;
            v138 = v114;
            (*(v150 + 8))(v111, v107);
            if (!v112)
            {
              sub_1AE4ABE40(v143, v16);
              sub_1AE4A41E8(v153, v154);

LABEL_40:

              goto LABEL_41;
            }

LABEL_36:
            v117 = sub_1AE4AC6E0(1701603686, 0xE400000000000000, 0, v145[2], v145[3], v145[4]);
            if (v117)
            {
              v118 = sub_1AE4AF28C(v117);
              v120 = v119;

              MEMORY[0x1B27010F0](v118, v120);
              v141(v104, 0, 1, v142);
              v121 = v137;
              swift_beginAccess();
              sub_1AE4B06C8(v104, v71 + v121, &qword_1EB5DD520, &qword_1AE4EDB98);
              swift_endAccess();
              type metadata accessor for SharedCache.Impl();
              swift_allocObject();

              v123 = sub_1AE4B45DC(v122, v148, v138, v71);
              v124 = v71;

              v125 = sub_1AE4AC6E0(1919181921, 0xE400000000000000, 0, v145[2], v145[3], v145[4]);
              if (v125)
              {
                v126 = sub_1AE4A6A00(v125);

                v127 = sub_1AE4AC6E0(1919181168, 0xE400000000000000, 0, v123[2], v123[3], v123[4]);
                if (v127)
                {
                  v128 = sub_1AE4A6A00(v127);

                  sub_1AE4ABE40(v143, v16);
                  sub_1AE4A41E8(v153, v154);

                  v129 = v126 - v128;
                  v71 = v124;
                  *(v124 + OBJC_IVAR____TtCV4Dyld8Snapshot14DecoderContext_sharedCacheSlide) = v129;
                  *(v124 + OBJC_IVAR____TtCV4Dyld8Snapshot14DecoderContext_sharedCache) = v123;
                  goto LABEL_40;
                }

LABEL_48:
                __break(1u);
                goto LABEL_49;
              }

LABEL_47:
              __break(1u);
              goto LABEL_48;
            }

LABEL_46:
            __break(1u);
            goto LABEL_47;
          }

LABEL_45:
          __break(1u);
          goto LABEL_46;
        }

LABEL_44:
        __break(1u);
        goto LABEL_45;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_44;
  }

  v27 = v176;
  sub_1AE4C9530();
  v150 = v175[0];
  v149 = v175[1];
  v28 = swift_allocError();
  v29 = 0;
  v30 = v149;
  *v31 = v150;
  *(v31 + 16) = v30;
  *(v31 + 32) = v27;
LABEL_6:
  v177 = v28;
  v44 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD290, &qword_1AE4EDB70);
  if (swift_dynamicCast())
  {
    sub_1AE4DFB64(v170, v171, v172, v173, v174);
    v169 = v28;
    v45 = v28;
    swift_dynamicCast();
    v46 = v164;
    v47 = v165;
    v49 = v166;
    v48 = v167;
    v50 = v168 | 0x80;
    v159 = v164;
    v160 = v165;
    v161 = v166;
    v162 = v167;
    v163 = v168 | 0x80;
    sub_1AE4C9430();
LABEL_10:
    swift_willThrowTypedImpl();

    sub_1AE4A41E8(v153, v154);

    goto LABEL_13;
  }

  v177 = v28;
  v51 = v28;
  if (swift_dynamicCast())
  {
    sub_1AE4DB684(v164, v165, v166, v167);
    v169 = v28;
    v52 = v28;
    swift_dynamicCast();
    v46 = v159;
    v47 = v160;
    v49 = v161;
    v48 = v162;
    v170 = v159;
    v171 = v160;
    v172 = v161;
    v173 = v162;
    v50 = 64;
    v174 = 64;
    sub_1AE4C9430();
    goto LABEL_10;
  }

  LODWORD(v150) = 0;

  v177 = v28;
  v53 = v28;
  if (swift_dynamicCast())
  {
    sub_1AE4DFB40(v170, v171, v172, v173, v174);
    v169 = v28;
    v54 = v28;
    swift_dynamicCast();
    v46 = v164;
    v47 = v165;
    v49 = v166;
    v48 = v167;
    v50 = v168;
    v159 = v164;
    v160 = v165;
    v161 = v166;
    v162 = v167;
    v163 = v168;
    sub_1AE4C9430();
    swift_willThrowTypedImpl();

    sub_1AE4A41E8(v153, v154);

    v29 = v150;
LABEL_13:
    v55 = v156;
    if (v155)
    {
      if (!v29)
      {
LABEL_16:

        swift_deallocPartialClassInstance();
        v56 = v152;
        *v152 = v46;
        v56[1] = v47;
        v56[2] = v49;
        v56[3] = v48;
        *(v56 + 32) = v50;
        return v55;
      }
    }

    else
    {
      v58 = v156;
      v59 = v156[4];
      LODWORD(v150) = v29;
      v60 = v156[5];

      v55 = v58;

      v61 = v60;
      LODWORD(v60) = v150;
      sub_1AE4A41E8(v59, v61);
      if (!v60)
      {
        goto LABEL_16;
      }
    }

    goto LABEL_16;
  }

LABEL_49:

  sub_1AE4EB140();
  __break(1u);
  v131 = v130;
  v133 = v132;
  v135 = v134;
  sub_1AE4C78AC();
  swift_allocError();
  *v136 = v16;
  *(v136 + 8) = v131;
  *(v136 + 16) = v133;
  *(v136 + 24) = v135;
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

void sub_1AE4A5694(unint64_t result)
{
  v2 = *v1;
  v3 = v1[2];
  v4 = v1[3];
  v5 = v4 - v3;
  if (!v3)
  {
    v5 = 0;
  }

  if (v2 < 0 || v5 < v2)
  {
    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = v1[1];
  if (v6 < 0 || v5 < v6)
  {
    goto LABEL_13;
  }

  if (v6 > v2)
  {
    if (v3)
    {
      *v1 = sub_1AE4A7CA4(1uLL, v2, v6, v3, v4);
      v1[1] = v7;
      v1[2] = v8;
      v1[3] = v9;
      return;
    }

    goto LABEL_14;
  }

  if (v3)
  {
    sub_1AE4C78AC();
    swift_willThrowTypedImpl();
    return;
  }

LABEL_15:
  __break(1u);
}

uint64_t sub_1AE4A5774@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X7>, void *a8@<X8>, char *a9, unsigned __int8 a10, uint64_t *a11)
{
  v132 = a4;
  v146 = *MEMORY[0x1E69E9840];
  if (a6 < 0)
  {
    goto LABEL_137;
  }

  v13 = a5;
  v119 = a8;
  v17 = *(a5 + 33);

  if (!a6)
  {
LABEL_124:

    v94 = v119;
    *v119 = 0;
    v94[1] = 0;
    return result;
  }

  v18 = 0;
  v117 = a11;
  v126 = a10;
  v19 = a9;
  v20 = &v132[-a3];
  v122 = &v132[-a3];
  if (!a3)
  {
    v20 = 0;
  }

  v21 = a1 < 0 || v20 < a1;
  v22 = v21;
  v24 = a2 < 0 || v20 < a2;
  v129 = v24;
  v130 = v22;
  v25 = qword_1AE4ED448[v17];
  v127 = v17;
  v128 = a2 - a1;
  v120 = a9;
  v123 = a1;
  v124 = a2;
  v121 = a7;
  v118 = a3;
  v125 = a6;
  v133 = v25;
  while (1)
  {
    v26 = v25 * v18;
    if ((v25 * v18) >> 64 != (v25 * v18) >> 63)
    {
      __break(1u);
LABEL_132:
      __break(1u);
LABEL_133:
      __break(1u);
LABEL_134:
      __break(1u);
LABEL_135:
      __break(1u);
LABEL_136:
      __break(1u);
LABEL_137:
      __break(1u);
LABEL_138:
      __break(1u);
LABEL_139:
      __break(1u);
LABEL_140:
      __break(1u);
LABEL_141:
      __break(1u);
LABEL_142:
      __break(1u);
LABEL_143:
      __break(1u);
LABEL_144:
      __break(1u);
LABEL_145:
      __break(1u);
LABEL_146:
      __break(1u);
LABEL_147:
      __break(1u);
LABEL_148:
      __break(1u);
LABEL_149:
      __break(1u);
      goto LABEL_150;
    }

    if (__OFADD__(v26, v25))
    {
      goto LABEL_132;
    }

    if (v130)
    {
      goto LABEL_133;
    }

    if (v129)
    {
      goto LABEL_134;
    }

    if (v128 < v26 + v25)
    {
      break;
    }

    *&v143 = a1;
    *(&v143 + 1) = a2;
    v144 = a3;
    v145 = v132;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD298, &qword_1AE4ECE10);
    sub_1AE4EB230();
    v28 = v140 + v26;
    if (__OFADD__(v140, v26))
    {
      goto LABEL_135;
    }

    v29 = v28 + v133;
    if (__OFADD__(v28, v133))
    {
      goto LABEL_136;
    }

    if (a3)
    {
      v27 = v122;
      v21 = v122 < v29;
      LOBYTE(v29) = v127;
      if (v21)
      {
        break;
      }
    }

    else
    {
      v21 = v29 < 1;
      LOBYTE(v29) = v127;
      if (!v21)
      {
        break;
      }
    }

    v29 = v29;
    if (v29 > 1u)
    {
      if (v29 == 2)
      {
        if (!a3)
        {
          goto LABEL_153;
        }

        v30 = bswap32(*(a3 + v28));
        if (v126)
        {
          goto LABEL_54;
        }
      }

      else
      {
        if (!a3)
        {
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
          *(&v140 + 6) = 0;
          *&v140 = 0;
          if (a3 > 0)
          {
            goto LABEL_176;
          }

          if (a3 < 0)
          {
            __break(1u);
LABEL_159:
            v116 = v13;
            if (v19)
            {
              goto LABEL_177;
            }

            __break(1u);
LABEL_161:
            if (v19)
            {
              goto LABEL_177;
            }

            __break(1u);
LABEL_163:
            __break(1u);
LABEL_164:
            __break(1u);
LABEL_165:
            __break(1u);
LABEL_166:
            __break(1u);
LABEL_167:
            __break(1u);
LABEL_168:
            v116 = v13;
            v97 = v27 + a3;
            *&v140 = v27 + a3;
            *(&v140 + 1) = v19;
            v141 = 1;
            v142 = 64;
            sub_1AE4C78AC();
            swift_willThrowTypedImpl();
            v98 = swift_allocError();
            *v99 = v97;
            *(v99 + 8) = v19;
            *(v99 + 16) = 1;
            *(v99 + 24) = 64;
          }

          else
          {
            *&v143 = &v140;
            *(&v143 + 1) = &v140;
            v144 = 1;
            LOBYTE(v145) = 64;
            sub_1AE4C78AC();
            swift_willThrowTypedImpl();
            v98 = swift_allocError();
            *v111 = &v140;
            *(v111 + 8) = &v140;
            *(v111 + 16) = 1;
            *(v111 + 24) = 64;
          }

          goto LABEL_175;
        }

        v30 = bswap64(*(a3 + v28));
        if (v126)
        {
LABEL_54:

          if (v30 == v19)
          {
            goto LABEL_120;
          }

          goto LABEL_110;
        }
      }
    }

    else if (v29)
    {
      if (!a3)
      {
        goto LABEL_154;
      }

      v30 = bswap32(*(a3 + v28)) >> 16;
      if (v126)
      {
        goto LABEL_54;
      }
    }

    else
    {
      if (!a3)
      {
        goto LABEL_155;
      }

      v30 = *(a3 + v28);
      if (v126)
      {
        goto LABEL_54;
      }
    }

    v31 = v13[8];
    swift_retain_n();
    sub_1AE4A63DC(a7, v19, 0);
    v32 = v31(v13, v30);
    a3 = v32;
    v33 = v13[2];
    v34 = v13[3];
    v29 = v34 >> 62;
    if ((v34 >> 62) > 1)
    {
      v27 = &v147;
      v116 = v13;
      if (v29 != 2)
      {
        goto LABEL_156;
      }

      v49 = *(v33 + 16);
      v13 = *(v33 + 24);
      v50 = sub_1AE4EA990();
      if (v50)
      {
        v51 = v50;
        v52 = sub_1AE4EA9B0();
        if (__OFSUB__(v49, v52))
        {
          goto LABEL_148;
        }

        v19 = (v49 - v52 + v51);
        v53 = __OFSUB__(v13, v49);
        v54 = v13 - v49;
        if (v53)
        {
          goto LABEL_140;
        }
      }

      else
      {
        v19 = 0;
        v53 = __OFSUB__(v13, v49);
        v54 = v13 - v49;
        if (v53)
        {
          goto LABEL_140;
        }
      }

      v61 = sub_1AE4EA9A0();
      if (v61 >= v54)
      {
        v62 = v54;
      }

      else
      {
        v62 = v61;
      }

      v63 = &v19[v62];
      if (v19)
      {
        v64 = v63;
      }

      else
      {
        v64 = 0;
      }

      v29 = v64 - v19;
      if (v19)
      {
        v27 = v29;
      }

      else
      {
        v27 = 0;
      }

      if (v27 < a3)
      {
        goto LABEL_142;
      }

      if (a3 < 0)
      {
        goto LABEL_144;
      }

      if (v27 <= a3)
      {
        goto LABEL_161;
      }

      v13 = v116;
      v27 = &v148;
      a7 = v121;
      if (!v19)
      {
        goto LABEL_163;
      }

      if (v29 <= a3)
      {
        goto LABEL_147;
      }

      v65 = v19[a3];
      *&v143 = a3 + 1;
      *(&v143 + 1) = v29;
      v144 = v19;
      v145 = v63;
      v66 = v131;
      sub_1AE4A65CC(v65);
      v71 = v67;
      if (v66)
      {
        goto LABEL_171;
      }

      if (v65 >> 4 > 0xD || ((1 << (v65 >> 4)) & 0x2472) == 0)
      {
        goto LABEL_174;
      }

      v42 = 0;
      v72 = v144;
      if (v144)
      {
        goto LABEL_108;
      }

      result = MEMORY[0x1EEE9AC00](v67);
      a3 = v112;
      v113 = 0;
      v114 = 0;
      v115 = v71;
      v19 = v120;
      if ((v120 & 0x1000000000000000) == 0)
      {
        if ((v120 & 0x2000000000000000) != 0)
        {
          goto LABEL_165;
        }

        if ((a7 & 0x1000000000000000) != 0)
        {
          goto LABEL_129;
        }
      }
    }

    else if (v29)
    {
      v55 = v33;
      v56 = v33 >> 32;
      v57 = v56 - v55;
      if (v56 < v55)
      {
        goto LABEL_138;
      }

      v58 = sub_1AE4EA990();
      if (v58)
      {
        v59 = v58;
        v60 = sub_1AE4EA9B0();
        if (__OFSUB__(v55, v60))
        {
          goto LABEL_149;
        }

        v19 = (v55 - v60 + v59);
      }

      else
      {
        v19 = 0;
      }

      v74 = sub_1AE4EA9A0();
      if (v74 >= v57)
      {
        v75 = v57;
      }

      else
      {
        v75 = v74;
      }

      v76 = &v19[v75];
      if (v19)
      {
        v77 = v76;
      }

      else
      {
        v77 = 0;
      }

      v29 = v77 - v19;
      if (v19)
      {
        v27 = v29;
      }

      else
      {
        v27 = 0;
      }

      if (v27 < a3)
      {
        goto LABEL_143;
      }

      if (a3 < 0)
      {
        goto LABEL_145;
      }

      if (v27 <= a3)
      {
        goto LABEL_159;
      }

      v27 = &v148;
      a7 = v121;
      if (!v19)
      {
        goto LABEL_164;
      }

      if (v29 <= a3)
      {
        goto LABEL_146;
      }

      v78 = v19[a3];
      *&v143 = a3 + 1;
      *(&v143 + 1) = v29;
      v144 = v19;
      v145 = v76;
      v79 = v131;
      sub_1AE4A65CC(v78);
      v71 = v80;
      if (v79)
      {
        v116 = v13;
LABEL_171:
        v100 = v68;
        v101 = v69;
        v102 = v70;
        sub_1AE4C78AC();
        v98 = swift_allocError();
        *v103 = v71;
LABEL_172:
        *(v103 + 8) = v100;
        *(v103 + 16) = v101;
        *(v103 + 24) = v102;
        while (1)
        {
LABEL_175:
          v134 = v98;
          v105 = v98;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD290, &qword_1AE4EDB70);
          swift_dynamicCast();
          v19 = *(&v143 + 1);
          v106 = v143;
          a3 = v144;
          v107 = v145;
          v140 = v143;
          v141 = v144;
          v142 = v145;
          sub_1AE4C78AC();
          swift_willThrowTypedImpl();

          sub_1AE4A67B4(v121, v120, 0);

          swift_allocError();
          *v108 = __PAIR128__(v19, v106);
          *(v108 + 16) = a3;
          *(v108 + 24) = v107;
          swift_unexpectedError();
          __break(1u);
LABEL_176:
          __break(1u);
LABEL_177:
          v109 = &v19[v29];
          *&v140 = &v19[a3];
          *(&v140 + 1) = &v19[v29];
          v141 = 1;
          v142 = 64;
          sub_1AE4C78AC();
          swift_willThrowTypedImpl();
          v98 = swift_allocError();
          *v110 = &v19[a3];
          *(v110 + 8) = v109;
          *(v110 + 16) = 1;
          *(v110 + 24) = 64;
        }
      }

      if (v78 >> 4 > 0xD || ((1 << (v78 >> 4)) & 0x2472) == 0)
      {
LABEL_173:
        v116 = v13;
LABEL_174:
        sub_1AE4C78AC();
        v98 = swift_allocError();
        *(v104 + 8) = 0;
        *(v104 + 16) = 0;
        *v104 = 0;
        *(v104 + 24) = 0x80;
        swift_willThrow();
        goto LABEL_175;
      }

      v42 = 0;
      v72 = v144;
      if (v144)
      {
LABEL_108:
        v81 = v143;
        v82 = *(&v143 + 1) - v143;
        v83 = v120;
        sub_1AE4A63DC(a7, v120, 0);
        v84 = v71;
        v19 = v83;
        v46 = sub_1AE4A66EC(a7, v83, (v81 + v72), v82, v84);
        v131 = 0;
        sub_1AE4A67B4(a7, v83, 0);

        v47 = a7;
        v48 = v83;
LABEL_109:
        sub_1AE4A67B4(v47, v48, 0);

        a3 = v118;
        if (v46)
        {
          goto LABEL_120;
        }

        goto LABEL_110;
      }

      result = MEMORY[0x1EEE9AC00](v80);
      a3 = v112;
      v113 = 0;
      v114 = 0;
      v115 = v71;
      v19 = v120;
      if ((v120 & 0x1000000000000000) == 0)
      {
        if ((v120 & 0x2000000000000000) != 0)
        {
          goto LABEL_167;
        }

        if ((a7 & 0x1000000000000000) != 0)
        {
          goto LABEL_128;
        }
      }
    }

    else
    {
      v134 = v13[2];
      v135 = v34;
      v136 = BYTE2(v34);
      v137 = BYTE3(v34);
      v138 = BYTE4(v34);
      v139 = BYTE5(v34);
      if (BYTE6(v34) < v32)
      {
        goto LABEL_139;
      }

      if (v32 < 0)
      {
        goto LABEL_141;
      }

      v27 = &v134;
      v19 = &v134 + BYTE6(v34);
      if (BYTE6(v34) <= v32)
      {
        goto LABEL_168;
      }

      v35 = *(&v134 + v32);
      *&v143 = v32 + 1;
      *(&v143 + 1) = BYTE6(v34);
      v144 = &v134;
      v145 = &v134 + BYTE6(v34);
      v36 = v131;
      sub_1AE4A65CC(v35);
      v41 = v37;
      a7 = v121;
      if (v36)
      {
        v116 = v13;
        v100 = v38;
        v101 = v39;
        v102 = v40;
        sub_1AE4C78AC();
        v98 = swift_allocError();
        *v103 = v41;
        goto LABEL_172;
      }

      if (v35 >> 4 > 0xD || ((1 << (v35 >> 4)) & 0x2472) == 0)
      {
        goto LABEL_173;
      }

      v42 = 0;
      v43 = v144;
      if (v144)
      {
        v44 = v143;
        v45 = *(&v143 + 1) - v143;
        v19 = v120;
        sub_1AE4A63DC(v121, v120, 0);
        v46 = sub_1AE4A66EC(a7, v19, (v44 + v43), v45, v41);
        v131 = 0;
        sub_1AE4A67B4(a7, v19, 0);

        v47 = a7;
        v48 = v19;
        goto LABEL_109;
      }

      result = MEMORY[0x1EEE9AC00](v37);
      a3 = v112;
      v113 = 0;
      v114 = 0;
      v115 = v41;
      v19 = v120;
      if ((v120 & 0x1000000000000000) == 0)
      {
        if ((v120 & 0x2000000000000000) != 0)
        {
          goto LABEL_166;
        }

        if ((a7 & 0x1000000000000000) != 0)
        {
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          v96 = v119;
          *v119 = v13;
          v96[1] = v42;
          return result;
        }
      }
    }

    sub_1AE4A63DC(a7, v120, 0);
    sub_1AE4EB090();
    v131 = 0;
    sub_1AE4A67B4(a7, v19, 0);

    sub_1AE4A67B4(a7, v19, 0);
    v85 = v140;

    a3 = v118;
    if (v85)
    {
LABEL_120:
      v86 = v18 + v125;
      if (!__OFADD__(v18, v125))
      {
        v87 = v131;
        if ((v133 * v86) >> 64 == (v133 * v86) >> 63)
        {
          v42 = sub_1AE4A67C4(v127, v133 * v86, v123, v124, a3, v132);
          v89 = v88;
          v91 = v90;
          v93 = v92;

          if (v87)
          {

            goto LABEL_126;
          }

          goto LABEL_130;
        }

LABEL_151:
        __break(1u);
      }

LABEL_150:
      __break(1u);
      goto LABEL_151;
    }

LABEL_110:
    ++v18;

    a2 = v124;
    a1 = v123;
    v25 = v133;
    if (v125 == v18)
    {
      goto LABEL_124;
    }
  }

  v42 = 1;
  v144 = 0;
  v143 = 1uLL;
  v93 = 0x80;
  LOBYTE(v145) = 0x80;
  sub_1AE4C78AC();
  result = swift_willThrowTypedImpl();
  v89 = 0;
  v91 = 0;
LABEL_126:
  v95 = v117;
  *v117 = v42;
  v95[1] = v89;
  v95[2] = v91;
  *(v95 + 24) = v93;
  return result;
}

uint64_t sub_1AE4A63DC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1AE4A63F4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v20[2] = *MEMORY[0x1E69E9840];
  v4 = qword_1AE4ED448[*(a1 + 32)];
  v5 = a2 * v4;
  if ((a2 * v4) >> 64 != (a2 * v4) >> 63)
  {
    __break(1u);
    goto LABEL_20;
  }

  v6 = *(a1 + 56);
  v7 = v5 + v6;
  if (__OFADD__(v5, v6))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v8 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v8 != 2)
    {
      memset(v20, 0, 14);
      goto LABEL_17;
    }

    v9 = *(a3 + 16);
    v10 = sub_1AE4EA990();
    if (v10)
    {
      v11 = v10;
      v12 = sub_1AE4EA9B0();
      if (__OFSUB__(v9, v12))
      {
LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
      }

      v13 = v9 - v12 + v11;
      sub_1AE4EA9A0();
      if (v13)
      {
LABEL_15:
        v19 = *(v13 + v7);
        return bswap32(v19);
      }
    }

    else
    {
      sub_1AE4EA9A0();
    }

    __break(1u);
    goto LABEL_26;
  }

  if (!v8)
  {
    v20[0] = a3;
    LOWORD(v20[1]) = a4;
    BYTE2(v20[1]) = BYTE2(a4);
    BYTE3(v20[1]) = BYTE3(a4);
    BYTE4(v20[1]) = BYTE4(a4);
    BYTE5(v20[1]) = BYTE5(a4);
LABEL_17:
    v19 = *(v20 + v7);
    return bswap32(v19);
  }

  v14 = a3;
  if (a3 > a3 >> 32)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v15 = sub_1AE4EA990();
  if (!v15)
  {
LABEL_26:
    result = sub_1AE4EA9A0();
    __break(1u);
    goto LABEL_27;
  }

  v16 = v15;
  v17 = sub_1AE4EA9B0();
  if (__OFSUB__(v14, v17))
  {
    goto LABEL_23;
  }

  v13 = v14 - v17 + v16;
  result = sub_1AE4EA9A0();
  if (v13)
  {
    goto LABEL_15;
  }

LABEL_27:
  __break(1u);
  return result;
}

void sub_1AE4A65CC(char a1)
{
  v2 = a1 & 0xF;
  if (v2 == 15)
  {
    sub_1AE4A5694(v2);
    if (!v1)
    {
      v4 = v3;
      if (sub_1AE4AC038(v3) == 6)
      {
        sub_1AE4C78AC();
        swift_willThrowTypedImpl();
      }

      else
      {
        if ((v4 & 8) != 0)
        {
          v5 = 0;
        }

        else
        {
          v5 = (1 << (v4 & 7));
        }

        v6 = sub_1AE4AC220(v5);
        if (v6 > 1u)
        {
          if (v6 == 2)
          {
            sub_1AE4AD394(1);
          }

          else
          {
            sub_1AE4AC124(1uLL);
          }
        }

        else
        {
          sub_1AE4A5694(v6);
        }
      }
    }
  }
}

BOOL sub_1AE4A66EC(_BOOL8 result, uint64_t a2, char *__s2, uint64_t a4, size_t __n)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_10;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      if (__s2)
      {
        v6 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
        return strncmp(v6, __s2, __n) == 0;
      }

      goto LABEL_13;
    }

LABEL_10:
    sub_1AE4EB090();
    if (!v5)
    {
      return v10;
    }

    return v7;
  }

  *__s1 = result;
  v9 = a2 & 0xFFFFFFFFFFFFFFLL;
  if (__s2)
  {
    v6 = __s1;
    return strncmp(v6, __s2, __n) == 0;
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_1AE4A67B4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1AE4A67C4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = result;
  v7 = qword_1AE4ED448[result];
  v8 = __OFADD__(a2, v7);
  v9 = a2 + v7;
  if (v8)
  {
    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v12 = a6 - a5;
  if (!a5)
  {
    v12 = 0;
  }

  if (a3 < 0 || v12 < a3)
  {
    goto LABEL_13;
  }

  if (a4 < 0 || v12 < a4)
  {
    goto LABEL_14;
  }

  if (a4 - a3 < v9)
  {
    sub_1AE4C78AC();
    swift_willThrowTypedImpl();
    return 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD298, &qword_1AE4ECE10);
  result = sub_1AE4EB230();
  if (!__OFADD__(v14, a2))
  {
    return sub_1AE4A6900(v6, v14 + a2, a5, a6);
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1AE4A6900(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = qword_1AE4ED448[result];
  v5 = __OFADD__(a2, v4);
  v6 = a2 + v4;
  if (v5)
  {
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (a3)
  {
    if (a4 - a3 >= v6)
    {
      goto LABEL_4;
    }

LABEL_9:
    v7 = 1;
    sub_1AE4C78AC();
    swift_willThrowTypedImpl();
    return v7;
  }

  if (v6 > 0)
  {
    goto LABEL_9;
  }

LABEL_4:
  if (result <= 1u)
  {
    if (result)
    {
      if (a3)
      {
        return bswap32(*(a3 + a2)) >> 16;
      }

      goto LABEL_21;
    }

    if (a3)
    {
      return *(a3 + a2);
    }

    goto LABEL_19;
  }

  if (result == 2)
  {
    if (a3)
    {
      return bswap32(*(a3 + a2));
    }

    goto LABEL_20;
  }

  if (a3)
  {
    return bswap64(*(a3 + a2));
  }

LABEL_22:
  __break(1u);
  return result;
}

unint64_t sub_1AE4A6A00(uint64_t a1)
{
  v52 = *MEMORY[0x1E69E9840];
  v3 = (*(a1 + 64))();
  v4 = v3;
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v7 != 2)
    {
      *(&v46 + 6) = 0;
      *&v46 = 0;
      if (v3 <= 0)
      {
        v49 = v3;
        v50 = &v46;
        v51 = &v46;
        goto LABEL_36;
      }

      goto LABEL_45;
    }

    v8 = *(v5 + 16);
    v9 = *(v5 + 24);
    v10 = sub_1AE4EA990();
    if (v10)
    {
      v11 = sub_1AE4EA9B0();
      if (__OFSUB__(v8, v11))
      {
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (v12)
    {
      goto LABEL_46;
    }

    v14 = sub_1AE4EA9A0();
    if (v14 >= v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = v14;
    }

    if (v10)
    {
      v5 = v15;
    }

    else
    {
      v5 = 0;
    }

    if (v5 >= v4)
    {
      goto LABEL_29;
    }

    __break(1u);
LABEL_18:
    v16 = v5;
    v17 = v5 >> 32;
    v18 = v17 - v16;
    if (v17 < v16)
    {
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    v10 = sub_1AE4EA990();
    if (v10)
    {
      v19 = sub_1AE4EA9B0();
      if (__OFSUB__(v16, v19))
      {
        goto LABEL_49;
      }

      v10 += v16 - v19;
    }

    v14 = sub_1AE4EA9A0();
    if (v14 >= v18)
    {
      v15 = v18;
    }

    else
    {
      v15 = v14;
    }

    if (v10)
    {
      v5 = v15;
    }

    else
    {
      v5 = 0;
    }

    if (v5 < v4)
    {
      goto LABEL_47;
    }

LABEL_29:
    v20 = (v15 + v10);
    if (!v10)
    {
      v20 = 0;
    }

    *&v49 = v4;
    *(&v49 + 1) = v5;
    v50 = v10;
    v51 = v20;
    sub_1AE4A5694(v14);
    v25 = v21;
    if (v1)
    {
      goto LABEL_37;
    }

    sub_1AE4A65CC(v21);
    v27 = v26;
    v28 = sub_1AE4AC038(v25);
    if (v28 == 6)
    {
      goto LABEL_39;
    }

    sub_1AE4AD198(v28, v27, v49, *(&v49 + 1), &v45, &v46);
    return v46;
  }

  if (v7)
  {
    goto LABEL_18;
  }

  *&v46 = *(a1 + 16);
  WORD4(v46) = v6;
  BYTE10(v46) = BYTE2(v6);
  BYTE11(v46) = BYTE3(v6);
  BYTE12(v46) = BYTE4(v6);
  BYTE13(v46) = BYTE5(v6);
  if (BYTE6(v6) < v3)
  {
    __break(1u);
    goto LABEL_44;
  }

  *&v49 = v3;
  *(&v49 + 1) = BYTE6(v6);
  v50 = &v46;
  v51 = &v46 + BYTE6(v6);
LABEL_36:
  sub_1AE4A5694(v3);
  v25 = v30;
  if (v1)
  {
LABEL_37:
    v31 = v22;
    v32 = v23;
    v33 = v24;
    sub_1AE4C78AC();
    v34 = swift_allocError();
    *v35 = v25;
    *(v35 + 8) = v31;
    *(v35 + 16) = v32;
    *(v35 + 24) = v33;
LABEL_41:
    v44 = v34;
    v41 = v34;
    v42 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD290, &qword_1AE4EDB70);
    swift_dynamicCast();
    v29 = v49;
    v46 = v49;
    v47 = v50;
    v48 = v51;
    sub_1AE4C78AC();
    swift_willThrowTypedImpl();

    return v29;
  }

  sub_1AE4A65CC(v30);
  v37 = v36;
  v38 = sub_1AE4AC038(v25);
  if (v38 == 6)
  {
LABEL_39:
    sub_1AE4C78AC();
    v39 = swift_allocError();
    *(v40 + 8) = 0;
    *(v40 + 16) = 0;
    *v40 = 0;
    *(v40 + 24) = 0x80;
    swift_willThrow();
    v34 = v39;
    goto LABEL_41;
  }

  sub_1AE4AD198(v38, v37, v49, *(&v49 + 1), &v45, &v44);
  return v44;
}

uint64_t sub_1AE4A6E5C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_1AE4A6F30(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
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

uint64_t sub_1AE4A6FD8(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

void *sub_1AE4A702C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = a3;
  v6 = a1;
  v67 = *MEMORY[0x1E69E9840];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      *&v59 = a1;
      WORD4(v59) = a2;
      BYTE10(v59) = BYTE2(a2);
      BYTE11(v59) = BYTE3(a2);
      BYTE12(v59) = BYTE4(a2);
      BYTE13(v59) = BYTE5(a2);
      v8 = (&v59 + BYTE6(a2));
      v9 = &v59;
LABEL_28:
      sub_1AE4A7668(v9, v8, &v63);
      v19 = v3;
      goto LABEL_29;
    }

    v20 = (a1 >> 32) - a1;
    if (a1 >> 32 >= a1)
    {
      v21 = sub_1AE4EA990();
      if (v21)
      {
        v22 = sub_1AE4EA9B0();
        if (__OFSUB__(v6, v22))
        {
LABEL_74:
          __break(1u);
LABEL_75:
          __break(1u);
        }

        v21 += v6 - v22;
      }

      v23 = sub_1AE4EA9A0();
      if (v23 >= v20)
      {
        v24 = (v6 >> 32) - v6;
      }

      else
      {
        v24 = v23;
      }

      v25 = (v24 + v21);
      if (v21)
      {
        v8 = v25;
      }

      else
      {
        v8 = 0;
      }

      v9 = v21;
      goto LABEL_28;
    }

    __break(1u);
    goto LABEL_69;
  }

  if (v7 != 2)
  {
    *(&v59 + 6) = 0;
    *&v59 = 0;
    v9 = &v59;
    v8 = &v59;
    goto LABEL_28;
  }

  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  v13 = sub_1AE4EA990();
  if (v13)
  {
    v14 = sub_1AE4EA9B0();
    if (__OFSUB__(v11, v14))
    {
LABEL_72:
      __break(1u);
      goto LABEL_73;
    }

    v13 += v11 - v14;
  }

  if (__OFSUB__(v12, v11))
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v15 = sub_1AE4EA9A0();
  if (v15 >= v12 - v11)
  {
    v16 = v12 - v11;
  }

  else
  {
    v16 = v15;
  }

  v17 = v16 + v13;
  if (v13)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  sub_1AE4A7668(v13, v18, &v63);
  v19 = v3;
  v6 = a1;
  v4 = a3;
LABEL_29:
  v26 = *(&v63 + 1);
  if (*(&v63 + 1) >> 60 == 15)
  {
    sub_1AE4A6FD8(v6, a2);
    v27 = v6;
    v26 = a2;
    if (v7 > 1)
    {
      goto LABEL_31;
    }

    goto LABEL_45;
  }

  v27 = v63;
  v7 = *(&v63 + 1) >> 62;
  if ((*(&v63 + 1) >> 62) <= 1)
  {
LABEL_45:
    if (!v7)
    {
      *&v59 = v27;
      WORD4(v59) = v26;
      BYTE10(v59) = BYTE2(v26);
      BYTE11(v59) = BYTE3(v26);
      BYTE12(v59) = BYTE4(v26);
      BYTE13(v59) = BYTE5(v26);
      v39 = (&v59 + BYTE6(v26));
LABEL_48:
      v38 = v19;
      sub_1AE4A7D34(&v59, v39, &v63);
      if (v19)
      {
        v55 = v27;
        v56 = v6;
        goto LABEL_61;
      }

      v52 = v6;
      goto LABEL_64;
    }

    v56 = v6;
    if (v27 >> 32 >= v27)
    {
      v40 = sub_1AE4EA990();
      v55 = v27;
      if (v40)
      {
        v41 = sub_1AE4EA9B0();
        if (__OFSUB__(v27, v41))
        {
          goto LABEL_75;
        }

        v40 += v27 - v41;
      }

      v42 = sub_1AE4EA9A0();
      if (v42 >= (v27 >> 32) - v27)
      {
        v43 = (v27 >> 32) - v27;
      }

      else
      {
        v43 = v42;
      }

      v44 = v43 + v40;
      if (v40)
      {
        v45 = v44;
      }

      else
      {
        v45 = 0;
      }

      v38 = v19;
      sub_1AE4A7D34(v40, v45, &v63);
      if (v19)
      {
        goto LABEL_61;
      }

      sub_1AE4A41E8(v6, a2);
      v53 = v63;
LABEL_66:
      v46 = v53;

      sub_1AE4A6FD8(v27, v26);

      sub_1AE4A41E8(v27, v26);
      return v46;
    }

LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

LABEL_31:
  if (v7 != 2)
  {
    *(&v59 + 6) = 0;
    *&v59 = 0;
    v39 = &v59;
    goto LABEL_48;
  }

  v56 = v6;
  v29 = *(v27 + 16);
  v28 = *(v27 + 24);
  v30 = sub_1AE4EA990();
  if (v30)
  {
    v31 = sub_1AE4EA9B0();
    if (__OFSUB__(v29, v31))
    {
LABEL_73:
      __break(1u);
      goto LABEL_74;
    }

    v30 += v29 - v31;
  }

  v32 = __OFSUB__(v28, v29);
  v33 = v28 - v29;
  if (v32)
  {
    goto LABEL_71;
  }

  v34 = sub_1AE4EA9A0();
  if (v34 >= v33)
  {
    v35 = v33;
  }

  else
  {
    v35 = v34;
  }

  v36 = v35 + v30;
  if (v30)
  {
    v37 = v36;
  }

  else
  {
    v37 = 0;
  }

  v38 = v19;
  sub_1AE4A7D34(v30, v37, &v63);
  if (!v19)
  {
    v52 = v56;
LABEL_64:
    sub_1AE4A41E8(v52, a2);
    v53 = v63;
    goto LABEL_66;
  }

  v55 = v27;
LABEL_61:
  v58 = v4;
  v46 = v38;
  v47 = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD290, &qword_1AE4EDB70);
  swift_dynamicCast();
  v48 = v63;
  v50 = v64;
  v49 = v65;
  v51 = v66;
  v59 = v63;
  v60 = v64;
  v61 = v65;
  v62 = v66;
  sub_1AE4C9530();
  swift_willThrowTypedImpl();

  sub_1AE4A41E8(v56, a2);
  sub_1AE4A41E8(v55, v26);
  *v58 = v48;
  *(v58 + 16) = v50;
  *(v58 + 24) = v49;
  *(v58 + 32) = v51;
  return v46;
}

uint64_t sub_1AE4A7564(uint64_t result, uint64_t a2)
{
  v4 = *v2;
  v5 = v2[2];
  v6 = v2[3];
  v7 = v6 - v5;
  if (!v5)
  {
    v7 = 0;
  }

  if (v4 < 0 || v7 < v4)
  {
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v8 = v2[1];
  if (v8 < 0 || v7 < v8)
  {
    goto LABEL_17;
  }

  if (v8 - v4 <= 3)
  {
    if (v5)
    {
      v9 = v5 + v4;
      v10 = v5 + v8;
      sub_1AE4C9530();
      swift_willThrowTypedImpl();
      *a2 = v9;
      *(a2 + 8) = v10;
      *(a2 + 16) = xmmword_1AE4EC800;
      *(a2 + 32) = 5;
      return v10;
    }

    goto LABEL_18;
  }

  if (v5)
  {
    v11 = *(v5 + v4);
    v12 = bswap32(v11);
    if (result)
    {
      v10 = v12;
    }

    else
    {
      v10 = v11;
    }

    *v2 = sub_1AE4A7CA4(4uLL, v4, v8, v5, v6);
    v2[1] = v13;
    v2[2] = v14;
    v2[3] = v15;
    return v10;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_1AE4A7668@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X8>)
{
  v42 = a2;
  v5 = a2 - a1;
  if (!a1)
  {
    v5 = 0;
  }

  v39 = 0;
  v40 = v5;
  v41 = a1;
  result = sub_1AE4A7564(1, v37);
  if (v3)
  {
    result = sub_1AE4DFB64(v37[0], v37[1], v37[2], v37[3], v38);
LABEL_20:
    *a3 = xmmword_1AE4ED4C0;
    return result;
  }

  if (result > 1885502052)
  {
    switch(result)
    {
      case 0x70627A65:
        v7 = 0;
        v8 = 2049;
        break;
      case 0x70627A7A:
        v7 = 0;
        v8 = 517;
        break;
      case 0x70627A78:
        v7 = 0;
        v8 = 774;
        break;
      default:
        goto LABEL_20;
    }

LABEL_18:
    v44 = v8;
    goto LABEL_19;
  }

  if (result != 1885501997)
  {
    if (result == 1885502004)
    {
      v7 = 0;
      v8 = 256;
    }

    else
    {
      if (result != 1885502050)
      {
        goto LABEL_20;
      }

      v7 = 0;
      v8 = 1794;
    }

    goto LABEL_18;
  }

  v44 = 0;
  v7 = 1;
LABEL_19:
  result = sub_1AE4C59E0(1uLL);
  if (v7)
  {
    v9 = v39;
    v10 = v41;
    v11 = v42 - v41;
    if (v41)
    {
      v12 = v42 - v41;
    }

    else
    {
      v12 = 0;
    }

    if ((v39 & 0x8000000000000000) == 0 && v12 >= v39)
    {
      v13 = v40;
      v15 = v40 < 0 || v12 < v40;
      while (!v15)
      {
        if ((v13 - v9) < 1)
        {
          goto LABEL_121;
        }

        if (v10)
        {
          if (v11 < v9)
          {
            goto LABEL_158;
          }

          if (v11 < v13)
          {
            goto LABEL_130;
          }
        }

        else
        {
          if (v9)
          {
            goto LABEL_162;
          }

          if (v13)
          {
            goto LABEL_130;
          }
        }

        if (v13 - v9 <= 7)
        {
          if (!v10)
          {
            goto LABEL_167;
          }

LABEL_123:
          sub_1AE4C94DC();
          swift_willThrowTypedImpl();
          *a3 = xmmword_1AE4ED4C0;
          return sub_1AE4A41E8(0, 0xC000000000000000);
        }

        if (!v10)
        {
          goto LABEL_165;
        }

        v16 = v9 + 8;
        if (__OFADD__(v9, 8))
        {
          goto LABEL_131;
        }

        if (v11 < v16 || (v16 & 0x8000000000000000) != 0 || v11 < v9 || v11 < v13)
        {
          goto LABEL_132;
        }

        if (v13 < v16)
        {
          goto LABEL_133;
        }

        if (v16 < v9)
        {
          goto LABEL_134;
        }

        v17 = (v10 + v16);
        if ((v13 - v16) <= 7)
        {
          goto LABEL_123;
        }

        v18 = v9 + 16;
        if (__OFADD__(v16, 8))
        {
          goto LABEL_135;
        }

        if ((v18 & 0x8000000000000000) != 0 || v11 < v18)
        {
          goto LABEL_136;
        }

        if (v13 < v18)
        {
          goto LABEL_137;
        }

        if (v18 < v16)
        {
          goto LABEL_138;
        }

        v19 = *(v10 + v9);
        if ((bswap64(v19) & 0x8000000000000000) != 0)
        {
          goto LABEL_139;
        }

        v20 = *v17;
        if (v19)
        {
          result = sub_1AE4EAA50();
        }

        v21 = bswap64(v20);
        if (v21 < 0)
        {
          goto LABEL_140;
        }

        if (!v20 || (v13 - v18) < 0 || (v9 = v13, (v13 - v18) >= v21))
        {
          v9 = v18 + v21;
          if (__OFADD__(v18, v21))
          {
            goto LABEL_156;
          }

          if (v9 < 0 || v11 < v9)
          {
            goto LABEL_157;
          }

          if (v13 < v9)
          {
            goto LABEL_141;
          }
        }

        if (v9 < v18)
        {
          goto LABEL_142;
        }

        if (v11 < v9)
        {
          goto LABEL_69;
        }
      }

      __break(1u);
LABEL_130:
      __break(1u);
LABEL_131:
      __break(1u);
LABEL_132:
      __break(1u);
LABEL_133:
      __break(1u);
LABEL_134:
      __break(1u);
LABEL_135:
      __break(1u);
LABEL_136:
      __break(1u);
LABEL_137:
      __break(1u);
LABEL_138:
      __break(1u);
LABEL_139:
      __break(1u);
LABEL_140:
      __break(1u);
LABEL_141:
      __break(1u);
LABEL_142:
      __break(1u);
      goto LABEL_143;
    }

LABEL_69:
    __break(1u);
  }

  v22 = result;
  compression_decode_scratch_buffer_size(v44);
  result = swift_slowAlloc();
  scratch_buffer = result;
  if (v22 < 0)
  {
    goto LABEL_164;
  }

  result = swift_slowAlloc();
  v23 = v39;
  v24 = v41;
  v25 = v42 - v41;
  if (v41)
  {
    v26 = v42 - v41;
  }

  else
  {
    v26 = 0;
  }

  if ((v39 & 0x8000000000000000) == 0 && v26 >= v39)
  {
    v27 = result;
    v28 = v40;
    v30 = v40 < 0 || v26 < v40;
    v43 = v30;
    while (!v43)
    {
      if (v28 - v23 < 1)
      {
        *a3 = xmmword_1AE4EE4A0;
        sub_1AE4A6FD8(0, 0xC000000000000000);
        MEMORY[0x1B27020A0](v27, -1, -1);
        MEMORY[0x1B27020A0](scratch_buffer, -1, -1);
        return sub_1AE4A41E8(0, 0xC000000000000000);
      }

      if (v24)
      {
        if (v25 < v23)
        {
          goto LABEL_159;
        }

        if (v25 < v28)
        {
          goto LABEL_144;
        }
      }

      else
      {
        if (v23)
        {
          goto LABEL_163;
        }

        if (v28 > 0)
        {
          goto LABEL_144;
        }
      }

      if ((v28 - v23) <= 7)
      {
        if (!v24)
        {
          goto LABEL_168;
        }

LABEL_126:
        sub_1AE4C94DC();
        swift_willThrowTypedImpl();
LABEL_127:
        *a3 = xmmword_1AE4ED4C0;
        MEMORY[0x1B27020A0](v27, -1, -1);
        MEMORY[0x1B27020A0](scratch_buffer, -1, -1);
        return sub_1AE4A41E8(0, 0xC000000000000000);
      }

      if (!v24)
      {
        goto LABEL_166;
      }

      v31 = v23 + 8;
      if (__OFADD__(v23, 8))
      {
        goto LABEL_145;
      }

      if (v25 < v31 || (v31 & 0x8000000000000000) != 0 || v25 < v23 || v25 < v28)
      {
        goto LABEL_146;
      }

      if (v28 < v31)
      {
        goto LABEL_147;
      }

      if (v31 < v23)
      {
        goto LABEL_148;
      }

      if ((v28 - v31) <= 7)
      {
        goto LABEL_126;
      }

      v32 = v23 + 16;
      if (__OFADD__(v31, 8))
      {
        goto LABEL_149;
      }

      if ((v32 & 0x8000000000000000) != 0 || v25 < v32)
      {
        goto LABEL_150;
      }

      if (v28 < v32)
      {
        goto LABEL_151;
      }

      if (v32 < v31)
      {
        goto LABEL_152;
      }

      v33 = *(v24 + v23);
      v34 = bswap64(v33);
      v35 = bswap64(*(v24 + v31));
      if (((v35 | v34) & 0x8000000000000000) != 0)
      {
        goto LABEL_153;
      }

      result = compression_decode_buffer(v27, v34, (v24 + v32), v35, scratch_buffer, v44);
      if (result < 0 || result != v34)
      {
        goto LABEL_127;
      }

      if (v33)
      {
        result = sub_1AE4EAA50();
      }

      if (v35 <= 0 || (v28 - v32) < 0 || (v23 = v28, (v28 - v32) >= v35))
      {
        v23 = v32 + v35;
        if (__OFADD__(v32, v35))
        {
          goto LABEL_160;
        }

        if (v23 < 0 || v25 < v23)
        {
          goto LABEL_161;
        }

        if (v28 < v23)
        {
          goto LABEL_154;
        }
      }

      if (v23 < v32)
      {
        goto LABEL_155;
      }

      if (v25 < v23)
      {
        goto LABEL_120;
      }
    }

LABEL_143:
    __break(1u);
LABEL_144:
    __break(1u);
LABEL_145:
    __break(1u);
LABEL_146:
    __break(1u);
LABEL_147:
    __break(1u);
LABEL_148:
    __break(1u);
LABEL_149:
    __break(1u);
LABEL_150:
    __break(1u);
LABEL_151:
    __break(1u);
LABEL_152:
    __break(1u);
LABEL_153:
    __break(1u);
LABEL_154:
    __break(1u);
LABEL_155:
    __break(1u);
LABEL_156:
    __break(1u);
LABEL_157:
    __break(1u);
LABEL_158:
    __break(1u);
LABEL_159:
    __break(1u);
LABEL_160:
    __break(1u);
LABEL_161:
    __break(1u);
LABEL_162:
    __break(1u);
LABEL_163:
    __break(1u);
LABEL_164:
    __break(1u);
LABEL_165:
    __break(1u);
LABEL_166:
    __break(1u);
LABEL_167:
    __break(1u);
LABEL_168:
    __break(1u);
    return result;
  }

LABEL_120:
  __break(1u);
LABEL_121:
  *a3 = xmmword_1AE4EE4A0;
  sub_1AE4A6FD8(0, 0xC000000000000000);
  return sub_1AE4A41E8(0, 0xC000000000000000);
}

unint64_t sub_1AE4A7CA4(unint64_t result, int64_t a2, int64_t a3, uint64_t a4, uint64_t a5)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (a4)
  {
    v5 = a5 - a4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 < 0 || v5 < a2)
  {
    goto LABEL_18;
  }

  if (a3 < 0 || v5 < a3)
  {
    goto LABEL_19;
  }

  if (result)
  {
    v6 = a3;
    if (a3 - a2 < result)
    {
LABEL_15:
      if (v6 >= a2)
      {
        return v6;
      }

      goto LABEL_20;
    }
  }

  v6 = a2 + result;
  if (!__OFADD__(a2, result))
  {
    if ((v6 & 0x8000000000000000) != 0 || v5 < v6)
    {
      goto LABEL_23;
    }

    if (v6 > a3)
    {
      goto LABEL_21;
    }

    goto LABEL_15;
  }

LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

void *sub_1AE4A7D34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *&v85 = sub_1AE4EAC50();
  v7 = *(v85 - 8);
  v8 = MEMORY[0x1EEE9AC00](v85);
  v10 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v72 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v72 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14);
  v82 = &v72 - v18;
  result = MEMORY[0x1EEE9AC00](v17);
  if (a1)
  {
    v21 = a2 - a1;
  }

  else
  {
    v21 = 0;
  }

  if ((v21 & 0x8000000000000000) == 0)
  {
    *&v84 = &v72 - v20;
    v22 = 0;
    v88 = 0;
    v89 = v21;
    v90 = a1;
    v91 = a2;
    v81 = (v7 + 4);
    v80 = (v7 + 2);
    v79 = v7 + 5;
    v83 = (v7 + 1);
    v23 = MEMORY[0x1E69E7CC8];
    v24 = v21;
    v25 = MEMORY[0x1E69E7CC8];
    while ((v24 & 0x8000000000000000) == 0 && v21 >= v24)
    {
      if (v24 <= v22)
      {
        *a3 = v25;
        a3[1] = v23;
        return result;
      }

      result = sub_1AE4A83A4(&v88, v86, &v92);
      if (v3)
      {
        v69 = v87;
        v84 = v86[1];
        v85 = v86[0];

        sub_1AE4C9530();
        result = swift_allocError();
        v70 = v84;
        *v71 = v85;
        *(v71 + 16) = v70;
        *(v71 + 32) = v69;
        return result;
      }

      if (v97 >> 1 >= 0x7FuLL || (v26 = v96 | (v97 << 32), v26 >> 38 == 2))
      {
        v22 = v88;
        if (v90)
        {
          v21 = v91 - v90;
        }

        else
        {
          v21 = 0;
        }

        if (v88 < 0)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v75 = v7;
        v27 = v16;
        v77 = v13;
        v78 = v10;
        v76 = 0;
        v29 = v94;
        v28 = v95;
        v31 = v92;
        v30 = v93;
        if (v26 >> 38)
        {

          MEMORY[0x1B27010F0](v31, v30);
          v45 = v29;
          v13 = v77;
          MEMORY[0x1B27010F0](v45, v28);
          v10 = v78;
          (*v81)(v78, v13, v85);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v98 = v23;
          v47 = sub_1AE4A9844(v27);
          v49 = v23[2];
          v50 = (v48 & 1) == 0;
          v51 = __OFADD__(v49, v50);
          v52 = v49 + v50;
          if (v51)
          {
            goto LABEL_55;
          }

          v53 = v48;
          if (v23[3] >= v52)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v68 = v47;
              sub_1AE4E9E8C();
              v47 = v68;
            }
          }

          else
          {
            sub_1AE4D9C5C(v52, isUniquelyReferenced_nonNull_native);
            v47 = sub_1AE4A9844(v27);
            if ((v53 & 1) != (v54 & 1))
            {
              goto LABEL_57;
            }
          }

          v16 = v27;
          v7 = v75;
          v75 = v25;
          v23 = v98;
          if (v53)
          {
            v62 = v85;
            (v7[5])(v98[7] + v7[9] * v47, v10, v85);
          }

          else
          {
            v66 = v47;
            v67 = v82;
            v62 = v85;
            (*v80)(v82, v16, v85);
            sub_1AE4DADFC(v66, v67, v10, v23);
          }

          sub_1AE4A9FD0(&v92);
          result = (*v83)(v16, v62);
          v22 = v88;
          if (v90)
          {
            v21 = v91 - v90;
          }

          else
          {
            v21 = 0;
          }

          v3 = v76;
          v25 = v75;
          if (v88 < 0)
          {
            goto LABEL_52;
          }
        }

        else
        {
          v74 = a3;
          sub_1AE4AC0C0(v92, v93, v94, v95, v26);
          v32 = v84;
          MEMORY[0x1B27010F0](v31, v30);
          if ((v26 & 0x100000000) != 0)
          {
            v33 = 0;
          }

          else
          {
            v33 = v26;
          }

          v73 = v33;
          v34 = swift_isUniquelyReferenced_nonNull_native();
          v98 = v25;
          v36 = sub_1AE4A9844(v32);
          v37 = v25;
          v38 = v25[2];
          v39 = (v35 & 1) == 0;
          v40 = v38 + v39;
          if (__OFADD__(v38, v39))
          {
            goto LABEL_56;
          }

          v41 = v35;
          v42 = v37[3];
          v72 = v27;
          if (v42 >= v40)
          {
            if ((v34 & 1) == 0)
            {
              sub_1AE4E98F4();
            }
          }

          else
          {
            sub_1AE4A9B00(v40, v34);
            v43 = sub_1AE4A9844(v84);
            if ((v41 & 1) != (v44 & 1))
            {
              goto LABEL_57;
            }

            v36 = v43;
          }

          v55 = v84;
          v56 = v98;
          v57 = HIDWORD(v26) & 1;
          v7 = v75;
          if (v41)
          {
            v58 = v98;
            v59 = v98[7] + 24 * v36;
            *v59 = v29;
            *(v59 + 8) = v28;
            *(v59 + 16) = v73;
            *(v59 + 20) = v57;
            v60 = v85;
            v61 = v55;
          }

          else
          {
            v63 = v82;
            v61 = v84;
            (*v80)(v82);
            v64 = v73 | (v57 << 32);
            v65 = v63;
            v60 = v85;
            v58 = v56;
            sub_1AE4A9EF4(v36, v65, v29, v28, v64, v56);
          }

          sub_1AE4A9FD0(&v92);
          result = (*v83)(v61, v60);
          v22 = v88;
          if (v90)
          {
            v21 = v91 - v90;
          }

          else
          {
            v21 = 0;
          }

          v3 = v76;
          a3 = v74;
          v10 = v78;
          v13 = v77;
          v16 = v72;
          if (v88 < 0)
          {
LABEL_52:
            __break(1u);
            break;
          }

          v25 = v58;
        }
      }

      v24 = v89;
      if (v21 < v22)
      {
        goto LABEL_52;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  result = sub_1AE4EB1C0();
  __break(1u);
  return result;
}

uint64_t *sub_1AE4A83A4@<X0>(int64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = a1;
  v8 = *a1;
  v7 = a1[1];
  v10 = a1[2];
  v9 = a1[3];
  v70 = *a1;
  v71 = v7;
  *&v72 = v10;
  *(&v72 + 1) = v9;
  result = sub_1AE4A7564(0, v68);
  if (v3)
  {
    v13 = v68[0];
    v12 = v68[1];
    v14 = v69;
LABEL_11:
    *a2 = v13;
    *(a2 + 16) = v12;
    *(a2 + 32) = v14;
    return result;
  }

  if (result != 825246017)
  {
    v64 = result;
    v65 = 0;
    v66 = 0u;
    v14 = 2;
    v67 = 2;
    v24 = result;
    sub_1AE4C9530();
    result = swift_willThrowTypedImpl();
    v12 = 0uLL;
    v13 = v24;
    goto LABEL_11;
  }

  v15 = sub_1AE4A8B88(0, v68);
  v57 = v7;
  v73 = v10;
  v58 = v9;
  v53 = a3;
  v17 = v70;
  v16 = v71;
  v18 = v72;
  v64 = v70;
  v65 = v71;
  v66 = v72;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD298, &qword_1AE4ECE10);
  sub_1AE4EB230();
  v60 = v17;
  v61 = v16;
  v62 = v18;
  result = sub_1AE4EB230();
  v19 = v15;
  v20 = v59 + v15;
  if (__OFADD__(v59, v15))
  {
LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

  v21 = v20 - 6;
  v22 = v73;
  if (__OFSUB__(v20, 6))
  {
LABEL_98:
    __break(1u);
    goto LABEL_99;
  }

  v54 = v19;
  if (v21 < v63)
  {
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
LABEL_104:
    __break(1u);
LABEL_105:
    __break(1u);
LABEL_106:
    __break(1u);
    goto LABEL_107;
  }

  v64 = v8;
  v65 = v7;
  *&v66 = v73;
  *(&v66 + 1) = v58;
  v23 = &v64;
  result = sub_1AE4EB230();
  if (v63 < v60 || v61 < v21)
  {
    v60 = v8;
    v61 = v7;
    *&v62 = v22;
    *(&v62 + 1) = v58;
    sub_1AE4EB230();
    v64 = v63;
    v65 = v21;
    v66 = v63;
    v14 = 4;
    v67 = 4;
    sub_1AE4C9530();
    result = swift_willThrowTypedImpl();
    v12 = v63;
    *&v13 = v63;
    *(&v13 + 1) = v21;
    goto LABEL_11;
  }

  if (v63 < v8 || v7 < v21)
  {
    goto LABEL_100;
  }

  v48 = 0;
  v46 = 0;
  v52 = 0;
  v49 = 0;
  v50 = 0;
  v55 = 0;
  v25 = 0;
  v60 = v63;
  v61 = v21;
  *&v62 = v73;
  *(&v62 + 1) = v58;
  v51 = 4;
  v56 = 1;
  v47 = 0x100000000;
  do
  {
LABEL_16:
    v26 = v60;
    v27 = *(&v62 + 1);
    v28 = v62;
    v29 = *(&v62 + 1) - v62;
    if (!v62)
    {
      v29 = 0;
    }

    if (v60 < 0 || v29 < v60)
    {
LABEL_82:
      __break(1u);
LABEL_83:

      v43 = 0;
LABEL_84:
      v44 = 0;
      v41 = 0;
      goto LABEL_85;
    }

    v30 = v61;
    while (1)
    {
      if (v30 < 0 || v29 < v30)
      {
        __break(1u);
        goto LABEL_97;
      }

      if (v30 <= v26)
      {
        goto LABEL_65;
      }

      result = sub_1AE4A8C90(&v60, v68);
      v23 = result;
      v33 = v31;
      if (v32 > 4u)
      {
        break;
      }

      if (v32 <= 1u)
      {
        if (v32)
        {

          v26 = v60;
          v27 = *(&v62 + 1);
          v28 = v62;
          v29 = *(&v62 + 1) - v62;
          if (!v62)
          {
            v29 = 0;
          }

          if (v60 < 0)
          {
            goto LABEL_82;
          }

          v30 = v61;
          v55 = v33;
          v49 = v23;
        }

        else
        {

          v26 = v60;
          v27 = *(&v62 + 1);
          v28 = v62;
          v29 = *(&v62 + 1) - v62;
          if (!v62)
          {
            v29 = 0;
          }

          if (v60 < 0)
          {
            goto LABEL_82;
          }

          v30 = v61;
          v25 = v33;
          v50 = v23;
        }
      }

      else
      {
        if (v32 != 2)
        {
          if (v32 == 3)
          {
            result = sub_1AE4A9574(result, v31, 3u);
            v47 = 0;
            v48 = v23;
            goto LABEL_16;
          }

          if (result > 0x45u)
          {
            if (result == 70)
            {
              v34 = 1;
            }

            else
            {
              if (result != 76)
              {
LABEL_95:

                v45 = v23;
                v64 = v23;
                sub_1AE4C9530();
                v65 = 0;
                v66 = 0u;
                v67 = 0;
                swift_willThrowTypedImpl();
                result = sub_1AE4A9574(v23, v33, 4u);
                v12 = 0uLL;
                v14 = 0;
                v13 = v45;
                goto LABEL_11;
              }

              v34 = 3;
            }
          }

          else
          {
            v34 = result;
            if (result)
            {
              if (result != 68)
              {
                goto LABEL_95;
              }

              v34 = 2;
            }
          }

          v51 = v34;
          result = sub_1AE4A9574(result, v31, 4u);
          v26 = v60;
          v27 = *(&v62 + 1);
          v28 = v62;
          v29 = *(&v62 + 1) - v62;
          if (!v62)
          {
            v29 = 0;
          }

          if (v60 < 0)
          {
            goto LABEL_82;
          }

          goto LABEL_25;
        }

        result = sub_1AE4A9574(result, v31, 2u);
        v26 = v60;
        v27 = *(&v62 + 1);
        v28 = v62;
        v29 = *(&v62 + 1) - v62;
        if (!v62)
        {
          v29 = 0;
        }

        if (v60 < 0)
        {
          goto LABEL_82;
        }

        v56 = 0;
        v30 = v61;
        v52 = v23;
      }

LABEL_26:
      if (v29 < v26)
      {
        goto LABEL_82;
      }
    }

    if (v32 == 6)
    {
      v23 = 0;
      result = sub_1AE4A9574(result, v31, 6u);
LABEL_22:
      v26 = v60;
      v27 = *(&v62 + 1);
      v28 = v62;
      v29 = *(&v62 + 1) - v62;
      if (!v62)
      {
        v29 = 0;
      }

      if (v60 < 0)
      {
        goto LABEL_82;
      }

LABEL_25:
      v30 = v61;
      goto LABEL_26;
    }

    if (v32 == 255)
    {
      goto LABEL_22;
    }

    v26 = 0;
    result = sub_1AE4A9574(result, v31, 5u);
    v35 = __CFADD__(v46, v23);
    v46 += v23;
  }

  while (!v35);
  __break(1u);
LABEL_65:
  v36 = v52;
  if (v56)
  {
    v36 = 0;
  }

  if (v36 < 0)
  {
    goto LABEL_101;
  }

  v37 = v27;
  result = (v54 + v36);
  if (__OFADD__(v54, v36))
  {
    goto LABEL_102;
  }

  result = sub_1AE4A7CA4(result, v8, v57, v73, v58);
  *v5 = result;
  v5[1] = v38;
  v5[2] = v39;
  v5[3] = v40;
  if (v51 > 1u)
  {
    v23 = v53;
    v5 = v25;
    if (v51 == 2)
    {

      v43 = 0;
      v5 = 0;
      goto LABEL_84;
    }

    if (v51 != 3)
    {

      v64 = 4;
      v65 = 0;
      v66 = 0u;
      v14 = 6;
      v67 = 6;
      sub_1AE4C9530();
      result = swift_willThrowTypedImpl();
      v12 = 0uLL;
      v13 = xmmword_1AE4EC800;
      goto LABEL_11;
    }

    if (!v25)
    {
      goto LABEL_83;
    }

    v41 = v55;
    if (v55)
    {
      v42 = 0x4000000000;
      v44 = v49;
      v43 = v50;
      goto LABEL_86;
    }

    v43 = 0;
    v5 = 0;
    v44 = 0;
LABEL_85:
    v42 = 0xFE00000000;
LABEL_86:
    *v23 = v43;
    *(v23 + 8) = v5;
    *(v23 + 16) = v44;
    *(v23 + 24) = v41;
    *(v23 + 32) = v42;
    *(v23 + 36) = BYTE4(v42);
    return result;
  }

  v5 = v25;
  if (!v51)
  {

    v43 = 0;
    v5 = 0;
    v44 = 0;
    v41 = 0;
    v42 = 0xFE00000000;
    v23 = v53;
    goto LABEL_86;
  }

  if (!v25)
  {
    v64 = 2;
    v65 = 0;
    v66 = 0u;
    v14 = 6;
    v67 = 6;
    sub_1AE4C9530();
    result = swift_willThrowTypedImpl();
    v12 = 0uLL;
    v13 = xmmword_1AE4EC810;
    goto LABEL_11;
  }

  if (v56)
  {

    v64 = 3;
    v65 = 0;
    v66 = 0u;
    v14 = 6;
    v67 = 6;
    sub_1AE4C9530();
    result = swift_willThrowTypedImpl();
    v12 = 0uLL;
    v13 = xmmword_1AE4EE4B0;
    goto LABEL_11;
  }

  v64 = v26;
  v65 = v30;
  *&v66 = v28;
  *(&v66 + 1) = v37;
  result = sub_1AE4EB230();
  if (v46 < 0)
  {
    goto LABEL_103;
  }

  v44 = *(&v63 + 1) + v46;
  v23 = v53;
  v43 = v50;
  if (__OFADD__(*(&v63 + 1), v46))
  {
    goto LABEL_104;
  }

  if (v52 < 0)
  {
    goto LABEL_105;
  }

  v41 = v44 + v52;
  if (__OFADD__(v44, v52))
  {
    goto LABEL_106;
  }

  if (v41 >= v44)
  {
    v42 = v47 | v48;
    goto LABEL_86;
  }

LABEL_107:
  __break(1u);
  return result;
}

uint64_t sub_1AE4A8B88(uint64_t result, uint64_t a2)
{
  v4 = *v2;
  v5 = v2[2];
  v6 = v2[3];
  v7 = v6 - v5;
  if (!v5)
  {
    v7 = 0;
  }

  if (v4 < 0 || v7 < v4)
  {
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v8 = v2[1];
  if (v8 < 0 || v7 < v8)
  {
    goto LABEL_17;
  }

  if (v8 - v4 <= 1)
  {
    if (v5)
    {
      v9 = v5 + v4;
      v10 = v5 + v8;
      sub_1AE4C9530();
      swift_willThrowTypedImpl();
      *a2 = v9;
      *(a2 + 8) = v10;
      *(a2 + 16) = xmmword_1AE4EC810;
      *(a2 + 32) = 5;
      return v10;
    }

    goto LABEL_18;
  }

  if (v5)
  {
    v11 = bswap32(*(v5 + v4)) >> 16;
    if (result)
    {
      v10 = v11;
    }

    else
    {
      v10 = *(v5 + v4);
    }

    *v2 = sub_1AE4A7CA4(2uLL, v4, v8, v5, v6);
    v2[1] = v12;
    v2[2] = v13;
    v2[3] = v14;
    return v10;
  }

LABEL_19:
  __break(1u);
  return result;
}

char *sub_1AE4A8C90(unint64_t *a1, uint64_t a2)
{
  result = sub_1AE4A7564(0, v39);
  if (v2)
  {
    v6 = v39[0];
    v7 = v39[1];
    v8 = v40;
LABEL_3:
    *a2 = v6;
    *(a2 + 16) = v7;
    *(a2 + 32) = v8;
    return result;
  }

  LODWORD(v9) = result;
  LOBYTE(v10) = sub_1AE4A9284(result);
  v11 = sub_1AE4A9330(v9);
  result = 0;
  switch(v11)
  {
    case 1:
      goto LABEL_32;
    case 2:
      goto LABEL_62;
    case 3:
    case 11:
      v12 = *a1;
      v10 = a1[1];
      a2 = a1[2];
      v9 = a1[3];
      v13 = sub_1AE4BA9B0(*a1, v10, a2, v9);
      v14 = v10;
      if (v13 < 8)
      {
        goto LABEL_12;
      }

      v14 = v12 + 8;
      if (__OFADD__(v12, 8))
      {
        goto LABEL_89;
      }

      v15 = v9 - a2;
      if (!a2)
      {
        v15 = 0;
      }

      if (v14 < 0 || v15 < v14)
      {
        goto LABEL_94;
      }

      if (v10 < v14)
      {
        __break(1u);
LABEL_88:
        __break(1u);
LABEL_89:
        __break(1u);
        goto LABEL_90;
      }

LABEL_12:
      if (v14 >= v12)
      {
LABEL_82:
        result = 0;
        *a1 = v14;
        a1[1] = v10;
        a1[2] = a2;
        a1[3] = v9;
        return result;
      }

      __break(1u);
LABEL_14:
      v16 = *a1;
      v10 = a1[1];
      a2 = a1[2];
      v9 = a1[3];
      v17 = sub_1AE4BA9B0(*a1, v10, a2, v9);
      v14 = v10;
      if (v17 >= 0xC)
      {
        v14 = v16 + 12;
        if (__OFADD__(v16, 12))
        {
LABEL_97:
          __break(1u);
          goto LABEL_98;
        }

        v18 = v9 - a2;
        if (!a2)
        {
          v18 = 0;
        }

        if (v14 < 0 || v18 < v14)
        {
          goto LABEL_101;
        }

        if (v10 < v14)
        {
LABEL_90:
          __break(1u);
LABEL_91:
          __break(1u);
LABEL_92:
          __break(1u);
LABEL_93:
          __break(1u);
LABEL_94:
          __break(1u);
LABEL_95:
          __break(1u);
LABEL_96:
          __break(1u);
          goto LABEL_97;
        }
      }

      if (v14 >= v16)
      {
        goto LABEL_82;
      }

      __break(1u);
LABEL_23:
      v19 = *a1;
      v10 = a1[1];
      a2 = a1[2];
      v9 = a1[3];
      v20 = sub_1AE4BA9B0(*a1, v10, a2, v9);
      v14 = v10;
      if (v20 >= 0x14)
      {
        v14 = v19 + 20;
        if (__OFADD__(v19, 20))
        {
LABEL_98:
          __break(1u);
          goto LABEL_99;
        }

        v21 = v9 - a2;
        if (!a2)
        {
          v21 = 0;
        }

        if (v14 < 0 || v21 < v14)
        {
          goto LABEL_102;
        }

        if (v10 < v14)
        {
          goto LABEL_91;
        }
      }

      if (v14 >= v19)
      {
        goto LABEL_82;
      }

      __break(1u);
LABEL_32:
      v22 = *a1;
      v10 = a1[1];
      a2 = a1[2];
      v9 = a1[3];
      v23 = sub_1AE4BA9B0(*a1, v10, a2, v9);
      v14 = v10;
      if (v23 >= 2)
      {
        v14 = v22 + 2;
        if (__OFADD__(v22, 2))
        {
LABEL_99:
          __break(1u);
          goto LABEL_100;
        }

        v24 = v9 - a2;
        if (!a2)
        {
          v24 = 0;
        }

        if (v14 < 0 || v24 < v14)
        {
          goto LABEL_103;
        }

        if (v10 < v14)
        {
          goto LABEL_92;
        }
      }

      if (v14 >= v22)
      {
        goto LABEL_82;
      }

      __break(1u);
LABEL_41:
      v25 = *a1;
      v10 = a1[1];
      a2 = a1[2];
      v9 = a1[3];
      v26 = sub_1AE4BA9B0(*a1, v10, a2, v9);
      v14 = v10;
      if (v26 >= 0x20)
      {
        v14 = v25 + 32;
        if (__OFADD__(v25, 32))
        {
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
          goto LABEL_104;
        }

        v27 = v9 - a2;
        if (!a2)
        {
          v27 = 0;
        }

        if (v14 < 0 || v27 < v14)
        {
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
          JUMPOUT(0x1AE4A9248);
        }

        if (v10 >= v14)
        {
          goto LABEL_48;
        }

        goto LABEL_93;
      }

LABEL_48:
      if (v14 >= v25)
      {
        goto LABEL_82;
      }

      __break(1u);
LABEL_50:
      if (v10 != 5 && v10 != 2)
      {
LABEL_73:
        v8 = 1;
        sub_1AE4C9530();
        result = swift_willThrowTypedImpl();
        v7 = 0uLL;
        v6 = v9;
        goto LABEL_3;
      }

      return sub_1AE4C58DC(0, v39);
    case 4:
      if (v10 != 5 && v10 != 2)
      {
        goto LABEL_73;
      }

      return sub_1AE4A8B88(0, v39);
    case 5:
      goto LABEL_71;
    case 6:
      goto LABEL_50;
    case 7:
      if (v10 == 3)
      {
        return sub_1AE4A7564(0, v39);
      }

LABEL_62:
      v29 = *a1;
      v10 = a1[1];
      a2 = a1[2];
      v9 = a1[3];
      v30 = sub_1AE4BA9B0(*a1, v10, a2, v9);
      v14 = v10;
      if (v30 < 4)
      {
        goto LABEL_69;
      }

      v14 = v29 + 4;
      if (__OFADD__(v29, 4))
      {
        goto LABEL_95;
      }

      v31 = v9 - a2;
      if (!a2)
      {
        v31 = 0;
      }

      if (v14 < 0 || v31 < v14)
      {
        goto LABEL_96;
      }

      if (v10 < v14)
      {
        goto LABEL_88;
      }

LABEL_69:
      if (v14 >= v29)
      {
        goto LABEL_82;
      }

      __break(1u);
LABEL_71:
      if (v10 != 5 && v10 != 2)
      {
        goto LABEL_73;
      }

      return sub_1AE4A7564(0, v39);
    case 8:
      goto LABEL_23;
    case 9:
      goto LABEL_41;
    case 10:
      v28 = sub_1AE4A8B88(0, v39);
      if (v10 <= 1u)
      {
        return sub_1AE4A9588(v28, v39);
      }

      v35 = sub_1AE4A7CA4(v28, *a1, a1[1], a1[2], a1[3]);
      result = 0;
      *a1 = v35;
      a1[1] = v36;
      a1[2] = v37;
      a1[3] = v38;
      return result;
    case 12:
      goto LABEL_14;
    case 13:
      return result;
    case 14:
      goto LABEL_73;
    default:
      if (v10 == 4)
      {
        return sub_1AE4A9480(v39);
      }

      v32 = *a1;
      v10 = a1[1];
      a2 = a1[2];
      v9 = a1[3];
      v33 = sub_1AE4BA9B0(*a1, v10, a2, v9);
      v14 = v10;
      if (!v33)
      {
        goto LABEL_81;
      }

      v14 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        goto LABEL_107;
      }

      v34 = v9 - a2;
      if (!a2)
      {
        v34 = 0;
      }

      if (v14 < 0 || v34 < v14)
      {
        goto LABEL_108;
      }

      if (v10 < v14)
      {
        goto LABEL_105;
      }

LABEL_81:
      if (v14 >= v32)
      {
        goto LABEL_82;
      }

      goto LABEL_106;
  }
}

uint64_t sub_1AE4A9284(int a1)
{
  v1 = a1 & 0xFFFFFF;
  if ((a1 & 0xFFFFFFu) > 0x544143)
  {
    if (v1 == 5521732)
    {
      return 2;
    }

    if (v1 != 5521744)
    {
      if (v1 == 5521752)
      {
        return 5;
      }

      return 6;
    }

    return 0;
  }

  else
  {
    if (v1 == 4935244)
    {
      return 1;
    }

    if (v1 != 5265748)
    {
      if (v1 == 5458755)
      {
        return 3;
      }

      return 6;
    }

    return 4;
  }
}

uint64_t sub_1AE4A9330(unsigned int a1)
{
  v1 = HIBYTE(a1) - 42;
  result = 0;
  switch(v1)
  {
    case 0u:
      result = 13;
      break;
    case 7u:
      return result;
    case 8u:
      result = 1;
      break;
    case 0xAu:
      result = 2;
      break;
    case 0xEu:
      result = 3;
      break;
    case 0x17u:
      result = 4;
      break;
    case 0x18u:
      result = 5;
      break;
    case 0x19u:
      result = 6;
      break;
    case 0x1Cu:
      result = 7;
      break;
    case 0x1Du:
      result = 8;
      break;
    case 0x1Eu:
      result = 9;
      break;
    case 0x26u:
      result = 10;
      break;
    case 0x29u:
      result = 11;
      break;
    case 0x2Au:
      result = 12;
      break;
    default:
      result = 14;
      break;
  }

  return result;
}

unint64_t sub_1AE4A9480(unint64_t result)
{
  v2 = *v1;
  v3 = v1[2];
  v4 = v1[3];
  v5 = v4 - v3;
  if (!v3)
  {
    v5 = 0;
  }

  if (v2 < 0 || v5 < v2)
  {
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v6 = v1[1];
  if (v6 < 0 || v5 < v6)
  {
    goto LABEL_14;
  }

  if (v6 > v2)
  {
    if (v3)
    {
      v7 = *(v3 + v2);
      *v1 = sub_1AE4A7CA4(1uLL, v2, v6, v3, v4);
      v1[1] = v8;
      v1[2] = v9;
      v1[3] = v10;
      return v7;
    }

    goto LABEL_15;
  }

  if (v3)
  {
    v11 = result;
    v12 = v3 + v2;
    v7 = v3 + v6;
    sub_1AE4C9530();
    swift_willThrowTypedImpl();
    *v11 = v12;
    *(v11 + 8) = v7;
    *(v11 + 16) = xmmword_1AE4EC840;
    *(v11 + 32) = 5;
    return v7;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1AE4A9574(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_1AE4AC060(a1, a2, a3);
  }

  return a1;
}

char *sub_1AE4A9588(uint64_t a1, uint64_t a2)
{
  v5 = sub_1AE4EAD70();
  result = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  v10 = v2[2];
  v11 = v2[3];
  if (v10)
  {
    v12 = v11 - v10;
  }

  else
  {
    v12 = 0;
  }

  if (v9 < 0 || v12 < v9)
  {
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v13 = v2[1];
  if (v13 < 0 || v12 < v13)
  {
    goto LABEL_19;
  }

  if (v13 - v9 >= a1)
  {
    v20 = *v2;
    v21 = v13;
    v22 = v10;
    v23 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD298, &qword_1AE4ECE10);
    result = sub_1AE4EB230();
    if (!__OFADD__(v25, a1))
    {
      if (v25 + a1 >= v25)
      {
        v20 = v25;
        v21 = v25 + a1;
        v22 = v10;
        v23 = v11;
        sub_1AE4EAD60();
        sub_1AE4AC078(&qword_1EB5DD158, &qword_1EB5DD298, &qword_1AE4ECE10, MEMORY[0x1E69E74E8]);
        v17 = sub_1AE4EAD50();
        if (v18)
        {
          v8 = v17;
          sub_1AE4A97B4(a1);
          return v8;
        }

        v20 = 0;
        v21 = 0;
        v16 = 1;
        v22 = 0;
        v23 = 1;
        v24 = 5;
        sub_1AE4C9530();
        swift_willThrowTypedImpl();
        v14 = 0;
        v15 = 0;
        a1 = 0;
LABEL_16:
        *a2 = v14;
        *(a2 + 8) = v15;
        *(a2 + 16) = a1;
        *(a2 + 24) = v16;
        *(a2 + 32) = 5;
        return v8;
      }

      goto LABEL_21;
    }

LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v10)
  {
    v14 = v10 + v9;
    v15 = v10 + v13;
    v20 = v10 + v9;
    v21 = v10 + v13;
    v22 = a1;
    v23 = 0;
    v24 = 5;
    sub_1AE4C9530();
    swift_willThrowTypedImpl();
    v16 = 0;
    goto LABEL_16;
  }

LABEL_22:
  __break(1u);
  return result;
}

unint64_t sub_1AE4A97B4(unint64_t result)
{
  if (result)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v2 = *v1;
      v3 = v1[2];
      if (v3)
      {
        v4 = v1[3] - v3;
      }

      else
      {
        v4 = 0;
      }

      if ((v2 & 0x8000000000000000) == 0 && v4 >= v2)
      {
        v5 = v1[1];
        if ((v5 & 0x8000000000000000) == 0 && v4 >= v5)
        {
          if (v5 - v2 < result)
          {
LABEL_25:
            __break(1u);
            return result;
          }

          v6 = v2 + result;
          if (!__OFADD__(v2, result))
          {
            if ((v6 & 0x8000000000000000) == 0 && v4 >= v6)
            {
              if (v5 >= v6)
              {
                if (v6 >= v2)
                {
                  *v1 = v6;
                  return result;
                }

                goto LABEL_24;
              }

LABEL_23:
              __break(1u);
LABEL_24:
              __break(1u);
              goto LABEL_25;
            }

LABEL_22:
            __break(1u);
            goto LABEL_23;
          }

LABEL_21:
          __break(1u);
          goto LABEL_22;
        }

LABEL_20:
        __break(1u);
        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1AE4A9844(uint64_t a1)
{
  sub_1AE4EAC50();
  v2 = MEMORY[0x1E69E83A8];
  sub_1AE4A9918(&qword_1EB5DD1A8, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83B8]);
  v3 = sub_1AE4EACE0();
  return sub_1AE4A9960(a1, v3, MEMORY[0x1E69E83A8], &qword_1EB5DD168, v2, MEMORY[0x1E69E83C0]);
}

uint64_t sub_1AE4A9918(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1AE4A9960(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v24 = a5;
  v25 = a6;
  v23 = a4;
  v21[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v21 - v10;
  v22 = v6;
  v12 = -1 << *(v6 + 32);
  v13 = a2 & ~v12;
  v21[0] = v6 + 64;
  if ((*(v6 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v17 = *(v9 + 16);
    v16 = v9 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    do
    {
      v15(v11, *(v22 + 48) + v18 * v13, v8);
      sub_1AE4A9918(v23, v24, v25);
      v19 = sub_1AE4EAD20();
      (*(v16 - 8))(v11, v8);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
    }

    while (((*(v21[0] + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  return v13;
}

uint64_t sub_1AE4A9B00(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_1AE4EAC50();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5DD610, &qword_1AE4EDC48);
  v44 = v4;
  result = sub_1AE4EB170();
  v11 = result;
  if (*(v9 + 16))
  {
    v51 = v8;
    v40 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v41 = (v6 + 16);
    v42 = v6;
    v45 = (v6 + 32);
    v18 = result + 64;
    v43 = v9;
    while (v16)
    {
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v25 = v22 | (v12 << 6);
      v26 = *(v9 + 48);
      v50 = *(v6 + 72);
      v27 = v26 + v50 * v25;
      if (v44)
      {
        (*v45)(v51, v27, v5);
      }

      else
      {
        (*v41)(v51, v27, v5);
      }

      v28 = *(v9 + 56) + 24 * v25;
      v29 = *(v28 + 20);
      v48 = *(v28 + 16);
      v49 = v29;
      v30 = *(v28 + 8);
      v46 = *v28;
      v47 = v30;
      sub_1AE4AA0A8(&qword_1EB5DD1A8, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83B8]);
      result = sub_1AE4EACE0();
      v31 = -1 << *(v11 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v18 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v18 + 8 * v33);
          if (v37 != -1)
          {
            v19 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v32) & ~*(v18 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v45)(*(v11 + 48) + v50 * v19, v51, v5);
      v20 = *(v11 + 56) + 24 * v19;
      v21 = v47;
      *v20 = v46;
      *(v20 + 8) = v21;
      LOBYTE(v21) = v49;
      *(v20 + 16) = v48;
      *(v20 + 20) = v21;
      ++*(v11 + 16);
      v6 = v42;
      v9 = v43;
    }

    v23 = v12;
    while (1)
    {
      v12 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v24 = v13[v12];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v16 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_34;
    }

    v38 = 1 << *(v9 + 32);
    v3 = v40;
    if (v38 >= 64)
    {
      bzero(v13, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v38;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_1AE4A9EF4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(a1 >> 6) + 8] |= 1 << a1;
  v12 = a6[6];
  v13 = sub_1AE4EAC50();
  result = (*(*(v13 - 8) + 32))(v12 + *(*(v13 - 8) + 72) * a1, a2, v13);
  v15 = a6[7] + 24 * a1;
  *v15 = a3;
  *(v15 + 8) = a4;
  *(v15 + 16) = a5;
  *(v15 + 20) = BYTE4(a5) & 1;
  v16 = a6[2];
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v18;
  }

  return result;
}

uint64_t sub_1AE4A9FD0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD7D8, &qword_1AE4EE5C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1AE4AA038(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 37))
  {
    return (*a1 + 126);
  }

  v3 = ((*(a1 + 36) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 36) >> 1) & 0x1F))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t get_enum_tag_for_layout_string_4Dyld10AARDecoderV12ArchiveEntryO(uint64_t a1)
{
  v1 = *(a1 + 36) >> 6;
  if (v1 <= 1)
  {
    return v1;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_1AE4AA0A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1AE4AA0F0(unint64_t a1, unint64_t a2, unint64_t *a3)
{
  v65 = a3;
  v4 = v3;
  v71 = *MEMORY[0x1E69E9840];
  v7 = sub_1AE4EAA30();
  v8 = *(v7 - 8);
  v62 = v7;
  v63 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v64 = &v57[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_1AE4EAC50();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v57[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v57[-v15];

  MEMORY[0x1B27010F0](a1, a2);
  v17 = v3[1];
  MEMORY[0x1B2700FF0](0, 0xE000000000000000);
  sub_1AE4AA894(v14, v17);
  v18 = *(v11 + 8);
  v18(v14, v10);
  v19 = *v4;
  if (!*(*v4 + 16))
  {
    goto LABEL_10;
  }

  v20 = sub_1AE4A9844(v16);
  if ((v22 & 1) == 0)
  {
    goto LABEL_10;
  }

  v61 = v18;
  v23 = *(v19 + 56) + 24 * v20;
  v25 = *v23;
  v24 = *(v23 + 8);
  v18 = *(v23 + 16);
  if (*(v23 + 20) == 1)
  {
    if (v18 > 1)
    {
LABEL_46:
      *&v67 = a1;
      *(&v67 + 1) = a2;
      v68 = 0;
      v69 = 0;
      v42 = 3;
      v70 = 3;
      sub_1AE4C9530();
      swift_willThrowTypedImpl();
      v61(v16, v10);

      v29 = 0;
      v37 = 0;
      v43 = a1;
LABEL_69:
      v50 = v65;
      *v65 = v43;
      v50[1] = a2;
      v50[2] = v29;
      v50[3] = v37;
      *(v50 + 32) = v42;
      return v29;
    }

    v26 = v4[2];
    a1 = v4[3];
    v27 = a1 >> 62;
    v18 = v61;
    if ((a1 >> 62) <= 1)
    {
      if (!v27)
      {
        *&v67 = v4[2];
        WORD4(v67) = a1;
        BYTE10(v67) = BYTE2(a1);
        BYTE11(v67) = BYTE3(a1);
        BYTE12(v67) = BYTE4(a1);
        BYTE13(v67) = BYTE5(a1);
        v28 = v24 - v25;
        if (!__OFSUB__(v24, v25))
        {
          goto LABEL_77;
        }

        __break(1u);
LABEL_10:
        v29 = 0;
LABEL_11:
        v18(v16, v10);
        return v29;
      }

      v60 = v24;
      a2 = v25;
      v25 = v26;
      if (v26 <= v26 >> 32)
      {
        v44 = sub_1AE4EA990();
        if (v44)
        {
          v45 = v44;
          v46 = sub_1AE4EA9B0();
          if (!__OFSUB__(v25, v46))
          {
            v4 = (v25 - v46 + v45);
            sub_1AE4EA9A0();
            if (v4)
            {
              v26 = v60;
              v28 = v60 - a2;
              if (!__OFSUB__(v60, a2))
              {
                goto LABEL_75;
              }

              __break(1u);
              goto LABEL_54;
            }

LABEL_90:
            __break(1u);
            goto LABEL_91;
          }

          goto LABEL_81;
        }

LABEL_89:
        sub_1AE4EA9A0();
        goto LABEL_90;
      }

      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
      goto LABEL_82;
    }

    if (v27 != 2)
    {
LABEL_54:
      *(&v67 + 6) = 0;
      *&v67 = 0;
      v28 = v24 - v25;
      if (!__OFSUB__(v24, v25))
      {
        goto LABEL_77;
      }

      __break(1u);
LABEL_57:
      v29 = v21;
      v37 = v21 >> 32;
      goto LABEL_58;
    }

    v60 = v24;
    a2 = v25;
    v25 = *(v26 + 16);
    v33 = sub_1AE4EA990();
    if (v33)
    {
      v34 = v33;
      v35 = sub_1AE4EA9B0();
      if (__OFSUB__(v25, v35))
      {
        goto LABEL_80;
      }

      v4 = (v25 - v35 + v34);
      sub_1AE4EA9A0();
      if (v4)
      {
        v26 = v60;
        v28 = v60 - a2;
        if (!__OFSUB__(v60, a2))
        {
          goto LABEL_75;
        }

        __break(1u);
LABEL_25:
        v27 = v21;
        v32 = v21 >> 32;
        goto LABEL_26;
      }
    }

    else
    {
      sub_1AE4EA9A0();
    }

    __break(1u);
    goto LABEL_89;
  }

  v21 = v4[2];
  v31 = v4[3];
  v26 = v31 >> 62;
  if ((v31 >> 62) <= 1)
  {
    if (!v26)
    {
      v27 = 0;
      v32 = BYTE6(v31);
      goto LABEL_29;
    }

    goto LABEL_25;
  }

  if (v26 != 2)
  {
    goto LABEL_28;
  }

  v27 = *(v21 + 16);
  v32 = *(v21 + 24);
LABEL_26:
  if (v32 >= v27)
  {
    goto LABEL_29;
  }

  __break(1u);
LABEL_28:
  v27 = 0;
  v32 = 0;
LABEL_29:
  if (v25 < v27 || v32 < v24)
  {
    if (v26 <= 1)
    {
      a1 = v61;
      if (!v26)
      {
        v29 = 0;
        v37 = BYTE6(v31);
        goto LABEL_68;
      }

      goto LABEL_57;
    }

LABEL_43:
    a1 = v61;
    if (v26 != 2)
    {
LABEL_67:
      v29 = 0;
      v37 = 0;
      goto LABEL_68;
    }

    v29 = *(v21 + 16);
    v37 = *(v21 + 24);
LABEL_58:
    if (v37 < v29)
    {
      __break(1u);
      goto LABEL_60;
    }

LABEL_68:
    *&v67 = v25;
    *(&v67 + 1) = v24;
    v68 = v29;
    v69 = v37;
    v43 = v25;
    v42 = 4;
    v70 = 4;
    a2 = v24;
    sub_1AE4C9530();
    swift_willThrowTypedImpl();
    (a1)(v16, v10);
    goto LABEL_69;
  }

  v60 = v24;
  v38 = sub_1AE4EAA60();
  v59 = v25;
  v40 = v39;
  v58 = sub_1AE4AAEBC(v38, v39);
  sub_1AE4A41E8(v38, v40);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (v18 != v58)
  {
    *&v67 = *v4;
    v66 = 1;
    sub_1AE4AB118(v59, v60, 0x100000001uLL, v16, isUniquelyReferenced_nonNull_native);
    *v4 = v67;
    goto LABEL_46;
  }

  *&v67 = *v4;
  v66 = 1;
  v25 = v59;
  sub_1AE4AB118(v59, v60, 0x100000001uLL, v16, isUniquelyReferenced_nonNull_native);
  *v4 = v67;
  v26 = v4[2];
  a1 = v4[3];
  v27 = a1 >> 62;
  v18 = v61;
  if ((a1 >> 62) > 1)
  {
LABEL_60:
    if (v27 == 2)
    {
      a2 = v25;
      v25 = *(v26 + 16);
      v47 = sub_1AE4EA990();
      if (v47)
      {
        v48 = v47;
        v49 = sub_1AE4EA9B0();
        if (!__OFSUB__(v25, v49))
        {
          v4 = (v25 - v49 + v48);
          sub_1AE4EA9A0();
          if (v4)
          {
            v28 = v60 - a2;
            if (!__OFSUB__(v60, a2))
            {
              goto LABEL_75;
            }

            __break(1u);
            goto LABEL_67;
          }

          goto LABEL_92;
        }

        goto LABEL_84;
      }

LABEL_91:
      sub_1AE4EA9A0();
LABEL_92:
      __break(1u);
      goto LABEL_93;
    }

    *(&v67 + 6) = 0;
    *&v67 = 0;
    v28 = v60 - v25;
    if (!__OFSUB__(v60, v25))
    {
LABEL_77:
      v55 = v64;
      (*(v63 + 104))(v64, *MEMORY[0x1E6969020], v62);
      v56 = &v67 + v25;
      goto LABEL_78;
    }

LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
  }

  if (!v27)
  {
    *&v67 = v4[2];
    WORD4(v67) = a1;
    BYTE10(v67) = BYTE2(a1);
    v27 = HIDWORD(a1);
    BYTE11(v67) = BYTE3(a1);
    BYTE12(v67) = BYTE4(a1);
    BYTE13(v67) = BYTE5(a1);
    v26 = v60;
    v28 = v60 - v25;
    if (!__OFSUB__(v60, v25))
    {
      goto LABEL_77;
    }

    __break(1u);
    goto LABEL_43;
  }

  a2 = v25;
  v51 = v26;
  if (v26 > v26 >> 32)
  {
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  v52 = sub_1AE4EA990();
  if (!v52)
  {
LABEL_93:
    result = sub_1AE4EA9A0();
    goto LABEL_94;
  }

  v53 = v52;
  v54 = sub_1AE4EA9B0();
  if (__OFSUB__(v51, v54))
  {
    goto LABEL_85;
  }

  v4 = (v51 - v54 + v53);
  result = sub_1AE4EA9A0();
  if (v4)
  {
    v28 = v60 - a2;
    if (__OFSUB__(v60, a2))
    {
      goto LABEL_86;
    }

LABEL_75:
    v55 = v64;
    (*(v63 + 104))(v64, *MEMORY[0x1E6969020], v62);
    v56 = v4 + a2;
LABEL_78:
    v29 = sub_1AE4AB2E4(v56, v28, v55);
    goto LABEL_11;
  }

LABEL_94:
  __break(1u);
  return result;
}

uint64_t sub_1AE4AA894(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD738, &qword_1AE4EE488);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v74 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v73 = &v59 - v9;
  v10 = sub_1AE4EAC50();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v72 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v70 = &v59 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v59 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v59 - v19;
  v65 = *(v11 + 16);
  v66 = v11 + 16;
  v65(&v59 - v19, a1, v10);
  v63 = v11;
  v21 = *(v11 + 32);
  v75 = v11 + 32;
  v68 = v21;
  v21(v18, v3, v10);
  v62 = v18;
  v67 = v20;
  v22 = sub_1AE4EABD0();
  v71 = v3;
  result = MEMORY[0x1B2701000](v22);
  if (a2)
  {
    v24 = 0;
    v61 = a2 + 64;
    v69 = (v63 + 8);
    v64 = a2;
    while (1)
    {
      v59 = v24 + 1;
      v25 = 1 << *(a2 + 32);
      v26 = v25 < 64 ? ~(-1 << v25) : -1;
      v27 = v26 & *(a2 + 64);
      v28 = (v25 + 63) >> 6;

      v60 = 0;
      v29 = 0;
LABEL_8:
      v30 = v29;
      v31 = v68;
      if (!v27)
      {
        break;
      }

      while (1)
      {
        v32 = v30;
LABEL_17:
        v35 = __clz(__rbit64(v27));
        v27 &= v27 - 1;
        v36 = v64;
        v37 = *(v63 + 72) * (v35 | (v32 << 6));
        v38 = v67;
        v39 = v10;
        v40 = v10;
        v41 = v65;
        v65(v67, *(v64 + 48) + v37, v39);
        v42 = v62;
        v41(v62, *(v36 + 56) + v37, v40);
        v10 = v40;
        v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD740, &unk_1AE4EE490);
        v44 = *(v43 + 48);
        v45 = v74;
        v46 = v38;
        v31 = v68;
        v68(v74, v46, v40);
        v31(&v45[v44], v42, v40);
        (*(*(v43 - 8) + 56))(v45, 0, 1, v43);
        v34 = v32;
        v47 = v45;
LABEL_18:
        v48 = v73;
        sub_1AE4AAE4C(v47, v73);
        v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD740, &unk_1AE4EE490);
        v50 = (*(*(v49 - 8) + 48))(v48, 1, v49);
        v51 = v72;
        if (v50 == 1)
        {
          break;
        }

        v30 = v34;
        v52 = *(v49 + 48);
        v53 = v70;
        v31(v70, v48, v10);
        v31(v51, (v48 + v52), v10);
        if (sub_1AE4EABB0())
        {
          sub_1AE4EAB80();
          v65(v67, v51, v10);
          v57 = sub_1AE4EABA0();
          MEMORY[0x1B2701000](v57);
          v58 = *v69;
          (*v69)(v51, v10);
          result = (v58)(v53, v10);
          v60 = 1;
          v29 = v34;
          goto LABEL_8;
        }

        v54 = *v69;
        (*v69)(v51, v10);
        result = (v54)(v53, v10);
        if (!v27)
        {
          goto LABEL_10;
        }
      }

      a2 = v64;

      v24 = v59;
      if (((v59 != 32) & v60) == 0)
      {
        return result;
      }
    }

LABEL_10:
    if (v28 <= v30 + 1)
    {
      v33 = v30 + 1;
    }

    else
    {
      v33 = v28;
    }

    v34 = v33 - 1;
    while (1)
    {
      v32 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v32 >= v28)
      {
        v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD740, &unk_1AE4EE490);
        v56 = v74;
        (*(*(v55 - 8) + 56))(v74, 1, 1, v55);
        v47 = v56;
        v27 = 0;
        goto LABEL_18;
      }

      v27 = *(v61 + 8 * v32);
      ++v30;
      if (v27)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1AE4AAE4C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD738, &qword_1AE4EE488);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AE4AAEBC(uint64_t a1, unint64_t a2)
{
  v4 = sub_1AE4EAA90();
  v5 = *(v4 - 8);
  result = MEMORY[0x1EEE9AC00](v4);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    v10 = 0;
    if (v9 != 2)
    {
      goto LABEL_12;
    }

    v12 = *(a1 + 16);
    v11 = *(a1 + 24);
    v10 = v11 - v12;
    if (!__OFSUB__(v11, v12))
    {
      goto LABEL_10;
    }

    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_21;
    }

    v10 = HIDWORD(a1) - a1;
LABEL_10:
    if ((v10 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (!HIDWORD(v10))
    {
      goto LABEL_12;
    }

    __break(1u);
LABEL_21:
    __break(1u);
    return result;
  }

  if (v9)
  {
    goto LABEL_8;
  }

  v10 = BYTE6(a2);
LABEL_12:
  sub_1AE4A6FD8(a1, a2);
  sub_1AE4EAAA0();
  sub_1AE4AB0C0();
  sub_1AE4EB020();
  if (v16)
  {
    v13 = 0;
  }

  else
  {
    v13 = 0;
    do
    {
      v13 = dword_1F240C898[(v15[14] ^ HIBYTE(v13)) + 8] ^ (v13 << 8);
      sub_1AE4EB020();
    }

    while (v16 != 1);
  }

  (*(v5 + 8))(v8, v4);
  if (v10)
  {
    do
    {
      v13 = dword_1F240C898[(v10 ^ HIBYTE(v13)) + 8] ^ (v13 << 8);
      v14 = v10 >= 0x100;
      LODWORD(v10) = v10 >> 8;
    }

    while (v14);
  }

  return ~v13;
}

unint64_t sub_1AE4AB0C0()
{
  result = qword_1EB5DD198;
  if (!qword_1EB5DD198)
  {
    sub_1AE4EAA90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5DD198);
  }

  return result;
}

uint64_t sub_1AE4AB118(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v27 = a1;
  v28 = a2;
  v10 = sub_1AE4EAC50();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v5;
  v16 = sub_1AE4A9844(a4);
  v17 = v14[2];
  v18 = (v15 & 1) == 0;
  result = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_14;
  }

  v20 = v15;
  v21 = v14[3];
  if (v21 >= result && (a5 & 1) != 0)
  {
    goto LABEL_9;
  }

  if (v21 >= result && (a5 & 1) == 0)
  {
    result = sub_1AE4E98F4();
    goto LABEL_9;
  }

  sub_1AE4A9B00(result, a5 & 1);
  result = sub_1AE4A9844(a4);
  if ((v20 & 1) != (v22 & 1))
  {
LABEL_14:
    result = sub_1AE4EB1C0();
    __break(1u);
    return result;
  }

  v16 = result;
LABEL_9:
  v23 = v28;
  v24 = *v6;
  if (v20)
  {
    v25 = v24[7] + 24 * v16;
    *v25 = v27;
    *(v25 + 8) = v23;
    *(v25 + 16) = a3;
    *(v25 + 20) = BYTE4(a3) & 1;
  }

  else
  {
    (*(v11 + 16))(v13, a4, v10);
    return sub_1AE4A9EF4(v16, v13, v27, v23, a3 | ((HIDWORD(a3) & 1) << 32), v24);
  }

  return result;
}

uint64_t sub_1AE4AB2E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1AE4EAA30();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1AE4EAA20();
  if (a2)
  {
    sub_1AE4EA9D0();
    swift_allocObject();

    v10 = sub_1AE4EA970();
    (*(v7 + 16))(v9, a3, v6);
    if ((*(v7 + 88))(v9, v6) == *MEMORY[0x1E6969010])
    {
      v11 = sub_1AE4EA9C0();
      *v12 |= 0x8000000000000000;
      v11(v16, 0);
    }

    else
    {
      (*(v7 + 8))(v9, v6);
    }

    v14 = sub_1AE4AB51C(v10, a2);
  }

  else
  {
    v13 = sub_1AE4EAA20();
    v13(a1, 0);

    v14 = 0;
  }

  (*(v7 + 8))(a3, v6);
  return v14;
}

uint64_t sub_1AE4AB51C(uint64_t result, uint64_t a2)
{
  if (!a2)
  {

    return 0;
  }

  if (a2 > 14)
  {
    if (a2 < 0x7FFFFFFF)
    {
      return a2 << 32;
    }

    sub_1AE4EAA40();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = a2;
    return result;
  }

  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  v3 = sub_1AE4EA990();
  if (v3)
  {
    result = sub_1AE4EA9B0();
    if (!__OFSUB__(0, result))
    {
      v3 -= result;
      goto LABEL_10;
    }

LABEL_19:
    __break(1u);
    return result;
  }

LABEL_10:
  v4 = sub_1AE4EA9A0();
  if (v4 >= a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = v4;
  }

  v6 = &v3[v5];
  if (v3)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = sub_1AE4C91C8(v3, v7);

  return v8;
}

uint64_t sub_1AE4AB600(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1AE4A6FD8(result, a2);
  }

  return result;
}

uint64_t *sub_1AE4AB614(uint64_t a1, unint64_t a2)
{
  v2 = a1;
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v3 != 2)
    {
      goto LABEL_9;
    }

    a1 = *(a1 + 16);
    v4 = *(v2 + 24);
  }

  else
  {
    if (!v3)
    {
      goto LABEL_9;
    }

    a1 = a1;
    v4 = v2 >> 32;
  }

  if (v4 < a1)
  {
    __break(1u);
  }

LABEL_9:
  v5 = sub_1AE4EAA60();
  v7 = v6;
  type metadata accessor for BPList.Metadata();
  swift_allocObject();
  return sub_1AE4AB6F4(v5, v7);
}

uint64_t *sub_1AE4AB6F4(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v34 = *MEMORY[0x1E69E9840];
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      *v29 = a1;
      *&v29[8] = a2;
      v29[10] = BYTE2(a2);
      v29[11] = BYTE3(a2);
      v29[12] = BYTE4(a2);
      v29[13] = BYTE5(a2);
      sub_1AE4ABA40(v29, &v29[BYTE6(a2)], &v31);
      if (!v3)
      {
        goto LABEL_25;
      }

      goto LABEL_23;
    }

    goto LABEL_12;
  }

  if (v7 == 2)
  {
    v8 = v3;
    v9 = *(a1 + 16);
    v10 = *(a1 + 24);

    v11 = sub_1AE4EA990();
    if (v11)
    {
      v12 = sub_1AE4EA9B0();
      if (__OFSUB__(v9, v12))
      {
        goto LABEL_28;
      }

      v11 += v9 - v12;
    }

    v13 = __OFSUB__(v10, v9);
    v14 = v10 - v9;
    if (!v13)
    {
LABEL_16:
      v16 = sub_1AE4EA9A0();
      if (v16 >= v14)
      {
        v17 = v14;
      }

      else
      {
        v17 = v16;
      }

      v18 = v17 + v11;
      if (v11)
      {
        v19 = v18;
      }

      else
      {
        v19 = 0;
      }

      v3 = v8;
      sub_1AE4ABA40(v11, v19, &v31);
      if (!v8)
      {
        goto LABEL_25;
      }

      goto LABEL_23;
    }

    __break(1u);
LABEL_12:
    v14 = (a1 >> 32) - a1;
    if (a1 >> 32 >= a1)
    {
      v8 = v3;

      v11 = sub_1AE4EA990();
      if (!v11)
      {
        goto LABEL_16;
      }

      v15 = sub_1AE4EA9B0();
      if (!__OFSUB__(a1, v15))
      {
        v11 += a1 - v15;
        goto LABEL_16;
      }

LABEL_29:
      __break(1u);
    }

    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  *&v29[6] = 0;
  *v29 = 0;
  sub_1AE4ABA40(v29, v29, &v31);
  if (!v3)
  {
LABEL_25:
    v22 = v31;
    v23 = BYTE1(v31);
    v24 = v32;
    v25 = v33;
    *(v2 + 32) = v31;
    *(v2 + 33) = v23;
    *(v2 + 40) = v24;
    *(v2 + 56) = v25;
    v26 = off_1F240D438[v22];
    v27 = swift_allocObject();
    *(v27 + 16) = a1;
    *(v27 + 24) = a2;
    *(v4 + 64) = v26;
    *(v4 + 72) = v27;
    return v4;
  }

LABEL_23:
  v20 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD290, &qword_1AE4EDB70);
  swift_dynamicCast();
  v21 = v31;
  *v29 = v31;
  *&v29[8] = v32;
  v30 = v33;
  sub_1AE4C78AC();
  swift_willThrowTypedImpl();

  sub_1AE4A41E8(a1, a2);
  sub_1AE4A41E8(*(v2 + 16), *(v2 + 24));
  swift_deallocPartialClassInstance();
  return v21;
}

uint64_t sub_1AE4ABA40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v10 = a2 - a1;
  if (!a1)
  {
    v10 = 0;
  }

  if ((v10 & 0x8000000000000000) == 0)
  {
    v35 = v10;
    result = sub_1AE4AC124(1uLL);
    v15 = result;
    if (v4)
    {
      v16 = v12;
      v17 = v13;
      v18 = v14;
      sub_1AE4C78AC();
      result = swift_allocError();
      *v19 = v15;
      *(v19 + 8) = v16;
      *(v19 + 16) = v17;
      *(v19 + 24) = v18;
      return result;
    }

    if (result != 0x62706C6973743030)
    {
      sub_1AE4C78AC();
      swift_allocError();
      *(v22 + 8) = 0;
      *(v22 + 16) = 0;
      *v22 = v15;
      *(v22 + 24) = 0;
      return swift_willThrow();
    }

    if (a1)
    {
      v20 = a2 - a1;
    }

    else
    {
      v20 = 0;
    }

    if (v20 < 0)
    {
      __break(1u);
    }

    else if ((v35 & 0x8000000000000000) == 0 && v20 >= v35)
    {
      if (v35 < 32)
      {
        sub_1AE4C78AC();
        swift_allocError();
        *(v21 + 8) = 0;
        *(v21 + 16) = 0;
        *v21 = 1;
        *(v21 + 24) = 0x80;
        return swift_willThrow();
      }

      v23 = 0;
      if ((25 - v35) >= 0x1A)
      {
        v23 = v35 - 26;
      }

      if (v35 >= v23)
      {
        sub_1AE4A5694(0x62706C6973743030uLL);
        v25 = v24;
        sub_1AE4A5694(v24);
        v6 = v26;
        v5 = sub_1AE4AC124(1uLL);
        v8 = sub_1AE4AC124(1uLL);
        v3 = sub_1AE4AC124(1uLL);
        v7 = sub_1AE4AC220(v25);
        goto LABEL_22;
      }

LABEL_30:
      __break(1u);
      __break(1u);
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    __break(1u);
    goto LABEL_30;
  }

  __break(1u);
LABEL_22:
  *a3 = v7;
  result = sub_1AE4AC220(v6);
  v30 = result;
  if (v4)
  {
    v31 = v27;
    v32 = v28;
    v33 = v29;
    sub_1AE4C78AC();
    result = swift_allocError();
    *v34 = v30;
    *(v34 + 8) = v31;
    *(v34 + 16) = v32;
    *(v34 + 24) = v33;
    return result;
  }

  *(a3 + 1) = result;
  if ((v5 & 0x8000000000000000) != 0)
  {
    goto LABEL_32;
  }

  *(a3 + 8) = v5;
  if ((v8 & 0x8000000000000000) != 0)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  *(a3 + 16) = v8;
  if ((v3 & 0x8000000000000000) == 0)
  {
    *(a3 + 24) = v3;
    return result;
  }

LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_1AE4ABE40(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1AE4A41E8(result, a2);
  }

  return result;
}

uint64_t sub_1AE4ABE5C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v20[2] = *MEMORY[0x1E69E9840];
  v4 = qword_1AE4ED448[*(a1 + 32)];
  v5 = a2 * v4;
  if ((a2 * v4) >> 64 != (a2 * v4) >> 63)
  {
    __break(1u);
    goto LABEL_20;
  }

  v6 = *(a1 + 56);
  v7 = v5 + v6;
  if (__OFADD__(v5, v6))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v8 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v8 != 2)
    {
      memset(v20, 0, 14);
      goto LABEL_17;
    }

    v9 = *(a3 + 16);
    v10 = sub_1AE4EA990();
    if (v10)
    {
      v11 = v10;
      v12 = sub_1AE4EA9B0();
      if (__OFSUB__(v9, v12))
      {
LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
      }

      v13 = v9 - v12 + v11;
      sub_1AE4EA9A0();
      if (v13)
      {
LABEL_15:
        v19 = *(v13 + v7);
        return bswap32(v19) >> 16;
      }
    }

    else
    {
      sub_1AE4EA9A0();
    }

    __break(1u);
    goto LABEL_26;
  }

  if (!v8)
  {
    v20[0] = a3;
    LOWORD(v20[1]) = a4;
    BYTE2(v20[1]) = BYTE2(a4);
    BYTE3(v20[1]) = BYTE3(a4);
    BYTE4(v20[1]) = BYTE4(a4);
    BYTE5(v20[1]) = BYTE5(a4);
LABEL_17:
    v19 = *(v20 + v7);
    return bswap32(v19) >> 16;
  }

  v14 = a3;
  if (a3 > a3 >> 32)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v15 = sub_1AE4EA990();
  if (!v15)
  {
LABEL_26:
    result = sub_1AE4EA9A0();
    __break(1u);
    goto LABEL_27;
  }

  v16 = v15;
  v17 = sub_1AE4EA9B0();
  if (__OFSUB__(v14, v17))
  {
    goto LABEL_23;
  }

  v13 = v14 - v17 + v16;
  result = sub_1AE4EA9A0();
  if (v13)
  {
    goto LABEL_15;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1AE4AC038(unsigned __int8 a1)
{
  v1 = (a1 >> 4) - 1;
  if (v1 > 0xC)
  {
    return 6;
  }

  else
  {
    return byte_1AE4ED4A8[v1];
  }
}

uint64_t sub_1AE4AC060(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_1AE4AC078(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

void sub_1AE4AC0C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v6 = (a5 >> 38) & 3;
  if (v6)
  {
    if (v6 != 1)
    {
      return;
    }
  }
}

unint64_t sub_1AE4AC124(unint64_t result)
{
  v2 = *v1;
  v3 = v1[2];
  v4 = v1[3];
  v5 = v4 - v3;
  if (!v3)
  {
    v5 = 0;
  }

  if (v2 < 0 || v5 < v2)
  {
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v6 = v1[1];
  if (v6 < 0 || v5 < v6)
  {
    goto LABEL_17;
  }

  if (v6 - v2 <= 7)
  {
    if (v3)
    {
      v7 = v3 + v2;
      sub_1AE4C78AC();
      swift_willThrowTypedImpl();
      return v7;
    }

    goto LABEL_18;
  }

  if (v3)
  {
    v8 = bswap64(*(v3 + v2));
    if (result)
    {
      v7 = v8;
    }

    else
    {
      v7 = *(v3 + v2);
    }

    *v1 = sub_1AE4A7CA4(8uLL, v2, v6, v3, v4);
    v1[1] = v9;
    v1[2] = v10;
    v1[3] = v11;
    return v7;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_1AE4AC220(uint64_t a1)
{
  if (a1 - 1) < 8u && ((0x8Bu >> (a1 - 1)))
  {
    return qword_1AE4ED468[(a1 - 1)];
  }

  v1 = a1;
  sub_1AE4C78AC();
  swift_willThrowTypedImpl();
  return v1;
}

uint64_t sub_1AE4AC2B4(uint64_t a1)
{
  v2 = a1;
  v42 = *MEMORY[0x1E69E9840];
  v3 = (*(a1 + 64))();
  v4 = v3;
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = v6 >> 62;
  if ((v6 >> 62) <= 1)
  {
    if (!v7)
    {
      v37[0] = *(v2 + 16);
      LOWORD(v37[1]) = v6;
      BYTE2(v37[1]) = BYTE2(v6);
      BYTE3(v37[1]) = BYTE3(v6);
      BYTE4(v37[1]) = BYTE4(v6);
      BYTE5(v37[1]) = BYTE5(v6);
      if (BYTE6(v6) >= v3)
      {
        *&v40 = v3;
        *(&v40 + 1) = BYTE6(v6);
        *&v41 = v37;
        *(&v41 + 1) = v37 + BYTE6(v6);
        goto LABEL_34;
      }

      __break(1u);
      goto LABEL_45;
    }

    goto LABEL_18;
  }

  if (v7 == 2)
  {
    v8 = *(v5 + 16);
    v9 = *(v5 + 24);
    v10 = sub_1AE4EA990();
    if (v10)
    {
      v11 = sub_1AE4EA9B0();
      if (__OFSUB__(v8, v11))
      {
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (v12)
    {
      goto LABEL_47;
    }

    v3 = sub_1AE4EA9A0();
    if (v3 >= v13)
    {
      v14 = v13;
    }

    else
    {
      v14 = v3;
    }

    if (v10)
    {
      v5 = v14;
    }

    else
    {
      v5 = 0;
    }

    if (v5 >= v4)
    {
LABEL_29:
      v19 = v14 + v10;
      if (!v10)
      {
        v19 = 0;
      }

      *&v40 = v4;
      *(&v40 + 1) = v5;
      *&v41 = v10;
      *(&v41 + 1) = v19;
      goto LABEL_34;
    }

    __break(1u);
LABEL_18:
    v15 = v5;
    v16 = v5 >> 32;
    v17 = v16 - v15;
    if (v16 < v15)
    {
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    v10 = sub_1AE4EA990();
    if (v10)
    {
      v18 = sub_1AE4EA9B0();
      if (__OFSUB__(v15, v18))
      {
        goto LABEL_50;
      }

      v10 += v15 - v18;
    }

    v3 = sub_1AE4EA9A0();
    if (v3 >= v17)
    {
      v14 = v17;
    }

    else
    {
      v14 = v3;
    }

    if (v10)
    {
      v5 = v14;
    }

    else
    {
      v5 = 0;
    }

    if (v5 < v4)
    {
      goto LABEL_48;
    }

    goto LABEL_29;
  }

  memset(v37, 0, 14);
  if (v3 > 0)
  {
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v40 = v3;
  *&v41 = v37;
  *(&v41 + 1) = v37;
LABEL_34:
  sub_1AE4A5694(v3);
  v24 = v20;
  if (v1)
  {
    v25 = v21;
    v26 = v22;
    v27 = v23;
    sub_1AE4C78AC();
    v28 = swift_allocError();
    *v29 = v24;
    *(v29 + 8) = v25;
    *(v29 + 16) = v26;
    *(v29 + 24) = v27;
  }

  else
  {
    sub_1AE4A65CC(v20);
    v33 = sub_1AE4AC038(v24);
    if (v33 == 4)
    {
      v38 = v40;
      v39 = v41;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD298, &qword_1AE4ECE10);
      sub_1AE4EB230();
      return v2;
    }

    if (v33 == 6)
    {
      sub_1AE4C78AC();
      v34 = swift_allocError();
      *(v35 + 8) = 0;
      *(v35 + 16) = 0;
      *v35 = 0;
      *(v35 + 24) = 0x80;
      swift_willThrow();
      v28 = v34;
    }

    else
    {
      *&v39 = 0;
      v38 = 6uLL;
      BYTE8(v39) = 0x80;
      sub_1AE4C78AC();
      swift_willThrowTypedImpl();
      v28 = swift_allocError();
      *(v36 + 8) = 0;
      *(v36 + 16) = 0;
      *v36 = 6;
      *(v36 + 24) = 0x80;
    }
  }

  v37[2] = v28;
  v30 = v28;
  v31 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD290, &qword_1AE4EDB70);
  swift_dynamicCast();
  v2 = v40;
  v38 = v40;
  *&v39 = v41;
  BYTE8(v39) = BYTE8(v41);
  sub_1AE4C78AC();
  swift_willThrowTypedImpl();

  return v2;
}

uint64_t sub_1AE4AC6E0(uint64_t a1, char *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v21[4] = *MEMORY[0x1E69E9840];
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a1;
  v17 = a2;
  v18 = a3 & 1;
  v7 = *(a4 + 16);
  v6 = *(a4 + 24);
  v8 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v8 != 2)
    {
      memset(v20, 0, 14);
      if (a5 <= 0)
      {
        sub_1AE4A5774(a5, 0, v20, v20, a4, a6, a1, v21, a2, a3 & 1, &v19);
        return v21[0];
      }

LABEL_15:
      __break(1u);
    }

    v9 = *(v7 + 16);
    v10 = *(v7 + 24);
    return sub_1AE4AD03C(v9, v10, v6 & 0x3FFFFFFFFFFFFFFFLL, sub_1AE4AD158, v12, a5);
  }

  if (v8)
  {
    v9 = v7;
    v10 = v7 >> 32;
    if (v7 >> 32 < v7)
    {
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    return sub_1AE4AD03C(v9, v10, v6 & 0x3FFFFFFFFFFFFFFFLL, sub_1AE4AD158, v12, a5);
  }

  v20[0] = *(a4 + 16);
  LOWORD(v20[1]) = v6;
  BYTE2(v20[1]) = BYTE2(v6);
  BYTE3(v20[1]) = BYTE3(v6);
  BYTE4(v20[1]) = BYTE4(v6);
  BYTE5(v20[1]) = BYTE5(v6);
  if (BYTE6(v6) < a5)
  {
    __break(1u);
    goto LABEL_14;
  }

  sub_1AE4A5774(a5, BYTE6(v6), v20, v20 + BYTE6(v6), a4, a6, a1, v21, a2, a3 & 1, &v19);
  return v21[0];
}

uint64_t sub_1AE4AC9B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = 1668248176;
  v10 = sub_1AE4AC6E0(1668248176, 0xE400000000000000, 0, a1, a2, a3);
  if (!v10)
  {
    v18 = xmmword_1AE4EE3D0;
LABEL_5:
    v51 = v18;
    v52 = xmmword_1AE4EC830;
    v53 = 64;
    sub_1AE4C9430();
    result = swift_willThrowTypedImpl();
    v16 = 0;
    v15 = 0xE400000000000000;
    v17 = 96;
    goto LABEL_8;
  }

  v11 = sub_1AE4A6A00(v10);
  if (v4)
  {
    v9 = v11;
    v15 = v12;
    v16 = v13;
    v17 = v14;
    *&v51 = v11;
    *(&v51 + 1) = v12;
    *&v52 = v13;
    *(&v52 + 1) = v14;
    v53 = 64;
    sub_1AE4C9430();
    swift_willThrowTypedImpl();

LABEL_8:
    *a4 = v9;
    *(a4 + 8) = v15;
    *(a4 + 16) = v16;
    *(a4 + 24) = v17;
    *(a4 + 32) = 64;
    return result;
  }

  v9 = 1952541808;

  v19 = sub_1AE4AC6E0(1952541808, 0xE400000000000000, 0, a1, a2, a3);
  if (!v19)
  {
    v18 = xmmword_1AE4EE3C0;
    goto LABEL_5;
  }

  sub_1AE4A6A00(v19);

  v21 = sub_1AE4AC6E0(1701669236, 0xE400000000000000, 0, a1, a2, a3);
  if (!v21)
  {
    v51 = xmmword_1AE4EE3B0;
    v52 = xmmword_1AE4EC830;
    v53 = 64;
    sub_1AE4C9430();
    result = swift_willThrowTypedImpl();
    v16 = 0;
    v15 = 0xE400000000000000;
    v17 = 96;
    v9 = 1701669236;
    goto LABEL_8;
  }

  sub_1AE4A6A00(v21);

  v9 = 1952543859;
  v22 = sub_1AE4AC6E0(1952543859, 0xE400000000000000, 0, a1, a2, a3);
  if (!v22)
  {
    v18 = xmmword_1AE4EE3A0;
    goto LABEL_5;
  }

  sub_1AE4A6A00(v22);
  v9 = 1953066601;

  v23 = sub_1AE4AC6E0(1953066601, 0xE400000000000000, 0, a1, a2, a3);
  if (!v23)
  {
    v18 = xmmword_1AE4EE390;
    goto LABEL_5;
  }

  sub_1AE4A6A00(v23);

  v24 = sub_1AE4AC6E0(0x7367616C66, 0xE500000000000000, 0, a1, a2, a3);
  if (v24)
  {
    sub_1AE4A6A00(v24);
  }

  v25 = sub_1AE4AC6E0(1684632947, 0xE400000000000000, 0, a1, a2, a3);
  if (!v25)
  {
    goto LABEL_22;
  }

  v27 = sub_1AE4AEC7C(v25, v26);
  v30 = v27;
  v31 = v28;
  v32 = v28 >> 62;
  if ((v28 >> 62) > 1)
  {
    if (v32 != 2)
    {
LABEL_34:
      v51 = 7uLL;
      v17 = 128;
      *&v52 = 0;
      *(&v52 + 1) = 128;
      v53 = 64;
      sub_1AE4C9430();
      swift_willThrowTypedImpl();

      result = sub_1AE4A41E8(v30, v31);
      v15 = 0;
      v16 = 0;
      v9 = 7;
      goto LABEL_8;
    }

    v35 = *(v27 + 16);
    v34 = *(v27 + 24);
    v36 = __OFSUB__(v34, v35);
    v33 = v34 - v35;
    if (v36)
    {
      __break(1u);
      goto LABEL_27;
    }
  }

  else if (v32)
  {
    LODWORD(v33) = HIDWORD(v27) - v27;
    if (__OFSUB__(HIDWORD(v27), v27))
    {
      __break(1u);
      v48 = v29;
      sub_1AE4C78AC();
      swift_allocError();
      *v49 = v54;
      *(v49 + 8) = v31;
      *(v49 + 16) = v30;
      *(v49 + 24) = v48;
      result = swift_unexpectedError();
      __break(1u);
      return result;
    }

    v33 = v33;
  }

  else
  {
    v33 = BYTE6(v28);
  }

  if (v33 != 16)
  {
    goto LABEL_34;
  }

  sub_1AE4A41E8(v30, v31);
LABEL_22:
  sub_1AE4ADEE4(1936158057, 0xE400000000000000, 0, a1, a2, a3, &v50);
  sub_1AE4B00A8(1937010529, 0xE400000000000000, 1, a1, a2, a3, &v50);
LABEL_27:
  v37 = sub_1AE4AC6E0(1886809701, 0xE400000000000000, 0, a1, a2, a3);
  if (v37)
  {
    v54 = sub_1AE4AC2B4(v37);
    v39 = v38;
    v41 = v40;

    v42 = sub_1AE4AC6E0(1953460082, 0xE400000000000000, 0, v54, v39, v41);
    if (v42)
    {
      sub_1AE4AF28C(v42);
    }

    else
    {
    }
  }

  result = sub_1AE4AC6E0(828601188, 0xE400000000000000, 0, a1, a2, a3);
  if (result)
  {
    v43 = sub_1AE4AC2B4(result);
    v45 = v44;
    v47 = v46;

    sub_1AE4B0154(v43, v45, v47, &v50);
  }

  return result;
}

uint64_t sub_1AE4AD03C(uint64_t a1, uint64_t a2, uint64_t a3, void *(*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5, uint64_t a6)
{
  result = sub_1AE4EA990();
  v12 = result;
  if (result)
  {
    result = sub_1AE4EA9B0();
    if (__OFSUB__(a1, result))
    {
LABEL_17:
      __break(1u);
      return result;
    }

    v12 += a1 - result;
  }

  v13 = __OFSUB__(a2, a1);
  v14 = a2 - a1;
  if (v13)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  result = sub_1AE4EA9A0();
  if (result >= v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = result;
  }

  if (v12)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  if (v16 < a6)
  {
    goto LABEL_16;
  }

  a4(&v21, a6);
  if (!v6)
  {
    return v21;
  }

  sub_1AE4C78AC();
  result = swift_allocError();
  *v17 = v18;
  *(v17 + 16) = v19;
  *(v17 + 24) = v20;
  return result;
}

void sub_1AE4AD198(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a7@<X6>, unint64_t *a8@<X8>)
{
  if (a1 != 3)
  {
    v16 = 2;
    v17 = 0x80;
    sub_1AE4C78AC();
    swift_willThrowTypedImpl();
    v18 = 0;
    v19 = 0;
LABEL_16:
    *a7 = v16;
    *(a7 + 8) = v18;
    *(a7 + 16) = v19;
    *(a7 + 24) = v17;
    return;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD298, &qword_1AE4ECE10);
  sub_1AE4EB230();
  sub_1AE4EB230();
  v13 = 1 << a2;
  if (a2 <= 0x3F)
  {
    v14 = 1 << a2;
  }

  else
  {
    v14 = 0;
  }

  v15 = v27 + v14;
  if (__OFADD__(v27, v14))
  {
    __break(1u);
    goto LABEL_30;
  }

  if (v15 < v28)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (v28 < a3 || v15 > a4)
  {
    goto LABEL_31;
  }

  if (a2 > 0x3F)
  {
    v13 = 0;
    goto LABEL_14;
  }

  if (a2 == 63)
  {
    goto LABEL_32;
  }

  if (a2 > 7)
  {
LABEL_33:
    __break(1u);
    return;
  }

LABEL_14:
  v20 = sub_1AE4AC220(v13);
  v16 = v20;
  if (v8)
  {
    v17 = v21;
    goto LABEL_16;
  }

  if (v20 > 1u)
  {
    if (v20 == 2)
    {
      v24 = sub_1AE4AD394(1);
      v23 = v24;
    }

    else
    {
      v23 = sub_1AE4AC124(1uLL);
    }
  }

  else if (v20)
  {
    v25 = sub_1AE4AFFA4(1);
    v23 = v25;
  }

  else
  {
    sub_1AE4A5694(v20);
    v23 = v22;
  }

  *a8 = v23;
}

uint64_t sub_1AE4AD394(uint64_t result)
{
  v2 = *v1;
  v3 = v1[2];
  v4 = v1[3];
  v5 = v4 - v3;
  if (!v3)
  {
    v5 = 0;
  }

  if (v2 < 0 || v5 < v2)
  {
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v6 = v1[1];
  if (v6 < 0 || v5 < v6)
  {
    goto LABEL_17;
  }

  if (v6 - v2 <= 3)
  {
    if (v3)
    {
      v7 = v3 + v2;
      sub_1AE4C78AC();
      swift_willThrowTypedImpl();
      return v7;
    }

    goto LABEL_18;
  }

  if (v3)
  {
    v8 = *(v3 + v2);
    v9 = bswap32(v8);
    if (result)
    {
      v7 = v9;
    }

    else
    {
      v7 = v8;
    }

    *v1 = sub_1AE4A7CA4(4uLL, v2, v6, v3, v4);
    v1[1] = v10;
    v1[2] = v11;
    v1[3] = v12;
    return v7;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_1AE4AD490(uint64_t a1, char *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t, void *, unint64_t, uint64_t *))
{
  v12 = a2;
  v13 = a1;
  v100 = *MEMORY[0x1E69E9840];
  result = sub_1AE4AC6E0(a1, a2, 0, a4, a5, a6);
  if (result)
  {
    v15 = sub_1AE4ADF90(result);
    v13 = v15;
    v12 = v16;
    v19 = v17;
    if (v8)
    {
      v20 = v18;
      *&v97 = v15;
      *(&v97 + 1) = v16;
      *&v98 = v17;
      *(&v98 + 1) = v18;
      v99 = 64;
      sub_1AE4C9430();
      swift_willThrowTypedImpl();
      goto LABEL_106;
    }

    v90 = v15;
    v91 = v16;
    v92 = v17;
    v93 = 0;

    v21 = sub_1AE4AE3BC();
    if (!v21)
    {
LABEL_83:
    }

    v23 = v21;
    v24 = v22;
    v82 = a7;
    v83 = a8;
    while (1)
    {
      v25 = v23[8];

      v27 = v25(v26, v24);
      v28 = v27;
      v29 = v23[2];
      v30 = v23[3];
      v31 = v30 >> 62;
      if ((v30 >> 62) > 1)
      {
        break;
      }

      if (v31)
      {
        v46 = v29;
        v47 = v29 >> 32;
        v48 = v47 - v46;
        if (v47 < v46)
        {
          goto LABEL_114;
        }

        v49 = sub_1AE4EA990();
        if (v49)
        {
          v50 = v49;
          v51 = sub_1AE4EA9B0();
          if (__OFSUB__(v46, v51))
          {
            goto LABEL_124;
          }

          v43 = v46 - v51 + v50;
        }

        else
        {
          v43 = 0;
        }

        result = sub_1AE4EA9A0();
        if (result >= v48)
        {
          v59 = v48;
        }

        else
        {
          v59 = result;
        }

        v55 = v43 + v59;
        if (v43)
        {
          v60 = v55;
        }

        else
        {
          v60 = 0;
        }

        v57 = v60 - v43;
        if (v43)
        {
          v61 = v57;
        }

        else
        {
          v61 = 0;
        }

        if (v61 < v28)
        {
          goto LABEL_117;
        }

        if (v28 < 0)
        {
          goto LABEL_120;
        }

        if (v61 <= v28)
        {
          if (v43)
          {
            goto LABEL_99;
          }

          __break(1u);
LABEL_98:
          if (v43)
          {
LABEL_99:
            v74 = v43 + v28;
            v75 = v43 + v57;
            *&v95 = v74;
            *(&v95 + 1) = v75;
            *&v96 = 1;
            BYTE8(v96) = 64;
            sub_1AE4C78AC();
            swift_willThrowTypedImpl();
            v67 = swift_allocError();
            *v76 = v74;
            *(v76 + 8) = v75;
            *(v76 + 16) = 1;
            *(v76 + 24) = 64;
LABEL_100:
            a7 = v82;
LABEL_105:
            v84 = v67;
            v80 = v67;
            v81 = v67;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD290, &qword_1AE4EDB70);
            swift_dynamicCast();
            v12 = *(&v97 + 1);
            v13 = v97;
            v19 = v98;
            v20 = BYTE8(v98);
            v95 = v97;
            *&v96 = v98;
            BYTE8(v96) = BYTE8(v98);
            sub_1AE4C78AC();
            swift_willThrowTypedImpl();

            v97 = __PAIR128__(v12, v13);
            *&v98 = v19;
            *(&v98 + 1) = v20;
            v99 = 64;
            sub_1AE4C9430();
            swift_willThrowTypedImpl();

LABEL_106:

LABEL_107:
            *a7 = v13;
            *(a7 + 8) = v12;
            *(a7 + 16) = v19;
            *(a7 + 24) = v20;
            *(a7 + 32) = 64;
            return result;
          }

LABEL_132:
          __break(1u);
          return result;
        }

        if (!v43)
        {
          __break(1u);
LABEL_131:
          __break(1u);
          goto LABEL_132;
        }

        if (v57 <= v28)
        {
          goto LABEL_121;
        }

LABEL_69:
        v62 = *(v43 + v28);
        *&v97 = v28 + 1;
        *(&v97 + 1) = v57;
        *&v98 = v43;
        *(&v98 + 1) = v55;
        sub_1AE4A65CC(v62);
        v35 = v63;
        v64 = v62 >> 4;
        if (v62 >> 4 != 13)
        {
          if (v64 <= 0xA && ((1 << v64) & 0x472) != 0)
          {
            *&v96 = 0;
            v95 = 6uLL;
            BYTE8(v96) = 0x80;
            sub_1AE4C78AC();
            swift_willThrowTypedImpl();
            v67 = swift_allocError();
            *(v68 + 8) = 0;
            *(v68 + 16) = 0;
            *v68 = 6;
            *(v68 + 24) = 0x80;
            goto LABEL_105;
          }

LABEL_90:
          sub_1AE4C78AC();
          v70 = swift_allocError();
          *(v71 + 8) = 0;
          *(v71 + 16) = 0;
          *v71 = 0;
          *(v71 + 24) = 0x80;
          swift_willThrow();
          v67 = v70;
          goto LABEL_105;
        }

        v95 = v97;
        v96 = v98;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD298, &qword_1AE4ECE10);
        sub_1AE4EB230();
        v53 = v84;
        goto LABEL_71;
      }

      v84 = v23[2];
      v85 = v30;
      v86 = BYTE2(v30);
      v87 = BYTE3(v30);
      v88 = BYTE4(v30);
      v89 = BYTE5(v30);
      if (BYTE6(v30) < v27)
      {
        __break(1u);
LABEL_114:
        __break(1u);
LABEL_115:
        __break(1u);
LABEL_116:
        __break(1u);
LABEL_117:
        __break(1u);
LABEL_118:
        __break(1u);
LABEL_119:
        __break(1u);
LABEL_120:
        __break(1u);
LABEL_121:
        __break(1u);
LABEL_122:
        __break(1u);
LABEL_123:
        __break(1u);
LABEL_124:
        __break(1u);
LABEL_125:
        __break(1u);
LABEL_126:
        __break(1u);
LABEL_127:
        __break(1u);
        goto LABEL_128;
      }

      if (v27 < 0)
      {
        goto LABEL_116;
      }

      v32 = &v84 + BYTE6(v30);
      if (BYTE6(v30) <= v27)
      {
        v73 = &v84 + v27;
        *&v97 = &v84 + v27;
        *(&v97 + 1) = &v84 + BYTE6(v30);
        *&v98 = 1;
        BYTE8(v98) = 64;
        sub_1AE4C78AC();
        swift_willThrowTypedImpl();
        v67 = swift_allocError();
        *v72 = v73;
        *(v72 + 8) = v32;
        goto LABEL_95;
      }

      v33 = *(&v84 + v27);
      v34 = v27 + 1;
      v35 = v33 & 0xF;
      if ((v33 & 0xF) == 0xF)
      {
        v36 = &v84 + v34;
        if (BYTE6(v30) <= v34)
        {
          goto LABEL_102;
        }

        v36 = *v36;
        if (v36 >> 4 > 0xD || ((1 << (v36 >> 4)) & 0x2472) == 0)
        {
LABEL_109:
          *&v98 = 0;
          v97 = v36;
          v78 = 32;
          BYTE8(v98) = 32;
          sub_1AE4C78AC();
          swift_willThrowTypedImpl();
          v32 = 0;
          v77 = 0;
          goto LABEL_104;
        }

        v37 = v27 + 2;
        if ((v36 & 8) != 0)
        {
          v36 = 0;
        }

        else
        {
          v36 = (1 << (v36 & 7));
        }

        if (v36 > 3)
        {
          if (v36 == 4)
          {
            if ((BYTE6(v30) - v37) <= 3)
            {
              v36 = &v84 + v37;
              *&v97 = &v84 + v37;
              *(&v97 + 1) = &v84 + BYTE6(v30);
              v77 = 4;
LABEL_103:
              *&v98 = v77;
              v78 = 64;
              BYTE8(v98) = 64;
              sub_1AE4C78AC();
              swift_willThrowTypedImpl();
LABEL_104:
              sub_1AE4C78AC();
              v67 = swift_allocError();
              *v79 = v36;
              *(v79 + 8) = v32;
              *(v79 + 16) = v77;
              *(v79 + 24) = v78;
              goto LABEL_105;
            }

            v34 = v27 + 6;
            if (BYTE6(v30) < (v27 + 6))
            {
              goto LABEL_125;
            }

            v35 = bswap32(*(&v84 + v37));
          }

          else
          {
            if (v36 != 8)
            {
              goto LABEL_109;
            }

            if ((BYTE6(v30) - v37) < 8)
            {
              v36 = &v84 + v37;
              *&v97 = &v84 + v37;
              *(&v97 + 1) = &v84 + BYTE6(v30);
              v77 = 8;
              goto LABEL_103;
            }

            v34 = v27 + 10;
            if (BYTE6(v30) < (v27 + 10))
            {
              goto LABEL_127;
            }

            v35 = bswap64(*(&v84 + v37));
          }
        }

        else if (v36 == 1)
        {
          v36 = &v84 + v37;
          if (BYTE6(v30) <= v37)
          {
LABEL_102:
            *&v97 = v36;
            *(&v97 + 1) = &v84 + BYTE6(v30);
            v77 = 1;
            goto LABEL_103;
          }

          v35 = *v36;
          v34 = v27 + 3;
        }

        else
        {
          if (v36 != 2)
          {
            goto LABEL_109;
          }

          if ((BYTE6(v30) - v37) <= 1)
          {
            v36 = &v84 + v37;
            *&v97 = &v84 + v37;
            *(&v97 + 1) = &v84 + BYTE6(v30);
            v77 = 2;
            goto LABEL_103;
          }

          v34 = v27 + 4;
          if (BYTE6(v30) < (v27 + 4))
          {
            goto LABEL_126;
          }

          v35 = bswap32(*(&v84 + v37)) >> 16;
        }
      }

      v52 = v33 >> 4;
      if (v52 != 13)
      {
        if (v52 <= 0xA && ((1 << v52) & 0x472) != 0)
        {
          *&v98 = 0;
          v97 = 6uLL;
          BYTE8(v98) = 0x80;
          sub_1AE4C78AC();
          swift_willThrowTypedImpl();
          v67 = swift_allocError();
          *(v69 + 8) = 0;
          *(v69 + 16) = 0;
          *v69 = 6;
          *(v69 + 24) = 0x80;
          goto LABEL_105;
        }

        goto LABEL_90;
      }

      *&v97 = v34;
      *(&v97 + 1) = BYTE6(v30);
      *&v98 = &v84;
      *(&v98 + 1) = &v84 + BYTE6(v30);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD298, &qword_1AE4ECE10);
      sub_1AE4EB230();
      v53 = v95;
LABEL_71:

      v83(v65, v53, v35, &v94);

      v23 = sub_1AE4AE3BC();
      v24 = v66;
      if (!v23)
      {
        goto LABEL_83;
      }
    }

    if (v31 != 2)
    {
      *(&v95 + 6) = 0;
      *&v95 = 0;
      if (v27 <= 0)
      {
        if ((v27 & 0x8000000000000000) == 0)
        {
          *&v97 = &v95;
          *(&v97 + 1) = &v95;
          *&v98 = 1;
          BYTE8(v98) = 64;
          sub_1AE4C78AC();
          swift_willThrowTypedImpl();
          v67 = swift_allocError();
          *v72 = &v95;
          *(v72 + 8) = &v95;
LABEL_95:
          *(v72 + 16) = 1;
          *(v72 + 24) = 64;
          goto LABEL_100;
        }

LABEL_129:
        __break(1u);
      }

LABEL_128:
      __break(1u);
      goto LABEL_129;
    }

    v38 = *(v29 + 16);
    v39 = *(v29 + 24);
    v40 = sub_1AE4EA990();
    if (v40)
    {
      v41 = v40;
      v42 = sub_1AE4EA9B0();
      if (__OFSUB__(v38, v42))
      {
        goto LABEL_123;
      }

      v43 = v38 - v42 + v41;
      v44 = __OFSUB__(v39, v38);
      v45 = v39 - v38;
      if (v44)
      {
        goto LABEL_115;
      }
    }

    else
    {
      v43 = 0;
      v44 = __OFSUB__(v39, v38);
      v45 = v39 - v38;
      if (v44)
      {
        goto LABEL_115;
      }
    }

    result = sub_1AE4EA9A0();
    if (result >= v45)
    {
      v54 = v45;
    }

    else
    {
      v54 = result;
    }

    v55 = v43 + v54;
    if (v43)
    {
      v56 = v55;
    }

    else
    {
      v56 = 0;
    }

    v57 = v56 - v43;
    if (v43)
    {
      v58 = v57;
    }

    else
    {
      v58 = 0;
    }

    a7 = v82;
    if (v58 < v28)
    {
      goto LABEL_118;
    }

    if (v28 < 0)
    {
      goto LABEL_119;
    }

    if (v58 <= v28)
    {
      goto LABEL_98;
    }

    if (!v43)
    {
      goto LABEL_131;
    }

    if (v57 <= v28)
    {
      goto LABEL_122;
    }

    goto LABEL_69;
  }

  if ((a3 & 1) == 0)
  {
    *&v97 = v13;
    *(&v97 + 1) = v12;
    v98 = xmmword_1AE4EC830;
    v99 = 64;
    sub_1AE4C9430();
    swift_willThrowTypedImpl();

    v19 = 0;
    v20 = 96;
    goto LABEL_107;
  }

  return result;
}

uint64_t sub_1AE4ADF90(uint64_t a1)
{
  v2 = a1;
  v42 = *MEMORY[0x1E69E9840];
  v3 = (*(a1 + 64))();
  v4 = v3;
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = v6 >> 62;
  if ((v6 >> 62) <= 1)
  {
    if (!v7)
    {
      v37[0] = *(v2 + 16);
      LOWORD(v37[1]) = v6;
      BYTE2(v37[1]) = BYTE2(v6);
      BYTE3(v37[1]) = BYTE3(v6);
      BYTE4(v37[1]) = BYTE4(v6);
      BYTE5(v37[1]) = BYTE5(v6);
      if (BYTE6(v6) >= v3)
      {
        *&v40 = v3;
        *(&v40 + 1) = BYTE6(v6);
        *&v41 = v37;
        *(&v41 + 1) = v37 + BYTE6(v6);
        goto LABEL_34;
      }

      __break(1u);
      goto LABEL_44;
    }

    goto LABEL_18;
  }

  if (v7 == 2)
  {
    v8 = *(v5 + 16);
    v9 = *(v5 + 24);
    v10 = sub_1AE4EA990();
    if (v10)
    {
      v11 = sub_1AE4EA9B0();
      if (__OFSUB__(v8, v11))
      {
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (v12)
    {
      goto LABEL_46;
    }

    v3 = sub_1AE4EA9A0();
    if (v3 >= v13)
    {
      v14 = v13;
    }

    else
    {
      v14 = v3;
    }

    if (v10)
    {
      v5 = v14;
    }

    else
    {
      v5 = 0;
    }

    if (v5 >= v4)
    {
LABEL_29:
      v19 = v14 + v10;
      if (!v10)
      {
        v19 = 0;
      }

      *&v40 = v4;
      *(&v40 + 1) = v5;
      *&v41 = v10;
      *(&v41 + 1) = v19;
      goto LABEL_34;
    }

    __break(1u);
LABEL_18:
    v15 = v5;
    v16 = v5 >> 32;
    v17 = v16 - v15;
    if (v16 < v15)
    {
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    v10 = sub_1AE4EA990();
    if (v10)
    {
      v18 = sub_1AE4EA9B0();
      if (__OFSUB__(v15, v18))
      {
        goto LABEL_49;
      }

      v10 += v15 - v18;
    }

    v3 = sub_1AE4EA9A0();
    if (v3 >= v17)
    {
      v14 = v17;
    }

    else
    {
      v14 = v3;
    }

    if (v10)
    {
      v5 = v14;
    }

    else
    {
      v5 = 0;
    }

    if (v5 < v4)
    {
      goto LABEL_47;
    }

    goto LABEL_29;
  }

  memset(v37, 0, 14);
  if (v3 > 0)
  {
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v40 = v3;
  *&v41 = v37;
  *(&v41 + 1) = v37;
LABEL_34:
  sub_1AE4A5694(v3);
  v24 = v20;
  if (v1)
  {
    v25 = v21;
    v26 = v22;
    v27 = v23;
    sub_1AE4C78AC();
    v28 = swift_allocError();
    *v29 = v24;
    *(v29 + 8) = v25;
    *(v29 + 16) = v26;
    *(v29 + 24) = v27;
  }

  else
  {
    sub_1AE4A65CC(v20);
    v30 = sub_1AE4AC038(v24);
    if (v30 == 6)
    {
      sub_1AE4C78AC();
      v31 = swift_allocError();
      *(v32 + 8) = 0;
      *(v32 + 16) = 0;
      *v32 = 0;
      *(v32 + 24) = 0x80;
      swift_willThrow();
      v28 = v31;
    }

    else
    {
      if (v30 >= 5)
      {
        v38 = v40;
        v39 = v41;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD298, &qword_1AE4ECE10);
        sub_1AE4EB230();
        return v2;
      }

      *&v39 = 0;
      v38 = 4uLL;
      BYTE8(v39) = 0x80;
      sub_1AE4C78AC();
      swift_willThrowTypedImpl();
      v28 = swift_allocError();
      *(v33 + 8) = 0;
      *(v33 + 16) = 0;
      *v33 = 4;
      *(v33 + 24) = 0x80;
    }
  }

  v37[2] = v28;
  v34 = v28;
  v35 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD290, &qword_1AE4EDB70);
  swift_dynamicCast();
  v2 = v40;
  v38 = v40;
  *&v39 = v41;
  BYTE8(v39) = BYTE8(v41);
  sub_1AE4C78AC();
  swift_willThrowTypedImpl();

  return v2;
}

uint64_t sub_1AE4AE3BC()
{
  result = 0;
  v25[4] = *MEMORY[0x1E69E9840];
  if (v0[3] < v0[2])
  {
    v2 = *v0;
    v3 = v0[1];
    MEMORY[0x1EEE9AC00](0);
    v24[2] = v0;
    v5 = *(v2 + 16);
    v6 = *(v2 + 24);
    v7 = v6 >> 62;
    if ((v6 >> 62) > 1)
    {
      if (v7 != 2)
      {
        memset(v25, 0, 14);
        if (v3 > 0)
        {
LABEL_21:
          __break(1u);
          goto LABEL_22;
        }

        v18 = *(v2 + 33);
        v19 = qword_1AE4ED448[v18];
        v20 = v19 * v4;
        if ((v19 * v4) >> 64 != (v19 * v4) >> 63)
        {
          goto LABEL_23;
        }

        v11 = v18;
        v12 = v25;
        v13 = v20;
        v14 = v3;
        v15 = 0;
LABEL_14:
        sub_1AE4A67C4(v11, v13, v14, v15, v25, v12);
        goto LABEL_15;
      }

      v16 = *(v5 + 16);
      v17 = *(v5 + 24);
    }

    else
    {
      if (!v7)
      {
        v25[0] = *(v2 + 16);
        LOWORD(v25[1]) = v6;
        BYTE2(v25[1]) = BYTE2(v6);
        BYTE3(v25[1]) = BYTE3(v6);
        BYTE4(v25[1]) = BYTE4(v6);
        BYTE5(v25[1]) = BYTE5(v6);
        if (BYTE6(v6) < v3)
        {
LABEL_19:
          __break(1u);
          goto LABEL_20;
        }

        v8 = *(v2 + 33);
        v9 = qword_1AE4ED448[v8];
        v10 = v9 * v4;
        if ((v9 * v4) >> 64 != (v9 * v4) >> 63)
        {
LABEL_22:
          __break(1u);
LABEL_23:
          __break(1u);
        }

        v11 = v8;
        v12 = v25 + BYTE6(v6);
        v13 = v10;
        v14 = v3;
        v15 = BYTE6(v6);
        goto LABEL_14;
      }

      v16 = v5;
      v17 = v5 >> 32;
      if (v5 >> 32 < v5)
      {
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }
    }

    sub_1AE4AE738(v16, v17, v6 & 0x3FFFFFFFFFFFFFFFLL, sub_1AE4AE854, v24, v3);
LABEL_15:

    v21 = v0[3];
    v22 = __OFADD__(v21, 1);
    v23 = v21 + 1;
    if (!v22)
    {
      v0[3] = v23;
    }

    __break(1u);
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_1AE4AE738(uint64_t a1, uint64_t a2, uint64_t a3, void *(*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5, uint64_t a6)
{
  result = sub_1AE4EA990();
  v12 = result;
  if (result)
  {
    result = sub_1AE4EA9B0();
    if (__OFSUB__(a1, result))
    {
LABEL_17:
      __break(1u);
      return result;
    }

    v12 += a1 - result;
  }

  v13 = __OFSUB__(a2, a1);
  v14 = a2 - a1;
  if (v13)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  result = sub_1AE4EA9A0();
  if (result >= v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = result;
  }

  if (v12)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  if (v16 < a6)
  {
    goto LABEL_16;
  }

  a4(&v21, a6);
  if (!v6)
  {
    return v21;
  }

  sub_1AE4C78AC();
  result = swift_allocError();
  *v17 = v18;
  *(v17 + 16) = v19;
  *(v17 + 24) = v20;
  return result;
}

uint64_t sub_1AE4AE874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v48 = a4;
  v5 = v4;
  v9 = sub_1AE4AC6E0(1919181168, 0xE400000000000000, 0, a1, a2, a3);
  if (v9)
  {
    v10 = v9;
    v11 = sub_1AE4A6A00(v9);
    if (v4)
    {
LABEL_7:
      v17 = v11;
      v18 = v12;
      v19 = v13;
      v20 = v14;
      *&v45 = v11;
      *(&v45 + 1) = v12;
      *&v46 = v13;
      BYTE8(v46) = v14;
      sub_1AE4C78AC();
      swift_willThrowTypedImpl();
LABEL_8:

LABEL_9:
      v21 = v20;
      *&v45 = v17;
      *(&v45 + 1) = v18;
      *&v46 = v19;
      *(&v46 + 1) = v20;
      v22 = 64;
      v47 = 64;
      sub_1AE4C9430();
      result = swift_willThrowTypedImpl();
LABEL_10:
      v24 = v48;
      *v48 = v17;
      v24[1] = v18;
      v24[2] = v19;
      v24[3] = v21;
      *(v24 + 32) = v22;
      return result;
    }

    v5 = 0;
    v42 = v10;
  }

  else
  {
    v42 = 0;
  }

  v15 = sub_1AE4AC6E0(1919181921, 0xE400000000000000, 0, a1, a2, a3);
  v16 = v15;
  if (v15)
  {
    v11 = sub_1AE4A6A00(v15);
    if (v5)
    {
      goto LABEL_7;
    }

    v5 = 0;
  }

  v25 = sub_1AE4AC6E0(1684632949, 0xE400000000000000, 0, a1, a2, a3);
  if (v25)
  {
    result = sub_1AE4AEC7C(v25, v26);
    v17 = result;
    v18 = v27;
    if (v5)
    {
      v19 = v28;
      v20 = v29;
      *&v45 = result;
      *(&v45 + 1) = v27;
      *&v46 = v28;
      BYTE8(v46) = v29;
      sub_1AE4C78AC();
      swift_willThrowTypedImpl();
      goto LABEL_8;
    }

    v5 = 0;
    v30 = v27 >> 62;
    if ((v27 >> 62) <= 1)
    {
      if (!v30)
      {
        if (BYTE6(v27) != 16)
        {
          goto LABEL_37;
        }

        goto LABEL_23;
      }

      if (!__OFSUB__(HIDWORD(result), result))
      {
        if (HIDWORD(result) - result != 16)
        {
          goto LABEL_37;
        }

LABEL_23:

        sub_1AE4A41E8(v17, v18);
        goto LABEL_24;
      }

LABEL_39:
      __break(1u);
      return result;
    }

    if (v30 == 2)
    {
      v32 = *(result + 16);
      v31 = *(result + 24);
      v33 = __OFSUB__(v31, v32);
      v34 = v31 - v32;
      if (v33)
      {
        __break(1u);
        goto LABEL_39;
      }

      if (v34 == 16)
      {
        goto LABEL_23;
      }
    }

LABEL_37:
    *&v46 = 0;
    v45 = 7uLL;
    v20 = 0x80;
    BYTE8(v46) = 0x80;
    sub_1AE4C78AC();
    swift_willThrowTypedImpl();

    sub_1AE4A41E8(v17, v18);
    v18 = 0;
    v19 = 0;
    v17 = 7;
    goto LABEL_9;
  }

LABEL_24:
  v35 = sub_1AE4AC6E0(1701667182, 0xE400000000000000, 0, a1, a2, a3);
  if (v35)
  {
    v36 = sub_1AE4AF28C(v35);
    v18 = v39;
    if (v5)
    {
LABEL_29:
      v17 = v36;
      v19 = v37;
      v20 = v38;
      *&v45 = v36;
      *(&v45 + 1) = v18;
      *&v46 = v37;
      BYTE8(v46) = v38;
      sub_1AE4C78AC();
      swift_willThrowTypedImpl();
      goto LABEL_8;
    }

    v5 = 0;
  }

  v40 = sub_1AE4AC6E0(1701603686, 0xE400000000000000, 0, a1, a2, a3);
  if (v40)
  {
    v36 = sub_1AE4AF28C(v40);
    v18 = v41;
    if (v5)
    {
      goto LABEL_29;
    }

    v5 = 0;
  }

  if (!(v16 | v42))
  {
    v45 = 0u;
    v46 = 0u;
    v22 = -64;
    v47 = -64;
    sub_1AE4C9430();
    result = swift_willThrowTypedImpl();
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v21 = 0;
    goto LABEL_10;
  }

  result = sub_1AE4AFAB0(1936156019, 0xE400000000000000, 0, a1, a2, a3, v43);
  if (v5)
  {
    v17 = v43[0];
    v18 = v43[1];
    v19 = v43[2];
    v21 = v43[3];
    v22 = v44;
    goto LABEL_10;
  }

  return result;
}

int64_t sub_1AE4AEC7C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v73 = *MEMORY[0x1E69E9840];
  v6 = sub_1AE4EAA30();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v64[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (*(a1 + 64))(a1, a2);
  v11 = v10;
  v12 = *(a1 + 16);
  v13 = *(a1 + 24);
  v14 = v13 >> 62;
  if ((v13 >> 62) <= 1)
  {
    if (v14)
    {
      goto LABEL_28;
    }

    v64[0] = *(a1 + 16);
    LOWORD(v64[1]) = v13;
    BYTE2(v64[1]) = BYTE2(v13);
    BYTE3(v64[1]) = BYTE3(v13);
    BYTE4(v64[1]) = BYTE4(v13);
    BYTE5(v64[1]) = BYTE5(v13);
    if (BYTE6(v13) < v10)
    {
      __break(1u);
      goto LABEL_59;
    }

    v69 = v10;
    v70 = BYTE6(v13);
    v71 = v64;
    v72 = v64 + BYTE6(v13);
    sub_1AE4A5694(v10);
    v19 = v15;
    if (v2)
    {
LABEL_48:
      v51 = v16;
      v52 = v17;
      v53 = v18;
      sub_1AE4C78AC();
      v54 = swift_allocError();
      *v55 = v19;
      *(v55 + 8) = v51;
      *(v55 + 16) = v52;
      *(v55 + 24) = v53;
LABEL_53:
      v64[0] = v54;
      v60 = v54;
      v61 = v54;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD290, &qword_1AE4EDB70);
      swift_dynamicCast();
      v62 = v69;
      v65 = v69;
      v66 = v70;
      v67 = v71;
      v68 = v72;
      sub_1AE4C78AC();
      swift_willThrowTypedImpl();

      return v62;
    }

    sub_1AE4A65CC(v15);
    v21 = v20;
    v11 = 0;
    v10 = sub_1AE4AC038(v19);
    v12 = v10;
    if (v10 == 6)
    {
      goto LABEL_50;
    }

    if (v10)
    {
LABEL_52:
      v66 = 0;
      v67 = 0;
      v65 = 5;
      v68 = 0x80;
      sub_1AE4C78AC();
      swift_willThrowTypedImpl();
      v54 = swift_allocError();
      *(v59 + 8) = 0;
      *(v59 + 16) = 0;
      *v59 = 5;
      *(v59 + 24) = 0x80;
      goto LABEL_53;
    }

    v3 = v71;
    if (v71)
    {
LABEL_56:
      v48 = v69;
      (*(v7 + 104))(v9, *MEMORY[0x1E6969010], v6);
      return sub_1AE4AB2E4(v3 + v48, v21, v9);
    }

    __break(1u);
  }

  if (v14 != 2)
  {
    memset(v64, 0, 14);
    if (v11 > 0)
    {
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
      goto LABEL_64;
    }

    v69 = v11;
    v70 = 0;
    v71 = v64;
    v72 = v64;
    v49 = v3;
    sub_1AE4A5694(v10);
    v19 = v50;
    if (v49)
    {
      goto LABEL_48;
    }

    sub_1AE4A65CC(v50);
    v21 = v56;
    result = sub_1AE4AC038(v19);
    if (result == 6)
    {
      goto LABEL_50;
    }

    if (result)
    {
      goto LABEL_52;
    }

    v3 = v71;
    if (!v71)
    {
      __break(1u);
      goto LABEL_67;
    }

    goto LABEL_56;
  }

  v63 = v7;
  v23 = *(v12 + 16);
  v22 = *(v12 + 24);
  v24 = sub_1AE4EA990();
  if (v24)
  {
    v25 = sub_1AE4EA9B0();
    if (__OFSUB__(v23, v25))
    {
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
    }

    v24 += v23 - v25;
  }

  v26 = __OFSUB__(v22, v23);
  v7 = v22 - v23;
  if (v26)
  {
    goto LABEL_61;
  }

  v27 = sub_1AE4EA9A0();
  if (v27 >= v7)
  {
    v28 = v7;
  }

  else
  {
    v28 = v27;
  }

  if (v24)
  {
    v29 = v28;
  }

  else
  {
    v29 = 0;
  }

  if (v29 < v11)
  {
    goto LABEL_62;
  }

  v30 = (v28 + v24);
  if (!v24)
  {
    v30 = 0;
  }

  v69 = v11;
  v70 = v29;
  v71 = v24;
  v72 = v30;
  v31 = v3;
  sub_1AE4A5694(v27);
  v19 = v32;
  if (v31)
  {
    goto LABEL_48;
  }

  sub_1AE4A65CC(v32);
  v21 = v33;
  v11 = 0;
  v34 = sub_1AE4AC038(v19);
  v12 = v34;
  if (v34 == 6)
  {
LABEL_50:
    sub_1AE4C78AC();
    v57 = swift_allocError();
    *(v58 + 8) = 0;
    *(v58 + 16) = 0;
    *v58 = 0;
    *(v58 + 24) = 0x80;
    swift_willThrow();
    v54 = v57;
    goto LABEL_53;
  }

  if (v34)
  {
    goto LABEL_52;
  }

  v3 = v71;
  if (v71)
  {
LABEL_45:
    v48 = v69;
    (*(v63 + 104))(v9, *MEMORY[0x1E6969010], v6);
    return sub_1AE4AB2E4(v3 + v48, v21, v9);
  }

  __break(1u);
LABEL_28:
  v63 = v7;
  v35 = v12;
  v36 = v12 >> 32;
  v37 = v36 - v35;
  if (v36 < v35)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v38 = sub_1AE4EA990();
  if (v38)
  {
    v39 = sub_1AE4EA9B0();
    if (__OFSUB__(v35, v39))
    {
      goto LABEL_65;
    }

    v38 += v35 - v39;
  }

  v40 = sub_1AE4EA9A0();
  if (v40 >= v37)
  {
    v41 = v37;
  }

  else
  {
    v41 = v40;
  }

  if (v38)
  {
    v42 = v41;
  }

  else
  {
    v42 = 0;
  }

  if (v42 < v11)
  {
    goto LABEL_63;
  }

  v43 = (v41 + v38);
  if (!v38)
  {
    v43 = 0;
  }

  v69 = v11;
  v70 = v42;
  v71 = v38;
  v72 = v43;
  v44 = v3;
  sub_1AE4A5694(v40);
  v19 = v45;
  if (v44)
  {
    goto LABEL_48;
  }

  sub_1AE4A65CC(v45);
  v21 = v46;
  result = sub_1AE4AC038(v19);
  if (result == 6)
  {
    goto LABEL_50;
  }

  if (result)
  {
    goto LABEL_52;
  }

  v3 = v71;
  if (v71)
  {
    goto LABEL_45;
  }

LABEL_67:
  __break(1u);
  return result;
}

int64_t sub_1AE4AF28C(uint64_t a1)
{
  v47 = *MEMORY[0x1E69E9840];
  v3 = (*(a1 + 64))();
  v4 = v3;
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = v6 >> 62;
  if ((v6 >> 62) <= 1)
  {
    if (!v7)
    {
      v39[0] = *(a1 + 16);
      LOWORD(v39[1]) = v6;
      BYTE2(v39[1]) = BYTE2(v6);
      BYTE3(v39[1]) = BYTE3(v6);
      BYTE4(v39[1]) = BYTE4(v6);
      BYTE5(v39[1]) = BYTE5(v6);
      if (BYTE6(v6) >= v3)
      {
        v43 = v3;
        v44 = BYTE6(v6);
        v45 = v39;
        v46 = (v39 + BYTE6(v6));
        goto LABEL_34;
      }

      __break(1u);
      goto LABEL_42;
    }

    goto LABEL_18;
  }

  if (v7 == 2)
  {
    v8 = *(v5 + 16);
    v9 = *(v5 + 24);
    v10 = sub_1AE4EA990();
    if (v10)
    {
      v11 = sub_1AE4EA9B0();
      if (__OFSUB__(v8, v11))
      {
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (v12)
    {
      goto LABEL_44;
    }

    v3 = sub_1AE4EA9A0();
    if (v3 >= v13)
    {
      v14 = v13;
    }

    else
    {
      v14 = v3;
    }

    if (v10)
    {
      v5 = v14;
    }

    else
    {
      v5 = 0;
    }

    if (v5 >= v4)
    {
LABEL_29:
      v19 = v14 + v10;
      if (!v10)
      {
        v19 = 0;
      }

      v43 = v4;
      v44 = v5;
      v45 = v10;
      v46 = v19;
      goto LABEL_34;
    }

    __break(1u);
LABEL_18:
    v15 = v5;
    v16 = v5 >> 32;
    v17 = v16 - v15;
    if (v16 < v15)
    {
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v10 = sub_1AE4EA990();
    if (v10)
    {
      v18 = sub_1AE4EA9B0();
      if (__OFSUB__(v15, v18))
      {
        goto LABEL_47;
      }

      v10 += v15 - v18;
    }

    v3 = sub_1AE4EA9A0();
    if (v3 >= v17)
    {
      v14 = v17;
    }

    else
    {
      v14 = v3;
    }

    if (v10)
    {
      v5 = v14;
    }

    else
    {
      v5 = 0;
    }

    if (v5 < v4)
    {
      goto LABEL_45;
    }

    goto LABEL_29;
  }

  memset(v39, 0, 14);
  if (v3 > 0)
  {
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v43 = v3;
  v44 = 0;
  v45 = v39;
  v46 = v39;
LABEL_34:
  sub_1AE4A5694(v3);
  v24 = v20;
  if (v1)
  {
    v25 = v21;
    v26 = v22;
    v27 = v23;
    sub_1AE4C78AC();
    v28 = swift_allocError();
    *v29 = v24;
    *(v29 + 8) = v25;
    *(v29 + 16) = v26;
    *(v29 + 24) = v27;
LABEL_39:
    v39[0] = v28;
    v35 = v28;
    v36 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD290, &qword_1AE4EDB70);
    swift_dynamicCast();
    v38 = v43;
    v41[0] = v43;
    v41[1] = v44;
    v41[2] = v45;
    v42 = v46;
    sub_1AE4C78AC();
    swift_willThrowTypedImpl();

    return v38;
  }

  sub_1AE4A65CC(v20);
  v31 = v30;
  v32 = sub_1AE4AC038(v24);
  if (v32 == 6)
  {
    sub_1AE4C78AC();
    v33 = swift_allocError();
    *(v34 + 8) = 0;
    *(v34 + 16) = 0;
    *v34 = 0;
    *(v34 + 24) = 0x80;
    swift_willThrow();
    v28 = v33;
    goto LABEL_39;
  }

  sub_1AE4AF684(v32, v31, v43, v44, v45, v46, &v40, v41);
  return v41[0];
}

void *sub_1AE4AF684@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  if (result != 2)
  {
    if (result == 1)
    {
      result = sub_1AE4AF8A4(a2);
      v14 = result;
      if (v8)
      {
        v15 = v13;
LABEL_16:
        *a7 = v14;
        *(a7 + 8) = v11;
        *(a7 + 16) = v12;
        *(a7 + 24) = v15;
        return result;
      }

      goto LABEL_23;
    }

    v14 = 3;
LABEL_15:
    v15 = 0x80;
    sub_1AE4C78AC();
    result = swift_willThrowTypedImpl();
    v11 = 0;
    v12 = 0;
    goto LABEL_16;
  }

  v16 = a6 - a5;
  if (!a5)
  {
    v16 = 0;
  }

  if (a3 < 0 || v16 < a3)
  {
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (a4 < 0 || v16 < a4)
  {
    goto LABEL_26;
  }

  if (a2 + 0x4000000000000000 < 0)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v17 = 2 * a2;
  if (a4 - a3 < 2 * a2)
  {
    v14 = 1;
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD298, &qword_1AE4ECE10);
  result = sub_1AE4EB230();
  v20 = v21 + v17;
  if (__OFADD__(v21, v17))
  {
    goto LABEL_28;
  }

  if (v20 < v21)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v21 < a3)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v20 > a4)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD2B0, &qword_1AE4ECE20);
  sub_1AE4AC078(&qword_1EB5DD2B8, &qword_1EB5DD2B0, &qword_1AE4ECE20, &unk_1AE4EE12C);
  sub_1AE4C915C();
  result = sub_1AE4EADB0();
  if (!v11)
  {
LABEL_32:
    __break(1u);
    return result;
  }

  v14 = result;
LABEL_23:
  *a8 = v14;
  a8[1] = v11;
  return result;
}

void *sub_1AE4AF8A4(int64_t a1)
{
  v3 = sub_1AE4EAD70();
  result = MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = *v1;
  v6 = v1[2];
  if (v6)
  {
    v7 = v1[3] - v6;
  }

  else
  {
    v7 = 0;
  }

  if (v5 < 0 || v7 < v5)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v8 = v1[1];
  if (v8 < 0 || v7 < v8)
  {
    goto LABEL_18;
  }

  if (v8 - v5 >= a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD298, &qword_1AE4ECE10);
    result = sub_1AE4EB230();
    if (!__OFADD__(v12, a1))
    {
      if (v12 + a1 >= v12)
      {
        sub_1AE4EAD60();
        sub_1AE4AC078(&qword_1EB5DD158, &qword_1EB5DD298, &qword_1AE4ECE10, MEMORY[0x1E69E74E8]);
        v10 = sub_1AE4EAD50();
        if (v11)
        {
          v9 = v10;
          sub_1AE4A97B4(a1);
        }

        else
        {
          sub_1AE4C78AC();
          swift_willThrowTypedImpl();
          return 0;
        }

        return v9;
      }

      goto LABEL_20;
    }

LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v6)
  {
    v9 = v6 + v5;
    sub_1AE4C78AC();
    swift_willThrowTypedImpl();
    return v9;
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1AE4AFB10@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v10 = qword_1AE4ED448[*(*a5 + 33)];
  v11 = a5[3];
  if ((v10 * v11) >> 64 == (v10 * v11) >> 63)
  {
    result = sub_1AE4A67C4(*(*a5 + 33), v10 * v11, result, a2, a3, a4);
    if (v7)
    {
      *a6 = result;
      *(a6 + 8) = v12;
      *(a6 + 16) = v13;
      *(a6 + 24) = v14;
    }

    else
    {
      *a7 = result;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

int64_t sub_1AE4AFB98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = v4;
  v9 = sub_1AE4AC6E0(1684632949, 0xE400000000000000, 0, a1, a2, a3);
  if (!v9)
  {
    goto LABEL_11;
  }

  result = sub_1AE4AEC7C(v9, v10);
  v15 = result;
  v16 = v12;
  if (v4)
  {
LABEL_14:
    v25 = v13;
    v26 = v14;
    sub_1AE4C78AC();
    swift_willThrowTypedImpl();

LABEL_22:
    sub_1AE4C9430();
    result = swift_willThrowTypedImpl();
    *a4 = v15;
    a4[1] = v16;
    a4[2] = v25;
    a4[3] = v26;
    *(a4 + 32) = 64;
    return result;
  }

  v5 = 0;
  v17 = v12 >> 62;
  if ((v12 >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(result + 16);
      v18 = *(result + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v21 == 16)
      {
        goto LABEL_10;
      }
    }

LABEL_20:
    v26 = 0x80;
    sub_1AE4C78AC();
    swift_willThrowTypedImpl();

    sub_1AE4A41E8(v15, v16);
    v16 = 0;
    v25 = 0;
    v15 = 7;
    goto LABEL_22;
  }

  if (!v17)
  {
    if (BYTE6(v12) != 16)
    {
      goto LABEL_20;
    }

    goto LABEL_10;
  }

  if (__OFSUB__(HIDWORD(result), result))
  {
LABEL_32:
    __break(1u);
    return result;
  }

  if (HIDWORD(result) - result != 16)
  {
    goto LABEL_20;
  }

LABEL_10:

  sub_1AE4A41E8(v15, v16);
LABEL_11:
  v22 = sub_1AE4AC6E0(1701667182, 0xE400000000000000, 0, a1, a2, a3);
  if (!v22)
  {
    v26 = 96;
    sub_1AE4C78AC();
    swift_willThrowTypedImpl();
    v25 = 0;
    v16 = 0xE400000000000000;
    v15 = 1701667182;
    goto LABEL_22;
  }

  v23 = sub_1AE4AF28C(v22);
  v16 = v24;
  if (v5)
  {
    v15 = v23;
    goto LABEL_14;
  }

  v15 = 1702521203;

  v27 = sub_1AE4AC6E0(1702521203, 0xE400000000000000, 0, a1, a2, a3);
  if (!v27 || (sub_1AE4A6A00(v27), (, v15 = 1702523750, (v28 = sub_1AE4AC6E0(1702523750, 0xE400000000000000, 0, a1, a2, a3)) == 0) || (sub_1AE4A6A00(v28), (v15 = 1919181168, , (v29 = sub_1AE4AC6E0(1919181168, 0xE400000000000000, 0, a1, a2, a3)) == 0) || (sub_1AE4A6A00(v29), v15 = 1836213616, , (v30 = sub_1AE4AC6E0(1836213616, 0xE400000000000000, 0, a1, a2, a3)) == 0))))
  {
    v26 = 96;
    sub_1AE4C78AC();
    swift_willThrowTypedImpl();
    v25 = 0;
    v16 = 0xE400000000000000;
    goto LABEL_22;
  }

  sub_1AE4A6A00(v30);
}

uint64_t sub_1AE4AFFA4(uint64_t result)
{
  v2 = *v1;
  v3 = v1[2];
  v4 = v1[3];
  v5 = v4 - v3;
  if (!v3)
  {
    v5 = 0;
  }

  if (v2 < 0 || v5 < v2)
  {
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v6 = v1[1];
  if (v6 < 0 || v5 < v6)
  {
    goto LABEL_17;
  }

  if (v6 - v2 <= 1)
  {
    if (v3)
    {
      v7 = v3 + v2;
      sub_1AE4C78AC();
      swift_willThrowTypedImpl();
      return v7;
    }

    goto LABEL_18;
  }

  if (v3)
  {
    v8 = bswap32(*(v3 + v2)) >> 16;
    if (result)
    {
      LOWORD(v7) = v8;
    }

    else
    {
      LOWORD(v7) = *(v3 + v2);
    }

    *v1 = sub_1AE4A7CA4(2uLL, v2, v6, v3, v4);
    v1[1] = v9;
    v1[2] = v10;
    v1[3] = v11;
    return v7;
  }

LABEL_19:
  __break(1u);
  return result;
}