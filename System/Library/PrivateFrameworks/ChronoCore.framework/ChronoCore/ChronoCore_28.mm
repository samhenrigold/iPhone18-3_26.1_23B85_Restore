uint64_t sub_224CEE620(uint64_t a1, int a2)
{
  v3 = v2;
  v118 = a2;
  v119 = a1;
  v126 = *MEMORY[0x277D85DE8];
  v4 = sub_224DAB258();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = &v111 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v111 - v11;
  v13 = sub_224DAB8C8();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = (&v111 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(v3 + OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService__queue);
  *v17 = v18;
  (*(v14 + 104))(v17, *MEMORY[0x277D85200], v13);
  v19 = v18;
  v20 = sub_224DAB8F8();
  (*(v14 + 8))(v17, v13);
  if ((v20 & 1) == 0)
  {
    goto LABEL_90;
  }

  v21 = *(v3 + 248);
  v22 = *(v3 + 256);
  __swift_project_boxed_opaque_existential_1((v3 + 224), v21);
  (*(v22 + 32))(&aBlock, 768, v21, v22);
  if (!*(&v124 + 1))
  {
    sub_224A3311C(&aBlock, &qword_27D6F50E0, &qword_224DB41A0);
    (*(v5 + 16))(v9, v3 + OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService_logger, v4);
    v43 = sub_224DAB228();
    v44 = sub_224DAF2A8();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_224A2F000, v43, v44, "Unable to update placeholders because no hosts exist", v45, 2u);
      MEMORY[0x22AA5EED0](v45, -1, -1);
    }

    return (*(v5 + 8))(v9, v4);
  }

  v125[0] = aBlock;
  v125[1] = v123;
  v125[2] = v124;
  v23 = sub_224C160B0();
  if (!v23)
  {
    goto LABEL_92;
  }

  if (v23 >> 62)
  {
    goto LABEL_91;
  }

  v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (!v24)
  {
LABEL_92:
    (*(v5 + 16))(v12, v3 + OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService_logger, v4);
    v96 = sub_224DAB228();
    v97 = sub_224DAF2A8();
    if (os_log_type_enabled(v96, v97))
    {
      v98 = swift_slowAlloc();
      *v98 = 0;
      _os_log_impl(&dword_224A2F000, v96, v97, "Unable to update placeholders because no metrics specifications exist", v98, 2u);
      MEMORY[0x22AA5EED0](v98, -1, -1);
    }

    (*(v5 + 8))(v12, v4);
    return sub_224A699F0(v125);
  }

LABEL_6:
  v4 = 0;
  v25 = sub_224CE6A0C(v119);
  v26 = sub_224AE8EB4(v25);

  v12 = MEMORY[0x277D84FA0];
  if (*(v3 + OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService__queue_descriptors))
  {
    v27 = *(v3 + OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService__queue_descriptors);
  }

  else
  {
    v27 = MEMORY[0x277D84FA0];
  }

  *(v3 + OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService__queue_descriptors) = v26;
  v116 = 0;
  v117 = v3;
  v119 = v26;
  if ((v27 & 0xC000000000000001) != 0)
  {
    *&aBlock = v12;

    sub_224DAF7E8();
    v28 = sub_224DAF878();
    if (v28)
    {
      v29 = v28;
      sub_224A3B79C(0, &unk_2813509D0, 0x277CFA378);
      v30 = v29;
      v3 = MEMORY[0x277D84FA0];
      do
      {
        v120 = v30;
        swift_dynamicCast();
        v31 = [v121 extensionIdentity];
        v4 = [v31 isRemote];

        v5 = v121;
        if (v4)
        {
        }

        else
        {
          v32 = *(v3 + 16);
          if (*(v3 + 24) <= v32)
          {
            sub_224ADE124(v32 + 1);
          }

          v3 = aBlock;
          v33 = sub_224DAF698();
          v34 = v3 + 56;
          v35 = -1 << *(v3 + 32);
          v36 = v33 & ~v35;
          v37 = v36 >> 6;
          if (((-1 << v36) & ~*(v3 + 56 + 8 * (v36 >> 6))) != 0)
          {
            v38 = __clz(__rbit64((-1 << v36) & ~*(v3 + 56 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v39 = 0;
            v40 = (63 - v35) >> 6;
            do
            {
              if (++v37 == v40 && (v39 & 1) != 0)
              {
                __break(1u);
                goto LABEL_87;
              }

              v41 = v37 == v40;
              if (v37 == v40)
              {
                v37 = 0;
              }

              v39 |= v41;
              v42 = *(v34 + 8 * v37);
            }

            while (v42 == -1);
            v38 = __clz(__rbit64(~v42)) + (v37 << 6);
          }

          *(v34 + ((v38 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v38;
          *(*(v3 + 48) + 8 * v38) = v5;
          ++*(v3 + 16);
        }

        v30 = sub_224DAF878();
      }

      while (v30);
    }

    else
    {
      v3 = v12;
    }

    goto LABEL_49;
  }

  v47 = *(v27 + 32);
  v48 = v47 & 0x3F;
  v113 = ((1 << v47) + 63) >> 6;
  v49 = 8 * v113;

  if (v48 <= 0xD)
  {
LABEL_32:
    v112 = &v111;
    MEMORY[0x28223BE20](v50, v51);
    v114 = &v111 - ((v49 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v114, v49);
    v115 = 0;
    v52 = 0;
    v53 = 1 << *(v27 + 32);
    v54 = -1;
    if (v53 < 64)
    {
      v54 = ~(-1 << v53);
    }

    v55 = v54 & *(v27 + 56);
    v4 = (v53 + 63) >> 6;
    while (v55)
    {
      v56 = __clz(__rbit64(v55));
      v55 &= v55 - 1;
LABEL_42:
      v59 = v56 | (v52 << 6);
      v5 = *(*(v27 + 48) + 8 * v59);
      v60 = [v5 extensionIdentity];
      v3 = [v60 isRemote];

      if ((v3 & 1) == 0)
      {
        *&v114[(v59 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v59;
        v61 = __OFADD__(v115++, 1);
        if (v61)
        {
          __break(1u);
          goto LABEL_46;
        }
      }
    }

    v57 = v52;
    while (1)
    {
      v52 = v57 + 1;
      if (__OFADD__(v57, 1))
      {
        goto LABEL_88;
      }

      if (v52 >= v4)
      {
        break;
      }

      v58 = *(v27 + 56 + 8 * v52);
      ++v57;
      if (v58)
      {
        v56 = __clz(__rbit64(v58));
        v55 = (v58 - 1) & v58;
        goto LABEL_42;
      }
    }

LABEL_46:
    v62 = sub_224B0552C(v114, v113, v115, v27);
    v3 = v62;
    goto LABEL_49;
  }

  v99 = v113;
  v100 = v27;

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_32;
  }

  v102 = swift_slowAlloc();
  v4 = v116;
  v3 = sub_224CF70D0(v102, v99, v100, sub_224CF7EC8, 0);
  v116 = v4;

  v62 = MEMORY[0x22AA5EED0](v102, -1, -1);
LABEL_49:
  v63 = v119;
  if ((v119 & 0xC000000000000001) != 0)
  {
    *&aBlock = v12;
    sub_224DAF7E8();
    v64 = sub_224DAF878();
    if (!v64)
    {
LABEL_68:

      if ((v118 & 1) == 0)
      {
        goto LABEL_101;
      }

LABEL_86:

      v94 = v12;
      goto LABEL_102;
    }

    v65 = v64;
    sub_224A3B79C(0, &unk_2813509D0, 0x277CFA378);
    v66 = v65;
    v12 = MEMORY[0x277D84FA0];
    v5 = &off_27853F000;
    while (1)
    {
      v120 = v66;
      swift_dynamicCast();
      v67 = [v121 extensionIdentity];
      v4 = [v67 isRemote];

      v68 = v121;
      if (v4)
      {
      }

      else
      {
        v69 = *(v12 + 2);
        if (*(v12 + 3) <= v69)
        {
          sub_224ADE124(v69 + 1);
        }

        v12 = aBlock;
        v70 = sub_224DAF698();
        v71 = v12 + 56;
        v72 = -1 << v12[32];
        v73 = v70 & ~v72;
        v74 = v73 >> 6;
        if (((-1 << v73) & ~*&v12[8 * (v73 >> 6) + 56]) == 0)
        {
          v76 = 0;
          v77 = (63 - v72) >> 6;
          while (++v74 != v77 || (v76 & 1) == 0)
          {
            v78 = v74 == v77;
            if (v74 == v77)
            {
              v74 = 0;
            }

            v76 |= v78;
            v79 = *&v71[8 * v74];
            if (v79 != -1)
            {
              v75 = __clz(__rbit64(~v79)) + (v74 << 6);
              goto LABEL_67;
            }
          }

LABEL_87:
          __break(1u);
LABEL_88:
          __break(1u);
LABEL_89:
          __break(1u);
LABEL_90:
          __break(1u);
LABEL_91:
          v95 = sub_224DAF838();

          if (!v95)
          {
            goto LABEL_92;
          }

          goto LABEL_6;
        }

        v75 = __clz(__rbit64((-1 << v73) & ~*&v12[8 * (v73 >> 6) + 56])) | v73 & 0x7FFFFFFFFFFFFFC0;
LABEL_67:
        *&v71[(v75 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v75;
        *(*(v12 + 6) + 8 * v75) = v68;
        ++*(v12 + 2);
      }

      v66 = sub_224DAF878();
      if (!v66)
      {
        goto LABEL_68;
      }
    }
  }

  v80 = *(v119 + 32);
  v113 = ((1 << v80) + 63) >> 6;
  v81 = 8 * v113;
  if ((v80 & 0x3Fu) <= 0xD)
  {
LABEL_71:
    v112 = &v111;
    MEMORY[0x28223BE20](v62, v81);
    v114 = &v111 - ((v82 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v114, v82);
    v115 = 0;
    v5 = 0;
    v12 = v63;
    v83 = v63 + 56;
    v84 = 1 << *(v63 + 32);
    v85 = -1;
    if (v84 < 64)
    {
      v85 = ~(-1 << v84);
    }

    v86 = v85 & *(v63 + 56);
    v87 = (v84 + 63) >> 6;
    while (v86)
    {
      v88 = __clz(__rbit64(v86));
      v86 &= v86 - 1;
LABEL_81:
      v91 = v88 | (v5 << 6);
      v4 = *(*(v12 + 6) + 8 * v91);
      v92 = [v4 extensionIdentity];
      v93 = [v92 isRemote];

      if ((v93 & 1) == 0)
      {
        *&v114[(v91 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v91;
        v61 = __OFADD__(v115++, 1);
        if (v61)
        {
          __break(1u);
          goto LABEL_85;
        }
      }
    }

    v89 = v5;
    while (1)
    {
      v5 = v89 + 1;
      if (__OFADD__(v89, 1))
      {
        goto LABEL_89;
      }

      if (v5 >= v87)
      {
        break;
      }

      v90 = *(v83 + 8 * v5);
      ++v89;
      if (v90)
      {
        v88 = __clz(__rbit64(v90));
        v86 = (v90 - 1) & v90;
        goto LABEL_81;
      }
    }

LABEL_85:
    v12 = sub_224B0552C(v114, v113, v115, v12);
    if ((v118 & 1) == 0)
    {
      goto LABEL_101;
    }

    goto LABEL_86;
  }

  v101 = v113;
  v4 = 8 * v113;

  if (swift_stdlib_isStackAllocationSafe())
  {

    v81 = v4;
    goto LABEL_71;
  }

  v103 = swift_slowAlloc();
  v12 = sub_224CF70D0(v103, v101, v63, sub_224CF7EC8, 0);

  MEMORY[0x22AA5EED0](v103, -1, -1);
  if (v118)
  {
    goto LABEL_86;
  }

LABEL_101:

  v94 = sub_224CE7654(v3, v12);
LABEL_102:
  v104 = v117;
  v105 = sub_224CE7654(v12, v3);

  sub_224CF12C8(v105);
  v106 = *(v104 + OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService_precacheManager);
  v107 = *(v106 + 16);
  v108 = swift_allocObject();
  *(v108 + 16) = v106;
  *(v108 + 24) = v105;
  v109 = swift_allocObject();
  *(v109 + 16) = sub_224CF7D90;
  *(v109 + 24) = v108;
  *&v124 = sub_224BC4B74;
  *(&v124 + 1) = v109;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v123 = sub_224A9B6F8;
  *(&v123 + 1) = &block_descriptor_118;
  v110 = _Block_copy(&aBlock);
  swift_retain_n();

  dispatch_sync(v107, v110);
  _Block_release(v110);
  LOBYTE(v107) = swift_isEscapingClosureAtFileLocation();

  if (v107)
  {
    __break(1u);
  }

  sub_224BA8D98(v94, v125);

  return sub_224A699F0(v125);
}

uint64_t sub_224CEF454(id *a1)
{
  v1 = [*a1 extensionIdentity];
  v2 = [v1 isRemote];

  return v2 ^ 1;
}

void sub_224CEF4B4(NSObject *a1, uint64_t a2, uint64_t a3)
{
  v8 = sub_224DAB258();
  isEscapingClosureAtFileLocation = *(v8 - 1);
  MEMORY[0x28223BE20](v8, v10);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (([a1 wantsLiveScene]& 1) == 0)
  {
    v22 = *(v3 + OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService__queue);
    v8 = swift_allocObject();
    v8[2] = a1;
    v8[3] = v3;
    v8[4] = a2;
    v8[5] = a3;
    a2 = swift_allocObject();
    *(a2 + 16) = sub_224CF7D54;
    *(a2 + 24) = v8;
    aBlock[4] = sub_224A8A838;
    aBlock[5] = a2;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_224A9B6F8;
    aBlock[3] = &block_descriptor_98;
    v12 = _Block_copy(aBlock);
    v23 = v22;
    v24 = a1;

    dispatch_sync(v23, v12);

    _Block_release(v12);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
    goto LABEL_7;
  }

  (*(isEscapingClosureAtFileLocation + 16))(v12, v3 + OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService_logger, v8);
  v4 = a1;
  a1 = sub_224DAB228();
  v13 = sub_224DAF2A8();
  if (!os_log_type_enabled(a1, v13))
  {
LABEL_7:

    v25 = (*(isEscapingClosureAtFileLocation + 8))(v12, v8);
    (a2)(v25);
    return;
  }

  v26[0] = a2;
  v26[1] = a3;
  v14 = swift_slowAlloc();
  v15 = swift_slowAlloc();
  aBlock[0] = v15;
  *v14 = 136315138;
  v16 = [v4 succinctDescription];

  if (v16)
  {
    v17 = sub_224DAEE18();
    v19 = v18;

    v20 = sub_224A33F74(v17, v19, aBlock);

    *(v14 + 4) = v20;
    _os_log_impl(&dword_224A2F000, a1, v13, "Skipping placeholder precaching for live scene descriptor: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x22AA5EED0](v15, -1, -1);
    MEMORY[0x22AA5EED0](v14, -1, -1);

    v21 = (*(isEscapingClosureAtFileLocation + 8))(v12, v8);
    (v26[0])(v21);
  }

  else
  {
    __break(1u);
  }
}

void sub_224CEF850(void *a1, void *a2, void (*a3)(__n128), uint64_t a4)
{
  v8 = sub_224DAB258();
  v63[3] = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v9);
  v63[2] = v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v72 = *(v82 - 8);
  MEMORY[0x28223BE20](v82, v11);
  v70 = v63 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4930, &unk_224DB8D00);
  v15 = MEMORY[0x28223BE20](v13 - 8, v14);
  v78 = v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v17);
  v19 = v63 - v18;
  v79 = a1;
  v75 = [a1 supportedFamilies];
  v20 = a2[31];
  v21 = a2[32];
  v77 = a2;
  __swift_project_boxed_opaque_existential_1(a2 + 28, v20);
  (*(v21 + 32))(&v89, 768, v20, v21);
  sub_224A3796C(&v89, aBlock, &qword_27D6F50E0, &qword_224DB41A0);
  v66 = a3;
  v65 = a4;
  v63[1] = v8;
  if (v88)
  {
    v22 = sub_224A86CAC();
    sub_224A699F0(aBlock);
    if (v22)
    {
      goto LABEL_6;
    }
  }

  else
  {
    sub_224A3311C(aBlock, &qword_27D6F50E0, &qword_224DB41A0);
  }

  v22 = sub_224A870EC(MEMORY[0x277D84F90]);

LABEL_6:
  v23 = swift_allocObject();
  v76 = v23;
  *(v23 + 16) = MEMORY[0x277D84FA0];
  v64 = (v23 + 16);
  v80 = [v79 extensionIdentity];
  v24 = 0;
  v71 = v22;
  v25 = *(v22 + 64);
  v67 = v22 + 64;
  v26 = 1 << *(v22 + 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & v25;
  v29 = (v26 + 63) >> 6;
  v69 = v72 + 16;
  v68 = v72 + 32;
  v74 = v87;
  v73 = (v72 + 8);
  v81 = v19;
  if ((v27 & v25) == 0)
  {
LABEL_10:
    if (v29 <= (v24 + 1))
    {
      v32 = (v24 + 1);
    }

    else
    {
      v32 = v29;
    }

    v33 = (v32 - 1);
    v31 = v78;
    while (1)
    {
      v30 = (v24 + 1);
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v30 >= v29)
      {
        v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F38A8, &unk_224DB4650);
        (*(*(v56 - 8) + 56))(v31, 1, 1, v56);
        v28 = 0;
        goto LABEL_18;
      }

      v28 = *(v67 + 8 * v30);
      ++v24;
      if (v28)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_28:
    swift_once();
    goto LABEL_26;
  }

  while (1)
  {
    v30 = v24;
    v31 = v78;
LABEL_17:
    v34 = __clz(__rbit64(v28));
    v28 &= v28 - 1;
    v35 = v34 | (v30 << 6);
    v36 = v71;
    v37 = v72;
    v38 = v70;
    v39 = v82;
    (*(v72 + 16))(v70, *(v71 + 48) + *(v72 + 72) * v35, v82);
    v40 = *(*(v36 + 56) + 8 * v35);
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F38A8, &unk_224DB4650);
    v42 = *(v41 + 48);
    (*(v37 + 32))(v31, v38, v39);
    *(v31 + v42) = v40;
    (*(*(v41 - 8) + 56))(v31, 0, 1, v41);
    v43 = v40;
    v33 = v30;
    v19 = v81;
LABEL_18:
    sub_224A44E4C(v31, v19, &qword_27D6F4930, &unk_224DB8D00);
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F38A8, &unk_224DB4650);
    if ((*(*(v44 - 8) + 48))(v19, 1, v44) == 1)
    {
      break;
    }

    v45 = *&v19[*(v44 + 48)];
    v84 = MEMORY[0x22AA5E4C0]();
    v46 = [v45 metricsSpecification];
    v47 = swift_allocObject();
    v48 = v80;
    v49 = v79;
    v47[2] = v80;
    v47[3] = v49;
    v50 = v77;
    v47[4] = v46;
    v47[5] = v50;
    v83 = v33;
    v47[6] = v76;
    v87[2] = sub_224CF7D60;
    v88 = v47;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    v87[0] = sub_224CF1274;
    v87[1] = &block_descriptor_108;
    v51 = _Block_copy(aBlock);
    v52 = v48;
    v53 = v49;
    v54 = v46;

    CHSWidgetFamilyMaskEnumerateFamilies();
    v55 = v51;
    v19 = v81;
    _Block_release(v55);

    objc_autoreleasePoolPop(v84);
    (*v73)(v19, v82);
    v24 = v83;
    if (!v28)
    {
      goto LABEL_10;
    }
  }

  v57 = v64;
  v58 = swift_beginAccess();
  v59 = *v57;
  if (*(v59 + 16))
  {
    v60 = swift_allocObject();
    v61 = v65;
    *(v60 + 16) = v66;
    *(v60 + 24) = v61;

    v33 = v80;
    sub_224CF2AE8(v80, v59, sub_224A9C358, v60);
  }

  else
  {
    (v66)(v58);
    v33 = v80;
  }

  if (qword_281356140 != -1)
  {
    goto LABEL_28;
  }

LABEL_26:
  v62 = sub_224DACC88();
  __swift_project_value_buffer(v62, qword_281356148);
  v85 = v33;
  sub_224DAC138();
  sub_224A3311C(&v89, &qword_27D6F50E0, &qword_224DB41A0);
}

void sub_224CF0200(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v136 = a6;
  v124 = a5;
  v10 = sub_224DAB258();
  v140 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v11);
  v132 = &v111 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v111 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  v20 = MEMORY[0x28223BE20](v18 - 8, v19);
  v129 = &v111 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20, v22);
  v135 = &v111 - v24;
  v26 = MEMORY[0x28223BE20](v23, v25);
  v142 = &v111 - v27;
  MEMORY[0x28223BE20](v26, v28);
  v143 = &v111 - v29;
  v30 = sub_224DAC268();
  v116 = *(v30 - 8);
  v32 = MEMORY[0x28223BE20](v30, v31);
  v122 = &v111 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v32, v34);
  v121 = &v111 - v36;
  v38 = MEMORY[0x28223BE20](v35, v37);
  v145 = &v111 - v39;
  MEMORY[0x28223BE20](v38, v40);
  v144 = &v111 - v41;
  v42 = [a3 kind];
  v115 = v17;
  v146 = v30;
  if (!v42)
  {
    sub_224DAEE18();
    v42 = sub_224DAEDE8();
    v30 = v146;
  }

  v133 = v10;
  v43 = objc_allocWithZone(MEMORY[0x277CFA358]);
  v123 = a2;
  v44 = [v43 initWithExtensionIdentity:a2 kind:v42 family:a1 intent:0 activityIdentifier:0];

  v45 = [a4 allMetricsForFamily_];
  v46 = sub_224A3B79C(0, &unk_281350AD8, 0x277CFA3F0);
  sub_224A3B758(&qword_281350AD0, &unk_281350AD8, 0x277CFA3F0, MEMORY[0x277D85378]);
  v47 = sub_224DAF1B8();

  v114 = v46;
  if ((v47 & 0xC000000000000001) != 0)
  {
    sub_224DAF7E8();
    sub_224DAF1F8();
    v47 = v151;
    v49 = v152;
    v50 = v153;
    v51 = v154;
    v52 = v155;
  }

  else
  {
    v51 = 0;
    v53 = -1 << *(v47 + 32);
    v49 = v47 + 56;
    v54 = ~v53;
    v55 = -v53;
    if (v55 < 64)
    {
      v56 = ~(-1 << v55);
    }

    else
    {
      v56 = -1;
    }

    v52 = v56 & *(v47 + 56);
    v50 = v54;
  }

  v57 = v136;
  v58 = v144;
  v134 = 0;
  v111 = v50;
  v118 = (v50 + 64) >> 6;
  v141 = (v14 + 56);
  v126 = (v14 + 48);
  v125 = (v14 + 32);
  v112 = (v14 + 8);
  v147 = (v116 + 16);
  v148 = (v116 + 8);
  v120 = (v140 + 16);
  v119 = (v140 + 8);
  *&v48 = 136446210;
  v113 = v48;
  v130 = v13;
  v59 = v135;
  v128 = v44;
  v131 = v49;
  v127 = v47;
  while (v47 < 0)
  {
    v67 = sub_224DAF878();
    if (!v67 || (v149 = v67, swift_dynamicCast(), v66 = v150, v65 = v51, v140 = v52, v59 = v135, !v150))
    {
LABEL_40:
      sub_224A3B7E4(v47);

      return;
    }

LABEL_22:
    v138 = v66;
    v139 = v65;
    v68 = *v141;
    (*v141)(v143, 1, 1, v13);
    v69 = [v44 intentReference];
    if (v69)
    {

      v70 = [v44 widgetByReplacingIntent_];
    }

    else
    {
      v70 = v44;
    }

    v71 = v70;
    v68(v142, 1, 1, v13);
    sub_224A3796C(v143, v59, &qword_27D6F56C0, &unk_224DB3580);
    if ((*v126)(v59, 1, v13) == 1)
    {
      v72 = v71;
      sub_224A3311C(v59, &qword_27D6F56C0, &unk_224DB3580);
    }

    else
    {
      v73 = *v125;
      v74 = v115;
      (*v125)(v115, v59, v13);
      v75 = v71;
      sub_224DAA1F8();
      v76 = sub_224DAA048();

      if (v76)
      {
        v77 = v142;
        sub_224A3311C(v142, &qword_27D6F56C0, &unk_224DB3580);
        v73(v77, v74, v13);
        v68(v77, 0, 1, v13);
      }

      else
      {
        (*v112)(v74, v13);
      }

      v57 = v136;
      v30 = v146;
    }

    v78 = v142;
    sub_224A3796C(v142, v129, &qword_27D6F56C0, &unk_224DB3580);
    v138 = v138;
    sub_224DAC228();

    sub_224A3311C(v78, &qword_27D6F56C0, &unk_224DB3580);
    sub_224A3311C(v143, &qword_27D6F56C0, &unk_224DB3580);
    v79 = swift_beginAccess();
    v81 = *(v57 + 16);
    v82 = *(v81 + 16);
    v137 = v148 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    if (!v82)
    {
      goto LABEL_37;
    }

    sub_224A828F0(&qword_281350E50, MEMORY[0x277CF9978], MEMORY[0x277CF9988]);

    v83 = sub_224DAED88();
    v84 = -1 << *(v81 + 32);
    v85 = v83 & ~v84;
    if (((*(v81 + 56 + ((v85 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v85) & 1) == 0)
    {
LABEL_36:

      v13 = v130;
      v30 = v146;
LABEL_37:
      v92 = v124;
      MEMORY[0x28223BE20](v79, v80);
      *(&v111 - 4) = v123;
      *(&v111 - 3) = v58;
      *(&v111 - 2) = v92;
      v93 = v134;
      sub_224DAC128();
      v134 = v93;
      v94 = v92 + OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService_logger;
      v95 = v132;
      v96 = v133;
      (*v120)(v132, v94, v133);
      v97 = *v147;
      v98 = v121;
      (*v147)(v121, v58, v30);
      v99 = sub_224DAB228();
      v100 = v30;
      v101 = sub_224DAF2A8();
      if (os_log_type_enabled(v99, v101))
      {
        v102 = swift_slowAlloc();
        v103 = v98;
        v117 = v97;
        v104 = v102;
        v105 = swift_slowAlloc();
        v150 = v105;
        *v104 = v113;
        sub_224A828F0(&qword_281350E40, MEMORY[0x277CF9978], MEMORY[0x277CF99A0]);
        v106 = sub_224DAFD28();
        v108 = v107;
        v60 = *v148;
        (*v148)(v103, v100);
        v109 = sub_224A33F74(v106, v108, &v150);

        *(v104 + 4) = v109;
        _os_log_impl(&dword_224A2F000, v99, v101, "Will fetch placeholder for variantKey: %{public}s", v104, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v105);
        MEMORY[0x22AA5EED0](v105, -1, -1);
        v110 = v104;
        v97 = v117;
        MEMORY[0x22AA5EED0](v110, -1, -1);

        v13 = v130;
        (*v119)(v132, v133);
      }

      else
      {

        v60 = *v148;
        (*v148)(v98, v100);
        (*v119)(v95, v96);
      }

      v30 = v100;
      v61 = v122;
      v97(v122, v58, v100);
      v57 = v136;
      swift_beginAccess();
      v62 = v145;
      sub_224ADCAF4(v145, v61);
      swift_endAccess();

      v60(v62, v100);
      v44 = v128;
      goto LABEL_12;
    }

    v86 = ~v84;
    v87 = *(v116 + 72);
    v88 = *(v116 + 16);
    while (1)
    {
      v90 = v145;
      v89 = v146;
      v88(v145, *(v81 + 48) + v87 * v85, v146);
      sub_224A828F0(&qword_281350E48, MEMORY[0x277CF9978], MEMORY[0x277CF9990]);
      v91 = sub_224DAEDD8();
      v60 = *v148;
      (*v148)(v90, v89);
      if (v91)
      {
        break;
      }

      v85 = (v85 + 1) & v86;
      v58 = v144;
      if (((*(v81 + 56 + ((v85 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v85) & 1) == 0)
      {
        goto LABEL_36;
      }
    }

    v57 = v136;
    v13 = v130;
    v30 = v146;
    v58 = v144;
    v44 = v128;
LABEL_12:
    v60(v58, v30);
    v51 = v139;
    v52 = v140;
    v59 = v135;
    v47 = v127;
    v49 = v131;
  }

  v63 = v51;
  v64 = v52;
  v65 = v51;
  if (v52)
  {
LABEL_18:
    v140 = (v64 - 1) & v64;
    v66 = *(*(v47 + 48) + ((v65 << 9) | (8 * __clz(__rbit64(v64)))));
    if (!v66)
    {
      goto LABEL_40;
    }

    goto LABEL_22;
  }

  while (1)
  {
    v65 = v63 + 1;
    if (__OFADD__(v63, 1))
    {
      break;
    }

    if (v65 >= v118)
    {
      goto LABEL_40;
    }

    v64 = *(v49 + 8 * v65);
    ++v63;
    if (v64)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
}

void sub_224CF0FE4(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v23 = a4;
  v7 = sub_224DAE918();
  v20 = *(v7 - 8);
  v21 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v22 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_224DAC268();
  v19 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v14 = a2;
  v25[0] = a2;
  v15 = a3;
  sub_224DAD3D8();
  if (v26[0])
  {
  }

  else
  {
    v16 = v23;
    __swift_project_boxed_opaque_existential_1(v23 + 12, v23[15]);
    sub_224DADA58();
    sub_224DABE88();
    (*(v19 + 16))(v13, v15, v10);
    (*(v20 + 104))(v22, *MEMORY[0x277CE3D68], v21);
    sub_224A3317C(v26, v25);
    sub_224A3317C(v16 + OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService_descriptorObserver, &v24);
    v17 = sub_224DABE48();
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v25[0] = v14;
    v24 = v17;
    sub_224DAD3B8();
    __swift_destroy_boxed_opaque_existential_1(v26);
  }
}

double sub_224CF1274(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);

  return result;
}

void sub_224CF12C8(uint64_t a1)
{
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6380, &qword_224DBF928);
  v144 = *(v124 - 8);
  MEMORY[0x28223BE20](v124, v2);
  v123 = v108 - v3;
  v126 = sub_224DAC268();
  v125 = *(v126 - 8);
  MEMORY[0x28223BE20](v126, v4);
  v122 = v108 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v146 = *(v141 - 8);
  v6 = *(v146 + 64);
  v8 = MEMORY[0x28223BE20](v141, v7);
  v132 = v108 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v145 = v108 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4930, &unk_224DB8D00);
  v13 = MEMORY[0x28223BE20](v11 - 8, v12);
  v15 = v108 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v16);
  v18 = v108 - v17;
  v19 = sub_224DAB258();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v21);
  v115 = v108 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_224DAF7E8();
    sub_224A3B79C(0, &unk_2813509D0, 0x277CFA378);
    sub_224A3B758(&qword_2813509C8, &unk_2813509D0, 0x277CFA378, MEMORY[0x277D85378]);
    sub_224DAF1F8();
    a1 = v150[6];
    v24 = v150[7];
    v25 = v150[8];
    v26 = v150[9];
    v27 = v150[10];
  }

  else
  {
    v28 = -1 << *(a1 + 32);
    v24 = a1 + 56;
    v29 = ~v28;
    v30 = -v28;
    if (v30 < 64)
    {
      v31 = ~(-1 << v30);
    }

    else
    {
      v31 = -1;
    }

    v27 = v31 & *(a1 + 56);

    v25 = v29;
    v26 = 0;
  }

  v108[1] = v25;
  v32 = (v25 + 64) >> 6;
  v114 = (v20 + 16);
  v113 = (v20 + 8);
  v140 = v146 + 16;
  v139 = v146 + 32;
  v131 = v6 + 7;
  v130 = v148;
  v129 = v146 + 8;
  v121 = v125 + 16;
  v120 = (v144 + 8);
  *&v23 = 136446210;
  v109 = v23;
  v112 = a1;
  v135 = v15;
  v134 = v18;
  v111 = v19;
  v116 = v24;
  v110 = v32;
LABEL_9:
  if (a1 < 0)
  {
    v39 = sub_224DAF878();
    if (!v39)
    {
      goto LABEL_55;
    }

    aBlock[0] = v39;
    sub_224A3B79C(0, &unk_2813509D0, 0x277CFA378);
    swift_dynamicCast();
    v38 = v150[0];
    v119 = v26;
    v118 = v27;
    if (!v150[0])
    {
      goto LABEL_55;
    }
  }

  else
  {
    v33 = v26;
    v34 = v27;
    for (i = v26; !v34; ++v33)
    {
      i = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        goto LABEL_58;
      }

      if (i >= v32)
      {
        goto LABEL_55;
      }

      v34 = *(v24 + 8 * i);
    }

    v36 = __clz(__rbit64(v34));
    v118 = (v34 - 1) & v34;
    v37 = *(a1 + 48);
    v119 = i;
    v38 = *(v37 + ((i << 9) | (8 * v36)));
    if (!v38)
    {
LABEL_55:
      sub_224A3B7E4(a1);
      return;
    }
  }

  v40 = v115;
  (*v114)(v115, v138 + OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService_logger, v19);
  v41 = v38;
  v42 = sub_224DAB228();
  v43 = sub_224DAF2A8();
  if (!os_log_type_enabled(v42, v43))
  {

LABEL_22:
    (*v113)(v40, v19);
    v51 = v138[31];
    v52 = v138[32];
    __swift_project_boxed_opaque_existential_1(v138 + 28, v51);
    (*(v52 + 32))(v150, 768, v51, v52);
    sub_224A3796C(v150, aBlock, &qword_27D6F50E0, &qword_224DB41A0);
    v137 = v41;
    if (v149)
    {
      v53 = sub_224A86CAC();
      sub_224A699F0(aBlock);
      if (v53)
      {
LABEL_27:
        v54 = swift_allocObject();
        v55 = 0;
        v136 = v54;
        *(v54 + 16) = MEMORY[0x277D84FA0];
        v117 = v54 + 16;
        v128 = v53;
        v56 = *(v53 + 64);
        v127 = v53 + 64;
        v57 = 1 << *(v53 + 32);
        if (v57 < 64)
        {
          v58 = ~(-1 << v57);
        }

        else
        {
          v58 = -1;
        }

        v59 = v58 & v56;
        v60 = (v57 + 63) >> 6;
        v133 = v60;
        if ((v58 & v56) != 0)
        {
          while (1)
          {
            v61 = v55;
            v62 = v135;
LABEL_39:
            v65 = __clz(__rbit64(v59));
            v59 &= v59 - 1;
            v66 = v65 | (v61 << 6);
            v67 = v128;
            v68 = v146;
            v69 = v145;
            v70 = v141;
            (*(v146 + 16))(v145, *(v128 + 48) + *(v146 + 72) * v66, v141);
            v71 = *(*(v67 + 56) + 8 * v66);
            v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F38A8, &unk_224DB4650);
            v73 = *(v72 + 48);
            (*(v68 + 32))(v62, v69, v70);
            *(v62 + v73) = v71;
            (*(*(v72 - 8) + 56))(v62, 0, 1, v72);
            v74 = v71;
            v64 = v61;
LABEL_40:
            v75 = v134;
            sub_224A44E4C(v62, v134, &qword_27D6F4930, &unk_224DB8D00);
            v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F38A8, &unk_224DB4650);
            if ((*(*(v76 - 8) + 48))(v75, 1, v76) == 1)
            {
              break;
            }

            v144 = *(v75 + *(v76 + 48));
            v77 = v144;
            v78 = *(v146 + 32);
            v79 = v146;
            v80 = v145;
            v81 = v75;
            v82 = v141;
            v78(v145, v81, v141);
            v83 = [v77 metricsSpecification];
            v142 = v83;
            v84 = v132;
            (*(v79 + 16))(v132, v80, v82);
            v85 = (*(v79 + 80) + 40) & ~*(v79 + 80);
            v86 = (v131 + v85) & 0xFFFFFFFFFFFFFFF8;
            v87 = swift_allocObject();
            v143 = v64;
            v88 = v137;
            *(v87 + 2) = v137;
            *(v87 + 3) = v83;
            *(v87 + 4) = v138;
            v78(&v87[v85], v84, v82);
            *&v87[v86] = v136;
            v148[2] = sub_224CF7C78;
            v149 = v87;
            aBlock[0] = MEMORY[0x277D85DD0];
            aBlock[1] = 1107296256;
            v148[0] = sub_224CF1274;
            v148[1] = &block_descriptor_89;
            v89 = _Block_copy(aBlock);
            v90 = v88;
            v91 = v142;

            CHSWidgetFamilyMaskEnumerateFamilies();
            _Block_release(v89);

            (*(v146 + 8))(v145, v82);
            v55 = v143;
            v60 = v133;
            if (!v59)
            {
              goto LABEL_32;
            }
          }

          v93 = v117;
          swift_beginAccess();
          v94 = (*v93 + 56);
          v95 = 1 << (*v93)[32];
          if (v95 < 64)
          {
            v96 = ~(-1 << v95);
          }

          else
          {
            v96 = -1;
          }

          v97 = v96 & *(*v93 + 7);
          v98 = (v95 + 63) >> 6;
          v144 = *v93;

          v99 = 0;
          while (1)
          {
            v100 = v137;
            if (!v97)
            {
              break;
            }

            v101 = v99;
LABEL_54:
            v102 = __clz(__rbit64(v97));
            v97 &= v97 - 1;
            (*(v125 + 16))(v122, *(v144 + 6) + *(v125 + 72) * (v102 | (v101 << 6)), v126);
            v103 = sub_224DAC248();
            v104 = [v103 extensionIdentity];

            aBlock[0] = v104;
            sub_224DAF538();
            v105 = MEMORY[0x277CFA140];
            sub_224A828F0(&qword_281350998, MEMORY[0x277CFA140], MEMORY[0x277CC9E10]);
            sub_224A828F0(&unk_2813509A0, v105, MEMORY[0x277D85378]);
            v106 = MEMORY[0x277CF9978];
            sub_224A828F0(&qword_281350E40, MEMORY[0x277CF9978], MEMORY[0x277CF99A0]);
            sub_224A828F0(&qword_281350E50, v106, MEMORY[0x277CF9988]);
            v107 = v123;
            sub_224DAC848();

            sub_224DAB348();

            (*v120)(v107, v124);
          }

          while (1)
          {
            v101 = v99 + 1;
            if (__OFADD__(v99, 1))
            {
              break;
            }

            if (v101 >= v98)
            {
              sub_224A3311C(v150, &qword_27D6F50E0, &qword_224DB41A0);

              v26 = v119;
              v27 = v118;
              a1 = v112;
              v19 = v111;
              v24 = v116;
              v32 = v110;
              goto LABEL_9;
            }

            v97 = *(v94 + 8 * v101);
            ++v99;
            if (v97)
            {
              v99 = v101;
              goto LABEL_54;
            }
          }
        }

        else
        {
LABEL_32:
          if (v60 <= v55 + 1)
          {
            v63 = v55 + 1;
          }

          else
          {
            v63 = v60;
          }

          v64 = v63 - 1;
          v62 = v135;
          while (1)
          {
            v61 = v55 + 1;
            if (__OFADD__(v55, 1))
            {
              break;
            }

            if (v61 >= v60)
            {
              v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F38A8, &unk_224DB4650);
              (*(*(v92 - 8) + 56))(v62, 1, 1, v92);
              v59 = 0;
              goto LABEL_40;
            }

            v59 = *(v127 + 8 * v61);
            ++v55;
            if (v59)
            {
              goto LABEL_39;
            }
          }

          __break(1u);
        }

        __break(1u);
LABEL_58:
        __break(1u);
        goto LABEL_59;
      }
    }

    else
    {
      sub_224A3311C(aBlock, &qword_27D6F50E0, &qword_224DB41A0);
    }

    v53 = sub_224A870EC(MEMORY[0x277D84F90]);

    goto LABEL_27;
  }

  v44 = swift_slowAlloc();
  v45 = swift_slowAlloc();
  v150[0] = v45;
  *v44 = v109;
  v46 = [v41 succinctDescription];

  if (v46)
  {
    v47 = sub_224DAEE18();
    v49 = v48;

    v50 = sub_224A33F74(v47, v49, v150);

    *(v44 + 4) = v50;
    _os_log_impl(&dword_224A2F000, v42, v43, "Purging placeholders for removed descriptor: %{public}s", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v45);
    MEMORY[0x22AA5EED0](v45, -1, -1);
    MEMORY[0x22AA5EED0](v44, -1, -1);

    goto LABEL_22;
  }

LABEL_59:
  __break(1u);
}

void sub_224CF2234(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v83 = a6;
  v94 = a5;
  v96 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v99 = v75 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  v15 = MEMORY[0x28223BE20](v13 - 8, v14);
  v93 = v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15, v17);
  v79 = v75 - v19;
  v21 = MEMORY[0x28223BE20](v18, v20);
  v100 = v75 - v22;
  MEMORY[0x28223BE20](v21, v23);
  v101 = v75 - v24;
  v92 = sub_224DAC268();
  v25 = *(v92 - 8);
  v27 = MEMORY[0x28223BE20](v92, v26);
  v91 = v75 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v27, v29);
  v90 = v75 - v31;
  MEMORY[0x28223BE20](v30, v32);
  v89 = v75 - v33;
  v34 = [a2 extensionIdentity];
  v35 = [a2 kind];
  if (!v35)
  {
    sub_224DAEE18();
    v35 = sub_224DAEDE8();
  }

  v95 = v9;
  v36 = [objc_allocWithZone(MEMORY[0x277CFA358]) initWithExtensionIdentity:v34 kind:v35 family:a1 intent:0 activityIdentifier:0];

  v37 = [a3 allMetricsForFamily_];
  v38 = sub_224A3B79C(0, &unk_281350AD8, 0x277CFA3F0);
  sub_224A3B758(&qword_281350AD0, &unk_281350AD8, 0x277CFA3F0, MEMORY[0x277D85378]);
  v39 = sub_224DAF1B8();

  v78 = v38;
  if ((v39 & 0xC000000000000001) != 0)
  {
    sub_224DAF7E8();
    sub_224DAF1F8();
    v39 = v104;
    v40 = v105;
    v41 = v106;
    v42 = v107;
    v43 = v108;
  }

  else
  {
    v42 = 0;
    v44 = -1 << *(v39 + 32);
    v40 = v39 + 56;
    v41 = ~v44;
    v45 = -v44;
    if (v45 < 64)
    {
      v46 = ~(-1 << v45);
    }

    else
    {
      v46 = -1;
    }

    v43 = v46 & *(v39 + 56);
  }

  v47 = v99;
  v48 = v79;
  v75[1] = v41;
  v80 = (v41 + 64) >> 6;
  v86 = (v10 + 16);
  v99 = (v10 + 56);
  v85 = (v10 + 48);
  v84 = (v10 + 32);
  v76 = (v10 + 8);
  v82 = (v25 + 16);
  v81 = (v25 + 8);
  v97 = v40;
  v88 = v36;
  v87 = v39;
  while (v39 < 0)
  {
    v62 = sub_224DAF878();
    if (!v62 || (v102 = v62, swift_dynamicCast(), v61 = v103, v59 = v42, v60 = v43, !v103))
    {
LABEL_29:
      sub_224A3B7E4(v39);

      return;
    }

LABEL_21:
    v63 = v101;
    v64 = v95;
    (*v86)(v101, v94, v95);
    v65 = *v99;
    (*v99)(v63, 0, 1, v64);
    v66 = [v36 intentReference];
    v98 = v60;
    if (v66)
    {

      v67 = [v36 widgetByReplacingIntent_];
    }

    else
    {
      v67 = v36;
    }

    v68 = v67;
    v69 = v84;
    v65(v100, 1, 1, v64);
    sub_224A3796C(v101, v48, &qword_27D6F56C0, &unk_224DB3580);
    if ((*v85)(v48, 1, v64) == 1)
    {
      v49 = v68;
      sub_224A3311C(v48, &qword_27D6F56C0, &unk_224DB3580);
    }

    else
    {
      v70 = *v69;
      (*v69)(v47, v48, v64);
      v71 = v68;
      sub_224DAA1F8();
      v72 = v64;
      v73 = sub_224DAA048();

      if (v73)
      {
        v74 = v100;
        v77 = v61;
        sub_224A3311C(v100, &qword_27D6F56C0, &unk_224DB3580);
        v70(v74, v47, v72);
        v61 = v77;
        v65(v74, 0, 1, v72);
      }

      else
      {
        (*v76)(v47, v72);
      }

      v48 = v79;
    }

    v50 = v100;
    sub_224A3796C(v100, v93, &qword_27D6F56C0, &unk_224DB3580);
    v51 = v61;
    v52 = v89;
    sub_224DAC228();

    sub_224A3311C(v50, &qword_27D6F56C0, &unk_224DB3580);
    sub_224A3311C(v101, &qword_27D6F56C0, &unk_224DB3580);
    swift_getObjectType();
    sub_224DAC468();
    v53 = v91;
    v54 = v92;
    (*v82)(v91, v52, v92);
    swift_beginAccess();
    v55 = v90;
    sub_224ADCAF4(v90, v53);
    swift_endAccess();

    v56 = *v81;
    (*v81)(v55, v54);
    v56(v52, v54);
    v42 = v59;
    v40 = v97;
    v43 = v98;
    v36 = v88;
    v39 = v87;
  }

  v57 = v42;
  v58 = v43;
  v59 = v42;
  if (v43)
  {
LABEL_17:
    v60 = (v58 - 1) & v58;
    v61 = *(*(v39 + 48) + ((v59 << 9) | (8 * __clz(__rbit64(v58)))));
    if (!v61)
    {
      goto LABEL_29;
    }

    goto LABEL_21;
  }

  while (1)
  {
    v59 = v57 + 1;
    if (__OFADD__(v57, 1))
    {
      break;
    }

    if (v59 >= v80)
    {
      goto LABEL_29;
    }

    v58 = *(v40 + 8 * v59);
    ++v57;
    if (v58)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
}

void sub_224CF2AE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v155 = a4;
  v154 = a3;
  v156 = a2;
  v163 = a1;
  v162 = sub_224DAB7B8();
  v161 = *(v162 - 8);
  MEMORY[0x28223BE20](v162, v6);
  v159 = &v141 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = sub_224DAB848();
  v158 = *(v160 - 1);
  MEMORY[0x28223BE20](v160, v8);
  v157 = (&v141 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5090, &qword_224DB5C30);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v151 = &v141 - v12;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5CC0, &unk_224DBD710);
  v145 = *(v150 - 8);
  MEMORY[0x28223BE20](v150, v13);
  v167 = &v141 - v14;
  v174 = sub_224DAC268();
  v169 = *(v174 - 8);
  v15 = *(v169 + 64);
  v17 = MEMORY[0x28223BE20](v174, v16);
  v149 = &v141 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17, v18);
  v171 = &v141 - v20;
  v22 = MEMORY[0x28223BE20](v19, v21);
  v173 = &v141 - v23;
  MEMORY[0x28223BE20](v22, v24);
  v152 = &v141 - v25;
  v170 = sub_224DAB258();
  v168 = *(v170 - 8);
  v27 = MEMORY[0x28223BE20](v170, v26);
  v166 = &v141 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27, v29);
  v165 = &v141 - v30;
  v31 = sub_224DACC88();
  v32 = *(v31 - 8);
  MEMORY[0x28223BE20](v31, v33);
  v35 = &v141 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_224DAB8C8();
  v37 = *(v36 - 8);
  MEMORY[0x28223BE20](v36, v38);
  v40 = (&v141 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  v153 = OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService__queue;
  v41 = *(v5 + OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService__queue);
  *v40 = v41;
  (*(v37 + 104))(v40, *MEMORY[0x277D85200], v36);
  v42 = v41;
  LOBYTE(v41) = sub_224DAB8F8();
  v44 = *(v37 + 8);
  v43 = v37 + 8;
  v44(v40, v36);
  if ((v41 & 1) == 0)
  {
    goto LABEL_36;
  }

  v148 = v15;
  v172 = v5;
  v45 = *(v5 + OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService_configurationPolicy);

  v46 = sub_224DACC78();
  v43 = *(v45 + OBJC_IVAR____TtC10ChronoCore42MobilePlaceholderReloadConfigurationPolicy__lock);
  v48 = MEMORY[0x28223BE20](v46, v47);
  v49 = v163;
  *(&v141 - 2) = v45;
  *(&v141 - 1) = v49;
  MEMORY[0x28223BE20](v48, v50);
  *(&v141 - 2) = sub_224A82858;
  *(&v141 - 1) = v51;
  os_unfair_lock_lock((v43 + 16));
  v52 = v164;
  sub_224A828B8(&aBlock);
  if (v52)
  {
LABEL_38:
    os_unfair_lock_unlock((v43 + 16));
    __break(1u);
  }

  else
  {
    os_unfair_lock_unlock((v43 + 16));
    v53 = aBlock;

    (*(v32 + 8))(v35, v31);
    v54 = *(v168 + 2);
    v141 = 0;
    if (v53)
    {
      v54(v165, v172 + OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService_logger, v170);
      v55 = v156;
      swift_bridgeObjectRetain_n();
      v56 = v49;
      v57 = sub_224DAB228();
      v58 = sub_224DAF278();

      v59 = os_log_type_enabled(v57, v58);
      v146 = v56;
      if (v59)
      {
        v60 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        *v60 = 138543618;
        *(v60 + 4) = v56;
        *v61 = v56;
        *(v60 + 12) = 2048;
        v62 = *(v55 + 16);
        v63 = v56;

        *(v60 + 14) = v62;

        _os_log_impl(&dword_224A2F000, v57, v58, "Creating precache assertion for %{public}@ (%ld variants)", v60, 0x16u);
        sub_224A3311C(v61, &unk_27D6F69F0, &unk_224DB3900);
        MEMORY[0x22AA5EED0](v61, -1, -1);
        MEMORY[0x22AA5EED0](v60, -1, -1);
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }

      v73 = v174;
      v74 = v148;
      (*(v168 + 1))(v165, v170);
      v75 = swift_allocObject();
      v166 = v75;
      *(v75 + 16) = MEMORY[0x277D84F98];
      v148 = (v75 + 16);
      v76 = v55 + 56;
      v77 = 1 << *(v55 + 32);
      v78 = -1;
      if (v77 < 64)
      {
        v78 = ~(-1 << v77);
      }

      v43 = v78 & *(v55 + 56);
      v79 = (v77 + 63) >> 6;
      v170 = v169 + 16;
      v165 = (v169 + 32);
      v147 = v169 + 8;
      v143 = v74 + 7;
      v142 = (v145 + 8);

      v80 = 0;
      v145 = v55 + 56;
      for (i = v79; ; v79 = i)
      {
        if (!v43)
        {
          while (1)
          {
            v102 = v80 + 1;
            if (__OFADD__(v80, 1))
            {
              break;
            }

            if (v102 >= v79)
            {

              goto LABEL_32;
            }

            v43 = *(v76 + 8 * v102);
            ++v80;
            if (v43)
            {
              v80 = v102;
              goto LABEL_19;
            }
          }

          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
LABEL_37:
          sub_224DAFDD8();
          __break(1u);
          goto LABEL_38;
        }

LABEL_19:
        v103 = *(v55 + 48);
        v104 = v169;
        v163 = *(v169 + 72);
        v105 = *(v169 + 16);
        v106 = v152;
        v105(v152, v103 + v163 * (__clz(__rbit64(v43)) | (v80 << 6)), v73);
        v107 = *(v104 + 32);
        v108 = v173;
        v164 = v107;
        v107(v173, v106, v73);
        v109 = v73;
        v110 = v171;
        v111 = v109;
        v168 = v105;
        (v105)(v171, v108);
        v112 = sub_224DAC208();
        *&v175 = v112;
        sub_224DAD288();

        v113 = v148;
        swift_beginAccess();
        sub_224A36F98(&aBlock, &v175);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v181 = *v113;
        v115 = v181;
        *v113 = 0x8000000000000000;
        v116 = sub_224A61E5C(v110);
        v118 = v115[2];
        v119 = (v117 & 1) == 0;
        v120 = __OFADD__(v118, v119);
        v121 = v118 + v119;
        if (v120)
        {
          goto LABEL_34;
        }

        v122 = v117;
        if (v115[3] < v121)
        {
          break;
        }

        v124 = v111;
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_24;
        }

        v132 = v116;
        sub_224B29D08();
        v116 = v132;
        v125 = v181;
        if (v122)
        {
LABEL_12:
          v81 = (v125[7] + 40 * v116);
          __swift_destroy_boxed_opaque_existential_1(v81);
          sub_224A36F98(&v175, v81);
          v82 = *v147;
          v158 = v147 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          v157 = v82;
          (v82)(v171, v124);
          goto LABEL_13;
        }

LABEL_25:
        v125[(v116 >> 6) + 8] |= 1 << v116;
        v126 = v116;
        v127 = v171;
        v168(v125[6] + v116 * v163, v171, v124);
        sub_224A36F98(&v175, v125[7] + 40 * v126);
        v128 = v147;
        v129 = *v147;
        (*v147)(v127, v124);
        v130 = v125[2];
        v120 = __OFADD__(v130, 1);
        v131 = v130 + 1;
        if (v120)
        {
          goto LABEL_35;
        }

        v158 = v128 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v125[2] = v131;
        v157 = v129;
LABEL_13:
        v43 &= v43 - 1;
        *(v166 + 2) = v125;

        swift_endAccess();
        v83 = swift_allocObject();
        v162 = v83;
        *(v83 + 16) = 0;
        v163 = v83 + 16;
        v161 = sub_224DAC0C8();
        *&aBlock = v161;
        *&v175 = *(v172 + v153);
        v84 = v175;
        v85 = sub_224DAF358();
        v86 = v151;
        (*(*(v85 - 8) + 56))(v151, 1, 1, v85);
        v160 = v84;
        v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5CC8, qword_224DBE8A0);
        sub_224A3B79C(0, &qword_281350A70, 0x277D85C78);
        sub_224A33088(&qword_281351090, &qword_27D6F5CC8, qword_224DBE8A0, MEMORY[0x277CBCD90]);
        sub_224A3B758(&qword_281350A80, &qword_281350A70, 0x277D85C78, MEMORY[0x277D85228]);
        sub_224DAB448();
        sub_224A3311C(v86, &qword_27D6F5090, &qword_224DB5C30);

        v87 = swift_allocObject();
        swift_weakInit();
        v88 = v149;
        v168(v149, v173, v174);
        v89 = (*(v169 + 80) + 32) & ~*(v169 + 80);
        v90 = (v143 + v89) & 0xFFFFFFFFFFFFFFF8;
        v91 = (v90 + 15) & 0xFFFFFFFFFFFFFFF8;
        v92 = swift_allocObject();
        *(v92 + 16) = v87;
        v93 = v146;
        *(v92 + 24) = v146;
        v164(v92 + v89, v88, v174);
        *(v92 + v90) = v162;
        *(v92 + v91) = v166;
        v94 = (v92 + ((v91 + 15) & 0xFFFFFFFFFFFFFFF8));
        v95 = v155;
        *v94 = v154;
        v94[1] = v95;
        sub_224A33088(&qword_281351258, &qword_27D6F5CC0, &unk_224DBD710, MEMORY[0x277CBCD60]);
        v96 = v93;

        v97 = v150;
        v98 = v167;
        v99 = sub_224DAB488();

        (*v142)(v98, v97);
        v100 = v174;
        v157(v173, v174);
        v101 = v163;
        swift_beginAccess();
        *v101 = v99;

        v55 = v156;
        v73 = v100;
        v76 = v145;
      }

      sub_224B18728(v121, isUniquelyReferenced_nonNull_native);
      v116 = sub_224A61E5C(v171);
      v124 = v111;
      if ((v122 & 1) != (v123 & 1))
      {
        goto LABEL_37;
      }

LABEL_24:
      v125 = v181;
      if (v122)
      {
        goto LABEL_12;
      }

      goto LABEL_25;
    }

    v64 = v172;
    v54(v166, v172 + OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService_logger, v170);
    v65 = v156;
    swift_bridgeObjectRetain_n();
    v66 = v49;
    v67 = sub_224DAB228();
    v68 = sub_224DAF288();

    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      *v69 = 138543618;
      *(v69 + 4) = v66;
      *v70 = v66;
      *(v69 + 12) = 2048;
      v71 = *(v65 + 16);
      v72 = v66;

      *(v69 + 14) = v71;

      _os_log_impl(&dword_224A2F000, v67, v68, "Cannot create precache assertion for %{public}@ (%ld variants) as reloads are not permitted", v69, 0x16u);
      sub_224A3311C(v70, &unk_27D6F69F0, &unk_224DB3900);
      MEMORY[0x22AA5EED0](v70, -1, -1);
      MEMORY[0x22AA5EED0](v69, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    (*(v168 + 1))(v166, v170);
    v133 = *(v64 + v153);
    v134 = swift_allocObject();
    v135 = v155;
    *(v134 + 16) = v154;
    *(v134 + 24) = v135;
    v179 = sub_224A8A840;
    v180 = v134;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v177 = sub_224A39F40;
    v178 = &block_descriptor_66_0;
    v136 = _Block_copy(&aBlock);

    v137 = v133;
    v138 = v157;
    sub_224DAB7E8();
    *&v175 = MEMORY[0x277D84F90];
    sub_224A828F0(&qword_281350ED0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
    sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0, MEMORY[0x277D83970]);
    v139 = v159;
    v140 = v162;
    sub_224DAF788();
    MEMORY[0x22AA5D760](0, v138, v139, v136);
    _Block_release(v136);

    (*(v161 + 8))(v139, v140);
    (*(v158 + 8))(v138, v160);
LABEL_32:
  }
}

unint64_t sub_224CF3DF8()
{
  result = qword_281356190;
  if (!qword_281356190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281356190);
  }

  return result;
}

void sub_224CF3E4C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void), uint64_t a8)
{
  v143 = a8;
  v151 = a6;
  v147 = a5;
  v153 = a4;
  v152 = sub_224DAC268();
  v149 = *(v152 - 8);
  v11 = MEMORY[0x28223BE20](v152, v10);
  v142 = &v133 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v145 = &v133 - v15;
  MEMORY[0x28223BE20](v14, v16);
  v148 = &v133 - v17;
  v18 = sub_224DAB258();
  v19 = *(v18 - 8);
  v21 = MEMORY[0x28223BE20](v18, v20);
  v144 = &v133 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21, v23);
  v150 = &v133 - v25;
  v27 = MEMORY[0x28223BE20](v24, v26);
  v146 = &v133 - v28;
  MEMORY[0x28223BE20](v27, v29);
  v31 = &v133 - v30;
  v32 = sub_224DACC88();
  v33 = *(v32 - 8);
  MEMORY[0x28223BE20](v32, v34);
  v36 = &v133 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v139 = a7;
  v141 = v19;
  v140 = v18;
  sub_224A3B79C(0, &qword_281350840, 0x277D82BB8);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6170, &qword_224DBD720);
  MEMORY[0x22AA5C290](v158);
  v38 = v158[0];
  v39 = sub_224DAF6A8();

  if ((v39 & 1) == 0 || (v40 = sub_224DADF08(), v41 = sub_224D42328(v153, v40), , !v41))
  {
LABEL_8:

    return;
  }

  v42 = *(Strong + OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService_configurationPolicy);

  MEMORY[0x22AA5C290](v158, v37);
  v43 = v158[0];
  v44 = sub_224DADF18();
  v138 = &v133;
  v45 = *(v42 + OBJC_IVAR____TtC10ChronoCore42MobilePlaceholderReloadConfigurationPolicy__lock);
  v47 = MEMORY[0x28223BE20](v44, v46);
  *(&v133 - 2) = v42;
  *(&v133 - 1) = v43;
  MEMORY[0x28223BE20](v47, v48);
  *(&v133 - 2) = sub_224CF7E98;
  *(&v133 - 1) = v49;
  os_unfair_lock_lock(v45 + 4);
  sub_224CF7EFC(v155);
  os_unfair_lock_unlock(v45 + 4);
  v50 = LOBYTE(v155[0]);

  v51 = v36;
  v52 = Strong;
  (*(v33 + 8))(v51, v32);
  v158[0] = a3;
  v53 = sub_224DAC088();
  v54 = v53;
  v55 = v141;
  v56 = *(v141 + 16);
  if (v50 == 1 && (v53 & 1) != 0)
  {
    v57 = v140;
    v56(v31, v52 + OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService_logger, v140);
    v58 = a3;
    v59 = sub_224DAB228();
    v60 = sub_224DAF278();

    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      *v61 = 138543362;
      *(v61 + 4) = v58;
      *v62 = v58;
      v63 = v58;
      _os_log_impl(&dword_224A2F000, v59, v60, "Reload completed but tasks remain; not releasing precache assertions for %{public}@", v61, 0xCu);
      sub_224A3311C(v62, &unk_27D6F69F0, &unk_224DB3900);
      v64 = v62;
      v55 = v141;
      MEMORY[0x22AA5EED0](v64, -1, -1);
      v65 = v61;
      v57 = v140;
      MEMORY[0x22AA5EED0](v65, -1, -1);
    }

    else
    {
    }

    (*(v55 + 8))(v31, v57);
    return;
  }

  v66 = v50;
  v136 = OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService_logger;
  v67 = v146;
  v68 = v140;
  v137 = v56;
  v135 = v141 + 16;
  v56(v146, v52 + OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService_logger, v140);
  v69 = a3;
  v70 = sub_224DAB228();
  v71 = sub_224DAF278();
  v138 = v69;

  if (os_log_type_enabled(v70, v71))
  {
    v72 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    v158[0] = v74;
    *v72 = 136315650;
    if (v66)
    {
      v75 = 0x657474696D726570;
    }

    else
    {
      v75 = 0x6D72657020746F6ELL;
    }

    if (v66)
    {
      v76 = 0xE900000000000064;
    }

    else
    {
      v76 = 0xED00006465747469;
    }

    v77 = sub_224A33F74(v75, v76, v158);

    *(v72 + 4) = v77;
    *(v72 + 12) = 2080;
    if (v54)
    {
      v78 = 0x657220736B736174;
    }

    else
    {
      v78 = 0x736B736174206F6ELL;
    }

    if (v54)
    {
      v79 = 0xEC0000006E69616DLL;
    }

    else
    {
      v79 = 0xEF6E69616D657220;
    }

    v80 = sub_224A33F74(v78, v79, v158);
    v68 = v140;

    *(v72 + 14) = v80;
    *(v72 + 22) = 2114;
    v81 = v138;
    *(v72 + 24) = v138;
    *v73 = v81;
    v82 = v81;
    _os_log_impl(&dword_224A2F000, v70, v71, "Reload completed (%s, %s); releasing precache assertions for %{public}@", v72, 0x20u);
    sub_224A3311C(v73, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v73, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v74, -1, -1);
    v83 = v72;
    v52 = Strong;
    MEMORY[0x22AA5EED0](v83, -1, -1);

    v84 = v141;
  }

  else
  {

    v84 = v55;
  }

  v85 = *(v84 + 8);
  (v85)(v67, v68);
  v86 = v152;
  v87 = v149;
  v88 = v150;
  v89 = v148;
  v90 = v147;
  swift_beginAccess();
  if (*(v90 + 16))
  {

    sub_224DAB328();
  }

  swift_beginAccess();
  *(v90 + 16) = 0;

  v91 = v151;
  swift_beginAccess();
  v92 = *(v91 + 16);
  if (!*(v92 + 16) || (v93 = sub_224A61E5C(v153), (v94 & 1) == 0))
  {
    swift_endAccess();
    goto LABEL_8;
  }

  v148 = v85;
  sub_224A3317C(*(v92 + 56) + 40 * v93, v155);
  sub_224A36F98(v155, v158);
  swift_endAccess();
  v137(v88, v52 + v136, v68);
  v95 = *(v87 + 16);
  v147 = v87 + 16;
  v146 = v95;
  (v95)(v89, v153, v86);
  v96 = v138;
  v97 = sub_224DAB228();
  v98 = sub_224DAF278();

  v99 = os_log_type_enabled(v97, v98);
  v134 = v96;
  if (v99)
  {
    v100 = swift_slowAlloc();
    v101 = swift_slowAlloc();
    v102 = swift_slowAlloc();
    *&v155[0] = v102;
    *v100 = 138543618;
    *(v100 + 4) = v96;
    *v101 = v96;
    *(v100 + 12) = 2082;
    sub_224A828F0(&qword_281350E40, MEMORY[0x277CF9978], MEMORY[0x277CF99A0]);
    v103 = v68;
    v104 = v96;
    v105 = sub_224DAFD28();
    v107 = v106;
    v138 = *(v87 + 8);
    (v138)(v89, v152);
    v108 = sub_224A33F74(v105, v107, v155);

    *(v100 + 14) = v108;
    _os_log_impl(&dword_224A2F000, v97, v98, "Reload completed; releasing precache assertion for %{public}@::%{public}s", v100, 0x16u);
    sub_224A3311C(v101, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v101, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v102);
    v109 = v102;
    v86 = v152;
    MEMORY[0x22AA5EED0](v109, -1, -1);
    v110 = v100;
    v52 = Strong;
    MEMORY[0x22AA5EED0](v110, -1, -1);

    v111 = v150;
    v112 = v103;
  }

  else
  {

    v138 = *(v87 + 8);
    (v138)(v89, v86);
    v111 = v88;
    v112 = v68;
  }

  v113 = v148;
  (v148)(v111, v112);
  __swift_project_boxed_opaque_existential_1(v158, v158[3]);
  sub_224DAE1F8();
  v114 = v145;
  v115 = v153;
  v116 = v146;
  (v146)(v145, v153, v86);
  v156 = 0;
  memset(v155, 0, sizeof(v155));
  v117 = v151;
  swift_beginAccess();
  sub_224B09920(v155, v114);
  swift_endAccess();
  swift_beginAccess();
  if (!*(*(v117 + 16) + 16))
  {
    v118 = v144;
    v137(v144, v52 + v136, v140);
    v119 = v142;
    v116(v142, v115, v86);
    v120 = v134;
    v121 = sub_224DAB228();
    v122 = sub_224DAF278();

    if (os_log_type_enabled(v121, v122))
    {
      v123 = v119;
      v124 = swift_slowAlloc();
      v125 = swift_slowAlloc();
      v126 = swift_slowAlloc();
      v157 = v126;
      *v124 = 138543618;
      *(v124 + 4) = v120;
      *v125 = v120;
      *(v124 + 12) = 2082;
      sub_224A828F0(&qword_281350E40, MEMORY[0x277CF9978], MEMORY[0x277CF99A0]);
      v127 = v120;
      v128 = sub_224DAFD28();
      v130 = v129;
      (v138)(v123, v86);
      v131 = sub_224A33F74(v128, v130, &v157);

      *(v124 + 14) = v131;
      _os_log_impl(&dword_224A2F000, v121, v122, "Precaching complete for %{public}@::%{public}s", v124, 0x16u);
      sub_224A3311C(v125, &unk_27D6F69F0, &unk_224DB3900);
      MEMORY[0x22AA5EED0](v125, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v126);
      MEMORY[0x22AA5EED0](v126, -1, -1);
      MEMORY[0x22AA5EED0](v124, -1, -1);

      v132 = (v148)(v144, v140);
    }

    else
    {

      (v138)(v119, v86);
      v132 = v113(v118, v140);
    }

    v139(v132);
  }

  __swift_destroy_boxed_opaque_existential_1(v158);
}

void sub_224CF4DA4(char *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v6 = *(v5 - 8);
  v140 = v5;
  v141 = v6;
  v7 = *(v6 + 64);
  v9 = MEMORY[0x28223BE20](v5, v8);
  v132 = v114 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v139 = v114 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4930, &unk_224DB8D00);
  v14 = MEMORY[0x28223BE20](v12 - 8, v13);
  v133 = v114 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v16);
  v18 = v114 - v17;
  v19 = sub_224DAB258();
  v20 = *(v19 - 8);
  v22 = MEMORY[0x28223BE20](v19, v21);
  v137 = v114 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v22, v24);
  v27 = MEMORY[0x28223BE20](v25, v26);
  v136 = v114 - v28;
  MEMORY[0x28223BE20](v27, v29);
  v32 = v114 - v30;
  v33 = *&a1[OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService__queue_descriptors];
  if (!v33)
  {
    (*(v20 + 16))(v114 - v30, &a1[OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService_logger], v19);
    v48 = sub_224DAB228();
    v49 = sub_224DAF288();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_224A2F000, v48, v49, "No active placeholders exist because no descriptors exist.", v50, 2u);
      MEMORY[0x22AA5EED0](v50, -1, -1);
    }

    (*(v20 + 8))(v32, v19);
    sub_224CF6B30();
    swift_allocError();
    *v51 = 0;
    goto LABEL_16;
  }

  v135 = v31;
  v138 = v20;
  v130 = v7;
  v34 = a2;
  v35 = v19;
  v131 = v18;
  v36 = *(a1 + 31);
  v37 = *(a1 + 32);
  __swift_project_boxed_opaque_existential_1(a1 + 28, v36);
  v38 = *(v37 + 32);

  v38(&aBlock, 768, v36, v37);
  if (!*(&v145 + 1))
  {

    sub_224A3311C(&aBlock, &qword_27D6F50E0, &qword_224DB41A0);
    v52 = &a1[OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService_logger];
    v53 = v136;
    (*(v138 + 16))(v136, v52, v35);
    v54 = sub_224DAB228();
    v55 = sub_224DAF288();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&dword_224A2F000, v54, v55, "No active placeholders exist because no hosts exist", v56, 2u);
      MEMORY[0x22AA5EED0](v56, -1, -1);
    }

    (*(v138 + 8))(v53, v35);
    sub_224CF6B30();
    swift_allocError();
    *v57 = 1;
LABEL_16:
    swift_willThrow();
    return;
  }

  v146[0] = aBlock;
  v146[1] = v144;
  v146[2] = v145;
  v39 = sub_224C160B0();
  v40 = v138;
  if (!v39)
  {
LABEL_6:

    v42 = v137;
    (*(v40 + 16))(v137, &a1[OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService_logger], v35);
    v43 = sub_224DAB228();
    v44 = sub_224DAF288();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_224A2F000, v43, v44, "No active placeholders exist because no metrics specifications exist", v45, 2u);
      MEMORY[0x22AA5EED0](v45, -1, -1);
    }

    (*(v40 + 8))(v42, v35);
    sub_224CF6B30();
    swift_allocError();
    v47 = 2;
LABEL_9:
    *v46 = v47;
    swift_willThrow();
    sub_224A699F0(v146);
    return;
  }

  if (v39 >> 62)
  {
    v58 = sub_224DAF838();

    if (v58)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v41 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v41)
    {
      goto LABEL_6;
    }
  }

  v123 = sub_224A86CAC();
  if (!v123)
  {

    (*(v40 + 16))(v135, &a1[OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService_logger], v35);
    v64 = sub_224DAB228();
    v65 = sub_224DAF288();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      _os_log_impl(&dword_224A2F000, v64, v65, "No active placeholders exist because no configurations exist", v66, 2u);
      MEMORY[0x22AA5EED0](v66, -1, -1);
    }

    (*(v40 + 8))(v135, v35);
    sub_224CF6B30();
    swift_allocError();
    v47 = 3;
    goto LABEL_9;
  }

  v59 = swift_allocObject();
  v128 = v59;
  *(v59 + 16) = MEMORY[0x277D84FA0];
  v114[2] = v59 + 16;
  v114[3] = v2;
  if ((v33 & 0xC000000000000001) != 0)
  {
    sub_224DAF7E8();
    sub_224A3B79C(0, &unk_2813509D0, 0x277CFA378);
    sub_224A3B758(&qword_2813509C8, &unk_2813509D0, 0x277CFA378, MEMORY[0x277D85378]);
    sub_224DAF1F8();
    v33 = v147;
    v60 = v148;
    v61 = v149;
    v62 = v150;
    v63 = v151;
  }

  else
  {
    v62 = 0;
    v67 = -1 << *(v33 + 32);
    v60 = v33 + 56;
    v68 = ~v67;
    v69 = -v67;
    if (v69 < 64)
    {
      v70 = ~(-1 << v69);
    }

    else
    {
      v70 = -1;
    }

    v63 = v70 & *(v33 + 56);
    v61 = v68;
  }

  v114[1] = v61;
  v71 = (v61 + 64) >> 6;
  v121 = v123 + 8;
  v134 = v141 + 16;
  v138 = v141 + 32;
  v126 = v130 + 7;
  v125 = &v144;
  v124 = v141 + 8;
  v127 = a1;
  v118 = v34;
  v117 = v33;
  v116 = v60;
  v115 = v71;
  while (v33 < 0)
  {
    v77 = sub_224DAF878();
    if (!v77 || (v142 = v77, sub_224A3B79C(0, &unk_2813509D0, 0x277CFA378), swift_dynamicCast(), v76 = aBlock, v74 = v62, v75 = v63, !aBlock))
    {
LABEL_56:
      sub_224A699F0(v146);

      sub_224A3B7E4(v33);
      swift_beginAccess();
      *v34 = *(v128 + 16);

      return;
    }

LABEL_39:
    v119 = v75;
    v120 = v74;
    v130 = v76;
    v129 = [v76 supportedFamilies];
    v78 = 1 << *(v123 + 32);
    if (v78 < 64)
    {
      v79 = ~(-1 << v78);
    }

    else
    {
      v79 = -1;
    }

    v80 = v79 & v123[8];
    v122 = (v78 + 63) >> 6;

    v81 = 0;
    if (!v80)
    {
LABEL_44:
      if (v122 <= (v81 + 1))
      {
        v83 = (v81 + 1);
      }

      else
      {
        v83 = v122;
      }

      v84 = (v83 - 1);
      v85 = v133;
      while (1)
      {
        v82 = (v81 + 1);
        if (__OFADD__(v81, 1))
        {
          break;
        }

        if (v82 >= v122)
        {
          v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F38A8, &unk_224DB4650);
          (*(*(v113 - 8) + 56))(v85, 1, 1, v113);
          v80 = 0;
          goto LABEL_52;
        }

        v80 = v121[v82];
        ++v81;
        if (v80)
        {
          goto LABEL_51;
        }
      }

      __break(1u);
      goto LABEL_58;
    }

    while (1)
    {
      v82 = v81;
LABEL_51:
      v86 = __clz(__rbit64(v80));
      v80 &= v80 - 1;
      v87 = v86 | (v82 << 6);
      v88 = v123;
      v90 = v140;
      v89 = v141;
      v91 = v139;
      (*(v141 + 16))(v139, v123[6] + *(v141 + 72) * v87, v140);
      v137 = *(v88[7] + 8 * v87);
      v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F38A8, &unk_224DB4650);
      v93 = *(v92 + 48);
      v85 = v133;
      (*(v89 + 32))(v133, v91, v90);
      v94 = v137;
      *(v85 + v93) = v137;
      (*(*(v92 - 8) + 56))(v85, 0, 1, v92);
      v95 = v94;
      v84 = v82;
LABEL_52:
      v96 = v131;
      sub_224A44E4C(v85, v131, &qword_27D6F4930, &unk_224DB8D00);
      v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F38A8, &unk_224DB4650);
      if ((*(*(v97 - 8) + 48))(v96, 1, v97) == 1)
      {
        break;
      }

      v136 = *(v96 + *(v97 + 48));
      v98 = v136;
      v99 = v141;
      v135 = *(v141 + 32);
      v100 = v139;
      v101 = v140;
      v137 = v84;
      v135(v139, v96, v140);
      v102 = [v98 metricsSpecification];
      v103 = v99;
      v104 = *(v99 + 16);
      v105 = v132;
      v104(v132, v100, v101);
      v106 = (*(v103 + 80) + 40) & ~*(v103 + 80);
      v107 = &v126[v106] & 0xFFFFFFFFFFFFFFF8;
      v108 = swift_allocObject();
      v109 = v130;
      *(v108 + 2) = v130;
      *(v108 + 3) = v102;
      *(v108 + 4) = v127;
      v135(&v108[v106], v105, v101);
      *&v108[v107] = v128;
      *&v145 = sub_224CF6B84;
      *(&v145 + 1) = v108;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      *&v144 = sub_224CF1274;
      *(&v144 + 1) = &block_descriptor_48;
      v110 = _Block_copy(&aBlock);
      v111 = v109;
      v112 = v102;

      CHSWidgetFamilyMaskEnumerateFamilies();
      _Block_release(v110);

      (*(v141 + 8))(v139, v140);
      v81 = v137;
      if (!v80)
      {
        goto LABEL_44;
      }
    }

    v62 = v120;
    v63 = v119;
    v34 = v118;
    v33 = v117;
    v60 = v116;
    v71 = v115;
  }

  v72 = v62;
  v73 = v63;
  v74 = v62;
  if (v63)
  {
LABEL_35:
    v75 = (v73 - 1) & v73;
    v76 = *(*(v33 + 48) + ((v74 << 9) | (8 * __clz(__rbit64(v73)))));
    if (!v76)
    {
      goto LABEL_56;
    }

    goto LABEL_39;
  }

  while (1)
  {
    v74 = v72 + 1;
    if (__OFADD__(v72, 1))
    {
      break;
    }

    if (v74 >= v71)
    {
      goto LABEL_56;
    }

    v73 = *(v60 + 8 * v74);
    ++v72;
    if (v73)
    {
      goto LABEL_35;
    }
  }

LABEL_58:
  __break(1u);
}

void sub_224CF5C6C(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v116 = a6;
  v132 = a5;
  v139 = a4;
  v125 = sub_224DAB258();
  v142 = *(v125 - 8);
  MEMORY[0x28223BE20](v125, v9);
  v11 = &v107 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_224DA9688();
  v143 = *(v115 - 8);
  v13 = MEMORY[0x28223BE20](v115, v12);
  v114 = &v107 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13, v15);
  v113 = &v107 - v17;
  v19 = MEMORY[0x28223BE20](v16, v18);
  v131 = &v107 - v20;
  MEMORY[0x28223BE20](v19, v21);
  v112 = &v107 - v22;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v23 = *(v138 - 8);
  MEMORY[0x28223BE20](v138, v24);
  v119 = &v107 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  v28 = MEMORY[0x28223BE20](v26 - 8, v27);
  v130 = &v107 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v28, v30);
  v137 = &v107 - v32;
  v34 = MEMORY[0x28223BE20](v31, v33);
  v36 = &v107 - v35;
  MEMORY[0x28223BE20](v34, v37);
  v146 = &v107 - v38;
  v39 = sub_224DAC268();
  v40 = *(v39 - 8);
  v42 = MEMORY[0x28223BE20](v39, v41);
  v129 = &v107 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42, v44);
  v140 = &v107 - v45;
  v46 = [a2 extensionIdentity];
  v47 = [a2 kind];
  if (!v47)
  {
    sub_224DAEE18();
    v47 = sub_224DAEDE8();
  }

  v136 = [objc_allocWithZone(MEMORY[0x277CFA358]) initWithExtensionIdentity:v46 kind:v47 family:a1 intent:0 activityIdentifier:0];

  v48 = [a3 allMetricsForFamily_];
  v49 = sub_224A3B79C(0, &unk_281350AD8, 0x277CFA3F0);
  sub_224A3B758(&qword_281350AD0, &unk_281350AD8, 0x277CFA3F0, MEMORY[0x277D85378]);
  v50 = sub_224DAF1B8();

  v52 = v50;
  v117 = v49;
  if ((v50 & 0xC000000000000001) != 0)
  {
    sub_224DAF7E8();
    sub_224DAF1F8();
    v52 = v148[4];
    v53 = v148[5];
    v54 = v148[6];
    v55 = v148[7];
    v56 = v148[8];
  }

  else
  {
    v55 = 0;
    v57 = -1 << *(v50 + 32);
    v53 = v50 + 56;
    v54 = ~v57;
    v58 = -v57;
    if (v58 < 64)
    {
      v59 = ~(-1 << v58);
    }

    else
    {
      v59 = -1;
    }

    v56 = v59 & *(v50 + 56);
  }

  v61 = v137;
  v60 = v138;
  v145 = 0;
  v107 = v54;
  v123 = (v54 + 64) >> 6;
  v128 = (v23 + 16);
  v144 = (v23 + 56);
  v127 = (v23 + 48);
  v118 = (v23 + 32);
  v108 = (v23 + 8);
  v122 = (v142 + 16);
  v121 = (v40 + 16);
  v126 = (v40 + 8);
  v120 = (v142 + 8);
  v111 = (v143 + 8);
  v110 = (v143 + 16);
  *&v51 = 136446210;
  v109 = v51;
  v141 = v36;
  v143 = v39;
  v135 = v52;
  v134 = v53;
  v124 = v11;
  while (v52 < 0)
  {
    v74 = sub_224DAF878();
    v71 = v141;
    if (!v74 || (v147 = v74, swift_dynamicCast(), v73 = v148[0], v70 = v55, v72 = v56, !v148[0]))
    {
LABEL_34:
      sub_224A3B7E4(v135);

      return;
    }

LABEL_21:
    v142 = v72;
    v75 = v146;
    (*v128)(v146, v132, v60);
    v76 = *v144;
    (*v144)(v75, 0, 1, v60);
    v77 = v136;
    v78 = [v136 intentReference];
    if (v78)
    {

      v79 = [v77 widgetByReplacingIntent_];
    }

    else
    {
      v79 = v77;
    }

    v80 = v79;
    v76(v71, 1, 1, v60);
    sub_224A3796C(v146, v61, &qword_27D6F56C0, &unk_224DB3580);
    if ((*v127)(v61, 1, v60) == 1)
    {
      v81 = v80;
      sub_224A3311C(v61, &qword_27D6F56C0, &unk_224DB3580);
    }

    else
    {
      v82 = *v118;
      v83 = v119;
      (*v118)(v119, v61, v60);
      v84 = v80;
      sub_224DAA1F8();
      v85 = sub_224DAA048();

      if (v85)
      {
        v86 = v141;
        sub_224A3311C(v141, &qword_27D6F56C0, &unk_224DB3580);
        v87 = v83;
        v71 = v86;
        v82(v86, v87, v60);
        v76(v86, 0, 1, v60);
      }

      else
      {
        (*v108)(v83, v60);
        v71 = v141;
      }
    }

    sub_224A3796C(v71, v130, &qword_27D6F56C0, &unk_224DB3580);
    v88 = v73;
    v89 = v140;
    sub_224DAC228();

    sub_224A3311C(v71, &qword_27D6F56C0, &unk_224DB3580);
    sub_224A3311C(v146, &qword_27D6F56C0, &unk_224DB3580);
    swift_getObjectType();
    v90 = v131;
    v91 = v145;
    sub_224DAC3F8();
    v92 = v129;
    if (v91)
    {
      v133 = v88;
      v93 = v124;
      v94 = v125;
      (*v122)(v124, v139 + OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService_logger, v125);
      v95 = v143;
      (*v121)(v92, v89, v143);
      v96 = sub_224DAB228();
      v97 = sub_224DAF2A8();
      if (os_log_type_enabled(v96, v97))
      {
        v98 = swift_slowAlloc();
        v99 = swift_slowAlloc();
        v148[0] = v99;
        *v98 = v109;
        sub_224A828F0(&qword_281350E40, MEMORY[0x277CF9978], MEMORY[0x277CF99A0]);
        v100 = sub_224DAFD28();
        v102 = v101;
        v145 = v91;
        v103 = *v126;
        (*v126)(v92, v143);
        v104 = sub_224A33F74(v100, v102, v148);
        v105 = v124;

        *(v98 + 4) = v104;
        _os_log_impl(&dword_224A2F000, v96, v97, "Cannot protect key as it cannot be converted to a URL: %{public}s", v98, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v99);
        MEMORY[0x22AA5EED0](v99, -1, -1);
        MEMORY[0x22AA5EED0](v98, -1, -1);

        (*v120)(v105, v125);
        v103(v140, v143);
      }

      else
      {

        v106 = *v126;
        (*v126)(v92, v95);
        (*v120)(v93, v94);
        v106(v140, v95);
      }

      v145 = 0;
    }

    else
    {
      v145 = 0;
      v62 = v112;
      sub_224DA9548();
      v63 = *v111;
      v64 = v115;
      (*v111)(v90, v115);
      v65 = v114;
      (*v110)(v114, v62, v64);
      swift_beginAccess();
      v66 = v89;
      v67 = v113;
      sub_224ADB390(v113, v65);
      swift_endAccess();

      v63(v67, v64);
      v63(v62, v64);
      (*v126)(v66, v143);
    }

    v55 = v70;
    v56 = v142;
    v61 = v137;
    v60 = v138;
    v52 = v135;
    v53 = v134;
  }

  v68 = v55;
  v69 = v56;
  v70 = v55;
  v71 = v141;
  if (v56)
  {
LABEL_17:
    v72 = (v69 - 1) & v69;
    v73 = *(*(v52 + 48) + ((v70 << 9) | (8 * __clz(__rbit64(v69)))));
    if (!v73)
    {
      goto LABEL_34;
    }

    goto LABEL_21;
  }

  while (1)
  {
    v70 = v68 + 1;
    if (__OFADD__(v68, 1))
    {
      break;
    }

    if (v70 >= v123)
    {
      goto LABEL_34;
    }

    v69 = *(v53 + 8 * v70);
    ++v68;
    if (v69)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
}

void sub_224CF6A1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*v3 + OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService__queue);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6370, &unk_224DBF910);
  sub_224DAF3E8();
}

unint64_t sub_224CF6B30()
{
  result = qword_2813561A0[0];
  if (!qword_2813561A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2813561A0);
  }

  return result;
}

void *sub_224CF6B9C(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v16[1] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v5 = v4 & 0x3F;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  v8 = 8 * (v6 >> 6);
  if (v5 <= 0xD)
  {
    goto LABEL_2;
  }

  v12 = 8 * (v6 >> 6);

  if (swift_stdlib_isStackAllocationSafe())
  {

    v8 = v12;
LABEL_2:
    MEMORY[0x28223BE20](a1, v8);
    v10 = v16 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v10, v9);
    result = sub_224CF6CFC(v10, v7, v3);
    if (v2)
    {
      return swift_willThrow();
    }

    return result;
  }

  v13 = swift_slowAlloc();
  v14 = v2;
  v15 = sub_224CF7058(v13, v7, v3);
  result = MEMORY[0x22AA5EED0](v13, -1, -1);
  if (!v14)
  {
    return v15;
  }

  return result;
}

uint64_t sub_224CF6CFC(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v36 = a2;
  v37 = a1;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F38A8, &unk_224DB4650);
  v5 = MEMORY[0x28223BE20](v49, v4);
  v48 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v7);
  v47 = &v36 - v8;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  result = MEMORY[0x28223BE20](v46, v9);
  v44 = &v36 - v12;
  v45 = v11;
  v13 = 0;
  v50 = a3;
  v14 = *(a3 + 64);
  v40 = a3 + 64;
  v15 = 1 << *(a3 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & v14;
  v38 = 0;
  v39 = (v15 + 63) >> 6;
  v42 = v11 + 8;
  v43 = v11 + 16;
  v18 = v47;
  while (v17)
  {
    v19 = __clz(__rbit64(v17));
    v51 = (v17 - 1) & v17;
LABEL_11:
    v22 = v19 | (v13 << 6);
    v23 = v50;
    v25 = v44;
    v24 = v45;
    v26 = *(v45 + 16);
    v27 = v46;
    v26(v44, v50[6] + *(v45 + 72) * v22, v46);
    v28 = v23[7];
    v41 = v22;
    v29 = *(v28 + 8 * v22);
    v26(v18, v25, v27);
    v30 = v48;
    v31 = v49;
    *(v18 + *(v49 + 48)) = v29;
    sub_224A3796C(v18, v30, &qword_27D6F38A8, &unk_224DB4650);
    v32 = *(v30 + *(v31 + 48));
    v33 = v29;

    sub_224DAA1F8();
    v34 = *(v24 + 8);
    v34(v30, v27);
    LOBYTE(v29) = sub_224DAA048();

    sub_224A3311C(v18, &qword_27D6F38A8, &unk_224DB4650);

    result = (v34)(v25, v27);
    v17 = v51;
    if (v29)
    {
      *(v37 + ((v41 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v41;
      if (__OFADD__(v38++, 1))
      {
        __break(1u);
        return sub_224B2E8E0(v37, v36, v38, v50);
      }
    }
  }

  v20 = v13;
  while (1)
  {
    v13 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v13 >= v39)
    {
      return sub_224B2E8E0(v37, v36, v38, v50);
    }

    v21 = *(v40 + 8 * v13);
    ++v20;
    if (v21)
    {
      v19 = __clz(__rbit64(v21));
      v51 = (v21 - 1) & v21;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_224CF7058(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_224CF6CFC(result, a2, a3);

    return v6;
  }

  return result;
}

void *sub_224CF70D0(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *), uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      v8 = a5;
      v9 = a4;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
      a4 = v9;
      a5 = v8;
    }

    sub_224B06FF8(result, a2, a3, a4, a5);
    v11 = v10;

    return v11;
  }

  return result;
}

void *sub_224CF7160(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v8 = result;
      v9 = a2;
      bzero(result, 8 * a2);
      result = v8;
      a2 = v9;
    }

    v10 = a5(result, a2, a3, a4);

    return v10;
  }

  return result;
}

void *sub_224CF71F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *, unint64_t, uint64_t, uint64_t), uint64_t (*a4)(void *, uint64_t, uint64_t, uint64_t))
{
  v17[1] = *MEMORY[0x277D85DE8];
  v8 = *(a2 + 32);
  v9 = v8 & 0x3F;
  v10 = ((1 << v8) + 63) >> 6;
  v11 = 8 * v10;

  if (v9 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe, v13);
    bzero(v17 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0), v11);
    v14 = a3(v17 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0), v10, a2, a1);
  }

  else
  {
    v16 = swift_slowAlloc();

    v14 = sub_224CF7160(v16, v10, a2, a1, a4);

    MEMORY[0x22AA5EED0](v16, -1, -1);
  }

  return v14;
}

uint64_t sub_224CF73D4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v59 = result;
  v6 = 0;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    goto LABEL_49;
  }

  v7 = 0;
  v57 = a4 + 56;
  v8 = 1 << *(a4 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v60 = v9 & *(a4 + 56);
  v54 = (v8 + 63) >> 6;
  v64 = a3 + 56;
  do
  {
LABEL_6:
    if (v60)
    {
      v10 = __clz(__rbit64(v60));
      v60 &= v60 - 1;
    }

    else
    {
      v11 = v7;
      do
      {
        v7 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          __break(1u);
          goto LABEL_98;
        }

        if (v7 >= v54)
        {
LABEL_96:

          return sub_224B05890(v59, a2, v6, v5);
        }

        v12 = *(v57 + 8 * v7);
        ++v11;
      }

      while (!v12);
      v10 = __clz(__rbit64(v12));
      v60 = (v12 - 1) & v12;
    }

    v13 = *(*(v4 + 48) + (v10 | (v7 << 6)));
    sub_224DAFE68();
    sub_224DAEE78();

    result = sub_224DAFEA8();
    v14 = -1 << *(v5 + 32);
    v15 = result & ~v14;
    v16 = v15 >> 6;
    v17 = 1 << v15;
  }

  while (((1 << v15) & *(v64 + 8 * (v15 >> 6))) == 0);
  v62 = v6;
  v18 = ~v14;
  while (1)
  {
    v19 = *(*(v5 + 48) + v15);
    v20 = 0xD000000000000012;
    v21 = 0xD000000000000014;
    if (v19 == 2)
    {
      v21 = 0x64657472617473;
    }

    v22 = 0x8000000224DC4690;
    if (v19 == 2)
    {
      v22 = 0xE700000000000000;
    }

    if (*(*(v5 + 48) + v15))
    {
      v20 = 0x437363697274656DLL;
    }

    v23 = 0x8000000224DC4660;
    if (*(*(v5 + 48) + v15))
    {
      v23 = 0xEE006465676E6168;
    }

    v24 = *(*(v5 + 48) + v15) <= 1u ? v20 : v21;
    v25 = *(*(v5 + 48) + v15) <= 1u ? v23 : v22;
    if (v13 > 1)
    {
      if (v13 == 2)
      {
        v28 = 0x64657472617473;
      }

      else
      {
        v28 = 0xD000000000000014;
      }

      if (v13 == 2)
      {
        v27 = 0xE700000000000000;
      }

      else
      {
        v27 = 0x8000000224DC4690;
      }

      if (v24 != v28)
      {
        goto LABEL_42;
      }
    }

    else
    {
      v26 = 0x437363697274656DLL;
      v27 = 0xEE006465676E6168;
      if (!v13)
      {
        v26 = 0xD000000000000012;
        v27 = 0x8000000224DC4660;
      }

      if (v24 != v26)
      {
        goto LABEL_42;
      }
    }

    if (v25 == v27)
    {
      break;
    }

LABEL_42:
    v29 = sub_224DAFD88();

    if (v29)
    {
      goto LABEL_46;
    }

    v15 = (v15 + 1) & v18;
    v16 = v15 >> 6;
    v17 = 1 << v15;
    v5 = a3;
    if ((*(v64 + 8 * (v15 >> 6)) & (1 << v15)) == 0)
    {
      v4 = a4;
      v6 = v62;
      goto LABEL_6;
    }
  }

LABEL_46:
  v59[v16] |= v17;
  v6 = v62 + 1;
  v4 = a4;
  v5 = a3;
  if (!__OFADD__(v62, 1))
  {
    goto LABEL_6;
  }

  __break(1u);
LABEL_49:
  v30 = 0;
  v31 = v5 + 56;
  v32 = 1 << *(v5 + 32);
  if (v32 < 64)
  {
    v33 = ~(-1 << v32);
  }

  else
  {
    v33 = -1;
  }

  v61 = v33 & *(v5 + 56);
  v55 = (v32 + 63) >> 6;
  v65 = v4 + 56;
  while (2)
  {
    if (v61)
    {
      v34 = __clz(__rbit64(v61));
      v35 = (v61 - 1) & v61;
LABEL_60:
      v38 = v34 | (v30 << 6);
      v39 = *(*(v5 + 48) + v38);
      sub_224DAFE68();
      v61 = v35;
      v58 = v38;
      sub_224DAEE78();

      result = sub_224DAFEA8();
      v40 = -1 << *(v4 + 32);
      v41 = result & ~v40;
      if (((*(v65 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v41) & 1) == 0)
      {
        continue;
      }

      v63 = v6;
      v42 = ~v40;
LABEL_62:
      v43 = *(*(v4 + 48) + v41);
      v44 = 0xD000000000000014;
      if (v43 == 2)
      {
        v44 = 0x64657472617473;
      }

      v45 = 0x8000000224DC4690;
      if (v43 == 2)
      {
        v45 = 0xE700000000000000;
      }

      v46 = 0x437363697274656DLL;
      if (!*(*(v4 + 48) + v41))
      {
        v46 = 0xD000000000000012;
      }

      v47 = 0x8000000224DC4660;
      if (*(*(v4 + 48) + v41))
      {
        v47 = 0xEE006465676E6168;
      }

      if (*(*(v4 + 48) + v41) <= 1u)
      {
        v48 = v46;
      }

      else
      {
        v48 = v44;
      }

      if (*(*(v4 + 48) + v41) <= 1u)
      {
        v49 = v47;
      }

      else
      {
        v49 = v45;
      }

      if (v39 > 1)
      {
        if (v39 == 2)
        {
          v52 = 0x64657472617473;
        }

        else
        {
          v52 = 0xD000000000000014;
        }

        if (v39 == 2)
        {
          v51 = 0xE700000000000000;
        }

        else
        {
          v51 = 0x8000000224DC4690;
        }

        if (v48 != v52)
        {
          goto LABEL_89;
        }
      }

      else
      {
        v50 = 0x437363697274656DLL;
        v51 = 0xEE006465676E6168;
        if (!v39)
        {
          v50 = 0xD000000000000012;
          v51 = 0x8000000224DC4660;
        }

        if (v48 != v50)
        {
LABEL_89:
          v53 = sub_224DAFD88();

          if (v53)
          {
            goto LABEL_93;
          }

          v41 = (v41 + 1) & v42;
          v4 = a4;
          if (((*(v65 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v41) & 1) == 0)
          {
            v5 = a3;
            v6 = v63;
            continue;
          }

          goto LABEL_62;
        }
      }

      if (v49 == v51)
      {

LABEL_93:
        *(v59 + ((v58 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v58;
        v6 = v63 + 1;
        v4 = a4;
        v5 = a3;
        if (__OFADD__(v63, 1))
        {
          __break(1u);
          goto LABEL_96;
        }

        continue;
      }

      goto LABEL_89;
    }

    break;
  }

  v36 = v30;
  while (1)
  {
    v30 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      break;
    }

    if (v30 >= v55)
    {
      goto LABEL_96;
    }

    v37 = *(v31 + 8 * v30);
    ++v36;
    if (v37)
    {
      v34 = __clz(__rbit64(v37));
      v35 = (v37 - 1) & v37;
      goto LABEL_60;
    }
  }

LABEL_98:
  __break(1u);
  return result;
}

unint64_t sub_224CF7A7C(uint64_t a1, uint64_t a2)
{
  v2 = sub_224DAFBF8();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

void sub_224CF7AC8(uint64_t a1)
{
  v3 = *(sub_224DAC268() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v5);
  v8 = *(v1 + v6);
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8);
  v12 = *v11;
  v13 = *(v11 + 8);

  sub_224CF3E4C(a1, v9, v10, v1 + v4, v7, v8, v12, v13);
}

uint64_t objectdestroy_58Tm_0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_224CF7C90(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, char *, uint64_t))
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = *(v2 + 2);
  v7 = *(v2 + 3);
  v8 = *(v2 + 4);
  v9 = *&v2[(*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8];

  return a2(a1, v6, v7, v8, &v2[v5], v9);
}

unint64_t sub_224CF7E2C()
{
  result = qword_27D6F6388;
  if (!qword_27D6F6388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F6388);
  }

  return result;
}

uint64_t sub_224CF7F14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_224DAE8B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ExtensionTask.SchedulingOption(0);
  v10 = *(v9 - 8);
  v12 = MEMORY[0x28223BE20](v9 - 8, v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v27 - v16;
  v18 = *MEMORY[0x277CE3D10];
  v19 = *(v5 + 104);
  v30 = a2;
  result = v19(a2, v18, v4);
  v21 = *(a1 + 16);
  if (v21)
  {
    v22 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v23 = *(v10 + 72);
    v24 = (v5 + 48);
    v28 = (v5 + 40);
    v29 = (v5 + 32);
    v27 = (v5 + 8);
    do
    {
      sub_224A415FC(v22, v17, type metadata accessor for ExtensionTask.SchedulingOption);
      sub_224A415FC(v17, v14, type metadata accessor for ExtensionTask.SchedulingOption);
      if ((*v24)(v14, 5, v4))
      {
        sub_224A42538(v17, type metadata accessor for ExtensionTask.SchedulingOption);
        result = sub_224A42538(v14, type metadata accessor for ExtensionTask.SchedulingOption);
      }

      else
      {
        (*v29)(v8, v14, v4);
        sub_224CF9E00(&qword_281350C40, MEMORY[0x277CE3D40]);
        v25 = v30;
        v26 = sub_224DAEDB8();
        sub_224A42538(v17, type metadata accessor for ExtensionTask.SchedulingOption);
        if (v26)
        {
          result = (*v27)(v8, v4);
        }

        else
        {
          result = (*v28)(v25, v8, v4);
        }
      }

      v22 += v23;
      --v21;
    }

    while (v21);
  }

  return result;
}

BOOL sub_224CF8218(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == 1)
  {
    return (*(a2 + 8) & 1) != 0;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  return *a1 == *a2;
}

uint64_t sub_224CF8254()
{
  v1 = type metadata accessor for ExtensionTask.Identifier(0);
  MEMORY[0x28223BE20](v1, v2);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_224A415FC(v0, v4, type metadata accessor for ExtensionTask.Identifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        sub_224A42538(v4, type metadata accessor for ExtensionTask.Identifier);
        return 0x746E6F436576696CLL;
      }

      else
      {
        sub_224A42538(v4, type metadata accessor for ExtensionTask.Identifier);
        return 0x7470697263736564;
      }
    }

    else if (EnumCaseMultiPayload == 2)
    {
      sub_224A42538(v4, type metadata accessor for ExtensionTask.Identifier);
      return 0x4377656976657270;
    }

    else if (EnumCaseMultiPayload == 3)
    {
      sub_224A42538(v4, type metadata accessor for ExtensionTask.Identifier);
      return 0x6C6F686563616C70;
    }

    else
    {
      sub_224A42538(v4, type metadata accessor for ExtensionTask.Identifier);
      return 0x69737365736C7275;
    }
  }

  else if (EnumCaseMultiPayload > 7)
  {
    if (EnumCaseMultiPayload == 8)
    {
      sub_224A42538(v4, type metadata accessor for ExtensionTask.Identifier);
      return 0x7974697669746361;
    }

    else if (EnumCaseMultiPayload == 9)
    {
      sub_224A42538(v4, type metadata accessor for ExtensionTask.Identifier);
      return 0x636E6176656C6572;
    }

    else
    {
      sub_224A42538(v4, type metadata accessor for ExtensionTask.Identifier);
      return 0x7550746567646977;
    }
  }

  else if (EnumCaseMultiPayload == 5)
  {
    sub_224A42538(v4, type metadata accessor for ExtensionTask.Identifier);
    return 0x736E6F6369;
  }

  else if (EnumCaseMultiPayload == 6)
  {
    sub_224A42538(v4, type metadata accessor for ExtensionTask.Identifier);
    return 0x746F687370616E73;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4048, &unk_224DB95F0);

    v7 = sub_224DABE18();
    (*(*(v7 - 8) + 8))(v4, v7);
    return 0x656E696C656D6974;
  }
}

id sub_224CF8638()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ExtensionTask(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_224CF8678(uint64_t a1)
{
  sub_224DAE918();
  if (v1 <= 0x3F)
  {
    type metadata accessor for ExtensionTask.SchedulingConfiguration(319);
    if (v2 <= 0x3F)
    {
      sub_224CF8870(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for ExtensionTask.Identifier(319);
        if (v4 <= 0x3F)
        {
          sub_224DA9908();
          if (v5 <= 0x3F)
          {
            sub_224DA9878();
            if (v6 <= 0x3F)
            {
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

void sub_224CF8870(uint64_t a1)
{
  if (!qword_281350D50)
  {
    sub_224DAC938();
    v1 = sub_224DAF728();
    if (!v2)
    {
      atomic_store(v1, &qword_281350D50);
    }
  }
}

uint64_t getEnumTagSinglePayload for ExtensionTask.Cost(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ExtensionTask.Cost(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_224CF8928(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_224CF8944(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t sub_224CF8980(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_224CF89D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_224CF8A24(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_224CF8A3C(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_224CF8AEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t a5)
{
  v5 = a4(319, a2, a3);
  if (v6 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v5;
}

void sub_224CF8B4C(uint64_t a1)
{
  if (!qword_281351A20)
  {
    sub_224DA9878();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_281351A20);
    }
  }
}

void sub_224CF8BB4(uint64_t a1)
{
  sub_224DAF538();
  if (v1 <= 0x3F)
  {
    sub_224CF8CA4(319);
    if (v2 <= 0x3F)
    {
      sub_224A3B79C(319, &qword_281350A50, 0x277CFA228);
      if (v3 <= 0x3F)
      {
        sub_224DABE18();
        if (v4 <= 0x3F)
        {
          sub_224CF8D30(319);
          if (v5 <= 0x3F)
          {
            sub_224DABCC8();
            if (v6 <= 0x3F)
            {
              sub_224CF8DD0(319);
              if (v7 <= 0x3F)
              {
                swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_224CF8CA4(uint64_t a1)
{
  if (!qword_281350A48)
  {
    sub_224A3B79C(255, &qword_281350A50, 0x277CFA228);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D6F6390, &qword_224DBFDB8);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_281350A48);
    }
  }
}

void sub_224CF8D30(uint64_t a1)
{
  if (!qword_281350E60)
  {
    sub_224DABE18();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D6F6398, &qword_224DBFDC0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D6F63A0, qword_224DBFDC8);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_281350E60);
    }
  }
}

void sub_224CF8DD0(uint64_t a1)
{
  if (!qword_281350990)
  {
    sub_224DAF538();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_281350990);
    }
  }
}

BOOL sub_224CF8E3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_224DAE8B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ExtensionTask.SchedulingOption(0);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F63B0, &qword_224DBFEA8);
  v15 = MEMORY[0x28223BE20](v13 - 8, v14);
  v17 = v24 - v16;
  v18 = *(v15 + 56);
  sub_224A415FC(a1, v24 - v16, type metadata accessor for ExtensionTask.SchedulingOption);
  sub_224A415FC(a2, &v17[v18], type metadata accessor for ExtensionTask.SchedulingOption);
  v19 = *(v5 + 48);
  v20 = v19(v17, 5, v4);
  if (v20 > 2)
  {
    if (v20 == 3)
    {
      if (v19(&v17[v18], 5, v4) == 3)
      {
        goto LABEL_13;
      }
    }

    else
    {
      if (v20 == 4)
      {
        if (v19(&v17[v18], 5, v4) != 4)
        {
          goto LABEL_17;
        }

        goto LABEL_13;
      }

      if (v19(&v17[v18], 5, v4) == 5)
      {
        goto LABEL_13;
      }
    }

LABEL_17:
    sub_224A3311C(v17, &qword_27D6F63B0, &qword_224DBFEA8);
    return 0;
  }

  if (v20)
  {
    if (v20 == 1)
    {
      if (v19(&v17[v18], 5, v4) != 1)
      {
        goto LABEL_17;
      }
    }

    else if (v19(&v17[v18], 5, v4) != 2)
    {
      goto LABEL_17;
    }

LABEL_13:
    sub_224A42538(v17, type metadata accessor for ExtensionTask.SchedulingOption);
    return 1;
  }

  sub_224A415FC(v17, v12, type metadata accessor for ExtensionTask.SchedulingOption);
  if (v19(&v17[v18], 5, v4))
  {
    (*(v5 + 8))(v12, v4);
    goto LABEL_17;
  }

  (*(v5 + 32))(v8, &v17[v18], v4);
  sub_224CF9E00(&qword_281350C38, MEMORY[0x277CE3D48]);
  sub_224DAEFA8();
  sub_224DAEFA8();
  v22 = *(v5 + 8);
  v22(v8, v4);
  v23 = v24[1] == v24[0];
  v22(v12, v4);
  sub_224A42538(v17, type metadata accessor for ExtensionTask.SchedulingOption);
  return v23;
}

uint64_t sub_224CF9218(char *a1, void **a2)
{
  v126 = a1;
  v127 = a2;
  v2 = sub_224DABCC8();
  v117 = *(v2 - 8);
  v118 = v2;
  MEMORY[0x28223BE20](v2, v3);
  v115 = &v114 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_224DABE18();
  v124 = *(v5 - 8);
  v125 = v5;
  v7 = MEMORY[0x28223BE20](v5, v6);
  v116 = &v114 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v9);
  v114 = &v114 - v10;
  v11 = type metadata accessor for ExtensionTask.Identifier(0);
  v13 = MEMORY[0x28223BE20](v11, v12);
  v120 = (&v114 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = MEMORY[0x28223BE20](v13, v15);
  v119 = &v114 - v17;
  v19 = MEMORY[0x28223BE20](v16, v18);
  v122 = &v114 - v20;
  v22 = MEMORY[0x28223BE20](v19, v21);
  v123 = &v114 - v23;
  v25 = MEMORY[0x28223BE20](v22, v24);
  v121 = &v114 - v26;
  v28 = MEMORY[0x28223BE20](v25, v27);
  v30 = (&v114 - v29);
  v32 = MEMORY[0x28223BE20](v28, v31);
  v34 = (&v114 - v33);
  v36 = MEMORY[0x28223BE20](v32, v35);
  v38 = (&v114 - v37);
  v40 = MEMORY[0x28223BE20](v36, v39);
  v42 = (&v114 - v41);
  v44 = MEMORY[0x28223BE20](v40, v43);
  v46 = (&v114 - v45);
  MEMORY[0x28223BE20](v44, v47);
  v49 = (&v114 - v48);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F63B8, &unk_224DBFEB0);
  v52 = MEMORY[0x28223BE20](v50 - 8, v51);
  v54 = &v114 - v53;
  v55 = (&v114 + *(v52 + 56) - v53);
  sub_224A415FC(v126, &v114 - v53, type metadata accessor for ExtensionTask.Identifier);
  v56 = v127;
  v127 = v55;
  sub_224A415FC(v56, v55, type metadata accessor for ExtensionTask.Identifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload > 1)
    {
      v66 = v127;
      if (EnumCaseMultiPayload == 2)
      {
        sub_224A415FC(v54, v42, type metadata accessor for ExtensionTask.Identifier);
        v67 = *v42;
        if (swift_getEnumCaseMultiPayload() != 2)
        {
          goto LABEL_46;
        }
      }

      else if (EnumCaseMultiPayload == 3)
      {
        sub_224A415FC(v54, v38, type metadata accessor for ExtensionTask.Identifier);
        v67 = *v38;
        if (swift_getEnumCaseMultiPayload() != 3)
        {
          goto LABEL_46;
        }
      }

      else
      {
        sub_224A415FC(v54, v34, type metadata accessor for ExtensionTask.Identifier);
        v67 = *v34;
        if (swift_getEnumCaseMultiPayload() != 4)
        {
          goto LABEL_46;
        }
      }

      v84 = *v66;
LABEL_44:
      sub_224A3B79C(0, &qword_281350840, 0x277D82BB8);
      v64 = sub_224DAF6A8();

      goto LABEL_45;
    }

    v68 = v127;
    if (!EnumCaseMultiPayload)
    {
      sub_224A415FC(v54, v49, type metadata accessor for ExtensionTask.Identifier);
      v67 = *v49;
      if (!swift_getEnumCaseMultiPayload())
      {
        goto LABEL_43;
      }

      goto LABEL_46;
    }

    v85 = v54;
    sub_224A415FC(v54, v46, type metadata accessor for ExtensionTask.Identifier);
    v87 = *v46;
    v86 = v46[1];
    if (swift_getEnumCaseMultiPayload() != 1)
    {

      v54 = v85;
      goto LABEL_47;
    }

    v89 = *v68;
    v88 = v68[1];
    sub_224A3B79C(0, &qword_281350840, 0x277D82BB8);
    v90 = sub_224DAF6A8();

    if (v90)
    {
      if (v86)
      {
        if (v88)
        {

          v92 = sub_224C916A8(v91, v88);
          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
          if ((v92 & 1) == 0)
          {
            goto LABEL_68;
          }

LABEL_62:
          v113 = v85;
          goto LABEL_63;
        }
      }

      else if (!v88)
      {
        goto LABEL_62;
      }
    }

    else
    {
    }

LABEL_68:
    sub_224A42538(v85, type metadata accessor for ExtensionTask.Identifier);
    goto LABEL_48;
  }

  if (EnumCaseMultiPayload > 7)
  {
    if (EnumCaseMultiPayload == 8)
    {
      v78 = v122;
      sub_224A415FC(v54, v122, type metadata accessor for ExtensionTask.Identifier);
      v79 = v127;
      if (swift_getEnumCaseMultiPayload() == 8)
      {
        v81 = v117;
        v80 = v118;
        v82 = v115;
        (*(v117 + 32))(v115, v79, v118);
        v64 = sub_224DABCB8();
        v83 = *(v81 + 8);
        v83(v82, v80);
        v83(v78, v80);
        goto LABEL_45;
      }

      (*(v117 + 8))(v78, v118);
      goto LABEL_47;
    }

    v68 = v127;
    if (EnumCaseMultiPayload == 9)
    {
      v69 = v119;
      sub_224A415FC(v54, v119, type metadata accessor for ExtensionTask.Identifier);
      v71 = *v69;
      v70 = *(v69 + 8);
      v72 = *(v69 + 16);
      if (swift_getEnumCaseMultiPayload() != 9)
      {

        goto LABEL_47;
      }

      v73 = v54;
      v75 = *v68;
      v74 = v68[1];
      v76 = v68[2];
      sub_224A3B79C(0, &qword_281350840, 0x277D82BB8);
      v77 = sub_224DAF6A8();

      if (v77)
      {
        if (v70 == v74 && v72 == v76)
        {

LABEL_60:
          v113 = v73;
LABEL_63:
          sub_224A42538(v113, type metadata accessor for ExtensionTask.Identifier);
          v64 = 1;
          return v64 & 1;
        }

        v112 = sub_224DAFD88();

        if (v112)
        {
          goto LABEL_60;
        }
      }

      else
      {
      }

      sub_224A42538(v73, type metadata accessor for ExtensionTask.Identifier);
      goto LABEL_48;
    }

    v110 = v120;
    sub_224A415FC(v54, v120, type metadata accessor for ExtensionTask.Identifier);
    v67 = *v110;
    if (swift_getEnumCaseMultiPayload() == 10)
    {
LABEL_43:
      v84 = *v68;
      goto LABEL_44;
    }

LABEL_46:

LABEL_47:
    sub_224A3311C(v54, &qword_27D6F63B8, &unk_224DBFEB0);
LABEL_48:
    v64 = 0;
    return v64 & 1;
  }

  if (EnumCaseMultiPayload == 5)
  {
    sub_224A415FC(v54, v30, type metadata accessor for ExtensionTask.Identifier);
    v67 = *v30;
    v68 = v127;
    if (swift_getEnumCaseMultiPayload() != 5)
    {
      goto LABEL_46;
    }

    goto LABEL_43;
  }

  if (EnumCaseMultiPayload != 6)
  {
    v93 = v123;
    sub_224A415FC(v54, v123, type metadata accessor for ExtensionTask.Identifier);
    v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4048, &unk_224DB95F0);
    v95 = *(v94 + 48);
    v96 = *(v93 + v95);
    v97 = *(v94 + 64);
    v98 = *(v93 + v97);
    v99 = v127;
    v100 = swift_getEnumCaseMultiPayload();
    v102 = v124;
    v101 = v125;
    if (v100 != 7)
    {

      (*(v102 + 8))(v93, v101);
      goto LABEL_47;
    }

    v126 = v54;
    v103 = *(v99 + v95);
    v104 = *(v99 + v97);
    v105 = v116;
    (*(v124 + 32))(v116, v99, v125);
    v106 = MEMORY[0x22AA5A130](v93, v105);
    v107 = *(v102 + 8);
    v107(v93, v101);
    if ((v106 & 1) == 0)
    {
      v107(v105, v101);

LABEL_72:
      sub_224A42538(v126, type metadata accessor for ExtensionTask.Identifier);
      goto LABEL_48;
    }

    if (v96)
    {
      if (!v103)
      {

LABEL_70:

        goto LABEL_71;
      }

      v109 = sub_224C916C0(v108, v103);
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
      if ((v109 & 1) == 0)
      {
        goto LABEL_70;
      }
    }

    else if (v103)
    {

LABEL_71:

      v107(v105, v101);
      goto LABEL_72;
    }

    v64 = sub_224C916D4(v98, v104);

    v107(v105, v101);
    sub_224A42538(v126, type metadata accessor for ExtensionTask.Identifier);
    return v64 & 1;
  }

  v58 = v121;
  sub_224A415FC(v54, v121, type metadata accessor for ExtensionTask.Identifier);
  v59 = v127;
  v60 = swift_getEnumCaseMultiPayload();
  v62 = v124;
  v61 = v125;
  if (v60 != 6)
  {
    (*(v124 + 8))(v58, v125);
    goto LABEL_47;
  }

  v63 = v114;
  (*(v124 + 32))(v114, v59, v125);
  v64 = MEMORY[0x22AA5A130](v58, v63);
  v65 = *(v62 + 8);
  v65(v63, v61);
  v65(v58, v61);
LABEL_45:
  sub_224A42538(v54, type metadata accessor for ExtensionTask.Identifier);
  return v64 & 1;
}

uint64_t sub_224CF9E00(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_224DAE8B8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_224CF9E44(uint64_t a1)
{
  v69 = sub_224DA9878();
  v67 = *(v69 - 8);
  MEMORY[0x28223BE20](v69, v2);
  v66 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_224DAADC8();
  v63 = *(v4 - 8);
  v64 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v62 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_224DAAD78();
  v71 = *(v68 - 8);
  v8 = MEMORY[0x28223BE20](v68, v7);
  v70 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v61 = &v54 - v12;
  MEMORY[0x28223BE20](v11, v13);
  v60 = &v54 - v14;
  v15 = sub_224DAAB88();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_224DA9908();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20, v22);
  v24 = &v54 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_224DAAE08();
  v59 = sub_224DAEDE8();

  sub_224DAAD98();
  v58 = sub_224DA98B8();
  v25 = *(v21 + 8);
  v25(v24, v20);
  sub_224DAADF8();
  sub_224DA9898();
  v54 = v25;
  v55 = v20;
  v25(v24, v20);
  v65 = sub_224DAEDE8();

  sub_224DAADA8();
  v26 = sub_224DAAB68();
  v27 = *(v16 + 8);
  result = v27(v19, v15);
  if (v26 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_224DAADA8();
    v29 = sub_224DAAB78();
    result = v27(v19, v15);
    if ((v29 & 0x8000000000000000) == 0)
    {
      v56 = v29;
      v57 = v26;
      v30 = *MEMORY[0x277D46720];
      v31 = v71;
      v32 = v60;
      v33 = v68;
      (*(v71 + 104))(v60, *MEMORY[0x277D46720], v68);
      v34 = v61;
      sub_224DAAD88();
      sub_224CFCAC4(qword_27D6F3F98, MEMORY[0x277D46738], MEMORY[0x277D46740]);
      sub_224DAEFA8();
      sub_224DAEFA8();
      v35 = *(v31 + 8);
      v35(v34, v33);
      v35(v32, v33);
      v36 = v72;
      v61 = v73;
      v37 = v62;
      sub_224DAADD8();
      v39 = v63;
      v38 = v64;
      v40 = (*(v63 + 88))(v37, v64);
      if (v40 == *MEMORY[0x277D46768])
      {
        (*(v39 + 96))(v37, v38);
        v54(v37, v55);
        v41 = 3;
      }

      else if (v40 == *MEMORY[0x277D46748])
      {
        v41 = 0;
      }

      else if (v40 == *MEMORY[0x277D46758])
      {
        v41 = 1;
      }

      else if (v40 == *MEMORY[0x277D46750])
      {
        v41 = 2;
      }

      else
      {
        (*(v39 + 8))(v37, v38);
        v41 = 4;
      }

      v42 = v66;
      sub_224DA9808();
      v43 = sub_224DA9778();
      (*(v67 + 8))(v42, v69);
      v44 = v70;
      sub_224DAAD88();
      v45 = (*(v71 + 88))(v44, v33);
      if (v45 == *MEMORY[0x277D46730])
      {
        v46 = 0;
      }

      else if (v45 == *MEMORY[0x277D46710])
      {
        v46 = 1;
      }

      else
      {
        if (v45 != v30)
        {
          v48 = v58;
          v47 = v59;
          if (v45 == *MEMORY[0x277D46718])
          {
            v46 = 3;
          }

          else if (v45 == *MEMORY[0x277D46728])
          {
            v46 = 4;
          }

          else if (v45 == *MEMORY[0x277D46708])
          {
            v46 = 5;
          }

          else
          {
            v35(v70, v33);
            v46 = 0;
          }

          goto LABEL_19;
        }

        v46 = 2;
      }

      v47 = v59;
      v48 = v58;
LABEL_19:
      v49 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v53 = v41;
      v50 = v65;
      v51 = [v49 initWithName:v47 relationshipID:v48 deviceID:v65 currentSupportedVersion:v57 minSupportedVersion:v56 isPossibleSource:v61 == v36 pairingState:v53 lastConnectionDate:v43 deviceType:v46];

      v52 = sub_224DAAE38();
      (*(*(v52 - 8) + 8))(a1, v52);
      return v51;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_224CFA5B8()
{
  if (*(v0 + 152))
  {
    v1 = *(v0 + 152);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4A10, &unk_224DB4000);
    sub_224A33088(&qword_281350EE0, &qword_27D6F4A10, &unk_224DB4000, MEMORY[0x277CBCE20]);
    v1 = sub_224DAB3A8();
    *(v0 + 152) = v1;
  }

  return v1;
}

uint64_t sub_224CFA67C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F33A8, &unk_224DB35D0);
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F33B0, &qword_224DBC7F0);
  v4[13] = v6;
  v4[14] = *(v6 - 8);
  v4[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_224CFA7B0, 0, 0);
}

uint64_t sub_224CFA7B0()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  __swift_project_boxed_opaque_existential_1((v0[9] + 16), *(v0[9] + 40));
  sub_224DAAA48();
  sub_224DAF158();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[16] = v4;
  *v4 = v0;
  v4[1] = sub_224CFA8C8;
  v5 = v0[13];

  return MEMORY[0x2822003E8](v0 + 8, 0, 0, v5);
}

uint64_t sub_224CFA8C8()
{

  return MEMORY[0x2822009F8](sub_224CFA9C4, 0, 0);
}

uint64_t sub_224CFA9C4()
{
  if (v0[8])
  {
    v1 = v0[9];

    v2 = *(v1 + 136);

    sub_224A3D418(0, 0);
    v3 = swift_allocObject();
    *(v3 + 16) = sub_224CFCBD0;
    *(v3 + 24) = v1;
    v0[6] = sub_224BC4B74;
    v0[7] = v3;
    v0[2] = MEMORY[0x277D85DD0];
    v0[3] = 1107296256;
    v0[4] = sub_224A9B6F8;
    v0[5] = &block_descriptor_35_1;
    v4 = _Block_copy(v0 + 2);

    dispatch_sync(v2, v4);
    _Block_release(v4);
    LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

    if (v2)
    {
      __break(1u);
    }

    else
    {
      v9 = swift_task_alloc();
      v0[17] = v9;
      *v9 = v0;
      v9[1] = sub_224CFAC04;
      v8 = v0[13];
      v5 = (v0 + 8);
      v6 = 0;
      v7 = 0;
    }

    return MEMORY[0x2822003E8](v5, v6, v7, v8);
  }

  else
  {
    (*(v0[14] + 8))(v0[15], v0[13]);
    sub_224A3D418(0, 0);

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_224CFAC04()
{

  return MEMORY[0x2822009F8](sub_224CFAD00, 0, 0);
}

uint64_t sub_224CFAD00()
{
  if (v0[8])
  {
    v1 = v0[9];

    v2 = *(v1 + 136);

    sub_224A3D418(sub_224CFCBD0, v1);
    v3 = swift_allocObject();
    *(v3 + 16) = sub_224CFCBD0;
    *(v3 + 24) = v1;
    v0[6] = sub_224BC4B74;
    v0[7] = v3;
    v0[2] = MEMORY[0x277D85DD0];
    v0[3] = 1107296256;
    v0[4] = sub_224A9B6F8;
    v0[5] = &block_descriptor_35_1;
    v4 = _Block_copy(v0 + 2);

    dispatch_sync(v2, v4);
    _Block_release(v4);
    LODWORD(v4) = swift_isEscapingClosureAtFileLocation();

    if (v4)
    {
      __break(1u);
    }

    else
    {
      v9 = swift_task_alloc();
      v0[17] = v9;
      *v9 = v0;
      v9[1] = sub_224CFAC04;
      v8 = v0[13];
      v5 = (v0 + 8);
      v6 = 0;
      v7 = 0;
    }

    return MEMORY[0x2822003E8](v5, v6, v7, v8);
  }

  else
  {
    v10 = v0[9];
    (*(v0[14] + 8))(v0[15], v0[13]);
    sub_224A3D418(sub_224CFCBD0, v10);

    v11 = v0[1];

    return v11();
  }
}

double sub_224CFAF64(uint64_t a1)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4A10, &unk_224DB4000);
  sub_224A33088(&qword_281350EF0, &qword_27D6F4A10, &unk_224DB4000, MEMORY[0x277CBCE18]);
  sub_224DAB398();

  return result;
}

uint64_t sub_224CFAFFC()
{
  v1 = sub_224DAAE38();
  v2 = *(v1 - 8);
  v4 = MEMORY[0x28223BE20](v1, v3);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v7);
  v9 = v21 - v8;
  v24 = MEMORY[0x277D84F90];
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  v10 = sub_224DAAA88();
  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = sub_224CFC9E0();
    v15 = *(v2 + 16);
    v14 = v2 + 16;
    v13 = v15;
    v16 = *(v14 + 64);
    v21[2] = v10;
    v17 = v10 + ((v16 + 32) & ~v16);
    v22 = *(v14 + 56);
    v23 = v12;
    do
    {
      v13(v9, v17, v1);
      v13(v6, v9, v1);
      v18 = sub_224CF9E44(v6);
      MEMORY[0x22AA5D350]();
      if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v21[1] = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_224DAF038();
      }

      sub_224DAF078();

      (*(v14 - 8))(v9, v1);
      v17 += v22;
      --v11;
    }

    while (v11);
    v19 = v24;
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v19;
}

double sub_224CFB21C(uint64_t a1, uint64_t a2)
{
  v5 = sub_224DAB7B8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_224DAB848();
  v10 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v11);
  v13 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[1] = *(v2 + 136);
  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = v2;
  aBlock[4] = sub_224CFCB7C;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_224A39F40;
  aBlock[3] = &block_descriptor_27_0;
  v15 = _Block_copy(aBlock);

  sub_224DAB7E8();
  v19 = MEMORY[0x277D84F90];
  sub_224CFCAC4(&qword_281350ED0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
  sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0, MEMORY[0x277D83970]);
  sub_224DAF788();
  MEMORY[0x22AA5D760](0, v13, v9, v15);
  _Block_release(v15);
  (*(v6 + 8))(v9, v5);
  (*(v10 + 8))(v13, v18);

  return result;
}

void sub_224CFB4FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v66 = a4;
  v63 = a2;
  v64 = a3;
  v6 = sub_224DAB7B8();
  v60 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_224DAB848();
  v58 = *(v10 - 8);
  v59 = v10;
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_224DAAE38();
  v15 = *(v14 - 8);
  v56 = v14;
  v57 = v15;
  MEMORY[0x28223BE20](v14, v16);
  v55 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3320, &unk_224DBD6F0);
  v20 = MEMORY[0x28223BE20](v18 - 8, v19);
  v22 = &v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v23);
  v65 = &v54 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5630, &unk_224DB34C0);
  MEMORY[0x28223BE20](v25 - 8, v26);
  v28 = &v54 - v27;
  v29 = sub_224DA9908();
  v30 = *(v29 - 8);
  v32 = MEMORY[0x28223BE20](v29, v31);
  v34 = &v54 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32, v35);
  v62 = &v54 - v36;
  sub_224DA9888();
  v61 = v30;
  v37 = *(v30 + 48);
  v63 = v29;
  if (v37(v28, 1, v29) == 1)
  {
    sub_224A3311C(v28, &unk_27D6F5630, &unk_224DB34C0);
    v38 = swift_allocObject();
    v39 = v66;
    *(v38 + 16) = v64;
    *(v38 + 24) = v39;
    v72 = sub_224CFCC64;
    v73 = v38;
    aBlock = MEMORY[0x277D85DD0];
    v69 = 1107296256;
    v70 = sub_224A39F40;
    v71 = &block_descriptor_15;
    v40 = _Block_copy(&aBlock);

    sub_224DAB7E8();
    v67 = MEMORY[0x277D84F90];
    sub_224CFCAC4(&qword_281350ED0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
    sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0, MEMORY[0x277D83970]);
    sub_224DAF788();
    MEMORY[0x22AA5D760](0, v13, v9, v40);
    _Block_release(v40);
    (*(v60 + 8))(v9, v6);
    (*(v58 + 8))(v13, v59);
  }

  else
  {
    v54 = v9;
    v41 = v62;
    (*(v61 + 32))(v62, v28, v63);
    __swift_project_boxed_opaque_existential_1((v5 + 16), *(v5 + 40));
    v42 = sub_224DAAA88();
    MEMORY[0x28223BE20](v42, v43);
    *(&v54 - 2) = v41;
    v44 = v65;
    sub_224AFD818(sub_224CFCC48, v42, v65);

    sub_224CFCA54(v44, v22);
    v45 = v56;
    if ((*(v57 + 48))(v22, 1, v56) == 1)
    {
      sub_224A3311C(v22, &qword_27D6F3320, &unk_224DBD6F0);
      v46 = swift_allocObject();
      v47 = v66;
      *(v46 + 16) = v64;
      *(v46 + 24) = v47;
      v72 = sub_224CFCB0C;
      v73 = v46;
      aBlock = MEMORY[0x277D85DD0];
      v69 = 1107296256;
      v70 = sub_224A39F40;
      v71 = &block_descriptor_21_0;
      v48 = _Block_copy(&aBlock);

      sub_224DAB7E8();
      v67 = MEMORY[0x277D84F90];
      sub_224CFCAC4(&qword_281350ED0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
      sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0, MEMORY[0x277D83970]);
      v49 = v54;
      sub_224DAF788();
      MEMORY[0x22AA5D760](0, v13, v49, v48);
      _Block_release(v48);
      (*(v60 + 8))(v49, v6);
      (*(v58 + 8))(v13, v59);
      sub_224A3311C(v65, &qword_27D6F3320, &unk_224DBD6F0);

      (*(v61 + 8))(v62, v63);
    }

    else
    {
      v50 = v57;
      v51 = v55;
      (*(v57 + 32))(v55, v22, v45);
      __swift_project_boxed_opaque_existential_1((v5 + 16), *(v5 + 40));
      sub_224DAAD98();
      sub_224DAAA68();
      v52 = *(v61 + 8);
      v53 = v63;
      v52(v34, v63);
      (*(v50 + 8))(v51, v45);
      sub_224A3311C(v65, &qword_27D6F3320, &unk_224DBD6F0);
      v52(v62, v53);
    }
  }
}

void sub_224CFBD98(void (*a1)(void))
{
  sub_224CFCB28();
  v2 = swift_allocError();
  a1();
}

uint64_t sub_224CFBE00(uint64_t a1)
{
  v32 = sub_224DAAE38();
  v31 = *(v32 - 8);
  MEMORY[0x28223BE20](v32, v1);
  v28 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3320, &unk_224DBD6F0);
  v5 = MEMORY[0x28223BE20](v3 - 8, v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v28 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5630, &unk_224DB34C0);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v28 - v13;
  v15 = sub_224DA9908();
  v16 = *(v15 - 8);
  v18 = MEMORY[0x28223BE20](v15, v17);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v21);
  v23 = &v28 - v22;
  sub_224DA9888();
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    return sub_224A3311C(v14, &unk_27D6F5630, &unk_224DB34C0);
  }

  (*(v16 + 32))(v23, v14, v15);
  __swift_project_boxed_opaque_existential_1((v29 + 16), *(v29 + 40));
  v25 = sub_224DAAA88();
  MEMORY[0x28223BE20](v25, v26);
  *(&v28 - 2) = v23;
  sub_224AFD818(sub_224CFCA34, v25, v10);

  sub_224CFCA54(v10, v7);
  if ((*(v31 + 48))(v7, 1, v32) == 1)
  {
    sub_224A3311C(v10, &qword_27D6F3320, &unk_224DBD6F0);
    sub_224A3311C(v7, &qword_27D6F3320, &unk_224DBD6F0);
    return (*(v16 + 8))(v23, v15);
  }

  else
  {
    v30 = v10;
    (*(v31 + 32))(v28, v7, v32);
    __swift_project_boxed_opaque_existential_1((v29 + 16), *(v29 + 40));
    sub_224DAAD98();
    sub_224DAAA78();
    v27 = *(v16 + 8);
    v27(v20, v15);
    (*(v31 + 8))(v28, v32);
    sub_224A3311C(v30, &qword_27D6F3320, &unk_224DBD6F0);
    return (v27)(v23, v15);
  }
}

uint64_t sub_224CFC268(uint64_t a1, uint64_t a2)
{
  v2 = sub_224DA9908();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_224DAADF8();
  v7 = sub_224DA98D8();
  (*(v3 + 8))(v6, v2);
  return v7 & 1;
}

void sub_224CFC354()
{
  v1 = sub_224DACB98();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_224DABE18();
  v7 = *(v6 - 8);
  v57 = v6;
  v58 = v7;
  MEMORY[0x28223BE20](v6, v8);
  v56 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  v10 = *(v50 - 8);
  v12 = MEMORY[0x28223BE20](v50, v11);
  v49 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v14);
  v59 = &v44 - v15;
  v16 = __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
  v17 = *v16;
  v18 = *(*v16 + 56);
  v19 = swift_allocObject();
  *(v19 + 16) = sub_224CFCA2C;
  *(v19 + 24) = v17;
  aBlock[4] = sub_224A8A838;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_224A9B6F8;
  aBlock[3] = &block_descriptor_49;
  v20 = _Block_copy(aBlock);

  dispatch_sync(v18, v20);
  _Block_release(v20);
  LOBYTE(v18) = swift_isEscapingClosureAtFileLocation();

  if (v18)
  {
    __break(1u);
  }

  else
  {
    v45 = v2;
    v46 = v5;
    v47 = v1;
    v21 = v0[15];
    v48 = v0;
    __swift_project_boxed_opaque_existential_1(v0 + 12, v21);
    v22 = sub_224DAC798();
    v23 = *(v22 + 16);
    if (v23)
    {
      v61 = MEMORY[0x277D84F90];
      sub_224ADA64C(0, v23, 0);
      v24 = v61;
      v55 = *(v58 + 16);
      v25 = (*(v58 + 80) + 32) & ~*(v58 + 80);
      v44 = v22;
      v26 = v22 + v25;
      v27 = *(v58 + 72);
      v58 += 16;
      v53 = (v58 - 8);
      v54 = v27;
      v51 = v10 + 32;
      v52 = (v10 + 16);
      v29 = v49;
      v28 = v50;
      do
      {
        v30 = v56;
        v31 = v28;
        v32 = v57;
        v55(v56, v26, v57);
        v33 = sub_224DABDB8();
        (*v53)(v30, v32);
        v34 = *MEMORY[0x277CFA138];
        swift_beginAccess();
        (*v52)(v29, &v33[v34], v31);

        v61 = v24;
        v36 = *(v24 + 16);
        v35 = *(v24 + 24);
        if (v36 >= v35 >> 1)
        {
          sub_224ADA64C((v35 > 1), v36 + 1, 1);
          v24 = v61;
        }

        *(v24 + 16) = v36 + 1;
        (*(v10 + 32))(v24 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v36, v29, v31);
        v26 += v54;
        --v23;
        v28 = v31;
      }

      while (v23);
    }

    else
    {

      v24 = MEMORY[0x277D84F90];
      v28 = v50;
    }

    v37 = *(v24 + 16);
    v38 = v59;
    if (v37)
    {
      v39 = *(v10 + 16);
      v51 = v24;
      v52 = (v10 + 16);
      v40 = v24 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
      v57 = *(v10 + 72);
      v58 = v39;
      LODWORD(v56) = *MEMORY[0x277CF9BE8];
      v54 = (v10 + 8);
      v55 = (v45 + 104);
      v53 = (v45 + 8);
      v42 = v47;
      v41 = v48;
      v43 = v46;
      do
      {
        (v58)(v38, v40, v28);
        __swift_project_boxed_opaque_existential_1(v41 + 12, v41[15]);
        (*v55)(v43, v56, v42);
        sub_224DAC758();
        v38 = v59;
        (*v54)(v59, v28);
        (*v53)(v43, v42);
        v40 += v57;
        --v37;
      }

      while (v37);
    }
  }
}

uint64_t sub_224CFC95C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  __swift_destroy_boxed_opaque_existential_1((v0 + 96));

  return swift_deallocClassInstance();
}

unint64_t sub_224CFC9E0()
{
  result = qword_27D6F40C0;
  if (!qword_27D6F40C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D6F40C0);
  }

  return result;
}

uint64_t sub_224CFCA54(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3320, &unk_224DBD6F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_224CFCAC4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_224CFCB28()
{
  result = qword_27D6F63C0;
  if (!qword_27D6F63C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F63C0);
  }

  return result;
}

uint64_t sub_224CFCB7C()
{
  v1 = *(v0 + 16);
  sub_224CFAFFC();
  v1();
}

unint64_t sub_224CFCBEC()
{
  result = qword_27D6F63C8;
  if (!qword_27D6F63C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F63C8);
  }

  return result;
}

uint64_t sub_224CFCC70@<X0>(uint64_t *a2@<X8>)
{
  result = sub_224DAB668();
  *a2 = result;
  a2[1] = v4;
  return result;
}

void sub_224CFCCE0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3948, &qword_224DB5C10);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = v39 - v6;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_224DAF7E8();
    sub_224DAF538();
    sub_224CFEA04(&unk_2813509A0, MEMORY[0x277CFA140], MEMORY[0x277D85378]);
    sub_224DAF1F8();
    a1 = v46;
    v8 = v47;
    v9 = v48;
    v10 = v49;
    v11 = v50;
  }

  else
  {
    v12 = -1 << *(a1 + 32);
    v8 = a1 + 56;
    v9 = ~v12;
    v13 = -v12;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v11 = v14 & *(a1 + 56);

    v10 = 0;
  }

  v39[1] = v9;
  v15 = (v9 + 64) >> 6;
  v41 = v7;
  v42 = v15;
  v40 = a1;
  v43 = v8;
  while (a1 < 0)
  {
    v22 = sub_224DAF878();
    if (!v22 || (v51 = v22, sub_224DAF538(), swift_dynamicCast(), v21 = v45, v19 = v10, v20 = v11, !v45))
    {
LABEL_27:
      sub_224A3B7E4(a1);
      return;
    }

LABEL_19:
    v44 = v20;
    v23 = OBJC_IVAR____TtC10ChronoCore42MobilePlaceholderReloadConfigurationPolicy__lock_extensionFailureRetryCounts;
    swift_beginAccess();
    v24 = sub_224A3E7EC(v21);
    if (v25)
    {
      v26 = v24;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v28 = *(a2 + v23);
      v51 = v28;
      *(a2 + v23) = 0x8000000000000000;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_224B2993C();
        v28 = v51;
      }

      sub_224A58C3C(v26, v28);
      *(a2 + v23) = v28;
    }

    swift_endAccess();
    v29 = OBJC_IVAR____TtC10ChronoCore42MobilePlaceholderReloadConfigurationPolicy__lock_badExtensionDates;
    swift_beginAccess();
    v30 = sub_224A3E7EC(v21);
    if (v31)
    {
      v32 = v30;
      v33 = swift_isUniquelyReferenced_nonNull_native();
      v34 = *(a2 + v29);
      v51 = v34;
      *(a2 + v29) = 0x8000000000000000;
      if (!v33)
      {
        sub_224B29914();
        v34 = v51;
      }

      v35 = *(v34 + 56);
      v36 = sub_224DAC378();
      v37 = *(v36 - 8);
      v38 = v35 + *(v37 + 72) * v32;
      v7 = v41;
      (*(v37 + 32))(v41, v38, v36);
      sub_224B1E1D8(v32, v34);
      *(a2 + v29) = v34;

      (*(v37 + 56))(v7, 0, 1, v36);
      a1 = v40;
    }

    else
    {
      v16 = sub_224DAC378();
      (*(*(v16 - 8) + 56))(v7, 1, 1, v16);
    }

    sub_224A3311C(v7, &qword_27D6F3948, &qword_224DB5C10);
    swift_endAccess();

    v10 = v19;
    v8 = v43;
    v11 = v44;
    v15 = v42;
  }

  v17 = v10;
  v18 = v11;
  v19 = v10;
  if (v11)
  {
LABEL_15:
    v20 = (v18 - 1) & v18;
    v21 = *(*(a1 + 48) + ((v19 << 9) | (8 * __clz(__rbit64(v18)))));
    if (!v21)
    {
      goto LABEL_27;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v19 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v19 >= v15)
    {
      goto LABEL_27;
    }

    v18 = *(v8 + 8 * v19);
    ++v17;
    if (v18)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

void sub_224CFD134(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3948, &qword_224DB5C10);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v23 - v6;
  v8 = OBJC_IVAR____TtC10ChronoCore42MobilePlaceholderReloadConfigurationPolicy__lock_extensionFailureRetryCounts;
  swift_beginAccess();
  v9 = *(a1 + v8);
  if (*(v9 + 16))
  {

    v10 = sub_224A3E7EC(a2);
    if (v11)
    {
      v12 = *(*(v9 + 56) + 8 * v10);
    }

    else
    {
      v12 = 3;
    }
  }

  else
  {
    v12 = 3;
  }

  v13 = v12 - 1;
  if (__OFSUB__(v12, 1))
  {
    __break(1u);
  }

  else if (v12 >= 1)
  {
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *(a1 + v8);
    *(a1 + v8) = 0x8000000000000000;
    sub_224A8A0B0(v13 & ~(v13 >> 63), a2, isUniquelyReferenced_nonNull_native);
    *(a1 + v8) = v24;
    swift_endAccess();
    if (v13 <= 0)
    {
      v15 = a2;
      v16 = sub_224DAB228();
      v17 = sub_224DAF288();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        *v18 = 138543362;
        *(v18 + 4) = v15;
        *v19 = v15;
        v20 = v15;
        _os_log_impl(&dword_224A2F000, v16, v17, "%{public}@ Disallowing reloads due to extensive failures", v18, 0xCu);
        sub_224A3311C(v19, &unk_27D6F69F0, &unk_224DB3900);
        MEMORY[0x22AA5EED0](v19, -1, -1);
        MEMORY[0x22AA5EED0](v18, -1, -1);
      }

      v21 = v15;
      sub_224DAC338();
      v22 = sub_224DAC378();
      (*(*(v22 - 8) + 56))(v7, 0, 1, v22);
      swift_beginAccess();
      sub_224A83A8C(v7, v21);
      swift_endAccess();
    }
  }
}

void sub_224CFD3E8(uint64_t a1@<X0>, uint64_t a2@<X1>, BOOL *a3@<X8>)
{
  v6 = OBJC_IVAR____TtC10ChronoCore42MobilePlaceholderReloadConfigurationPolicy__lock_extensionFailureRetryCounts;
  swift_beginAccess();
  v7 = *(a1 + v6);
  if (!*(v7 + 16))
  {
    goto LABEL_5;
  }

  v8 = sub_224A3E7EC(a2);
  if ((v9 & 1) == 0)
  {

LABEL_5:
    v11 = 1;
    goto LABEL_6;
  }

  v10 = *(*(v7 + 56) + 8 * v8);

  v11 = v10 > 0;
LABEL_6:
  *a3 = v11;
}

uint64_t sub_224CFD498(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, void *a5)
{
  v103 = a4;
  v9 = sub_224DACB08();
  MEMORY[0x28223BE20](v9 - 8, v10);
  v101 = &v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_224DA9878();
  v94 = *(v12 - 8);
  v95 = v12;
  MEMORY[0x28223BE20](v12, v13);
  v93 = &v89 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v89 - v18;
  v20 = sub_224DACB28();
  v99 = *(v20 - 8);
  v100 = v20;
  v22 = MEMORY[0x28223BE20](v20, v21);
  v97 = &v89 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v24);
  v98 = &v89 - v25;
  v105 = sub_224DACB98();
  v108 = *(v105 - 8);
  v27 = MEMORY[0x28223BE20](v105, v26);
  v29 = &v89 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v27, v30);
  v106 = &v89 - v32;
  v34 = MEMORY[0x28223BE20](v31, v33);
  v36 = &v89 - v35;
  MEMORY[0x28223BE20](v34, v37);
  v104 = (&v89 - v38);
  v39 = sub_224DABD68();
  v109 = *(v39 - 8);
  MEMORY[0x28223BE20](v39, v40);
  v107 = &v89 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a3 isRemote])
  {
    v42 = sub_224DACC88();
    (*(*(v42 - 8) + 56))(a1, 1, 1, v42);
    v43 = *MEMORY[0x277CF98A8];
    v44 = *(v109 + 104);

    return v44(a2, v43, v39);
  }

  else
  {
    v96 = v39;
    v46 = sub_224CFE6D0(a5);
    if (!v46)
    {
      sub_224DAE1E8();
      v73 = *MEMORY[0x277CFA138];
      swift_beginAccess();
      (*(v16 + 16))(v19, &a3[v73], v15);
      sub_224DAE1C8();
      (*(v16 + 8))(v19, v15);
      v74 = sub_224DACC88();
      (*(*(v74 - 8) + 56))(a1, 1, 1, v74);
      return (*(v109 + 104))(a2, *MEMORY[0x277CF98B0], v96);
    }

    v90 = v16;
    v91 = a1;
    v92 = a2;
    v48 = v102;
    v49 = *&v102[OBJC_IVAR____TtC10ChronoCore42MobilePlaceholderReloadConfigurationPolicy__lock];
    v50 = MEMORY[0x28223BE20](v46, v47);
    *(&v89 - 2) = v48;
    *(&v89 - 1) = a3;
    MEMORY[0x28223BE20](v50, v51);
    *(&v89 - 2) = sub_224CFE9CC;
    *(&v89 - 1) = v52;
    os_unfair_lock_lock(v49 + 4);
    sub_224A7D63C();
    os_unfair_lock_unlock(v49 + 4);
    v55 = MEMORY[0x28223BE20](v53, v54);
    *(&v89 - 2) = v48;
    *(&v89 - 1) = a3;
    MEMORY[0x28223BE20](v55, v56);
    *(&v89 - 2) = sub_224CFE9E8;
    *(&v89 - 1) = v57;
    os_unfair_lock_lock(v49 + 4);
    sub_224CFEA4C(v110);
    os_unfair_lock_unlock(v49 + 4);
    if (v110[0])
    {
      v58 = v106;
      sub_224DACC68();
      v59 = v108;
      v60 = *(v108 + 104);
      v61 = v105;
      v60(v29, *MEMORY[0x277CF9BF0], v105);
      v62 = sub_224DACB88();
      v63 = *(v59 + 8);
      v63(v29, v61);
      v102 = v63;
      v63(v58, v61);
      v64 = v104;
      if (v62 & 1) != 0 || (v65 = v106, sub_224DACC68(), v60(v29, *MEMORY[0x277CF9B60], v61), v66 = sub_224DACB88(), v67 = v102, (v102)(v29, v61), v67(v65, v61), (v66))
      {
        v68 = swift_allocObject();
        *(v68 + 16) = 0xD000000000000019;
        *(v68 + 24) = 0x8000000224DC58C0;
        *v64 = v68;
        v60(v64, *MEMORY[0x277CF9B70], v61);
        v90 = sub_224DACBB8();
        v69 = MEMORY[0x277CF98B8];
        v70 = MEMORY[0x277CF9B50];
        v71 = v61;
        v72 = v64;
      }

      else
      {
        sub_224DACC68();
        result = sub_224DACBB8();
        if (__OFSUB__(result, 1))
        {
          __break(1u);
          return result;
        }

        v90 = (result - 1) & ~((result - 1) >> 63);
        v69 = MEMORY[0x277CF98B8];
        v70 = MEMORY[0x277CF9B50];
        v72 = v104;
        v71 = v105;
      }

      v81 = v98;
    }

    else
    {
      sub_224DAE1E8();
      v75 = *MEMORY[0x277CFA138];
      swift_beginAccess();
      v76 = v90;
      (*(v90 + 16))(v19, &a3[v75], v15);
      sub_224DAE1C8();
      (*(v76 + 8))(v19, v15);
      sub_224DACC68();
      v77 = v108;
      v78 = v105;
      v79 = (*(v108 + 88))(v36, v105);
      v80 = *MEMORY[0x277CF9B80];
      v81 = v98;
      v82 = v104;
      if (v79 == v80)
      {
        v102 = *(v77 + 8);
        (v102)(v36, v78);
        sub_224DACC68();
      }

      else
      {
        v83 = swift_allocBox();
        sub_224DACC68();
        *v82 = v83;
        (*(v77 + 104))(v82, v80, v78);
        v102 = *(v77 + 8);
        (v102)(v36, v78);
      }

      v90 = sub_224DACBF8();
      v84 = v93;
      sub_224DA9868();
      sub_224DA9768();
      (*(v94 + 8))(v84, v95);
      v69 = MEMORY[0x277CF98B0];
      v70 = MEMORY[0x277CF9B58];
      v72 = v104;
      v71 = v105;
    }

    v86 = v99;
    v85 = v100;
    (*(v99 + 104))(v81, *v70, v100);
    (*(v109 + 104))(v107, *v69, v96);
    (*(v86 + 16))(v97, v81, v85);
    sub_224DACC08();
    (*(v108 + 16))(v106, v72, v71);
    sub_224DACBD8();
    sub_224DACC28();
    v87 = v91;
    sub_224DACC18();
    (*(v86 + 8))(v81, v85);
    (v102)(v72, v71);
    v88 = sub_224DACC88();
    (*(*(v88 - 8) + 56))(v87, 0, 1, v88);
    return (*(v109 + 32))(v92, v107, v96);
  }
}

uint64_t sub_224CFDFB0()
{
  v1 = OBJC_IVAR____TtC10ChronoCore42MobilePlaceholderReloadConfigurationPolicy_logger;
  v2 = sub_224DAB258();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MobilePlaceholderReloadConfigurationPolicy(uint64_t a1)
{
  result = qword_281352310;
  if (!qword_281352310)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_224CFE0D0(uint64_t a1)
{
  result = sub_224DAB258();
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

uint64_t sub_224CFE1EC@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_224DA93E8();
    if (v10)
    {
      v11 = sub_224DA9408();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_224DA93F8();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_224DA93E8();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_224DA9408();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_224DA93F8();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_224CFE41C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x277D85DE8];
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
    v10 = sub_224CFE618(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_224A78024(a3, a4);
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
  sub_224CFE1EC(v13, a3, a4, &v12);
  v10 = v4;
  sub_224A78024(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

void *sub_224CFE5D4@<X0>(void *(*a1)(uint64_t *__return_ptr)@<X1>, _BYTE *a2@<X8>)
{
  result = a1(&v5);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_224CFE618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_224DA93E8();
  v11 = result;
  if (result)
  {
    result = sub_224DA9408();
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

  sub_224DA93F8();
  sub_224CFE1EC(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL sub_224CFE6D0(void *a1)
{
  v2 = sub_224DAE6E8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 domain];
  v8 = sub_224DAEE18();
  v10 = v9;

  v11 = [a1 code];
  if (sub_224DAEE18() == v8 && v12 == v10)
  {
  }

  else
  {
    v14 = sub_224DAFD88();

    if ((v14 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  (*(v3 + 104))(v6, *MEMORY[0x277CE3C10], v2);
  v15 = sub_224DAE6D8();
  (*(v3 + 8))(v6, v2);
  if (v15 == v11)
  {
    goto LABEL_17;
  }

LABEL_9:
  if (sub_224DAEE18() == v8 && v16 == v10)
  {
  }

  else
  {
    v18 = sub_224DAFD88();

    if ((v18 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  (*(v3 + 104))(v6, *MEMORY[0x277CE3C60], v2);
  v19 = sub_224DAE6D8();
  (*(v3 + 8))(v6, v2);
  if (v19 == v11)
  {
LABEL_17:

    return 0;
  }

LABEL_18:
  if (sub_224DAEE18() == v8 && v21 == v10)
  {
  }

  else
  {
    v22 = sub_224DAFD88();

    if ((v22 & 1) == 0)
    {

      return 1;
    }
  }

  (*(v3 + 104))(v6, *MEMORY[0x277CE3BF0], v2);
  v23 = sub_224DAE6D8();

  (*(v3 + 8))(v6, v2);
  return v23 != v11;
}

uint64_t sub_224CFEA04(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

char *sub_224CFEA64(uint64_t a1)
{
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v2 = *(v36 - 8);
  MEMORY[0x28223BE20](v36, v3);
  v35 = &v30 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F7140, &unk_224DC00E0);
  result = sub_224DAFB88();
  v6 = result;
  v7 = 0;
  v37 = a1;
  v10 = *(a1 + 64);
  v9 = a1 + 64;
  v8 = v10;
  v11 = 1 << *(v9 - 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v8;
  v14 = (v11 + 63) >> 6;
  v31 = result + 64;
  v32 = v2 + 16;
  v33 = result;
  v34 = v2;
  v30 = v2 + 32;
  v15 = v36;
  if ((v12 & v8) != 0)
  {
    while (1)
    {
      v16 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_10:
      v19 = v16 | (v7 << 6);
      v20 = v37;
      v21 = v34;
      v22 = v35;
      v23 = *(v34 + 72) * v19;
      (*(v34 + 16))(v35, *(v37 + 48) + v23, v15);
      v24 = *(*(v20 + 56) + 8 * v19);
      v25 = *(v24 + *(*v24 + 104));
      *&v31[(v19 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v19;
      v26 = *(v21 + 32);
      v6 = v33;
      result = v26(*(v33 + 6) + v23, v22, v15);
      *(*(v6 + 7) + 8 * v19) = v25;
      v27 = *(v6 + 2);
      v28 = __OFADD__(v27, 1);
      v29 = v27 + 1;
      if (v28)
      {
        break;
      }

      *(v6 + 2) = v29;
      result = v25;
      if (!v13)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v7 >= v14)
      {
        return v6;
      }

      v18 = *(v9 + 8 * v7);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v13 = (v18 - 1) & v18;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_224CFECC0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v3 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v66 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v7);
  v59 = &v56 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5908, &qword_224DBBDD8);
  v11 = MEMORY[0x28223BE20](v9 - 8, v10);
  v13 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v14);
  v62 = &v56 - v15;
  v16 = sub_224DA20F8(MEMORY[0x277D84F90]);
  v17 = *(a1 + 64);
  v57 = a1 + 64;
  v18 = 1 << *(a1 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v17;
  v56 = (v18 + 63) >> 6;
  v63 = v3 + 16;
  v64 = v3;
  v65 = (v3 + 32);
  v60 = a1;
  v61 = (v3 + 8);

  v21 = 0;
  v58 = v13;
  while (v20)
  {
    v22 = v21;
LABEL_15:
    v26 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
    v27 = v26 | (v22 << 6);
    v28 = v60;
    v29 = v64;
    (*(v64 + 16))(v59, *(v60 + 48) + *(v64 + 72) * v27, v2);
    v30 = *(*(v28 + 56) + 8 * v27);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5910, qword_224DC00F0);
    v32 = *(v31 + 48);
    v13 = v58;
    (*(v29 + 32))();
    *&v13[v32] = v30;
    (*(*(v31 - 8) + 56))(v13, 0, 1, v31);

    v24 = v22;
    v25 = v62;
LABEL_16:
    sub_224D00B28(v13, v25);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5910, qword_224DC00F0);
    if ((*(*(v33 - 8) + 48))(v25, 1, v33) == 1)
    {

      return v16;
    }

    v34 = v24;
    v35 = *(v25 + *(v33 + 48));
    v36 = v66;
    v37 = v2;
    (*v65)(v66, v25, v2);
    v38 = [*(v35 + *(*v35 + 104)) controlItems];
    sub_224DAF5D8();
    v39 = sub_224DAF008();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v67 = v16;
    v42 = sub_224A683FC(v36);
    v43 = v16[2];
    v44 = (v41 & 1) == 0;
    v45 = v43 + v44;
    if (__OFADD__(v43, v44))
    {
      goto LABEL_31;
    }

    v46 = v41;
    if (v16[3] >= v45)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v16 = v67;
        if (v41)
        {
          goto LABEL_4;
        }
      }

      else
      {
        sub_224B28D44();
        v16 = v67;
        if (v46)
        {
          goto LABEL_4;
        }
      }
    }

    else
    {
      sub_224B16B90(v45, isUniquelyReferenced_nonNull_native);
      v47 = sub_224A683FC(v66);
      if ((v46 & 1) != (v48 & 1))
      {
        goto LABEL_33;
      }

      v42 = v47;
      v16 = v67;
      if (v46)
      {
LABEL_4:
        *(v16[7] + 8 * v42) = v39;

        v2 = v37;
        (*v61)(v66, v37);
        goto LABEL_5;
      }
    }

    v16[(v42 >> 6) + 8] |= 1 << v42;
    v49 = v64;
    v50 = v66;
    (*(v64 + 16))(v16[6] + *(v64 + 72) * v42, v66, v37);
    *(v16[7] + 8 * v42) = v39;
    v2 = v37;

    (*(v49 + 8))(v50, v37);
    v51 = v16[2];
    v52 = __OFADD__(v51, 1);
    v53 = v51 + 1;
    if (v52)
    {
      goto LABEL_32;
    }

    v16[2] = v53;
LABEL_5:
    v21 = v34;
  }

  if (v56 <= v21 + 1)
  {
    v23 = v21 + 1;
  }

  else
  {
    v23 = v56;
  }

  v24 = v23 - 1;
  v25 = v62;
  while (1)
  {
    v22 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v22 >= v56)
    {
      v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5910, qword_224DC00F0);
      (*(*(v54 - 8) + 56))(v13, 1, 1, v54);
      v20 = 0;
      goto LABEL_16;
    }

    v20 = *(v57 + 8 * v22);
    ++v21;
    if (v20)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  result = sub_224DAFDD8();
  __break(1u);
  return result;
}

uint64_t sub_224CFF280(id *a1, uint64_t a2)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v34 = &v34 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5B90, &qword_224DB5C50);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v34 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  v14 = MEMORY[0x28223BE20](v12 - 8, v13);
  v36 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14, v16);
  v19 = &v34 - v18;
  MEMORY[0x28223BE20](v17, v20);
  v22 = &v34 - v21;
  v23 = [*a1 controlIdentity];
  v24 = [v23 extensionIdentity];

  v25 = *MEMORY[0x277CFA130];
  swift_beginAccess();
  sub_224A3796C(v24 + v25, v22, &unk_27D6F5060, &qword_224DB5620);

  (*(v4 + 16))(v19, v35, v3);
  (*(v4 + 56))(v19, 0, 1, v3);
  v26 = *(v8 + 56);
  sub_224A3796C(v22, v11, &unk_27D6F5060, &qword_224DB5620);
  sub_224A3796C(v19, &v11[v26], &unk_27D6F5060, &qword_224DB5620);
  v27 = *(v4 + 48);
  if (v27(v11, 1, v3) != 1)
  {
    sub_224A3796C(v11, v36, &unk_27D6F5060, &qword_224DB5620);
    if (v27(&v11[v26], 1, v3) != 1)
    {
      v29 = &v11[v26];
      v30 = v34;
      (*(v4 + 32))(v34, v29, v3);
      sub_224A33088(&unk_281351960, &qword_27D6F3900, &unk_224DB4640, MEMORY[0x277CF9FB0]);
      v31 = v36;
      v28 = sub_224DAEDD8();
      v32 = *(v4 + 8);
      v32(v30, v3);
      sub_224A3311C(v19, &unk_27D6F5060, &qword_224DB5620);
      sub_224A3311C(v22, &unk_27D6F5060, &qword_224DB5620);
      v32(v31, v3);
      sub_224A3311C(v11, &unk_27D6F5060, &qword_224DB5620);
      return v28 & 1;
    }

    sub_224A3311C(v19, &unk_27D6F5060, &qword_224DB5620);
    sub_224A3311C(v22, &unk_27D6F5060, &qword_224DB5620);
    (*(v4 + 8))(v36, v3);
    goto LABEL_6;
  }

  sub_224A3311C(v19, &unk_27D6F5060, &qword_224DB5620);
  sub_224A3311C(v22, &unk_27D6F5060, &qword_224DB5620);
  if (v27(&v11[v26], 1, v3) != 1)
  {
LABEL_6:
    sub_224A3311C(v11, &qword_27D6F5B90, &qword_224DB5C50);
    v28 = 0;
    return v28 & 1;
  }

  sub_224A3311C(v11, &unk_27D6F5060, &qword_224DB5620);
  v28 = 1;
  return v28 & 1;
}

BOOL sub_224CFF76C(uint64_t a1)
{
  v49 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F63D0, &unk_224DC00D0);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v45 = &v43 - v3;
  v4 = sub_224DAC2B8();
  v46 = *(v4 - 8);
  v47 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v43 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6140, qword_224DBB6B0);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v43 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  v12 = *(v11 - 8);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v44 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v43 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3380, &qword_224DB3598);
  MEMORY[0x28223BE20](v19 - 8, v20);
  v22 = &v43 - v21;
  v23 = type metadata accessor for ControlHostDescriptorPredicate(0);
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23, v25);
  v27 = &v43 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_224A3796C(v49, v22, &qword_27D6F3380, &qword_224DB3598);
  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
    v28 = &qword_27D6F3380;
    v29 = &qword_224DB3598;
  }

  else
  {
    sub_224D00A68(v22, v27);
    sub_224A3796C(&v27[*(v23 + 28)], v10, &unk_27D6F6140, qword_224DBB6B0);
    if ((*(v12 + 48))(v10, 1, v11) == 1)
    {
      v30 = v48;
      sub_224A3311C(v10, &unk_27D6F6140, qword_224DBB6B0);
    }

    else
    {
      (*(v12 + 32))(v18, v10, v11);
      v30 = v48;
      v31 = [v48 controlIdentity];
      v32 = [v31 extensionIdentity];

      v33 = *MEMORY[0x277CFA138];
      swift_beginAccess();
      v34 = v44;
      (*(v12 + 16))(v44, &v32[v33], v11);

      sub_224A33088(&unk_2813518F0, &unk_27D6F3920, &qword_224DB35B0, MEMORY[0x277CF9FB0]);
      LOBYTE(v33) = sub_224DAEDD8();
      v35 = *(v12 + 8);
      v35(v34, v11);
      v35(v18, v11);
      if ((v33 & 1) == 0)
      {
        sub_224D00ACC(v27);
        return 0;
      }
    }

    v22 = v45;
    sub_224A3796C(&v27[*(v23 + 32)], v45, &unk_27D6F63D0, &unk_224DC00D0);
    v37 = v46;
    v36 = v47;
    if ((*(v46 + 48))(v22, 1, v47) != 1)
    {
      v39 = v43;
      (*(v37 + 32))(v43, v22, v36);
      v40 = [v30 controlIdentity];
      v41 = sub_224DAC2A8();
      sub_224AB43D8();
      v42 = sub_224DAF6A8();
      (*(v37 + 8))(v39, v36);
      sub_224D00ACC(v27);

      return (v42 & 1) != 0;
    }

    sub_224D00ACC(v27);
    v28 = &unk_27D6F63D0;
    v29 = &unk_224DC00D0;
  }

  sub_224A3311C(v22, v28, v29);
  return 1;
}

uint64_t sub_224CFFD3C(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_224A683FC(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(a2 + 56) + 8 * v3);
  v6 = [*(v5 + *(*v5 + 104)) controlItems];
  sub_224DAF5D8();
  v7 = sub_224DAF008();

  return v7;
}

BOOL sub_224CFFE0C(uint64_t a1)
{
  v102 = a1;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v93 = *(v101 - 8);
  MEMORY[0x28223BE20](v101, v1);
  v84 = &v84 - v2;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F33C8, &qword_224DB3600);
  MEMORY[0x28223BE20](v87, v3);
  v88 = &v84 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  v7 = MEMORY[0x28223BE20](v5 - 8, v6);
  v85 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v99 = &v84 - v11;
  MEMORY[0x28223BE20](v10, v12);
  v92 = &v84 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F63D0, &unk_224DC00D0);
  MEMORY[0x28223BE20](v14 - 8, v15);
  v95 = &v84 - v16;
  v98 = sub_224DAC2B8();
  v100 = *(v98 - 8);
  MEMORY[0x28223BE20](v98, v17);
  v96 = &v84 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_224DAA428();
  v90 = *(v19 - 8);
  v91 = v19;
  MEMORY[0x28223BE20](v19, v20);
  v89 = &v84 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3390, &qword_224DB35B8);
  MEMORY[0x28223BE20](v22 - 8, v23);
  v25 = &v84 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F30E0, &unk_224DB2AD0);
  v27 = *(v26 - 8);
  v29 = MEMORY[0x28223BE20](v26, v28);
  v31 = &v84 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29, v32);
  v94 = &v84 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3380, &qword_224DB3598);
  MEMORY[0x28223BE20](v34 - 8, v35);
  v37 = &v84 - v36;
  v38 = type metadata accessor for ControlHostDescriptorPredicate(0);
  v39 = *(v38 - 8);
  MEMORY[0x28223BE20](v38, v40);
  v42 = &v84 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_224A3796C(v102, v37, &qword_27D6F3380, &qword_224DB3598);
  v43 = *(v39 + 48);
  v102 = v38;
  if (v43(v37, 1, v38) == 1)
  {
    v44 = &qword_27D6F3380;
    v45 = &qword_224DB3598;
    v46 = v37;
LABEL_24:
    sub_224A3311C(v46, v44, v45);
    return 1;
  }

  sub_224D00A68(v37, v42);
  v86 = v42;
  sub_224A3796C(v42, v25, &qword_27D6F3390, &qword_224DB35B8);
  if ((*(v27 + 48))(v25, 1, v26) == 1)
  {
    sub_224A3311C(v25, &qword_27D6F3390, &qword_224DB35B8);
    v48 = v98;
    v47 = v99;
    v49 = v97;
  }

  else
  {
    v50 = v94;
    (*(v27 + 32))(v94, v25, v26);
    v49 = v97;
    sub_224DAA238();
    sub_224A33088(&qword_27D6F52C0, &qword_27D6F30E0, &unk_224DB2AD0, MEMORY[0x277CF9FB8]);
    sub_224DAEFA8();
    sub_224DAEFA8();
    v48 = v98;
    if (v105 == v103 && v106 == v104)
    {
      v51 = *(v27 + 8);
      v51(v31, v26);
      v51(v50, v26);

      v47 = v99;
    }

    else
    {
      v52 = sub_224DAFD88();
      v53 = *(v27 + 8);
      v53(v31, v26);
      v53(v50, v26);

      v47 = v99;
      if ((v52 & 1) == 0)
      {
        v69 = v86;
        goto LABEL_34;
      }
    }
  }

  v54 = v101;
  v55 = v102;
  v56 = v86;
  v57 = v86[*(v102 + 24)];
  v58 = v100;
  if (v57 == 3)
  {
    goto LABEL_16;
  }

  sub_224DAA1F8();
  if (!v57)
  {
LABEL_15:

    goto LABEL_16;
  }

  if (v57 != 1)
  {
    if (!v59)
    {
      goto LABEL_26;
    }

    goto LABEL_15;
  }

  if (v59)
  {

LABEL_26:
    v69 = v56;
LABEL_34:
    sub_224D00ACC(v69);
    return 0;
  }

LABEL_16:
  if (*(v56 + *(v55 + 20)) > 1u)
  {
    if (*(v56 + *(v55 + 20)) != 2)
    {
      goto LABEL_22;
    }

    v60 = MEMORY[0x277CFA038];
  }

  else
  {
    if (!*(v56 + *(v55 + 20)))
    {
      goto LABEL_22;
    }

    v60 = MEMORY[0x277CFA040];
  }

  v61 = v89;
  v62 = v90;
  v63 = v48;
  v64 = v91;
  (*(v90 + 104))(v89, *v60, v91);
  sub_224C16D98();
  sub_224DAEFA8();
  sub_224DAEFA8();
  v65 = v61;
  v66 = v64;
  v48 = v63;
  v58 = v100;
  v54 = v101;
  (*(v62 + 8))(v65, v66);
  v55 = v102;
  if (v105 != v103)
  {
    goto LABEL_26;
  }

LABEL_22:
  v67 = v95;
  sub_224A3796C(v56 + *(v55 + 32), v95, &unk_27D6F63D0, &unk_224DC00D0);
  if ((*(v58 + 48))(v67, 1, v48) == 1)
  {
    sub_224D00ACC(v56);
    v44 = &unk_27D6F63D0;
    v45 = &unk_224DC00D0;
    v46 = v67;
    goto LABEL_24;
  }

  (*(v58 + 32))(v96, v67, v48);
  v70 = v92;
  sub_224DAC288();
  v71 = v93;
  (*(v93 + 16))(v47, v49 + qword_281365418, v54);
  (*(v71 + 56))(v47, 0, 1, v54);
  v72 = *(v87 + 48);
  v73 = v58;
  v74 = v48;
  v75 = v88;
  sub_224A3796C(v70, v88, &qword_27D6F56C0, &unk_224DB3580);
  v102 = v72;
  sub_224A3796C(v47, v75 + v72, &qword_27D6F56C0, &unk_224DB3580);
  v76 = v47;
  v77 = *(v71 + 48);
  if (v77(v75, 1, v54) == 1)
  {
    sub_224A3311C(v76, &qword_27D6F56C0, &unk_224DB3580);
    sub_224A3311C(v70, &qword_27D6F56C0, &unk_224DB3580);
    (*(v73 + 8))(v96, v74);
    sub_224D00ACC(v86);
    if (v77(v75 + v102, 1, v54) == 1)
    {
      v44 = &qword_27D6F56C0;
      v45 = &unk_224DB3580;
      v46 = v75;
      goto LABEL_24;
    }

    goto LABEL_32;
  }

  v78 = v85;
  sub_224A3796C(v75, v85, &qword_27D6F56C0, &unk_224DB3580);
  v79 = v102;
  if (v77(v75 + v102, 1, v54) == 1)
  {
    sub_224A3311C(v99, &qword_27D6F56C0, &unk_224DB3580);
    sub_224A3311C(v92, &qword_27D6F56C0, &unk_224DB3580);
    (*(v73 + 8))(v96, v74);
    sub_224D00ACC(v86);
    (*(v93 + 8))(v78, v54);
LABEL_32:
    sub_224A3311C(v75, &qword_27D6F33C8, &qword_224DB3600);
    return 0;
  }

  v80 = v93;
  v81 = v84;
  (*(v93 + 32))(v84, v75 + v79, v54);
  sub_224A33088(&qword_281351870, &unk_27D6F30D0, &unk_224DB2AC0, MEMORY[0x277CFA020]);
  v82 = sub_224DAEDD8();
  v83 = *(v80 + 8);
  v83(v81, v54);
  sub_224A3311C(v99, &qword_27D6F56C0, &unk_224DB3580);
  sub_224A3311C(v92, &qword_27D6F56C0, &unk_224DB3580);
  (*(v73 + 8))(v96, v74);
  sub_224D00ACC(v86);
  v83(v78, v54);
  sub_224A3311C(v75, &qword_27D6F56C0, &unk_224DB3580);
  return (v82 & 1) != 0;
}

uint64_t type metadata accessor for ControlHostDescriptorPredicate(uint64_t a1)
{
  result = qword_281353B08;
  if (!qword_281353B08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_224D00A68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ControlHostDescriptorPredicate(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_224D00ACC(uint64_t a1)
{
  v2 = type metadata accessor for ControlHostDescriptorPredicate(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_224D00B28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5908, &qword_224DBBDD8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_224D00BC0(uint64_t a1)
{
  sub_224C16F84(319, &qword_281351988, &qword_27D6F30E0, &unk_224DB2AD0);
  if (v1 <= 0x3F)
  {
    sub_224C1702C(319, &qword_281359058, &type metadata for HostActivationScope);
    if (v2 <= 0x3F)
    {
      sub_224C1702C(319, &qword_28135C2E8, &type metadata for HostLocality);
      if (v3 <= 0x3F)
      {
        sub_224C16F84(319, &qword_2813518B8, &unk_27D6F3920, &qword_224DB35B0);
        if (v4 <= 0x3F)
        {
          sub_224D00CDC(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_224D00CDC(uint64_t a1)
{
  if (!qword_281350DF8)
  {
    sub_224DAC2B8();
    v1 = sub_224DAF728();
    if (!v2)
    {
      atomic_store(v1, &qword_281350DF8);
    }
  }
}

uint64_t sub_224D00D34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4620, &qword_224DB34D0);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = v23 - v10;
  sub_224A3796C(a3, v23 - v10, &unk_27D6F4620, &qword_224DB34D0);
  v12 = sub_224DAF128();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_224A3311C(v11, &unk_27D6F4620, &qword_224DB34D0);
  }

  else
  {
    sub_224DAF118();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_224DAF0C8();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_224DAEE48() + 32;

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v20 = 0;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      sub_224A3311C(a3, &unk_27D6F4620, &qword_224DB34D0);

      return v21;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_224A3311C(a3, &unk_27D6F4620, &qword_224DB34D0);
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

void sub_224D00FE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v5 = sub_224DAEFF8();
    if (a2)
    {
LABEL_3:
      v6 = sub_224DA9518();
      goto LABEL_6;
    }
  }

  else
  {
    v5 = 0;
    if (a2)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
LABEL_6:
  v7 = v6;
  (*(a3 + 16))(a3, v5);
}

void *sub_224D0107C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  __swift_destroy_boxed_opaque_existential_1(v0 + 17);
  __swift_destroy_boxed_opaque_existential_1(v0 + 22);
  __swift_destroy_boxed_opaque_existential_1(v0 + 27);
  __swift_destroy_boxed_opaque_existential_1(v0 + 32);
  __swift_destroy_boxed_opaque_existential_1(v0 + 37);
  __swift_destroy_boxed_opaque_existential_1(v0 + 42);
  __swift_destroy_boxed_opaque_existential_1(v0 + 47);

  return v0;
}

uint64_t sub_224D010EC()
{
  sub_224D0107C();

  return swift_deallocClassInstance();
}

void sub_224D01144(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10ChronoCore14ControlsServer__listener;
  *&v1[OBJC_IVAR____TtC10ChronoCore14ControlsServer__listener] = 0;
  v4 = MEMORY[0x277D84FA0];
  *&v1[OBJC_IVAR____TtC10ChronoCore14ControlsServer__subscriptions] = MEMORY[0x277D84FA0];
  v5 = OBJC_IVAR____TtC10ChronoCore14ControlsServer__clientsSetLock;
  type metadata accessor for UnfairLock();
  v6 = swift_allocObject();
  v7 = swift_slowAlloc();
  *v7 = 0;
  *(v6 + 16) = v7;
  *&v1[v5] = v6;
  *&v1[OBJC_IVAR____TtC10ChronoCore14ControlsServer__clientsSetLock_clients] = v4;
  *&v1[OBJC_IVAR____TtC10ChronoCore14ControlsServer__services] = a1;
  v8 = objc_opt_self();

  v9 = sub_224DAEDE8();
  v10 = [v8 serialQueueTargetingSharedWorkloop:v9 withQoS:33];

  *&v1[OBJC_IVAR____TtC10ChronoCore14ControlsServer__queue] = v10;
  v11 = *&v1[v3];
  *&v1[v3] = 0;

  v21.receiver = v1;
  v21.super_class = type metadata accessor for ControlsServer();
  v12 = objc_msgSendSuper2(&v21, sel_init);
  v19[2] = v12;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_224D0F108;
  *(v13 + 24) = v19;
  aBlock[4] = sub_224A75AA4;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_224A37E38;
  aBlock[3] = &block_descriptor_159;
  v14 = _Block_copy(aBlock);
  v15 = objc_opt_self();
  v16 = v12;

  v17 = [v15 listenerWithConfigurator_];

  _Block_release(v14);

  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }

  else
  {
    v18 = *&v16[OBJC_IVAR____TtC10ChronoCore14ControlsServer__listener];
    *&v16[OBJC_IVAR____TtC10ChronoCore14ControlsServer__listener] = v17;
  }
}

id sub_224D013C4(void *a1, uint64_t a2)
{
  sub_224DAA368();
  v4 = sub_224DAEDE8();

  [a1 setDomain_];

  sub_224DAA318();
  v5 = sub_224DAEDE8();

  [a1 setService_];

  return [a1 setDelegate_];
}

id sub_224D01470()
{
  v1 = *&v0[OBJC_IVAR____TtC10ChronoCore14ControlsServer__listener];
  if (v1)
  {
    [v1 invalidate];
  }

  v3.receiver = v0;
  v3.super_class = type metadata accessor for ControlsServer();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

double sub_224D015B8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5090, &qword_224DB5C30);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v30 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F51B0, &unk_224DB4030);
  v32 = *(v6 - 8);
  v33 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v30 - v8;
  if (qword_281351658 != -1)
  {
    swift_once();
  }

  v10 = sub_224DAB258();
  __swift_project_value_buffer(v10, qword_281365060);
  v11 = sub_224DAB228();
  v12 = sub_224DAF2A8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v37[0] = v14;
    *v13 = 136446210;
    v15 = sub_224DAA318();
    v17 = sub_224A33F74(v15, v16, v37);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_224A2F000, v11, v12, "%{public}s begin listening for connections", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x22AA5EED0](v14, -1, -1);
    MEMORY[0x22AA5EED0](v13, -1, -1);
  }

  [*(v1 + OBJC_IVAR____TtC10ChronoCore14ControlsServer__listener) activate];
  v31 = *(v1 + OBJC_IVAR____TtC10ChronoCore14ControlsServer__services);
  sub_224A3317C(v31 + 96, v37);
  __swift_project_boxed_opaque_existential_1(v37, v38);
  sub_224DADA68();
  __swift_project_boxed_opaque_existential_1(v36, v36[3]);
  v18 = sub_224DAD178();
  v34 = *(v1 + OBJC_IVAR____TtC10ChronoCore14ControlsServer__queue);
  v19 = v34;
  v35 = v18;
  v20 = sub_224DAF358();
  (*(*(v20 - 8) + 56))(v5, 1, 1, v20);
  v21 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5200, &qword_224DBA810);
  sub_224A3B79C(0, &qword_281350A70, 0x277D85C78);
  v22 = MEMORY[0x277CBCD90];
  sub_224A33088(&qword_281350FF0, &qword_27D6F5200, &qword_224DBA810, MEMORY[0x277CBCD90]);
  sub_224B67CF4();
  sub_224DAB448();
  sub_224A3311C(v5, &qword_27D6F5090, &qword_224DB5C30);

  __swift_destroy_boxed_opaque_existential_1(v36);
  __swift_destroy_boxed_opaque_existential_1(v37);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_224A33088(&unk_2813511F0, &qword_27D6F51B0, &unk_224DB4030, MEMORY[0x277CBCD60]);
  v23 = v33;
  sub_224DAB488();

  (*(v32 + 8))(v9, v23);
  swift_beginAccess();
  sub_224DAB308();
  swift_endAccess();

  v24 = v31;
  sub_224A3317C(v31 + 16, v37);
  v26 = v38;
  v25 = v39;
  __swift_project_boxed_opaque_existential_1(v37, v38);
  v36[0] = (*(*(v25 + 8) + 16))(v26);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3378, &qword_224DC02D0);
  sub_224A33088(&qword_281351040, &qword_27D6F3378, &qword_224DC02D0, v22);
  sub_224DAB488();

  __swift_destroy_boxed_opaque_existential_1(v37);
  swift_beginAccess();
  sub_224DAB308();
  swift_endAccess();

  sub_224A3317C(v24 + 56, v37);
  v27 = v38;
  v28 = v39;
  __swift_project_boxed_opaque_existential_1(v37, v38);
  v36[0] = (*(v28 + 16))(v27, v28);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_224DAB488();

  __swift_destroy_boxed_opaque_existential_1(v37);
  swift_beginAccess();
  sub_224DAB308();
  swift_endAccess();

  return result;
}

char *sub_224D01C34(uint64_t a1, uint64_t a2)
{
  v2 = sub_224DAB728();
  MEMORY[0x28223BE20](v2 - 8, v3);
  v4 = sub_224DAE4F8();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  MEMORY[0x28223BE20](v7, v8);
  v10 = v16 - v9 + 24;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = result;
    sub_224A3317C(*&result[OBJC_IVAR____TtC10ChronoCore14ControlsServer__services] + 96, v17);
    __swift_project_boxed_opaque_existential_1(v17, v17[3]);
    sub_224DADA68();
    __swift_project_boxed_opaque_existential_1(v16, v16[3]);
    sub_224DAD168();
    sub_224DAE4D8();
    __swift_destroy_boxed_opaque_existential_1(v16);
    __swift_destroy_boxed_opaque_existential_1(v17);
    v13 = *&v12[OBJC_IVAR____TtC10ChronoCore14ControlsServer__clientsSetLock];
    v14 = *(v13 + 16);

    os_unfair_lock_lock(v14);
    sub_224D020D0(v12, v10);
    os_unfair_lock_unlock(*(v13 + 16));

    return (*(v5 + 8))(v10, v4);
  }

  return result;
}

void sub_224D020D0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v101 = *MEMORY[0x277D85DE8];
  v88 = sub_224DAB7B8();
  v6 = *(v88 - 8);
  MEMORY[0x28223BE20](v88, v7);
  v87 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_224DAB848();
  v9 = *(v86 - 8);
  MEMORY[0x28223BE20](v86, v10);
  v85 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC10ChronoCore14ControlsServer__clientsSetLock_clients;
  swift_beginAccess();
  v13 = *(a1 + v12);
  v89 = v9;
  v90 = v6;
  v91 = a2;
  if ((v13 & 0xC000000000000001) == 0)
  {
    v33 = *(v13 + 32);
    v34 = v33 & 0x3F;
    v21 = ((1 << v33) + 63) >> 6;
    v18 = 8 * v21;

    if (v34 > 0xD)
    {
      goto LABEL_41;
    }

LABEL_23:
    MEMORY[0x28223BE20](v35, v36);
    bzero(&v76 - ((v18 + 15) & 0x3FFFFFFFFFFFFFF0), v18);
    v37 = 0;
    v38 = 0;
    v39 = 1 << *(v13 + 32);
    v40 = -1;
    if (v39 < 64)
    {
      v40 = ~(-1 << v39);
    }

    v41 = v40 & *(v13 + 56);
    v42 = (v39 + 63) >> 6;
    v43 = OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__queue_needsSystemEnvironment;
    while (1)
    {
      if (!v41)
      {
        v46 = v38;
        while (1)
        {
          v38 = v46 + 1;
          if (__OFADD__(v46, 1))
          {
            goto LABEL_40;
          }

          if (v38 >= v42)
          {
            goto LABEL_37;
          }

          v47 = *(v13 + 56 + 8 * v38);
          ++v46;
          if (v47)
          {
            v41 = (v47 - 1) & v47;
            v45 = __clz(__rbit64(v47)) | (v38 << 6);
            goto LABEL_33;
          }
        }
      }

      v44 = __clz(__rbit64(v41));
      v41 &= v41 - 1;
      v45 = v44 | (v38 << 6);
LABEL_33:
      if (*(*(*(v13 + 48) + 8 * v45) + v43) == 1)
      {
        *(&v76 + ((v45 >> 3) & 0x1FFFFFFFFFFFFFF8) - ((v18 + 15) & 0x3FFFFFFFFFFFFFF0)) |= 1 << v45;
        if (__OFADD__(v37++, 1))
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_37:
    v14 = sub_224B05B34((&v76 - ((v18 + 15) & 0x3FFFFFFFFFFFFFF0)), v21, v37, v13);
    v32 = v14 & 0xC000000000000001;
    if ((v14 & 0xC000000000000001) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_38;
  }

  v84 = v2;
  v14 = MEMORY[0x277D84FA0];
  aBlock[0] = MEMORY[0x277D84FA0];

  v13 = sub_224DAF7E8();
  v15 = sub_224DAF878();
  if (!v15)
  {
LABEL_20:

    v3 = v84;
    v32 = v14 & 0xC000000000000001;
    if ((v14 & 0xC000000000000001) != 0)
    {
      goto LABEL_38;
    }

LABEL_45:
    if (!*(v14 + 16))
    {
      goto LABEL_47;
    }

    goto LABEL_46;
  }

  v16 = v15;
  type metadata accessor for ControlsClient();
  v17 = v16;
  v18 = MEMORY[0x277D84F68];
  v3 = &unk_27D6F6000;
  while (1)
  {
    v92 = v17;
    swift_dynamicCast();
    v19 = v93;
    if (v93[OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__queue_needsSystemEnvironment])
    {
      break;
    }

LABEL_5:
    v17 = sub_224DAF878();
    if (!v17)
    {
      goto LABEL_20;
    }
  }

  v20 = *(v14 + 16);
  if (*(v14 + 24) <= v20)
  {
    sub_224AE15E8(v20 + 1);
  }

  v14 = aBlock[0];
  v21 = v19;
  v22 = sub_224DAF698();
  v23 = v14 + 56;
  v24 = -1 << *(v14 + 32);
  v25 = v22 & ~v24;
  v26 = v25 >> 6;
  if (((-1 << v25) & ~*(v14 + 56 + 8 * (v25 >> 6))) != 0)
  {
    v27 = __clz(__rbit64((-1 << v25) & ~*(v14 + 56 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_19:
    *(v23 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    *(*(v14 + 48) + 8 * v27) = v19;
    ++*(v14 + 16);
    goto LABEL_5;
  }

  v28 = 0;
  v29 = (63 - v24) >> 6;
  while (++v26 != v29 || (v28 & 1) == 0)
  {
    v30 = v26 == v29;
    if (v26 == v29)
    {
      v26 = 0;
    }

    v28 |= v30;
    v31 = *(v23 + 8 * v26);
    if (v31 != -1)
    {
      v27 = __clz(__rbit64(~v31)) + (v26 << 6);
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_23;
  }

  v49 = swift_slowAlloc();
  v50 = sub_224D0A07C(v49, v21, v13, sub_224D02AF4, 0);
  if (v3)
  {

    MEMORY[0x22AA5EED0](v49, -1, -1);
    __break(1u);
  }

  else
  {
    v14 = v50;
    v3 = 0;

    MEMORY[0x22AA5EED0](v49, -1, -1);
    v32 = v14 & 0xC000000000000001;
    if ((v14 & 0xC000000000000001) == 0)
    {
      goto LABEL_45;
    }

LABEL_38:
    if (!sub_224DAF838())
    {
LABEL_47:

      return;
    }

LABEL_46:
    sub_224DAE4F8();
    sub_224D0EE58(&qword_281350C60, MEMORY[0x277CE3AB8], MEMORY[0x277CE3AC0]);
    v51 = sub_224DAED78();
    if (v3)
    {
      goto LABEL_47;
    }

    v82 = v52;
    v83 = v51;
    v84 = 0;
    if (v32)
    {
      sub_224DAF7E8();
      type metadata accessor for ControlsClient();
      sub_224D0EE58(&qword_27D6F65F0, type metadata accessor for ControlsClient, MEMORY[0x277D85378]);
      sub_224DAF1F8();
      v14 = v96;
      v53 = v97;
      v54 = v98;
      v55 = v99;
      v56 = v100;
    }

    else
    {
      v55 = 0;
      v57 = -1 << *(v14 + 32);
      v53 = v14 + 56;
      v54 = ~v57;
      v58 = -v57;
      if (v58 < 64)
      {
        v59 = ~(-1 << v58);
      }

      else
      {
        v59 = -1;
      }

      v56 = v59 & *(v14 + 56);
    }

    v76 = v54;
    v60 = (v54 + 64) >> 6;
    v79 = v95;
    v78 = (v90 + 8);
    v77 = (v89 + 8);
    v81 = v53;
    v80 = v60;
    if (v14 < 0)
    {
      goto LABEL_61;
    }

    while (1)
    {
      v61 = v55;
      v62 = v56;
      v63 = v55;
      if (!v56)
      {
        break;
      }

LABEL_59:
      v64 = (v62 - 1) & v62;
      v65 = *(*(v14 + 48) + ((v63 << 9) | (8 * __clz(__rbit64(v62)))));
      if (!v65)
      {
        goto LABEL_65;
      }

      while (1)
      {
        v67 = swift_allocObject();
        v68 = v83;
        v69 = v82;
        *(v67 + 16) = v83;
        *(v67 + 24) = v69;
        v91 = *&v65[OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__queue];
        v70 = swift_allocObject();
        v70[2] = v65;
        v70[3] = sub_224D0F048;
        v70[4] = v67;
        v95[2] = sub_224D0F24C;
        v95[3] = v70;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        v95[0] = sub_224A39F40;
        v95[1] = &block_descriptor_153;
        v71 = _Block_copy(aBlock);
        sub_224A77FD0(v68, v69);
        v90 = v65;

        v72 = v85;
        sub_224DAB7E8();
        v93 = MEMORY[0x277D84F90];
        sub_224D0EE58(&qword_281350ED0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
        v89 = v64;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
        sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0, MEMORY[0x277D83970]);
        v73 = v87;
        v74 = v88;
        sub_224DAF788();
        MEMORY[0x22AA5D760](0, v72, v73, v71);
        v75 = v71;
        v60 = v80;
        _Block_release(v75);
        v53 = v81;

        (*v78)(v73, v74);
        (*v77)(v72, v86);

        v55 = v63;
        v56 = v89;
        if ((v14 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_61:
        v66 = sub_224DAF878();
        if (v66)
        {
          v93 = v66;
          type metadata accessor for ControlsClient();
          swift_dynamicCast();
          v65 = aBlock[0];
          v63 = v55;
          v64 = v56;
          if (aBlock[0])
          {
            continue;
          }
        }

        goto LABEL_65;
      }
    }

    while (1)
    {
      v63 = v61 + 1;
      if (__OFADD__(v61, 1))
      {
        __break(1u);
      }

      if (v63 >= v60)
      {
        break;
      }

      v62 = *(v53 + 8 * v63);
      ++v61;
      if (v62)
      {
        goto LABEL_59;
      }
    }

LABEL_65:
    sub_224A3B7E4(v14);
    sub_224A78024(v83, v82);
  }
}

void sub_224D02B08(unint64_t *a1, uint64_t a2)
{
  v3 = sub_224DAB7B8();
  v57 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_224DAB848();
  v56 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v8);
  v58 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_224DAA468();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    if (v15 >> 62)
    {
      while (1)
      {
        if (!sub_224DAF838())
        {
          goto LABEL_24;
        }

LABEL_4:

        sub_224DAA458();
        sub_224D0EE58(&qword_281351818, MEMORY[0x277CFA068], MEMORY[0x277CFA070]);
        v18 = sub_224DAED78();
        v54 = v19;
        v55 = v18;
        (*(v11 + 8))(v14, v10);
        v20 = *(*&v17[OBJC_IVAR____TtC10ChronoCore14ControlsServer__clientsSetLock] + 16);
        v44 = *&v17[OBJC_IVAR____TtC10ChronoCore14ControlsServer__clientsSetLock];

        os_unfair_lock_lock(v20);
        v21 = OBJC_IVAR____TtC10ChronoCore14ControlsServer__clientsSetLock_clients;
        swift_beginAccess();
        v22 = *&v17[v21];
        v53 = v3;
        v52 = v6;
        v45 = v17;
        if ((v22 & 0xC000000000000001) != 0)
        {

          sub_224DAF7E8();
          type metadata accessor for ControlsClient();
          sub_224D0EE58(&qword_27D6F65F0, type metadata accessor for ControlsClient, MEMORY[0x277D85378]);
          sub_224DAF1F8();
          v22 = v62;
          v3 = v63;
          v14 = v64;
          v11 = v65;
          v10 = v66;
        }

        else
        {
          v23 = -1 << *(v22 + 32);
          v3 = v22 + 56;
          v14 = ~v23;
          v24 = -v23;
          v25 = v24 < 64 ? ~(-1 << v24) : -1;
          v10 = v25 & *(v22 + 56);

          v11 = 0;
        }

        v43 = v14;
        v26 = (v14 + 64) >> 6;
        v49 = v61;
        v48 = (v57 + 8);
        v47 = (v56 + 8);
        v51 = v22;
        v50 = v26;
        v46 = v3;
        if (v22 < 0)
        {
          break;
        }

LABEL_11:
        v27 = v11;
        v28 = v10;
        v29 = v11;
        if (v10)
        {
LABEL_15:
          v6 = ((v28 - 1) & v28);
          v30 = *(*(v22 + 48) + ((v29 << 9) | (8 * __clz(__rbit64(v28)))));
          if (v30)
          {
            goto LABEL_19;
          }

LABEL_21:
          sub_224A3B7E4(v22);
          os_unfair_lock_unlock(*(v44 + 16));

          sub_224A78024(v55, v54);

          return;
        }

        while (1)
        {
          v29 = v27 + 1;
          if (__OFADD__(v27, 1))
          {
            break;
          }

          if (v29 >= v26)
          {
            goto LABEL_21;
          }

          v28 = *(v3 + 8 * v29);
          ++v27;
          if (v28)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
      }

      while (1)
      {
        v31 = sub_224DAF878();
        if (!v31)
        {
          goto LABEL_21;
        }

        v59 = v31;
        type metadata accessor for ControlsClient();
        swift_dynamicCast();
        v30 = aBlock[0];
        v29 = v11;
        v6 = v10;
        if (!aBlock[0])
        {
          goto LABEL_21;
        }

LABEL_19:
        v32 = swift_allocObject();
        v33 = v55;
        v34 = v54;
        *(v32 + 16) = v55;
        *(v32 + 24) = v34;
        v57 = *&v30[OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__queue];
        v35 = swift_allocObject();
        v35[2] = v30;
        v35[3] = sub_224D0F004;
        v35[4] = v32;
        v61[2] = sub_224D0F24C;
        v61[3] = v35;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        v61[0] = sub_224A39F40;
        v61[1] = &block_descriptor_143;
        v36 = _Block_copy(aBlock);
        sub_224A77FD0(v33, v34);
        v56 = v30;

        v37 = v58;
        sub_224DAB7E8();
        v59 = MEMORY[0x277D84F90];
        sub_224D0EE58(&qword_281350ED0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
        sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0, MEMORY[0x277D83970]);
        v38 = v7;
        v39 = v52;
        v17 = v53;
        sub_224DAF788();
        v14 = v57;
        MEMORY[0x22AA5D760](0, v37, v39, v36);
        v40 = v36;
        v26 = v50;
        _Block_release(v40);

        v41 = v39;
        v7 = v38;
        v22 = v51;
        (*v48)(v41, v17);
        v42 = v37;
        v3 = v46;
        (*v47)(v42, v7);

        v11 = v29;
        v10 = v6;
        if ((v22 & 0x8000000000000000) == 0)
        {
          goto LABEL_11;
        }
      }
    }

    if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_24:
  }
}

void sub_224D033F8(unint64_t *a1, uint64_t a2)
{
  v3 = sub_224DAB7B8();
  v57 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_224DAB848();
  v56 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v8);
  v58 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_224DAA468();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    if (v15 >> 62)
    {
      while (1)
      {
        if (!sub_224DAF838())
        {
          goto LABEL_24;
        }

LABEL_4:

        sub_224DAA458();
        sub_224D0EE58(&qword_281351818, MEMORY[0x277CFA068], MEMORY[0x277CFA070]);
        v18 = sub_224DAED78();
        v54 = v19;
        v55 = v18;
        (*(v11 + 8))(v14, v10);
        v20 = *(*&v17[OBJC_IVAR____TtC10ChronoCore14ControlsServer__clientsSetLock] + 16);
        v44 = *&v17[OBJC_IVAR____TtC10ChronoCore14ControlsServer__clientsSetLock];

        os_unfair_lock_lock(v20);
        v21 = OBJC_IVAR____TtC10ChronoCore14ControlsServer__clientsSetLock_clients;
        swift_beginAccess();
        v22 = *&v17[v21];
        v53 = v3;
        v52 = v6;
        v45 = v17;
        if ((v22 & 0xC000000000000001) != 0)
        {

          sub_224DAF7E8();
          type metadata accessor for ControlsClient();
          sub_224D0EE58(&qword_27D6F65F0, type metadata accessor for ControlsClient, MEMORY[0x277D85378]);
          sub_224DAF1F8();
          v22 = v62;
          v3 = v63;
          v14 = v64;
          v11 = v65;
          v10 = v66;
        }

        else
        {
          v23 = -1 << *(v22 + 32);
          v3 = v22 + 56;
          v14 = ~v23;
          v24 = -v23;
          v25 = v24 < 64 ? ~(-1 << v24) : -1;
          v10 = v25 & *(v22 + 56);

          v11 = 0;
        }

        v43 = v14;
        v26 = (v14 + 64) >> 6;
        v49 = v61;
        v48 = (v57 + 8);
        v47 = (v56 + 8);
        v51 = v22;
        v50 = v26;
        v46 = v3;
        if (v22 < 0)
        {
          break;
        }

LABEL_11:
        v27 = v11;
        v28 = v10;
        v29 = v11;
        if (v10)
        {
LABEL_15:
          v6 = ((v28 - 1) & v28);
          v30 = *(*(v22 + 48) + ((v29 << 9) | (8 * __clz(__rbit64(v28)))));
          if (v30)
          {
            goto LABEL_19;
          }

LABEL_21:
          sub_224A3B7E4(v22);
          os_unfair_lock_unlock(*(v44 + 16));

          sub_224A78024(v55, v54);

          return;
        }

        while (1)
        {
          v29 = v27 + 1;
          if (__OFADD__(v27, 1))
          {
            break;
          }

          if (v29 >= v26)
          {
            goto LABEL_21;
          }

          v28 = *(v3 + 8 * v29);
          ++v27;
          if (v28)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
      }

      while (1)
      {
        v31 = sub_224DAF878();
        if (!v31)
        {
          goto LABEL_21;
        }

        v59 = v31;
        type metadata accessor for ControlsClient();
        swift_dynamicCast();
        v30 = aBlock[0];
        v29 = v11;
        v6 = v10;
        if (!aBlock[0])
        {
          goto LABEL_21;
        }

LABEL_19:
        v32 = swift_allocObject();
        v33 = v55;
        v34 = v54;
        *(v32 + 16) = v55;
        *(v32 + 24) = v34;
        v57 = *&v30[OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__queue];
        v35 = swift_allocObject();
        v35[2] = v30;
        v35[3] = sub_224D0EFEC;
        v35[4] = v32;
        v61[2] = sub_224D0EFF8;
        v61[3] = v35;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        v61[0] = sub_224A39F40;
        v61[1] = &block_descriptor_133_0;
        v36 = _Block_copy(aBlock);
        sub_224A77FD0(v33, v34);
        v56 = v30;

        v37 = v58;
        sub_224DAB7E8();
        v59 = MEMORY[0x277D84F90];
        sub_224D0EE58(&qword_281350ED0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
        sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0, MEMORY[0x277D83970]);
        v38 = v7;
        v39 = v52;
        v17 = v53;
        sub_224DAF788();
        v14 = v57;
        MEMORY[0x22AA5D760](0, v37, v39, v36);
        v40 = v36;
        v26 = v50;
        _Block_release(v40);

        v41 = v39;
        v7 = v38;
        v22 = v51;
        (*v48)(v41, v17);
        v42 = v37;
        v3 = v46;
        (*v47)(v42, v7);

        v11 = v29;
        v10 = v6;
        if ((v22 & 0x8000000000000000) == 0)
        {
          goto LABEL_11;
        }
      }
    }

    if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_24:
  }
}

void sub_224D03D60(void *a1, uint64_t a2, uint64_t a3)
{
  sub_224DAA318();
  v6 = sub_224DAEDE8();

  v7 = [objc_opt_self() interfaceWithIdentifier_];

  v8 = sub_224DAA328();
  v9 = objc_opt_self();
  v10 = [v9 protocolForProtocol_];

  [v7 setClient_];
  v11 = sub_224DAA338();
  v12 = [v9 protocolForProtocol_];

  [v7 setServer_];
  v13 = sub_224DAA358();
  [a1 setServiceQuality_];

  [a1 setTargetQueue_];
  [a1 setInterface_];
  [a1 setInterfaceTarget_];
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  *(v16 + 24) = v15;
  v30 = sub_224D0EFBC;
  v31 = v16;
  v26 = MEMORY[0x277D85DD0];
  v27 = 1107296256;
  v28 = sub_224A3837C;
  v29 = &block_descriptor_105_0;
  v17 = _Block_copy(&v26);

  [a1 setActivationHandler_];
  _Block_release(v17);
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = swift_allocObject();
  *(v20 + 16) = v18;
  *(v20 + 24) = v19;
  v30 = sub_224D0EFC4;
  v31 = v20;
  v26 = MEMORY[0x277D85DD0];
  v27 = 1107296256;
  v28 = sub_224A3837C;
  v29 = &block_descriptor_113_0;
  v21 = _Block_copy(&v26);

  [a1 setInterruptionHandler_];
  _Block_release(v21);
  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v24 = swift_allocObject();
  *(v24 + 16) = v22;
  *(v24 + 24) = v23;
  v30 = sub_224D0EFCC;
  v31 = v24;
  v26 = MEMORY[0x277D85DD0];
  v27 = 1107296256;
  v28 = sub_224A3837C;
  v29 = &block_descriptor_121;
  v25 = _Block_copy(&v26);

  [a1 setInvalidationHandler_];
  _Block_release(v25);
}

void sub_224D04184(void *a1, uint64_t a2, uint64_t a3)
{
  if (qword_281351658 != -1)
  {
    swift_once();
  }

  v4 = sub_224DAB258();
  __swift_project_value_buffer(v4, qword_281365060);
  v5 = a1;
  v6 = sub_224DAB228();
  v7 = sub_224DAF2A8();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v21[0] = v9;
    *v8 = 136446210;
    v10 = [v5 remoteProcess];
    if (v10)
    {
      v11 = v10;
      v12 = [v10 description];

      v13 = sub_224DAEE18();
      v15 = v14;
    }

    else
    {
      v15 = 0x8000000224DC7B00;
      v13 = 0xD00000000000001ALL;
    }

    v16 = sub_224A33F74(v13, v15, v21);

    *(v8 + 4) = v16;
    _os_log_impl(&dword_224A2F000, v6, v7, "Chrono controls service connection from %{public}s activated", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x22AA5EED0](v9, -1, -1);
    MEMORY[0x22AA5EED0](v8, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    swift_beginAccess();
    v19 = swift_unknownObjectWeakLoadStrong();
    if (v19)
    {
      v20 = v19;
      BSDispatchQueueAssert();
      BSDispatchQueueAssert();

      v18 = v20;
    }
  }
}

void sub_224D043CC(void *a1, uint64_t a2, uint64_t a3)
{
  if (qword_281351658 != -1)
  {
    swift_once();
  }

  v4 = sub_224DAB258();
  __swift_project_value_buffer(v4, qword_281365060);
  v5 = a1;
  v6 = sub_224DAB228();
  v7 = sub_224DAF2A8();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v24[0] = v9;
    *v8 = 136446210;
    v10 = [v5 remoteProcess];
    if (v10)
    {
      v11 = v10;
      v12 = [v10 description];

      v13 = sub_224DAEE18();
      v15 = v14;
    }

    else
    {
      v15 = 0x8000000224DC7B00;
      v13 = 0xD00000000000001ALL;
    }

    v16 = sub_224A33F74(v13, v15, v24);

    *(v8 + 4) = v16;
    _os_log_impl(&dword_224A2F000, v6, v7, "Chrono controls service connection from %{public}s interrupted", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x22AA5EED0](v9, -1, -1);
    MEMORY[0x22AA5EED0](v8, -1, -1);
  }

  [v5 invalidate];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    swift_beginAccess();
    v19 = swift_unknownObjectWeakLoadStrong();
    if (v19)
    {
      v20 = v19;
      BSDispatchQueueAssert();
      sub_224D05080();
      v21 = *&v18[OBJC_IVAR____TtC10ChronoCore14ControlsServer__clientsSetLock];
      v22 = *(v21 + 16);

      os_unfair_lock_lock(v22);
      swift_beginAccess();
      v23 = sub_224B02F4C(v20);
      swift_endAccess();

      os_unfair_lock_unlock(*(v21 + 16));

      v18 = v20;
    }
  }
}

void sub_224D04684(void *a1, uint64_t a2, uint64_t a3)
{
  if (qword_281351658 != -1)
  {
    swift_once();
  }

  v4 = sub_224DAB258();
  __swift_project_value_buffer(v4, qword_281365060);
  v5 = a1;
  v6 = sub_224DAB228();
  v7 = sub_224DAF2A8();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v24[0] = v9;
    *v8 = 136446210;
    v10 = [v5 remoteProcess];
    if (v10)
    {
      v11 = v10;
      v12 = [v10 description];

      v13 = sub_224DAEE18();
      v15 = v14;
    }

    else
    {
      v15 = 0x8000000224DC7B00;
      v13 = 0xD00000000000001ALL;
    }

    v16 = sub_224A33F74(v13, v15, v24);

    *(v8 + 4) = v16;
    _os_log_impl(&dword_224A2F000, v6, v7, "Chrono controls service connection from %{public}s invalidated", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x22AA5EED0](v9, -1, -1);
    MEMORY[0x22AA5EED0](v8, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    swift_beginAccess();
    v19 = swift_unknownObjectWeakLoadStrong();
    if (v19)
    {
      v20 = v19;
      BSDispatchQueueAssert();
      sub_224D05080();
      v21 = *&v18[OBJC_IVAR____TtC10ChronoCore14ControlsServer__clientsSetLock];
      v22 = *(v21 + 16);

      os_unfair_lock_lock(v22);
      swift_beginAccess();
      v23 = sub_224B02F4C(v20);
      swift_endAccess();

      os_unfair_lock_unlock(*(v21 + 16));

      v18 = v20;
    }
  }
}

uint64_t sub_224D049C0(char a1)
{
  v3 = sub_224DAB728();
  MEMORY[0x28223BE20](v3 - 8, v4);
  v30 = sub_224DAE4F8();
  v5 = *(v30 - 8);
  v7 = MEMORY[0x28223BE20](v30, v6);
  result = MEMORY[0x28223BE20](v7, v8);
  v11 = &v28 - v10;
  if (*(v1 + OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__queue_needsSystemEnvironment) == 1 && (a1 & 1) == 0)
  {
    if (qword_281351658 != -1)
    {
      swift_once();
    }

    v12 = sub_224DAB258();
    __swift_project_value_buffer(v12, qword_281365060);
    v13 = v1;
    v14 = sub_224DAB228();
    v15 = sub_224DAF2A8();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v29 = v11;
      v18 = v17;
      *v16 = 138543362;
      v19 = *&v13[OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__processHandle];
      *(v16 + 4) = v19;
      *v17 = v19;
      v20 = v19;
      _os_log_impl(&dword_224A2F000, v14, v15, "Sending initial system environment to client: %{public}@", v16, 0xCu);
      sub_224A3311C(v18, &unk_27D6F69F0, &unk_224DB3900);
      v11 = v29;
      MEMORY[0x22AA5EED0](v18, -1, -1);
      MEMORY[0x22AA5EED0](v16, -1, -1);
    }

    sub_224A3317C(*&v13[OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__services] + 96, v32);
    __swift_project_boxed_opaque_existential_1(v32, v32[3]);
    sub_224DADA68();
    __swift_project_boxed_opaque_existential_1(v31, v31[3]);
    sub_224DAD168();
    sub_224DAE4D8();
    __swift_destroy_boxed_opaque_existential_1(v31);
    __swift_destroy_boxed_opaque_existential_1(v32);
    sub_224D0EE58(&qword_281350C60, MEMORY[0x277CE3AB8], MEMORY[0x277CE3AC0]);
    v21 = sub_224DAED78();
    v23 = v22;
    v24 = sub_224D04FA8();
    if (v24)
    {
      v25 = v24;
      v26 = v21;
      v27 = sub_224DA96B8();
      [v25 systemEnvironmentDidChange_];
      sub_224A78024(v26, v23);
      swift_unknownObjectRelease();

      return (*(v5 + 8))(v11, v30);
    }

    else
    {
      (*(v5 + 8))(v11, v30);
      return sub_224A78024(v21, v23);
    }
  }

  return result;
}

uint64_t sub_224D04FA8()
{
  if ([*(v0 + OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__queue_connection) remoteTarget])
  {
    sub_224DAF758();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  if (*(&v4 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F65E0, &unk_224DC02C0);
    if (swift_dynamicCast())
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_224A3311C(v5, &qword_27D6F4760, &unk_224DB3680);
    return 0;
  }
}

void sub_224D05080()
{
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v1 = *(v56 - 8);
  MEMORY[0x28223BE20](v56, v2);
  v4 = v54 - v3;
  BSDispatchQueueAssert();
  v5 = OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__queue_controlHostIdentities;
  swift_beginAccess();
  v58 = v0;
  v6 = *(v0 + v5);
  v7 = v6 + 56;
  v8 = 1 << *(v6 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v6 + 56);
  v11 = (v8 + 63) >> 6;
  v54[1] = v1 + 16;
  v55 = OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__services;
  v54[0] = v1 + 8;
  v57 = v6;

  v12 = 0;
  if (v10)
  {
    while (1)
    {
      v13 = v12;
LABEL_9:
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v15 = v56;
      (*(v1 + 16))(v4, *(v57 + 48) + *(v1 + 72) * (v14 | (v13 << 6)), v56);
      sub_224A3317C(*(v58 + v55) + 216, v62);
      v17 = v63;
      v16 = v64;
      __swift_project_boxed_opaque_existential_1(v62, v63);
      (*(*(v16 + 8) + 72))(v4, v17);
      (*(v1 + 8))(v4, v15);
      __swift_destroy_boxed_opaque_existential_1(v62);
      if (!v10)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      goto LABEL_47;
    }

    if (v13 >= v11)
    {
      break;
    }

    v10 = *(v7 + 8 * v13);
    ++v12;
    if (v10)
    {
      v12 = v13;
      goto LABEL_9;
    }
  }

  v57 = OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__subscriptions;
  v18 = *(v58 + OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__subscriptions);
  if ((v18 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    sub_224DAF7E8();
    sub_224DAB338();
    sub_224D0EE58(&unk_281350FE0, MEMORY[0x277CBCDA8], MEMORY[0x277CBCDB0]);
    sub_224DAF1F8();
    v20 = v62[0];
    v19 = v62[1];
    v21 = v62[2];
    v22 = v63;
    v23 = v64;
  }

  else
  {
    v24 = -1 << *(v18 + 32);
    v19 = v18 + 56;
    v21 = ~v24;
    v25 = -v24;
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    else
    {
      v26 = -1;
    }

    v23 = v26 & *(v18 + 56);
    swift_bridgeObjectRetain_n();
    v22 = 0;
    v20 = v18;
  }

  if (v20 < 0)
  {
    goto LABEL_24;
  }

  while (1)
  {
    v27 = v22;
    v28 = v23;
    v29 = v22;
    if (!v23)
    {
      break;
    }

LABEL_22:
    v30 = (v28 - 1) & v28;
    v31 = *(*(v20 + 48) + ((v29 << 9) | (8 * __clz(__rbit64(v28)))));

    if (!v31)
    {
LABEL_28:
      sub_224A3B7E4(v20);

      v33 = v58;
      *(v58 + v57) = MEMORY[0x277D84FA0];

      v34 = OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__queue_sessions;
      swift_beginAccess();
      v57 = v34;
      v35 = *(v33 + v34);
      if ((v35 & 0xC000000000000001) != 0)
      {
        v36 = 0;
        v37 = 0;
        v38 = 0;
        v39 = sub_224DAFA68() | 0x8000000000000000;
      }

      else
      {
        v40 = -1 << *(v35 + 32);
        v37 = ~v40;
        v36 = v35 + 64;
        v41 = -v40;
        if (v41 < 64)
        {
          v42 = ~(-1 << v41);
        }

        else
        {
          v42 = -1;
        }

        v38 = v42 & *(v35 + 64);
        v39 = v35;
      }

      swift_bridgeObjectRetain_n();
      v43 = 0;
      v56 = v37;
      v44 = (v37 + 64) >> 6;
      if ((v39 & 0x8000000000000000) != 0)
      {
        goto LABEL_41;
      }

      while (1)
      {
        v45 = v43;
        v46 = v38;
        v47 = v43;
        if (!v38)
        {
          break;
        }

LABEL_39:
        v48 = (v46 - 1) & v46;
        v49 = *(*(v39 + 48) + ((v47 << 9) | (8 * __clz(__rbit64(v46)))));

        if (!v49)
        {
LABEL_45:
          sub_224A3B7E4(v39);

          *(v58 + v57) = MEMORY[0x277D84F98];

          return;
        }

        while (1)
        {
          sub_224B35900();

          v43 = v47;
          v38 = v48;
          if ((v39 & 0x8000000000000000) == 0)
          {
            break;
          }

LABEL_41:
          v50 = sub_224DAFB18();
          if (v50)
          {
            v52 = v51;
            v59 = v50;
            sub_224DAA0F8();
            swift_dynamicCast();
            v53 = v60;
            v59 = v52;
            type metadata accessor for ControlSession(0);
            swift_dynamicCast();
            v47 = v43;
            v48 = v38;
            if (v53)
            {
              continue;
            }
          }

          goto LABEL_45;
        }
      }

      while (1)
      {
        v47 = v45 + 1;
        if (__OFADD__(v45, 1))
        {
          goto LABEL_48;
        }

        if (v47 >= v44)
        {
          goto LABEL_45;
        }

        v46 = *(v36 + 8 * v47);
        ++v45;
        if (v46)
        {
          goto LABEL_39;
        }
      }
    }

    while (1)
    {
      sub_224DAB328();

      v22 = v29;
      v23 = v30;
      if ((v20 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_24:
      v32 = sub_224DAF878();
      if (v32)
      {
        v60 = v32;
        sub_224DAB338();
        swift_dynamicCast();
        v29 = v22;
        v30 = v23;
        if (v61)
        {
          continue;
        }
      }

      goto LABEL_28;
    }
  }

  while (1)
  {
    v29 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v29 >= ((v21 + 64) >> 6))
    {
      goto LABEL_28;
    }

    v28 = *(v19 + 8 * v29);
    ++v27;
    if (v28)
    {
      goto LABEL_22;
    }
  }

LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
}

uint64_t sub_224D0568C(uint64_t a1, void (*a2)())
{
  if ([*(a1 + OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__queue_connection) remoteTarget])
  {
    sub_224DAF758();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6[0] = v4;
  v6[1] = v5;
  if (!*(&v5 + 1))
  {
    return sub_224A3311C(v6, &qword_27D6F4760, &unk_224DB3680);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F65E0, &unk_224DC02C0);
  result = swift_dynamicCast();
  if (result)
  {
    a2();
    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_224D057B0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ControlsClient();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_224D058FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_224D0591C, 0, 0);
}

uint64_t sub_224D0591C()
{
  __swift_project_boxed_opaque_existential_1((*(v0[2] + OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__services) + 16), *(*(v0[2] + OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__services) + 40));
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_224D059D0;
  v2 = v0[3];

  return sub_224C7AB6C(v2);
}

uint64_t sub_224D059D0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_224D05BB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v29 = a6;
  v27 = a5;
  v32 = a4;
  v30 = a3;
  v33 = sub_224DACB98();
  v31 = *(v33 - 8);
  MEMORY[0x28223BE20](v33, v7);
  v28 = (&v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  MEMORY[0x28223BE20](v36, v9);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6570, &qword_224DB3C40);
  v10 = *(v35 - 8);
  MEMORY[0x28223BE20](v35, v11);
  v13 = &v25 - v12;
  BSDispatchQueueAssert();
  v26 = *(v6 + OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__services);
  sub_224A3317C(v26 + 376, v39);
  v34 = v41;
  __swift_project_boxed_opaque_existential_1(v39, v40);

  sub_224DA9FF8();
  sub_224A33088(&qword_281351920, &unk_27D6F3920, &qword_224DB35B0, MEMORY[0x277CF9F98]);
  sub_224A33088(&qword_2813518E0, &unk_27D6F3920, &qword_224DB35B0, MEMORY[0x277CF9FC0]);
  sub_224A33088(&unk_281351910, &unk_27D6F3920, &qword_224DB35B0, MEMORY[0x277CF9FA0]);
  sub_224A33088(&unk_281351900, &unk_27D6F3920, &qword_224DB35B0, MEMORY[0x277CF9FA8]);
  sub_224DAA1D8();
  sub_224DAC6C8();
  (*(v10 + 8))(v13, v35);
  if (v38)
  {
    sub_224A36F98(&v37, v42);
    __swift_destroy_boxed_opaque_existential_1(v39);
    sub_224A3317C(v26 + 16, v39);
    __swift_project_boxed_opaque_existential_1(v39, v40);
    __swift_project_boxed_opaque_existential_1(v42, v42[3]);
    v14 = sub_224DAE338();
    v15 = swift_allocObject();
    v16 = [objc_opt_self() currentContext];
    if (v16)
    {
      v17 = v16;
      v18 = [v16 remoteProcess];
    }

    else
    {
      v18 = 0;
    }

    v20 = v27;
    v15[2] = v18;
    v15[3] = v20;
    v15[4] = v29;
    v21 = v28;
    *v28 = v15;
    v22 = v31;
    v23 = v33;
    (*(v31 + 104))(v21, *MEMORY[0x277CF9B90], v33);

    sub_224C80344(v14, v30, v32, v21);

    (*(v22 + 8))(v21, v23);
    __swift_destroy_boxed_opaque_existential_1(v39);
    v19 = v42;
  }

  else
  {
    sub_224A3311C(&v37, &unk_27D6F4700, &unk_224DB3A10);
    v19 = v39;
  }

  return __swift_destroy_boxed_opaque_existential_1(v19);
}

uint64_t sub_224D06134(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v75 = a4;
  v73 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4210, &unk_224DB5FE0);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v78 = (&v69 - v7);
  v8 = sub_224DAA428();
  v82 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v9);
  v74 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v80 = *(v11 - 8);
  v81 = v11;
  v13 = MEMORY[0x28223BE20](v11, v12);
  v71 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13, v15);
  v72 = &v69 - v17;
  MEMORY[0x28223BE20](v16, v18);
  v20 = &v69 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F30E0, &unk_224DB2AD0);
  v22 = *(v21 - 8);
  v24 = MEMORY[0x28223BE20](v21, v23);
  v26 = &v69 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v24, v27);
  v30 = &v69 - v29;
  MEMORY[0x28223BE20](v28, v31);
  v33 = &v69 - v32;
  BSDispatchQueueAssert();
  v34 = v4[OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__queue_needsSystemEnvironment];
  v4[OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__queue_needsSystemEnvironment] = 1;
  sub_224D049C0(v34);

  sub_224DA9FF8();
  v83 = v22;
  v35 = *(v22 + 16);
  v35(v30, v33, v21);
  v79 = v20;
  sub_224DAA228();
  if (qword_281351658 != -1)
  {
    swift_once();
  }

  v36 = sub_224DAB258();
  __swift_project_value_buffer(v36, qword_281365060);
  v35(v26, v33, v21);
  v37 = v4;
  v38 = sub_224DAB228();
  v39 = sub_224DAF2A8();

  v40 = os_log_type_enabled(v38, v39);
  v76 = v33;
  v77 = v21;
  if (v40)
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v85[0] = v42;
    *v41 = 136446466;
    sub_224A33088(&qword_281351990, &qword_27D6F30E0, &unk_224DB2AD0, MEMORY[0x277CF9FC8]);
    v43 = sub_224DAFD28();
    v70 = v8;
    v45 = v44;
    v46 = *(v83 + 8);
    v46(v26, v21);
    v47 = sub_224A33F74(v43, v45, v85);

    *(v41 + 4) = v47;
    *(v41 + 12) = 2082;
    v48 = [*&v37[OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__queue_connection] remoteProcess];
    v49 = [v48 description];

    v50 = sub_224DAEE18();
    v52 = v51;

    v53 = sub_224A33F74(v50, v52, v85);
    v8 = v70;

    *(v41 + 14) = v53;
    _os_log_impl(&dword_224A2F000, v38, v39, "Control configuration changed for control host with identifier %{public}s from process %{public}s", v41, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v42, -1, -1);
    MEMORY[0x22AA5EED0](v41, -1, -1);
  }

  else
  {

    v46 = *(v83 + 8);
    v46(v26, v21);
  }

  [v75 unsignedIntegerValue];
  v54 = v78;
  sub_224DAA418();
  v55 = v82;
  if ((*(v82 + 48))(v54, 1, v8) == 1)
  {
    (*(v80 + 8))(v79, v81);
    v46(v76, v77);
    return sub_224A3311C(v54, &qword_27D6F4210, &unk_224DB5FE0);
  }

  else
  {
    v57 = v74;
    v58 = v37;
    v59 = v8;
    (*(v55 + 32))(v74, v54, v8);
    sub_224A3317C(*&v58[OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__services] + 216, v85);
    v60 = v86;
    v61 = v87;
    __swift_project_boxed_opaque_existential_1(v85, v86);
    v84 = v73;
    v62 = v79;
    (*(*(v61 + 8) + 56))(&v84, v57, v79, v60);
    __swift_destroy_boxed_opaque_existential_1(v85);
    v64 = v80;
    v63 = v81;
    v65 = *(v80 + 16);
    v78 = v46;
    v66 = v71;
    v65(v71, v62, v81);
    swift_beginAccess();
    v67 = v72;
    sub_224A67790(v72, v66);
    v68 = *(v64 + 8);
    v68(v67, v63);
    swift_endAccess();
    (*(v55 + 8))(v57, v59);
    v68(v62, v63);
    return v78(v76, v77);
  }
}

uint64_t sub_224D06938(uint64_t a1, uint64_t a2, void *a3)
{
  v59 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4210, &unk_224DB5FE0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v63 = &v56 - v6;
  v7 = sub_224DAA428();
  v64 = *(v7 - 8);
  v65 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v58 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v61 = *(v10 - 8);
  v62 = v10;
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v56 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F30E0, &unk_224DB2AD0);
  v15 = *(v14 - 8);
  v17 = MEMORY[0x28223BE20](v14, v16);
  v19 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v17, v20);
  v23 = &v56 - v22;
  MEMORY[0x28223BE20](v21, v24);
  v26 = &v56 - v25;
  BSDispatchQueueAssert();
  v27 = v3[OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__queue_needsSystemEnvironment];
  v3[OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__queue_needsSystemEnvironment] = 1;
  sub_224D049C0(v27);

  sub_224DA9FF8();
  v66 = v15;
  v28 = *(v15 + 16);
  v28(v23, v26, v14);
  v60 = v13;
  sub_224DAA228();
  if (qword_281351658 != -1)
  {
    swift_once();
  }

  v29 = sub_224DAB258();
  __swift_project_value_buffer(v29, qword_281365060);
  v28(v19, v26, v14);
  v30 = v3;
  v31 = sub_224DAB228();
  v32 = sub_224DAF2A8();

  v33 = os_log_type_enabled(v31, v32);
  v57 = v30;
  if (v33)
  {
    v34 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v67[0] = v56;
    *v34 = 136446466;
    sub_224A33088(&qword_281351990, &qword_27D6F30E0, &unk_224DB2AD0, MEMORY[0x277CF9FC8]);
    v35 = sub_224DAFD28();
    v37 = v36;
    v38 = *(v66 + 8);
    v38(v19, v14);
    v39 = sub_224A33F74(v35, v37, v67);

    *(v34 + 4) = v39;
    *(v34 + 12) = 2082;
    v40 = [*&v30[OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__queue_connection] remoteProcess];
    v41 = [v40 description];

    v42 = sub_224DAEE18();
    v44 = v43;

    v45 = sub_224A33F74(v42, v44, v67);

    *(v34 + 14) = v45;
    _os_log_impl(&dword_224A2F000, v31, v32, "Control activation state changed for control host with identifier %{public}s from process %{public}s", v34, 0x16u);
    v46 = v56;
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v46, -1, -1);
    MEMORY[0x22AA5EED0](v34, -1, -1);
  }

  else
  {

    v38 = *(v66 + 8);
    v38(v19, v14);
  }

  v47 = v63;
  [v59 unsignedIntegerValue];
  sub_224DAA418();
  v49 = v64;
  v48 = v65;
  if ((*(v64 + 48))(v47, 1, v65) == 1)
  {
    (*(v61 + 8))(v60, v62);
    v38(v26, v14);
    return sub_224A3311C(v47, &qword_27D6F4210, &unk_224DB5FE0);
  }

  else
  {
    v51 = v58;
    (*(v49 + 32))(v58, v47, v48);
    sub_224A3317C(*&v57[OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__services] + 216, v67);
    v52 = v68;
    v53 = v69;
    __swift_project_boxed_opaque_existential_1(v67, v68);
    v54 = *(*(v53 + 8) + 64);
    v55 = v60;
    v54(v51, v60, v52);
    (*(v49 + 8))(v51, v48);
    (*(v61 + 8))(v55, v62);
    v38(v26, v14);
    return __swift_destroy_boxed_opaque_existential_1(v67);
  }
}