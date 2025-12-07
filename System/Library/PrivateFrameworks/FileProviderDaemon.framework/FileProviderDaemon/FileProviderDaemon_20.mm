void sub_1CF265FAC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, void (*a7)(void, void))
{
  v13 = ~a6;
  v32 = fpfs_adopt_log();
  swift_beginAccess();
  v14 = sub_1CF8DD040(a4);
  swift_endAccess();

  if (v13)
  {
    v15 = a7;
    v16 = sub_1CF25CE44(v34);
    v17 = sub_1CF598538(v33, a5, a6);
    if (*v18)
    {
    }

    (v17)(v33, 0);
    (v16)(v34, 0);
    swift_beginAccess();
    v19 = *(a3 + 200);
    a7 = v15;
    if (*(v19 + 16))
    {
      v20 = sub_1CF7BF2C0(a5, a6);
      if (v21)
      {
        v22 = *(*(v19 + 56) + 8 * v20);
        if ((v22 & 0xC000000000000001) == 0)
        {
          if (*v22->tree)
          {
            goto LABEL_9;
          }

          goto LABEL_8;
        }

        v23 = sub_1CF9E7818();
        v22, v24, v25, v26, v27, v28, v29, v30;
        if (!v23)
        {
LABEL_8:
          swift_beginAccess();
          sub_1CF1C8E4C(0, a5, a6);
          swift_endAccess();
        }
      }
    }
  }

LABEL_9:
  a7(a4, a1);
  v31 = fpfs_adopt_log();
}

uint64_t sub_1CF2661C0(uint64_t a1, void *a2, void (*a3)(uint64_t *__return_ptr, void *, char *), uint64_t a4)
{
  v9 = sub_1CF9E5A58();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = a1;
  if (!a1)
  {
    return 2;
  }

  v13 = objc_sync_enter(a2);
  if (v13)
  {
    goto LABEL_17;
  }

  v14 = a2[20];

  v15 = objc_sync_exit(a2);
  if (v15)
  {
    MEMORY[0x1EEE9AC00](v15);
    *(&v52 - 2) = a2;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, (&v52 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  v16 = *(v14 + OBJC_IVAR____TtC18FileProviderDaemon14VFSLookupScope_rootURLs);

  v56 = *v16->tree;
  if (!v56)
  {
    v16, v17, v18, v19, v20, v21, v22, v23;
    return 2;
  }

  v52 = a4;
  v53 = a3;
  v24 = 0;
  v25 = *(v10 + 80);
  v54 = v4;
  v55 = v16 + ((v25 + 32) & ~v25);
  v26 = (v10 + 8);
  while (1)
  {
    if (v24 >= *v16->tree)
    {
      __break(1u);
LABEL_17:
      MEMORY[0x1EEE9AC00](v13);
      *(&v52 - 2) = a2;
      fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, (&v52 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
    }

    (*(v10 + 16))(v12, &v55[*(v10 + 72) * v24], v9);
    sub_1CF9E5A18();
    v35 = v34;
    sub_1CF9E6978();
    v35, v36, v37, v38, v39, v40, v41, v42;
    a2 = fpfs_path_relative_to();

    if (a2)
    {
      if (*a2)
      {
        break;
      }
    }

    ++v24;
    v13 = (*v26)(v12, v9);
    if (v56 == v24)
    {
      v16, v27, v28, v29, v30, v31, v32, v33;
      return 2;
    }
  }

  v16, v43, v44, v45, v46, v47, v48, v49;
  v50 = v54;
  v53(&v58, a2, v12);
  if (v50)
  {
    return (*v26)(v12, v9);
  }

  (*v26)(v12, v9);
  return v58;
}

uint64_t sub_1CF2664E0(uint64_t a1, void *a2, void (*a3)(uint64_t *__return_ptr, void *, char *), uint64_t a4)
{
  v9 = sub_1CF9E5A58();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = a1;
  if (!a1)
  {
    return 0;
  }

  v13 = objc_sync_enter(a2);
  if (v13)
  {
    goto LABEL_17;
  }

  v14 = a2[20];

  v15 = objc_sync_exit(a2);
  if (v15)
  {
    MEMORY[0x1EEE9AC00](v15);
    *(&v52 - 2) = a2;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, (&v52 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  v16 = *(v14 + OBJC_IVAR____TtC18FileProviderDaemon14VFSLookupScope_rootURLs);

  v56 = *v16->tree;
  if (!v56)
  {
    v16, v17, v18, v19, v20, v21, v22, v23;
    return 0;
  }

  v52 = a4;
  v53 = a3;
  v24 = 0;
  v25 = *(v10 + 80);
  v54 = v4;
  v55 = v16 + ((v25 + 32) & ~v25);
  v26 = (v10 + 8);
  while (1)
  {
    if (v24 >= *v16->tree)
    {
      __break(1u);
LABEL_17:
      MEMORY[0x1EEE9AC00](v13);
      *(&v52 - 2) = a2;
      fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, (&v52 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
    }

    (*(v10 + 16))(v12, &v55[*(v10 + 72) * v24], v9);
    sub_1CF9E5A18();
    v35 = v34;
    sub_1CF9E6978();
    v35, v36, v37, v38, v39, v40, v41, v42;
    a2 = fpfs_path_relative_to();

    if (a2)
    {
      if (*a2)
      {
        break;
      }
    }

    ++v24;
    v13 = (*v26)(v12, v9);
    if (v56 == v24)
    {
      v16, v27, v28, v29, v30, v31, v32, v33;
      return 0;
    }
  }

  v16, v43, v44, v45, v46, v47, v48, v49;
  v50 = v54;
  v53(&v58, a2, v12);
  if (v50)
  {
    return (*v26)(v12, v9);
  }

  (*v26)(v12, v9);
  return v58;
}

uint64_t sub_1CF266814@<X0>(_BYTE *a2@<X8>)
{
  result = fpfs_pkg_system_relative_lookup();
  *a2 = 0;
  return result;
}

uint64_t sub_1CF266888@<X0>(BOOL *a3@<X8>)
{
  result = fpfs_pkg_system_relative_lookup();
  *a3 = 0;
  return result;
}

uint64_t sub_1CF266978(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1CF9E63D8();
  v36 = *(v8 - 8);
  v37 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v35 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v34 - v14;
  v16 = *a1;
  LODWORD(v39) = *(a1 + 8);
  v17 = *(v4 + 216);
  v18 = *(v4 + 224);
  v40 = v16;
  v41 = v17;
  v19 = sub_1CF9E6448();
  v20 = *(v19 - 8);
  (*(v20 + 56))(v15, 1, 1, v19);
  v21 = swift_allocObject();
  *(v21 + 16) = a2;
  *(v21 + 24) = a3;
  v22 = swift_allocObject();
  v23 = v40;
  *(v22 + 16) = v4;
  *(v22 + 24) = v23;
  *(v22 + 32) = v39;
  *(v22 + 40) = a2;
  *(v22 + 48) = a3;
  v24 = swift_allocObject();
  v24[2] = sub_1CF2BA174;
  v24[3] = v21;
  v24[4] = v18;
  swift_retain_n();
  v39 = v41;

  v40 = v21;

  v25 = fpfs_current_log();
  v38 = *(v18 + 16);
  v41 = v15;
  sub_1CEFCCBDC(v15, v12, &unk_1EC4BE370, qword_1CFA01B30);
  if ((*(v20 + 48))(v12, 1, v19) == 1)
  {
    sub_1CEFCCC44(v12, &unk_1EC4BE370, qword_1CFA01B30);
    v26 = QOS_CLASS_UNSPECIFIED;
  }

  else
  {
    v27 = v35;
    sub_1CF9E6438();
    (*(v20 + 8))(v12, v19);
    v26 = sub_1CF9E63C8();
    (*(v36 + 8))(v27, v37);
  }

  v28 = swift_allocObject();
  v28[2] = v25;
  v28[3] = sub_1CF2B1644;
  v28[4] = v22;
  v46 = sub_1CF2BA17C;
  v47 = v28;
  aBlock = MEMORY[0x1E69E9820];
  v43 = 1107296256;
  v44 = sub_1CEFCA444;
  v45 = &block_descriptor_977;
  v29 = _Block_copy(&aBlock);
  v30 = v25;

  v46 = sub_1CF2BA180;
  v47 = v24;
  aBlock = MEMORY[0x1E69E9820];
  v43 = 1107296256;
  v44 = sub_1CEFCA444;
  v45 = &block_descriptor_980;
  v31 = _Block_copy(&aBlock);

  v32 = v39;
  fp_task_tracker_async_and_qos(v38, v39, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v26, v29, v31);
  _Block_release(v31);
  _Block_release(v29);

  return sub_1CEFCCC44(v41, &unk_1EC4BE370, qword_1CFA01B30);
}

void sub_1CF266E1C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void, __n128))
{
  swift_beginAccess();
  v8 = *(a1 + 200);
  if (*(v8 + 16) && (v9 = sub_1CF7BF2C0(a2, a3), (v10 & 1) != 0))
  {
    v26 = a4;
    v11 = *(*(v8 + 56) + 8 * v9);
    if ((v11 & 0xC000000000000001) != 0)
    {

      sub_1CF9E7808();
      sub_1CEFD57E0(0, &unk_1EDEA3640, 0x1E696ABF8);
      sub_1CF2B1654(&unk_1EC4BEDB0, &unk_1EDEA3640, 0x1E696ABF8, MEMORY[0x1E69E81B8]);
      sub_1CF9E7038();
      v11 = v28;
      v12 = v29;
      v13 = v30;
      v14 = v31;
      v15 = v32;
    }

    else
    {
      v16 = -1 << *(v11 + 32);
      v12 = v11 + 56;
      v13 = ~v16;
      v17 = -v16;
      if (v17 < 64)
      {
        v18 = ~(-1 << v17);
      }

      else
      {
        v18 = -1;
      }

      v15 = v18 & *(v11 + 56);

      v14 = 0;
    }

    v25 = v13;
    v19 = (v13 + 64) >> 6;
    if (v11 < 0)
    {
      goto LABEL_16;
    }

    while (1)
    {
      v20 = v14;
      v21 = v15;
      v22 = v14;
      if (!v15)
      {
        break;
      }

LABEL_14:
      v23 = (v21 - 1) & v21;
      v24 = *(*(v11 + 48) + ((v22 << 9) | (8 * __clz(__rbit64(v21)))));
      if (!v24)
      {
LABEL_20:
        sub_1CEFCB59C(v11);
        a4 = v26;
        goto LABEL_21;
      }

      while (1)
      {
        [v24 cancel];

        v14 = v22;
        v15 = v23;
        if ((v11 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_16:
        if (sub_1CF9E7838())
        {
          sub_1CEFD57E0(0, &unk_1EDEA3640, 0x1E696ABF8);
          swift_dynamicCast();
          v24 = v27;
          v22 = v14;
          v23 = v15;
          if (v27)
          {
            continue;
          }
        }

        goto LABEL_20;
      }
    }

    while (1)
    {
      v22 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v22 >= v19)
      {
        goto LABEL_20;
      }

      v21 = *(v12 + 8 * v22);
      ++v20;
      if (v21)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_21:
    (a4)(0);
  }
}

void sub_1CF26709C(_TtC18FileProviderDaemon8FSTester *a1, uint64_t a2, unsigned int a3, void (*a4)(void *, uint64_t), uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t), uint64_t a8)
{
  v276 = a7;
  v277 = a8;
  v298 = *MEMORY[0x1E69E9840];
  v14 = sub_1CF9E5868();
  v264 = *(v14 - 8);
  v265 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v263 = &v253 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v267 = &v253 - v17;
  v271 = sub_1CF9E5A58();
  v273 = *(v271 - 8);
  MEMORY[0x1EEE9AC00](v271);
  v270 = &v253 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v253 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v279 = &v253 - v23;
  v278 = type metadata accessor for VFSItem(0);
  v280 = *(v278 - 1);
  MEMORY[0x1EEE9AC00](v278);
  v275 = (&v253 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v268 = sub_1CF9E53C8();
  *&v262 = *(v268 - 1);
  MEMORY[0x1EEE9AC00](v268);
  *&v261 = &v253 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1CF9E6118();
  v259 = *(v26 - 8);
  v260 = v26;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v253 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v281 = a2;
  v285 = a2;
  v282 = a3;
  LOBYTE(v286) = a3;
  v293 = 0u;
  v291 = 0u;
  v292 = 0u;
  v289 = 0u;
  v290 = 0u;
  v288 = 0u;
  v283 = a1;
  sub_1CEFDAA48(&v285, &v288, v297, v29, v30, v31, v32, v33, v34);
  v35 = *v297;
  *&v297[32], v36, v37, v38, v39, v40, v41, v42;
  if (!v35)
  {
    a4(0, 0);
    return;
  }

  v43 = a4;
  v269 = a5;
  v274 = a6;
  v272 = v35;
  if (!a6 || (type metadata accessor for VFSDirectoryLister(0), (v44 = swift_dynamicCastClass()) == 0))
  {
    v47 = v283;
    v48 = objc_sync_enter(v283);
    if (v48)
    {
      MEMORY[0x1EEE9AC00](v48);
      v249 = &v253 - 4;
      *(&v253 - 2) = v47;
      goto LABEL_97;
    }

    *&v262 = v21;
    v266 = a4;
    isa = v47[5].super.isa;

    v50 = objc_sync_exit(v47);
    if (v50)
    {
      MEMORY[0x1EEE9AC00](v50);
      v250 = &v253 - 4;
      *(&v253 - 2) = v283;
      goto LABEL_99;
    }

    swift_beginAccess();
    v51 = *(isa + 12);

    v52 = 0;
    v53 = 1 << *(v51 + 32);
    v54 = -1;
    if (v53 < 64)
    {
      v54 = ~(-1 << v53);
    }

    v55 = v54 & *(v51 + 64);
    v56 = (v53 + 63) >> 6;
    v57 = v282 == 2;
    v58 = v281 == 1 && v282 == 2;
    LODWORD(v260) = v58;
    if (v281)
    {
      v57 = 0;
    }

    LODWORD(v259) = v57;
    v268 = (v280 + 48);
    v261 = xmmword_1CF9FA450;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          while (1)
          {
            if (v55)
            {
              goto LABEL_24;
            }

            do
            {
              v59 = v52 + 1;
              if (__OFADD__(v52, 1))
              {
                __break(1u);
              }

              if (v59 >= v56)
              {

                v43 = v266;
                v21 = v262;
                goto LABEL_42;
              }

              v55 = *(v51 + 64 + 8 * v59);
              ++v52;
            }

            while (!v55);
            v52 = v59;
LABEL_24:
            v60 = __clz(__rbit64(v55));
            v55 &= v55 - 1;
            v61 = v60 | (v52 << 6);
            v62 = *(v51 + 48) + 16 * v61;
            v63 = *v62;
            v64 = *(v62 + 8);
            v65 = *(v51 + 56) + 32 * v61;
            v66 = *v65;
            v67 = *(v65 + 24);
            if (*(v65 + 8))
            {
              break;
            }

            if (!v282 && v66 == v281)
            {
              goto LABEL_36;
            }
          }

          if (*(v65 + 8) != 1)
          {
            break;
          }

          if (v282 == 1 && v66 == v281)
          {
            goto LABEL_36;
          }
        }

        if (!v66)
        {
          break;
        }

        if (v260)
        {
          goto LABEL_36;
        }
      }

      if (v259)
      {
LABEL_36:
        v285 = v63;
        LOBYTE(v286) = v64;
        v293 = 0u;
        v291 = 0u;
        v292 = 0u;
        v289 = 0u;
        v290 = 0u;
        v288 = 0u;

        sub_1CEFDAA48(&v285, &v288, v297, v68, v69, v70, v71, v72, v73);
        v67, v74, v75, v76, v77, v78, v79, v80;
        v81 = *&v297[32];
        v82 = *v297;
        v297[0] = 1;
        v288 = v82;
        v289 = *&v297[16];
        *&v290 = *&v297[32];
        v83 = v279;
        sub_1CF263024(v297, &v288, 1, v279);
        v81, v84, v85, v86, v87, v88, v89, v90;
        if ((*v268)(v83, 1, v278) == 1)
        {
          sub_1CEFCCC44(v83, &unk_1EC4BEC00, &unk_1CF9FCB60);
        }

        else
        {
          v91 = v83;
          v92 = v275;
          sub_1CEFE4C60(v91, v275, type metadata accessor for VFSItem);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED90, &unk_1CFA00770);
          v93 = (*(v280 + 80) + 32) & ~*(v280 + 80);
          v94 = swift_allocObject();
          *(v94 + 16) = v261;
          sub_1CEFD90AC(v92, v94 + v93, type metadata accessor for VFSItem);
          LOBYTE(v93) = v276(v94);
          v94, v95, v96, v97, v98, v99, v100, v101;
          if (v93)
          {
            v266(0, 0);

            sub_1CEFE5888(v92, type metadata accessor for VFSItem);
            return;
          }

          sub_1CEFE5888(v92, type metadata accessor for VFSItem);
        }
      }
    }
  }

  v45 = v44;
  swift_beginAccess();
  if (*(v45 + 24) == v35)
  {
    swift_retain_n();
    goto LABEL_6;
  }

  v130 = v282;
  swift_retain_n();
  if (v130 != 2 || v281)
  {

    sub_1CF510E7C("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/tree/VFSFileTree.swift", 123, 2, 978, v281, v282, v45);
  }

  v131 = v283;
  sub_1CF262924(0);
  v177 = *(v45 + 24);
  v178 = objc_sync_enter(v131);
  if (v178)
  {
    MEMORY[0x1EEE9AC00](v178);
    v249 = &v253 - 4;
    *(&v253 - 2) = v131;
    goto LABEL_97;
  }

  v179 = v21;
  v266 = a4;
  v180 = v131[5].super.isa;

  v181 = objc_sync_exit(v131);
  if (v181)
  {
    MEMORY[0x1EEE9AC00](v181);
    v250 = &v253 - 4;
    *(&v253 - 2) = v131;
    goto LABEL_99;
  }

  v182 = *(v180 + 5);
  v183 = *(v180 + 48);

  if ((v183 & 1) != 0 || v177 != v182)
  {

    v204 = fpfs_current_or_default_log();
    sub_1CF9E6128();

    v205 = v283;

    v206 = sub_1CF9E6108();
    v207 = sub_1CF9E72A8();
    if (!os_log_type_enabled(v206, v207))
    {

      (*(v259 + 8))(v28, v260);
      v176 = v266;
LABEL_80:
      LODWORD(v288) = 70;
      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CF2A9448(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
      v228 = v261;
      v229 = v268;
      sub_1CF9E57D8();
      v230 = sub_1CF9E53A8();
      (*(v262 + 8))(v228, v229);
      swift_willThrow();
      v153 = v230;

      goto LABEL_81;
    }

    v208 = swift_slowAlloc();
    v209 = swift_slowAlloc();
    *v297 = v209;
    *v208 = 134218754;
    *(v208 + 4) = *(v45 + 24);

    *(v208 + 12) = 2048;
    if (!objc_sync_enter(v205))
    {
      v210 = v205[5].super.isa;

      if (!objc_sync_exit(v205))
      {
        v211 = *(v210 + 5);
        v212 = *(v210 + 48);

        if (v212)
        {
          v213 = 0;
        }

        else
        {
          v213 = v211;
        }

        *(v208 + 14) = v213;

        *(v208 + 22) = 2048;
        *(v208 + 24) = v272;
        *(v208 + 32) = 2080;
        *&v288 = 0;
        BYTE8(v288) = 2;
        v215 = VFSItemID.description.getter(v214);
        v217 = v216;
        v218 = sub_1CEFD0DF0(v215, v216, v297);
        v217, v219, v220, v221, v222, v223, v224, v225;
        *(v208 + 34) = v218;
        _os_log_impl(&dword_1CEFC7000, v206, v207, "ESTALE: root/trash changed during enumeration. %llu, %llu, %llu, %s", v208, 0x2Au);
        __swift_destroy_boxed_opaque_existential_1(v209);
        MEMORY[0x1D386CDC0](v209, -1, -1);
        MEMORY[0x1D386CDC0](v208, -1, -1);

        (*(v259 + 8))(v28, v260);
        v176 = v266;
        goto LABEL_80;
      }

      MEMORY[0x1EEE9AC00](v252);
      v250 = &v253 - 4;
      *(&v253 - 2) = v205;
LABEL_99:
      fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v250, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
    }

    MEMORY[0x1EEE9AC00](v251);
    v249 = &v253 - 4;
    *(&v253 - 2) = v205;
LABEL_97:
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v249, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v272 = *(v45 + 24);
  v21 = v179;
  v43 = v266;
LABEL_6:
  v46 = sub_1CF25F010();

  if (v46)
  {
    if (*(v45 + 64))
    {
    }

    else
    {
      *(v45 + 64) = v46;
    }
  }

  else
  {
  }

LABEL_42:
  v102 = v283;
  v103 = [objc_opt_self() defaultStore];
  v104 = [v103 vfsDirectoryListerLimit];

  v105 = objc_sync_enter(v102);
  if (v105)
  {
    MEMORY[0x1EEE9AC00](v105);
    v249 = &v253 - 4;
    *(&v253 - 2) = v102;
    goto LABEL_97;
  }

  v106 = v102[5].super.isa;

  v107 = objc_sync_exit(v102);
  v108 = v274;
  if (v107)
  {
    MEMORY[0x1EEE9AC00](v107);
    v250 = &v253 - 4;
    *(&v253 - 2) = v102;
    goto LABEL_99;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  v110 = v102[9].super.isa;
  v111 = *v102[4]._anon_8;
  v113 = *(v111 + 16);
  v112 = *(v111 + 24);
  v260 = v113;
  *&v261 = v110;
  v283 = v112;
  v280 = Strong;
  LODWORD(v268) = v104;
  if (v108 && (type metadata accessor for VFSDirectoryLister(0), (v114 = swift_dynamicCastClass()) != 0))
  {
    v279 = v114;
    v115 = v43;
  }

  else
  {
    v115 = v43;
    v279 = 0;
  }

  v116 = *v102[5].tester;
  v274 = *v102[5].tree;
  v275 = v116;

  v278 = sub_1CF25F010();
  type metadata accessor for VFSDirectoryLister(0);
  v117 = swift_allocObject();
  *(v117 + 96) = 0;
  *(v117 + 104) = 0;
  0, v118, v119, v120, v121, v122, v123, v124;
  *v297 = v272;
  memset(&v297[8], 0, 32);
  v125 = *(v106 + 4);
  v285 = v272;
  v286 = 0u;
  v287 = 0u;
  v284[0] = -1;
  v126 = fpfs_openfdbyhandle();
  if (v126 < 0)
  {
    v128 = v284[0];
    v129 = MEMORY[0x1D38683F0]();
    if (v128 < 0)
    {
      LODWORD(v288) = 0;
      BYTE4(v288) = 1;
    }

    else
    {
      LODWORD(v288) = v284[0];
      BYTE4(v288) = 0;
    }

    BYTE8(v290) = 0;
    v151 = sub_1CF19BBE4(v129, &v288);
    sub_1CF1969CC(&v288);
    v152 = v278;
    swift_willThrow();
    v153 = v151;
    v283, v154, v155, v156, v157, v158, v159, v160;
    v275, v161, v162, v163, v164, v165, v166, v167;
    v168 = v151;
    LODWORD(v288) = sub_1CF9E5308();
    sub_1CF196978();
    sub_1CF9E5658();
    sub_1CF255928(v297);
    swift_unknownObjectRelease();

    *(v117 + 104), v169, v170, v171, v172, v173, v174, v175;
    swift_deallocPartialClassInstance();
    v176 = v115;
LABEL_81:
    v231 = v153;
    LODWORD(v288) = sub_1CF9E5378();
    sub_1CF196978();
    v232 = sub_1CF9E5658();

    if (v232)
    {

      v176(0, 0);
    }

    else
    {
      v233 = v153;
      LODWORD(v288) = sub_1CF9E5358();
      v234 = sub_1CF9E5658();

      if (v234)
      {

        sub_1CF2B15E0(&v288);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
        sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50, &unk_1CFA13B50);
        v153 = swift_allocError();
        *v235 = v288;
        v236 = v292;
        v238 = v289;
        v237 = v290;
        *(v235 + 48) = v291;
        *(v235 + 64) = v236;
        *(v235 + 16) = v238;
        *(v235 + 32) = v237;
        v240 = v294;
        v239 = v295;
        v241 = v293;
        *(v235 + 128) = v296;
        *(v235 + 96) = v240;
        *(v235 + 112) = v239;
        *(v235 + 80) = v241;
        v176(v153, 1);
      }

      else
      {
        v242 = v153;
        LODWORD(v288) = sub_1CF9E5328();
        v243 = sub_1CF9E5658();

        if (v243)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
          sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50, &unk_1CFA13B50);
          v244 = swift_allocError();
          *v245 = v281;
          *(v245 + 8) = v282;
          *(v245 + 16) = 0u;
          *(v245 + 32) = 0u;
          *(v245 + 48) = 0u;
          *(v245 + 64) = 0u;
          *(v245 + 80) = 0u;
          *(v245 + 96) = 0u;
          *(v245 + 112) = v153;
          *(v245 + 120) = 0;
          sub_1CF2A8DE0(v245);
          v246 = v153;
          v176(v244, 1);
          v247 = v244;
        }

        else
        {
          v248 = v153;
          v176(v153, 1);
          v247 = v153;
        }
      }
    }

    return;
  }

  v127 = v126;
  sub_1CF19811C(v126, v297, v125, 1, v21);
  v266 = v115;
  close(v127);
  sub_1CF255928(v297);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE798, &qword_1CF9FE660);
  v132 = v21;
  v133 = swift_allocObject();
  v262 = xmmword_1CF9FA450;
  *(v133 + 16) = xmmword_1CF9FA450;
  *(v133 + 32) = v272;
  v255 = *(v106 + 4);
  os_unfair_lock_lock(v106 + 14);
  v134 = *(v106 + 9);
  v259 = *(v106 + 8);
  v135 = *(v106 + 10);
  v136 = *(v106 + 88);
  v257 = *(v106 + 89);
  v258 = v136;
  v256 = *(v106 + 90);
  v272 = v134;

  os_unfair_lock_unlock(v106 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF290, &unk_1CFA006C0);
  v137 = v273;
  v138 = (*(v273 + 80) + 32) & ~*(v273 + 80);
  v139 = swift_allocObject();
  *(v139 + 16) = v262;
  v141 = v137 + 16;
  v140 = *(v137 + 16);
  *&v262 = v132;
  v142 = v132;
  v143 = v271;
  v140(v139 + v138, v142, v271);
  v140(v270, v106 + OBJC_IVAR____TtC18FileProviderDaemon14VFSLookupScope_trashURL, v143);
  type metadata accessor for VFSLookupScope(0);
  v144 = swift_allocObject();
  *(v144 + 40) = 0;
  *(v144 + 48) = 1;
  *(v144 + 96) = sub_1CF001108(MEMORY[0x1E69E7CC0]);
  *(v144 + 16) = v255;
  *(v144 + 32) = v133;
  v145 = *(v133 + 16);
  if (v145)
  {
    v145 = *(v133 + 32);
  }

  *(v144 + 24) = v145;
  *(v144 + 40) = 0;
  *(v144 + 48) = 1;
  *(v144 + 56) = 0;
  v146 = v272;
  *(v144 + 64) = v259;
  *(v144 + 72) = v146;
  *(v144 + 80) = v135;
  v147 = v257;
  *(v144 + 88) = v258;
  *(v144 + 89) = v147;
  *(v144 + 90) = v256;
  v148 = *(v139 + 16);

  v253 = v141;
  v254 = v140;
  if (v148)
  {
    v149 = v271;
    v140(v144 + OBJC_IVAR____TtC18FileProviderDaemon14VFSLookupScope_mainRootURL, (v139 + v138), v271);
    v150 = v273;
  }

  else
  {
    v149 = v271;
    (*(v273 + 56))(v267, 1, 1, v271);
    (*(v264 + 104))(v263, *MEMORY[0x1E6968F70], v265);
    v150 = v273;
    sub_1CF9E5A38();
  }

  *(v144 + OBJC_IVAR____TtC18FileProviderDaemon14VFSLookupScope_rootURLs) = v139;
  (*(v150 + 32))(v144 + OBJC_IVAR____TtC18FileProviderDaemon14VFSLookupScope_trashURL, v270, v149);
  *(v144 + 49) = 0;
  v184 = v280;
  *(v117 + 72) = v106;
  *(v117 + 80) = v184;
  v185 = v150;
  v186 = *(v117 + 104);
  v187 = v260;
  *(v117 + 88) = v261;
  *(v117 + 96) = v187;
  *(v117 + 104) = v283;

  swift_unknownObjectRetain();
  v186, v188, v189, v190, v191, v192, v193, v194;
  v195 = qword_1EDEBBC00;
  v196 = v262;
  v254(v117 + qword_1EDEBBC00, v262, v149);
  (*(v185 + 56))(v117 + v195, 0, 1, v149);
  v197 = (v117 + qword_1EDEBBC08);
  v198 = v275;
  *v197 = v274;
  v197[1] = v198;
  v199 = sub_1CF25AAFC(v144, v268, v279, v278);
  v200 = v266;
  v201 = v199;

  swift_unknownObjectRelease();
  v202 = (*(v185 + 8))(v196, v149);
  LOBYTE(v288) = 0;
  MEMORY[0x1EEE9AC00](v202);
  *(&v253 - 4) = &v288;
  v203 = v277;
  *(&v253 - 3) = v276;
  *(&v253 - 2) = v203;

  sub_1CF25AD70(sub_1CF2B1618, (&v253 - 6));
  v226 = *(v201 + 48);

  if (v226)
  {
    v227 = 0;
  }

  else
  {

    v227 = v201;
  }

  v200(v227, 0);
}

void sub_1CF268864(uint64_t a1, _BYTE *a2, uint64_t (*a3)(uint64_t))
{
  v6 = objc_autoreleasePoolPush();
  if ((*a2 & 1) == 0 && (*(a1 + 8) != 2 || *a1 != 1))
  {
    v8 = v6;
    v9 = type metadata accessor for VFSItem(0);
    v10 = a1 + *(v9 + 28);
    v11 = type metadata accessor for ItemMetadata(0);
    v6 = v8;
    if ((*(v10 + *(v11 + 72)) & 1) == 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED90, &unk_1CFA00770);
      v12 = (*(*(v9 - 8) + 80) + 32) & ~*(*(v9 - 8) + 80);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_1CF9FA450;
      sub_1CEFD90AC(a1, v13 + v12, type metadata accessor for VFSItem);
      v14 = a3(v13);
      v13, v15, v16, v17, v18, v19, v20, v21;
      v6 = v8;
      if (v14)
      {
        *a2 = 1;
      }
    }
  }

  objc_autoreleasePoolPop(v6);
}

void sub_1CF2689CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  v6 = FPNotSupportedError();
  a5();
}

id sub_1CF268A24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void *))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C5A90, &qword_1CFA01BD0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v12 - v9);
  result = FPNotSupportedError();
  if (result)
  {
    *v10 = result;
    swift_storeEnumTagMultiPayload();
    a7(v10);
    return sub_1CEFCCC44(v10, &unk_1EC4C5A90, &qword_1CFA01BD0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF268AF4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1CF9E6388();
  v61 = *(v7 - 8);
  v62 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v60 = (&v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v59 = &v45 - v10;
  v11 = sub_1CF9E6498();
  v57 = *(v11 - 8);
  v58 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v56 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE380, &qword_1CFA01BA0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v48 = &v45 - v14;
  v15 = sub_1CF9E63D8();
  v16 = *(v15 - 8);
  v46 = v15;
  v47 = v16;
  MEMORY[0x1EEE9AC00](v15);
  v51 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1CF9E6448();
  v53 = *(v18 - 8);
  v54 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v52 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1CF9E73D8();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v45 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *a1;
  v25 = *(a1 + 8);
  v26 = swift_allocObject();
  *(v26 + 16) = a2;
  *(v26 + 24) = a3;
  v50 = v24;
  *(v26 + 32) = v24;
  v49 = v25;
  *(v26 + 40) = v25;
  v45 = sub_1CEFD57E0(0, &qword_1EDEAED60, 0x1E69E9630);
  v55 = v3;
  v27 = *(v3 + 216);
  v63 = MEMORY[0x1E69E7CC0];
  sub_1CF2A9448(&qword_1EDEAB5E0, MEMORY[0x1E69E80B0], MEMORY[0x1E69E80B8]);

  v28 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE3A0, &qword_1CFA006D0);
  sub_1CEFCCCEC(&qword_1EDEAB650, &qword_1EC4BE3A0, &qword_1CFA006D0, MEMORY[0x1E69E6328]);
  v29 = v46;
  sub_1CF9E77B8();
  v30 = v47;
  v31 = sub_1CF9E73E8();

  (*(v21 + 8))(v23, v20);
  v32 = v48;
  qos_class_self();
  sub_1CF9E63B8();
  v33 = *(v30 + 48);
  if (v33(v32, 1, v29) == 1)
  {
    (*(v30 + 104))(v51, *MEMORY[0x1E69E7FA0], v29);
    if (v33(v32, 1, v29) != 1)
    {
      sub_1CEFCCC44(v32, &unk_1EC4BE380, &qword_1CFA01BA0);
    }
  }

  else
  {
    (*(v30 + 32))(v51, v32, v29);
  }

  ObjectType = swift_getObjectType();
  v35 = v52;
  sub_1CF9E6428();
  v36 = swift_allocObject();
  v37 = v50;
  *(v36 + 16) = v55;
  *(v36 + 24) = v37;
  *(v36 + 32) = v49;
  *(v36 + 40) = 0u;
  *(v36 + 56) = 0u;
  *(v36 + 72) = 0u;
  *(v36 + 88) = 0u;
  *(v36 + 104) = 0u;
  *(v36 + 120) = 0u;
  *(v36 + 136) = 0u;
  *(v36 + 152) = v31;
  *(v36 + 160) = sub_1CF2B1C18;
  *(v36 + 168) = v26;

  swift_unknownObjectRetain();

  sub_1CEFD5828(0, v35, sub_1CF2B9F4C, v36, ObjectType);

  (*(v53 + 8))(v35, v54);
  v38 = v56;
  sub_1CF9E6478();
  v39 = v59;
  sub_1CEFD5B64(v59);
  v40 = v60;
  sub_1CEFD5BD8(v60);
  MEMORY[0x1D3869770](v38, v39, v40, ObjectType);
  v41 = *(v61 + 8);
  v42 = v40;
  v43 = v62;
  v41(v42, v62);
  v41(v39, v43);
  (*(v57 + 8))(v38, v58);
  sub_1CF9E7448();

  return swift_unknownObjectRelease();
}

uint64_t sub_1CF26919C(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, void (*a4)(void, void, void), int a5)
{
  v113 = a5;
  v119 = a4;
  v121 = a2;
  v122 = a3;
  v120 = a1;
  v5 = sub_1CF9E5248();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v108 = &v104 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_1CF9E5268();
  v109 = *(v110 - 8);
  MEMORY[0x1EEE9AC00](v110);
  v107 = &v104 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v111 = &v104 - v9;
  v112 = sub_1CF9E5A58();
  v114 = *(v112 - 8);
  v10 = *(v114 + 64);
  MEMORY[0x1EEE9AC00](v112);
  v106 = &v104 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v104 = &v104 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v118 = &v104 - v14;
  v15 = type metadata accessor for VFSItem(0);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v117 = &v104 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_1CF9E6118();
  v115 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v105 = &v104 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v104 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BED68, &qword_1CFA00748);
  MEMORY[0x1EEE9AC00](v22);
  v24 = (&v104 - v23);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF310, &unk_1CF9FDB30);
  MEMORY[0x1EEE9AC00](v25);
  v27 = (&v104 - v26);
  sub_1CEFCCBDC(v120, &v104 - v26, &unk_1EC4BF310, &unk_1CF9FDB30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v28 = *v27;
    *v24 = v28;
    swift_storeEnumTagMultiPayload();
    v29 = v28;
    v121(v24);

    return sub_1CEFCCC44(v24, &qword_1EC4BED68, &qword_1CFA00748);
  }

  else
  {
    v120 = v22;
    if ((*(v16 + 48))(v27, 1, v15) == 1)
    {
      v31 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      v32 = sub_1CF9E6108();
      v33 = sub_1CF9E72A8();
      v34 = os_log_type_enabled(v32, v33);
      v35 = v24;
      v36 = v119;
      if (v34)
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v132 = v38;
        *v37 = 136315138;
        *&v123 = v36;
        v39 = v113;
        BYTE8(v123) = v113;
        v40 = VFSItemID.description.getter(v38);
        v42 = v41;
        v43 = sub_1CEFD0DF0(v40, v41, &v132);
        v42, v44, v45, v46, v47, v48, v49, v50;
        *(v37 + 4) = v43;
        _os_log_impl(&dword_1CEFC7000, v32, v33, "⚔️  Item %s not found, can not update conflict losers for this item...", v37, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v38);
        MEMORY[0x1D386CDC0](v38, -1, -1);
        MEMORY[0x1D386CDC0](v37, -1, -1);

        (*(v115 + 8))(v21, v116);
      }

      else
      {

        (*(v115 + 8))(v21, v116);
        v39 = v113;
      }

      v81 = swift_allocObject();
      *(v81 + 16) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
      sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50, &unk_1CFA13B50);
      v82 = swift_allocError();
      v84 = v83;
      sub_1CF1B8150();
      v85 = swift_allocError();
      *v86 = v81;
      *&v123 = v36;
      BYTE8(v123) = v39;
      v124 = 0u;
      v125 = 0u;
      v126 = 0u;
      v127 = 0u;
      v128 = 0u;
      v129 = 0u;
      v130 = v85;
      sub_1CF2A8DE0(&v123);
      *v84 = v123;
      v87 = v124;
      v88 = v125;
      v89 = v127;
      *(v84 + 48) = v126;
      *(v84 + 64) = v89;
      *(v84 + 16) = v87;
      *(v84 + 32) = v88;
      v90 = v128;
      v91 = v129;
      v92 = v130;
      *(v84 + 128) = v131;
      *(v84 + 96) = v91;
      *(v84 + 112) = v92;
      *(v84 + 80) = v90;
      *v35 = v82;
      swift_storeEnumTagMultiPayload();
      v121(v35);
      return sub_1CEFCCC44(v35, &qword_1EC4BED68, &qword_1CFA00748);
    }

    else
    {
      v51 = v117;
      sub_1CEFE4C60(v27, v117, type metadata accessor for VFSItem);
      v52 = v119;
      if (qword_1EC4BCCF8 != -1)
      {
        swift_once();
      }

      v53 = off_1EC4BF328;
      v54 = v111;
      sub_1CF25116C(v111);
      v55 = v114;
      v56 = v112;
      v57 = (*(v114 + 48))(v54, 1, v112);
      v58 = v118;
      if (v57 == 1)
      {
        sub_1CEFCCC44(v54, &unk_1EC4BE310, qword_1CF9FCBE0);
        v59 = fpfs_current_or_default_log();
        v60 = v105;
        sub_1CF9E6128();
        v61 = sub_1CF9E6108();
        v62 = sub_1CF9E72A8();
        if (os_log_type_enabled(v61, v62))
        {
          v63 = swift_slowAlloc();
          v64 = swift_slowAlloc();
          v132 = v64;
          *v63 = 136315138;
          *&v123 = v52;
          BYTE8(v123) = v113;
          v65 = VFSItemID.description.getter(v64);
          v67 = v66;
          v68 = sub_1CEFD0DF0(v65, v66, &v132);
          v67, v69, v70, v71, v72, v73, v74, v75;
          *(v63 + 4) = v68;
          _os_log_impl(&dword_1CEFC7000, v61, v62, "⚔️  Impossible to fetch URL for Item %s, can not update conflict losers for this item...", v63, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v64);
          MEMORY[0x1D386CDC0](v64, -1, -1);
          MEMORY[0x1D386CDC0](v63, -1, -1);
        }

        (*(v115 + 8))(v60, v116);
        v76 = v121;
        sub_1CF9E50F8();
        sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
        sub_1CF2A9448(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
        v77 = v107;
        v78 = v110;
        sub_1CF9E57D8();
        v79 = sub_1CF9E50D8();
        (*(v109 + 8))(v77, v78);
        *v24 = v79;
        swift_storeEnumTagMultiPayload();
        v76(v24);
        sub_1CEFCCC44(v24, &qword_1EC4BED68, &qword_1CFA00748);
        v80 = v51;
      }

      else
      {
        v120 = v53;
        v93 = *(v55 + 32);
        v93(v118, v54, v56);
        v94 = v104;
        v119 = *(v55 + 16);
        v119(v104, v58, v56);
        v95 = *(v55 + 80);
        v116 = ~v95;
        v96 = swift_allocObject();
        v97 = v122;
        *(v96 + 16) = v121;
        *(v96 + 24) = v97;
        v93((v96 + ((v95 + 32) & ~v95)), v94, v56);
        v98 = qword_1EC4BCD00;

        if (v98 != -1)
        {
          swift_once();
        }

        v122 = qword_1EC4BF330;
        v99 = fpfs_current_log();
        v100 = v106;
        v119(v106, v118, v56);
        v101 = (v95 + 24) & v116;
        v102 = swift_allocObject();
        *(v102 + 16) = v120;
        v93((v102 + v101), v100, v56);
        v103 = (v102 + ((v10 + v101 + 7) & 0xFFFFFFFFFFFFFFF8));
        *v103 = sub_1CF2B1C28;
        v103[1] = v96;

        sub_1CF01001C(v99, "listConflicts(for:completionHandler:)", 37, 2, sub_1CF2B1D88, v102);

        (*(v114 + 8))(v118, v56);
        v80 = v117;
      }

      return sub_1CEFE5888(v80, type metadata accessor for VFSItem);
    }
  }
}

uint64_t sub_1CF269E34(void *a1, char a2, void (*a3)(char *), uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BED68, &qword_1CFA00748);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v16 - v10;
  if (a2)
  {
    *v11 = a1;
    swift_storeEnumTagMultiPayload();
    v12 = a1;
  }

  else
  {
    v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED70, &unk_1CFA00750) + 48);
    *v11 = a1;
    v14 = sub_1CF9E5A58();
    (*(*(v14 - 8) + 16))(&v11[v13], a5, v14);
    swift_storeEnumTagMultiPayload();
  }

  a3(v11);
  return sub_1CEFCCC44(v11, &qword_1EC4BED68, &qword_1CFA00748);
}

uint64_t sub_1CF269F8C(uint64_t *a1, void *a2, uint64_t a3, char *a4)
{
  v5 = v4;
  v40 = a2;
  v41 = a4;
  v8 = sub_1CF9E63D8();
  v37 = *(v8 - 8);
  v38 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v36 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v36 - v14;
  v16 = *a1;
  v17 = *(a1 + 8);
  v18 = *(v5 + 224);
  v39 = *(v5 + 216);
  v19 = sub_1CF9E6448();
  v20 = *(v19 - 8);
  (*(v20 + 56))(v15, 1, 1, v19);
  v21 = swift_allocObject();
  *(v21 + 16) = v5;
  *(v21 + 24) = v16;
  *(v21 + 32) = v17;
  v23 = v40;
  v22 = v41;
  *(v21 + 40) = a3;
  *(v21 + 48) = v22;
  *(v21 + 56) = v23;
  v24 = swift_allocObject();
  v24[2] = a3;
  v25 = v22;
  v26 = v24;
  v24[3] = v25;
  v24[4] = v18;
  swift_retain_n();
  v27 = v39;

  v28 = fpfs_current_log();
  v40 = *(v18 + 16);
  v41 = v15;
  sub_1CEFCCBDC(v15, v12, &unk_1EC4BE370, qword_1CFA01B30);
  if ((*(v20 + 48))(v12, 1, v19) == 1)
  {
    sub_1CEFCCC44(v12, &unk_1EC4BE370, qword_1CFA01B30);
    v29 = QOS_CLASS_UNSPECIFIED;
  }

  else
  {
    v30 = v36;
    sub_1CF9E6438();
    (*(v20 + 8))(v12, v19);
    v29 = sub_1CF9E63C8();
    (*(v37 + 8))(v30, v38);
  }

  v31 = swift_allocObject();
  v31[2] = v28;
  v31[3] = sub_1CF2B15A8;
  v31[4] = v21;
  v46 = sub_1CF2BA17C;
  v47 = v31;
  aBlock = MEMORY[0x1E69E9820];
  v43 = 1107296256;
  v44 = sub_1CEFCA444;
  v45 = &block_descriptor_911;
  v32 = _Block_copy(&aBlock);
  v33 = v28;

  v46 = sub_1CF2B15BC;
  v47 = v26;
  aBlock = MEMORY[0x1E69E9820];
  v43 = 1107296256;
  v44 = sub_1CEFCA444;
  v45 = &block_descriptor_914;
  v34 = _Block_copy(&aBlock);

  fp_task_tracker_async_and_qos(v40, v27, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v29, v32, v34);
  _Block_release(v34);
  _Block_release(v32);

  return sub_1CEFCCC44(v41, &unk_1EC4BE370, qword_1CFA01B30);
}

uint64_t sub_1CF26A3EC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = a2;
  v15 = a3;
  v12 = swift_allocObject();
  *(v12 + 16) = a4;
  *(v12 + 24) = a5;
  *(v12 + 32) = a1;
  *(v12 + 40) = a6;
  *(v12 + 48) = a2;
  *(v12 + 56) = a3;

  sub_1CF268AF4(&v14, sub_1CF2B15C8, v12);
}

void sub_1CF26A4C0(uint64_t a1, void (*a2)(_TtC18FileProviderDaemon8FSTester **), uint64_t a3, char *a4, uint64_t a5, unint64_t a6, int a7)
{
  LODWORD(v245) = a7;
  v244 = a6;
  v238 = a5;
  v255 = a4;
  v241 = a3;
  v242 = a2;
  v252 = sub_1CF9E6118();
  v246 = *(v252 - 8);
  MEMORY[0x1EEE9AC00](v252);
  v253 = &v235 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1CF9E5A58();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v235 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BED60, &qword_1CFA00740);
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v235 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BED68, &qword_1CFA00748);
  MEMORY[0x1EEE9AC00](v16);
  v18 = (&v235 - v17);
  sub_1CEFCCBDC(a1, &v235 - v17, &qword_1EC4BED68, &qword_1CFA00748);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v20 = *v18;
  if (EnumCaseMultiPayload == 1)
  {
    *v15 = v20;
    swift_storeEnumTagMultiPayload();
    v21 = v20;
    v242(v15);

    sub_1CEFCCC44(v15, &qword_1EC4BED60, &qword_1CFA00740);
    return;
  }

  v248 = v13;
  v249 = v15;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED70, &unk_1CFA00750);
  (*(v10 + 32))(v12, v18 + *(v22 + 48), v9);
  v251 = *&v255[qword_1EDEAFB20];
  v23 = MEMORY[0x1E69E7CC0];
  v24 = *(v238 + 16);
  v247 = v10;
  v250 = v20;
  v240 = v24;
  v237 = v9;
  v236 = v12;
  if (v24)
  {
    v25 = v238;
    v261 = MEMORY[0x1E69E7CC0];
    sub_1CEFE95CC(0, v24, 0);
    v23 = v261;
    v254 = objc_opt_self();
    v26 = (v25 + 32);
    v27 = v24;
    do
    {
      v255 = v23;
      v28 = v26[3];
      v259 = v26[2];
      v260 = v28;
      v29 = v26[1];
      v257 = *v26;
      v258 = v29;
      v30 = *(&v260 + 1);
      v31 = *(&v29 + 1);
      v32 = v259;
      v33 = v257;
      sub_1CEFCCBDC(&v257, v256, &unk_1EC4BF250, &unk_1CFA01B50);
      sub_1CEFE42D4(v33, *(&v33 + 1));
      sub_1CEFE42D4(v31, v32);
      v34 = sub_1CF9E5B48();
      v35 = sub_1CF9E5B48();
      if (v30)
      {
        v36 = sub_1CF9E6888();
      }

      else
      {
        v36 = 0;
      }

      v37 = [objc_allocWithZone(MEMORY[0x1E69674E8]) initWithContentVersion:v34 metadataVersion:v35 lastEditorDeviceName:v36];

      sub_1CEFE4714(v31, v32);
      sub_1CEFE4714(v33, *(&v33 + 1));
      v38 = [(FSTester *)v254 etagForVersion:v37 providerDomainID:v251];

      v39 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v41 = v40;

      sub_1CEFCCC44(&v257, &unk_1EC4BF250, &unk_1CFA01B50);
      v23 = v255;
      v261 = v255;
      v43 = *(v255 + 2);
      v42 = *(v255 + 3);
      if (v43 >= v42 >> 1)
      {
        sub_1CEFE95CC((v42 > 1), v43 + 1, 1);
        v23 = v261;
      }

      *v23->tree = v43 + 1;
      v44 = v23 + 16 * v43;
      *(v44 + 4) = v39;
      *(v44 + 5) = v41;
      v26 += 4;
      --v27;
    }

    while (v27);
    v10 = v247;
    v20 = v250;
  }

  v45 = fpfs_current_or_default_log();
  v46 = v253;
  sub_1CF9E6128();

  v47 = sub_1CF9E6108();
  v48 = sub_1CF9E7288();
  v23, v49, v50, v51, v52, v53, v54, v55;
  v20, v56, v57, v58, v59, v60, v61, v62;
  if (os_log_type_enabled(v47, v48))
  {
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v256[0] = v64;
    *v63 = 136315650;
    *&v257 = v244;
    BYTE8(v257) = v245;
    LODWORD(v255) = v48;
    v65 = VFSItemID.description.getter(v64);
    v67 = v66;
    v68 = sub_1CEFD0DF0(v65, v66, v256);
    v67, v69, v70, v71, v72, v73, v74, v75;
    *(v63 + 4) = v68;
    *(v63 + 12) = 2080;

    v76 = MEMORY[0x1E69E6158];
    v77 = sub_1CF9E6678();
    v79 = v78;
    v20, v78, v80, v81, v82, v83, v84, v85;
    v86 = sub_1CEFD0DF0(v77, v79, v256);
    v79, v87, v88, v89, v90, v91, v92, v93;
    *(v63 + 14) = v86;
    *(v63 + 22) = 2080;
    v94 = MEMORY[0x1D3868FE0](v23, v76);
    v96 = v95;
    v23, v95, v97, v98, v99, v100, v101, v102;
    v103 = sub_1CEFD0DF0(v94, v96, v256);
    v96, v104, v105, v106, v107, v108, v109, v110;
    *(v63 + 24) = v103;
    _os_log_impl(&dword_1CEFC7000, v47, v255, "⚔️  conflicts for %s: existing - %s new %s", v63, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v64, -1, -1);
    MEMORY[0x1D386CDC0](v63, -1, -1);

    (*(v246 + 1))(v253, v252);
  }

  else
  {

    v23, v111, v112, v113, v114, v115, v116, v117;
    (*(v246 + 1))(v46, v252);
  }

  v118 = v242;
  v119 = v249;
  v120 = v240;
  if (!v240)
  {
    v246 = MEMORY[0x1E69E7CC0];
    v122 = v250;
LABEL_43:

    v204 = v238;

    v205 = v251;
    v206 = v251;
    v207 = sub_1CF2AB528(v122, v204, v205);
    v122, v208, v209, v210, v211, v212, v213, v214;
    v204, v215, v216, v217, v218, v219, v220, v221;

    v222 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED80, &unk_1CFA00760) + 80);
    v223 = *(v122 + 16);
    v122, v224, v225, v226, v227, v228, v229, v230;
    v231 = v246;
    *v119 = v223;
    v119[1] = v231;
    v119[2] = v207;
    v232 = v119 + v222;
    v233 = v236;
    v234 = v237;
    (*(v10 + 16))(v232, v236, v237);
    swift_storeEnumTagMultiPayload();
    v118(v119);
    sub_1CEFCCC44(v119, &qword_1EC4BED60, &qword_1CFA00740);
    (*(v10 + 8))(v233, v234);
    return;
  }

  v121 = 0;
  v239 = v238 + 32;
  v122 = v250;
  v243 = v250 + 2;
  v246 = MEMORY[0x1E69E7CC0];
LABEL_18:
  while (2)
  {
    if (v121 >= v120)
    {
LABEL_45:
      __break(1u);
    }

    else
    {
      v123 = (v239 + (v121 << 6));
      v124 = v123[1];
      v257 = *v123;
      v258 = v124;
      v125 = v123[3];
      v259 = v123[2];
      v260 = v125;
      v126 = __OFADD__(v121, 1);
      v127 = v121 + 1;
      if (!v126)
      {
        v244 = v127;
        v128 = 1 << *(v122 + 32);
        if (v128 < 64)
        {
          v129 = ~(-1 << v128);
        }

        else
        {
          v129 = -1;
        }

        v130 = v129 & *(v122 + 64);

        sub_1CEFCCBDC(&v257, v256, &unk_1EC4BF250, &unk_1CFA01B50);
        v131 = 0;
        v245 = (v128 + 63) >> 6;
        while (v130)
        {
LABEL_30:
          v155 = (v131 << 10) | (16 * __clz(__rbit64(v130)));
          v156 = *(v122 + 56);
          v157 = (*(v122 + 48) + v155);
          v158 = v157[1];
          v253 = *v157;
          v159 = *(v156 + v155 + 8);
          v160 = v257;
          v162 = *(&v258 + 1);
          v161 = v259;
          v163 = *(&v260 + 1);
          v255 = v158;

          v254 = v159;

          sub_1CEFE42D4(v160, *(&v160 + 1));
          sub_1CEFE42D4(v162, v161);
          v252 = *(&v160 + 1);
          v164 = sub_1CF9E5B48();
          v165 = sub_1CF9E5B48();
          if (v163)
          {
            v166 = sub_1CF9E6888();
          }

          else
          {
            v166 = 0;
          }

          v167 = objc_opt_self();
          v168 = [objc_allocWithZone(MEMORY[0x1E69674E8]) initWithContentVersion:v164 metadataVersion:v165 lastEditorDeviceName:v166];

          sub_1CEFE4714(v162, v161);
          sub_1CEFE4714(v160, v252);
          v169 = [v167 etagForVersion:v168 providerDomainID:v251];

          v170 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v172 = v171;

          v180 = v255;
          if (v253 == v170 && v255 == v172)
          {
            v254, v173, v174, v175, v176, v177, v178, v179;
            v180, v181, v182, v183, v184, v185, v186, v187;
            v172, v188, v189, v190, v191, v192, v193, v194;
            v10 = v247;
            v119 = v249;
            v122 = v250;
LABEL_17:
            sub_1CEFCCC44(&v257, &unk_1EC4BF250, &unk_1CFA01B50);

            v120 = v240;
            v121 = v244;
            v118 = v242;
            if (v244 == v240)
            {
              goto LABEL_43;
            }

            goto LABEL_18;
          }

          v130 &= v130 - 1;
          v132 = sub_1CF9E8048();
          v254, v133, v134, v135, v136, v137, v138, v139;
          v180, v140, v141, v142, v143, v144, v145, v146;
          v172, v147, v148, v149, v150, v151, v152, v153;
          v10 = v247;
          v119 = v249;
          v122 = v250;
          if (v132)
          {
            goto LABEL_17;
          }
        }

        while (1)
        {
          v154 = v131 + 1;
          if (__OFADD__(v131, 1))
          {
            __break(1u);
            goto LABEL_45;
          }

          if (v154 >= v245)
          {
            break;
          }

          v130 = *(&v243->super.isa + v154);
          ++v131;
          if (v130)
          {
            v131 = v154;
            goto LABEL_30;
          }
        }

        v195 = v246;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v261 = v195;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1CF680B2C(0, *(v246 + 2) + 1, 1);
          v246 = v261;
        }

        v118 = v242;
        v198 = *(v246 + 2);
        v197 = *(v246 + 3);
        if (v198 >= v197 >> 1)
        {
          sub_1CF680B2C((v197 > 1), v198 + 1, 1);
          v246 = v261;
        }

        v199 = v246;
        *(v246 + 2) = v198 + 1;
        v200 = &v199[64 * v198];
        v201 = v257;
        v202 = v258;
        v203 = v260;
        *(v200 + 4) = v259;
        *(v200 + 5) = v203;
        *(v200 + 2) = v201;
        *(v200 + 3) = v202;
        v120 = v240;
        v121 = v244;
        if (v244 != v240)
        {
          continue;
        }

        goto LABEL_43;
      }
    }

    break;
  }

  __break(1u);
}

BOOL sub_1CF26B16C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + 16) + 1;
  v5 = (a3 + 48);
  v82 = *(a1 + 8);
  do
  {
    if (!--v4)
    {
      break;
    }

    v87 = v4;
    v35 = *(v5 - 2);
    v36 = *(v5 - 1);
    v37 = v5[5];
    v39 = v5[2];
    v38 = v5[3];
    v40 = *v5;
    v41 = v5[1];
    sub_1CEFE42D4(v35, v36);
    v83 = v40;

    sub_1CEFE42D4(v41, v39);

    v86 = v38;

    sub_1CEFE42D4(v35, v36);
    sub_1CEFE42D4(v41, v39);
    v42 = sub_1CF9E5B48();
    v84 = v39;
    v43 = sub_1CF9E5B48();
    v85 = v37;
    if (v37)
    {
      v44 = sub_1CF9E6888();
    }

    else
    {
      v44 = 0;
    }

    v45 = objc_opt_self();
    v46 = [objc_allocWithZone(MEMORY[0x1E69674E8]) initWithContentVersion:v42 metadataVersion:v43 lastEditorDeviceName:v44];

    sub_1CEFE4714(v41, v84);
    sub_1CEFE4714(v35, v36);
    v47 = [v45 etagForVersion:v46 providerDomainID:a4];

    v48 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v50 = v49;

    if (v48 == v80 && v50 == v82)
    {
      v50, v51, v52, v53, v54, v55, v56, v57;
      sub_1CEFE4714(v35, v36);
      v83, v58, v59, v60, v61, v62, v63, v64;
      sub_1CEFE4714(v41, v84);
      v85, v65, v66, v67, v68, v69, v70, v71;
      v86, v72, v73, v74, v75, v76, v77, v78;
      v4 = v87;
      return v4 == 0;
    }

    v5 += 8;
    v6 = sub_1CF9E8048();
    v50, v7, v8, v9, v10, v11, v12, v13;
    sub_1CEFE4714(v35, v36);
    v83, v14, v15, v16, v17, v18, v19, v20;
    sub_1CEFE4714(v41, v84);
    v85, v21, v22, v23, v24, v25, v26, v27;
    v86, v28, v29, v30, v31, v32, v33, v34;
    v4 = v87;
  }

  while ((v6 & 1) == 0);
  return v4 == 0;
}

uint64_t sub_1CF26B3D8(uint64_t *a1, int a2, uint64_t a3, void *a4)
{
  v38 = a4;
  LODWORD(v39) = a2;
  v7 = sub_1CF9E63D8();
  v34 = *(v7 - 8);
  v35 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v33 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v32 - v13;
  v15 = *a1;
  v36 = *(a1 + 8);
  v16 = *(v4 + 224);
  v37 = *(v4 + 216);
  v17 = sub_1CF9E6448();
  v18 = *(v17 - 8);
  (*(v18 + 56))(v14, 1, 1, v17);
  v19 = swift_allocObject();
  v20 = v38;
  *(v19 + 16) = a3;
  *(v19 + 24) = v20;
  v21 = swift_allocObject();
  *(v21 + 16) = v15;
  *(v21 + 24) = v36;
  *(v21 + 28) = v39;
  *(v21 + 32) = a3;
  *(v21 + 40) = v20;
  v22 = swift_allocObject();
  v22[2] = sub_1CF2BA174;
  v22[3] = v19;
  v22[4] = v16;
  swift_retain_n();
  v38 = v37;

  v23 = fpfs_current_log();
  v37 = *(v16 + 16);
  v39 = v14;
  sub_1CEFCCBDC(v14, v11, &unk_1EC4BE370, qword_1CFA01B30);
  if ((*(v18 + 48))(v11, 1, v17) == 1)
  {
    sub_1CEFCCC44(v11, &unk_1EC4BE370, qword_1CFA01B30);
    v24 = QOS_CLASS_UNSPECIFIED;
  }

  else
  {
    v25 = v33;
    sub_1CF9E6438();
    (*(v18 + 8))(v11, v17);
    v24 = sub_1CF9E63C8();
    (*(v34 + 8))(v25, v35);
  }

  v26 = swift_allocObject();
  v26[2] = v23;
  v26[3] = sub_1CF2B1594;
  v26[4] = v21;
  v44 = sub_1CF2BA17C;
  v45 = v26;
  aBlock = MEMORY[0x1E69E9820];
  v41 = 1107296256;
  v42 = sub_1CEFCA444;
  v43 = &block_descriptor_892;
  v27 = _Block_copy(&aBlock);
  v28 = v23;

  v44 = sub_1CF2BA180;
  v45 = v22;
  aBlock = MEMORY[0x1E69E9820];
  v41 = 1107296256;
  v42 = sub_1CEFCA444;
  v43 = &block_descriptor_895;
  v29 = _Block_copy(&aBlock);

  v30 = v38;
  fp_task_tracker_async_and_qos(v37, v38, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v24, v27, v29);
  _Block_release(v29);
  _Block_release(v27);

  return sub_1CEFCCC44(v39, &unk_1EC4BE370, qword_1CFA01B30);
}

void sub_1CF26B87C(uint64_t a1, char a2, uint64_t a3, void (*a4)(void), void *a5)
{
  v38[7] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    a4(0);
  }

  else
  {
    v9 = [objc_allocWithZone(FPGSStorageManager) init];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C11D0, &unk_1CF9FE760);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1CF9FA440;
    *(v10 + 32) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    *(v10 + 40) = v11;
    *(v10 + 48) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    *(v10 + 56) = v12;
    v38[0] = 0;
    v13 = [v9 permanentStorageForItemWithDocID:a1 deviceID:a3 allocateIfNone:0 error:v38];
    if (v13)
    {
      v14 = v13;
      v15 = v38[0];
      v16 = sub_1CF9E6D28();
      v10, v17, v18, v19, v20, v21, v22, v23;
      v38[4] = a4;
      v38[5] = a5;
      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 1107296256;
      v38[2] = sub_1CF00A468;
      v38[3] = &block_descriptor_898;
      v24 = _Block_copy(v38);

      [v14 removeAllAdditionsForNamespaces:v16 completionHandler:v24];
      _Block_release(v24);
    }

    else
    {
      v25 = v38[0];
      v10, v26, v27, v28, v29, v30, v31, v32;
      v33 = sub_1CF9E57F8();

      swift_willThrow();
      v34 = v33;
      LODWORD(v38[0]) = sub_1CF9E5328();
      sub_1CF196978();
      LOBYTE(v25) = sub_1CF9E5658();

      if (v25)
      {

        a4(0);
      }

      else
      {
        v35 = sub_1CF9E57E8();
        v36 = [v35 fp_isGSInvalidStorageError];

        if (v36)
        {
          a4(0);
        }

        else
        {
          v37 = v33;
          a4(v33);
        }
      }
    }
  }
}

uint64_t sub_1CF26BB5C(uint64_t *a1, int a2, char *a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v45 = a5;
  v47 = a3;
  LODWORD(v46) = a2;
  v9 = sub_1CF9E63D8();
  v39 = *(v9 - 8);
  v40 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v38 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v42 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v38 - v14;
  v16 = *a1;
  v17 = *(a1 + 8);
  v18 = *(v5 + 216);
  v41 = *(v5 + 224);
  v44 = v18;
  v19 = sub_1CF9E6448();
  v20 = *(v19 - 8);
  (*(v20 + 56))(v15, 1, 1, v19);
  v21 = swift_allocObject();
  v22 = a4;
  *(v21 + 16) = a4;
  v23 = v45;
  *(v21 + 24) = v45;
  v24 = swift_allocObject();
  *(v24 + 16) = v16;
  *(v24 + 24) = v17;
  *(v24 + 28) = v46;
  *(v24 + 32) = v47;
  *(v24 + 40) = v6;
  *(v24 + 48) = v22;
  *(v24 + 56) = v23;
  v25 = swift_allocObject();
  v25[2] = sub_1CEFF9D98;
  v25[3] = v21;
  v43 = v25;
  v26 = v41;
  v25[4] = v41;
  swift_retain_n();
  v45 = v44;

  v46 = v21;

  v27 = fpfs_current_log();
  v28 = *(v26 + 16);
  v29 = v42;
  v44 = v28;
  v47 = v15;
  sub_1CEFCCBDC(v15, v42, &unk_1EC4BE370, qword_1CFA01B30);
  if ((*(v20 + 48))(v29, 1, v19) == 1)
  {
    sub_1CEFCCC44(v29, &unk_1EC4BE370, qword_1CFA01B30);
    v30 = QOS_CLASS_UNSPECIFIED;
  }

  else
  {
    v31 = v38;
    sub_1CF9E6438();
    (*(v20 + 8))(v29, v19);
    v30 = sub_1CF9E63C8();
    (*(v39 + 8))(v31, v40);
  }

  v32 = swift_allocObject();
  v32[2] = v27;
  v32[3] = sub_1CF2B157C;
  v32[4] = v24;
  v52 = sub_1CF2BA17C;
  v53 = v32;
  aBlock = MEMORY[0x1E69E9820];
  v49 = 1107296256;
  v50 = sub_1CEFCA444;
  v51 = &block_descriptor_871;
  v33 = _Block_copy(&aBlock);
  v34 = v27;

  v52 = sub_1CF2B141C;
  v53 = v43;
  aBlock = MEMORY[0x1E69E9820];
  v49 = 1107296256;
  v50 = sub_1CEFCA444;
  v51 = &block_descriptor_874;
  v35 = _Block_copy(&aBlock);

  v36 = v45;
  fp_task_tracker_async_and_qos(v44, v45, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v30, v33, v35);
  _Block_release(v35);
  _Block_release(v33);

  return sub_1CEFCCC44(v47, &unk_1EC4BE370, qword_1CFA01B30);
}

uint64_t sub_1CF26C02C(uint64_t a1, unsigned __int8 a2, uint64_t a3, void *a4, void *a5, void (*a6)(uint64_t, void), uint64_t a7)
{
  v13 = a2;
  v14 = sub_1CF9E6118();
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v155 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v13)
  {
    return (a6)(0, 0, v17);
  }

  v175 = v16;
  v159 = v19;
  v160 = v15;
  v156 = a7;
  v157 = a6;
  if (qword_1EC4BCCF8 != -1)
  {
    goto LABEL_71;
  }

LABEL_4:
  v21 = *(off_1EC4BF328 + 2);
  v22 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v24 = v23;

  v25 = a3;
  a3 = v21;
  v26 = sub_1CF2CC52C(a1, v25, v22, v24);
  v165 = v21;
  v24, v27, v28, v29, v30, v31, v32, v33;
  v176 = MEMORY[0x1E69E7CC0];
  v177 = MEMORY[0x1E69E7CC0];
  if (v26 >> 62)
  {
    a1 = sub_1CF9E7818();
  }

  else
  {
    a1 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (a1)
  {
    v173 = a5;
    v174 = a4;
    v41 = 0;
    a5 = (v26 & 0xC000000000000001);
    do
    {
      if (a5)
      {
        v42 = MEMORY[0x1D3869C30](v41, v26);
      }

      else
      {
        if (v41 >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_68;
        }

        v42 = *(&v26[1].super.isa + v41);
      }

      v43 = v42;
      v44 = v41 + 1;
      if (__OFADD__(v41, 1))
      {
        goto LABEL_67;
      }

      if ([v42 isSavedConflictResolved])
      {
        a3 = &v176;
        sub_1CF9E7A18();
        a4 = *v176->tree;
        sub_1CF9E7A58();
        sub_1CF9E7A68();
        sub_1CF9E7A28();
      }

      else
      {
      }

      ++v41;
    }

    while (v44 != a1);
    a1 = v176;
    a5 = v173;
    a4 = v174;
  }

  else
  {
    a1 = MEMORY[0x1E69E7CC0];
  }

  v26, v34, v35, v36, v37, v38, v39, v40;
  v45 = a4[2];
  if (v45)
  {
    if (a1 < 0 || (a1 & 0x4000000000000000) != 0)
    {
      v46 = sub_1CF9E7818();
    }

    else
    {
      v46 = *(a1 + 16);
    }

    a3 = v175;
    v47 = objc_opt_self();
    v48 = 0;
    v163 = *(a5 + qword_1EDEAFB20);
    v164 = v47;
    v162 = a4 + 4;
    v175 = (a1 & 0xC000000000000001);
    v158 = (a3 + 8);
    *&v49 = 136315138;
    v155 = v49;
    v161 = v45;
    while (1)
    {
      if (v48 == v45)
      {
        goto LABEL_69;
      }

      v50 = &v162[8 * v48];
      a4 = *v50;
      a5 = v50[1];
      v51 = v50[7];
      v166 = v50[6];
      v53 = v50[4];
      v52 = v50[5];
      v54 = v50[2];
      v55 = v50[3];
      sub_1CEFE42D4(a4, a5);
      v167 = v54;

      sub_1CEFE42D4(v55, v53);

      v169 = v52;

      sub_1CEFE42D4(a4, a5);
      sub_1CEFE42D4(v55, v53);
      v172 = a5;
      v173 = a4;
      v56 = sub_1CF9E5B48();
      v171 = v55;
      v174 = v53;
      v57 = sub_1CF9E5B48();
      v58 = v51;
      v59 = v57;
      v170 = v48;
      v168 = v58;
      if (v58)
      {
        v60 = sub_1CF9E6888();
      }

      else
      {
        v60 = 0;
      }

      v61 = [objc_allocWithZone(MEMORY[0x1E69674E8]) initWithContentVersion:v56 metadataVersion:v59 lastEditorDeviceName:v60];

      sub_1CEFE4714(v171, v174);
      sub_1CEFE4714(v173, v172);
      v166 = v61;
      v62 = [v164 etagForVersion:v61 providerDomainID:v163];
      v63 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v65 = v64;

      a3 = MEMORY[0x1E69E7CC0];
      v176 = MEMORY[0x1E69E7CC0];
      if (v46)
      {
        v73 = 0;
        while (1)
        {
          if (v175)
          {
            v74 = MEMORY[0x1D3869C30](v73, a1);
          }

          else
          {
            if (v73 >= *(a1 + 16))
            {
              goto LABEL_66;
            }

            v74 = *(a1 + 8 * v73 + 32);
          }

          v75 = v74;
          a5 = (v73 + 1);
          if (__OFADD__(v73, 1))
          {
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
            __break(1u);
LABEL_71:
            swift_once();
            goto LABEL_4;
          }

          v76 = [v74 fp_etag];
          if (v76)
          {
            a4 = v76;
            v77 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
            a3 = v78;

            if (v77 == v63 && a3 == v65)
            {
              a3, v79, v80, v81, v82, v83, v84, v85;
LABEL_44:
              a3 = &v176;
              sub_1CF9E7A18();
              sub_1CF9E7A58();
              sub_1CF9E7A68();
              sub_1CF9E7A28();
              goto LABEL_31;
            }

            v87 = sub_1CF9E8048();
            a3, v88, v89, v90, v91, v92, v93, v94;
            if (v87)
            {
              goto LABEL_44;
            }
          }

LABEL_31:
          ++v73;
          if (a5 == v46)
          {
            a3 = v176;
            break;
          }
        }
      }

      if (a3 < 0 || (a3 & 0x4000000000000000) != 0)
      {
        if (sub_1CF9E7818())
        {
LABEL_50:
          if ((a3 & 0xC000000000000001) != 0)
          {
            MEMORY[0x1D3869C30](0, a3);
            swift_unknownObjectRelease();
          }

          else
          {
            v95 = *(a3 + 16);

            if (!v95)
            {
              goto LABEL_70;
            }
          }

          v96 = fpfs_current_or_default_log();
          a4 = v159;
          sub_1CF9E6128();

          v97 = sub_1CF9E6108();
          v98 = sub_1CF9E7298();
          v65, v99, v100, v101, v102, v103, v104, v105;
          if (os_log_type_enabled(v97, v98))
          {
            v106 = swift_slowAlloc();
            v107 = swift_slowAlloc();
            v176 = v107;
            *v106 = v155;
            v108 = sub_1CEFD0DF0(v63, v65, &v176);
            v65, v109, v110, v111, v112, v113, v114, v115;
            *(v106 + 4) = v108;
            _os_log_impl(&dword_1CEFC7000, v97, v98, "⚔️  marking loser %s as resolved", v106, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v107);
            MEMORY[0x1D386CDC0](v107, -1, -1);
            MEMORY[0x1D386CDC0](v106, -1, -1);
          }

          else
          {

            v65, v116, v117, v118, v119, v120, v121, v122;
          }

          (*v158)(a4, v160);
          v123 = v166;
          [v166 setConflictResolved_];
          goto LABEL_58;
        }
      }

      else if (*(a3 + 16))
      {
        goto LABEL_50;
      }

      v65, v66, v67, v68, v69, v70, v71, v72;

      v123 = v166;
LABEL_58:
      v124 = v170;
      v125 = v123;
      a3 = &v177;
      MEMORY[0x1D3868FA0]();
      if (*((v177 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v177 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1CF9E6D88();
      }

      v48 = v124 + 1;
      sub_1CF9E6DE8();
      sub_1CEFE4714(v173, v172);
      v167, v126, v127, v128, v129, v130, v131, v132;
      sub_1CEFE4714(v171, v174);

      v168, v133, v134, v135, v136, v137, v138, v139;
      v169, v140, v141, v142, v143, v144, v145, v146;
      v45 = v161;
      if (v48 == v161)
      {
        v147 = v177;

        goto LABEL_64;
      }
    }
  }

  v147 = MEMORY[0x1E69E7CC0];
LABEL_64:
  v157(v147, 0);
  v147, v148, v149, v150, v151, v152, v153, v154;
}

uint64_t sub_1CF26C884(__int128 *a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4, int a5, void *a6, uint64_t a7)
{
  v118 = a7;
  v119 = a2;
  v121 = a6;
  v122 = a4;
  v120 = a3;
  v9 = a1[3];
  v130 = a1[2];
  v131 = v9;
  v10 = a1[5];
  v132 = a1[4];
  v133 = v10;
  v11 = a1[1];
  v128 = *a1;
  v129 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v108 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF320, &unk_1CFA01C10);
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v108 - v16);
  v18 = sub_1CF9E5A58();
  v19 = *(v18 - 8);
  v116 = v18;
  v117 = v19;
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v108 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v113 = &v108 - v23;
  v24 = type metadata accessor for VFSItem(0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v108 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v34 = *(a1 + 8);
  if (v34)
  {
    v111 = v32;
    v112 = v30;
    v110 = v33;
    v114 = &v108 - v31;
    v115 = v15;
    v35 = a1[1];
    v125[0] = *a1;
    v36 = a1[2];
    v37 = a1[3];
    v125[1] = v35;
    v125[2] = v36;
    v125[3] = v37;
    *(&v125[4] + 8) = *(a1 + 72);
    v38 = *(a1 + 11);
    v124[8] = a5;
    *(&v125[5] + 1) = v38;
    *&v125[4] = v34;
    v123 = 8;
    *v124 = v122;
    sub_1CF278908(v124, v125, &v123, v118, v28);
    v109 = a5;
    sub_1CEFD90AC(v28, v114, type metadata accessor for VFSItem);
    v52 = objc_sync_enter(v121);
    if (v52)
    {
      MEMORY[0x1EEE9AC00](v52);
      *(&v108 - 2) = v121;
      fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, (&v108 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
    }

    v53 = v17;
    v54 = objc_sync_exit(v121);
    if (v54)
    {
      MEMORY[0x1EEE9AC00](v54);
      *(&v108 - 2) = v121;
      fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, (&v108 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
    }

    sub_1CF25116C(v14);
    v55 = v116;
    v56 = v117;
    if ((*(v117 + 48))(v14, 1, v116) == 1)
    {
      sub_1CEFCCC44(v14, &unk_1EC4BE310, qword_1CF9FCBE0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
      sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50, &unk_1CFA13B50);
      v57 = swift_allocError();
      v59 = v58;
      sub_1CF1B8150();
      v60 = swift_allocError();
      *v61 = 0xB000000000000008;
      *&v125[0] = v122;
      BYTE8(v125[0]) = v109;
      memset(&v125[1], 0, 96);
      v126 = v60;
      sub_1CF2A8DE0(v125);
      *v59 = v125[0];
      v62 = v125[1];
      v63 = v125[2];
      v64 = v125[4];
      *(v59 + 48) = v125[3];
      *(v59 + 64) = v64;
      *(v59 + 16) = v62;
      *(v59 + 32) = v63;
      v65 = v125[5];
      v66 = v125[6];
      v67 = v126;
      *(v59 + 128) = v127;
      *(v59 + 96) = v66;
      *(v59 + 112) = v67;
      *(v59 + 80) = v65;
      *v53 = v57;
      swift_storeEnumTagMultiPayload();
      v119(v53);
      sub_1CEFCCC44(v53, &qword_1EC4BF320, &unk_1CFA01C10);
      sub_1CEFE5888(v28, type metadata accessor for VFSItem);
      v68 = v114;
    }

    else
    {
      (*(v56 + 32))(v21, v14, v55);
      v69 = v113;
      (*(v56 + 16))(v113, v21, v55);
      v70 = *(v28 + 5);
      *&v125[0] = *(v28 + 4);
      *(&v125[0] + 1) = v70;

      sub_1CEFE52D8(0x6F632D6863746566, 0xED0000746E65746ELL, v125);
      *(&v125[0] + 1), v71, v72, v73, v74, v75, v76, v77;
      v108 = *(v56 + 8);
      v117 = v56 + 8;
      v108(v21, v55);
      sub_1CEFE5888(v28, type metadata accessor for VFSItem);
      v78 = (v114 + *(v112 + 28));
      if (*v78 == 1 || (v78[*(type metadata accessor for ItemMetadata(0) + 80)] & 1) != 0)
      {
        sub_1CF2B1510(v125);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
        sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50, &unk_1CFA13B50);
        v79 = swift_allocError();
        *v80 = v125[0];
        v81 = v125[4];
        v83 = v125[1];
        v82 = v125[2];
        *(v80 + 48) = v125[3];
        *(v80 + 64) = v81;
        *(v80 + 16) = v83;
        *(v80 + 32) = v82;
        v85 = v125[6];
        v84 = v126;
        v86 = v125[5];
        *(v80 + 128) = v127;
        *(v80 + 96) = v85;
        *(v80 + 112) = v84;
        *(v80 + 80) = v86;
        *v53 = v79;
        swift_storeEnumTagMultiPayload();
        v119(v53);
        sub_1CEFCCC44(v53, &qword_1EC4BF320, &unk_1CFA01C10);
        v87 = v69;
      }

      else
      {
        v88 = objc_opt_self();
        v89 = sub_1CF9E5928();
        v90 = [v88 readingIntentWithURL:v89 options:1];
        v115 = v90;

        v91 = v122;
        *&v125[0] = v122;
        v92 = v109;
        BYTE8(v125[0]) = v109;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC20, &qword_1CF9FE480);
        v93 = swift_allocObject();
        *(v93 + 16) = xmmword_1CFA00250;
        *(v93 + 32) = v90;
        v94 = v111;
        sub_1CEFD90AC(v114, v111, type metadata accessor for VFSItem);
        v95 = (*(v110 + 80) + 41) & ~*(v110 + 80);
        v96 = (v25 + v95 + 7) & 0xFFFFFFFFFFFFFFF8;
        v97 = swift_allocObject();
        v98 = v91;
        v99 = v120;
        *(v97 + 16) = v119;
        *(v97 + 24) = v99;
        *(v97 + 32) = v98;
        *(v97 + 40) = v92;
        sub_1CEFE4C60(v94, v97 + v95, type metadata accessor for VFSItem);
        *(v97 + v96) = v121;
        *(v97 + ((v96 + 15) & 0xFFFFFFFFFFFFFFF8)) = v118;
        v100 = v115;

        sub_1CF265B04(v125, v93, 0, sub_1CF2B144C, v97);

        v93, v101, v102, v103, v104, v105, v106, v107;

        v87 = v113;
      }

      v108(v87, v116);
      v68 = v114;
    }

    return sub_1CEFE5888(v68, type metadata accessor for VFSItem);
  }

  else
  {
    v39 = a5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
    sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50, &unk_1CFA13B50);
    v40 = swift_allocError();
    v42 = v41;
    sub_1CF1B8150();
    v43 = swift_allocError();
    *v44 = 0xB000000000000000;
    *&v124[7] = v128;
    *&v124[23] = v129;
    *&v124[39] = v130;
    *&v124[55] = v131;
    *&v124[71] = v132;
    *&v124[87] = v133;
    *&v125[0] = v122;
    BYTE8(v125[0]) = v39;
    *(&v125[2] + 9) = *&v124[32];
    *(&v125[1] + 9) = *&v124[16];
    *(v125 + 9) = *v124;
    *(&v125[6] + 1) = *(&v133 + 1);
    v126 = v43;
    *(&v125[5] + 9) = *&v124[80];
    *(&v125[4] + 9) = *&v124[64];
    *(&v125[3] + 9) = *&v124[48];
    sub_1CF2A8DE0(v125);
    *v42 = v125[0];
    v45 = v125[1];
    v46 = v125[2];
    v47 = v125[4];
    *(v42 + 48) = v125[3];
    *(v42 + 64) = v47;
    *(v42 + 16) = v45;
    *(v42 + 32) = v46;
    v48 = v125[5];
    v49 = v125[6];
    v50 = v126;
    *(v42 + 128) = v127;
    *(v42 + 96) = v49;
    *(v42 + 112) = v50;
    *(v42 + 80) = v48;
    *v17 = v40;
    swift_storeEnumTagMultiPayload();
    v119(v17);
    return sub_1CEFCCC44(v17, &qword_1EC4BF320, &unk_1CFA01C10);
  }
}

void sub_1CF26D3D4(uint64_t a1, void *a2, void (*a3)(uint64_t *), uint64_t a4, uint64_t a5, int a6, uint64_t a7, void *a8, unint64_t a9)
{
  v204 = a8;
  v205 = a3;
  v203 = a6;
  v202 = a5;
  v12 = type metadata accessor for VFSItem(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v182 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1CF9E6118();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v182 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF320, &unk_1CFA01C10);
  MEMORY[0x1EEE9AC00](v206);
  v27 = &v182 - v26;
  if (a2)
  {
    LODWORD(v221) = sub_1CF9E5328();
    sub_1CF196978();
    if (sub_1CF9E5658())
    {
      v28 = a7;
      v29 = (a7 + *(v12 + 36));
      v30 = *v29;
      v201 = a4;
      v31 = *(v29 + 2);
      v32 = v29[2];
      v33 = *(v29 + 24);
      v204 = *(v28 + 16);
      LODWORD(v200) = *(v28 + 24);
      v34 = *(v28 + 32);
      v35 = *(v28 + 40);
      v197 = v32;
      v198 = v34;
      LOBYTE(v221) = v33;
      v36 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
      sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50, &unk_1CFA13B50);
      v37 = swift_allocError();
      *v38 = v202;
      *(v38 + 8) = v203;
      *(v38 + 16) = v30;
      *(v38 + 24) = v31;
      *(v38 + 32) = v197;
      *(v38 + 40) = v33;
      v39 = v204;
      *(v38 + 48) = 0;
      *(v38 + 56) = v39;
      *(v38 + 64) = v200;
      *(v38 + 72) = v198;
      *(v38 + 80) = v35;
      *(v38 + 88) = 0;
      *(v38 + 96) = 0;
      *(v38 + 104) = 0;
      *(v38 + 112) = a2;
      *(v38 + 120) = 0;
      sub_1CF2A8DE0(v38);
      *v36 = v37;
      swift_storeEnumTagMultiPayload();

      v40 = a2;
      v205(v36);
      v41 = v36;
LABEL_36:
      sub_1CEFCCC44(v41, &qword_1EC4BF320, &unk_1CFA01C10);
      return;
    }

    *v27 = a2;
    swift_storeEnumTagMultiPayload();
    v50 = a2;
    v205(v27);
LABEL_9:
    v41 = v27;
    goto LABEL_36;
  }

  v194 = v14;
  v195 = v16;
  v197 = v18;
  v192 = v15;
  v200 = &v182 - v26;
  v201 = a4;
  v42 = v204[17];
  v43 = v12;
  v44 = a7 + *(v12 + 36);
  v45 = *v44;
  v46 = (a7 + *(v43 + 56));
  if (*(v46 + 4))
  {
    v47 = 0;
  }

  else
  {
    v47 = *v46;
  }

  v48 = *(v44 + 8);
  0, v19, v20, v21, v22, v23, v24, v25;
  v246[0] = v45;
  v246[1] = 0;
  LODWORD(v198) = v47;
  v247 = v47;
  v248 = v48;
  v249 = 0;
  v250 = 0;
  v193 = v43;
  v49 = (*(*v42 + 440))(v251, v246, a7 + *(v43 + 28), 0, 0, 1, (a9 >> 6) & 1, 0, 0);
  v199 = a7;
  v196 = v44;
  v51 = v49;
  v53 = v52;
  v191 = v54;
  v190 = v55;
  v186 = v42;
  v250, v52, v55, v54, v56, v57, v58, v59;
  v230 = v251[0];
  v231 = v251[1];
  v232 = v251[2];
  v233 = v251[3];
  v60 = *(v44 + 16);
  v61 = *(a7 + 16);
  v62 = *(a7 + 24);
  v64 = *(a7 + 32);
  v63 = *(a7 + 40);
  LOBYTE(v221) = *(v44 + 24);
  v188 = v60;
  v189 = v45;
  v234 = v45;
  v235 = v48;
  v236 = v60;
  v187 = v221;
  v237 = v221;
  v238 = 0;
  v239 = v61;
  v240 = v62;
  v241 = v64;
  v242 = v63;
  v244 = 0;
  v243 = 0;
  v245 = 0;

  sub_1CEFCCC44(&v234, &unk_1EC4BE330, &unk_1CF9FF010);
  v65 = v51;
  v66 = v51 == v234;
  v67 = v48;
  v68 = v53;
  v69 = v194;
  v70 = v195;
  if (v66 && v68 == v235)
  {
    v71 = v237;
    if (v191)
    {
      if ((v237 & 1) == 0)
      {
        goto LABEL_15;
      }

LABEL_23:
      v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED50, &unk_1CFA00730);
      v115 = *(v114 + 48);
      v116 = v231;
      v27 = v200;
      *v200 = v230;
      *(v27 + 1) = v116;
      v117 = v233;
      *(v27 + 2) = v232;
      *(v27 + 3) = v117;
      sub_1CEFD90AC(a7, &v27[v115], type metadata accessor for VFSItem);
      (*(*(v114 - 8) + 56))(v27, 0, 1, v114);
      swift_storeEnumTagMultiPayload();
      sub_1CF1AE1DC(&v230, &v221);
      v205(v27);
      sub_1CF1AE25C(&v230);
      goto LABEL_9;
    }

    if (v190 != v236)
    {
      v71 = 1;
    }

    if ((v71 & 1) == 0)
    {
      goto LABEL_23;
    }
  }

LABEL_15:
  v184 = v67;
  v72 = fpfs_current_or_default_log();
  v73 = v197;
  sub_1CF9E6128();
  sub_1CEFD90AC(a7, v69, type metadata accessor for VFSItem);
  v74 = sub_1CF9E6108();
  v75 = sub_1CF9E72A8();
  v185 = v74;
  v76 = os_log_type_enabled(v74, v75);
  v183 = v65;
  if (v76)
  {
    v77 = swift_slowAlloc();
    v182 = swift_slowAlloc();
    v209 = v182;
    *v77 = 136446466;
    v78 = sub_1CF25174C(v65, v68, v190, v191 & 1);
    v80 = v79;
    v81 = sub_1CEFD0DF0(v78, v79, &v209);
    v80, v82, v83, v84, v85, v86, v87, v88;
    *(v77 + 4) = v81;
    *(v77 + 12) = 2082;
    v89 = v69 + *(v193 + 36);
    v90 = *v89;
    v91 = *(v89 + 8);
    v92 = *(v89 + 16);
    v93 = *(v69 + 16);
    v94 = *(v69 + 24);
    v96 = *(v69 + 32);
    v95 = *(v69 + 40);
    v208 = *(v89 + 24);
    *&v221 = v90;
    DWORD2(v221) = v91;
    *&v222 = v92;
    BYTE8(v222) = v208;
    *&v223 = 0;
    *(&v223 + 1) = v93;
    LOBYTE(v224) = v94;
    *(&v224 + 1) = v96;
    v225 = v95;
    v226 = 0uLL;

    sub_1CEFCCC44(&v221, &unk_1EC4BE330, &unk_1CF9FF010);
    v97 = sub_1CF25174C(v221, SDWORD2(v221), v222, SBYTE8(v222));
    v99 = v98;
    sub_1CEFE5888(v69, type metadata accessor for VFSItem);
    v100 = sub_1CEFD0DF0(v97, v99, &v209);
    v99, v101, v102, v103, v104, v105, v106, v107;
    *(v77 + 14) = v100;
    v108 = v185;
    _os_log_impl(&dword_1CEFC7000, v185, v75, "Failed to capture a stable version of item: %{public}s != %{public}s", v77, 0x16u);
    v109 = v182;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v109, -1, -1);
    MEMORY[0x1D386CDC0](v77, -1, -1);

    v110 = (*(v70 + 8))(v197, v192);
  }

  else
  {

    sub_1CEFE5888(v69, type metadata accessor for VFSItem);
    v110 = (*(v70 + 8))(v73, v192);
  }

  v111 = v189;
  v112 = v186;
  if (v230)
  {
    MEMORY[0x1EEE9AC00](v110);
    *(&v182 - 4) = v112;
    *(&v182 - 6) = 0;
    v181 = v113;
    sub_1CEFE1894(sub_1CF2B9F78);
    *(v112 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_deleteBusy) = 0;
    if (*(v112 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_garbageCollectionSource))
    {
      ObjectType = swift_getObjectType();
      swift_unknownObjectRetain();
      MEMORY[0x1D3869790](1, ObjectType);
      swift_unknownObjectRelease();
    }
  }

  v197 = *(v199 + 16);
  v119 = v197;
  v120 = *(v199 + 24);
  LODWORD(v195) = v120;
  v121 = *(v199 + 40);
  v194 = *(v199 + 32);
  v122 = v194;
  v123 = v187;
  v208 = v187;
  v124 = swift_allocObject();
  *(v124 + 16) = v183;
  *(v124 + 24) = v68;
  *(v124 + 32) = v190;
  *(v124 + 40) = v191 & 1;
  v207 = v123;
  v209 = v111;
  v125 = v184;
  v210 = v184;
  v126 = v188;
  v211 = v188;
  v212 = v123;
  v213 = 0;
  v214 = v119;
  v215 = v120;
  v216 = v122;
  v217 = v121;
  v219 = 0;
  v220 = 0;
  v218 = 0;
  swift_bridgeObjectRetain_n();
  sub_1CEFCCC44(&v209, &unk_1EC4BE330, &unk_1CF9FF010);
  v127 = v210;
  v128 = v211;
  v129 = v212;
  *(v124 + 48) = v209;
  *(v124 + 56) = v127;
  *(v124 + 64) = v128;
  *(v124 + 72) = v129;
  v130 = v124 | 0x3000000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
  sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50, &unk_1CFA13B50);
  v131 = swift_allocError();
  v133 = v132;
  sub_1CF1B8150();
  v134 = swift_allocError();
  *v135 = v130;
  v136 = v125;
  *&v221 = v202;
  BYTE8(v221) = v203;
  *&v222 = v111;
  DWORD2(v222) = v125;
  *&v223 = v126;
  v137 = v111;
  BYTE8(v223) = v123;
  *&v224 = 0;
  *(&v224 + 1) = v197;
  LOBYTE(v225) = v195;
  *(&v225 + 1) = v194;
  v226 = v121;
  v227 = 0uLL;
  v228 = v134;
  sub_1CF2A8DE0(&v221);
  *v133 = v221;
  v138 = v222;
  v139 = v223;
  v140 = v225;
  *(v133 + 48) = v224;
  *(v133 + 64) = v140;
  *(v133 + 16) = v138;
  *(v133 + 32) = v139;
  v141 = v226;
  v142 = v227;
  v143 = v228;
  *(v133 + 128) = v229;
  *(v133 + 96) = v142;
  *(v133 + 112) = v143;
  *(v133 + 80) = v141;
  swift_willThrow();
  sub_1CF1AE25C(&v230);
  v144 = v131;
  LODWORD(v221) = sub_1CF9E5338();
  sub_1CF196978();
  LOBYTE(v121) = sub_1CF9E5658();

  v145 = v204;
  if ((v121 & 1) == 0)
  {
    v157 = v131;
    LODWORD(v221) = sub_1CF9E52B8();
    v158 = sub_1CF9E5658();

    if (v158)
    {
      v159 = (v199 + *(v193 + 44));
      if ((v159[1] & 1) == 0)
      {
        v160 = *v159;

        v131 = [objc_opt_self() fp:v160 errorForDataProtectionClass:?];
        swift_willThrow();
      }
    }

    v169 = v131;
    LODWORD(v221) = sub_1CF9E5328();
    v170 = sub_1CF9E5658();

    if (v170)
    {
      v171 = *(v196 + 16);
      v172 = *(v196 + 24);
      v204 = *(v199 + 16);
      LODWORD(v198) = *(v199 + 24);
      v173 = *(v199 + 40);
      v197 = *(v199 + 32);
      LOBYTE(v221) = v172;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
      sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50, &unk_1CFA13B50);
      v174 = swift_allocError();
      *v175 = v202;
      *(v175 + 8) = v203;
      *(v175 + 16) = v137;
      *(v175 + 24) = v136;
      *(v175 + 32) = v171;
      *(v175 + 40) = v172;
      v176 = v204;
      *(v175 + 48) = 0;
      *(v175 + 56) = v176;
      *(v175 + 64) = v198;
      *(v175 + 72) = v197;
      *(v175 + 80) = v173;
      *(v175 + 88) = 0;
      *(v175 + 96) = 0;
      *(v175 + 104) = 0;
      *(v175 + 112) = v131;
      *(v175 + 120) = 0;
      sub_1CF2A8DE0(v175);
      v177 = v200;
      *v200 = v174;
      swift_storeEnumTagMultiPayload();
      v178 = v131;

      v205(v177);

      v41 = v177;
    }

    else
    {
      v179 = v200;
      *v200 = v131;
      swift_storeEnumTagMultiPayload();
      v180 = v131;
      v205(v179);

      v41 = v179;
    }

    goto LABEL_36;
  }

  0, v146, v147, v148, v149, v150, v151, v152;
  v221 = v137;
  v222 = __PAIR64__(v125, v198);
  *&v223 = 0;
  v153 = objc_sync_enter(v145);
  if (v153)
  {
    MEMORY[0x1EEE9AC00](v153);
    v181 = v145;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, (&v182 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v154 = v145[20];

  v155 = objc_sync_exit(v145);
  if (v155)
  {
    MEMORY[0x1EEE9AC00](v155);
    v181 = v145;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, (&v182 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  v156 = *(v154 + 16);

  v161 = sub_1CEFDADE0(&v221, v156, 2097153);
  v223, v162, v163, v164, v165, v166, v167, v168;
  *&v221 = v202;
  BYTE8(v221) = v203;
  sub_1CF262BC8(&v221, v161);
  if ((v161 & 0x80000000) == 0)
  {
    close(v161);
  }
}

uint64_t sub_1CF26E2E4(uint64_t *a1, __int128 *a2, void *a3, char *a4, uint64_t a5, uint64_t a6)
{
  v48 = a4;
  v47 = a3;
  v43 = sub_1CF9E63D8();
  v42 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v41 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v41 - v16;
  v45 = *a1;
  v44 = *(a1 + 8);
  v18 = a2[3];
  v57 = a2[2];
  v58 = v18;
  v19 = a2[5];
  v59 = a2[4];
  v60 = v19;
  v20 = a2[1];
  v55 = *a2;
  v56 = v20;
  v21 = *(v6 + 224);
  v46 = *(v6 + 216);
  v22 = sub_1CF9E6448();
  v23 = *(v22 - 8);
  (*(v23 + 56))(v17, 1, 1, v22);
  v24 = swift_allocObject();
  *(v24 + 16) = a5;
  *(v24 + 24) = a6;
  v25 = swift_allocObject();
  v26 = v58;
  *(v25 + 72) = v57;
  *(v25 + 88) = v26;
  v27 = v60;
  *(v25 + 104) = v59;
  *(v25 + 120) = v27;
  v28 = v56;
  *(v25 + 40) = v55;
  v29 = v45;
  *(v25 + 16) = v6;
  *(v25 + 24) = v29;
  *(v25 + 32) = v44;
  *(v25 + 56) = v28;
  v30 = v48;
  *(v25 + 136) = v47;
  *(v25 + 144) = v30;
  *(v25 + 152) = a5;
  *(v25 + 160) = a6;
  v31 = swift_allocObject();
  v31[2] = sub_1CF2B1400;
  v31[3] = v24;
  v31[4] = v21;
  swift_retain_n();
  v47 = v46;

  sub_1CEFCCBDC(&v55, &aBlock, &unk_1EC4BE330, &unk_1CF9FF010);

  v32 = fpfs_current_log();
  v46 = *(v21 + 16);
  v48 = v17;
  sub_1CEFCCBDC(v17, v14, &unk_1EC4BE370, qword_1CFA01B30);
  if ((*(v23 + 48))(v14, 1, v22) == 1)
  {
    sub_1CEFCCC44(v14, &unk_1EC4BE370, qword_1CFA01B30);
    v33 = QOS_CLASS_UNSPECIFIED;
  }

  else
  {
    v34 = v41;
    sub_1CF9E6438();
    (*(v23 + 8))(v14, v22);
    v33 = sub_1CF9E63C8();
    (*(v42 + 8))(v34, v43);
  }

  v35 = swift_allocObject();
  v35[2] = v32;
  v35[3] = sub_1CF2B1404;
  v35[4] = v25;
  v53 = sub_1CF2BA17C;
  v54 = v35;
  aBlock = MEMORY[0x1E69E9820];
  v50 = 1107296256;
  v51 = sub_1CEFCA444;
  v52 = &block_descriptor_825;
  v36 = _Block_copy(&aBlock);
  v37 = v32;

  v53 = sub_1CF2B141C;
  v54 = v31;
  aBlock = MEMORY[0x1E69E9820];
  v50 = 1107296256;
  v51 = sub_1CEFCA444;
  v52 = &block_descriptor_828;
  v38 = _Block_copy(&aBlock);

  v39 = v47;
  fp_task_tracker_async_and_qos(v46, v47, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v33, v36, v38);
  _Block_release(v38);
  _Block_release(v36);

  return sub_1CEFCCC44(v48, &unk_1EC4BE370, qword_1CFA01B30);
}

void sub_1CF26E89C(void *a1, uint64_t a2, char a3, _OWORD *a4, off_t a5, off_t a6, void (*a7)(uint64_t, uint64_t))
{
  v11 = a4[3];
  *&v75[32] = a4[2];
  v76 = v11;
  v12 = a4[5];
  v77 = a4[4];
  v78 = v12;
  v13 = a4[1];
  *v75 = *a4;
  *&v75[16] = v13;
  v79 = a2;
  v80 = a3;
  sub_1CEFCCBDC(a4, v83, &unk_1EC4BE330, &unk_1CF9FF010);
  sub_1CEFDAA48(&v79, v75, v81, v14, v15, v16, v17, v18, v19);
  v83[2] = *&v75[32];
  v83[3] = v76;
  v83[4] = v77;
  v83[5] = v78;
  v83[0] = *v75;
  v83[1] = *&v75[16];
  sub_1CEFCCC44(v83, &unk_1EC4BECD0, &unk_1CF9FEF80);
  v20 = v82;
  *v75 = v81[0];
  *&v75[16] = v81[1];
  *&v75[32] = v82;
  v21 = objc_sync_enter(a1);
  if (v21)
  {
    MEMORY[0x1EEE9AC00](v21);
    v73 = a1;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v72, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v22 = a1[20];

  v23 = objc_sync_exit(a1);
  if (v23)
  {
    MEMORY[0x1EEE9AC00](v23);
    v73 = a1;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v72, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  v24 = *(v22 + 16);

  v25 = sub_1CEFDADE0(v75, v24, 0x200000);
  v20, v26, v27, v28, v29, v30, v31, v32;
  v34 = lseek(v25, a5 & ~(a5 >> 63), 4);
  v74 = a7;
  if ((v34 & 0x8000000000000000) == 0)
  {
    v35 = v34;
    v36 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v37 = lseek(v25, v35, 3);
      if (v37 < 0)
      {
        v61 = MEMORY[0x1D38683F0]();
        *v75 = 26;
        memset(&v75[8], 0, 32);
        v75[40] = 19;
        v51 = sub_1CF19BBE4(v61, v75);
        sub_1CF1969CC(v75);
        swift_willThrow();
        goto LABEL_21;
      }

      v42 = v37;
      if (v37 >= a6)
      {
        break;
      }

      if (v37 < v35)
      {
        __break(1u);
        goto LABEL_34;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v36 = sub_1CF1F6BC4(0, *v36->tree + 1, 1, v36, v43, v44, v45, v46);
      }

      v48 = *v36->tree;
      v47 = *v36->tester;
      if (v48 >= v47 >> 1)
      {
        v36 = sub_1CF1F6BC4((v47 > 1), v48 + 1, 1, v36, v43, v44, v45, v46);
      }

      *v36->tree = v48 + 1;
      v49 = v36 + 16 * v48;
      *(v49 + 4) = v35;
      *(v49 + 5) = v42;
      v35 = lseek(v25, v42, 4);
      a5 = v42;
      if ((v35 & 0x8000000000000000) != 0)
      {
        goto LABEL_17;
      }
    }

    a5 = v35;
    if (v35 == v37)
    {
      goto LABEL_30;
    }

LABEL_24:
    if (((a5 | v42) & 0x8000000000000000) == 0)
    {
      if (v42 < a5)
      {
LABEL_34:
        __break(1u);
      }

      else if (swift_isUniquelyReferenced_nonNull_native())
      {
LABEL_27:
        v63 = *v36->tree;
        v62 = *v36->tester;
        if (v63 >= v62 >> 1)
        {
          v36 = sub_1CF1F6BC4((v62 > 1), v63 + 1, 1, v36, v38, v39, v40, v41);
        }

        *v36->tree = v63 + 1;
        v64 = v36 + 16 * v63;
        *(v64 + 4) = a5;
        *(v64 + 5) = v42;
        goto LABEL_30;
      }

      v36 = sub_1CF1F6BC4(0, *v36->tree + 1, 1, v36, v38, v39, v40, v41);
      goto LABEL_27;
    }

LABEL_30:
    if ((v25 & 0x80000000) == 0)
    {
      close(v25);
    }

    v74(v36, 0);
    v36, v65, v66, v67, v68, v69, v70, v71;
    return;
  }

  v36 = MEMORY[0x1E69E7CC0];
  v42 = -1;
LABEL_17:
  v50 = MEMORY[0x1D38683F0]();
  *v75 = 26;
  memset(&v75[8], 0, 32);
  v75[40] = 19;
  v51 = sub_1CF19BBE4(v50, v75);
  sub_1CF1969CC(v75);
  swift_willThrow();
  v52 = v51;
  *v75 = sub_1CF9E52A8();
  sub_1CF196978();
  v53 = sub_1CF9E5658();

  if (v53)
  {

    if (a5 == v42)
    {
      goto LABEL_30;
    }

    goto LABEL_24;
  }

LABEL_21:
  v36, v54, v55, v56, v57, v58, v59, v60;
  if ((v25 & 0x80000000) == 0)
  {
    close(v25);
  }

  v33 = v51;
  v74(v51, 1);
}

uint64_t sub_1CF26ED44(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = v6;
  v84 = a5;
  v85 = a6;
  v82 = a4;
  v92 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE380, &qword_1CFA01BA0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v76 - v11;
  v13 = sub_1CF9E63D8();
  v91 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v88 = v76 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = v76 - v19;
  v86 = sub_1CF9E6448();
  v83 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v22 = v76 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = v76 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v81 = v76 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v90 = v76 - v29;
  v79 = *v92;
  v78 = *(v92 + 8);
  v30 = a2[1];
  v105 = *a2;
  v106 = v30;
  v31 = a2[3];
  v107 = a2[2];
  v108 = v31;
  v32 = a3[3];
  v101 = a3[2];
  v102 = v32;
  v33 = a3[5];
  v103 = a3[4];
  v104 = v33;
  v34 = a3[1];
  v99 = *a3;
  v100 = v34;
  v35 = v7[27];
  v80 = v7[28];
  v87 = v7;
  v36 = v91;
  v89 = v35;
  sub_1CF9E6418();
  qos_class_self();
  sub_1CF9E63B8();
  v37 = *(v36 + 48);
  v92 = v13;
  if (v37(v12, 1, v13) == 1)
  {
    v38 = v92;
    (*(v36 + 104))(v20, *MEMORY[0x1E69E7FA0], v92);
    v39 = v37(v12, 1, v38);
    v40 = v36;
    if (v39 != 1)
    {
      sub_1CEFCCC44(v12, &unk_1EC4BE380, &qword_1CFA01BA0);
    }
  }

  else
  {
    (*(v36 + 32))(v20, v12, v92);
    v40 = v36;
  }

  sub_1CF9E6428();
  v41 = v88;
  sub_1CF9E6438();
  v42 = sub_1CF9E63C8();
  v43 = *(v40 + 8);
  v44 = v92;
  v43(v41, v92);
  sub_1CF9E6438();
  v45 = sub_1CF9E63C8();
  v77 = v43;
  v91 = v40 + 8;
  v43(v15, v44);
  v46 = v83;
  v47 = *(v83 + 8);
  if (v42 >= v45)
  {
    v48 = v22;
  }

  else
  {
    v48 = v25;
  }

  if (v42 >= v45)
  {
    v49 = v25;
  }

  else
  {
    v49 = v22;
  }

  v50 = v86;
  v76[0] = *(v83 + 8);
  v76[1] = v83 + 8;
  v47(v48, v86);
  v51 = v90;
  (*(v46 + 32))(v90, v49, v50);
  (*(v46 + 56))(v51, 0, 1, v50);
  v52 = swift_allocObject();
  v53 = v102;
  *(v52 + 48) = v101;
  *(v52 + 64) = v53;
  v54 = v104;
  *(v52 + 80) = v103;
  *(v52 + 96) = v54;
  v55 = v100;
  *(v52 + 16) = v99;
  *(v52 + 32) = v55;
  v57 = v84;
  v56 = v85;
  *(v52 + 112) = v84;
  *(v52 + 120) = v56;
  *(v52 + 128) = v79;
  *(v52 + 136) = v78;
  v58 = v82;
  *(v52 + 144) = v87;
  *(v52 + 152) = v58;
  v59 = v108;
  *(v52 + 192) = v107;
  *(v52 + 208) = v59;
  v60 = v106;
  *(v52 + 160) = v105;
  *(v52 + 176) = v60;
  v61 = swift_allocObject();
  v61[2] = v57;
  v61[3] = v56;
  v62 = v80;
  v61[4] = v80;
  swift_retain_n();
  sub_1CEFCCBDC(&v99, &v93, &unk_1EC4BECD0, &unk_1CF9FEF80);

  sub_1CEFCCBDC(&v105, &v93, &unk_1EC4BF260, &unk_1CFA01B60);

  v85 = fpfs_current_log();
  v87 = *(v62 + 16);
  v63 = *(v46 + 48);
  v64 = v63(v51, 1, v50);
  v65 = v51;
  v66 = v81;
  sub_1CEFCCBDC(v65, v81, &unk_1EC4BE370, qword_1CFA01B30);
  if (v63(v66, 1, v50) == 1)
  {
    sub_1CEFCCC44(v66, &unk_1EC4BE370, qword_1CFA01B30);
    v67 = QOS_CLASS_UNSPECIFIED;
  }

  else
  {
    sub_1CF9E6438();
    (v76[0])(v66, v50);
    v67 = sub_1CF9E63C8();
    v77(v41, v92);
  }

  if (v64 == 1)
  {
    v68 = DISPATCH_BLOCK_INHERIT_QOS_CLASS;
  }

  else
  {
    v68 = DISPATCH_BLOCK_ENFORCE_QOS_CLASS;
  }

  v69 = swift_allocObject();
  v70 = v85;
  v69[2] = v85;
  v69[3] = sub_1CF2B1348;
  v69[4] = v52;
  v97 = sub_1CF2BA17C;
  v98 = v69;
  v93 = MEMORY[0x1E69E9820];
  v94 = 1107296256;
  v95 = sub_1CEFCA444;
  v96 = &block_descriptor_794;
  v71 = _Block_copy(&v93);
  v72 = v70;

  v97 = sub_1CF2B1364;
  v98 = v61;
  v93 = MEMORY[0x1E69E9820];
  v94 = 1107296256;
  v95 = sub_1CEFCA444;
  v96 = &block_descriptor_797;
  v73 = _Block_copy(&v93);

  v74 = v89;
  fp_task_tracker_async_and_qos(v87, v89, v68, v67, v71, v73);
  _Block_release(v73);
  _Block_release(v71);

  return sub_1CEFCCC44(v90, &unk_1EC4BE370, qword_1CFA01B30);
}

uint64_t sub_1CF26F520(__int128 *a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, _OWORD *a8)
{
  v174 = a7;
  v178 = a5;
  v176 = a2;
  v177 = a3;
  v219 = *MEMORY[0x1E69E9840];
  v11 = a8[1];
  v209 = *a8;
  v210 = v11;
  v12 = a8[2];
  v13 = a8[3];
  v170 = a8;
  v211 = v12;
  v212 = v13;
  v14 = a1[3];
  v215 = a1[2];
  v216 = v14;
  v15 = a1[5];
  v217 = a1[4];
  v218 = v15;
  v16 = a1[1];
  v213 = *a1;
  v214 = v16;
  v17 = sub_1CF9E6118();
  v172 = *(v17 - 8);
  v173 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v175 = &v147 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1CF9E6388();
  v167 = *(v19 - 8);
  v168 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v166 = (&v147 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v21);
  v164 = &v147 - v22;
  v165 = sub_1CF9E6498();
  v163 = *(v165 - 8);
  MEMORY[0x1EEE9AC00](v165);
  v162 = &v147 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE380, &qword_1CFA01BA0);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v158 = &v147 - v25;
  v26 = sub_1CF9E63D8();
  v155 = *(v26 - 8);
  v156 = v26;
  MEMORY[0x1EEE9AC00](v26);
  v157 = &v147 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1CF9E6448();
  v160 = *(v28 - 8);
  v161 = v28;
  MEMORY[0x1EEE9AC00](v28);
  v159 = &v147 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1CF9E73D8();
  v153 = *(v30 - 8);
  v154 = v30;
  MEMORY[0x1EEE9AC00](v30);
  v152 = &v147 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for ItemMetadata(0);
  MEMORY[0x1EEE9AC00](v32);
  v169 = &v147 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for VFSItem(0);
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v147 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF310, &unk_1CF9FDB30);
  MEMORY[0x1EEE9AC00](v37);
  v39 = (&v147 - v38);
  v40 = *(a1 + 8);
  if (!v40)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
    sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50, &unk_1CFA13B50);
    v46 = swift_allocError();
    v48 = v47;
    sub_1CF1B8150();
    v49 = swift_allocError();
    *v50 = 0xB000000000000000;
    *(v186 + 7) = v213;
    *(&v186[1] + 7) = v214;
    *(&v186[2] + 7) = v215;
    *(&v186[3] + 7) = v216;
    *(&v186[4] + 7) = v217;
    *(&v186[5] + 7) = v218;
    *&v199[0] = a4;
    BYTE8(v199[0]) = v178;
    *(&v199[2] + 9) = v186[2];
    *(&v199[1] + 9) = v186[1];
    *(v199 + 9) = v186[0];
    *(&v199[6] + 1) = *(&v218 + 1);
    *(&v199[5] + 9) = v186[5];
    *(&v199[4] + 9) = v186[4];
    *(&v199[3] + 9) = v186[3];
    v200 = v49;
    sub_1CF2A8DE0(v199);
    *v48 = v199[0];
    v51 = v199[1];
    v52 = v199[2];
    v53 = v199[4];
    *(v48 + 48) = v199[3];
    *(v48 + 64) = v53;
    *(v48 + 16) = v51;
    *(v48 + 32) = v52;
    v54 = v199[5];
    v55 = v199[6];
    v56 = v200;
    *(v48 + 128) = v201;
    *(v48 + 96) = v55;
    *(v48 + 112) = v56;
    *(v48 + 80) = v54;
    *v39 = v46;
    swift_storeEnumTagMultiPayload();
    v176(v39);
    return sub_1CEFCCC44(v39, &unk_1EC4BF310, &unk_1CF9FDB30);
  }

  v41 = v39;
  v171 = v37;
  v42 = a1[1];
  v199[0] = *a1;
  v199[1] = v42;
  v43 = a1[3];
  v199[2] = a1[2];
  v199[3] = v43;
  *(&v199[4] + 8) = *(a1 + 72);
  v44 = *(a1 + 11);
  *&v186[0] = a4;
  v45 = v178;
  BYTE8(v186[0]) = v178;
  *(&v199[5] + 1) = v44;
  *&v199[4] = v40;
  *&v194 = 8;
  sub_1CF278908(v186, v199, &v194, v174 | 1, v36);
  v58 = v45;
  v151 = a6;
  v174 = a4;
  v59 = &v36[v34[7]];
  v60 = *v59;
  if (v60 == 1 || v59[v32[20]] != 1)
  {
    v71 = &v36[v34[9]];
    v170 = *v71;
    LODWORD(v169) = *(v71 + 2);
    v168 = *(v71 + 2);
    v72 = v58;
    v73 = v71[24];
    v175 = *(v36 + 2);
    LODWORD(v173) = v36[24];
    v74 = *(v36 + 5);
    v172 = *(v36 + 4);
    LOBYTE(v186[0]) = v73;
    v75 = v59;
    v76 = swift_allocObject();
    *(v76 + 16) = v60;
    *(v76 + 17) = v75[v32[20]];
    v77 = v76 | 0x5000000000000000;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
    sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50, &unk_1CFA13B50);
    v78 = swift_allocError();
    v80 = v79;
    sub_1CF1B8150();
    v81 = swift_allocError();
    *v82 = v77;
    *&v199[0] = v174;
    BYTE8(v199[0]) = v72;
    *&v199[1] = v170;
    DWORD2(v199[1]) = v169;
    *&v199[2] = v168;
    BYTE8(v199[2]) = v73;
    *&v199[3] = 0;
    *(&v199[3] + 1) = v175;
    LOBYTE(v199[4]) = v173;
    *(&v199[4] + 1) = v172;
    v199[5] = v74;
    v199[6] = 0uLL;
    v200 = v81;
    sub_1CF2A8DE0(v199);
    *v80 = v199[0];
    v83 = v199[1];
    v84 = v199[2];
    v85 = v199[4];
    *(v80 + 48) = v199[3];
    *(v80 + 64) = v85;
    *(v80 + 16) = v83;
    *(v80 + 32) = v84;
    v86 = v199[5];
    v87 = v199[6];
    v88 = v200;
    *(v80 + 128) = v201;
    *(v80 + 96) = v87;
    *(v80 + 112) = v88;
    *(v80 + 80) = v86;
    *v41 = v78;
    swift_storeEnumTagMultiPayload();

    goto LABEL_9;
  }

  v61 = v170;
  v62 = *(v170 + 3);
  if (v62 >> 60 == 11)
  {
    sub_1CF2B0794(v199);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
    sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50, &unk_1CFA13B50);
    v63 = swift_allocError();
    *v64 = v199[0];
    v65 = v199[4];
    v67 = v199[1];
    v66 = v199[2];
    *(v64 + 48) = v199[3];
    *(v64 + 64) = v65;
    *(v64 + 16) = v67;
    *(v64 + 32) = v66;
    v69 = v199[6];
    v68 = v200;
    v70 = v199[5];
    *(v64 + 128) = v201;
    *(v64 + 96) = v69;
    *(v64 + 112) = v68;
    *(v64 + 80) = v70;
    *v39 = v63;
    swift_storeEnumTagMultiPayload();
LABEL_9:
    v176(v41);
    sub_1CEFCCC44(v41, &unk_1EC4BF310, &unk_1CF9FDB30);
    return sub_1CEFE5888(v36, type metadata accessor for VFSItem);
  }

  v194 = *v170;
  v195 = *(v170 + 2);
  v196 = v62;
  v89 = v170[3];
  v197 = v170[2];
  v198 = v89;
  v149 = v59;
  v90 = v169;
  v91 = sub_1CEFD90AC(v59, v169, type metadata accessor for ItemMetadata);
  v150 = &v147;
  *(v90 + v32[20]) = 0;
  v92 = *(v151 + 136);
  v179 = 0;
  v93 = v61[1];
  v189 = *v61;
  v190 = v93;
  v94 = v61[3];
  v191 = v61[2];
  v192 = v94;
  MEMORY[0x1EEE9AC00](v91);
  *(&v147 - 2) = v92;
  *(&v147 - 1) = &v179;
  v95 = *(*v92 + 600);
  v193[0] = v209;
  v193[1] = v210;
  v193[2] = v211;
  v193[3] = v212;
  sub_1CF1AE1DC(v193, v199);
  sub_1CF1AE1DC(&v194, v199);
  v95(&v189, sub_1CF2B1370, &v147 - 4, MEMORY[0x1E69E7CA8] + 8);
  v96 = v176;
  v97 = v149;
  v148 = v92;
  v188[0] = v189;
  v188[1] = v190;
  v188[2] = v191;
  v188[3] = v192;
  sub_1CEFCCC44(v188, &unk_1EC4BF260, &unk_1CFA01B60);
  v98 = v179;
  if (v179 <= 1023)
  {
    v99 = v169;
    if (!v179)
    {
      goto LABEL_22;
    }

    if (v179 == 512)
    {
      v98 = 2;
      goto LABEL_22;
    }

LABEL_21:
    v98 = 1;
    goto LABEL_22;
  }

  v99 = v169;
  if (v179 == 1024)
  {
    v98 = 3;
    goto LABEL_22;
  }

  if (v179 == 2048)
  {
    v98 = 4;
    goto LABEL_22;
  }

  if (v179 != 0x8000)
  {
    goto LABEL_21;
  }

  v98 = 5;
LABEL_22:
  v99[v32[21]] = v98;
  v99[v32[23]] = 5;
  sub_1CF2B138C(v99, v97);
  v107 = &v36[v34[9]];
  v108 = *v107;
  v109 = &v36[v34[14]];
  if (v109[4])
  {
    v110 = 0;
  }

  else
  {
    v110 = *v109;
  }

  v111 = *(v107 + 2);
  0, v100, v101, v102, v103, v104, v105, v106;
  v181[0] = v108;
  v181[1] = 0;
  v182 = v110;
  v183 = v111;
  v184 = 0;
  v185 = 0;
  sub_1CEFE528C(v186);
  v205 = v186[12];
  v206 = v186[13];
  v207 = v186[14];
  v201 = v186[8];
  v202 = v186[9];
  v203 = v186[10];
  v204 = v186[11];
  v199[4] = v186[4];
  v199[5] = v186[5];
  v199[6] = v186[6];
  v200 = v186[7];
  v199[0] = v186[0];
  v199[1] = v186[1];
  v208 = v187;
  v199[2] = v186[2];
  v199[3] = v186[3];
  sub_1CEFCCBDC(v170, &v180, &unk_1EC4BF260, &unk_1CFA01B60);
  v112 = v148;

  sub_1CF1A9D0C(v199, v99, v112, &v194, v181, v113);
  v175 = &v147;
  v114 = v36;
  0, v115, v116, v117, v118, v119, v120, v121;
  v122 = swift_allocObject();
  v123 = v177;
  *(v122 + 16) = v96;
  *(v122 + 24) = v123;
  *(v122 + 32) = v174;
  v124 = v178;
  v125 = v122;
  *(v122 + 40) = v178;
  v176 = sub_1CEFD57E0(0, &qword_1EDEAED60, 0x1E69E9630);
  v126 = *(v151 + 216);
  *&v186[0] = MEMORY[0x1E69E7CC0];
  sub_1CF2A9448(&qword_1EDEAB5E0, MEMORY[0x1E69E80B0], MEMORY[0x1E69E80B8]);

  v127 = v126;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE3A0, &qword_1CFA006D0);
  sub_1CEFCCCEC(&qword_1EDEAB650, &qword_1EC4BE3A0, &qword_1CFA006D0, MEMORY[0x1E69E6328]);
  v128 = v152;
  v129 = v154;
  sub_1CF9E77B8();
  v130 = sub_1CF9E73E8();

  (*(v153 + 8))(v128, v129);
  qos_class_self();
  v131 = v158;
  sub_1CF9E63B8();
  v133 = v155;
  v132 = v156;
  v134 = *(v155 + 48);
  if (v134(v131, 1, v156) == 1)
  {
    (*(v133 + 104))(v157, *MEMORY[0x1E69E7FA0], v132);
    v135 = v134(v131, 1, v132);
    v136 = v114;
    if (v135 != 1)
    {
      sub_1CEFCCC44(v131, &unk_1EC4BE380, &qword_1CFA01BA0);
    }
  }

  else
  {
    (*(v133 + 32))(v157, v131, v132);
    v136 = v114;
  }

  ObjectType = swift_getObjectType();
  v138 = v159;
  sub_1CF9E6428();
  v139 = swift_allocObject();
  v140 = v174;
  *(v139 + 16) = v151;
  *(v139 + 24) = v140;
  *(v139 + 32) = v124;
  *(v139 + 40) = 0u;
  *(v139 + 56) = 0u;
  *(v139 + 72) = 0u;
  *(v139 + 88) = 0u;
  *(v139 + 104) = 0u;
  *(v139 + 120) = 0u;
  *(v139 + 136) = 0;
  *(v139 + 144) = 1;
  *(v139 + 152) = v130;
  *(v139 + 160) = sub_1CF2B13F0;
  *(v139 + 168) = v125;

  swift_unknownObjectRetain();

  sub_1CEFD5828(0, v138, sub_1CF2B9F4C, v139, ObjectType);

  (*(v160 + 8))(v138, v161);
  v141 = v162;
  sub_1CF9E6478();
  v142 = v164;
  sub_1CEFD5B64(v164);
  v143 = v166;
  sub_1CEFD5BD8(v166);
  MEMORY[0x1D3869770](v141, v142, v143, ObjectType);
  v144 = *(v167 + 8);
  v145 = v143;
  v146 = v168;
  v144(v145, v168);
  v144(v142, v146);
  (*(v163 + 8))(v141, v165);
  sub_1CF9E7448();

  swift_unknownObjectRelease();
  sub_1CEFCCC44(v170, &unk_1EC4BF260, &unk_1CFA01B60);
  sub_1CEFE5888(v169, type metadata accessor for ItemMetadata);
  return sub_1CEFE5888(v136, type metadata accessor for VFSItem);
}

uint64_t sub_1CF2707E4(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4, int a5)
{
  v38 = a5;
  v37 = a4;
  v39 = a3;
  v40 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF310, &unk_1CF9FDB30);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v37 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v37 - v13;
  v15 = type metadata accessor for VFSItem(0);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CEFCCBDC(a1, v11, &unk_1EC4BF310, &unk_1CF9FDB30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = *v11;
    *&v41 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
    swift_willThrowTypedImpl();
    *v8 = v19;
    swift_storeEnumTagMultiPayload();
    v20 = v19;
    v40(v8);

    return sub_1CEFCCC44(v8, &unk_1EC4BF310, &unk_1CF9FDB30);
  }

  v21 = v40;
  sub_1CEFE55D0(v11, v14, &unk_1EC4BEC00, &unk_1CF9FCB60);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_1CEFCCC44(v14, &unk_1EC4BEC00, &unk_1CF9FCB60);
    v22 = swift_allocObject();
    v23 = swift_allocObject();
    *(v23 + 16) = 1;
    *(v22 + 16) = v23;
    v24 = v22 | 0xA000000000000000;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
    sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50, &unk_1CFA13B50);
    v25 = swift_allocError();
    v27 = v26;
    sub_1CF1B8150();
    v28 = swift_allocError();
    *v29 = v24;
    *&v41 = v37;
    BYTE8(v41) = v38;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = v28;
    sub_1CF2A8DE0(&v41);
    *v27 = v41;
    v30 = v42;
    v31 = v43;
    v32 = v45;
    *(v27 + 48) = v44;
    *(v27 + 64) = v32;
    *(v27 + 16) = v30;
    *(v27 + 32) = v31;
    v33 = v46;
    v34 = v47;
    v35 = v48;
    *(v27 + 128) = v49;
    *(v27 + 96) = v34;
    *(v27 + 112) = v35;
    *(v27 + 80) = v33;
    *v8 = v25;
    swift_storeEnumTagMultiPayload();
    v21(v8);
    return sub_1CEFCCC44(v8, &unk_1EC4BF310, &unk_1CF9FDB30);
  }

  sub_1CEFE4C60(v14, v18, type metadata accessor for VFSItem);
  sub_1CEFD90AC(v18, v8, type metadata accessor for VFSItem);
  (*(v16 + 56))(v8, 0, 1, v15);
  swift_storeEnumTagMultiPayload();
  v21(v8);
  sub_1CEFCCC44(v8, &unk_1EC4BF310, &unk_1CF9FDB30);
  return sub_1CEFE5888(v18, type metadata accessor for VFSItem);
}

uint64_t sub_1CF270C78(__int128 *a1, uint64_t a2, void *a3)
{
  v70 = a3;
  v69 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE380, &qword_1CFA01BA0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v62 - v6;
  v8 = sub_1CF9E63D8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v66 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v73 = &v62 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v62 - v14;
  v71 = sub_1CF9E6448();
  v16 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v18 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v62 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v68 = &v62 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v75 = &v62 - v25;
  v26 = a1[1];
  v82 = *a1;
  v83 = v26;
  v27 = a1[3];
  v84 = a1[2];
  v85 = v27;
  v67 = *(v3 + 224);
  v72 = v3;
  v74 = *(v3 + 216);
  sub_1CF9E6418();
  qos_class_self();
  sub_1CF9E63B8();
  v28 = *(v9 + 48);
  if (v28(v7, 1, v8) == 1)
  {
    (*(v9 + 104))(v15, *MEMORY[0x1E69E7FA0], v8);
    if (v28(v7, 1, v8) != 1)
    {
      sub_1CEFCCC44(v7, &unk_1EC4BE380, &qword_1CFA01BA0);
    }
  }

  else
  {
    (*(v9 + 32))(v15, v7, v8);
  }

  sub_1CF9E6428();
  v29 = v73;
  sub_1CF9E6438();
  v30 = sub_1CF9E63C8();
  v31 = *(v9 + 8);
  v65 = v9 + 8;
  v31(v29, v8);
  v32 = v66;
  sub_1CF9E6438();
  v33 = sub_1CF9E63C8();
  v66 = v31;
  v31(v32, v8);
  v34 = *(v16 + 8);
  if (v30 >= v33)
  {
    v35 = v18;
  }

  else
  {
    v35 = v21;
  }

  if (v30 >= v33)
  {
    v36 = v21;
  }

  else
  {
    v36 = v18;
  }

  v37 = v71;
  v64 = v16 + 8;
  v63 = v34;
  v34(v35, v71);
  v38 = *(v16 + 32);
  v62 = v8;
  v39 = v75;
  v38(v75, v36, v37);
  (*(v16 + 56))(v39, 0, 1, v37);
  v40 = v16;
  v41 = swift_allocObject();
  v42 = v69;
  v43 = v70;
  *(v41 + 16) = v69;
  *(v41 + 24) = v43;
  v44 = swift_allocObject();
  *(v44 + 16) = v72;
  v45 = v83;
  *(v44 + 24) = v82;
  *(v44 + 40) = v45;
  v46 = v85;
  *(v44 + 56) = v84;
  *(v44 + 72) = v46;
  *(v44 + 88) = v42;
  *(v44 + 96) = v43;
  v47 = swift_allocObject();
  v47[2] = sub_1CF2BA174;
  v47[3] = v41;
  v48 = v67;
  v47[4] = v67;
  swift_retain_n();

  sub_1CF1AE1DC(&v82, &aBlock);
  v72 = v41;

  v49 = fpfs_current_log();
  v70 = *(v48 + 16);
  v50 = *(v40 + 48);
  v51 = v50(v39, 1, v37);
  v52 = v39;
  v53 = v68;
  sub_1CEFCCBDC(v52, v68, &unk_1EC4BE370, qword_1CFA01B30);
  if (v50(v53, 1, v37) == 1)
  {
    sub_1CEFCCC44(v53, &unk_1EC4BE370, qword_1CFA01B30);
    v54 = QOS_CLASS_UNSPECIFIED;
  }

  else
  {
    sub_1CF9E6438();
    v63(v53, v37);
    v54 = sub_1CF9E63C8();
    (v66)(v29, v62);
  }

  if (v51 == 1)
  {
    v55 = DISPATCH_BLOCK_INHERIT_QOS_CLASS;
  }

  else
  {
    v55 = DISPATCH_BLOCK_ENFORCE_QOS_CLASS;
  }

  v56 = swift_allocObject();
  v56[2] = v49;
  v56[3] = sub_1CF2B131C;
  v56[4] = v44;
  v80 = sub_1CF2BA17C;
  v81 = v56;
  aBlock = MEMORY[0x1E69E9820];
  v77 = 1107296256;
  v78 = sub_1CEFCA444;
  v79 = &block_descriptor_777;
  v57 = _Block_copy(&aBlock);
  v58 = v49;

  v80 = sub_1CF2BA180;
  v81 = v47;
  aBlock = MEMORY[0x1E69E9820];
  v77 = 1107296256;
  v78 = sub_1CEFCA444;
  v79 = &block_descriptor_780;
  v59 = _Block_copy(&aBlock);

  v60 = v74;
  fp_task_tracker_async_and_qos(v70, v74, v55, v54, v57, v59);
  _Block_release(v59);
  _Block_release(v57);

  return sub_1CEFCCC44(v75, &unk_1EC4BE370, qword_1CFA01B30);
}

uint64_t sub_1CF271488(uint64_t a1, void *a2, uint64_t (*a3)(void))
{
  if (*a2)
  {
    MEMORY[0x1EEE9AC00](a1);
    sub_1CEFE1894(sub_1CF2B132C);
  }

  return a3(0);
}

uint64_t sub_1CF271798(uint64_t a1, unsigned __int8 *a2, uint64_t a3, void *a4)
{
  v82 = a3;
  v83 = a4;
  v79 = a1;
  v6 = type metadata accessor for VFSItem(0);
  v78 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v77 = v7;
  v80 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE380, &qword_1CFA01BA0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v69 - v9;
  v11 = sub_1CF9E63D8();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v73 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v86 = &v69 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v69 - v17;
  v81 = sub_1CF9E6448();
  v19 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v21 = &v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v69 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v76 = &v69 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v87 = &v69 - v28;
  v74 = *a2;
  v29 = *(v4 + 216);
  v75 = *(v4 + 224);
  v84 = v4;
  v85 = v29;
  sub_1CF9E6418();
  qos_class_self();
  sub_1CF9E63B8();
  v30 = *(v12 + 48);
  if (v30(v10, 1, v11) == 1)
  {
    (*(v12 + 104))(v18, *MEMORY[0x1E69E7FA0], v11);
    if (v30(v10, 1, v11) != 1)
    {
      sub_1CEFCCC44(v10, &unk_1EC4BE380, &qword_1CFA01BA0);
    }
  }

  else
  {
    (*(v12 + 32))(v18, v10, v11);
  }

  sub_1CF9E6428();
  v31 = v86;
  sub_1CF9E6438();
  v32 = sub_1CF9E63C8();
  v33 = *(v12 + 8);
  v72 = v12 + 8;
  v33(v31, v11);
  v34 = v73;
  sub_1CF9E6438();
  v35 = sub_1CF9E63C8();
  v73 = v33;
  v33(v34, v11);
  v36 = v19;
  v37 = *(v19 + 8);
  if (v32 >= v35)
  {
    v38 = v21;
  }

  else
  {
    v38 = v24;
  }

  if (v32 >= v35)
  {
    v39 = v24;
  }

  else
  {
    v39 = v21;
  }

  v40 = v81;
  v71 = v19 + 8;
  v70 = v37;
  v37(v38, v81);
  v41 = *(v19 + 32);
  v69 = v11;
  v42 = v87;
  v41(v87, v39, v40);
  (*(v19 + 56))(v42, 0, 1, v40);
  v43 = swift_allocObject();
  v44 = v82;
  v45 = v83;
  *(v43 + 16) = v82;
  *(v43 + 24) = v45;
  v46 = v80;
  sub_1CEFD90AC(v79, v80, type metadata accessor for VFSItem);
  v47 = (*(v78 + 80) + 16) & ~*(v78 + 80);
  v48 = (v47 + v77 + 7) & 0xFFFFFFFFFFFFFFF8;
  v49 = (v47 + v77 + 23) & 0xFFFFFFFFFFFFFFF8;
  v50 = swift_allocObject();
  sub_1CEFE4C60(v46, v50 + v47, type metadata accessor for VFSItem);
  v51 = v50 + v48;
  *v51 = v84;
  *(v51 + 8) = v74;
  v80 = v50;
  v52 = (v50 + v49);
  *v52 = v44;
  v52[1] = v45;
  v53 = swift_allocObject();
  v53[2] = sub_1CF2BA174;
  v53[3] = v43;
  v54 = v75;
  v53[4] = v75;
  swift_retain_n();

  v84 = v43;

  v55 = fpfs_current_log();
  v83 = *(v54 + 16);
  v56 = *(v36 + 48);
  v57 = v87;
  v58 = v56(v87, 1, v40);
  v59 = v76;
  sub_1CEFCCBDC(v57, v76, &unk_1EC4BE370, qword_1CFA01B30);
  if (v56(v59, 1, v40) == 1)
  {
    sub_1CEFCCC44(v59, &unk_1EC4BE370, qword_1CFA01B30);
    v60 = QOS_CLASS_UNSPECIFIED;
  }

  else
  {
    v61 = v86;
    sub_1CF9E6438();
    v70(v59, v40);
    v60 = sub_1CF9E63C8();
    (v73)(v61, v69);
  }

  if (v58 == 1)
  {
    v62 = DISPATCH_BLOCK_INHERIT_QOS_CLASS;
  }

  else
  {
    v62 = DISPATCH_BLOCK_ENFORCE_QOS_CLASS;
  }

  v63 = swift_allocObject();
  v63[2] = v55;
  v63[3] = sub_1CF2B1220;
  v63[4] = v80;
  v92 = sub_1CF2BA17C;
  v93 = v63;
  aBlock = MEMORY[0x1E69E9820];
  v89 = 1107296256;
  v90 = sub_1CEFCA444;
  v91 = &block_descriptor_753;
  v64 = _Block_copy(&aBlock);
  v65 = v55;

  v92 = sub_1CF2BA180;
  v93 = v53;
  aBlock = MEMORY[0x1E69E9820];
  v89 = 1107296256;
  v90 = sub_1CEFCA444;
  v91 = &block_descriptor_756;
  v66 = _Block_copy(&aBlock);

  v67 = v85;
  fp_task_tracker_async_and_qos(v83, v85, v62, v60, v64, v66);
  _Block_release(v66);
  _Block_release(v64);

  return sub_1CEFCCC44(v87, &unk_1EC4BE370, qword_1CFA01B30);
}

uint64_t sub_1CF272030(uint64_t a1, void *a2, char a3, void (*a4)(void), uint64_t a5)
{
  v38[1] = a5;
  v39 = a4;
  v8 = type metadata accessor for ItemMetadata(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for VFSItem(0);
  v19 = a1 + v18[9];
  v20 = *v19;
  v21 = (a1 + v18[14]);
  if (*(v21 + 4))
  {
    v22 = 0;
  }

  else
  {
    v22 = *v21;
  }

  v23 = *(v19 + 8);
  0, v11, v12, v13, v14, v15, v16, v17;
  v42[0] = v20;
  v42[1] = 0;
  v43 = v22;
  v44 = v23;
  v45 = 0;
  v46 = 0;
  v24 = objc_sync_enter(a2);
  if (v24)
  {
    MEMORY[0x1EEE9AC00](v24);
    v38[-2] = a2;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, &v38[-4], "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v25 = a2[20];

  v26 = objc_sync_exit(a2);
  if (v26)
  {
    MEMORY[0x1EEE9AC00](v26);
    v38[-2] = a2;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, &v38[-4], "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  v27 = *(v25 + 16);

  v28 = sub_1CEFDADE0(v42, v27, 2129920);
  v46, v29, v30, v31, v32, v33, v34, v35;
  sub_1CEFD90AC(a1 + v18[7], v10, type metadata accessor for ItemMetadata);
  v10[*(v8 + 88)] = a3;
  sub_1CEFE528C(v40);
  v48 = v41;
  v47[12] = v40[12];
  v47[13] = v40[13];
  v47[14] = v40[14];
  v47[8] = v40[8];
  v47[9] = v40[9];
  v47[10] = v40[10];
  v47[11] = v40[11];
  v47[4] = v40[4];
  v47[5] = v40[5];
  v47[6] = v40[6];
  v47[7] = v40[7];
  v47[0] = v40[0];
  v47[1] = v40[1];
  v47[2] = v40[2];
  v47[3] = v40[3];
  MEMORY[0x1EEE9AC00](v36);
  LODWORD(v38[-2]) = v28;
  sub_1CF9B9578(v47, sub_1CF2B9F58, &v38[-4], v38);
  v39(0);
  result = sub_1CEFE5888(v10, type metadata accessor for ItemMetadata);
  if ((v28 & 0x80000000) == 0)
  {
    return close(v28);
  }

  return result;
}

uint64_t sub_1CF2723A8(uint64_t a1, void (*a2)(uint64_t *), int *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v318 = a7;
  v319 = a6;
  v345 = a5;
  v347 = a3;
  v10 = sub_1CF9E6068();
  v313 = *(v10 - 8);
  v314 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v312 = v304 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v310 = v304 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v326 = v304 - v15;
  v311 = type metadata accessor for Signpost(0);
  v315 = *(v311 - 8);
  MEMORY[0x1EEE9AC00](v311);
  v316 = v16;
  v317 = v304 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v331 = v304 - v18;
  v343 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF310, &unk_1CF9FDB30);
  MEMORY[0x1EEE9AC00](v343);
  v309 = (v304 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v20);
  v320 = (v304 - v21);
  MEMORY[0x1EEE9AC00](v22);
  v342 = (v304 - v23);
  MEMORY[0x1EEE9AC00](v24);
  v348 = (v304 - v25);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v328 = v304 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v337 = v304 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v307 = v304 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v34 = v304 - v33;
  v344 = type metadata accessor for VFSItem(0);
  v340 = *(v344 - 8);
  MEMORY[0x1EEE9AC00](v344);
  v330 = v304 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v324 = v304 - v37;
  v329 = sub_1CF9E5A58();
  v327 = *(v329 - 8);
  MEMORY[0x1EEE9AC00](v329);
  v321 = v304 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v323 = v304 - v40;
  v322 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED00, &unk_1CFA006E0);
  MEMORY[0x1EEE9AC00](v322);
  v332 = v304 - v41;
  v42 = sub_1CF9E53C8();
  v43 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v45 = v304 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C5000, &qword_1CFA181A0);
  MEMORY[0x1EEE9AC00](v46);
  v308 = (v304 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v48);
  v341 = (v304 - v49);
  MEMORY[0x1EEE9AC00](v50);
  v52 = (v304 - v51);
  type metadata accessor for VFSStagedContext();
  v346 = a1;
  v53 = swift_dynamicCastClass();
  if (!v53)
  {
    LODWORD(v349) = 22;
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF2A9448(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
    sub_1CF9E57D8();
    v81 = sub_1CF9E53A8();
    (*(v43 + 8))(v45, v42);
    *v52 = v81;
    swift_storeEnumTagMultiPayload();
    a2(v52);
    return sub_1CEFCCC44(v52, &unk_1EC4C5000, &qword_1CFA181A0);
  }

  v54 = v53;
  v333 = v46;
  v55 = swift_allocObject();
  *(v55 + 16) = 0;
  v56 = v55 + 16;
  v57 = swift_allocObject();
  v339 = a4;
  v57[2] = a4;
  v57[3] = v54;
  v334 = a2;
  v335 = v54;
  v57[4] = a2;
  v57[5] = v347;
  v57[6] = v55;
  v336 = v57;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD90, &unk_1CFA134F0);
  v338 = swift_allocBox();
  v59 = v58;
  sub_1CEFCCBDC(v345, v58, &unk_1EC4BFD90, &unk_1CFA134F0);
  if (*(v59 + 8) != 2 || *v59)
  {
    swift_retain_n();
    v63 = v339;
  }

  else
  {
    v60 = *(v59 + 16);
    v61 = *(v59 + 24);
    v62 = qword_1EDEAEE10;
    swift_retain_n();
    v63 = v339;

    if (v62 != -1)
    {
      swift_once();
    }

    v64 = sub_1CF39B038(v60, v61, xmmword_1EDEBBE48, *(&xmmword_1EDEBBE48 + 1));
    v61, v65, v66, v67, v68, v69, v70, v71;
    if (v64)
    {
      if (qword_1EDEA4368 != -1)
      {
        swift_once();
      }

      v72 = unk_1EDEBB6A0;
      v73 = *(v59 + 24);
      *(v59 + 16) = qword_1EDEBB698;
      *(v59 + 24) = v72;

      v73, v74, v75, v76, v77, v78, v79, v80;
    }
  }

  v345 = v55;
  v83 = *(v59 + 8);
  v84 = *(v59 + 16);
  v85 = *(v59 + 24);
  v358 = *v59;
  LOBYTE(v359) = v83;
  v353 = 0u;
  v354 = 0u;
  v351 = 0u;
  v352 = 0u;
  v349 = 0u;
  v350 = 0u;

  sub_1CEFDAA48(&v358, &v349, &v360, v86, v87, v88, v89, v90, v91);
  v92 = v360;
  v362, v93, v94, v95, v96, v97, v98, v99;
  sub_1CF263ADC(v92, 0, 3, v34);
  v325 = 0;
  v306 = v56;
  v305 = v85;
  v100 = v340 + 48;
  v101 = *(v340 + 48);
  if (v101(v34, 1, v344) == 1)
  {
    sub_1CEFCCC44(v34, &unk_1EC4BEC00, &unk_1CF9FCB60);
    v102 = swift_allocObject();
    *(v102 + 16) = 3;
    v103 = v102 | 0x7000000000000000;
    v104 = swift_allocObject();
    *(v104 + 16) = v103;
    v105 = v104 | 0x8000000000000000;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
    sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50, &unk_1CFA13B50);
    v106 = swift_allocError();
    v108 = v107;
    sub_1CF1B8150();
    v109 = swift_allocError();
    *v110 = v105;
    *&v349 = v92;
    BYTE8(v349) = 1;
    *(&v349 + 9) = v360;
    HIDWORD(v349) = *(&v360 + 3);
    v350 = 0u;
    v351 = 0u;
    v352 = 0u;
    v353 = 0u;
    v354 = 0u;
    v355 = 0u;
    v356 = v109;
    sub_1CF2A8DE0(&v349);
    *v108 = v349;
    v111 = v350;
    v112 = v351;
    v113 = v353;
    *(v108 + 48) = v352;
    *(v108 + 64) = v113;
    *(v108 + 16) = v111;
    *(v108 + 32) = v112;
    v114 = v354;
    v115 = v355;
    v116 = v356;
    *(v108 + 128) = v357;
    *(v108 + 96) = v115;
    *(v108 + 112) = v116;
    *(v108 + 80) = v114;
    swift_willThrow();
    v305, v117, v118, v119, v120, v121, v122, v123;
LABEL_18:
    *v348 = v106;
    v149 = swift_storeEnumTagMultiPayload();
    v150 = v63[17];
    MEMORY[0x1EEE9AC00](v149);
    v300 = v150;
    LODWORD(v301) = 1;
    v302 = v151;

    v152 = v106;
    sub_1CEFE1894(sub_1CF2B9F78);
    *(v150 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_deleteBusy) = 0;
    if (*(v150 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_garbageCollectionSource))
    {
      ObjectType = swift_getObjectType();
      swift_unknownObjectRetain();
      MEMORY[0x1D3869790](1, ObjectType);
      swift_unknownObjectRelease();
    }

    v154 = v342;
    sub_1CEFCCBDC(v348, v342, &unk_1EC4BF310, &unk_1CF9FDB30);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v156 = v334;
    if (EnumCaseMultiPayload == 1)
    {
      v157 = v341;
      *v341 = *v154;
    }

    else
    {
      v158 = v337;
      sub_1CEFE55D0(v154, v337, &unk_1EC4BEC00, &unk_1CF9FCB60);
      v159 = v306;
      swift_beginAccess();
      if ((*(v340 + 48))(v158, 1, v344) == 1)
      {
        sub_1CEFCCC44(v158, &unk_1EC4BEC00, &unk_1CF9FCB60);
        v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BED18, &qword_1CFA006F8);
        v157 = v341;
        (*(*(v160 - 8) + 56))(v341, 1, 1, v160);
      }

      else
      {
        v161 = *v159;
        v162 = v158;
        v157 = v341;
        sub_1CEFE4C60(v162, v341, type metadata accessor for VFSItem);
        v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BED18, &qword_1CFA006F8);
        *(v157 + v163[9]) = v161;
        *(v157 + v163[10]) = 0;
        v164 = v157 + v163[11];
        *v164 = 0;
        *(v164 + 1) = 0;
        *(v164 + 2) = 0;
        *(v164 + 3) = 0xB000000000000000;
        *(v164 + 2) = 0u;
        *(v164 + 3) = 0u;
        (*(*(v163 - 1) + 56))(v157, 0, 1, v163);
      }

      *(v157 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BED10, &qword_1CFA006F0) + 48)) = 0;
    }

    swift_storeEnumTagMultiPayload();
    v156(v157);

    sub_1CEFCCC44(v157, &unk_1EC4C5000, &qword_1CFA181A0);
    sub_1CEFCCC44(v348, &unk_1EC4BF310, &unk_1CF9FDB30);
    goto LABEL_27;
  }

  v304[0] = v101;
  v124 = v330;
  sub_1CEFE4C60(v34, v330, type metadata accessor for VFSItem);
  v125 = objc_sync_enter(v63);
  if (v125)
  {
    MEMORY[0x1EEE9AC00](v125);
    v302 = v63;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, &v300, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v304[1] = v100;
  v126 = objc_sync_exit(v63);
  v127 = v328;
  if (v126)
  {
    MEMORY[0x1EEE9AC00](v126);
    v302 = v63;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, &v300, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  sub_1CF25116C(v328);
  v128 = v327;
  v129 = v329;
  if ((*(v327 + 48))(v127, 1, v329) == 1)
  {
    sub_1CEFCCC44(v127, &unk_1EC4BE310, qword_1CF9FCBE0);
    v130 = swift_allocObject();
    *(v130 + 16) = 0xB000000000000008;
    v131 = v130 | 0x8000000000000000;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
    sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50, &unk_1CFA13B50);
    v106 = swift_allocError();
    v133 = v132;
    sub_1CF1B8150();
    v134 = swift_allocError();
    *v135 = v131;
    *&v349 = v92;
    BYTE8(v349) = 1;
    *(&v349 + 9) = v360;
    HIDWORD(v349) = *(&v360 + 3);
    v350 = 0u;
    v351 = 0u;
    v352 = 0u;
    v353 = 0u;
    v354 = 0u;
    v355 = 0u;
    v356 = v134;
    sub_1CF2A8DE0(&v349);
    *v133 = v349;
    v136 = v350;
    v137 = v351;
    v138 = v353;
    *(v133 + 48) = v352;
    *(v133 + 64) = v138;
    *(v133 + 16) = v136;
    *(v133 + 32) = v137;
    v139 = v354;
    v140 = v355;
    v141 = v356;
    *(v133 + 128) = v357;
    *(v133 + 96) = v140;
    *(v133 + 112) = v141;
    *(v133 + 80) = v139;
    swift_willThrow();
    v305, v142, v143, v144, v145, v146, v147, v148;
    sub_1CEFE5888(v124, type metadata accessor for VFSItem);
    goto LABEL_18;
  }

  v348 = *(v128 + 32);
  v165 = v321;
  v348(v321, v127, v129);
  *&v349 = v84;
  *(&v349 + 1) = v305;
  v360 = 47;
  v361 = 0xE100000000000000;
  v358 = 58;
  v359 = 0xE100000000000000;
  v302 = sub_1CEFE4E68();
  v303 = v302;
  v300 = MEMORY[0x1E69E6158];
  v301 = v302;
  v166 = v129;
  sub_1CF9E7668();
  v168 = v167;
  v169 = v323;
  sub_1CF9E5958();
  v305, v170, v171, v172, v173, v174, v175, v176;
  v168, v177, v178, v179, v180, v181, v182, v183;
  (*(v128 + 8))(v165, v129);
  v184 = v124;
  v185 = v324;
  sub_1CEFE4C60(v184, v324, type metadata accessor for VFSItem);
  v186 = v332;
  v348(v332, v169, v166);
  v187 = v186 + *(v322 + 48);
  sub_1CEFE4C60(v185, v187, type metadata accessor for VFSItem);
  v188 = (v187 + *(v344 + 28));
  v189 = type metadata accessor for ItemMetadata(0);
  if (*(v188 + v189[16]) & 1) == 0 && ((v207 = *(v188 + v189[17]), v207 == 2) || (v207 & 1) == 0) || (*(v188 + v189[20]))
  {
    v347 = v189;
    v348 = v188;
    v208 = *(v187 + 8);
    *v59 = *v187;
    *(v59 + 8) = v208;
    if (qword_1EDEA8528 != -1)
    {
      swift_once();
    }

    v209 = qword_1EDEBB990;
    v210 = v313;
    v211 = v314;
    v212 = v326;
    (*(v313 + 56))(v326, 1, 1, v314);
    *&v349 = 0;
    *(&v349 + 1) = 0xE000000000000000;
    sub_1CF9E7948();
    *(&v349 + 1), v213, v214, v215, v216, v217, v218, v219;
    *&v349 = 0xD000000000000010;
    *(&v349 + 1) = 0x80000001CFA3D7D0;
    v220 = sub_1CF9E5A18();
    v222 = v221;
    MEMORY[0x1D3868CC0](v220);
    v222, v223, v224, v225, v226, v227, v228, v229;
    v343 = *(&v349 + 1);
    v344 = v349;
    v230 = v212;
    v231 = v310;
    sub_1CEFCCBDC(v230, v310, &unk_1EC4BED20, &unk_1CFA00700);
    v232 = *(v210 + 48);
    v233 = v232(v231, 1, v211);
    v234 = v312;
    if (v233 == 1)
    {
      v235 = v209;
      sub_1CF9E6048();
      if (v232(v231, 1, v211) != 1)
      {
        sub_1CEFCCC44(v231, &unk_1EC4BED20, &unk_1CFA00700);
      }
    }

    else
    {
      (*(v210 + 32))(v312, v231, v211);
    }

    v236 = v331;
    (*(v210 + 16))(v331, v234, v211);
    v237 = v311;
    *(v236 + *(v311 + 20)) = v209;
    v238 = v236 + *(v237 + 24);
    *v238 = "Coordination: Acquiring for Creation";
    *(v238 + 8) = 36;
    *(v238 + 16) = 2;
    v239 = v209;
    v240 = sub_1CF9E7468();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
    v241 = swift_allocObject();
    *(v241 + 16) = xmmword_1CF9FA450;
    *(v241 + 56) = MEMORY[0x1E69E6158];
    *(v241 + 64) = sub_1CEFD51C4();
    v242 = v343;
    *(v241 + 32) = v344;
    *(v241 + 40) = v242;
    v302 = v241;
    LOBYTE(v301) = 2;
    sub_1CF9E6028(v240, &dword_1CEFC7000, v239, "Coordination: Acquiring for Creation", 36, 2, v236, "%s", 2);
    v241, v243, v244, v245, v246, v247, v248, v249;
    (*(v210 + 8))(v234, v211);
    sub_1CEFCCC44(v326, &unk_1EC4BED20, &unk_1CFA00700);
    v250 = objc_opt_self();
    v251 = v332;
    v252 = sub_1CF9E5928();
    v253 = [v250 writingIntentWithURL:v252 options:8];

    MEMORY[0x1EEE9AC00](v254);
    v303 = v251;
    MEMORY[0x1EEE9AC00](v255);
    v256 = v339;
    v300 = v339;
    v301 = sub_1CF2B9EA4;
    v302 = v257;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC4C5730, &qword_1CF9FCCE0);
    sub_1CF9E59B8();
    LODWORD(v344) = v349;
    v360 = 0;
    LOBYTE(v361) = -1;
    if (*(v348 + v347[20]))
    {
      v348 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC20, &qword_1CF9FE480);
      v258 = swift_allocObject();
      *(v258 + 1) = xmmword_1CFA00250;
      v348 = v258;
      *(v258 + 4) = v253;
      v259 = v253;
    }

    v260 = v253;
    v343 = v253;
    v261 = v317;
    sub_1CEFD90AC(v331, v317, type metadata accessor for Signpost);
    v262 = (*(v315 + 80) + 64) & ~*(v315 + 80);
    v263 = (v316 + v262 + 7) & 0xFFFFFFFFFFFFFFF8;
    v264 = (v263 + 15) & 0xFFFFFFFFFFFFFFF8;
    v265 = swift_allocObject();
    v266 = v338;
    v265[2] = v256;
    v265[3] = v266;
    v267 = v336;
    v265[4] = sub_1CF2B1078;
    v265[5] = v267;
    v265[6] = v260;
    v265[7] = v345;
    sub_1CEFE4C60(v261, v265 + v262, type metadata accessor for Signpost);
    *(v265 + v263) = v335;
    v268 = v265 + v264;
    v269 = v319;
    v270 = *(v319 + 48);
    *(v268 + 2) = *(v319 + 32);
    *(v268 + 3) = v270;
    v271 = *(v269 + 16);
    *v268 = *v269;
    *(v268 + 1) = v271;
    v272 = *(v269 + 112);
    *(v268 + 6) = *(v269 + 96);
    *(v268 + 7) = v272;
    v273 = *(v269 + 80);
    *(v268 + 4) = *(v269 + 64);
    *(v268 + 5) = v273;
    v274 = *(v269 + 176);
    *(v268 + 10) = *(v269 + 160);
    *(v268 + 11) = v274;
    v275 = *(v269 + 144);
    *(v268 + 8) = *(v269 + 128);
    *(v268 + 9) = v275;
    *(v268 + 30) = *(v269 + 240);
    v276 = *(v269 + 224);
    *(v268 + 13) = *(v269 + 208);
    *(v268 + 14) = v276;
    *(v268 + 12) = *(v269 + 192);
    *(v265 + ((v264 + 255) & 0xFFFFFFFFFFFFFFF8)) = v318;

    v277 = v343;

    sub_1CEFCCBDC(v269, &v349, &qword_1EC4BECF0, &unk_1CF9FEEB0);
    v278 = v348;
    sub_1CF265B04(&v360, v348, v344 & 1, sub_1CF2B10BC, v265);

    v278, v279, v280, v281, v282, v283, v284, v285;

    sub_1CEFE5888(v331, type metadata accessor for Signpost);
    sub_1CEFCCC44(v332, &unk_1EC4BED00, &unk_1CFA006E0);
  }

  v190 = *v59;
  v191 = *(v59 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
  sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50, &unk_1CFA13B50);
  v192 = swift_allocError();
  v194 = v193;
  sub_1CF1B8150();
  v195 = swift_allocError();
  *v196 = 0xB000000000000018;
  *&v349 = v190;
  BYTE8(v349) = v191;
  *(&v349 + 9) = v358;
  HIDWORD(v349) = *(&v358 + 3);
  v350 = 0u;
  v351 = 0u;
  v352 = 0u;
  v353 = 0u;
  v354 = 0u;
  v355 = 0u;
  v356 = v195;
  sub_1CF2A8DE0(&v349);
  *v194 = v349;
  v197 = v350;
  v198 = v351;
  v199 = v353;
  *(v194 + 48) = v352;
  *(v194 + 64) = v199;
  *(v194 + 16) = v197;
  *(v194 + 32) = v198;
  v200 = v354;
  v201 = v355;
  v202 = v356;
  *(v194 + 128) = v357;
  *(v194 + 96) = v201;
  *(v194 + 112) = v202;
  *(v194 + 80) = v200;
  *v320 = v192;
  v203 = swift_storeEnumTagMultiPayload();
  v204 = v339[17];
  MEMORY[0x1EEE9AC00](v203);
  v300 = v204;
  LODWORD(v301) = 1;
  v302 = v205;

  v206 = v325;
  sub_1CEFE1894(sub_1CF2B9F78);
  if (v206)
  {
  }

  else
  {
    *(v204 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_deleteBusy) = 0;
    if (*(v204 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_garbageCollectionSource))
    {
      v286 = swift_getObjectType();
      swift_unknownObjectRetain();
      MEMORY[0x1D3869790](1, v286);
      swift_unknownObjectRelease();
    }
  }

  v287 = v306;
  v288 = v309;
  sub_1CEFCCBDC(v320, v309, &unk_1EC4BF310, &unk_1CF9FDB30);
  v289 = swift_getEnumCaseMultiPayload();
  v290 = v334;
  if (v289 == 1)
  {
    v291 = *v288;
    v292 = v308;
    *v308 = v291;
  }

  else
  {
    v293 = v288;
    v294 = v307;
    sub_1CEFE55D0(v293, v307, &unk_1EC4BEC00, &unk_1CF9FCB60);
    swift_beginAccess();
    if ((v304[0])(v294, 1, v344) == 1)
    {
      sub_1CEFCCC44(v294, &unk_1EC4BEC00, &unk_1CF9FCB60);
      v295 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BED18, &qword_1CFA006F8);
      v292 = v308;
      (*(*(v295 - 8) + 56))(v308, 1, 1, v295);
    }

    else
    {
      v296 = *v287;
      v297 = v294;
      v292 = v308;
      sub_1CEFE4C60(v297, v308, type metadata accessor for VFSItem);
      v298 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BED18, &qword_1CFA006F8);
      *(v292 + v298[9]) = v296;
      *(v292 + v298[10]) = 0;
      v299 = v292 + v298[11];
      *v299 = 0;
      *(v299 + 1) = 0;
      *(v299 + 2) = 0;
      *(v299 + 3) = 0xB000000000000000;
      *(v299 + 2) = 0u;
      *(v299 + 3) = 0u;
      (*(*(v298 - 1) + 56))(v292, 0, 1, v298);
    }

    *(v292 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BED10, &qword_1CFA006F0) + 48)) = 0;
  }

  swift_storeEnumTagMultiPayload();
  v290(v292);

  sub_1CEFCCC44(v292, &unk_1EC4C5000, &qword_1CFA181A0);
  sub_1CEFCCC44(v320, &unk_1EC4BF310, &unk_1CF9FDB30);
  sub_1CEFCCC44(v332, &unk_1EC4BED00, &unk_1CFA006E0);
LABEL_27:
}

uint64_t sub_1CF274048(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *), uint64_t a5, uint64_t a6)
{
  v28 = a5;
  v29 = a4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v28 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF310, &unk_1CF9FDB30);
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v28 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C5000, &qword_1CFA181A0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = (&v28 - v17);
  v19 = *(a2 + 136);
  v20 = *(a3 + 16);
  v30 = v19;
  v31 = 1;
  v32 = v20;

  sub_1CEFE1894(sub_1CF2B9F78);
  *(v19 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_deleteBusy) = 0;
  if (*(v19 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_garbageCollectionSource))
  {
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    MEMORY[0x1D3869790](1, ObjectType);
    swift_unknownObjectRelease();
  }

  sub_1CEFCCBDC(a1, v15, &unk_1EC4BF310, &unk_1CF9FDB30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *v18 = *v15;
  }

  else
  {
    sub_1CEFE55D0(v15, v12, &unk_1EC4BEC00, &unk_1CF9FCB60);
    swift_beginAccess();
    v22 = type metadata accessor for VFSItem(0);
    if ((*(*(v22 - 8) + 48))(v12, 1, v22) == 1)
    {
      sub_1CEFCCC44(v12, &unk_1EC4BEC00, &unk_1CF9FCB60);
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BED18, &qword_1CFA006F8);
      (*(*(v23 - 8) + 56))(v18, 1, 1, v23);
    }

    else
    {
      v24 = *(a6 + 16);
      sub_1CEFE4C60(v12, v18, type metadata accessor for VFSItem);
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BED18, &qword_1CFA006F8);
      *(v18 + v25[9]) = v24;
      *(v18 + v25[10]) = 0;
      v26 = v18 + v25[11];
      *v26 = 0;
      *(v26 + 1) = 0;
      *(v26 + 2) = 0;
      *(v26 + 3) = 0xB000000000000000;
      *(v26 + 2) = 0u;
      *(v26 + 3) = 0u;
      (*(*(v25 - 1) + 56))(v18, 0, 1, v25);
    }

    *(v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BED10, &qword_1CFA006F0) + 48)) = 0;
  }

  swift_storeEnumTagMultiPayload();
  v29(v18);
  return sub_1CEFCCC44(v18, &unk_1EC4C5000, &qword_1CFA181A0);
}

uint64_t sub_1CF274434(uint64_t a1, void *a2, char *a3, uint64_t a4, void (*a5)(uint64_t *), uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, char a12)
{
  v371 = a8;
  v390 = a7;
  v403 = a6;
  v404 = a5;
  v385 = a2;
  v423 = *MEMORY[0x1E69E9840];
  v381 = type metadata accessor for ItemMetadata(0);
  MEMORY[0x1EEE9AC00](v381);
  v366 = &v349 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v368 = sub_1CF9E53C8();
  v359 = *(v368 - 8);
  MEMORY[0x1EEE9AC00](v368);
  v365 = &v349 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v362 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE000, &unk_1CFA006A0);
  MEMORY[0x1EEE9AC00](v362);
  v361 = (&v349 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v16);
  v360 = (&v349 - v17);
  MEMORY[0x1EEE9AC00](v18);
  v369 = (&v349 - v19);
  v367 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE2F0, qword_1CFA04220);
  MEMORY[0x1EEE9AC00](v367);
  v364 = &v349 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v370 = (&v349 - v22);
  v23 = sub_1CF9E64A8();
  v373 = *(v23 - 8);
  v374 = v23;
  MEMORY[0x1EEE9AC00](v23);
  v372 = (&v349 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = sub_1CF9E6068();
  v378 = *(v25 - 8);
  v379 = v25;
  MEMORY[0x1EEE9AC00](v25);
  v377 = &v349 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v376 = &v349 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v384 = &v349 - v30;
  v383 = type metadata accessor for Signpost(0);
  MEMORY[0x1EEE9AC00](v383);
  v382 = &v349 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v401 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF310, &unk_1CF9FDB30);
  MEMORY[0x1EEE9AC00](v401);
  v402 = (&v349 - v32);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v393 = &v349 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  MEMORY[0x1EEE9AC00](v35 - 8);
  v363 = &v349 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v375 = &v349 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v349 - v40;
  v42 = type metadata accessor for VFSItem(0);
  v396 = *(v42 - 8);
  v397 = v42;
  MEMORY[0x1EEE9AC00](v42);
  v358 = &v349 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v399 = (&v349 - v45);
  MEMORY[0x1EEE9AC00](v46);
  v389 = (&v349 - v47);
  v394 = sub_1CF9E5A58();
  v398 = *(v394 - 8);
  MEMORY[0x1EEE9AC00](v394);
  v391 = &v349 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v49);
  v386 = &v349 - v50;
  MEMORY[0x1EEE9AC00](v51);
  v388 = &v349 - v52;
  v387 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED00, &unk_1CFA006E0);
  MEMORY[0x1EEE9AC00](v387);
  v54 = &v349 - v53;
  v380 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD90, &unk_1CFA134F0);
  v55 = swift_projectBox();
  swift_beginAccess();
  v56 = *v55;
  v57 = *(v55 + 8);
  v392 = *(v55 + 16);
  v58 = *(v55 + 24);
  v411 = v56;
  LOBYTE(v412) = v57;
  v417 = 0u;
  v418 = 0u;
  v415 = 0u;
  v416 = 0u;
  v413 = 0u;
  v414 = 0u;

  sub_1CEFDAA48(&v411, &v413, v422, v59, v60, v61, v62, v63, v64);
  v65 = v422[0];
  v422[4], v66, v67, v68, v69, v70, v71, v72;
  v395 = v41;
  sub_1CF263ADC(v65, 0, 1, v41);
  v400 = 0;
  v356 = v65;
  v357 = v58;
  v74 = v398;
  v73 = v399;
  v353 = v55;
  v354 = a3;
  v350 = (v55 + 24);
  v351 = (v55 + 8);
  v352 = (v55 + 16);
  v355 = v54;
  v75 = v395;
  v76 = (v396 + 48);
  v77 = *(v396 + 48);
  if (v77(v395, 1, v397) != 1)
  {
    v100 = v73;
    sub_1CEFE4C60(v75, v73, type metadata accessor for VFSItem);
    v101 = v354;
    v102 = objc_sync_enter(v354);
    if (v102)
    {
      MEMORY[0x1EEE9AC00](v102);
      v347 = v101;
      goto LABEL_68;
    }

    v103 = objc_sync_exit(v101);
    v105 = v392;
    v104 = v393;
    if (v103)
    {
      MEMORY[0x1EEE9AC00](v103);
      v347 = v101;
      goto LABEL_70;
    }

    sub_1CF25116C(v393);
    v106 = v74;
    v107 = v394;
    if (v74[6](v104, 1, v394) == 1)
    {
      sub_1CEFCCC44(v104, &unk_1EC4BE310, qword_1CF9FCBE0);
      v108 = swift_allocObject();
      *(v108 + 16) = 0xB000000000000008;
      v109 = v108 | 0x9000000000000000;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
      sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50, &unk_1CFA13B50);
      v82 = swift_allocError();
      v111 = v110;
      sub_1CF1B8150();
      v112 = swift_allocError();
      *v113 = v109;
      *&v413 = v356;
      BYTE8(v413) = 1;
      *(&v413 + 9) = v422[0];
      HIDWORD(v413) = *(v422 + 3);
      v414 = 0u;
      v415 = 0u;
      v416 = 0u;
      v417 = 0u;
      v418 = 0u;
      v419 = 0u;
      v420 = v112;
      sub_1CF2A8DE0(&v413);
      *v111 = v413;
      v114 = v414;
      v115 = v415;
      v116 = v417;
      *(v111 + 48) = v416;
      *(v111 + 64) = v116;
      *(v111 + 16) = v114;
      *(v111 + 32) = v115;
      v117 = v418;
      v118 = v419;
      v119 = v420;
      *(v111 + 128) = v421;
      *(v111 + 96) = v118;
      *(v111 + 112) = v119;
      *(v111 + 80) = v117;
      swift_willThrow();
      v357, v120, v121, v122, v123, v124, v125, v126;
      sub_1CEFE5888(v100, type metadata accessor for VFSItem);
      goto LABEL_7;
    }

    v356 = v77;
    v395 = v76;
    v133 = v74[4];
    v134 = v386;
    (v133)(v386, v104, v107);
    *&v413 = v105;
    v135 = v357;
    *(&v413 + 1) = v357;
    v422[0] = 47;
    v422[1] = 0xE100000000000000;
    v411 = 58;
    v412 = 0xE100000000000000;
    v347 = sub_1CEFE4E68();
    v348 = v347;
    *&v346 = MEMORY[0x1E69E6158];
    *(&v346 + 1) = v347;
    sub_1CF9E7668();
    v137 = v136;
    sub_1CF9E5958();
    v135, v138, v139, v140, v141, v142, v143, v144;
    v137, v145, v146, v147, v148, v149, v150, v151;
    v152 = v106 + 1;
    v153 = v106[1];
    (v153)(v134, v107);
    v154 = v389;
    sub_1CEFE4C60(v399, v389, type metadata accessor for VFSItem);
    v155 = v355;
    v133();
    v399 = &v155[*(v387 + 48)];
    sub_1CEFE4C60(v154, v399, type metadata accessor for VFSItem);
    v156 = v390;
    v157 = [v390 URL];
    v158 = v391;
    sub_1CF9E59D8();

    sub_1CF2A9448(&qword_1EDEAB410, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
    LOBYTE(v157) = sub_1CF9E6868();
    (v153)(v158, v107);
    if ((v157 & 1) == 0)
    {
      v163 = v353;
      swift_beginAccess();
      v400 = *v163;
      LODWORD(v399) = *(v163 + 8);
      v164 = swift_allocObject();
      v165 = [v156 URL];
      sub_1CF9E59D8();

      v166 = sub_1CF9E5928();
      v167 = [v166 fp_shortDescription];

      v168 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v170 = v169;

      (v153)(v158, v107);
      *(v164 + 16) = v168;
      *(v164 + 24) = v170;
      v171 = v355;
      v172 = sub_1CF9E5928();
      v173 = [v172 fp_shortDescription];

      v174 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v176 = v175;

      *(v164 + 32) = v174;
      *(v164 + 40) = v176;
      v177 = v164 | 0x2000000000000000;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
      sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50, &unk_1CFA13B50);
      v178 = swift_allocError();
      v180 = v179;
      sub_1CF1B8150();
      v181 = swift_allocError();
      *v182 = v177;
      *&v413 = v400;
      BYTE8(v413) = v399;
      *(&v413 + 9) = v411;
      HIDWORD(v413) = *(&v411 + 3);
      v414 = 0u;
      v415 = 0u;
      v416 = 0u;
      v417 = 0u;
      v418 = 0u;
      v419 = 0u;
      v420 = v181;
      sub_1CF2A8DE0(&v413);
      *v180 = v413;
      v183 = v414;
      v184 = v415;
      v185 = v417;
      *(v180 + 48) = v416;
      *(v180 + 64) = v185;
      *(v180 + 16) = v183;
      *(v180 + 32) = v184;
      v186 = v418;
      v187 = v419;
      v188 = v420;
      *(v180 + 128) = v421;
      *(v180 + 96) = v187;
      *(v180 + 112) = v188;
      *(v180 + 80) = v186;
      v189 = v402;
      *v402 = v178;
      swift_storeEnumTagMultiPayload();
      v404(v189);
      sub_1CEFCCC44(v189, &unk_1EC4BF310, &unk_1CF9FDB30);
      v129 = &unk_1EC4BED00;
      v130 = &unk_1CFA006E0;
      v131 = v171;
      return sub_1CEFCCC44(v131, v129, v130);
    }

    v159 = v355;
    v393 = v153;
    v398 = v152;
    v160 = v385;
    if (v385)
    {
      v161 = v402;
      *v402 = v385;
      swift_storeEnumTagMultiPayload();
      v162 = v160;
      v404(v161);
      sub_1CEFCCC44(v161, &unk_1EC4BF310, &unk_1CF9FDB30);
      v129 = &unk_1EC4BED00;
      v130 = &unk_1CFA006E0;
      v131 = v159;
      return sub_1CEFCCC44(v131, v129, v130);
    }

    if (qword_1EDEA8528 != -1)
    {
      swift_once();
    }

    v190 = qword_1EDEBB990;
    v191 = v378;
    v192 = v379;
    v193 = v384;
    (*(v378 + 56))(v384, 1, 1, v379);
    v194 = sub_1CF9E5A18();
    v392 = v195;
    v196 = v376;
    sub_1CEFCCBDC(v193, v376, &unk_1EC4BED20, &unk_1CFA00700);
    v197 = *(v191 + 48);
    if (v197(v196, 1, v192) == 1)
    {
      v198 = v190;
      v199 = v377;
      sub_1CF9E6048();
      v200 = v197(v196, 1, v192);
      v201 = v383;
      if (v200 != 1)
      {
        sub_1CEFCCC44(v196, &unk_1EC4BED20, &unk_1CFA00700);
      }
    }

    else
    {
      v199 = v377;
      (*(v191 + 32))(v377, v196, v192);
      v201 = v383;
    }

    v202 = *(v191 + 16);
    v203 = v191;
    v204 = v382;
    v202(v382, v199, v192);
    *(v204 + *(v201 + 20)) = v190;
    v205 = v204 + *(v201 + 24);
    *v205 = "FS creation [under coordination]";
    *(v205 + 8) = 32;
    *(v205 + 16) = 2;
    v206 = v190;
    v207 = sub_1CF9E7468();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
    v208 = swift_allocObject();
    *(v208 + 16) = xmmword_1CF9FA450;
    *(v208 + 56) = MEMORY[0x1E69E6158];
    *(v208 + 64) = sub_1CEFD51C4();
    v209 = v392;
    *(v208 + 32) = v194;
    *(v208 + 40) = v209;
    v347 = v208;
    BYTE8(v346) = 2;
    v392 = v206;
    sub_1CF9E6028(v207, &dword_1CEFC7000, v206, "FS creation [under coordination]", 32, 2, v204, "%s", 2);
    v208, v210, v211, v212, v213, v214, v215, v216;
    (*(v203 + 8))(v199, v192);
    sub_1CEFCCC44(v384, &unk_1EC4BED20, &unk_1CFA00700);
    v217 = v353;
    swift_beginAccess();
    v219 = v380;
    v218 = v381;
    v220 = v355;
    v221 = v393;
    if (*(v217 + *(v380 + 40) + *(v381 + 84)))
    {
      v222 = v354;
      v223 = v354[27];
      v224 = v372;
      v225 = v373;
      *v372 = v223;
      v226 = v374;
      (*(v225 + 104))(v224, *MEMORY[0x1E69E8020], v374);
      v227 = v223;
      LOBYTE(v223) = sub_1CF9E64D8();
      (*(v225 + 8))(v224, v226);
      if ((v223 & 1) == 0)
      {
        __break(1u);
        goto LABEL_65;
      }

      v228 = &v222[qword_1EDEAFAF8];
      os_unfair_lock_lock(&v222[qword_1EDEAFAF8]);
      v229 = *(*(v228 + 1) + 16);
      os_unfair_lock_unlock(v228);
      v220 = v355;
      if (v229)
      {
        v230 = v371;
        swift_beginAccess();
        v231 = *(v230 + 16);
        if ((v231 & 0x10000) == 0)
        {
          *(v230 + 16) = v231 | 0x10000;
        }

        swift_beginAccess();
        *(v217 + *(v219 + 40) + *(v218 + 84)) = 0;
      }
    }

    sub_1CF9E7458();
    v232 = sub_1CF9E6038();
    if ((*(&v399->_os_unfair_lock_opaque + *(v397 + 28) + *(v218 + 80)) & 1) == 0)
    {
      v233 = v391;
      sub_1CF9E5988();
      v232 = (v221)(v233, v394);
    }

    v234 = v354;
    MEMORY[0x1EEE9AC00](v232);
    *(&v349 - 6) = v234;
    *(&v349 - 5) = v217;
    *&v346 = a10;
    *(&v346 + 1) = v220;
    v347 = a11;
    v235 = v375;
    v236 = v400;
    sub_1CF2EE300(a10, 0x200000, sub_1CF2B11F0, (&v349 - 8), v375);
    if (!v236)
    {
      v287 = v402;
      sub_1CEFCCBDC(v235, v402, &unk_1EC4BEC00, &unk_1CF9FCB60);
      swift_storeEnumTagMultiPayload();
      v404(v287);
      sub_1CEFCCC44(v287, &unk_1EC4BF310, &unk_1CF9FDB30);
      v288 = v235;
      v289 = &unk_1EC4BEC00;
      v290 = &unk_1CF9FCB60;
LABEL_62:
      sub_1CEFCCC44(v288, v289, v290);
      sub_1CF9E7458();
      goto LABEL_63;
    }

    v237 = v236;
    v238 = v236;
    LODWORD(v413) = sub_1CF9E52E8();
    v239 = sub_1CF196978();
    v240 = sub_1CF9E5658();

    if ((v240 & 1) == 0)
    {
LABEL_61:
      v342 = v404;
      v343 = v402;
      *v402 = v237;
      swift_storeEnumTagMultiPayload();
      v344 = v237;
      v342(v343);

      v289 = &unk_1EC4BF310;
      v290 = &unk_1CF9FDB30;
      v288 = v343;
      goto LABEL_62;
    }

    sub_1CF9E5A18();
    v242 = v241;
    v243 = qword_1EDEBBE70;
    swift_beginAccess();
    v244 = *(v234 + v243);
    v245 = __CFADD__(v244, 1);
    v246 = v244 + 1;
    if (!v245)
    {
      *(v234 + v243) = v246;
      v247 = objc_sync_enter(v234);
      if (!v247)
      {
        v394 = v239;
        v399 = v234[20];

        v248 = objc_sync_exit(v234);
        if (!v248)
        {
          v398 = v236;
          v249 = type metadata accessor for VFSFileTree(0);
          Strong = swift_unknownObjectWeakLoadStrong();
          v251 = v234[36];
          fpfs_openflags(0x208000u);
          sub_1CF9E6978();
          v252 = openat_s();

          LODWORD(v400) = v252;
          if (v252 < 0)
          {
            v291 = MEMORY[0x1D38683F0](v253);
            *&v415 = 0;
            v413 = 0u;
            v414 = 0u;
            BYTE8(v415) = 19;
            v237 = sub_1CF19BBE4(v291, &v413);
            sub_1CF1969CC(&v413);
            swift_willThrow();
            v242, v292, v293, v294, v295, v296, v297, v298;
            v220 = v355;
            v299 = v381;
            v300 = v368;
            goto LABEL_44;
          }

          v242, v254, v255, v256, v257, v258, v259, v260;
          v261 = v399;
          os_unfair_lock_lock(v399 + 14);
          v262 = *&v261[16]._os_unfair_lock_opaque;
          v263 = *&v261[18]._os_unfair_lock_opaque;
          os_unfair_lock_opaque = v261[22]._os_unfair_lock_opaque;
          LODWORD(v393) = BYTE1(v261[22]._os_unfair_lock_opaque);
          LODWORD(v391) = BYTE2(v261[22]._os_unfair_lock_opaque);

          v265 = *&v261[20]._os_unfair_lock_opaque;
          os_unfair_lock_unlock(v261 + 14);
          v389 = &v349;
          MEMORY[0x1EEE9AC00](v266);
          *(&v349 - 10) = v249;
          *(&v349 - 18) = v400;
          *(&v349 - 8) = v261;
          *(&v349 - 7) = Strong;
          v390 = Strong;
          *(&v349 - 6) = v251;
          *(&v349 - 40) = 2;
          v346 = xmmword_1CF9FD920;
          LOBYTE(v347) = -1;
          v348 = 0;
          *&v415 = v262;
          *(&v415 + 1) = v263;
          *&v413 = MEMORY[0x1E69E9820];
          *(&v413 + 1) = 1107296256;
          *&v414 = sub_1CEFDB088;
          *(&v414 + 1) = &block_descriptor_717;
          v267 = _Block_copy(&v413);

          v388 = v267;
          v406 = v267;
          v407 = v265;
          v408 = os_unfair_lock_opaque;
          v409 = v393;
          v410 = v391;
          sub_1CEFDB034();
          v268 = swift_allocError();
          *v269 = 6;
          *(v269 + 8) = 0u;
          *(v269 + 24) = 0u;
          *(v269 + 40) = 19;
          v270 = v369;
          *v369 = v268;
          swift_storeEnumTagMultiPayload();
          v271 = swift_allocObject();
          v271[2] = v270;
          v271[3] = sub_1CF2B9F90;
          v271[4] = &v349 - 12;
          v272 = swift_allocObject();
          *(v272 + 16) = sub_1CF1DBD3C;
          *(v272 + 24) = v271;
          *&v415 = sub_1CF1DBD5C;
          *(&v415 + 1) = v272;
          *&v413 = MEMORY[0x1E69E9820];
          *(&v413 + 1) = 1107296256;
          *&v414 = sub_1CEFDB270;
          *(&v414 + 1) = &block_descriptor_728;
          v273 = _Block_copy(&v413);

          v274 = fpfs_fgetfileattrs_detailed();
          _Block_release(v273);
          LOBYTE(v273) = swift_isEscapingClosureAtFileLocation();

          if ((v273 & 1) == 0)
          {
            if (v274)
            {
              swift_getErrorValue();
              v275 = v405;
              v276 = swift_allocError();
              *v277 = 6;
              *(v277 + 8) = 0u;
              *(v277 + 24) = 0u;
              *(v277 + 40) = 19;
              v278 = v274;
              v279 = sub_1CF199074(v276, v275);

              v280 = v360;
              *v360 = v279;
              v270 = v369;
              swift_storeEnumTagMultiPayload();
              sub_1CEFDA9E0(v280, v270, &qword_1EC4BE000, &unk_1CFA006A0);
            }

            v281 = v361;
            sub_1CEFCCBDC(v270, v361, &qword_1EC4BE000, &unk_1CFA006A0);
            if (swift_getEnumCaseMultiPayload() != 1)
            {

              sub_1CEFE55D0(v281, v370, &unk_1EC4BE2F0, qword_1CFA04220);
              sub_1CEFCCC44(v270, &qword_1EC4BE000, &unk_1CFA006A0);

              _Block_release(v388);

              v220 = v355;
              v286 = v381;
              v284 = v368;
              goto LABEL_42;
            }

            *&v413 = *v281;
            v237 = v413;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
            swift_willThrowTypedImpl();

            sub_1CEFCCC44(v270, &qword_1EC4BE000, &unk_1CFA006A0);

            _Block_release(v388);

            v282 = v237;
            LODWORD(v413) = sub_1CF9E52A8();
            v283 = sub_1CF9E5658();

            v220 = v355;
            v284 = v368;
            if (v283)
            {

              v285 = v370;
              *v370 = xmmword_1CF9FD940;
              *(v285 + 16) = 2;
              swift_storeEnumTagMultiPayload();
              v286 = v381;
LABEL_42:
              close(v400);

              swift_unknownObjectRelease();
              v302 = v365;
              v301 = v366;
              v303 = v364;
              v304 = v370;
              goto LABEL_46;
            }

            v300 = v368;
            close(v400);
            v299 = v381;
LABEL_44:
            v305 = v237;
            LODWORD(v413) = sub_1CF9E5328();
            v306 = sub_1CF9E5658();

            swift_unknownObjectRelease();

            if ((v306 & 1) == 0)
            {
LABEL_51:

              goto LABEL_61;
            }

            v307 = v370;
            *v370 = xmmword_1CF9FD930;
            *(v307 + 16) = 2;
            swift_storeEnumTagMultiPayload();
            v304 = v307;
            v302 = v365;
            v301 = v366;
            v303 = v364;
            v308 = v299;
            v284 = v300;
            v286 = v308;
LABEL_46:
            sub_1CEFE55D0(v304, v303, &unk_1EC4BE2F0, qword_1CFA04220);
            EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
            v310 = (v396 + 56);
            if (EnumCaseMultiPayload == 1)
            {
              sub_1CEFCCC44(v303, &unk_1EC4BE2F0, qword_1CFA04220);
              v311 = 1;
              v312 = v363;
            }

            else
            {
              v312 = v363;
              sub_1CEFE4C60(v303, v363, type metadata accessor for VFSItem);
              v311 = 0;
            }

            v313 = *v310;
            v314 = v397;
            (*v310)(v312, v311, 1, v397);
            if (v356(v312, 1, v314) == 1)
            {
              sub_1CEFCCC44(v312, &unk_1EC4BEC00, &unk_1CF9FCB60);
              LODWORD(v413) = 17;
              sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
              sub_1CF2A9448(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
              sub_1CF9E57D8();
              v315 = sub_1CF9E53A8();
              v316 = v302;
              v237 = v315;
              (*(v359 + 8))(v316, v284);
              swift_willThrow();
              goto LABEL_51;
            }

            v317 = v358;
            sub_1CEFE4C60(v312, v358, type metadata accessor for VFSItem);
            if ((a12 & 2) != 0)
            {
              v318 = v353;
              swift_beginAccess();
              sub_1CEFD90AC(v318 + *(v380 + 40), v301, type metadata accessor for ItemMetadata);
              v319 = sub_1CF677434(v301);
              sub_1CEFE5888(v301, type metadata accessor for ItemMetadata);
              if (v319)
              {
                v320 = v402;
                sub_1CEFD90AC(v317, v402, type metadata accessor for VFSItem);
                v313(v320, 0, 1, v397);
                swift_storeEnumTagMultiPayload();
                v404(v320);

                sub_1CEFCCC44(v320, &unk_1EC4BF310, &unk_1CF9FDB30);
                sub_1CEFE5888(v317, type metadata accessor for VFSItem);
                sub_1CF9E7458();
LABEL_63:
                v345 = v382;
                sub_1CF9E6038();
                sub_1CEFE5888(v345, type metadata accessor for Signpost);
                v129 = &unk_1EC4BED00;
                v130 = &unk_1CFA006E0;
                v131 = v220;
                return sub_1CEFCCC44(v131, v129, v130);
              }
            }

            v321 = v317 + *(v397 + 28) + *(v286 + 148);
            if (*(v321 + 4) == 1)
            {
              v322 = *v317;
              v323 = *(v317 + 8);
            }

            else
            {
              v322 = *v317;
              v323 = *(v317 + 8);
              if (*v321 >= 2u)
              {
                v324 = v353;
                swift_beginAccess();
                v326 = v351;
                v325 = v352;
                v327 = v350;
LABEL_60:
                v328 = *v327;
                v329 = *v325;
                v330 = *v326;
                v331 = *v324;

                v332 = sub_1CF252CF4();
                *&v413 = v322;
                BYTE8(v413) = v323;
                *&v414 = v329;
                *(&v414 + 1) = v328;
                *&v415 = v331;
                BYTE8(v415) = v330;
                *&v416 = v332;
                *(&v416 + 1) = v333;
                *&v417 = v398;
                sub_1CF2B0E80(&v413);
                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
                sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50, &unk_1CFA13B50);
                v334 = v317;
                v237 = swift_allocError();
                *v335 = v413;
                v336 = v417;
                v338 = v414;
                v337 = v415;
                *(v335 + 48) = v416;
                *(v335 + 64) = v336;
                *(v335 + 16) = v338;
                *(v335 + 32) = v337;
                v340 = v419;
                v339 = v420;
                v341 = v418;
                *(v335 + 128) = v421;
                *(v335 + 96) = v340;
                *(v335 + 112) = v339;
                *(v335 + 80) = v341;
                swift_willThrow();
                sub_1CEFE5888(v334, type metadata accessor for VFSItem);
                goto LABEL_61;
              }
            }

            v325 = (v317 + 32);
            v327 = (v317 + 40);
            v324 = (v317 + 16);
            v326 = (v317 + 24);
            goto LABEL_60;
          }

LABEL_66:
          __break(1u);
        }

        MEMORY[0x1EEE9AC00](v248);
        v347 = v234;
LABEL_70:
        fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, &v346, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
      }

      MEMORY[0x1EEE9AC00](v247);
      v347 = v234;
LABEL_68:
      fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, &v346, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
    }

LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  sub_1CEFCCC44(v75, &unk_1EC4BEC00, &unk_1CF9FCB60);
  v78 = swift_allocObject();
  *(v78 + 16) = 1;
  v79 = v78 | 0x7000000000000000;
  v80 = swift_allocObject();
  *(v80 + 16) = v79;
  v81 = v80 | 0x9000000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
  sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50, &unk_1CFA13B50);
  v82 = swift_allocError();
  v84 = v83;
  sub_1CF1B8150();
  v85 = swift_allocError();
  *v86 = v81;
  *&v413 = v356;
  BYTE8(v413) = 1;
  *(&v413 + 9) = v422[0];
  HIDWORD(v413) = *(v422 + 3);
  v414 = 0u;
  v415 = 0u;
  v416 = 0u;
  v417 = 0u;
  v418 = 0u;
  v419 = 0u;
  v420 = v85;
  sub_1CF2A8DE0(&v413);
  *v84 = v413;
  v87 = v414;
  v88 = v415;
  v89 = v417;
  *(v84 + 48) = v416;
  *(v84 + 64) = v89;
  *(v84 + 16) = v87;
  *(v84 + 32) = v88;
  v90 = v418;
  v91 = v419;
  v92 = v420;
  *(v84 + 128) = v421;
  *(v84 + 96) = v91;
  *(v84 + 112) = v92;
  *(v84 + 80) = v90;
  swift_willThrow();
  v357, v93, v94, v95, v96, v97, v98, v99;
LABEL_7:
  v127 = v402;
  *v402 = v82;
  swift_storeEnumTagMultiPayload();
  v128 = v82;
  v404(v127);

  v129 = &unk_1EC4BF310;
  v130 = &unk_1CF9FDB30;
  v131 = v127;
  return sub_1CEFCCC44(v131, v129, v130);
}

uint64_t sub_1CF2766DC@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X3>, void *a4@<X4>, uint64_t *a5@<X5>, _TtC18FileProviderDaemon8FSTester *a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, __int128 *a9)
{
  v307 = a5;
  v308 = a7;
  v306 = a6;
  LODWORD(v301) = a1;
  v303 = type metadata accessor for VFSItem(0);
  v297 = *(v303 - 8);
  MEMORY[0x1EEE9AC00](v303);
  v310 = (&v287 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v300 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED00, &unk_1CFA006E0);
  MEMORY[0x1EEE9AC00](v300);
  v15 = &v287 - v14;
  v302 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v312 = *(v302 - 8);
  MEMORY[0x1EEE9AC00](v302);
  v305 = &v287 - v16;
  v17 = sub_1CF9E53C8();
  v298 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v287 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v338 = type metadata accessor for ItemMetadata(0);
  MEMORY[0x1EEE9AC00](v338);
  MEMORY[0x1EEE9AC00](v20);
  v311 = &v287 - v21;
  MEMORY[0x1EEE9AC00](v22);
  MEMORY[0x1EEE9AC00](v23);
  v304 = &v287 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v287 - v28;
  if (!a3)
  {
    sub_1CF2B0794(&v322);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
    sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50, &unk_1CFA13B50);
    swift_allocError();
    *v49 = v322;
    v50 = v326;
    v52 = v323;
    v51 = v324;
    *(v49 + 48) = v325;
    *(v49 + 64) = v50;
    *(v49 + 16) = v52;
    *(v49 + 32) = v51;
    v54 = v328;
    v53 = v329;
    v55 = v327;
    *(v49 + 128) = v330;
    *(v49 + 96) = v54;
    *(v49 + 112) = v53;
    *(v49 + 80) = v55;
    return swift_willThrow();
  }

  v295 = v27;
  v296 = v26;
  v294 = a8;
  v299 = v15;
  v30 = a4[17];
  v309 = a2;
  v31 = *(a2 + 8);
  v32 = v30 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_wharfHandle;
  swift_beginAccess();
  if (v31 != *(v32 + 32))
  {
    v37 = objc_sync_enter(a4);
    if (v37)
    {
      goto LABEL_86;
    }

    v56 = a4[20];

    v39 = objc_sync_exit(a4);
    v57 = v309;
    if (v39)
    {
      goto LABEL_87;
    }

    v58 = *(v56 + 32);

    v59 = sub_1CF9C46A4(v57, v58);
    v58, v60, v61, v62, v63, v64, v65, v66;
    v35 = v338;
    if (v59)
    {
      goto LABEL_17;
    }

    LODWORD(v322) = 2;
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF2A9448(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
    sub_1CF9E57D8();
    sub_1CF9E53A8();
    (*(v298 + 8))(v19, v17);
    return swift_willThrow();
  }

  v33 = v307;
  swift_beginAccess();
  v34 = v33 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD90, &unk_1CFA134F0) + 40);
  v35 = v338;
  if (*(v34 + *(v338 + 60)))
  {
    v36 = 0x1FBF18F07;
  }

  else
  {
    v36 = 0x1EBF18F07;
  }

  sub_1CEFD90AC(v34, v29, type metadata accessor for ItemMetadata);
  v37 = objc_sync_enter(a4);
  if (v37)
  {
    goto LABEL_86;
  }

  v38 = a4[20];

  v39 = objc_sync_exit(a4);
  if (v39)
  {
LABEL_87:
    MEMORY[0x1EEE9AC00](v39);
    v285 = a4;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v284, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  v337 = *(a9 + 30);
  v40 = a9[13];
  v334 = a9[12];
  v335 = v40;
  v336 = a9[14];
  v41 = a9[9];
  v330 = a9[8];
  v331 = v41;
  v42 = a9[11];
  v332 = a9[10];
  v333 = v42;
  v43 = a9[5];
  v326 = a9[4];
  v327 = v43;
  v44 = a9[7];
  v328 = a9[6];
  v329 = v44;
  v45 = a9[1];
  v322 = *a9;
  v323 = v45;
  v46 = a9[3];
  v324 = a9[2];
  v325 = v46;
  v47 = v313;
  (*(*v30 + 496))(&v314, v306, v301, v309, v308, v29, v36, v38, &v322);
  if (v47)
  {
    sub_1CEFE5888(v29, type metadata accessor for ItemMetadata);
  }

  v313 = 0;

  sub_1CEFE5888(v29, type metadata accessor for ItemMetadata);
  v316, v67, v68, v69, v70, v71, v72, v73;
LABEL_17:
  v74 = v307;
  swift_beginAccess();
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD90, &unk_1CFA134F0);
  v76 = v74 + *(v75 + 40);
  v77 = v304;
  sub_1CEFD90AC(v76, v304, type metadata accessor for ItemMetadata);
  v78 = v35[28];
  if ((*(v76 + v78) & 1) != 0 || (v79 = *(v309 + 40), v79 == 3))
  {
    *(v77 + v78) = 1;
    v80 = v306;
LABEL_20:
    v81 = v309;
    *(v77 + v35[26]) = *(v309 + 56);
    *(v77 + v35[27]) = *(v81 + 168);
    goto LABEL_21;
  }

  swift_beginAccess();
  v80 = v306;
  if (*(v74 + *(v75 + 40)))
  {
    *(v77 + v35[28]) = 0;
  }

  else
  {
    *(v77 + v35[28]) = v79 == 2;
    if (v79 == 2)
    {
      goto LABEL_20;
    }
  }

LABEL_21:
  swift_beginAccess();
  v82 = *v80->tree;
  if (*(v74 + *(v75 + 40)) - 1 > 1)
  {
    isa_low = LODWORD(v80[1].super.isa);
    LODWORD(v298) = LODWORD(v80[1].super.isa) == 0;
    if (!isa_low)
    {
      isa_low = v82;
    }

    v293 = isa_low;
  }

  else
  {
    LODWORD(v298) = 1;
    v293 = v82;
  }

  swift_beginAccess();
  v290 = *v74;
  v289 = *(v74 + 8);
  isa_high = HIDWORD(v80[1].super.isa);
  v85 = v295;
  sub_1CEFD90AC(v77, v295, type metadata accessor for ItemMetadata);
  v86 = *v85;
  if (v86 == 1)
  {
    v87 = 0;
    v88 = 0;
    v89 = 1;
  }

  else
  {
    v88 = 0;
    v87 = 0;
    v89 = 1;
    if (v86 != 2 && !v85[v35[20]])
    {
      if (v85[v35[28]])
      {
        v87 = 0;
      }

      else
      {
        v89 = 0;
        v87 = *&v85[v35[26]];
      }

      v88 = isa_high;
    }
  }

  v291 = v88;
  v292 = v89;
  sub_1CEFE5888(v85, type metadata accessor for ItemMetadata);
  swift_beginAccess();
  v90 = v74[3];
  v306 = v74[2];
  sub_1CEFD90AC(v77, v311, type metadata accessor for ItemMetadata);
  v91 = v299;
  sub_1CEFCCBDC(v308, v299, &unk_1EC4BED00, &unk_1CFA006E0);
  v92 = sub_1CF9E5A58();
  v93 = *(v92 - 8);
  v94 = v305;
  (*(v93 + 32))(v305, v91, v92);
  (*(v93 + 56))(v94, 0, 1, v92);

  v37 = objc_sync_enter(a4);
  if (v37)
  {
LABEL_86:
    MEMORY[0x1EEE9AC00](v37);
    v285 = a4;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v284, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v295 = v87;
  v301 = v82;
  v309 = a4[20];

  v39 = objc_sync_exit(a4);
  v95 = v310;
  v97 = v302;
  v96 = v303;
  v98 = v312;
  if (v39)
  {
    goto LABEL_87;
  }

  v308 = *(v300 + 48);
  v99 = sub_1CEFE528C(&v322);
  v100 = *(v96 + 48);
  v101 = *(v98 + 56);
  v312 = v98 + 56;
  v307 = v100;
  v300 = v101;
  v101(v100 + v95, 1, 1, v97, v99);
  v102 = v306;
  v314 = v306;
  v315 = v90;
  v318 = 58;
  v319 = 0xE100000000000000;
  v320 = 47;
  v321 = 0xE100000000000000;
  v103 = sub_1CEFE4E68();
  v104 = MEMORY[0x1E69E6158];
  v105 = sub_1CF9E7668();
  v107 = v106;
  v314 = v102;
  v315 = v90;
  v318 = 58;
  v319 = 0xE100000000000000;
  v320 = 47;
  v321 = 0xE100000000000000;
  v285 = v103;
  v286 = v103;
  v284[0] = v104;
  v284[1] = v103;
  v314 = sub_1CF9E7668();
  v315 = v108;
  v109 = v313;
  sub_1CEFE52D8(0x70756B6F6F6CLL, 0xE600000000000000, &v314);
  if (v109)
  {

    v90, v117, v118, v119, v120, v121, v122, v123;
    v107, v124, v125, v126, v127, v128, v129, v130;
    sub_1CEFCCC44(v305, &unk_1EC4BE310, qword_1CF9FCBE0);
    sub_1CEFE5888(v311, type metadata accessor for ItemMetadata);
    sub_1CEFE5888(v304, type metadata accessor for ItemMetadata);
    v315, v131, v132, v133, v134, v135, v136, v137;
    sub_1CEFCCC44(v307 + v310, &unk_1EC4BED30, &unk_1CFA00710);
    return sub_1CEFE5888(&v299[v308], type metadata accessor for VFSItem);
  }

  v288 = v90;
  v313 = v105;
  v315, v110, v111, v112, v113, v114, v115, v116;
  sub_1CEFD90AC(v311, v296, type metadata accessor for ItemMetadata);
  v145 = v309;
  v146 = v301;
  if (v301 == *(v309 + 24))
  {
    v147 = v310;
    v148 = v294;
    if (!v298 || v293 != v301)
    {
      sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/tree/VFSItem.swift", 119, 2, 290);
    }

    *v310 = 0;
    v149 = 2;
    *(v147 + 8) = 2;
    *(v147 + 16) = 0;
    v150 = 24;
    goto LABEL_46;
  }

  swift_beginAccess();
  v151 = *(v145 + 96);
  v147 = v310;
  v148 = v294;
  if (*v151->tree)
  {
    v152 = sub_1CF7BF2C0(v293, v298);
    if (v138)
    {
      v153 = v152;

      v107, v154, v155, v156, v157, v158, v159, v160;
      v161 = *v151[1].tester + 32 * v153;
      v162 = *v161;
      v163 = *(v161 + 8);
      v107 = *(v161 + 24);
      v313 = *(v161 + 16);

      v151, v164, v165, v166, v167, v168, v169, v170;
      *v147 = v293;
      *(v147 + 8) = v298;
      v150 = 24;
      v149 = v163;
      v148 = v294;
      *(v147 + 16) = v162;
LABEL_46:
      v171 = v296;
      goto LABEL_61;
    }
  }

  v172 = v289;
  v171 = v296;
  v149 = v298;
  v173 = v290;
  if (v289 != 1)
  {
LABEL_60:
    *v147 = v293;
    *(v147 + 8) = v149;
    v150 = 24;
    v149 = v172;
    *(v147 + 16) = v173;
    goto LABEL_61;
  }

  v174 = v306;
  if (*(v145 + 24) != v290)
  {
    if ((*(v145 + 48) & 1) == 0 && *(v145 + 40) == v290)
    {
      *v147 = v293;
      *(v147 + 8) = v149;
      *(v147 + 16) = 1;
      v149 = 2;
      v150 = 24;
      goto LABEL_61;
    }

    goto LABEL_60;
  }

  if (qword_1EDEAEE10 != -1)
  {
    v283 = v306;
    swift_once();
    v174 = v283;
    v171 = v296;
  }

  v140 = *(&xmmword_1EDEBBE48 + 1);
  v139 = xmmword_1EDEBBE48;
  if (__PAIR128__(v288, v174) == xmmword_1EDEBBE48 || (v175 = sub_1CF9E8048(), v171 = v296, (v175 & 1) != 0))
  {
    *v147 = 1;
    v149 = 2;
    *(v147 + 8) = 2;
    *(v147 + 16) = 1;
    v150 = 24;
  }

  else
  {
    *(v147 + 16) = 0;
    *(v147 + 24) = 2;
    *v147 = v293;
    v150 = 8;
  }

LABEL_61:
  *(v147 + v150) = v149;
  v176 = v171 + *(v338 + 56);
  if (*(v176 + 8))
  {
    v338 = v107;
    v177 = v288;
    sub_1CF51B588(&v314);
    v178 = v314;
    v179 = v315;
    v180 = v317;
    v306 = v316;
    v177, v181, v182, v183, v184, v185, v186, v187;
    sub_1CF51B588(&v314);
    v194 = v315;
    v196 = v316;
    v195 = v317;
    if (v178 == v314 && v179 == v315)
    {
      v179, v188, v314, v189, v190, v191, v192, v193;
      v194, v197, v198, v199, v200, v201, v202, v203;
    }

    else
    {
      v211 = sub_1CF9E8048();
      v179, v212, v213, v214, v215, v216, v217, v218;
      v194, v219, v220, v221, v222, v223, v224, v225;
      if ((v211 & 1) == 0)
      {
        v195, v204, v205, v206, v207, v208, v209, v210;
        v180, v247, v248, v249, v250, v251, v252, v253;
        sub_1CEFE5888(v311, type metadata accessor for ItemMetadata);
        sub_1CEFE5888(v304, type metadata accessor for ItemMetadata);
        v147 = v310;
        v148 = v294;
        v146 = v301;
        goto LABEL_76;
      }
    }

    v147 = v310;
    v146 = v301;
    if (!v180)
    {
      sub_1CEFE5888(v311, type metadata accessor for ItemMetadata);
      sub_1CEFE5888(v304, type metadata accessor for ItemMetadata);
      v148 = v294;
      v107 = v338;
      if (!v195)
      {
        goto LABEL_78;
      }

      v195, v233, v234, v235, v236, v237, v238, v239;
      goto LABEL_77;
    }

    v148 = v294;
    if (v195)
    {
      if (v306 == v196 && v180 == v195)
      {
        v180, v204, v205, v206, v207, v208, v209, v210;
        v195, v226, v227, v228, v229, v230, v231, v232;
        sub_1CEFE5888(v311, type metadata accessor for ItemMetadata);
        sub_1CEFE5888(v304, type metadata accessor for ItemMetadata);
        v107 = v338;
        goto LABEL_78;
      }

      v268 = sub_1CF9E8048();
      v180, v269, v270, v271, v272, v273, v274, v275;
      v195, v276, v277, v278, v279, v280, v281, v282;
      sub_1CEFE5888(v311, type metadata accessor for ItemMetadata);
      sub_1CEFE5888(v304, type metadata accessor for ItemMetadata);
      v107 = v338;
      if (v268)
      {
        goto LABEL_78;
      }

LABEL_77:
      *(v176 + 8), v240, v241, v242, v243, v244, v245, v246;
      *v176 = 0;
      *(v176 + 8) = 0;
      goto LABEL_78;
    }

    v180, v204, v205, v206, v207, v208, v209, v210;
    sub_1CEFE5888(v311, type metadata accessor for ItemMetadata);
    sub_1CEFE5888(v304, type metadata accessor for ItemMetadata);
LABEL_76:
    v107 = v338;
    goto LABEL_77;
  }

  v288, v138, v139, v140, v141, v142, v143, v144;
  sub_1CEFE5888(v311, type metadata accessor for ItemMetadata);
  sub_1CEFE5888(v304, type metadata accessor for ItemMetadata);
LABEL_78:
  *(v147 + 32) = v313;
  *(v147 + 40) = v107;
  v254 = v303;
  v255 = v147 + *(v303 + 36);
  *v255 = v146;
  *(v255 + 8) = v291;
  v256 = v296;
  *(v255 + 16) = v295;
  *(v255 + 24) = v292;
  sub_1CEFD90AC(v256, v147 + v254[7], type metadata accessor for ItemMetadata);
  v257 = v307;
  sub_1CEFCCC44(v307 + v147, &unk_1EC4BED30, &unk_1CFA00710);
  sub_1CEFE55D0(v305, v257 + v147, &unk_1EC4BE310, qword_1CF9FCBE0);
  (v300)(v257 + v147, 0, 1, v302);
  LODWORD(v257) = *(v309 + 16);

  *(v147 + v254[13]) = v257;
  v258 = v147 + v254[14];
  *v258 = 0;
  *(v258 + 4) = 1;
  v259 = v147 + v254[11];
  *v259 = 0;
  *(v259 + 4) = 1;
  v260 = v147 + v254[8];
  v261 = v335;
  *(v260 + 192) = v334;
  *(v260 + 208) = v261;
  *(v260 + 224) = v336;
  *(v260 + 240) = v337;
  v262 = v331;
  *(v260 + 128) = v330;
  *(v260 + 144) = v262;
  v263 = v333;
  *(v260 + 160) = v332;
  *(v260 + 176) = v263;
  v264 = v327;
  *(v260 + 64) = v326;
  *(v260 + 80) = v264;
  v265 = v329;
  *(v260 + 96) = v328;
  *(v260 + 112) = v265;
  v266 = v323;
  *v260 = v322;
  *(v260 + 16) = v266;
  v267 = v325;
  *(v260 + 32) = v324;
  *(v260 + 48) = v267;
  *(v147 + v254[10]) = 0;
  sub_1CEFE5888(v256, type metadata accessor for ItemMetadata);
  sub_1CEFE4C60(v147, v148, type metadata accessor for VFSItem);
  sub_1CEFE5888(&v299[v308], type metadata accessor for VFSItem);
  return (*(v297 + 56))(v148, 0, 1, v254);
}

uint64_t sub_1CF277AB8(__int128 *a1, char *a2, __int128 *a3, uint64_t a4, uint64_t a5)
{
  v76 = a2;
  v77 = a5;
  v70 = a4;
  v9 = sub_1CF9E63D8();
  v67 = *(v9 - 8);
  v68 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v66 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD90, &unk_1CFA134F0);
  v71 = *(v11 - 8);
  v12 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v66 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v74 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v66 - v18;
  v78 = &v66 - v18;
  v20 = a1[1];
  v85 = *a1;
  v86 = v20;
  v21 = a1[3];
  v87 = a1[2];
  v88 = v21;
  v22 = a3[13];
  v101 = a3[12];
  v102 = v22;
  v103 = a3[14];
  v104 = *(a3 + 30);
  v23 = a3[9];
  v97 = a3[8];
  v98 = v23;
  v24 = a3[11];
  v99 = a3[10];
  v100 = v24;
  v25 = a3[5];
  v93 = a3[4];
  v94 = v25;
  v26 = a3[7];
  v95 = a3[6];
  v96 = v26;
  v27 = a3[1];
  v89 = *a3;
  v90 = v27;
  v28 = a3[3];
  v91 = a3[2];
  v92 = v28;
  v69 = v5;
  v29 = *(v5 + 216);
  v73 = *(v5 + 224);
  v75 = v29;
  v30 = sub_1CF9E6448();
  v72 = *(v30 - 8);
  (*(v72 + 56))(v19, 1, 1, v30);
  v31 = swift_allocObject();
  v32 = v77;
  *(v31 + 16) = a4;
  *(v31 + 24) = v32;
  sub_1CEFCCBDC(v76, v14, &unk_1EC4BFD90, &unk_1CFA134F0);
  v33 = (*(v71 + 80) + 16) & ~*(v71 + 80);
  v34 = (v12 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = (v34 + 15) & 0xFFFFFFFFFFFFFFF8;
  v36 = (v35 + 71) & 0xFFFFFFFFFFFFFFF8;
  v76 = ((v36 + 255) & 0xFFFFFFFFFFFFFFF8);
  v37 = swift_allocObject();
  sub_1CEFE55D0(v14, v37 + v33, &unk_1EC4BFD90, &unk_1CFA134F0);
  *(v37 + v34) = v69;
  v38 = (v37 + v35);
  v39 = v88;
  v38[2] = v87;
  v38[3] = v39;
  v40 = v86;
  *v38 = v85;
  v38[1] = v40;
  v41 = v37 + v36;
  v42 = v30;
  v43 = v74;
  v44 = v92;
  *(v41 + 32) = v91;
  *(v41 + 48) = v44;
  v45 = v90;
  *v41 = v89;
  *(v41 + 16) = v45;
  v46 = v96;
  *(v41 + 96) = v95;
  *(v41 + 112) = v46;
  v47 = v94;
  *(v41 + 64) = v93;
  *(v41 + 80) = v47;
  v48 = v100;
  *(v41 + 160) = v99;
  *(v41 + 176) = v48;
  v49 = v98;
  *(v41 + 128) = v97;
  *(v41 + 144) = v49;
  *(v41 + 240) = v104;
  v50 = v103;
  *(v41 + 208) = v102;
  *(v41 + 224) = v50;
  *(v41 + 192) = v101;
  v51 = v77;
  v52 = &v76[v37];
  *v52 = v70;
  v52[1] = v51;
  v53 = swift_allocObject();
  v53[2] = sub_1CF2BA178;
  v53[3] = v31;
  v54 = v73;
  v53[4] = v73;
  swift_retain_n();
  v76 = v75;

  sub_1CEFCCBDC(&v85, &v79, &unk_1EC4BF260, &unk_1CFA01B60);
  sub_1CEFCCBDC(&v89, &v79, &qword_1EC4BECF0, &unk_1CF9FEEB0);
  v77 = v31;

  v55 = fpfs_current_log();
  v56 = *(v54 + 16);
  sub_1CEFCCBDC(v78, v43, &unk_1EC4BE370, qword_1CFA01B30);
  v57 = v72;
  if ((*(v72 + 48))(v43, 1, v42) == 1)
  {
    sub_1CEFCCC44(v43, &unk_1EC4BE370, qword_1CFA01B30);
    v58 = QOS_CLASS_UNSPECIFIED;
  }

  else
  {
    v59 = v66;
    sub_1CF9E6438();
    (*(v57 + 8))(v43, v42);
    v58 = sub_1CF9E63C8();
    (*(v67 + 8))(v59, v68);
  }

  v60 = swift_allocObject();
  v60[2] = v55;
  v60[3] = sub_1CF2B0F0C;
  v60[4] = v37;
  v83 = sub_1CF2BA17C;
  v84 = v60;
  v79 = MEMORY[0x1E69E9820];
  v80 = 1107296256;
  v81 = sub_1CEFCA444;
  v82 = &block_descriptor_667;
  v61 = _Block_copy(&v79);
  v62 = v55;

  v83 = sub_1CF2BA184;
  v84 = v53;
  v79 = MEMORY[0x1E69E9820];
  v80 = 1107296256;
  v81 = sub_1CEFCA444;
  v82 = &block_descriptor_670;
  v63 = _Block_copy(&v79);

  v64 = v76;
  fp_task_tracker_async_and_qos(v56, v76, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v58, v61, v63);
  _Block_release(v63);
  _Block_release(v61);

  return sub_1CEFCCC44(v78, &unk_1EC4BE370, qword_1CFA01B30);
}

uint64_t sub_1CF278154(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4, void (*a5)(uint64_t, void), uint64_t a6)
{
  v71 = a6;
  v72 = a5;
  v66 = a2;
  v67 = a3;
  v68 = a1;
  v79 = *MEMORY[0x1E69E9840];
  v65 = type metadata accessor for ItemMetadata(0);
  MEMORY[0x1EEE9AC00](v65);
  v70 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1CF9E6068();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v63 - v16;
  v18 = type metadata accessor for Signpost(0);
  MEMORY[0x1EEE9AC00](v18);
  v69 = &v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDEA8528 != -1)
  {
    swift_once();
  }

  v20 = qword_1EDEBB990;
  (*(v9 + 56))(v17, 1, 1, v8);
  v64 = v17;
  sub_1CEFCCBDC(v17, v14, &unk_1EC4BED20, &unk_1CFA00700);
  v21 = *(v9 + 48);
  if (v21(v14, 1, v8) == 1)
  {
    v22 = v20;
    sub_1CF9E6048();
    if (v21(v14, 1, v8) != 1)
    {
      sub_1CEFCCC44(v14, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    (*(v9 + 32))(v11, v14, v8);
  }

  v23 = v69;
  (*(v9 + 16))(v69, v11, v8);
  *(v23 + *(v18 + 20)) = v20;
  v24 = v23 + *(v18 + 24);
  *v24 = "FS stage creation";
  *(v24 + 8) = 17;
  *(v24 + 16) = 2;
  v25 = v20;
  sub_1CF9E7468();
  sub_1CF9E6038();
  (*(v9 + 8))(v11, v8);
  sub_1CEFCCC44(v64, &unk_1EC4BED20, &unk_1CFA00700);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD90, &unk_1CFA134F0);
  v27 = v68;
  v28 = (v68 + *(v26 + 40));
  v29 = v70;
  sub_1CEFD90AC(v28, v70, type metadata accessor for ItemMetadata);
  v30 = v65;
  v75 = v28[*(v65 + 112)];
  if (v75)
  {
    v31 = 1;
  }

  else if (*v28 == 1)
  {
    v32 = *(v27 + 24);
    *&v76[0] = *(v27 + 16);
    *(&v76[0] + 1) = v32;
    *&v78[0] = 47;
    *(&v78[0] + 1) = 0xE100000000000000;
    v73 = 58;
    v74 = 0xE100000000000000;
    sub_1CEFE4E68();
    sub_1CF9E7668();
    v34 = v33;
    sub_1CF9E6978();
    v34, v35, v36, v37, v38, v39, v40, v41;
    fpfs_pkg_system_lookup();

    v31 = v75;
  }

  else
  {
    v31 = 0;
  }

  *(v29 + *(v30 + 116)) = v31;
  v42 = *(v66 + 136);
  v43 = v67[1];
  v78[0] = *v67;
  v78[1] = v43;
  v44 = v67[3];
  v78[2] = v67[2];
  v78[3] = v44;
  v45 = *(a4 + 208);
  v76[12] = *(a4 + 192);
  v76[13] = v45;
  v76[14] = *(a4 + 224);
  v77 = *(a4 + 240);
  v46 = *(a4 + 144);
  v76[8] = *(a4 + 128);
  v76[9] = v46;
  v47 = *(a4 + 176);
  v76[10] = *(a4 + 160);
  v76[11] = v47;
  v48 = *(a4 + 80);
  v76[4] = *(a4 + 64);
  v76[5] = v48;
  v49 = *(a4 + 112);
  v76[6] = *(a4 + 96);
  v76[7] = v49;
  v50 = *(a4 + 16);
  v76[0] = *a4;
  v76[1] = v50;
  v51 = *(a4 + 48);
  v76[2] = *(a4 + 32);
  v76[3] = v51;
  v52 = *(v27 + 24);
  v73 = *(v27 + 16);
  v74 = v52;
  v53 = *(*v42 + 448);

  v53(v78, v29, v76, &v73, 1, 0);
  v74, v54, v55, v56, v57, v58, v59, v60;

  v72(v61, 0);

  sub_1CEFE5888(v29, type metadata accessor for ItemMetadata);
  sub_1CF9E7458();
  sub_1CF9E6038();
  return sub_1CEFE5888(v23, type metadata accessor for Signpost);
}

void sub_1CF278908(uint64_t *a1@<X0>, __int128 *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v302 = a3;
  v296 = a5;
  v323 = *MEMORY[0x1E69E9840];
  v287 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE000, &unk_1CFA006A0);
  MEMORY[0x1EEE9AC00](v287);
  v281 = (&v271 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v280 = (&v271 - v10);
  MEMORY[0x1EEE9AC00](v11);
  v286 = (&v271 - v12);
  v282 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE2F0, qword_1CFA04220);
  MEMORY[0x1EEE9AC00](v282);
  v283 = &v271 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v285 = &v271 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v289 = &v271 - v17;
  v18 = type metadata accessor for VFSItem(0);
  v299 = *(v18 - 8);
  v300 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v294 = &v271 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v293 = &v271 - v21;
  v22 = sub_1CF9E5A58();
  v23 = *(v22 - 8);
  v291 = v22;
  v292 = v23;
  MEMORY[0x1EEE9AC00](v22);
  v290 = &v271 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v288 = &v271 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v297 = &v271 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v284 = &v271 - v30;
  MEMORY[0x1EEE9AC00](v31);
  Strong = &v271 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v35 = (&v271 - v34);
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v271 - v37;
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v271 - v40;
  MEMORY[0x1EEE9AC00](v42);
  v298 = *a1;
  v301 = *(a1 + 8);
  v44 = &v271 - v43;
  v45 = a2[3];
  v319 = a2[2];
  v320 = v45;
  v46 = a2[5];
  v321 = a2[4];
  v322 = v46;
  v47 = a2[1];
  v317 = *a2;
  v318 = v47;
  v48 = v303;
  v49 = *v302;
  v50 = v317;
  sub_1CF263ADC(v317, 0, a4, &v271 - v43);
  if (!v48)
  {
    v275 = v50;
    v276 = v49;
    v277 = v35;
    v278 = a4;
    v51 = v299;
    v52 = v300;
    v53 = *(v299 + 48);
    v302 = 0;
    v303 = v299 + 48;
    if (v53(v44, 1, v300) || (v54 = v44[8], v54 == 255))
    {
      v55 = v301;
      v56 = v41;
      if (v301 == 255)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }

    v55 = v301;
    v56 = v41;
    if (v301 != 255)
    {
      v113 = *v44;
      if (v44[8])
      {
        if (v54 == 1)
        {
          if (v301 != 1 || v113 != v298)
          {
            goto LABEL_5;
          }
        }

        else if (v113)
        {
          if (v301 != 2 || v298 != 1)
          {
            goto LABEL_5;
          }
        }

        else if (v301 != 2 || v298)
        {
          goto LABEL_5;
        }
      }

      else if (v301 || v113 != v298)
      {
        goto LABEL_5;
      }

LABEL_6:
      v274 = v38;
      v279 = v44;
      sub_1CEFCCBDC(v44, v56, &unk_1EC4BEC00, &unk_1CF9FCB60);
      v57 = v52;
      v58 = v53(v56, 1, v52);
      sub_1CEFCCC44(v56, &unk_1EC4BEC00, &unk_1CF9FCB60);
      if (v58 == 1)
      {
        v59 = v279;
        if (v55 == 2)
        {
          v60 = v277;
          if (v298 == 1)
          {
            v61 = v304;
            v62 = objc_sync_enter(v304);
            if (v62)
            {
              goto LABEL_105;
            }

            v63 = objc_sync_exit(v61);
            if (v63)
            {
              MEMORY[0x1EEE9AC00](v63);
              v269 = v61;
              goto LABEL_114;
            }

            v64 = v302;
            sub_1CF367450(1);
            if (v64)
            {
            }

            v302 = 0;

            v62 = objc_sync_enter(v61);
            if (v62)
            {
LABEL_105:
              MEMORY[0x1EEE9AC00](v62);
              v269 = v61;
              goto LABEL_112;
            }

            v134 = v61[20];

            v135 = objc_sync_exit(v61);
            if (v135)
            {
              goto LABEL_108;
            }

            v136 = *(v134 + 40);
            v137 = *(v134 + 48);

            if ((v137 & 1) != 0 || v136 == v275)
            {
              v59 = v279;
            }

            else
            {
              v138 = v274;
              v139 = v302;
              sub_1CF263ADC(v136, 0, v278, v274);
              v302 = v139;
              v59 = v279;
              if (v139)
              {
                goto LABEL_48;
              }

              sub_1CEFDA9E0(v138, v279, &unk_1EC4BEC00, &unk_1CF9FCB60);
            }
          }

LABEL_15:
          sub_1CEFCCBDC(v59, v60, &unk_1EC4BEC00, &unk_1CF9FCB60);
          v277 = v53;
          v65 = v53(v60, 1, v57);
          sub_1CEFCCC44(v60, &unk_1EC4BEC00, &unk_1CF9FCB60);
          if (v65 != 1)
          {
            v93 = v278;
            v94 = v297;
            goto LABEL_19;
          }

          v66 = *(&v320 + 1);
          v67 = v321;
          *&v307 = *(&v319 + 1);
          BYTE8(v307) = v320;
          memset(v314, 0, 96);

          sub_1CEFDAA48(&v307, v314, v313, v68, v69, v70, v71, v72, v73);
          v74 = *v313;
          *&v313[32], v75, v76, v77, v78, v79, v80, v81;
          v82 = Strong;
          v83 = v74;
          v84 = v278;
          v85 = v302;
          sub_1CF263ADC(v83, 0, v278, Strong);
          v302 = v85;
          if (v85)
          {
            v67, v86, v87, v88, v89, v90, v91, v92;
LABEL_48:
            sub_1CEFCCC44(v59, &unk_1EC4BEC00, &unk_1CF9FCB60);
            return;
          }

          v275 = v67;
          if (v277(v82, 1, v57) == 1)
          {
            sub_1CEFCCC44(v82, &unk_1EC4BEC00, &unk_1CF9FCB60);
            v114 = swift_allocObject();
            *(v114 + 16) = v84;
            v115 = v114 | 0x7000000000000000;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
            sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50, &unk_1CFA13B50);
            v116 = swift_allocError();
            v118 = v117;
            sub_1CF1B8150();
            v119 = swift_allocError();
            *v120 = v115;
            *&v314[0] = v298;
            BYTE8(v314[0]) = v301;
            *(v314 + 9) = *v313;
            HIDWORD(v314[0]) = *&v313[3];
            memset(&v314[1], 0, 96);
            v315 = v119;
            sub_1CF2A8DE0(v314);
            *v118 = v314[0];
            v121 = v314[1];
            v122 = v314[2];
            v123 = v314[4];
            *(v118 + 48) = v314[3];
            *(v118 + 64) = v123;
            *(v118 + 16) = v121;
            *(v118 + 32) = v122;
            v124 = v314[5];
            v125 = v314[6];
            v126 = v315;
            *(v118 + 128) = v316;
            *(v118 + 96) = v125;
            *(v118 + 112) = v126;
            *(v118 + 80) = v124;
            v302 = v116;
            swift_willThrow();
            v275, v127, v128, v129, v130, v131, v132, v133;
            goto LABEL_48;
          }

          v140 = v293;
          sub_1CEFE4C60(v82, v293, type metadata accessor for VFSItem);
          if ((v84 & 1) == 0)
          {
            v141 = v140 + *(v57 + 28);
            if (*(v141 + *(type metadata accessor for ItemMetadata(0) + 64)))
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
              sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50, &unk_1CFA13B50);
              v142 = swift_allocError();
              v144 = v143;
              sub_1CF1B8150();
              v145 = swift_allocError();
              *v146 = 0xB000000000000028;
              *&v314[0] = v298;
              BYTE8(v314[0]) = v301;
              *(v314 + 9) = *v313;
              HIDWORD(v314[0]) = *&v313[3];
              memset(&v314[1], 0, 96);
              v315 = v145;
              sub_1CF2A8DE0(v314);
              *v144 = v314[0];
              v147 = v314[1];
              v148 = v314[2];
              v149 = v314[4];
              *(v144 + 48) = v314[3];
              *(v144 + 64) = v149;
              *(v144 + 16) = v147;
              *(v144 + 32) = v148;
              v150 = v314[5];
              v151 = v314[6];
              v152 = v315;
              *(v144 + 128) = v316;
              *(v144 + 96) = v151;
              *(v144 + 112) = v152;
              *(v144 + 80) = v150;
              v302 = v142;
              swift_willThrow();
              v275, v153, v154, v155, v156, v157, v158, v159;
              v160 = v140;
LABEL_47:
              sub_1CEFE5888(v160, type metadata accessor for VFSItem);
              goto LABEL_48;
            }
          }

          v161 = v304;
          v162 = objc_sync_enter(v304);
          if (v162)
          {
LABEL_111:
            MEMORY[0x1EEE9AC00](v162);
            v269 = v161;
LABEL_112:
            fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, &v267, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
          }

          v135 = objc_sync_exit(v161);
          v164 = v291;
          v163 = v292;
          v165 = v290;
          if (!v135)
          {
            v166 = v289;
            sub_1CF25116C(v289);
            if ((*(v163 + 48))(v166, 1, v164) == 1)
            {
              sub_1CEFCCC44(v166, &unk_1EC4BE310, qword_1CF9FCBE0);
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
              sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50, &unk_1CFA13B50);
              v167 = swift_allocError();
              v169 = v168;
              sub_1CF1B8150();
              v170 = swift_allocError();
              *v171 = 0xB000000000000008;
              *&v314[0] = v298;
              BYTE8(v314[0]) = v301;
              *(v314 + 9) = *v313;
              HIDWORD(v314[0]) = *&v313[3];
              memset(&v314[1], 0, 96);
              v315 = v170;
              sub_1CF2A8DE0(v314);
              *v169 = v314[0];
              v172 = v314[1];
              v173 = v314[2];
              v174 = v314[4];
              *(v169 + 48) = v314[3];
              *(v169 + 64) = v174;
              *(v169 + 16) = v172;
              *(v169 + 32) = v173;
              v175 = v314[5];
              v176 = v314[6];
              v177 = v315;
              *(v169 + 128) = v316;
              *(v169 + 96) = v176;
              *(v169 + 112) = v177;
              *(v169 + 80) = v175;
              v302 = v167;
              swift_willThrow();
              v275, v178, v179, v180, v181, v182, v183, v184;
              v160 = v293;
              goto LABEL_47;
            }

            (*(v163 + 32))(v165, v166, v164);
            *&v314[0] = v66;
            v185 = v275;
            *(&v314[0] + 1) = v275;
            *v313 = 47;
            *&v313[8] = 0xE100000000000000;
            *&v307 = 58;
            *(&v307 + 1) = 0xE100000000000000;
            v269 = sub_1CEFE4E68();
            v270 = v269;
            v267 = MEMORY[0x1E69E6158];
            v268 = v269;
            sub_1CF9E7668();
            v187 = v186;
            sub_1CF9E5958();
            v185, v188, v189, v190, v191, v192, v193, v194;
            v187, v195, v196, v197, v198, v199, v200, v201;
            v203 = *(v163 + 8);
            v202 = v163 + 8;
            v290 = v203;
            (v203)(v165, v164);
            sub_1CEFE5888(v293, type metadata accessor for VFSItem);
            sub_1CF9E5A18();
            v205 = v204;
            v206 = qword_1EDEBBE70;
            v161 = v304;
            swift_beginAccess();
            v207 = *(v161 + v206);
            v208 = __CFADD__(v207, 1);
            v209 = v207 + 1;
            if (v208)
            {
              __break(1u);
              goto LABEL_104;
            }

            *(v161 + v206) = v209;
            v162 = objc_sync_enter(v161);
            if (!v162)
            {
              v292 = v202;
              v210 = v161[20];

              v211 = objc_sync_exit(v161);
              if (!v211)
              {
                v212 = type metadata accessor for VFSFileTree(0);
                Strong = swift_unknownObjectWeakLoadStrong();
                v213 = v161[36];
                fpfs_openflags(0x208000u);
                sub_1CF9E6978();
                v214 = openat_s();

                LODWORD(v304) = v214;
                if (v214 < 0)
                {
                  v223 = MEMORY[0x1D38683F0](v215);
                  memset(v314, 0, 40);
                  BYTE8(v314[2]) = 19;
                  v224 = sub_1CF19BBE4(v223, v314);
                  sub_1CF1969CC(v314);
                  swift_willThrow();
                  v205, v225, v226, v227, v228, v229, v230, v231;
                  v302 = 0;
                  v93 = v278;
                  v94 = v297;
                  v232 = v285;
                  goto LABEL_77;
                }

                v205, v216, v217, v218, v219, v220, v221, v222;
                if (v278)
                {
                  v293 = 0;
                }

                else
                {
                  v293 = *(v210 + 24);
                }

                os_unfair_lock_lock((v210 + 56));
                v233 = *(v210 + 64);
                v234 = *(v210 + 72);
                v235 = *(v210 + 88);
                LODWORD(v289) = *(v210 + 89);
                LODWORD(v275) = *(v210 + 90);

                v236 = *(v210 + 80);
                os_unfair_lock_unlock((v210 + 56));
                v273 = &v271;
                MEMORY[0x1EEE9AC00](v237);
                *(&v271 - 10) = v212;
                *(&v271 - 18) = v304;
                v238 = Strong;
                *(&v271 - 8) = v210;
                *(&v271 - 7) = v238;
                *(&v271 - 6) = v213;
                *(&v271 - 40) = 2;
                v267 = v278;
                v268 = 0;
                LOBYTE(v269) = -1;
                v270 = 0;
                *&v314[2] = v233;
                *(&v314[2] + 1) = v234;
                *&v314[0] = MEMORY[0x1E69E9820];
                *(&v314[0] + 1) = 1107296256;
                *&v314[1] = sub_1CEFDB088;
                *(&v314[1] + 1) = &block_descriptor_1289;
                v239 = _Block_copy(v314);
                v274 = v234;

                v272 = v239;
                *v313 = v239;
                *&v313[8] = v236;
                v313[16] = v235;
                v313[17] = v289;
                v313[18] = v275;
                v275 = sub_1CEFDB034();
                v240 = swift_allocError();
                *v241 = 6;
                *(v241 + 8) = 0u;
                *(v241 + 24) = 0u;
                *(v241 + 40) = 19;
                v242 = v286;
                *v286 = v240;
                swift_storeEnumTagMultiPayload();
                v243 = swift_allocObject();
                *(v243 + 16) = v242;
                *(v243 + 24) = sub_1CF2B9F90;
                *(v243 + 32) = &v271 - 12;
                v244 = swift_allocObject();
                *(v244 + 16) = sub_1CF1DBD3C;
                *(v244 + 24) = v243;
                v289 = v243;
                *&v314[2] = sub_1CF1DBD5C;
                *(&v314[2] + 1) = v244;
                *&v314[0] = MEMORY[0x1E69E9820];
                *(&v314[0] + 1) = 1107296256;
                *&v314[1] = sub_1CEFDB270;
                *(&v314[1] + 1) = &block_descriptor_1300;
                v245 = _Block_copy(v314);

                v246 = fpfs_fgetfileattrs_detailed();
                _Block_release(v245);
                LOBYTE(v245) = swift_isEscapingClosureAtFileLocation();

                if ((v245 & 1) == 0)
                {
                  if (v246)
                  {
                    swift_getErrorValue();
                    v247 = v305;
                    v248 = swift_allocError();
                    *v249 = 6;
                    *(v249 + 8) = 0u;
                    *(v249 + 24) = 0u;
                    *(v249 + 40) = 19;
                    v250 = v246;
                    v242 = v286;
                    v251 = sub_1CF199074(v248, v247);

                    v252 = v280;
                    *v280 = v251;
                    swift_storeEnumTagMultiPayload();
                    sub_1CEFDA9E0(v252, v242, &qword_1EC4BE000, &unk_1CFA006A0);
                  }

                  v253 = v281;
                  sub_1CEFCCBDC(v242, v281, &qword_1EC4BE000, &unk_1CFA006A0);
                  if (swift_getEnumCaseMultiPayload() != 1)
                  {

                    v232 = v285;
                    sub_1CEFE55D0(v253, v285, &unk_1EC4BE2F0, qword_1CFA04220);
                    sub_1CEFCCC44(v242, &qword_1EC4BE000, &unk_1CFA006A0);

                    _Block_release(v272);

                    v93 = v278;
                    v59 = v279;
                    v94 = v297;
                    goto LABEL_75;
                  }

                  *&v314[0] = *v253;
                  v224 = *&v314[0];
                  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
                  swift_willThrowTypedImpl();

                  sub_1CEFCCC44(v242, &qword_1EC4BE000, &unk_1CFA006A0);

                  _Block_release(v272);

                  v254 = v224;
                  LODWORD(v314[0]) = sub_1CF9E52A8();
                  sub_1CF196978();
                  v255 = sub_1CF9E5658();

                  v59 = v279;
                  v232 = v285;
                  if (v255)
                  {

                    *v232 = xmmword_1CF9FD940;
                    *(v232 + 16) = 2;
                    swift_storeEnumTagMultiPayload();
                    v93 = v278;
                    v94 = v297;
LABEL_75:
                    close(v304);

                    swift_unknownObjectRelease();
                    (v290)(v288, v291);
LABEL_79:
                    v258 = v283;
                    sub_1CEFE55D0(v232, v283, &unk_1EC4BE2F0, qword_1CFA04220);
                    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
                    v57 = v300;
                    v260 = (v299 + 56);
                    if (EnumCaseMultiPayload == 1)
                    {
                      sub_1CEFCCC44(v258, &unk_1EC4BE2F0, qword_1CFA04220);
                      v261 = 1;
                      v262 = v284;
                    }

                    else
                    {
                      v263 = v258;
                      v262 = v284;
                      sub_1CEFE4C60(v263, v284, type metadata accessor for VFSItem);
                      v261 = 0;
                    }

                    v264 = *v260;
                    (*v260)(v262, v261, 1, v57);
                    sub_1CEFDA9E0(v262, v59, &unk_1EC4BEC00, &unk_1CF9FCB60);
                    if (!v277(v59, 1, v57))
                    {
                      v265 = *(v59 + 8);
                      if (v265 != 255)
                      {
                        if (v301 != 255)
                        {
                          v266 = *v59;
                          if (*(v59 + 8))
                          {
                            if (v265 == 1)
                            {
                              if (v301 == 1 && v266 == v298)
                              {
                                goto LABEL_19;
                              }
                            }

                            else if (v266)
                            {
                              if (v301 == 2 && v298 == 1)
                              {
                                goto LABEL_19;
                              }
                            }

                            else if (v301 == 2 && !v298)
                            {
                              goto LABEL_19;
                            }
                          }

                          else if (!v301 && v266 == v298)
                          {
                            goto LABEL_19;
                          }
                        }

                        goto LABEL_85;
                      }
                    }

                    if (v301 != 255)
                    {
LABEL_85:
                      sub_1CEFCCC44(v59, &unk_1EC4BEC00, &unk_1CF9FCB60);
                      v264(v59, 1, 1, v57);
                    }

LABEL_19:
                    sub_1CEFCCBDC(v59, v94, &unk_1EC4BEC00, &unk_1CF9FCB60);
                    v95 = v277(v94, 1, v57);
                    v96 = v296;
                    v97 = v276;
                    if (v95 == 1)
                    {
                      sub_1CEFCCC44(v94, &unk_1EC4BEC00, &unk_1CF9FCB60);
                      v309 = v319;
                      v310 = v320;
                      v311 = v321;
                      v312 = v322;
                      v307 = v317;
                      v308 = v318;
                      v98 = v59;
                      v99 = swift_allocObject();
                      *(v99 + 16) = v93;
                      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
                      sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50, &unk_1CFA13B50);
                      swift_allocError();
                      v101 = v100;
                      sub_1CF1B8150();
                      v102 = swift_allocError();
                      *v103 = v99;
                      *&v313[7] = v307;
                      *&v313[23] = v308;
                      *&v313[39] = v309;
                      *&v313[55] = v310;
                      *&v313[71] = v311;
                      *&v313[87] = v312;
                      *&v314[0] = v298;
                      BYTE8(v314[0]) = v301;
                      *(&v314[2] + 9) = *&v313[32];
                      *(&v314[1] + 9) = *&v313[16];
                      *(v314 + 9) = *v313;
                      *(&v314[6] + 1) = *(&v312 + 1);
                      *(&v314[5] + 9) = *&v313[80];
                      *(&v314[4] + 9) = *&v313[64];
                      *(&v314[3] + 9) = *&v313[48];
                      v315 = v102;
                      sub_1CF2A8DE0(v314);
                      *v101 = v314[0];
                      v104 = v314[1];
                      v105 = v314[2];
                      v106 = v314[4];
                      *(v101 + 48) = v314[3];
                      *(v101 + 64) = v106;
                      *(v101 + 16) = v104;
                      *(v101 + 32) = v105;
                      v107 = v314[5];
                      v108 = v314[6];
                      v109 = v315;
                      *(v101 + 128) = v316;
                      *(v101 + 96) = v108;
                      *(v101 + 112) = v109;
                      *(v101 + 80) = v107;
                      swift_willThrow();
                      sub_1CEFCCBDC(&v317, &v306, &unk_1EC4BE330, &unk_1CF9FF010);
                      sub_1CEFCCC44(v98, &unk_1EC4BEC00, &unk_1CF9FCB60);
                      return;
                    }

                    v110 = v94;
                    v111 = v294;
                    sub_1CEFE4C60(v110, v294, type metadata accessor for VFSItem);
                    v314[2] = v319;
                    v314[3] = v320;
                    v314[4] = v321;
                    v314[5] = v322;
                    v314[0] = v317;
                    v314[1] = v318;
                    *&v307 = v97;
                    sub_1CEFCCBDC(&v317, v313, &unk_1EC4BE330, &unk_1CF9FF010);
                    v112 = v302;
                    sub_1CF2ABFCC(v314, v111, &v307, v93);
                    *&v313[32] = v314[2];
                    *&v313[48] = v314[3];
                    *&v313[64] = v314[4];
                    *&v313[80] = v314[5];
                    *v313 = v314[0];
                    *&v313[16] = v314[1];
                    sub_1CEFCCC44(v313, &unk_1EC4BECD0, &unk_1CF9FEF80);
                    if (v112)
                    {
                      sub_1CEFE5888(v111, type metadata accessor for VFSItem);
                    }

                    else
                    {
                      sub_1CEFE4C60(v111, v96, type metadata accessor for VFSItem);
                    }

                    goto LABEL_39;
                  }

                  close(v304);
                  v93 = v278;
                  v94 = v297;
LABEL_77:
                  v256 = v224;
                  LODWORD(v314[0]) = sub_1CF9E5328();
                  sub_1CF196978();
                  v257 = sub_1CF9E5658();

                  swift_unknownObjectRelease();
                  (v290)(v288, v291);
                  if ((v257 & 1) == 0)
                  {
LABEL_39:
                    sub_1CEFCCC44(v59, &unk_1EC4BEC00, &unk_1CF9FCB60);
                    return;
                  }

                  *v232 = xmmword_1CF9FD930;
                  *(v232 + 16) = 2;
                  swift_storeEnumTagMultiPayload();
                  goto LABEL_79;
                }

LABEL_104:
                __break(1u);
              }

              MEMORY[0x1EEE9AC00](v211);
              v269 = v161;
LABEL_114:
              fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, &v267, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
            }

            goto LABEL_111;
          }

LABEL_108:
          MEMORY[0x1EEE9AC00](v135);
          v269 = v304;
          goto LABEL_114;
        }
      }

      else
      {
        v59 = v279;
      }

      v60 = v277;
      goto LABEL_15;
    }

LABEL_5:
    sub_1CEFCCC44(v44, &unk_1EC4BEC00, &unk_1CF9FCB60);
    (*(v51 + 56))(v44, 1, 1, v52);
    goto LABEL_6;
  }
}

uint64_t sub_1CF27A500@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  v275 = a4;
  v266 = a7;
  v277 = type metadata accessor for VFSItem(0);
  MEMORY[0x1EEE9AC00](v277);
  v281 = (v253 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v276 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v279 = *(v276 - 8);
  MEMORY[0x1EEE9AC00](v276);
  v280 = v253 - v13;
  v270 = type metadata accessor for ItemMetadata(0);
  MEMORY[0x1EEE9AC00](v270);
  v268 = v253 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v282 = v253 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD90, &unk_1CFA134F0);
  MEMORY[0x1EEE9AC00](v17);
  v18 = a3[1];
  v293 = *a3;
  v294 = v18;
  v295 = *(a3 + 4);
  v19 = *a5;
  v296 = v253 - v20;
  v21 = sub_1CEFCCBDC(a2, v253 - v20, &unk_1EC4BFD90, &unk_1CFA134F0);
  v29 = (a1 + 16);
  v30 = (a1 + 24);
  if ((v19 & 2) != 0)
  {
    v29 = a2;
    v30 = (a2 + 8);
  }

  v31 = *v30;
  v254 = *v29;
  if ((v19 & 1) != 0 && (a6 & 8) == 0)
  {
    v32 = v296 + *(v17 + 40) + *(v270 + 56);
    *(v32 + 8), v22, v23, v24, v25, v26, v27, v28;
    *v32 = 0;
    *(v32 + 8) = 0;
  }

  if (v295 == 1)
  {
    v33 = 0;
  }

  else
  {
    v33 = v294;
  }

  if (v294)
  {
    v34 = v295 == 1;
  }

  else
  {
    v34 = 1;
  }

  v35 = v277;
  v36 = *(a1 + *(v277 + 28));
  v264 = v34;
  v255 = v31;
  if (v36 == 2 && (v19 & 8) != 0 && v295 != 1)
  {
    v256 = 1;
    v37 = &v293;
  }

  else
  {
    v256 = *(a1 + 8);
    v37 = a1;
  }

  v38 = v278;
  v267 = *v37;
  MEMORY[0x1EEE9AC00](v21);
  v251 = a2;
  sub_1CF25A3A4(sub_1CF2B1BF8);
  v271 = v38;
  if ((v42 & 0x100) != 0)
  {
    v43 = (a1 + v35[9]);
    v269 = *v43;
    v262 = *(v43 + 2);
    v261 = v43[2];
    v260 = *(v43 + 24);
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v260 = v42;
    v261 = v41;
    v262 = v40;
    v269 = v39;
  }

  v44 = (a2 + 16);
  v45 = (a2 + 24);
  if ((v19 & 1) == 0)
  {
    v45 = (a1 + 40);
    v44 = (a1 + 32);
  }

  v278 = *v44;
  v274 = *v45;

  sub_1CEFD90AC(v296 + *(v17 + 40), v282, type metadata accessor for ItemMetadata);
  v46 = (a1 + v35[11]);
  v47 = *v46;
  v48 = *(v46 + 4);
  v49 = *(a1 + v35[10]);
  sub_1CEFCCBDC(v275, v280, &unk_1EC4BE310, qword_1CF9FCBE0);
  v50 = v273;
  v51 = objc_sync_enter(v273);
  if (v51)
  {
    MEMORY[0x1EEE9AC00](v51);
    v251 = v50;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v250, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v258 = v48;
  v259 = v47;
  v263 = v49;
  v265 = v33;
  v275 = v50[20];

  v52 = objc_sync_exit(v50);
  v53 = v281;
  if (v52)
  {
    MEMORY[0x1EEE9AC00](v52);
    v251 = v50;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v250, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  v54 = sub_1CEFE528C(v291);
  v56 = v279 + 56;
  v55 = *(v279 + 56);
  v272 = v35[12];
  v257 = v55;
  (v55)(v53 + v272, 1, 1, v276, v54);
  v57 = v278;
  v58 = v274;
  v283 = v278;
  v284 = v274;
  v287 = 58;
  v288 = 0xE100000000000000;
  v289 = 47;
  v290 = 0xE100000000000000;
  v59 = sub_1CEFE4E68();
  v60 = MEMORY[0x1E69E6158];
  v273 = sub_1CF9E7668();
  v62 = v61;
  v283 = v57;
  v284 = v58;
  v287 = 58;
  v288 = 0xE100000000000000;
  v289 = 47;
  v290 = 0xE100000000000000;
  v251 = v59;
  v252 = v59;
  v250[0] = v60;
  v250[1] = v59;
  v283 = sub_1CF9E7668();
  v284 = v63;
  v64 = v271;
  sub_1CEFE52D8(0x70756B6F6F6CLL, 0xE600000000000000, &v283);
  if (v64)
  {

    v58, v72, v73, v74, v75, v76, v77, v78;
    v62, v79, v80, v81, v82, v83, v84, v85;
    sub_1CEFCCC44(v280, &unk_1EC4BE310, qword_1CF9FCBE0);
    sub_1CEFE5888(v282, type metadata accessor for ItemMetadata);
    v284, v86, v87, v88, v89, v90, v91, v92;
    sub_1CEFCCC44(v281 + v272, &unk_1EC4BED30, &unk_1CFA00710);
    return sub_1CEFCCC44(v296, &unk_1EC4BFD90, &unk_1CFA134F0);
  }

  v94 = v273;
  v271 = v62;
  v279 = v56;
  v284, v65, v66, v67, v68, v69, v70, v71;
  v95 = v268;
  sub_1CEFD90AC(v282, v268, type metadata accessor for ItemMetadata);
  v96 = v275;
  v97 = *(v275 + 24);
  v253[1] = 0;
  if (v269 == v97)
  {
    v98 = v281;
    v99 = v274;
    if (v256 == 1)
    {
      if (v267 != v269)
      {
        goto LABEL_69;
      }
    }

    else if (v256 != 2 || v267)
    {
LABEL_69:
      sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/tree/VFSItem.swift", 119, 2, 290);
    }

    *v281 = 0;
    v101 = 2;
    *(v98 + 8) = 2;
    *(v98 + 16) = 0;
    goto LABEL_43;
  }

  swift_beginAccess();
  v100 = *(v96 + 96);
  v98 = v281;
  v101 = v256;
  v99 = v274;
  if (*v100->tree)
  {
    v102 = sub_1CF7BF2C0(v267, v256);
    if (v103)
    {
      v104 = v102;

      v271, v105, v106, v107, v108, v109, v110, v111;
      v112 = *v100[1].tester + 32 * v104;
      v113 = *v112;
      LOBYTE(v104) = *(v112 + 8);
      v94 = *(v112 + 16);
      v271 = *(v112 + 24);

      v100, v114, v115, v116, v117, v118, v119, v120;
      *v98 = v267;
      *(v98 + 8) = v101;
      v121 = 24;
      v101 = v104;
      *(v98 + 16) = v113;
      goto LABEL_48;
    }
  }

  v122 = v255;
  v123 = v278;
  v124 = v254;
  if (v255 != 1)
  {
    goto LABEL_47;
  }

  if (*(v96 + 24) != v254)
  {
    if ((*(v96 + 48) & 1) == 0 && *(v96 + 40) == v254)
    {
      *v98 = v267;
      *(v98 + 8) = v101;
      *(v98 + 16) = 1;
      v101 = 2;
LABEL_43:
      v121 = 24;
      goto LABEL_48;
    }

LABEL_47:
    *v98 = v267;
    *(v98 + 8) = v101;
    v121 = 24;
    v101 = v122;
    *(v98 + 16) = v124;
    goto LABEL_48;
  }

  if (qword_1EDEAEE10 != -1)
  {
    swift_once();
    v123 = v278;
  }

  if (__PAIR128__(v99, v123) == xmmword_1EDEBBE48 || (sub_1CF9E8048() & 1) != 0)
  {
    *v98 = 1;
    v101 = 2;
    *(v98 + 8) = 2;
    *(v98 + 16) = 1;
    v121 = 24;
  }

  else
  {
    *(v98 + 16) = 0;
    *(v98 + 24) = 2;
    *v98 = v267;
    v121 = 8;
  }

LABEL_48:
  v273 = v94;
  *(v98 + v121) = v101;
  v125 = v95 + *(v270 + 56);
  if (*(v125 + 8))
  {
    sub_1CF51B588(&v283);
    v126 = v283;
    v127 = v284;
    v274 = v285;
    v278 = v286;
    v99, v128, v129, v130, v131, v132, v133, v134;
    sub_1CF51B588(&v283);
    v141 = v284;
    v142 = v286;
    v270 = v285;
    if (v126 == v283 && v127 == v284)
    {
      v127, v135, v283, v136, v137, v138, v139, v140;
      v141, v143, v144, v145, v146, v147, v148, v149;
    }

    else
    {
      v165 = sub_1CF9E8048();
      v127, v166, v167, v168, v169, v170, v171, v172;
      v141, v173, v174, v175, v176, v177, v178, v179;
      if ((v165 & 1) == 0)
      {
        sub_1CEFE5888(v282, type metadata accessor for ItemMetadata);
        v278, v202, v203, v204, v205, v206, v207, v208;
        v142, v209, v210, v211, v212, v213, v214, v215;
        v95 = v268;
        v164 = v276;
        goto LABEL_64;
      }
    }

    v95 = v268;
    v164 = v276;
    v180 = v278;
    if (v278)
    {
      if (v142)
      {
        if (v274 == v270 && v278 == v142)
        {
          v278, v150, v270, v152, v153, v154, v155, v156;
          v142, v181, v182, v183, v184, v185, v186, v187;
          sub_1CEFE5888(v282, type metadata accessor for ItemMetadata);
          goto LABEL_65;
        }

        LODWORD(v274) = sub_1CF9E8048();
        v180, v216, v217, v218, v219, v220, v221, v222;
        v142, v223, v224, v225, v226, v227, v228, v229;
        sub_1CEFE5888(v282, type metadata accessor for ItemMetadata);
        if (v274)
        {
          goto LABEL_65;
        }
      }

      else
      {
        v278, v150, v151, v152, v153, v154, v155, v156;
        sub_1CEFE5888(v282, type metadata accessor for ItemMetadata);
      }
    }

    else
    {
      sub_1CEFE5888(v282, type metadata accessor for ItemMetadata);
      if (!v142)
      {
        goto LABEL_65;
      }

      v142, v188, v189, v190, v191, v192, v193, v194;
    }

LABEL_64:
    *(v125 + 8), v195, v196, v197, v198, v199, v200, v201;
    *v125 = 0;
    *(v125 + 8) = 0;
    goto LABEL_65;
  }

  sub_1CEFE5888(v282, type metadata accessor for ItemMetadata);
  v99, v157, v158, v159, v160, v161, v162, v163;
  v164 = v276;
LABEL_65:
  v230 = v271;
  *(v98 + 32) = v273;
  *(v98 + 40) = v230;
  v231 = v277;
  v232 = v98 + *(v277 + 36);
  *v232 = v269;
  v233 = v261;
  *(v232 + 8) = v262;
  *(v232 + 16) = v233;
  *(v232 + 24) = v260 & 1;
  sub_1CEFD90AC(v95, v98 + v231[7], type metadata accessor for ItemMetadata);
  v234 = v272;
  sub_1CEFCCC44(v98 + v272, &unk_1EC4BED30, &unk_1CFA00710);
  sub_1CEFE55D0(v280, v98 + v234, &unk_1EC4BE310, qword_1CF9FCBE0);
  v257(v98 + v234, 0, 1, v164);
  LODWORD(v234) = *(v275 + 16);

  *(v98 + v231[13]) = v234;
  v235 = v98 + v231[14];
  v236 = v264;
  *v235 = v265;
  *(v235 + 4) = v236;
  v237 = v98 + v231[11];
  v238 = v258;
  *v237 = v259;
  *(v237 + 4) = v238;
  v239 = v98 + v231[8];
  v240 = v291[13];
  v241 = v291[14];
  v242 = v291[11];
  *(v239 + 192) = v291[12];
  *(v239 + 208) = v240;
  *(v239 + 224) = v241;
  v243 = v291[9];
  v244 = v291[10];
  v245 = v291[7];
  *(v239 + 128) = v291[8];
  *(v239 + 144) = v243;
  *(v239 + 160) = v244;
  *(v239 + 176) = v242;
  v246 = v291[5];
  v247 = v291[6];
  v248 = v291[3];
  *(v239 + 64) = v291[4];
  *(v239 + 80) = v246;
  *(v239 + 240) = v292;
  *(v239 + 96) = v247;
  *(v239 + 112) = v245;
  v249 = v291[1];
  *v239 = v291[0];
  *(v239 + 16) = v249;
  *(v239 + 32) = v291[2];
  *(v239 + 48) = v248;
  *(v98 + v231[10]) = v263;
  sub_1CEFE5888(v95, type metadata accessor for ItemMetadata);
  sub_1CEFE4C60(v98, v266, type metadata accessor for VFSItem);
  return sub_1CEFCCC44(v296, &unk_1EC4BFD90, &unk_1CFA134F0);
}

uint64_t sub_1CF27B1E4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for ItemMetadata(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = *(a1 + 5);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD90, &unk_1CFA134F0);
  sub_1CEFD90AC(a2 + *(v11 + 40), v8, type metadata accessor for ItemMetadata);
  v12 = *v8;
  if (v12 != 1 && (v12 != 2 ? (v13 = v8[v6[20]] == 0) : (v13 = 0), v13))
  {
    if ((v8[v6[28]] & 1) == 0)
    {
      v15 = 0;
      v14 = *&v8[v6[26]];
      goto LABEL_8;
    }

    v14 = 0;
  }

  else
  {
    v14 = 0;
    v10 = 0;
  }

  v15 = 1;
LABEL_8:
  result = sub_1CEFE5888(v8, type metadata accessor for ItemMetadata);
  *a3 = v9;
  *(a3 + 8) = v10;
  *(a3 + 16) = v14;
  *(a3 + 24) = v15;
  return result;
}

int8x8_t sub_1CF27B338@<D0>(unint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v2 = vdupq_n_s64(a1);
  v3.i64[0] = vshlq_u64(v2, xmmword_1CFA00280).u64[0];
  v4.i64[0] = vshlq_u64(v2, xmmword_1CFA00290).u64[0];
  v4.i64[1] = vshlq_u64(v2, xmmword_1CFA002F0).i64[1];
  v3.i64[1] = vshlq_u64(v2, xmmword_1CFA002E0).i64[1];
  v5 = vorrq_s8(vorrq_s8(vorrq_s8(vandq_s8(vshlq_u64(v2, xmmword_1CFA00260), xmmword_1CFA00340), vandq_s8(vshlq_u64(v2, xmmword_1CFA002D0), xmmword_1CFA00330)), vorrq_s8(vandq_s8(v3, xmmword_1CFA00300), vandq_s8(vshlq_u64(v2, xmmword_1CFA00270), xmmword_1CFA00320))), vorrq_s8(vorrq_s8(vandq_s8(vshlq_u64(v2, xmmword_1CFA002A0), xmmword_1CFA00370), vandq_s8(vshlq_u64(v2, xmmword_1CFA002B0), xmmword_1CFA00360)), vorrq_s8(vandq_s8(vshlq_u64(v2, xmmword_1CFA002C0), xmmword_1CFA00350), vandq_s8(v4, xmmword_1CFA00310))));
  result = vorr_s8(*v5.i8, *&vextq_s8(v5, v5, 8uLL));
  *a2 = *&result | (a1 >> 4) & 0x8000000;
  return result;
}

uint64_t sub_1CF27B458(unsigned __int8 *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void), _OWORD *a6, uint64_t a7, unsigned int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v976 = a7;
  v978 = a5;
  v974 = a4;
  v970 = a2;
  v975 = a9;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD90, &unk_1CFA134F0);
  v17 = v16 - 8;
  v936 = *(v16 - 8);
  v939 = *(v936 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v943 = &v903 - v18;
  v925 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED00, &unk_1CFA006E0);
  MEMORY[0x1EEE9AC00](v925);
  v921 = &v903 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v903 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v929 = &v903 - v24;
  v25 = sub_1CF9E5CF8();
  v922 = *(v25 - 8);
  v923 = v25;
  MEMORY[0x1EEE9AC00](v25);
  v945 = &v903 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  v937 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v942 = &v903 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v941 = &v903 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v947 = &v903 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v928 = &v903 - v34;
  v938 = v35;
  MEMORY[0x1EEE9AC00](v36);
  v949 = (&v903 - v37);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v38 - 8);
  v926 = &v903 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v931 = &v903 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v948 = &v903 - v43;
  v44 = sub_1CF9E5A58();
  v958 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v930 = &v903 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v932 = &v903 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v933 = &v903 - v49;
  MEMORY[0x1EEE9AC00](v50);
  v935 = &v903 - v51;
  MEMORY[0x1EEE9AC00](v52);
  v918 = &v903 - v53;
  MEMORY[0x1EEE9AC00](v54);
  v919 = &v903 - v55;
  MEMORY[0x1EEE9AC00](v56);
  v927 = &v903 - v57;
  MEMORY[0x1EEE9AC00](v58);
  v944 = &v903 - v59;
  MEMORY[0x1EEE9AC00](v60);
  v950 = &v903 - v61;
  v62 = sub_1CF9E6118();
  v953 = *(v62 - 8);
  v954 = v62;
  MEMORY[0x1EEE9AC00](v62);
  v924 = &v903 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v64);
  v952 = &v903 - v65;
  v967 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C5000, &qword_1CFA181A0);
  MEMORY[0x1EEE9AC00](v967);
  v968 = &v903 - v66;
  v966 = type metadata accessor for VFSItem(0);
  v964 = *(v966 - 8);
  MEMORY[0x1EEE9AC00](v966);
  v934 = &v903 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v68);
  v917 = &v903 - v69;
  MEMORY[0x1EEE9AC00](v70);
  v916 = &v903 - v71;
  MEMORY[0x1EEE9AC00](v72);
  v940 = &v903 - v73;
  MEMORY[0x1EEE9AC00](v74);
  v955 = &v903 - v75;
  MEMORY[0x1EEE9AC00](v76);
  v951 = &v903 - v77;
  MEMORY[0x1EEE9AC00](v78);
  v963 = &v903 - v79;
  MEMORY[0x1EEE9AC00](v80);
  v82 = &v903 - v81;
  v962 = v83;
  MEMORY[0x1EEE9AC00](v84);
  v86 = &v903 - v85;
  v87 = *(v17 + 48);
  v960 = a1;
  v88 = &a1[v87];
  v961 = type metadata accessor for ItemMetadata(0);
  v89 = v961[28];
  v959 = v88;
  v946 = v88[v89];
  type metadata accessor for VFSStagedContext();
  v90 = swift_dynamicCastClass();
  v920 = v22;
  if (v90)
  {
  }

  v971 = v86;
  v977 = a11;
  v91 = swift_allocObject();
  v92 = swift_allocObject();
  v92[2] = v90;
  v92[3] = a3;
  v973 = a3;
  v93 = v978;
  v92[4] = v974;
  v92[5] = v93;
  *(v91 + 16) = sub_1CF2B0930;
  *(v91 + 24) = v92;
  v94 = swift_allocObject();
  v95 = a6[3];
  v94[3] = a6[2];
  v94[4] = v95;
  v96 = a6[5];
  v94[5] = a6[4];
  v94[6] = v96;
  v97 = a6[1];
  v94[1] = *a6;
  v94[2] = v97;
  if ((v975 & 0x40) != 0)
  {
    swift_beginAccess();
    v98 = *(a10 + 16);
    if ((v98 & 0x1000) == 0)
    {
      *(a10 + 16) = v98 | 0x1000;
    }
  }

  v99 = swift_allocBox();
  v956 = v100;
  v957 = v44;
  v969 = v99;
  v101 = v94[4];
  v102 = v94[2];
  v1011 = v94[3];
  v1012 = v101;
  v103 = v94[4];
  v104 = v94[6];
  v1013 = v94[5];
  v1014 = v104;
  v105 = v94[2];
  v1010[0] = v94[1];
  v1010[1] = v105;
  v1004 = v1011;
  v1005 = v103;
  v106 = v94[6];
  v1006 = v1013;
  v1007 = v106;
  v1008 = v976;
  v1009 = a8;
  v1002 = v1010[0];
  v1003 = v102;
  v1001 = v977 & 0xFFFFFFFFFFFFFFEFLL;
  swift_beginAccess();
  v107 = *(a10 + 16);

  v965 = a8;
  v108 = v973;

  v972 = v90;
  sub_1CEFCCBDC(a6, &v990, &unk_1EC4BE330, &unk_1CF9FF010);
  sub_1CEFCCBDC(v1010, &v990, &unk_1EC4BE330, &unk_1CF9FF010);
  sub_1CF278908(&v1008, &v1002, &v1001, v107, v82);
  v913 = 0;
  v911 = a10;
  v1000[2] = v1004;
  v1000[3] = v1005;
  v1000[4] = v1006;
  v1000[5] = v1007;
  v1000[0] = v1002;
  v1000[1] = v1003;
  sub_1CEFCCC44(v1000, &unk_1EC4BE330, &unk_1CF9FF010);
  v109 = v971;
  sub_1CEFE4C60(v82, v971, type metadata accessor for VFSItem);
  v110 = v94;
  v111 = v963;
  sub_1CEFD90AC(v109, v963, type metadata accessor for VFSItem);
  v112 = *(v964 + 80);
  v113 = (v112 + 40) & ~v112;
  v912 = (v113 + v962 + 7) & 0xFFFFFFFFFFFFFFF8;
  v914 = v91;
  v114 = (v113 + v962 + 23) & 0xFFFFFFFFFFFFFFF8;
  v115 = (v114 + 15) & 0xFFFFFFFFFFFFFFF8;
  v910 = v112;
  v116 = swift_allocObject();
  v116[2] = v972;
  v116[3] = v108;
  v116[4] = v975;
  sub_1CEFE4C60(v111, v116 + v113, type metadata accessor for VFSItem);
  v117 = v116 + v912;
  *v117 = v976;
  v117[8] = v965;
  *(v116 + v114) = v110;
  v118 = v914;
  v119 = (v116 + v115);
  v120 = v978;
  *v119 = v974;
  v119[1] = v120;
  *(v118 + 16) = sub_1CF2B093C;
  *(v118 + 24) = v116;

  v915 = v110;

  v121 = v108;
  v122 = v977;
  if (v977)
  {
    v150 = *(v960 + 3);
    *&v990 = *(v960 + 2);
    *(&v990 + 1) = v150;

    v125 = v913;
    sub_1CEFE52D8(0x742D657461647075, 0xED00007465677261, &v990);
    if (v125)
    {
      *(&v990 + 1), v151, v152, v153, v154, v155, v156, v157;
      v123 = v971;
      v124 = v915;
      v158 = v966;
      if ((v122 & 0x10) == 0)
      {
        goto LABEL_19;
      }

LABEL_18:
      if (*(v123 + *(v158 + 28) + v961[20]) == v959[v961[20]])
      {
        v978 = 0;

        v164 = v123 + *(v158 + 36);
        v165 = *v164;
        v166 = *(v164 + 8);
        v167 = *(v164 + 16);
        v169 = *(v123 + 16);
        v170 = v971[24];
        v171 = *(v971 + 4);
        v172 = *(v971 + 5);
        LOBYTE(v980) = *(v164 + 24);
        v168 = v980;
        swift_beginAccess();
        v173 = v124[3];
        v993 = v124[4];
        v174 = v124[6];
        v994 = v124[5];
        v995 = v174;
        v175 = v124[2];
        v990 = v124[1];
        v991 = v175;
        v992 = v173;
        *(v124 + 2) = v165;
        *(v124 + 6) = v166;
        v121 = v973;
        *(v124 + 4) = v167;
        *(v124 + 40) = v168;
        *(v124 + 6) = 0;
        *(v124 + 7) = v169;
        v122 = v977;
        *(v124 + 64) = v170;
        v123 = v971;
        *(v124 + 9) = v171;
        *(v124 + 10) = v172;
        v118 = v914;
        *(v124 + 11) = 0;
        *(v124 + 12) = 0;
        *(v124 + 13) = 0;
        v176 = v966;

        sub_1CEFCCC44(&v990, &unk_1EC4BE330, &unk_1CF9FF010);
        goto LABEL_21;
      }

LABEL_19:
      v160 = *(v118 + 16);
      v161 = v968;
      *v968 = v125;
      swift_storeEnumTagMultiPayload();

      v162 = v125;
      v160(v161);

      v163 = v161;
LABEL_64:
      sub_1CEFCCC44(v163, &unk_1EC4C5000, &qword_1CFA181A0);
      sub_1CEFE5888(v123, type metadata accessor for VFSItem);
      swift_deallocBox();
LABEL_65:
    }

    *(&v990 + 1), v151, v152, v153, v154, v155, v156, v157;
    v123 = v971;
    v159 = *(v971 + 5);
    *&v990 = *(v971 + 4);
    *(&v990 + 1) = v159;

    sub_1CEFE52D8(0x732D657461647075, 0xED0000656372756FLL, &v990);
    v124 = v915;
    *(&v990 + 1), v212, v213, v214, v215, v216, v217, v218;
  }

  else
  {
    v123 = v971;
    v124 = v915;
    v125 = v913;
  }

  v126 = *(v123 + 40);
  *&v990 = *(v123 + 32);
  *(&v990 + 1) = v126;

  sub_1CEFE52D8(0x657461647075, 0xE600000000000000, &v990);
  if (v125)
  {
    *(&v990 + 1), v127, v128, v129, v130, v131, v132, v133;
    v158 = v966;
    if ((v122 & 0x10) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  *(&v990 + 1), v127, v128, v129, v130, v131, v132, v133;
  if ((v122 & 0x10) != 0)
  {
    v134 = v123 + *(v966 + 36);
    v135 = *v134;
    v136 = *(v134 + 8);
    v137 = *(v134 + 16);
    v138 = *(v123 + 16);
    v139 = *(v123 + 24);
    v141 = *(v123 + 32);
    v140 = *(v123 + 40);
    LOBYTE(v980) = *(v134 + 24);
    *&v990 = v135;
    DWORD2(v990) = v136;
    *&v991 = v137;
    BYTE8(v991) = v980;
    *&v992 = 0;
    *(&v992 + 1) = v138;
    LOBYTE(v993) = v139;
    *(&v993 + 1) = v141;
    v994 = v140;
    v995 = 0uLL;

    sub_1CEFCCC44(&v990, &unk_1EC4BE330, &unk_1CF9FF010);
    if (!DWORD2(v990))
    {
      swift_beginAccess();
      *(v124 + 6) = 0;
      *(v124 + 4) = 0;
      *(v124 + 40) = 1;
    }
  }

  swift_beginAccess();
  v142 = v124[3];
  v143 = v124[2];
  v993 = v124[4];
  v144 = v124[4];
  v145 = v124[6];
  v994 = v124[5];
  v995 = v145;
  v146 = v124[2];
  v990 = v124[1];
  v991 = v146;
  v992 = v142;
  v982 = v142;
  v983 = v144;
  v147 = v124[6];
  v984 = v994;
  v985 = v147;
  v980 = v990;
  v981 = v143;
  v988 = v122;
  v148 = v911;
  swift_beginAccess();
  v149 = *(v148 + 16);
  sub_1CEFCCBDC(&v990, v979, &unk_1EC4BE330, &unk_1CF9FF010);
  sub_1CF2ABFCC(&v980, v123, &v988, v149);
  v978 = 0;
  v979[2] = v982;
  v979[3] = v983;
  v979[4] = v984;
  v979[5] = v985;
  v979[0] = v980;
  v979[1] = v981;
  sub_1CEFCCC44(v979, &unk_1EC4BECD0, &unk_1CF9FEF80);
  v176 = v966;
LABEL_21:
  v177 = *(v176 + 28);
  v178 = v958;
  if ((v122 & 0x10000000000) != 0 && qword_1CFA00A30[*(v123 + v177)] != qword_1CFA00A30[*v959])
  {
    if (*(v123 + v177) == 3)
    {
      if (!*v959)
      {
        goto LABEL_23;
      }
    }

    else if (!*(v123 + v177) && *v959 == 3)
    {
      goto LABEL_23;
    }

    v219 = *(v118 + 16);
    sub_1CF2B0C60(&v990);
LABEL_63:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
    sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50, &unk_1CFA13B50);
    v239 = swift_allocError();
    *v240 = v990;
    v241 = v994;
    v243 = v991;
    v242 = v992;
    *(v240 + 48) = v993;
    *(v240 + 64) = v241;
    *(v240 + 16) = v243;
    *(v240 + 32) = v242;
    v244 = v997;
    v245 = v996;
    v246 = v995;
    *(v240 + 128) = v998;
    *(v240 + 96) = v245;
    *(v240 + 112) = v244;
    *(v240 + 80) = v246;
    v247 = v968;
    *v968 = v239;
    swift_storeEnumTagMultiPayload();

    v219(v247);

    v163 = v247;
    goto LABEL_64;
  }

LABEL_23:
  v179 = (v123 + v177);
  v180 = v123 + v177 + v961[7];
  sub_1CF9E5C98();
  if ((*&v181 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_252;
  }

  v180 = v965;
  if (v181 <= -9.22337204e18)
  {
LABEL_252:
    __break(1u);
    goto LABEL_253;
  }

  if (v181 >= 9.22337204e18)
  {
LABEL_253:
    __break(1u);
    goto LABEL_254;
  }

  if (fpfs_is_busy_date())
  {
    v182 = fpfs_current_or_default_log();
    v183 = v952;
    sub_1CF9E6128();
    v184 = v951;
    sub_1CEFD90AC(v123, v951, type metadata accessor for VFSItem);
    v185 = sub_1CF9E6108();
    v186 = sub_1CF9E7298();
    if (os_log_type_enabled(v185, v186))
    {
      v187 = swift_slowAlloc();
      v188 = swift_slowAlloc();
      *&v990 = v188;
      *v187 = 136446210;
      v189 = sub_1CF255338();
      v190 = v184;
      v192 = v191;
      sub_1CEFE5888(v190, type metadata accessor for VFSItem);
      v193 = sub_1CEFD0DF0(v189, v192, &v990);
      v192, v194, v195, v196, v197, v198, v199, v200;
      *(v187 + 4) = v193;
      _os_log_impl(&dword_1CEFC7000, v185, v186, "🏗 denying update on busy file %{public}s", v187, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v188);
      MEMORY[0x1D386CDC0](v188, -1, -1);
      MEMORY[0x1D386CDC0](v187, -1, -1);
    }

    else
    {

      sub_1CEFE5888(v184, type metadata accessor for VFSItem);
    }

    (*(v953 + 8))(v183, v954);
    v219 = *(v118 + 16);
    sub_1CF2B0C28(&v990);
    goto LABEL_63;
  }

  sub_1CEFD90AC(v123, v955, type metadata accessor for VFSItem);
  v202 = v180 == 2 && v976 == 0;
  v203 = objc_sync_enter(v121);
  v951 = v179;
  v906 = v202;
  if (v202)
  {
    v204 = v950;
    if (v203)
    {
LABEL_259:
      MEMORY[0x1EEE9AC00](v203);
      v901 = v973;
      goto LABEL_275;
    }

    v205 = v123;
    v206 = v973;
    v207 = v973[20];

    v208 = objc_sync_exit(v206);
    if (v208)
    {
      goto LABEL_276;
    }

    sub_1CEFE5888(v955, type metadata accessor for VFSItem);
    v209 = v957;
    (*(v178 + 16))(v204, v207 + OBJC_IVAR____TtC18FileProviderDaemon14VFSLookupScope_mainRootURL, v957);

    v210 = *(v178 + 32);
    v211 = ((v178 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000);
  }

  else
  {
    if (v203)
    {
      goto LABEL_259;
    }

    v220 = v178;
    v205 = v123;
    v208 = objc_sync_exit(v973);
    v221 = v948;
    v222 = v955;
    if (v208)
    {
      goto LABEL_276;
    }

    sub_1CF25116C(v948);
    v209 = v957;
    v203 = (*(v220 + 48))(v221, 1, v957);
    if (v203 == 1)
    {
      __break(1u);
      goto LABEL_256;
    }

    sub_1CEFE5888(v222, type metadata accessor for VFSItem);
    v210 = *(v220 + 32);
    v211 = ((v220 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000);
    v204 = v950;
    v210(v950, v221, v209);
    v178 = v220;
  }

  v950 = v210;
  v948 = v211;
  v210(v956, v204, v209);
  if (v972)
  {
    v223 = *(v972 + 56);
  }

  else
  {
    v223 = v946;
  }

  LODWORD(v913) = v223;
  v224 = v911;
  v225 = v205;
  v226 = v957;
  v952 = swift_allocBox();
  v227 = *(v178 + 16);
  v908 = v228;
  v909 = v227;
  v912 = v178 + 16;
  v227(v228, v956, v226);
  v999 = MEMORY[0x1E69E7CC0];
  v955 = swift_allocObject();
  *(v955 + 16) = 0;
  v974 = swift_allocObject();
  *(v974 + 16) = 0;
  type metadata accessor for BouncingStagedContext();
  v229 = swift_dynamicCastClass();
  v230 = v973;
  if (!v229)
  {
    goto LABEL_103;
  }

  v231 = *v960;
  v232 = v960[8];
  if (v232 == 1)
  {

    v233 = v978;
    goto LABEL_71;
  }

  v233 = v978;
  if (v232 != 2)
  {
    swift_retain_n();
    sub_1CF5111B0("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/tree/VFSFileTree.swift", 123, 2, 2154, v229);
  }

  v234 = objc_sync_enter(v230);
  if (!v231)
  {
    if (v234)
    {
      goto LABEL_268;
    }

    v235 = v229;
    v249 = v230[20];

    v208 = objc_sync_exit(v230);
    if (v208)
    {
      goto LABEL_276;
    }

    v231 = *(v249 + 24);

    goto LABEL_70;
  }

  if (v234)
  {
    goto LABEL_268;
  }

  v235 = v229;
  v236 = v230[20];

  v237 = objc_sync_exit(v230);
  if (v237)
  {
    MEMORY[0x1EEE9AC00](v237);
    v901 = v230;
    goto LABEL_277;
  }

  v231 = *(v236 + 40);
  v238 = *(v236 + 48);

  if (v238)
  {
LABEL_256:
    __break(1u);
LABEL_257:
    __break(1u);
LABEL_258:
    __break(1u);
    goto LABEL_259;
  }

  v224 = v911;
LABEL_70:
  v229 = v235;
LABEL_71:
  v250 = *(v229 + 24);
  v905 = *(v229 + 16);
  swift_beginAccess();
  v251 = *(v224 + 16);
  v988 = v231;
  LOBYTE(v989) = 1;
  v995 = 0u;
  v994 = 0u;
  v993 = 0u;
  v991 = 0u;
  v992 = 0u;
  v990 = 0u;

  sub_1CEFDAA48(&v988, &v990, &v980, v252, v253, v254, v255, v256, v257);
  v258 = v980;
  v982, v259, v260, v261, v262, v263, v264, v265;
  v266 = v949;
  sub_1CF263ADC(v258, 0, v251, v949);
  if (!v233)
  {
    v275 = v905;
    v904 = v231;
    v907 = v229;
    v978 = 0;
    v276 = *(v964 + 48);
    if ((v276)(v266, 1, v966) == 1)
    {
      sub_1CEFCCC44(v266, &unk_1EC4BEC00, &unk_1CF9FCB60);
      v277 = swift_allocObject();
      *(v277 + 16) = v251;
      v278 = v277 | 0x7000000000000000;
      v279 = swift_allocObject();
      *(v279 + 16) = v278;
      v280 = v279 | 0x8000000000000000;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
      sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50, &unk_1CFA13B50);
      v274 = swift_allocError();
      v282 = v281;
      sub_1CF1B8150();
      v283 = swift_allocError();
      *v284 = v280;
      *&v990 = v976;
      BYTE8(v990) = v965;
      *(&v990 + 9) = v980;
      HIDWORD(v990) = *(&v980 + 3);
      v991 = 0u;
      v992 = 0u;
      v993 = 0u;
      v994 = 0u;
      v995 = 0u;
      v996 = 0u;
      v997 = v283;
      sub_1CF2A8DE0(&v990);
      *v282 = v990;
      v285 = v991;
      v286 = v992;
      v287 = v994;
      *(v282 + 48) = v993;
      *(v282 + 64) = v287;
      *(v282 + 16) = v285;
      *(v282 + 32) = v286;
      v288 = v995;
      v289 = v996;
      v290 = v997;
      *(v282 + 128) = v998;
      *(v282 + 96) = v289;
      *(v282 + 112) = v290;
      *(v282 + 80) = v288;
      swift_willThrow();
      v250, v291, v292, v293, v294, v295, v296, v297;
      goto LABEL_75;
    }

    v303 = v266;
    v304 = v940;
    sub_1CEFE4C60(v303, v940, type metadata accessor for VFSItem);
    v305 = v250;
    if (v251 & 1) == 0 && (*(v304 + *(v966 + 28) + v961[16]))
    {
      v306 = swift_allocObject();
      *(v306 + 16) = 0xB000000000000028;
      v307 = v304;
      v308 = v306 | 0x8000000000000000;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
      sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50, &unk_1CFA13B50);
      v274 = swift_allocError();
      v310 = v309;
      sub_1CF1B8150();
      v311 = swift_allocError();
      *v312 = v308;
      *&v990 = v976;
      BYTE8(v990) = v965;
      *(&v990 + 9) = v980;
      HIDWORD(v990) = *(&v980 + 3);
      v991 = 0u;
      v992 = 0u;
      v993 = 0u;
      v994 = 0u;
      v995 = 0u;
      v996 = 0u;
      v997 = v311;
      sub_1CF2A8DE0(&v990);
      *v310 = v990;
      v313 = v991;
      v314 = v992;
      v315 = v994;
      *(v310 + 48) = v993;
      *(v310 + 64) = v315;
      *(v310 + 16) = v313;
      *(v310 + 32) = v314;
      v316 = v995;
      v317 = v996;
      v318 = v997;
      *(v310 + 128) = v998;
      *(v310 + 96) = v317;
      *(v310 + 112) = v318;
      *(v310 + 80) = v316;
      swift_willThrow();
      v250, v319, v320, v321, v322, v323, v324, v325;
      sub_1CEFE5888(v307, type metadata accessor for VFSItem);
      goto LABEL_75;
    }

    v949 = v276;
    v326 = v973;
    v327 = objc_sync_enter(v973);
    v299 = v971;
    if (v327)
    {
      goto LABEL_270;
    }

    v208 = objc_sync_exit(v326);
    v328 = v958;
    if (v208)
    {
      goto LABEL_276;
    }

    v329 = v931;
    sub_1CF25116C(v931);
    v330 = v329;
    v331 = v329;
    v332 = v957;
    if ((*(v328 + 48))(v331, 1, v957) == 1)
    {
      sub_1CEFCCC44(v330, &unk_1EC4BE310, qword_1CF9FCBE0);
      v333 = swift_allocObject();
      *(v333 + 16) = 0xB000000000000008;
      v334 = v333 | 0x8000000000000000;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
      sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50, &unk_1CFA13B50);
      v274 = swift_allocError();
      v336 = v335;
      sub_1CF1B8150();
      v337 = swift_allocError();
      *v338 = v334;
      *&v990 = v976;
      BYTE8(v990) = v965;
      *(&v990 + 9) = v980;
      HIDWORD(v990) = *(&v980 + 3);
      v991 = 0u;
      v992 = 0u;
      v993 = 0u;
      v994 = 0u;
      v995 = 0u;
      v996 = 0u;
      v997 = v337;
      sub_1CF2A8DE0(&v990);
      *v336 = v990;
      v339 = v991;
      v340 = v992;
      v341 = v994;
      *(v336 + 48) = v993;
      *(v336 + 64) = v341;
      *(v336 + 16) = v339;
      *(v336 + 32) = v340;
      v342 = v995;
      v343 = v996;
      v344 = v997;
      *(v336 + 128) = v998;
      *(v336 + 96) = v343;
      *(v336 + 112) = v344;
      *(v336 + 80) = v342;
      swift_willThrow();
      v305, v345, v346, v347, v348, v349, v350, v351;
      sub_1CEFE5888(v940, type metadata accessor for VFSItem);
      v298 = 0;
      goto LABEL_77;
    }

    v352 = v305;
    v353 = v927;
    (v950)(v927, v330, v332);
    *&v990 = v275;
    *(&v990 + 1) = v352;
    *&v980 = 47;
    *(&v980 + 1) = 0xE100000000000000;
    v988 = 58;
    v989 = 0xE100000000000000;
    v901 = sub_1CEFE4E68();
    v902 = v901;
    v899 = MEMORY[0x1E69E6158];
    v900 = v901;
    sub_1CF9E7668();
    v354 = v328;
    v356 = v355;
    sub_1CF9E5958();
    v352, v357, v358, v359, v360, v361, v362, v363;
    v356, v364, v365, v366, v367, v368, v369, v370;
    v371 = v353;
    v372 = *(v354 + 8);
    v372(v371, v332);
    sub_1CEFE5888(v940, type metadata accessor for VFSItem);
    sub_1CF9E5A18();
    v374 = v373;
    v375 = v911;
    swift_beginAccess();
    v376 = *(v375 + 16);
    v377 = v928;
    v378 = v978;
    sub_1CF26452C(2, v376, 2129920, v928);
    v978 = v378;
    if (v378)
    {
      v374, v379, v380, v381, v382, v383, v384, v385;
      v298 = 1;
      v274 = v978;
      goto LABEL_76;
    }

    v940 = v354 + 8;
    v374, v379, v380, v381, v382, v383, v384, v385;
    v386 = (v949)(v377, 1, v966);
    v225 = v971;
    if (v386 == 1)
    {
      sub_1CEFCCC44(v377, &unk_1EC4BEC00, &unk_1CF9FCB60);
      v387 = v225;
      v388 = *(v118 + 16);
      v389 = swift_allocObject();
      v390 = v911;
      swift_beginAccess();
      *(v389 + 16) = *(v390 + 16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
      sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50, &unk_1CFA13B50);
      v391 = swift_allocError();
      v393 = v392;
      sub_1CF1B8150();
      v394 = swift_allocError();
      *v395 = v389;
      *&v990 = v904;
      BYTE8(v990) = 1;
      *(&v990 + 9) = v988;
      HIDWORD(v990) = *(&v988 + 3);
      v991 = 0u;
      v992 = 0u;
      v993 = 0u;
      v994 = 0u;
      v995 = 0u;
      v996 = 0u;
      v997 = v394;
      sub_1CF2A8DE0(&v990);
      *v393 = v990;
      v396 = v991;
      v397 = v992;
      v398 = v994;
      *(v393 + 48) = v993;
      *(v393 + 64) = v398;
      *(v393 + 16) = v396;
      *(v393 + 32) = v397;
      v399 = v995;
      v400 = v996;
      v401 = v997;
      *(v393 + 128) = v998;
      *(v393 + 96) = v400;
      *(v393 + 112) = v401;
      *(v393 + 80) = v399;
      v402 = v968;
      *v968 = v391;
      swift_storeEnumTagMultiPayload();

      v388(v402);

      sub_1CEFCCC44(v402, &unk_1EC4C5000, &qword_1CFA181A0);
      v372(v944, v957);
      v403 = v387;
LABEL_250:
      sub_1CEFE5888(v403, type metadata accessor for VFSItem);
    }

    v949 = v372;
    v404 = v916;
    sub_1CEFE4C60(v377, v916, type metadata accessor for VFSItem);
    v405 = *v404;
    v406 = *(v404 + 8);
    v407 = v904;
    if (*(v404 + 8))
    {
      v408 = v965;
      v409 = v976;
      v178 = v958;
      v229 = v907;
      if (v406 == 1)
      {
        if (v965 != 1 || v405 != v976)
        {
          goto LABEL_249;
        }
      }

      else if (v405)
      {
        if (v965 != 2 || v976 != 1)
        {
          goto LABEL_249;
        }
      }

      else if (!v906)
      {
LABEL_249:
        v978 = *(v118 + 16);
        v883 = v408;
        v884 = swift_allocObject();
        *(v884 + 16) = v405;
        *(v884 + 24) = v406;
        *(v884 + 32) = v409;
        *(v884 + 40) = v883;
        v885 = v225;
        v886 = v884 | 0x1000000000000000;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
        sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50, &unk_1CFA13B50);
        v887 = swift_allocError();
        v889 = v888;
        sub_1CF1B8150();
        v890 = swift_allocError();
        *v891 = v886;
        *&v990 = v407;
        BYTE8(v990) = 1;
        *(&v990 + 9) = v980;
        HIDWORD(v990) = *(&v980 + 3);
        v991 = 0u;
        v992 = 0u;
        v993 = 0u;
        v994 = 0u;
        v995 = 0u;
        v996 = 0u;
        v997 = v890;
        sub_1CF2A8DE0(&v990);
        *v889 = v990;
        v892 = v991;
        v893 = v992;
        v894 = v994;
        *(v889 + 48) = v993;
        *(v889 + 64) = v894;
        *(v889 + 16) = v892;
        *(v889 + 32) = v893;
        v895 = v995;
        v896 = v996;
        v897 = v997;
        *(v889 + 128) = v998;
        *(v889 + 96) = v896;
        *(v889 + 112) = v897;
        *(v889 + 80) = v895;
        v898 = v968;
        *v968 = v887;
        swift_storeEnumTagMultiPayload();

        v978(v898);

        sub_1CEFCCC44(v898, &unk_1EC4C5000, &qword_1CFA181A0);
        sub_1CEFE5888(v404, type metadata accessor for VFSItem);
        v949(v944, v957);
        v403 = v885;
        goto LABEL_250;
      }
    }

    else
    {
      v408 = v965;
      v409 = v976;
      v178 = v958;
      v229 = v907;
      if (v965 || v405 != v976)
      {
        goto LABEL_249;
      }
    }

    sub_1CEFE5888(v404, type metadata accessor for VFSItem);

    (*(v178 + 40))(v956, v944, v957);
    v230 = v973;
    LOBYTE(v122) = v977;
LABEL_103:
    v410 = *(v225 + 8);
    v411 = v951;
    v907 = v229;
    if (v410 > 1 || (v951[v961[18]] & 1) != 0)
    {
LABEL_122:
      v451 = swift_allocObject();
      if (!v229)
      {
        goto LABEL_137;
      }

      LODWORD(v940) = 0;
      v455 = v960;
      v456 = *v960;
      v457 = v960[8];
      v452 = v978;
      if (v122)
      {
LABEL_157:
        v458 = (v455 + 16);
        v459 = (v455 + 24);
        goto LABEL_158;
      }

LABEL_124:
      v458 = (v225 + 32);
      v459 = (v225 + 40);
LABEL_158:
      v180 = *v459;
      v178 = *v458;
      *(v451 + 16) = *v458;
      v931 = (v451 + 16);
      *(v451 + 24) = v180;
      LODWORD(v944) = v457;
      v970 = v451;
      v476 = v945;
      v949 = v456;
      if (v457 != 2 || v456)
      {

        goto LABEL_183;
      }

      v477 = qword_1EDEAEE10;
      swift_bridgeObjectRetain_n();
      if (v477 == -1)
      {
LABEL_161:
        v478 = *(&xmmword_1EDEBBE48 + 1);
        v479 = xmmword_1EDEBBE48;
        v480 = sub_1CEFE7394(v178, v180);
        if (v481)
        {
          if (v480 == 12565487 && v481 == 0xA300000000000000)
          {
            0xA300000000000000, 0xA300000000000000, v482, v483, v484, v485, v486, v487;
LABEL_167:
            v503 = sub_1CF9E69E8();
            v504 = sub_1CF025150(v503, v178, v180);
            v506 = v505;
            v178 = MEMORY[0x1D3868C10](v504);
            v508 = v507;
            v506, v507, v509, v510, v511, v512, v513, v514;
            goto LABEL_169;
          }

          v494 = v481;
          v495 = sub_1CF9E8048();
          v494, v496, v497, v498, v499, v500, v501, v502;
          if (v495)
          {
            goto LABEL_167;
          }
        }

        v508 = v180;
LABEL_169:
        v515 = sub_1CEFE7394(v479, v478);
        if (v516)
        {
          if (v515 == 12565487 && v516 == 0xA300000000000000)
          {
            0xA300000000000000, 0xA300000000000000, v517, v518, v519, v520, v521, v522;
LABEL_174:
            v532 = sub_1CF9E69E8();
            v533 = sub_1CF025150(v532, v479, v478);
            v535 = v534;
            v479 = MEMORY[0x1D3868C10](v533);
            v478 = v536;
            v535, v536, v537, v538, v539, v540, v541, v542;
            goto LABEL_176;
          }

          v523 = v516;
          v524 = sub_1CF9E8048();
          v523, v525, v526, v527, v528, v529, v530, v531;
          if (v524)
          {
            goto LABEL_174;
          }
        }

LABEL_176:
        v452 = v978;
        v476 = v945;
        if (v178 == v479 && v508 == v478)
        {
          v478, v543, v544, v545, v546, v547, v548, v549;
          v508, v550, v551, v552, v553, v554, v555, v556;
          v180, v557, v558, v559, v560, v561, v562, v563;
          v230 = v973;
          v451 = v970;
          v225 = v971;
LABEL_180:
          if (qword_1EDEA4368 != -1)
          {
            swift_once();
          }

          v586 = unk_1EDEBB6A0;
          v587 = *(v451 + 24);
          *(v451 + 16) = qword_1EDEBB698;
          *(v451 + 24) = v586;

          v587, v588, v589, v590, v591, v592, v593, v594;
          goto LABEL_183;
        }

        v564 = sub_1CF9E8048();
        v478, v565, v566, v567, v568, v569, v570, v571;
        v508, v572, v573, v574, v575, v576, v577, v578;
        v180, v579, v580, v581, v582, v583, v584, v585;
        v230 = v973;
        v451 = v970;
        v225 = v971;
        if (v564)
        {
          goto LABEL_180;
        }

LABEL_183:
        if (!v907)
        {
          goto LABEL_188;
        }

        v988 = v949;
        LOBYTE(v989) = v944;
        v995 = 0u;
        v994 = 0u;
        v993 = 0u;
        v991 = 0u;
        v992 = 0u;
        v990 = 0u;
        sub_1CEFDAA48(&v988, &v990, &v980, v488, v489, v490, v491, v492, v493);
        v595 = v982;
        v990 = v980;
        v991 = v981;
        *&v992 = v982;
        v234 = objc_sync_enter(v230);
        if (!v234)
        {
          v596 = v230[20];

          v208 = objc_sync_exit(v230);
          if (v208)
          {
            goto LABEL_276;
          }

          v597 = *(v596 + 16);

          v598 = sub_1CEFDADE0(&v990, v597, 0x100000);
          if (!v452)
          {
            v661 = v598;
            v595, v599, v600, v601, v602, v603, v604, v605;
            v662 = *(v451 + 24);
            *&v990 = *(v451 + 16);
            *(&v990 + 1) = v662;
            *&v980 = 47;
            *(&v980 + 1) = 0xE100000000000000;
            v988 = 58;
            v989 = 0xE100000000000000;
            v901 = sub_1CEFE4E68();
            v902 = v901;
            v899 = MEMORY[0x1E69E6158];
            v900 = v901;
            sub_1CF9E7668();
            v664 = v663;
            v665 = sub_1CF9E6978();
            v664, v666, v667, v668, v669, v670, v671, v672;
            LODWORD(v664) = faccessat(v661, (v665 + 32), 0, 32);

            if (v664)
            {
              v613 = v911;
            }

            else
            {
              v701 = *(v451 + 24);
              *&v980 = *(v451 + 16);
              *(&v980 + 1) = v701;
              MEMORY[0x1EEE9AC00](v701);
              v901 = v931;
              LODWORD(v902) = v661;

              sub_1CF9E5CE8();
              sub_1CF662980(sub_1CF2B0C04, &v990);
              (*(v922 + 8))(v476, v923);
              *(&v980 + 1), v702, v703, v704, v705, v706, v707, v708;
              v716 = *(&v990 + 1);
              v613 = v911;
              if (*(&v990 + 1))
              {
                v717 = v990;
                v451 = v970;
                v718 = *(v970 + 24);
              }

              else
              {
                v451 = v970;
                v717 = *(v970 + 16);

                v716 = v718;
              }

              *(v451 + 16) = v717;
              *(v451 + 24) = v716;
              v718, v709, v710, v711, v712, v713, v714, v715;
            }

            if ((v661 & 0x80000000) == 0)
            {
              close(v661);
            }

LABEL_189:
            v615 = *(v451 + 16);
            v614 = *(v451 + 24);
            swift_beginAccess();
            v616 = *(v613 + 16);
            v986 = v949;
            LOBYTE(v987) = v944;
            v995 = 0u;
            v994 = 0u;
            v993 = 0u;
            v991 = 0u;
            v992 = 0u;
            v990 = 0u;

            sub_1CEFDAA48(&v986, &v990, &v980, v617, v618, v619, v620, v621, v622);
            v623 = v980;
            v982, v624, v625, v626, v627, v628, v629, v630;
            v631 = v941;
            sub_1CF263ADC(v623, 0, v616, v941);
            v978 = v452;
            if (v452)
            {
              v614, v632, v633, v634, v635, v636, v637, v638;
              v639 = v978;
LABEL_203:
              v698 = *(v118 + 16);
              v699 = v968;
              *v968 = v639;
              swift_storeEnumTagMultiPayload();

              v700 = v639;
              v698(v699);

              sub_1CEFCCC44(v699, &unk_1EC4C5000, &qword_1CFA181A0);
              sub_1CEFE5888(v225, type metadata accessor for VFSItem);

              goto LABEL_65;
            }

            if ((*(v964 + 48))(v631, 1, v966) == 1)
            {
              sub_1CEFCCC44(v631, &unk_1EC4BEC00, &unk_1CF9FCB60);
              v640 = swift_allocObject();
              *(v640 + 16) = v616;
              v641 = v640 | 0x7000000000000000;
              v642 = swift_allocObject();
              *(v642 + 16) = v641;
              v643 = v642 | 0x8000000000000000;
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
              sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50, &unk_1CFA13B50);
              v639 = swift_allocError();
              v645 = v644;
              sub_1CF1B8150();
              v646 = swift_allocError();
              *v647 = v643;
              *&v990 = v623;
              BYTE8(v990) = 1;
              *(&v990 + 9) = v980;
              HIDWORD(v990) = *(&v980 + 3);
              v991 = 0u;
              v992 = 0u;
              v993 = 0u;
              v994 = 0u;
              v995 = 0u;
              v996 = 0u;
              v997 = v646;
              sub_1CF2A8DE0(&v990);
              *v645 = v990;
              v648 = v991;
              v649 = v992;
              v650 = v994;
              *(v645 + 48) = v993;
              *(v645 + 64) = v650;
              *(v645 + 16) = v648;
              *(v645 + 32) = v649;
              v651 = v995;
              v652 = v996;
              v653 = v997;
              *(v645 + 128) = v998;
              *(v645 + 96) = v652;
              *(v645 + 112) = v653;
              *(v645 + 80) = v651;
              swift_willThrow();
              v614, v654, v655, v656, v657, v658, v659, v660;
              goto LABEL_203;
            }

            v673 = v934;
            sub_1CEFE4C60(v631, v934, type metadata accessor for VFSItem);
            if (v616 & 1) == 0 && (*(v673 + *(v966 + 28) + v961[16]))
            {
              v674 = swift_allocObject();
              v675 = 0xB000000000000028;
LABEL_202:
              *(v674 + 16) = v675;
              v680 = v674 | 0x8000000000000000;
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
              sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50, &unk_1CFA13B50);
              v639 = swift_allocError();
              v682 = v681;
              sub_1CF1B8150();
              v683 = swift_allocError();
              *v684 = v680;
              *&v990 = v623;
              BYTE8(v990) = 1;
              *(&v990 + 9) = v980;
              HIDWORD(v990) = *(&v980 + 3);
              v991 = 0u;
              v992 = 0u;
              v993 = 0u;
              v994 = 0u;
              v995 = 0u;
              v996 = 0u;
              v997 = v683;
              sub_1CF2A8DE0(&v990);
              *v682 = v990;
              v685 = v991;
              v686 = v992;
              v687 = v994;
              *(v682 + 48) = v993;
              *(v682 + 64) = v687;
              *(v682 + 16) = v685;
              *(v682 + 32) = v686;
              v688 = v995;
              v689 = v996;
              v690 = v997;
              *(v682 + 128) = v998;
              *(v682 + 96) = v689;
              *(v682 + 112) = v690;
              *(v682 + 80) = v688;
              swift_willThrow();
              v614, v691, v692, v693, v694, v695, v696, v697;
              sub_1CEFE5888(v934, type metadata accessor for VFSItem);
              goto LABEL_203;
            }

            v326 = v973;
            v327 = objc_sync_enter(v973);
            if (!v327)
            {
              v208 = objc_sync_exit(v326);
              if (!v208)
              {
                v676 = v926;
                sub_1CF25116C(v926);
                v677 = v676;
                v678 = v676;
                v679 = v957;
                if ((*(v958 + 48))(v678, 1, v957) == 1)
                {
                  sub_1CEFCCC44(v677, &unk_1EC4BE310, qword_1CF9FCBE0);
                  v674 = swift_allocObject();
                  v675 = 0xB000000000000008;
                  goto LABEL_202;
                }

                v719 = v918;
                (v950)(v918, v677, v679);
                *&v990 = v615;
                *(&v990 + 1) = v614;
                *&v980 = 47;
                *(&v980 + 1) = 0xE100000000000000;
                v986 = 58;
                v987 = 0xE100000000000000;
                v901 = sub_1CEFE4E68();
                v902 = v901;
                v899 = MEMORY[0x1E69E6158];
                v900 = v901;
                sub_1CF9E7668();
                v721 = v720;
                v722 = v919;
                sub_1CF9E5958();
                v614, v723, v724, v725, v726, v727, v728, v729;
                v721, v730, v731, v732, v733, v734, v735, v736;
                v737 = *(v958 + 8);
                v968 = v958 + 8;
                v967 = v737;
                v737(v719, v679);
                v738 = v917;
                sub_1CEFE4C60(v934, v917, type metadata accessor for VFSItem);
                v739 = v929;
                (v950)(v929, v722, v679);
                sub_1CEFE4C60(v738, v739 + *(v925 + 48), type metadata accessor for VFSItem);
                v740 = fpfs_current_or_default_log();
                v741 = v924;
                sub_1CF9E6128();
                v742 = v920;
                sub_1CEFCCBDC(v739, v920, &unk_1EC4BED00, &unk_1CFA006E0);
                v743 = v921;
                sub_1CEFCCBDC(v739, v921, &unk_1EC4BED00, &unk_1CFA006E0);
                v744 = sub_1CF9E6108();
                v745 = sub_1CF9E7298();
                if (os_log_type_enabled(v744, v745))
                {
                  v746 = swift_slowAlloc();
                  v945 = swift_slowAlloc();
                  *&v990 = v945;
                  *v746 = 136315394;
                  v747 = sub_1CF9E5928();
                  v748 = v742;
                  v749 = [v747 fp_shortDescription];

                  v750 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
                  v752 = v751;

                  sub_1CEFCCC44(v748, &unk_1EC4BED00, &unk_1CFA006E0);
                  v753 = sub_1CEFD0DF0(v750, v752, &v990);
                  v752, v754, v755, v756, v757, v758, v759, v760;
                  *(v746 + 4) = v753;
                  *(v746 + 12) = 2080;
                  v761 = sub_1CF255338();
                  v763 = v762;
                  sub_1CEFCCC44(v743, &unk_1EC4BED00, &unk_1CFA006E0);
                  v764 = sub_1CEFD0DF0(v761, v763, &v990);
                  v763, v765, v766, v767, v768, v769, v770, v771;
                  *(v746 + 14) = v764;
                  _os_log_impl(&dword_1CEFC7000, v744, v745, "FSTree update to new url %s new parent %s", v746, 0x16u);
                  v772 = v945;
                  swift_arrayDestroy();
                  MEMORY[0x1D386CDC0](v772, -1, -1);
                  MEMORY[0x1D386CDC0](v746, -1, -1);

                  (*(v953 + 8))(v924, v954);
                }

                else
                {

                  sub_1CEFCCC44(v743, &unk_1EC4BED00, &unk_1CFA006E0);
                  sub_1CEFCCC44(v742, &unk_1EC4BED00, &unk_1CFA006E0);
                  (*(v953 + 8))(v741, v954);
                }

                (*(v958 + 24))(v908, v929, v957);
                v773 = sub_1CF9E5A18();
                v775 = v774;
                v776 = v973;
                v777 = objc_sync_enter(v973);
                if (!v777)
                {
                  v953 = v773;
                  v954 = v775;
                  v778 = v776[20];

                  v208 = objc_sync_exit(v776);
                  if (!v208)
                  {
                    v779 = v935;
                    v780 = v957;
                    v781 = v909;
                    v909(v935, v778 + OBJC_IVAR____TtC18FileProviderDaemon14VFSLookupScope_trashURL, v957);

                    sub_1CF9E5A18();
                    v783 = v782;
                    v784 = v967;
                    v967(v779, v780);
                    v785 = v954;
                    LODWORD(v953) = sub_1CF9E6AE8();
                    v783, v786, v787, v788, v789, v790, v791, v792;
                    v785, v793, v794, v795, v796, v797, v798, v799;
                    v800 = objc_opt_self();
                    v781(v779, v956, v780);
                    v801 = sub_1CF9E5928();
                    v784(v779, v780);
                    if (v953)
                    {
                      v802 = [v800 writingIntentWithURL:v801 options:3];

                      v803 = *(v955 + 16);
                      *(v955 + 16) = v802;

                      v451 = v970;
                      v463 = v940;
                      if (*v951)
                      {
                        v804 = 1;
                      }

                      else
                      {
                        sub_1CEFD90AC(v225, v947, type metadata accessor for VFSItem);
                        v804 = 0;
                      }

                      v178 = v958;
                      v806 = v955;
                      v808 = v966;
                    }

                    else
                    {
                      v805 = [v800 writingIntentWithURL:v801 options:2];

                      v806 = v955;
                      v807 = *(v955 + 16);
                      *(v955 + 16) = v805;

                      v804 = 1;
                      v178 = v958;
                      v808 = v966;
                      v451 = v970;
                      v463 = v940;
                    }

                    v462 = v976;
                    (*(v964 + 56))(v947, v804, 1, v808);
                    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC20, &qword_1CF9FE480);
                    v203 = swift_allocObject();
                    *(v203 + 16) = xmmword_1CFA00250;
                    v809 = *(v806 + 16);
                    if (!v809)
                    {
                      goto LABEL_258;
                    }

                    *(v203 + 32) = v809;
                    v810 = v203;
                    v811 = v809;
                    sub_1CF1E8CE0(v810);
                    sub_1CEFCCC44(v929, &unk_1EC4BED00, &unk_1CFA006E0);
                    if ((v977 & 0x10) == 0)
                    {
                      if ((v977 & 8) == 0)
                      {
                        goto LABEL_228;
                      }

LABEL_232:
                      while (*v959 == 1)
                      {
LABEL_228:
                        if (!v907 && !v463)
                        {
                          goto LABEL_235;
                        }

                        v812 = objc_opt_self();
                        v813 = v935;
                        v814 = v178;
                        v178 = v957;
                        v909(v935, v908, v957);
                        v815 = sub_1CF9E5928();
                        (*(v814 + 8))(v813, v178);
                        v816 = [v812 writingIntentWithURL:v815 options:16];

                        v817 = v974;
                        v818 = *(v974 + 16);
                        *(v974 + 16) = v816;

                        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC20, &qword_1CF9FE480);
                        v203 = swift_allocObject();
                        *(v203 + 16) = xmmword_1CFA00250;
                        v472 = *(v817 + 16);
                        if (v472)
                        {
                          goto LABEL_234;
                        }

                        __break(1u);
                      }

LABEL_233:
                      v819 = objc_opt_self();
                      v820 = v935;
                      v821 = v178;
                      v822 = v957;
                      v909(v935, v908, v957);
                      v823 = sub_1CF9E5928();
                      (*(v821 + 8))(v820, v822);
                      v824 = [v819 writingIntentWithURL:v823 options:4];

                      v825 = v974;
                      v826 = *(v974 + 16);
                      *(v974 + 16) = v824;

                      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC20, &qword_1CF9FE480);
                      v203 = swift_allocObject();
                      *(v203 + 16) = xmmword_1CFA00250;
                      v472 = *(v825 + 16);
                      if (v472)
                      {
                        goto LABEL_234;
                      }

                      goto LABEL_257;
                    }

                    if (v959[v961[20]])
                    {
                      if ((v977 & 8) != 0)
                      {
                        goto LABEL_232;
                      }

                      if (v946 == v951[v961[28]])
                      {
                        goto LABEL_228;
                      }

                      goto LABEL_233;
                    }

                    v465 = v178;
                    goto LABEL_145;
                  }

                  goto LABEL_276;
                }

                MEMORY[0x1EEE9AC00](v777);
                v901 = v776;
LABEL_275:
                fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, &v899, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
              }

LABEL_276:
              MEMORY[0x1EEE9AC00](v208);
              v901 = v973;
LABEL_277:
              fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, &v899, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
            }

LABEL_270:
            MEMORY[0x1EEE9AC00](v327);
            v901 = v326;
            goto LABEL_275;
          }

          v595, v606, v607, v608, v609, v610, v611, v612;
          v452 = 0;
LABEL_188:
          v613 = v911;
          goto LABEL_189;
        }

LABEL_268:
        MEMORY[0x1EEE9AC00](v234);
        v901 = v230;
        goto LABEL_275;
      }

LABEL_254:
      swift_once();
      goto LABEL_161;
    }

    if ((v122 & 2) == 0)
    {
LABEL_106:
      if (v122)
      {
        v412 = *(v960 + 3);
        v413 = *(v225 + 32);
        v414 = *(v225 + 40);
        *&v990 = *(v960 + 2);
        *(&v990 + 1) = v412;
        v415 = sub_1CF662E90();
        v417 = v416;
        *&v980 = v413;
        *(&v980 + 1) = v414;
        v419 = sub_1CF662E90();
        v425 = v418;
        if (v415 == v419 && v417 == v418)
        {
          v418, v418, v419, v420, v421, v422, v423, v424;
          v417, v426, v427, v428, v429, v430, v431, v432;
        }

        else
        {
          v436 = sub_1CF9E8048();
          v425, v437, v438, v439, v440, v441, v442, v443;
          v417, v444, v445, v446, v447, v448, v449, v450;
          if ((v436 & 1) == 0)
          {
            v460 = swift_allocObject();
            if ((v122 & 2) != 0)
            {
              v453 = v960;
              v454 = v960 + 8;
              LODWORD(v940) = 1;
              v230 = v973;
              v452 = v978;
            }

            else
            {
              v230 = v973;
              v452 = v978;
              if (v907)
              {
                v453 = v960;
                v454 = v960 + 8;
              }

              else
              {
                v453 = (v225 + 16);
                v454 = (v225 + 24);
              }

              LODWORD(v940) = 1;
            }

            v451 = v460;
            goto LABEL_156;
          }
        }

        v411 = v951;
        v230 = v973;
        v178 = v958;
        v229 = v907;
        if (*&v951[v961[14] + 8])
        {
          v451 = swift_allocObject();
          if ((v975 & 8) == 0)
          {
            v452 = v978;
            if ((v122 & 2) != 0 || v229)
            {
              v453 = v960;
              v454 = v960 + 8;
            }

            else
            {
              v453 = (v225 + 16);
              v454 = (v225 + 24);
            }

            LODWORD(v940) = 1;
            goto LABEL_156;
          }

          if (v229)
          {
            LODWORD(v940) = 0;
            v453 = v960;
            v454 = v960 + 8;
            v452 = v978;
LABEL_156:
            v456 = *v453;
            v457 = *v454;
            v455 = v960;
            goto LABEL_157;
          }

LABEL_137:
          v949 = *(v225 + 16);
          LODWORD(v944) = *(v225 + 24);
          v461 = *(v225 + 40);
          *(v451 + 16) = *(v225 + 32);
          *(v451 + 24) = v461;
          (*(v964 + 56))(v947, 1, 1, v966);
          v462 = v976;
          if ((v122 & 0x10) == 0)
          {

            v463 = 0;
            if ((v122 & 8) != 0)
            {
              goto LABEL_232;
            }

LABEL_235:
            v970 = v451;
            v829 = ~v910;
            v830 = *(v974 + 16);
            LODWORD(v940) = v463;
            if (v830)
            {
              v968 = ~v910;
              v831 = [v830 URL];
              v832 = v932;
              sub_1CF9E59D8();

              v833 = v933;
              v834 = v957;
              v835 = (v950)(v933, v832, v957);
              MEMORY[0x1EEE9AC00](v835);
              v902 = v833;
              MEMORY[0x1EEE9AC00](v836);
              v899 = v973;
              v900 = sub_1CF2B9EA4;
              v901 = v837;
              __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC4C5730, &qword_1CF9FCCE0);
              v838 = v978;
              sub_1CF9E59B8();
              v978 = v838;
              v839 = v990;
              (*(v958 + 8))(v833, v834);
              v840 = v955;
              v841 = *(v955 + 16);
              v842 = v936;
              if (v841)
              {
                v225 = v971;
                v462 = v976;
                if (v839)
                {
                  v839 = 1;
                  v843 = v938;
                  v844 = v939;
                  v845 = v937;
                  v829 = v968;
LABEL_245:
                  LODWORD(v966) = v907 != 0;
                  LODWORD(v978) = v839 | (v975 >> 2);
                  *&v980 = v462;
                  BYTE8(v980) = v965;
                  v968 = v999;
                  sub_1CEFCCBDC(v947, v942, &unk_1EC4BEC00, &unk_1CF9FCB60);
                  sub_1CEFCCBDC(v960, v943, &unk_1EC4BFD90, &unk_1CFA134F0);
                  sub_1CEFD90AC(v225, v963, type metadata accessor for VFSItem);
                  v853 = (*(v845 + 80) + 112) & ~*(v845 + 80);
                  v854 = v853 + v843;
                  v855 = (v853 + v843) & 0xFFFFFFFFFFFFFFF8;
                  v856 = (v855 + 39) & 0xFFFFFFFFFFFFFFF8;
                  v857 = *(v842 + 80);
                  v858 = v462;
                  v859 = (v857 + v856 + 8) & ~v857;
                  v860 = v859 + v844;
                  v964 = v860 & 0xFFFFFFFFFFFFFFF8;
                  v961 = (((v860 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8);
                  v967 = ((v961 + v910 + 248) & v829);
                  v861 = swift_allocObject();
                  v862 = v974;
                  *(v861 + 16) = v914;
                  *(v861 + 24) = v862;
                  v863 = v977;
                  *(v861 + 32) = v952;
                  *(v861 + 40) = v863;
                  v864 = v973;
                  *(v861 + 48) = v975;
                  *(v861 + 56) = v864;
                  *(v861 + 64) = v940;
                  v865 = v911;
                  *(v861 + 72) = v969;
                  *(v861 + 80) = v865;
                  *(v861 + 88) = v858;
                  *(v861 + 96) = v965;
                  *(v861 + 104) = v915;
                  sub_1CEFE55D0(v942, v861 + v853, &unk_1EC4BEC00, &unk_1CF9FCB60);
                  *(v861 + v854) = v966;
                  v866 = v861 + v855;
                  *(v866 + 8) = v949;
                  *(v866 + 16) = v944;
                  *(v866 + 24) = v970;
                  *(v861 + v856) = v955;
                  sub_1CEFE55D0(v943, v861 + v859, &unk_1EC4BFD90, &unk_1CFA134F0);
                  *(v861 + v860) = v913;
                  *(v861 + v964 + 8) = v972;
                  v867 = v961 + v861;
                  v868 = *(a12 + 208);
                  *(v867 + 12) = *(a12 + 192);
                  *(v867 + 13) = v868;
                  *(v867 + 14) = *(a12 + 224);
                  *(v867 + 30) = *(a12 + 240);
                  v869 = *(a12 + 144);
                  *(v867 + 8) = *(a12 + 128);
                  *(v867 + 9) = v869;
                  v870 = *(a12 + 176);
                  *(v867 + 10) = *(a12 + 160);
                  *(v867 + 11) = v870;
                  v871 = *(a12 + 80);
                  *(v867 + 4) = *(a12 + 64);
                  *(v867 + 5) = v871;
                  v872 = *(a12 + 112);
                  *(v867 + 6) = *(a12 + 96);
                  *(v867 + 7) = v872;
                  v873 = *(a12 + 16);
                  *v867 = *a12;
                  *(v867 + 1) = v873;
                  v874 = *(a12 + 48);
                  *(v867 + 2) = *(a12 + 32);
                  *(v867 + 3) = v874;
                  sub_1CEFE4C60(v963, v967 + v861, type metadata accessor for VFSItem);

                  sub_1CEFCCBDC(a12, &v990, &qword_1EC4BECF0, &unk_1CF9FEEB0);
                  v875 = v968;
                  sub_1CF265B04(&v980, v968, v978 & 1, sub_1CF2B0A04, v861);

                  v875, v876, v877, v878, v879, v880, v881, v882;

                  sub_1CEFCCC44(v947, &unk_1EC4BEC00, &unk_1CF9FCB60);
                  sub_1CEFE5888(v971, type metadata accessor for VFSItem);
                }

                v829 = v968;
LABEL_244:
                v848 = [v841 URL];
                v849 = v930;
                sub_1CF9E59D8();

                MEMORY[0x1EEE9AC00](v850);
                v902 = v849;
                MEMORY[0x1EEE9AC00](v851);
                v899 = v973;
                v900 = sub_1CF2B9EA4;
                v901 = v852;
                __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC4C5730, &qword_1CF9FCCE0);
                sub_1CF9E59B8();
                v462 = v976;
                v839 = v990;
                (*(v958 + 8))(v849, v957);
                v843 = v938;
                v844 = v939;
                v845 = v937;
                goto LABEL_245;
              }

              v846 = *(v974 + 16);
              v225 = v971;
              v462 = v976;
              v843 = v938;
              v844 = v939;
              v845 = v937;
              v829 = v968;
            }

            else
            {
              v840 = v955;
              v841 = *(v955 + 16);
              v842 = v936;
              if (v841)
              {
                goto LABEL_244;
              }

              v846 = 0;
              v839 = 0;
              v843 = v938;
              v844 = v939;
              v845 = v937;
            }

            *(v840 + 16) = v846;
            v847 = v846;
            goto LABEL_245;
          }

          if (v959[v961[20]])
          {
            if ((v122 & 8) == 0)
            {
              v464 = v411[v961[28]];

              v463 = 0;
              if (v946 == v464)
              {
                goto LABEL_228;
              }

              goto LABEL_233;
            }

LABEL_147:

            v463 = 0;
            goto LABEL_232;
          }

          v465 = v178;

          v463 = 0;
LABEL_145:
          v466 = objc_opt_self();
          v467 = v935;
          v178 = v957;
          v909(v935, v908, v957);
          v468 = sub_1CF9E5928();
          (*(v465 + 8))(v467, v178);
          v469 = [v466 writingIntentWithURL:v468 options:0x80000000];

          v470 = v974;
          v471 = *(v974 + 16);
          *(v974 + 16) = v469;

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC20, &qword_1CF9FE480);
          v203 = swift_allocObject();
          *(v203 + 16) = xmmword_1CFA00250;
          v472 = *(v470 + 16);
          if (v472)
          {
LABEL_234:
            *(v203 + 32) = v472;
            v827 = v203;
            v828 = v472;
            sub_1CF1E8CE0(v827);
            goto LABEL_235;
          }

          __break(1u);
          goto LABEL_147;
        }
      }

      goto LABEL_122;
    }

    v433 = *v960;
    v434 = *(v225 + 16);
    v435 = *(v225 + 24);
    if (v960[8])
    {
      if (v960[8] == 1)
      {
        if (v435 == 1 && v433 == v434)
        {
          goto LABEL_106;
        }
      }

      else if (v433)
      {
        if (v435 == 2 && v434 == 1)
        {
          goto LABEL_106;
        }
      }

      else if (v435 == 2 && !v434)
      {
        goto LABEL_106;
      }
    }

    else if (!*(v225 + 24) && v433 == v434)
    {
      goto LABEL_106;
    }

    v473 = *v960;
    v474 = v960[8];
    v475 = swift_allocObject();
    v457 = v474;
    v456 = v473;
    v451 = v475;
    LODWORD(v940) = 1;
    v455 = v960;
    v452 = v978;
    if (v122)
    {
      goto LABEL_157;
    }

    goto LABEL_124;
  }

  v250, v267, v268, v269, v270, v271, v272, v273;
  v274 = v233;
LABEL_75:
  v298 = 0;
LABEL_76:
  v299 = v971;
LABEL_77:
  v300 = *(v118 + 16);
  v301 = v968;
  *v968 = v274;
  swift_storeEnumTagMultiPayload();

  v302 = v274;
  v300(v301);

  sub_1CEFCCC44(v301, &unk_1EC4C5000, &qword_1CFA181A0);
  sub_1CEFE5888(v299, type metadata accessor for VFSItem);
  if (v298)
  {
    (*(v958 + 8))(v944, v957);
  }
}